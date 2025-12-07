void sub_100089774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100035D04(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
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

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
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

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
}

void sub_100089A10()
{
  v1 = v0;
  sub_100035D04(&qword_100350F40, &qword_1002741B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void sub_100089B80()
{
  v1 = v0;
  sub_100035D04(&qword_10033DE70, &qword_100274158);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
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

void sub_100089D04()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEF0, &qword_100274218);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_100089EBC()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEC0, &qword_1002741D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_10008A034()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DF28, &qword_100274278);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

void sub_10008A2E8()
{
  v1 = v0;
  sub_100035D04(&qword_10033DF18, &qword_100274258);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_10008A458()
{
  v1 = v0;
  sub_100035D04(&unk_100350E90, &unk_10027C950);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 40 * v17;
        sub_100051658(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10001766C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_1000516B4(v22, (*(v4 + 56) + v17));
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

void sub_10008A624()
{
  v1 = v0;
  sub_100035D04(&qword_10033DED8, &qword_1002741F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10001766C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000516B4(v25, (*(v4 + 56) + v22));
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

void sub_10008A7DC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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

void sub_10008A964()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEF8, &qword_100274220);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10001766C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000516B4(v20, (*(v4 + 56) + 32 * v17));
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

void sub_10008AAE4()
{
  v1 = v0;
  sub_100035D04(&unk_100350F90, &qword_100274210);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_10008AC54()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEE8, &qword_100274208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v4 + 48) + v18);
        v26 = v22[2];
        *v25 = v21;
        v25[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v26;
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

void sub_10008ADDC()
{
  v1 = v0;
  v41 = type metadata accessor for Date();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DEE0, &qword_100274200);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
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
        (*(v24 + 32))(v29 + v25, v26, v27);
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
}

void sub_10008B130()
{
  v1 = v0;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v36 = *(active - 8);
  __chkstk_darwin(active - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DF30, &unk_100274280);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10008CD34(*(v5 + 56) + v26, v35, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_10008CD9C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void sub_10008B45C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v32, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v37 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v7 + 48) + v25, v36);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v29 = v28;
        v17 = v39;
      }

      while (v39);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
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
}

void sub_10008B70C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
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

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
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
}

void sub_10008B998(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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

void sub_10008BB0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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

void sub_10008BC6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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

        v24 = v22;
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

uint64_t sub_10008BDC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v6[2] = a2;
  if ((sub_100081638(sub_10008CBD4, v6, v4) & 1) == 0)
  {
    return 0;
  }

  v3(&v7, a2);
  if (!v8)
  {
    return 0;
  }

  sub_10008CC38(v7, v8, v9, v10);
  return 1;
}

uint64_t sub_10008BE64()
{
  v1 = direct field offset for StateMachine2.edges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10008BEA8(char *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 136);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  sub_10007FA8C(a1);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_10007FC28(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t *sub_10008C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v22 = a2;
  v19[1] = a3;
  v20 = a1;
  v19[0] = *v4;
  v6 = v19[0];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v19[0] + 144)) = 0;
  v11 = *(*v4 + 152);
  v12 = v6[10];
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  *(v4 + v11) = PassthroughSubject.__allocating_init()();
  v13 = *(*v4 + 160);
  type metadata accessor for OutputEventContext(255, v6[11], v6[12], v14);
  type metadata accessor for PassthroughSubject();
  *(v4 + v13) = PassthroughSubject.__allocating_init()();
  v15 = *(*v4 + 168);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  *(v4 + v15) = PassthroughSubject.__allocating_init()();
  v16 = (v5 + *(*v5 + 176));
  *v16 = 0;
  v16[1] = 0;
  (*(*(v12 - 8) + 16))(v5 + *(*v5 + 136), v20, v12);
  v17 = v21;
  *(v4 + direct field offset for StateMachine2.edges) = v22;
  if (!v17)
  {
    v23 = v19[0];
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
  }

  Logger.init(subsystem:category:)();
  (*(v8 + 32))(v4 + qword_10038AFC0, v10, v7);
  return v4;
}

void *sub_10008C3AC@<X0>(void *(**a1)(uint64_t *__return_ptr, void)@<X0>, void *a2@<X8>)
{
  result = (*a1)(&v5, *(v2 + 56));
  *a2 = v5;
  return result;
}

uint64_t sub_10008C468(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008C584(uint64_t a1)
{
  v5 = *(a1 + 16);
  v1 = *(a1 + 40);
  v6 = *(a1 + 24);
  v7 = v1;
  type metadata accessor for Edge2(255, &v5);
  type metadata accessor for Array();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata3;
}

uint64_t sub_10008C630(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64) + v11;
  v14 = *(*(v6 - 8) + 64) + 7;
  if (v12 - 1 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  v18 = v16 + 2;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      goto LABEL_29;
    }

    v21 = *(a1 + v15);
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_26:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return (v24 | v23) + v12;
  }

  if (v20 == 2)
  {
    v21 = *(a1 + v15);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *(a1 + v15);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v12)
  {
    v25 = (*(v4 + 48))(a1);
  }

  else
  {
    v26 = (a1 + v13) & ~v11;
    if (v9 == v12)
    {
      v25 = (*(v8 + 48))(v26, v9, v6);
    }

    else
    {
      v27 = *((v14 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v25 = v27 + 1;
    }
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_10008C82C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v13 - 1;
  v15 = v10 + v11;
  v16 = (v10 + v11) & ~v11;
  v17 = v12 + 7;
  v18 = ((v12 + 7 + v16) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = a3 - v13 + 2;
  if (v18)
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v14 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = a2 - v13;
    if (v18)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23 + 1;
    }

    if (v18)
    {
      v25 = result;
      bzero(result, v18);
      result = v25;
      *v25 = v23;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(result + v18) = v24;
      }

      else
      {
        *(result + v18) = v24;
      }
    }

    else if (v22)
    {
      *(result + v18) = v24;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v18) = 0;
  }

  else if (v22)
  {
    *(result + v18) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v13)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v9 == v13)
    {
      v27 = *(v8 + 56);
      v28 = a2 + 1;

      return v27(result, v28, v9, v7);
    }

    else
    {
      if (((a2 + 1) & 0x80000000) != 0)
      {
        v29 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v29 = a2;
      }

      *((result + v17) & 0xFFFFFFFFFFFFFFF8) = v29;
    }
  }

  return result;
}

void *sub_10008CADC@<X0>(void *(**a1)(uint64_t *__return_ptr, void)@<X0>, void *a2@<X8>)
{
  result = (*a1)(&v5, *(v2 + 16));
  *a2 = v5;
  return result;
}

uint64_t sub_10008CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_10008CD34(a1, a2, type metadata accessor for ExperienceEffect);
  v5 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  return sub_10008CD34(v4, a2 + *(v5 + 36), type metadata accessor for ExperienceEvent);
}

void sub_10008CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_10008CCAC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  v5 = v1;
  type metadata accessor for Edge2(0, v4);
  return Array.init()();
}

unint64_t sub_10008CCE8()
{
  result = qword_10034B560;
  if (!qword_10034B560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10034B560);
  }

  return result;
}

uint64_t sub_10008CD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CD9C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_10008CECC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher);
  }

  else
  {
    v2 = sub_10006E96C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008CF3C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher);
  }

  else
  {
    sub_10008D40C(v6);
    v3 = v7;
    v4 = v8;
    sub_10000EBC0(v6, v7);
    v2 = (*(v4 + 40))(v3, v4);
    sub_10000903C(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008D000()
{
  v1 = sub_100035D04(&qword_10033E218, &qword_100274460);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v8 = *(*v0 + *(**v0 + 152));
  sub_100035D04(&qword_10033E220, &qword_100274468);
  sub_10000E244(&qword_10033E228, &qword_10033E220, &qword_100274468, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v8 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_10033E230, &unk_100274470);
  sub_10000E244(&qword_10033E238, &qword_10033E230, &unk_100274470, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E240, &qword_10033E218, &qword_100274460, &protocol conformance descriptor for Publishers.Map<A, B>);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_10008D228()
{
  sub_100035D04(&qword_10033E248, &unk_100274480);
  sub_10000E244(&qword_10033E250, &qword_10033E248, &unk_100274480, &unk_10027C688);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10008D2C0()
{
  sub_100035D04(&qword_10033DE78, &qword_100274160);
  sub_10000E244(&qword_10033DE80, &qword_10033DE78, &qword_100274160, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10008D35C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for HandoffRemoteFollowerLink();
    swift_allocObject();

    v2 = sub_100159930(v3, v0);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008D40C@<X0>(uint64_t **a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
  swift_beginAccess();
  sub_100009848(v1 + v3, &v8, &qword_10033E260, &qword_1002744A0);
  if (v9)
  {
    return sub_10000E754(&v8, a1);
  }

  sub_1000097E8(&v8, &qword_10033E260, &qword_1002744A0);
  v5 = type metadata accessor for HandoffStateMachine_Legacy(0);
  swift_allocObject();

  v7 = sub_1000D14E8(v6);
  a1[3] = v5;
  a1[4] = &off_100304108;
  *a1 = v7;
  sub_10007E790(a1, &v8);
  swift_beginAccess();
  sub_100094B04(&v8, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10008D520(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10008D594@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = (v2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
  v29 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  v30 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
  v31 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
  v32 = v7;
  v8 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v9 = v32;
    v11 = *(&v31 + 1);
    v10 = v31;
    v12 = *(&v30 + 1);
    v13 = v30;
    v14 = v29;
    v15 = *(&v32 + 1);
  }

  else
  {
    v14 = UUID.uuidString.getter();
    v8 = v16;
    v10 = *(v3 + 24);
    *&v24 = v14;
    *(&v24 + 1) = v16;
    v12 = 0x800000010029A3E0;
    v13 = 0xD000000000000016;
    *&v25 = 0xD000000000000016;
    *(&v25 + 1) = 0x800000010029A3E0;
    v11 = 0x3FE0000000000000;
    *&v26 = v10;
    *(&v26 + 1) = 0x3FE0000000000000;
    v15 = _swiftEmptyArrayStorage;
    LOBYTE(v27) = 0;
    *(&v27 + 1) = _swiftEmptyArrayStorage;
    v17 = v5[1];
    v28[0] = *v5;
    v28[1] = v17;
    v18 = v5[3];
    v28[2] = v5[2];
    v28[3] = v18;
    v19 = v24;
    v20 = v25;
    v21 = v27;
    v5[2] = v26;
    v5[3] = v21;
    *v5 = v19;
    v5[1] = v20;

    sub_100094CD8(&v24, &v23);
    sub_1000097E8(v28, &qword_10033E428, &qword_100274640);
    v9 = 0;
  }

  LOBYTE(v24) = v9 & 1;
  result = sub_100009848(&v29, v28, &qword_10033E428, &qword_100274640);
  *a2 = v14;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v24;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_10008D6FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = *(Strong + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active);

  return v3;
}

uint64_t sub_10008D760(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v6 == 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    *v5 = v8;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v5, 0xD000000000000018, 0x800000010029A4D0);

    return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  return result;
}

void sub_10008D86C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v30 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v30);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v12, type metadata accessor for ExperienceEvent);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v3;
    v31 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_100017494(0xD00000000000001ELL, 0x800000010029A400, &v31);
    *(v16 + 12) = 2080;
    v18 = sub_100243F84();
    v20 = v19;
    sub_100097C8C(v12, type metadata accessor for ExperienceEvent);
    v21 = sub_100017494(v18, v20, &v31);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100017494(a2, a3, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: event=%s, reason=%s", v16, 0x20u);
    swift_arrayDestroy();
    v4 = v28;

    a1 = v29;
  }

  else
  {

    sub_100097C8C(v12, type metadata accessor for ExperienceEvent);
  }

  if (*(v4 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) == 1)
  {
    v22 = a2;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    v26 = &v9[*(v30 + 48)];
    v27 = &v9[*(v30 + 64)];
    sub_100097CEC(a1, v9, type metadata accessor for ExperienceEvent);
    *v26 = v23;
    v26[1] = v25;
    *v27 = v22;
    v27[1] = a3;

    PassthroughSubject.send(_:)();
    sub_1000097E8(v9, &unk_10034C700, &qword_100273D30);
  }
}

uint64_t sub_10008DBB0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v2 = static UUID.== infix(_:_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10008DC4C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v4 = 6;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v4, 0xD000000000000027, 0x800000010029A4A0);

    return sub_100097C8C(v4, type metadata accessor for ExperienceEvent);
  }

  return result;
}

double sub_10008DD4C(unsigned __int16 *a1, uint64_t a2)
{
  v3 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    *&v31[0] = 0x20A39F9FF0;
    *(&v31[0] + 1) = 0xA500000000000000;
    v15._countAndFlagsBits = sub_100243CA8(v11);
    String.append(_:)(v15);

    v16 = v31[0];
    sub_10008D594(v31);
    v27 = v31[0];
    v28 = v31[1];
    v29 = v31[2];
    v17 = v33;
    v30 = v32;
    static Date.now.getter();
    v18 = &v6[*(v3 + 48)];
    (*(v8 + 32))(v6, v10, v7);
    *v18 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1000AFF4C(0, v17[2] + 1, 1, v17);
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1000AFF4C((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    sub_100098288(v6, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
    v21 = v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v22 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v23 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v24 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v26[3] = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v26[2] = v22;
    v26[1] = v24;
    v26[0] = v23;
    v25 = v29;
    *(v21 + 16) = v28;
    *(v21 + 32) = v25;
    *v21 = v27;
    *(v21 + 48) = v30;
    *(v21 + 56) = v17;
    sub_1000097E8(v26, &qword_10033E428, &qword_100274640);
  }

  return result;
}

void sub_10008E02C(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 >> 13 == 2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v4 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
    goto LABEL_9;
  }

  if (v2 >> 13 != 4)
  {
    return;
  }

  if (v2 == 33024)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      _StringGuts.grow(_:)(21);

      v5._countAndFlagsBits = sub_100243CA8(0x8100u);
      String.append(_:)(v5);

      sub_10008E18C(0xD000000000000013, 0x800000010029A460);
    }
  }

  else if (v2 == 0x8000)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell;
LABEL_9:
      *(Strong + v4) = 1;
    }
  }
}

uint64_t sub_10008E18C(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000011, 0x800000010029A480, v23);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100017494(a1, a2, v23);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: reason=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask))
  {

    sub_100035D04(&unk_100346020, &qword_100271A00);
    Task.cancel()();
  }

  *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 0;
  sub_10008D40C(v23);
  v9 = v24;
  v10 = v25;
  sub_10000EBC0(v23, v24);
  (*(v10 + 48))(v9, v10);
  sub_10000903C(v23);
  v11 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
  if (v11)
  {
    v12 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);

    v11(v3);
    sub_10002689C(v11, v12);
  }

  sub_10008D594(v23);
  if (qword_100339270 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10038B5E0);
  sub_100094CD8(v23, v22);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_100098354(v23);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;
    v18 = sub_10022B95C();
    v20 = sub_100017494(v18, v19, v22);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_10000903C(v17);
  }

  return sub_100098354(v23);
}

uint64_t sub_10008E508(double a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v5 = xmmword_100274290;
    v5[16] = 4;
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    v10 = 0xE000000000000000;
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 115;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    sub_10008D86C(v5, v9, v10);

    return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  return result;
}

uint64_t sub_10008E668(double a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v5 = 1;
    v5[56] = 96;
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    v10 = 0xE000000000000000;
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 115;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    sub_10008D86C(v5, v9, v10);

    return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  return result;
}

uint64_t sub_10008E7A8(void *a1, uint64_t a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
  v3 = *v2;
  v4 = v2[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = UUID.uuidString.getter();
    v7 = v6;

    if (v3 == v5 && v4 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

double sub_10008E880(uint64_t *a1)
{

  sub_10005E71C();
  sub_100035D04(&qword_10033C268, &qword_10028EAD0);
  sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.eraseToAnyPublisher()();

  sub_100035D04(&qword_10033E588, &unk_100274730);
  sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
  sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

uint64_t sub_10008EA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;
  a3[6] = v10;
  a3[7] = a2;
  sub_10006C458(v5, v4, v6, v7, v8, v9, v10);
}

uint64_t sub_10008EA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  return sub_1000981E4(v3);
}

uint64_t sub_10008EA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(v5)
  {
    case 2:
      v10 = *(a2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      *v8 = v10;
      type metadata accessor for TransferEvent(0);
      goto LABEL_10;
    case 1:
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    case 0:
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

LABEL_5:
      type metadata accessor for TransferEvent(0);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
  }

  v11 = *(a1 + 40);
  v16 = *(a1 + 24);
  v17 = v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000982F8();
  v12 = swift_allocError();
  *v13 = *a1;
  *(v13 + 16) = v5;
  v14 = v17;
  *(v13 + 24) = v16;
  *(v13 + 40) = v14;
  *v8 = v12;
  type metadata accessor for TransferEvent(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

LABEL_13:
  sub_10008D86C(v8, 0x726566736E617274, 0xEF6574617473242ELL);

  return sub_100097C8C(v8, type metadata accessor for ExperienceEvent);
}

uint64_t sub_10008ED20(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v5 = v6;
    v5[8] = v7;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v5, 0xD000000000000014, 0x800000010029A440);

    result = sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  if (v7 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *v5 = v6 == 1;
      v5[8] = 4;
      swift_storeEnumTagMultiPayload();
      sub_10008D86C(v5, 0xD000000000000014, 0x800000010029A440);

      return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
    }
  }

  return result;
}

unint64_t sub_10008EEC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  _StringGuts.grow(_:)(43);

  v9._countAndFlagsBits = sub_100243F84();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6F6973736573202CLL;
  v10._object = 0xEC0000003D44496ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6E6F73616572202CLL;
  v12._object = 0xE90000000000003DLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a4;
  v13._object = a5;
  String.append(_:)(v13);
  return 0xD000000000000010;
}

unint64_t sub_10008EFC8(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v3 = (a1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a1 + *(v2 + 64));
  v7 = *v6;
  v8 = v6[1];

  return sub_10008EEC4(a1, v4, v5, v7, v8);
}

uint64_t sub_10008F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = UUID.uuidString.getter();
    v10 = v9;

    if (v8 == a2 && v10 == a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_10008F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1002433A0())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      *&v33[0] = 0x208FB8EF86ACE2;
      *(&v33[0] + 1) = 0xA700000000000000;
      v17._countAndFlagsBits = sub_100243F84();
      String.append(_:)(v17);

      v18 = v33[0];
      sub_10008D594(v33);
      v29 = v33[0];
      v30 = v33[1];
      v31 = v33[2];
      v19 = v35;
      v32 = v34;
      static Date.now.getter();
      v20 = &v9[*(v6 + 48)];
      (*(v11 + 32))(v9, v13, v10);
      *v20 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000AFF4C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1000AFF4C((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_100098288(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22);
      v23 = v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v24 = *(v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v25 = *(v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v26 = *(v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v28[3] = *(v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v28[2] = v24;
      v28[1] = v26;
      v28[0] = v25;
      v27 = v31;
      *(v23 + 16) = v30;
      *(v23 + 32) = v27;
      *v23 = v29;
      *(v23 + 48) = v32;
      *(v23 + 56) = v19;
      sub_1000097E8(v28, &qword_10033E428, &qword_100274640);
    }
  }

  return result;
}

double sub_10008F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10008D40C(&v14);
    v10 = v15;
    v11 = v16;
    sub_100051608(&v14, v15);
    (*(v11 + 56))(a1, v10, v11);
    sub_10000E754(&v14, v13);
    v12 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
    swift_beginAccess();
    sub_100094B04(v13, v9 + v12);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10008F4B8()
{
  v1 = sub_100035D04(&qword_10033E288, &qword_1002744B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008CF3C();
    sub_100035D04(&qword_10033B508, &qword_1002744C0);
    type metadata accessor for ExperienceEffect(0);
    sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E290, &qword_10033E288, &qword_1002744B8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

double sub_10008F6B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100243A20())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      *&v29[0] = 0x208FB8EF90ADE2;
      *(&v29[0] + 1) = 0xA700000000000000;
      v13._countAndFlagsBits = sub_100244CC4();
      String.append(_:)(v13);

      v14 = v29[0];
      sub_10008D594(v29);
      v25 = v29[0];
      v26 = v29[1];
      v27 = v29[2];
      v15 = v31;
      v28 = v30;
      static Date.now.getter();
      v16 = &v5[*(v2 + 48)];
      (*(v7 + 32))(v5, v9, v6);
      *v16 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1000AFF4C(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1000AFF4C((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      sub_100098288(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
      v19 = v12 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v20 = *(v12 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v21 = *(v12 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v22 = *(v12 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v24[3] = *(v12 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v24[2] = v20;
      v24[1] = v22;
      v24[0] = v21;
      v23 = v27;
      *(v19 + 16) = v26;
      *(v19 + 32) = v23;
      *v19 = v25;
      *(v19 + 48) = v28;
      *(v19 + 56) = v15;
      sub_1000097E8(v24, &qword_10033E428, &qword_100274640);
    }
  }

  return result;
}

uint64_t sub_10008F994(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10008FA2C()
{
  v1 = sub_100035D04(&qword_10033E560, &qword_100274718);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E568, &qword_10033E560, &qword_100274718, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

double sub_10008FC1C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Kicking device to trigger call to PCRemoteActivityClient.updateHandler", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10008FE10()
{
  v1 = sub_100035D04(&qword_10033E3D8, &qword_100274618);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3E0, &qword_10033E3D8, &qword_100274618, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

double sub_100090010(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10006F838();

    sub_1001E042C();
  }

  return result;
}

double sub_10009007C(unsigned __int16 *a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ((v13 & 0xE100) == 0x4100)
    {
      sub_10006F838();
      sub_1001E05F4();
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v17 = *(qword_10038B0B8 + 64);
    v18 = sub_1000031CC();

    if (v18)
    {
      sub_1000902DC(v16 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id, v13, v12);
      v19 = *(v4 + 16);
      v19(v10, v12, v3);
      v19(v7, v10, v3);

      sub_1001C08B8(v7);

      v20 = *(v4 + 8);
      v20(v10, v3);
      v20(v12, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000902DC@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  __chkstk_darwin(v14);
  if ((a2 >> 13) > 1u)
  {
    if ((a2 >> 13) - 2 < 2)
    {
LABEL_3:
      (*(v16 + 104))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:));
      (*(v11 + 16))(v13, a1, v10);
      (*(v11 + 56))(v9, 1, 1, v10);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)();
      v17 = enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:);
      v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
      return (*(*(v18 - 8) + 104))(a3, v17, v18);
    }

    if (v6 != 0x8000)
    {
      if (v6 == 32769)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }

LABEL_10:
    SFAirDrop.NearbySharingInteraction.PresenceContext.init()();
    v20 = &enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
    goto LABEL_11;
  }

  if (a2 >> 13 && (v6 & 0x100) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v20 = &enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:);
LABEL_11:
  v21 = *v20;
  v22 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_100090608()
{
  v1 = sub_100035D04(&qword_10033E3B8, &qword_100274608);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3C0, &qword_10033E3B8, &qword_100274608, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

char *sub_1000907F8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log;
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = &unk_10038A000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v37 = v10;
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315138;
    v40 = 60;
    v41 = 0xE100000000000000;
    v42 = v11;
    v38 = v7;
    v12 = UUID.uuidString.getter();
    sub_10000B584(8, v12, v13);
    v36 = v8;
    v14 = v2;
    v15 = v6;

    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v6 = v15;
    v2 = v14;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v23._countAndFlagsBits = sub_1000092A0(v21, v22);
    String.append(_:)(v23);

    v24._countAndFlagsBits = 62;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = sub_100017494(v40, v41, &v42);

    v26 = v37;
    v27 = v38;
    *(v37 + 1) = v25;
    v9 = &unk_10038A000;
    _os_log_impl(&_mh_execute_header, v27, v36, "Deinit: %s", v26, 0xCu);
    sub_10000903C(v39);
  }

  else
  {
  }

  v28 = *(v3 + 8);
  v28(v5, v2);

  v29 = sub_1000983A8(*(v1 + 32), *(v1 + 40));
  (v28)(v1 + v6, v2, v29);

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine, &qword_10033E260, &qword_1002744A0);
  v30 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__viewServiceLink;
  v31 = sub_100035D04(&qword_10033B550, &qword_1002746C0);
  (*(*(v31 - 8) + 8))(v1 + v30, v31);

  v32 = v9[508];
  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 8))(v1 + v32, v33);
  sub_10002689C(*(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8));
  sub_1000983C8(*(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 8), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 24), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 40), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48), *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 56));

  return v1;
}

uint64_t sub_100090D88()
{
  sub_1000907F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffSession(uint64_t a1)
{
  result = qword_10033E040;
  if (!qword_10033E040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090E34(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100090FE0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100090FE0(uint64_t a1)
{
  if (!qword_10033E050)
  {
    sub_100035D4C(&unk_10033E058, &qword_100274370);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10033E050);
    }
  }
}

uint64_t sub_100091044()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0x29287472617473, 0xE700000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 1;
  v9 = sub_100070EF4();
  if (v9 == 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *v4 = v10;
  swift_storeEnumTagMultiPayload();
  sub_10008D86C(v4, 0x7472617473, 0xE500000000000000);
  return sub_100097C8C(v4, type metadata accessor for ExperienceEvent);
}

uint64_t sub_10009120C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher);
  }

  else
  {

    sub_10005E99C();
    sub_100035D04(&qword_10033C2C8, &qword_100272AC0);
    sub_10000E244(&qword_10033E3B0, &qword_10033C2C8, &qword_100272AC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100091318()
{
  v0 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v12 - v2;
  v5 = sub_100017E14(v1, v4);
  if (!v5)
  {
    v7 = sub_100070C80(0, v6);
    if (!v8)
    {
      return sub_100017CB4();
    }

    v12[2] = v7;
    v12[3] = v8;
    v12[0] = 808334897;
    v12[1] = 0xE400000000000000;
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_10001369C();
    v10 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000097E8(v3, &qword_10033D440, &unk_1002730B0);

    if (v10 >= 2)
    {
      return sub_100017CB4();
    }

    return 2;
  }

  if (v5 >= 4000000)
  {
    return 2;
  }

  return sub_100017CB4();
}

uint64_t sub_100091490()
{
  v1 = sub_100035D04(&qword_10033E360, &qword_1002745D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = sub_100035D04(&qword_10033E368, &unk_1002745E0);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher))
  {
    v10 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher);
  }

  else
  {
    v15 = v2;
    v16 = v6;
    v17 = v0;
    v14 = sub_10006FD08();
    v18 = v14;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_100035D04(&qword_10033E370, &qword_1002745F0);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E378, &qword_10033E360, &qword_1002745D8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_100094B9C();
    Publisher<>.removeDuplicates()();
    (*(v15 + 8))(v4, v1);
    sub_10000E244(&qword_10033E398, &qword_10033E368, &unk_1002745E0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v11 = Publisher.share()();
    (*(v16 + 8))(v8, v5);
    v18 = v11;
    sub_100035D04(&qword_10033E3A0, &unk_1002745F8);
    sub_10000E244(&qword_10033E3A8, &qword_10033E3A0, &unk_1002745F8, &protocol conformance descriptor for Publishers.Share<A>);
    v10 = Publisher.eraseToAnyPublisher()();

    *(v17 + v9) = v10;
  }

  return v10;
}

void sub_10009182C(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(*(*(Strong + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
    v5 = [v4 proxDeviceState];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1000918D0()
{
  v1 = sub_100035D04(&qword_10033E2C8, &qword_100274538);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = sub_100035D04(&qword_10033E2D0, &qword_100274540);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_100035D04(&qword_10033E2D8, &qword_100274548);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100035D04(&qword_10033E2E0, &qword_100274550);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher))
  {
    v17 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher);
  }

  else
  {
    v34 = v0;
    v35 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher;
    v32 = v13;
    v33 = v14;
    v18 = sub_10007005C();
    v30 = v8;
    v31 = v9;
    v37 = v18;
    sub_100035D04(&qword_10033E2E8, &qword_100274558);
    v29 = v11;
    sub_100035D04(&qword_10033E2F0, &qword_100274560);
    v27 = v1;
    v28 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_100035D04(&qword_10033E300, &qword_100274568);
    sub_10000E244(&qword_10033E308, &qword_10033E2D0, &qword_100274540, &protocol conformance descriptor for Publishers.Map<A, B>);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E310, &qword_10033E2C8, &qword_100274538, &protocol conformance descriptor for Publishers.Map<A, B>);
    v19 = v27;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v19);
    (*(v36 + 8))(v7, v5);
    v37 = v20;
    sub_100035D04(&qword_10033E318, &qword_100274570);
    v21 = v28;
    sub_10000E244(&qword_10033E320, &qword_10033E318, &qword_100274570, v28);
    sub_10000E244(&qword_10033E328, &qword_10033E300, &qword_100274568, v21);
    v22 = v29;
    Publisher<>.switchToLatest()();

    sub_10000E244(&qword_10033E330, &qword_10033E2D8, &qword_100274548, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
    v23 = v30;
    Publisher.map<A>(_:)();
    (*(v31 + 8))(v22, v23);
    sub_10000E244(&qword_10033E338, &qword_10033E2E0, &qword_100274550, &protocol conformance descriptor for Publishers.Map<A, B>);
    v24 = v32;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v33 + 8))(v16, v24);
    *(v34 + v35) = v17;
  }

  return v17;
}

uint64_t sub_100091E64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = sub_10023D1DC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

id sub_100091E9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *a1;
  }

  if (*a1 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1];
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_100094B7C(v2);
}

void sub_100091EB8()
{

  CurrentValueSubject.value.getter();
  if (BYTE5(v10[0]))
  {
    CurrentValueSubject.value.getter();

    if (v13)
    {
      return;
    }
  }

  else
  {

    if (((LODWORD(v10[0]) | (BYTE4(v10[0]) << 32)) & 0x100000000) != 0)
    {
      return;
    }
  }

  sub_10008D40C(v10);
  v0 = v11;
  v1 = v12;
  sub_10000EBC0(v10, v11);
  v2 = (*(v1 + 8))(v0, v1);
  v3 = sub_10000903C(v10);
  if ((v2 >> 13) <= 1u && v2 >> 13)
  {
    if ((v2 & 0x100) != 0)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v6 = *(qword_10038B0B8 + 456);
      v7 = sub_1000031CC();

      v5 = sub_100092098(v8, v9);
      if (v7)
      {
        sub_10015F318(v5);
        return;
      }
    }

    else
    {
      v5 = sub_100092098(v3, v4);
    }

    sub_10015F4A0(v5);
  }
}

uint64_t sub_100092098(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  LODWORD(v2) = *(v3 + 16);
  if (v2 != 7)
  {
    return 0x1010101010001uLL >> (8 * v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = sub_10000A0B4(v4, v5);
  v7 = v6;

  if (v7)
  {
    LOBYTE(v2) = sub_100011F00(v2, v7);
  }

  else
  {
    LOBYTE(v2) = 7;
  }

  if ((*(v3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
  {
    *(v3 + 16) = v2;
  }

  if (v2 == 7)
  {
    return 1;
  }

  else
  {
    return 0x1010101010001uLL >> (8 * v2);
  }
}

uint64_t sub_10009219C()
{
  v1 = sub_100035D04(&qword_10033E340, &qword_100274578);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher);
  }

  else
  {
    v7 = v0;
    v11 = sub_10006E2CC();
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033C3E8, &qword_100274580);
    sub_10000E244(&qword_10033C3F0, &qword_10033C3E8, &qword_100274580, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E348, &qword_10033E340, &qword_100274578, &protocol conformance descriptor for Publishers.Map<A, B>);
    v8 = Publisher.share()();
    (*(v2 + 8))(v4, v1);
    v11 = v8;
    sub_100035D04(&qword_10033E350, &qword_100274588);
    sub_10000E244(&qword_10033E358, &qword_10033E350, &qword_100274588, &protocol conformance descriptor for Publishers.Share<A>);
    v6 = Publisher.eraseToAnyPublisher()();

    *(v7 + v5) = v6;
  }

  return v6;
}

void sub_100092428(_DWORD *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100091EB8();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_10009249C@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v2 - 8);
  v24 = &v23 - v3;
  v4 = sub_100035D04(&qword_100339A90, &qword_1002704B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;

  CurrentValueSubject.value.getter();
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    CurrentValueSubject.value.getter();

    if (v14(v6, 1, v7) != 1)
    {
      sub_1000097E8(v6, &qword_100339A90, &qword_1002704B0);
    }
  }

  else
  {

    (*(v8 + 32))(v10, v6, v7);
  }

  v15 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = v25 + v15;
  v19 = v24;
  (*(v17 + 16))(v24, v18, v16);
  (*(v17 + 56))(v19, 0, 1, v16);
  SFAirDrop.NearbySharingInteraction.init(state:id:)();
  v20 = v26;
  *v26 = _swiftEmptyArrayStorage;
  v21 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  return (*(v11 + 32))(&v20[*(v21 + 20)], v13, v23);
}

uint64_t sub_100092814()
{
  v1 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_100035D04(&qword_10033E298, &qword_100274520);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_100035D04(&qword_10033E2A0, &qword_100274528);
  __chkstk_darwin(v13);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher))
  {
    v17 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher);
  }

  else
  {
    v41 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher;
    v37 = &v31 - v14;
    v33 = v0;
    v39 = v15;
    v40 = v16;
    v18 = sub_1001EF664();
    v36 = v9;
    v43[0] = v18;
    v38 = v10;
    sub_100035D04(&unk_10034D910, &unk_100273390);
    v32 = v1;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    v35 = v12;
    v34 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380, &protocol conformance descriptor for Publishers.Map<A, B>);
    Publisher.removeDuplicates(by:)();
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v19 = v32;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v19);
    (*(v6 + 8))(v8, v5);
    v46 = v20;
    v21 = v33;
    sub_10008D40C(v43);
    v22 = v44;
    v23 = v45;
    sub_10000EBC0(v43, v44);
    v24 = (*(v23 + 32))(v22, v23);
    sub_10000903C(v43);
    v42 = *(v21 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState);
    v43[0] = v24;

    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_100035D04(&qword_10033B590, &qword_100272048);
    sub_100035D04(&qword_10033E2A8, &qword_100274530);
    v25 = v34;
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, v34);
    sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048, v25);
    sub_10000E244(&qword_10033E2B0, &qword_10033E2A8, &qword_100274530, &unk_10027C688);
    v26 = v35;
    Publishers.CombineLatest3.init(_:_:_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for NearbySharingInteractionDisplayContext(0);
    sub_10000E244(&qword_10033E2B8, &qword_10033E298, &qword_100274520, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
    v27 = v36;
    v28 = v37;
    Publisher.compactMap<A>(_:)();

    (*(v38 + 8))(v26, v27);
    sub_10000E244(&qword_10033E2C0, &qword_10033E2A0, &qword_100274528, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v29 = v39;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v40 + 8))(v28, v29);
    *(v21 + v41) = v17;
  }

  return v17;
}

uint64_t sub_100092EC4@<X0>(char *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10009249C(a2);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_100092F70(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_10000A0B4(v2, v3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_100011F00(v4, v6);

    if (v7 - 3 < 4)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_6:

      return v8 & 1;
    }

    v8 = 1;
    if (v7 < 3u)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100093088(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_10000A0B4(v2, v3);
  v6 = v5;

  if (v6)
  {
    sub_100011F00(v4, v6);
  }

  return 0;
}

uint64_t sub_100093164@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v8 = 6;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100093240()
{
  v1 = sub_100035D04(&qword_10033E418, &qword_100274638);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E420, &qword_10033E418, &qword_100274638, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100093430@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
  }

  else
  {
    result = *v6;
    v8 = v6[16];
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    sub_100094CB0(result, *(v6 + 1), v8);
  }

  result = 3;
LABEL_5:
  *a2 = result;
  return result;
}

uint64_t sub_10009351C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result != 10)
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
  }

  *a2 = v8 != 10;
  return result;
}

uint64_t sub_1000935F8()
{
  v1 = sub_100035D04(&qword_10033E408, &qword_100274630);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E410, &qword_10033E408, &qword_100274630, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1000937E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v8 = 6;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1000938C4()
{
  v1 = sub_100035D04(&qword_10033E3F8, &qword_100274628);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E400, &qword_10033E3F8, &qword_100274628, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100093AB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v8 = 4;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100093B90()
{
  v1 = sub_100035D04(&qword_10033E3C8, &qword_100274610);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3D0, &qword_10033E3C8, &qword_100274610, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100093D80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v8 = 2;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100093E5C()
{
  v1 = sub_100035D04(&qword_10033E3E8, &qword_100274620);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    type metadata accessor for NoticeEffect(0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3F0, &qword_10033E3E8, &qword_100274620, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100094054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_100094C4C(v6, a2);
    v7 = 0;
  }

  else
  {
    sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v7 = 1;
  }

  v8 = type metadata accessor for NoticeEffect(0);
  return (*(*(v8 - 8) + 56))(a2, v7, 1, v8);
}

uint64_t sub_100094178@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v8 = 3;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100094254()
{
  v1 = sub_100035D04(&qword_10033E268, &qword_1002744A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher);
  }

  else
  {
    v7 = v0;
    v9[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E280, &qword_10033E268, &qword_1002744A8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100094444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = v6[24];
  }

  else
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEffect);
    v9 = 0;
    v8 = 0uLL;
    v10 = -1;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_10009455C(uint64_t a1)
{
  v1 = UUID.uuidString.getter();
  sub_10000B584(8, v1, v2);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v10._countAndFlagsBits = sub_1000092A0(v8, v9);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 60;
}

uint64_t sub_10009465C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000946D8()
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10026F050;
  *(v1 + 32) = 0xD000000000000025;
  *(v1 + 40) = 0x800000010029A3B0;
  v34 = 0x3D657669746361;
  v35 = 0xE700000000000000;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5 = v34;
  v6 = v35;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  if (v8 >= v7 >> 1)
  {
    v1 = sub_100009088((v7 > 1), v8 + 1, 1, v1);
  }

  *(v1 + 16) = v8 + 1;
  v9 = v1 + 16 * v8;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  v34 = 0x7974697669746361;
  v35 = 0xE90000000000003DLL;
  v10 = sub_1001F00B0();
  if (v10)
  {
    v36 = v10;
    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    v11 = String.init<A>(describing:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  v14 = v13;
  String.append(_:)(*&v11);

  v17 = v34;
  v18 = v35;
  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  if (v20 >= v19 >> 1)
  {
    v15 = sub_100009088((v19 > 1), v20 + 1, 1, v1);
    v1 = v15;
  }

  *(v1 + 16) = v20 + 1;
  v21 = v1 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  v34 = 0x3D656369766564;
  v35 = 0xE700000000000000;
  v22._countAndFlagsBits = sub_1000092A0(v15, v16);
  String.append(_:)(v22);

  v24 = *(v1 + 16);
  v23 = *(v1 + 24);
  if (v24 >= v23 >> 1)
  {
    v1 = sub_100009088((v23 > 1), v24 + 1, 1, v1);
  }

  *(v1 + 16) = v24 + 1;
  v25 = v1 + 16 * v24;
  *(v25 + 32) = 0x3D656369766564;
  *(v25 + 40) = 0xE700000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  v26._countAndFlagsBits = 0x63614D6574617473;
  v26._object = 0xED00003D656E6968;
  String.append(_:)(v26);
  sub_10008D40C(&v34);
  sub_100035D04(&qword_10033E258, &unk_100274490);
  _print_unlocked<A, B>(_:_:)();
  sub_10000903C(&v34);
  v27 = v36;
  v28 = v37;
  v30 = *(v1 + 16);
  v29 = *(v1 + 24);
  if (v30 >= v29 >> 1)
  {
    v1 = sub_100009088((v29 > 1), v30 + 1, 1, v1);
  }

  *(v1 + 16) = v30 + 1;
  v31 = v1 + 16 * v30;
  *(v31 + 32) = v27;
  *(v31 + 40) = v28;
  v34 = v1;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v32 = BidirectionalCollection<>.joined(separator:)();

  return v32;
}

uint64_t sub_100094A94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, _OWORD *a7@<X8>, os_log_type_t a8)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v12[2] = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  return sub_1001BEE9C(v12, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100094AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100141E74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100094B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E260, &qword_1002744A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100094B7C(id result)
{
  if (result != 2)
  {
    return sub_100056F7C(result);
  }

  return result;
}

unint64_t sub_100094B9C()
{
  result = qword_10033E380;
  if (!qword_10033E380)
  {
    sub_100035D4C(&qword_10033E370, &qword_1002745F0);
    sub_100076FC4(&qword_10033E388, &qword_10033E390, MRNowPlayingPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E380);
  }

  return result;
}

uint64_t sub_100094C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094CB0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_100094CC0(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_100094CC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_100094D34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void (*)(void, void), uint64_t), void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v235 = a3;
  v236 = a4;
  v239 = a2;
  v240 = a1;
  v221 = sub_100035D04(&qword_10033E430, &qword_100274648);
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v186 - v6;
  v233 = sub_100035D04(&qword_10033E438, &qword_100274650);
  v218 = *(v233 - 8);
  __chkstk_darwin(v233);
  v217 = &v186 - v7;
  v232 = sub_100035D04(&qword_10033E440, &qword_100274658);
  v216 = *(v232 - 8);
  v8 = __chkstk_darwin(v232);
  v214 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v215 = &v186 - v10;
  v224 = sub_100035D04(&qword_10033E448, &qword_100274660);
  v213 = *(v224 - 8);
  __chkstk_darwin(v224);
  v212 = &v186 - v11;
  v200 = sub_100035D04(&qword_10033E450, &qword_100274668);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v186 - v12;
  v231 = sub_100035D04(&qword_10033E458, &qword_100274670);
  v202 = *(v231 - 1);
  __chkstk_darwin(v231);
  v201 = &v186 - v13;
  v206 = sub_100035D04(&qword_10033E460, &qword_100274678);
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = &v186 - v14;
  v208 = sub_100035D04(&qword_10033E468, &qword_100274680);
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v204 = &v186 - v15;
  v211 = sub_100035D04(&qword_10033E470, &unk_100274688);
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v209 = &v186 - v16;
  v17 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v17 - 8);
  v187 = &v186 - v18;
  v189 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v186 = *(v189 - 8);
  __chkstk_darwin(v189);
  v230 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100035D04(&qword_10033E478, &qword_100274698);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v186 - v20;
  v194 = sub_100035D04(&qword_10033E480, &qword_1002746A0);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v186 - v21;
  v229 = sub_100035D04(&qword_10033E488, &qword_1002746A8);
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v225 = &v186 - v22;
  v223 = sub_100035D04(&qword_10033E490, &qword_1002746B0);
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = &v186 - v23;
  v227 = sub_100035D04(&qword_10033E498, &qword_1002746B8);
  v196 = *(v227 - 8);
  __chkstk_darwin(v227);
  v195 = &v186 - v24;
  v238 = type metadata accessor for Logger();
  v241 = *(v238 - 8);
  __chkstk_darwin(v238);
  v226 = v25;
  v26 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v186 - v32;
  v34 = sub_100035D04(&qword_10033B550, &qword_1002746C0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v186 - v36;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink) = 0;
  v38 = v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0;
  v39 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__viewServiceLink;
  v244 = 0;
  sub_100035D04(&unk_10033E058, &qword_100274370);
  Published.init(initialValue:)();
  (*(v35 + 32))(v5 + v39, v37, v34);
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_airDropUIPresenter) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenter) = 0;
  UUID.init()();
  v40 = (v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
  *v40 = 0;
  v40[1] = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand) = 0;
  v41 = (v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  *v41 = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  v41[3] = 0u;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_tasks) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher) = 0;
  v42 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode;
  sub_100035D04(&qword_10033E4A0, &qword_1002746C8);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 4;
  *(v5 + v42) = v43;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher) = 0;
  v44 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState;
  (*(v28 + 104))(v33, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v27);
  (*(v28 + 16))(v31, v33, v27);
  sub_100035D04(&qword_10033E2A8, &qword_100274530);
  swift_allocObject();
  v45 = sub_10002E2C0(v31, 0, 0, 0, 0, 0);
  (*(v28 + 8))(v33, v27);
  *(v5 + v44) = v45;
  v46 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__transferredThisCard;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v5 + v46) = v47;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___callServicesUIEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___contentPreviewEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___dwellBannerEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher) = 0;
  v48 = v239;
  *(v5 + 16) = v240;
  *(v5 + 24) = v48;
  v50 = v235;
  v49 = v236;
  *(v5 + 32) = v235;
  *(v5 + 40) = v49;
  v51 = *(v48 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp + 8);
  *(v5 + 48) = *(v48 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp);
  *(v5 + 56) = v51;
  v244 = 0;
  v245 = 0xE000000000000000;

  sub_100097D54(v50, v49);
  _StringGuts.grow(_:)(17);

  v244 = 0x5366666F646E6148;
  v245 = 0xEF2D6E6F69737365;
  v52 = UUID.uuidString.getter();
  sub_10000B584(8, v52, v53);

  v54 = static String._fromSubstring(_:)();
  v56 = v55;

  v57._countAndFlagsBits = v54;
  v57._object = v56;
  String.append(_:)(v57);

  Logger.init(subsystem:category:)();
  v58 = *(v241 + 32);
  v236 = (v241 + 32);
  v237 = v26;
  v235 = v58;
  v58(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log, v26, v238);
  v59 = v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log;

  v234 = v59;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 136315138;
    v243 = v63;
    v244 = 60;
    v245 = 0xE100000000000000;
    v64 = UUID.uuidString.getter();
    sub_10000B584(8, v64, v65);

    v66 = static String._fromSubstring(_:)();
    v68 = v67;

    v69._countAndFlagsBits = v66;
    v69._object = v68;
    String.append(_:)(v69);

    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    String.append(_:)(v70);
    v73._countAndFlagsBits = sub_1000092A0(v71, v72);
    String.append(_:)(v73);

    v74._countAndFlagsBits = 62;
    v74._object = 0xE100000000000000;
    String.append(_:)(v74);
    v75 = sub_100017494(v244, v245, &v243);

    *(v62 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v60, v61, "Init: %s", v62, 0xCu);
    sub_10000903C(v63);
  }

  v244 = sub_100070F78();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10033D680, &qword_100273290);
  sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290, &protocol conformance descriptor for AnyPublisher<A, B>);
  v76 = v195;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4A8, &qword_10033E498, &qword_1002746B8, &protocol conformance descriptor for Publishers.Filter<A>);
  v77 = v227;
  Publisher<>.sink(receiveValue:)();

  (*(v196 + 8))(v76, v77);
  v78 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = *(*(v240 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + 48);
  sub_100035D04(&qword_100339828, &unk_100270300);
  sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v244 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  v79 = v197;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4B0, &qword_10033E490, &qword_1002746B0, &protocol conformance descriptor for Publishers.Filter<A>);
  v80 = v223;
  Publisher<>.sink(receiveValue:)();

  (*(v222 + 8))(v79, v80);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008D40C(&v244);
  v81 = v246;
  v82 = v247;
  sub_10000EBC0(&v244, v246);
  v83 = (*(v82 + 32))(v81, v82);
  v84 = swift_allocObject();
  swift_weakInit();
  v243 = v83;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_100097D94;
  *(v85 + 24) = v84;

  v86 = sub_100035D04(&qword_10033B590, &qword_100272048);
  v87 = sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048, &protocol conformance descriptor for AnyPublisher<A, B>);
  v88 = v225;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E4B8, &qword_10033E488, &qword_1002746A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v89 = v229;
  v90 = Publisher.eraseToAnyPublisher()();

  (*(v228 + 8))(v88, v89);
  sub_10000903C(&v244);
  v244 = v90;
  swift_allocObject();
  swift_weakInit();
  v223 = v86;
  v222 = v87;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v91 = qword_10038B0B8;
  v92 = *(qword_10038B0B8 + 728);
  sub_10005F4E4();
  v94 = v93;

  v95 = v230;
  if (v94 > 0.0)
  {
    v96 = *(v91 + 96);
    v97 = sub_1000031CC();

    if (v97)
    {
      sub_10008D40C(&v244);
      v98 = v246;
      v99 = v247;
      sub_10000EBC0(&v244, v246);
      v229 = (*(v99 + 32))(v98, v99);
      v243 = v229;
      static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      v100 = qword_10038B5B8;
      v242 = qword_10038B5B8;
      v101 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v102 = v187;
      (*(*(v101 - 8) + 56))(v187, 1, 1, v101);
      sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
      sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
      v103 = v100;
      v104 = v188;
      Publisher.debounce<A>(for:scheduler:options:)();
      sub_1000097E8(v102, &qword_10034C680, &qword_100270390);

      (*(v186 + 8))(v95, v189);

      sub_10000903C(&v244);
      sub_10000E244(&qword_10033E550, &qword_10033E478, &qword_100274698, &protocol conformance descriptor for Publishers.Debounce<A, B>);
      v105 = v192;
      v106 = v191;
      Publisher.filter(_:)();
      (*(v190 + 8))(v104, v106);
      v107 = swift_allocObject();
      swift_weakInit();
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v94;
      sub_10000E244(&qword_10033E558, &qword_10033E480, &qword_1002746A0, &protocol conformance descriptor for Publishers.Filter<A>);
      v109 = v194;
      Publisher<>.sink(receiveValue:)();

      (*(v193 + 8))(v105, v109);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v110 = *(v91 + 344);
  sub_10005F4E4();
  v112 = v111;

  if (v112 > 0.0)
  {
    sub_10008D40C(&v244);
    v113 = v246;
    v114 = v247;
    sub_10000EBC0(&v244, v246);
    v243 = (*(v114 + 32))(v113, v114);
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v115 = qword_10038B5B8;
    v242 = qword_10038B5B8;
    v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v117 = v187;
    (*(*(v116 - 8) + 56))(v187, 1, 1, v116);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v118 = v115;
    v119 = v188;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v117, &qword_10034C680, &qword_100270390);

    (*(v186 + 8))(v95, v189);

    sub_10000903C(&v244);
    sub_10000E244(&qword_10033E550, &qword_10033E478, &qword_100274698, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v120 = v192;
    v121 = v191;
    Publisher.filter(_:)();
    (*(v190 + 8))(v119, v121);
    v122 = swift_allocObject();
    swift_weakInit();
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v112;
    sub_10000E244(&qword_10033E558, &qword_10033E480, &qword_1002746A0, &protocol conformance descriptor for Publishers.Filter<A>);
    v124 = v194;
    Publisher<>.sink(receiveValue:)();

    (*(v193 + 8))(v120, v124);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v125 = sub_10007005C();
  v126 = static os_log_type_t.info.getter();
  v244 = v125;
  v227 = v78;
  v127 = *(v241 + 16);
  v241 += 16;
  v128 = v241;
  v230 = v127;
  v129 = v237;
  v130 = v238;
  (v127)(v237, v234, v238);
  v229 = *(v128 + 64);
  v131 = (v229 + 64) & ~v229;
  v228 = v131;
  v132 = &v226[v131];
  v225 = &v226[v131];
  v133 = swift_allocObject();
  *(v133 + 16) = 0;
  *(v133 + 24) = 0;
  strcpy((v133 + 32), "New Transfer: ");
  *(v133 + 47) = -18;
  *(v133 + 48) = 0;
  *(v133 + 56) = 0xE000000000000000;
  v235(v133 + v131, v129, v130);
  v132[v133] = v126;
  sub_100035D04(&qword_10033E2E8, &qword_100274558);
  sub_100035D04(&unk_10034B620, &qword_1002746E0);
  v226 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558, &protocol conformance descriptor for AnyPublisher<A, B>);
  v134 = v198;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E4C0, &qword_10033E450, &qword_100274668, &protocol conformance descriptor for Publishers.Map<A, B>);
  v135 = v200;
  v136 = Publisher.eraseToAnyPublisher()();

  (*(v199 + 8))(v134, v135);
  v244 = v136;
  type metadata accessor for HandoffTransfer(0);
  v137 = v201;
  Publisher.compactMap<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4C8, &qword_10033E458, &qword_100274670, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v138 = v203;
  v139 = v231;
  Publisher.filter(_:)();

  (*(v202 + 8))(v137, v139);
  sub_100035D04(&qword_10033E4D0, &qword_1002746E8);
  v231 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_10033E4D8, &qword_10033E460, &qword_100274678, &protocol conformance descriptor for Publishers.Filter<A>);
  v140 = v204;
  v141 = v206;
  Publisher.map<A>(_:)();
  (*(v205 + 8))(v138, v141);
  sub_10000E244(&qword_10033E4E0, &qword_10033E468, &qword_100274680, &protocol conformance descriptor for Publishers.Map<A, B>);
  v197 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033E4E8, &qword_10033E4D0, &qword_1002746E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v142 = v209;
  v143 = v208;
  Publisher<>.switchToLatest()();
  (*(v207 + 8))(v140, v143);
  v144 = static os_log_type_t.info.getter();
  v145 = v237;
  v146 = v238;
  (v230)(v237, v234, v238);
  v147 = v225;
  v148 = swift_allocObject();
  *(v148 + 16) = sub_10008EA5C;
  *(v148 + 24) = 0;
  *(v148 + 32) = 0;
  *(v148 + 40) = 0xE000000000000000;
  *(v148 + 48) = 0;
  *(v148 + 56) = 0xE000000000000000;
  v235(v148 + v228, v145, v146);
  v147[v148] = v144;
  sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
  sub_10000E244(&qword_10033E4F8, &qword_10033E470, &unk_100274688, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v149 = v212;
  v150 = v211;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E500, &qword_10033E448, &qword_100274660, &protocol conformance descriptor for Publishers.Map<A, B>);
  v151 = v224;
  v152 = Publisher.eraseToAnyPublisher()();
  (*(v213 + 8))(v149, v151);
  (*(v210 + 8))(v142, v150);
  v244 = v152;
  v153 = swift_allocObject();
  swift_weakInit();
  v154 = swift_allocObject();
  *(v154 + 16) = sub_100097F60;
  *(v154 + 24) = v153;
  sub_100035D04(&qword_10033E508, &unk_1002746F8);
  v155 = v226;
  sub_10000E244(&qword_10033E510, &qword_10033E508, &unk_1002746F8, v226);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10014330C();
  v156 = sub_1000D7228();

  v244 = v156;
  v157 = swift_allocObject();
  swift_weakInit();
  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  *(v158 + 24) = v239;

  sub_100035D04(&qword_10033B308, &qword_100271EF0);
  sub_10000E244(&qword_10033B318, &qword_10033B308, &qword_100271EF0, v155);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = sub_1001410D0();
  swift_allocObject();
  swift_weakInit();
  v239 = sub_100035D04(&qword_10033B480, &qword_100271FA0);
  v224 = sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0, v155);
  v159 = v214;
  Publisher.filter(_:)();

  LOBYTE(v157) = static os_log_type_t.info.getter();
  v161 = v237;
  v160 = v238;
  (v230)(v237, v234, v238);
  v162 = v225;
  v163 = swift_allocObject();
  *(v163 + 16) = sub_10008EFC8;
  *(v163 + 24) = 0;
  *(v163 + 32) = 0;
  *(v163 + 40) = 0xE000000000000000;
  *(v163 + 48) = 0;
  *(v163 + 56) = 0xE000000000000000;
  v235(v163 + v228, v161, v160);
  v162[v163] = v157;
  v241 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v238 = sub_10000E244(&qword_10033E518, &qword_10033E440, &qword_100274658, v231);
  v164 = v217;
  v165 = v232;
  Publisher.map<A>(_:)();

  v235 = sub_10000E244(&qword_10033E520, &qword_10033E438, &qword_100274650, v197);
  v166 = v233;
  v167 = Publisher.eraseToAnyPublisher()();
  v237 = *(v218 + 8);
  v237(v164, v166);
  v236 = *(v216 + 8);
  v236(v159, v165);
  v244 = v167;
  v168 = swift_allocObject();
  swift_weakInit();
  v169 = swift_allocObject();
  *(v169 + 16) = sub_100098068;
  *(v169 + 24) = v168;
  v170 = v215;
  Publisher.filter(_:)();

  v171 = swift_allocObject();
  swift_weakInit();
  v172 = swift_allocObject();
  *(v172 + 16) = sub_1000980D8;
  *(v172 + 24) = v171;
  v173 = swift_allocObject();
  *(v173 + 16) = sub_1000980E0;
  *(v173 + 24) = v172;

  v174 = v5;
  v175 = v232;
  Publisher.map<A>(_:)();

  v176 = v233;
  v177 = Publisher.eraseToAnyPublisher()();

  v237(v164, v176);
  v236(v170, v175);
  v244 = v177;
  v178 = swift_allocObject();
  swift_weakInit();
  v179 = swift_allocObject();
  *(v179 + 16) = sub_100098138;
  *(v179 + 24) = v178;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = sub_10008F4B8();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033E270, &qword_1002744B0);
  v180 = v226;
  sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0, v226);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = sub_100141270();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030, v180);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = sub_10008FA2C();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033E528, &qword_100274708);
  sub_10000E244(&qword_10033E530, &qword_10033E528, &qword_100274708, v180);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v244 = sub_10008FE10();
  sub_100035D04(&qword_10033E538, &qword_100274710);
  sub_10000E244(&qword_10033E540, &qword_10033E538, &qword_100274710, v180);
  v181 = v219;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E548, &qword_10033E430, &qword_100274648, v231);
  v182 = v221;
  Publisher<>.sink(receiveValue:)();

  (*(v220 + 8))(v181, v182);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008D40C(&v244);
  v183 = v246;
  v184 = v247;
  sub_10000EBC0(&v244, v246);
  v243 = (*(v184 + 32))(v183, v184);
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  sub_10000903C(&v244);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v174;
}

uint64_t sub_100097C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100097CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100097D54(uint64_t result, unint64_t a2)
{
  if (a2 >> 61 == 5 || a2 >> 61 == 2)
  {
  }

  return v2;
}

uint64_t sub_100097D9C@<X0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  v5 = v7;
  result = v4(&v7);
  *a2 = v5;
  return result;
}

uint64_t sub_100097DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CC6C0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_100097F68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  return v2(v6, v4);
}

uint64_t sub_100097FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_1001BEA2C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_100098070(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  return v3(a1, *(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8), *(a1 + *(v4 + 64)), *(a1 + *(v4 + 64) + 8)) & 1;
}

uint64_t sub_100098140(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  return v3(a1, *(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8), *(a1 + *(v4 + 64)), *(a1 + *(v4 + 64) + 8));
}

uint64_t sub_1000981E4(uint64_t a1)
{
  _StringGuts.grow(_:)(21);
  v1._object = 0x8000000100299440;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100098288(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000982F8()
{
  result = qword_10033E578;
  if (!qword_10033E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E578);
  }

  return result;
}

double sub_1000983A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 5 || a2 >> 61 == 2)
  {
  }

  return result;
}

void sub_1000983C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
  }
}

uint64_t sub_100098430()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E598);
  sub_100003078(v0, qword_10033E598);
  return Logger.init(subsystem:category:)();
}

void *sub_1000984B0()
{
  v1 = v0;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E598);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_weakDestroy();

  sub_10002689C(*(v1 + 48), *(v1 + 56));
  return v1;
}

uint64_t sub_1000985B8()
{
  sub_1000984B0();

  return swift_deallocClassInstance();
}

double sub_100098610()
{
  v1 = sub_100035D04(&qword_10033E6E0, &qword_1002747E8);
  v103 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v77 - v2;
  v4 = sub_100035D04(&qword_10033E6E8, &unk_1002747F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - v6;
  v102 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v77 - v8;
  v9 = sub_100035D04(&qword_10033E6F8, &qword_100274800);
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v107 = &v77 - v10;
  v114 = type metadata accessor for Logger();
  v106 = *(v114 - 8);
  v11 = *(v106 + 64);
  __chkstk_darwin(v114);
  v112 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100035D04(&qword_10033E700, &qword_100274808);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v13 = &v77 - v12;
  v113 = type metadata accessor for UUID();
  v14 = *(v113 - 8);
  __chkstk_darwin(v113);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v86 = v11;
  v93 = v13;
  v78 = v3;
  v79 = v1;
  v80 = v7;
  v81 = v5;
  v82 = v4;
  v17 = *(v0 + 24);
  *&v118 = *(v17 + qword_10033E9A0);
  v111 = v0;
  sub_100035D04(&qword_10033E708, &qword_100274810);
  sub_10000E244(&qword_10033E710, &qword_10033E708, &qword_100274810, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v83 = Publisher.eraseToAnyPublisher()();
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v118, "New output (");
  BYTE13(v118) = 0;
  HIWORD(v118) = -5120;
  v110 = v17;
  v18 = *(v14 + 16);
  v98 = v17 + qword_10038B038;
  v19 = v113;
  v97 = v14 + 16;
  v96 = v18;
  (v18)(v16);
  v95 = sub_10009D5A0(&qword_10033E718, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21 = *(v14 + 8);
  v99 = v14 + 8;
  v94 = v21;
  v21(v16, v19);
  v22._countAndFlagsBits = 2112041;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23 = v118;
  v89 = v16;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v24 = v114;
  v25 = sub_100003078(v114, qword_10033E598);
  v91 = v25;
  v26 = static os_log_type_t.info.getter();
  *&v118 = v83;
  v27 = v106;
  v28 = *(v106 + 16);
  v90 = v106 + 16;
  v92 = v28;
  v29 = v112;
  v28(v112, v25, v24);
  v88 = *(v27 + 80);
  v30 = (v88 + 64) & ~v88;
  v87 = v30;
  v31 = &v86[v30];
  v84 = &v86[v30];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v23;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0xE000000000000000;
  v106 = *(v27 + 32);
  (v106)(v32 + v30, v29, v24);
  v31[v32] = v26;
  sub_100035D04(&qword_10033E720, &qword_100274818);
  v86 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033E728, &qword_10033E720, &qword_100274818, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v93;
  Publisher.map<A>(_:)();

  v85 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033E730, &qword_10033E700, &qword_100274808, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v105;
  v35 = Publisher.eraseToAnyPublisher()();

  (*(v104 + 8))(v33, v34);
  *&v118 = v35;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v40 = sub_10013CB44(v39);
  v105 = v40;
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v118 = 0xD000000000000018;
  *(&v118 + 1) = 0x800000010029A570;
  v41 = v89;
  v42 = v113;
  v96(v89, v98, v113);
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v94(v41, v42);
  v44._countAndFlagsBits = 2112041;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45 = v118;
  LOBYTE(v36) = static os_log_type_t.info.getter();
  *&v118 = v40;
  v46 = v112;
  v47 = v114;
  v92(v112, v91, v114);
  v48 = v84;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = v45;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0xE000000000000000;
  (v106)(v49 + v87, v46, v47);
  v48[v49] = v36;
  sub_100035D04(&qword_10033E738, &unk_100274820);
  sub_10000E244(&qword_10033E740, &qword_10033E738, &unk_100274820, v86);
  v50 = v107;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E748, &qword_10033E6F8, &qword_100274800, v85);
  v51 = v109;
  v52 = Publisher.eraseToAnyPublisher()();

  (*(v108 + 8))(v50, v51);
  *&v118 = v52;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v53 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
  v54 = Strong;
  *&v118 = (*(&Strong->isa + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage))[4];
  v55 = sub_100035D04(&qword_100339828, &unk_100270300);
  v56 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v112 = v55;
  v117 = Publisher.eraseToAnyPublisher()();
  v57 = *(&v54->isa + v53);
  __chkstk_darwin(v117);
  *(&v77 - 4) = type metadata accessor for HandoffDevice(0);
  *(&v77 - 3) = v42;
  *(&v77 - 2) = sub_10009D5A0(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v58 = v57 + qword_100346AF8;
  os_unfair_lock_lock((v57 + qword_100346AF8));
  *&v118 = *(v58 + 8);

  swift_getAtKeyPath();

  v59 = v116;
  os_unfair_lock_unlock(v58);

  v60 = *(v59 + 16);
  v114 = v53;
  v109 = v56;
  if (!v60)
  {

    v61 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v61 = sub_100009194(v60, 0);
  v62 = sub_100009A04(&v118, v61 + 4, v60, v59);
  sub_100004F98(v118);
  if (v62 == v60)
  {
LABEL_15:
    *&v118 = v61;
    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_100035D04(&qword_10033BAA0, &unk_100274880);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880, &protocol conformance descriptor for [A]);
    v67 = v100;
    Publisher.prepend<A>(_:)();

    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v68 = v102;
    Publisher<>.sink(receiveValue:)();

    (*(v101 + 8))(v67, v68);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *&v118 = (*(&Strong->isa + v114))[6];
    *&v118 = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *&v118 = sub_100140E18();

    sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
    sub_100035D04(&qword_10033E760, &unk_100274890);
    sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v69 = v78;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E768, &qword_10033E6E0, &qword_1002747E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_10000E244(&qword_10033E770, &qword_10033E760, &unk_100274890, &protocol conformance descriptor for AnyPublisher<A, B>);
    v70 = v80;
    v71 = v79;
    Publisher<>.switchToLatest()();
    (*(v103 + 8))(v69, v71);
    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10033E778, &qword_10033E6E8, &unk_1002747F0, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
    v72 = v82;
    Publisher<>.sink(receiveValue:)();

    (*(v81 + 8))(v70, v72);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000DC458(v73);
    v74 = swift_weakLoadStrong();
    if (v74)
    {

      v75 = [objc_opt_self() processInfo];
      v76 = [v75 processIdentifier];
    }

    else
    {
      v76 = 0;
    }

    LOBYTE(v117) = v74 == 0;
    LODWORD(v118) = v76;
    BYTE4(v118) = v74 == 0;
    v119 = 0x4000;
    sub_1000DBD34(&v118);

    return result;
  }

  __break(1u);
LABEL_7:
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  sub_100003078(v114, qword_10033E598);
  Strong = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(Strong, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, Strong, v63, "### No environment?", v64, 2u);
  }

  v65 = Strong;

  return result;
}

double sub_10009997C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v4 - 8);
  v6 = v157 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v165 = a1[3];
  v10 = a1[5];
  v167 = a1[4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v13 = Strong;
  v158 = v6;
  v159 = v9;
  v160 = v8;
  *&v166 = v7;
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (!v14)
  {
    if (qword_100338EA0 == -1)
    {
LABEL_15:
      v22 = type metadata accessor for Logger();
      sub_100003078(v22, qword_10033E598);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "### No environment?", v25, 2u);
      }

      return result;
    }

LABEL_74:
    swift_once();
    goto LABEL_15;
  }

  v15 = v165;
  if (v165 >> 62)
  {
    if (v165 >> 62 == 1)
    {
      v16 = *(v166 + 16);
      if (v160)
      {
        if (v16)
        {
          if (qword_100338EA0 != -1)
          {
            swift_once();
          }

          v17 = 0;
          while (v17 < *(v166 + 16))
          {
            v18 = type metadata accessor for Logger();
            sub_100003078(v18, qword_10033E598);
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&_mh_execute_header, v19, v20, "### Unsupported command", v21, 2u);
            }

            ++v17;

            if (v16 == v17)
            {
              goto LABEL_146;
            }
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }
      }

      else if (v16)
      {
        if (qword_100338EA0 != -1)
        {
          swift_once();
        }

        v36 = 0;
        while (v36 < *(v166 + 16))
        {
          v37 = type metadata accessor for Logger();
          sub_100003078(v37, qword_10033E598);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "### Unsupported command", v40, 2u);
          }

          ++v36;

          if (v16 == v36)
          {
            goto LABEL_146;
          }
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

LABEL_146:

      return result;
    }

LABEL_21:
    v32 = v159 | v160;
    if (v15 == 0x8000000000000000 && !(v32 | v166 | v167 | v10))
    {
      v33 = swift_weakLoadStrong();
      if (v33)
      {

        v34 = [objc_opt_self() processInfo];
        v35 = [v34 processIdentifier];
      }

      else
      {
        v35 = 0;
      }

      LOBYTE(v168) = v33 == 0;
      LODWORD(v169) = v35;
      BYTE4(v169) = v33 == 0;
      v170 = 0x4000;
      sub_1000DBD34(&v169);
      goto LABEL_146;
    }

    if (v15 == 0x8000000000000000 && v166 == 1 && !(v32 | v167 | v10))
    {
      if (qword_100338EA0 != -1)
      {
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      sub_100003078(v153, qword_10033E598);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&_mh_execute_header, v154, v155, "### Received 'kill' message, exiting...", v156, 2u);
      }

      exit(0);
    }

    if (qword_1003390F0 == -1)
    {
LABEL_38:
      if (qword_10038B2F0)
      {
        sub_100170DEC();
      }

      goto LABEL_146;
    }

LABEL_148:
    swift_once();
    goto LABEL_38;
  }

  v157[0] = v13;
  v157[1] = v14;
  v26 = *(v14 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  __chkstk_darwin(v14);
  v157[-4] = type metadata accessor for HandoffDevice(0);
  v157[-3] = type metadata accessor for UUID();
  v157[-2] = sub_10009D5A0(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v27 = v26 + qword_100346AF8;
  os_unfair_lock_lock(v27);
  *&v169 = *(v27 + 8);

  swift_getAtKeyPath();

  v28 = v168;
  os_unfair_lock_unlock(v27);

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_100009194(*(v28 + 16), 0);
    v31 = sub_100009A04(&v169, (v30 + 32), v29, v28);
    sub_100004F98(v169);
    if (v31 != v29)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  *&v169 = _swiftEmptyArrayStorage;
  if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
    if (v41)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v41 = *(v30 + 16);
    if (v41)
    {
LABEL_44:
      v42 = 0;
      v43 = v30 & 0xC000000000000001;
      *&v164 = v30;
      v163 = v41;
      v162 = v30 & 0xC000000000000001;
      v161 = v30 + 32;
      while (1)
      {
        if (v43)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v44 = __OFADD__(v42++, 1);
          if (v44)
          {
LABEL_65:
            __break(1u);
LABEL_66:
            v59 = v169;
            goto LABEL_77;
          }
        }

        else
        {
          if (v42 >= *(v30 + 16))
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v44 = __OFADD__(v42++, 1);
          if (v44)
          {
            goto LABEL_65;
          }
        }

        UUID.uuidString.getter();
        v45._countAndFlagsBits = v167;
        v45._object = v10;
        v46 = String.hasPrefix(_:)(v45);

        if (!v46)
        {
          v47 = v10;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v50 = sub_1000BCFD0(v48, v49);

          v51 = 1 << *(v50 + 32);
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          else
          {
            v52 = -1;
          }

          v53 = v52 & v50[7];
          v54 = (v51 + 63) >> 6;

          v55 = 0;
          while (v53)
          {
LABEL_59:
            v53 &= v53 - 1;

            v57._countAndFlagsBits = v167;
            v57._object = v47;
            v58 = String.hasPrefix(_:)(v57);

            if (v58)
            {

              v10 = v47;
              v30 = v164;
              v41 = v163;
              v43 = v162;
              goto LABEL_45;
            }
          }

          while (1)
          {
            v56 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              __break(1u);
              goto LABEL_71;
            }

            if (v56 >= v54)
            {
              break;
            }

            v53 = v50[v56 + 7];
            ++v55;
            if (v53)
            {
              v55 = v56;
              goto LABEL_59;
            }
          }

          v10 = v47;
          v30 = v164;
          v41 = v163;
          v43 = v162;
          if (v42 != v163)
          {
            continue;
          }

          goto LABEL_66;
        }

LABEL_45:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v42 == v41)
        {
          goto LABEL_66;
        }
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_77:

  v60 = v59 < 0 || (v59 & 0x4000000000000000) != 0;
  if (!v60)
  {
    if (*(v59 + 16))
    {
      goto LABEL_82;
    }

LABEL_87:

    if (qword_100338EA0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100003078(v63, qword_10033E598);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v169 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100017494(v167, v10, &v169);
      _os_log_impl(&_mh_execute_header, v64, v65, "### Error: no device for id: %s", v66, 0xCu);
      sub_10000903C(v67);
    }

    goto LABEL_109;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_87;
  }

LABEL_82:
  if ((v59 & 0xC000000000000001) != 0)
  {
    v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v60)
    {
LABEL_85:
      v62 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_94;
    }
  }

  else
  {
    if (!*(v59 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v61 = *(v59 + 32);

    if (v60)
    {
      goto LABEL_85;
    }
  }

  v62 = *(v59 + 16);
LABEL_94:

  if (v62 != 1)
  {
    if (qword_100338EA0 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_100003078(v94, qword_10033E598);

    v64 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v64, v95))
    {
      goto LABEL_108;
    }

    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v169 = v97;
    *v96 = 136315138;
    *(v96 + 4) = sub_100017494(v167, v10, &v169);
    _os_log_impl(&_mh_execute_header, v64, v95, "### Error: multiple devices for id: %s", v96, 0xCu);
    sub_10000903C(v97);

    goto LABEL_107;
  }

  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_100003078(v68, qword_10033E598);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *&v169 = swift_slowAlloc();
    *v71 = 136315394;
    *(v71 + 4) = sub_100017494(v167, v10, &v169);
    *(v71 + 12) = 2080;

    v73 = sub_1001EE1E4(v72);
    v75 = v74;

    v76 = sub_100017494(v73, v75, &v169);

    *(v71 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "Found device for id %s: %s", v71, 0x16u);
    swift_arrayDestroy();
  }

  if (v165)
  {

    v77 = v166;
    v78 = v160;
    v79 = v159;
    sub_10009D4F0(v166, v160, v159, 1);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    sub_10009D548(v77, v78, v79, 1);
    v82 = os_log_type_enabled(v80, v81);
    v167 = v61;
    if (v78)
    {
      if (v82)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&v169 = v84;
        *v83 = 136315394;
        v86 = sub_1000092A0(v84, v85);
        v88 = sub_100017494(v86, v87, &v169);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2080;
        v89 = v166;
        v168 = v166;

        v90 = String.init<A>(describing:)();
        v92 = sub_100017494(v90, v91, &v169);

        *(v83 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v80, v81, "Unsetting overrides for %s: %s", v83, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v89 = v166;
      }

      v124 = *(v89 + 16);
      if (!v124)
      {

        goto LABEL_146;
      }

      v125 = (v89 + 32);
      *&v93 = 136315138;
      v166 = v93;
      do
      {
        if (((*v125 | (*(v125 + 4) << 32)) & 0x8000000000000000) != 0)
        {

          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            *&v169 = v133;
            *v132 = v166;
            *(v132 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A590, &v169);
            _os_log_impl(&_mh_execute_header, v130, v131, "%s", v132, 0xCu);
            sub_10000903C(v133);
          }

          LOBYTE(v169) = 6;
        }

        else
        {

          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *&v169 = v129;
            *v128 = v166;
            *(v128 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A590, &v169);
            _os_log_impl(&_mh_execute_header, v126, v127, "%s", v128, 0xCu);
            sub_10000903C(v129);
          }

          LODWORD(v169) = 0;
          WORD2(v169) = 256;
        }

        CurrentValueSubject.send(_:)();

        v125 += 2;
        --v124;
      }

      while (v124);
    }

    else
    {
      if (v82)
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *&v169 = v112;
        *v111 = 136315394;
        v114 = sub_1000092A0(v112, v113);
        v116 = sub_100017494(v114, v115, &v169);

        *(v111 + 4) = v116;
        *(v111 + 12) = 2080;
        v117 = v166;
        v168 = v166;

        v118 = String.init<A>(describing:)();
        v120 = sub_100017494(v118, v119, &v169);

        *(v111 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v80, v81, "Setting overrides for %s: %s", v111, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v117 = v166;
      }

      v134 = *(v117 + 16);
      if (v134)
      {
        v163 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region;
        v135 = (v117 + 32);
        v165 = "unsetOverrideValue()";
        *&v121 = 136315394;
        v164 = v121;
        do
        {
          v136 = *v135 | (*(v135 + 4) << 32);
          if ((v136 & 0x8000000000) != 0)
          {

            v144 = Logger.logObject.getter();
            v145 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              *&v169 = swift_slowAlloc();
              *v146 = v164;
              *(v146 + 4) = sub_100017494(0xD000000000000014, v165 | 0x8000000000000000, &v169);
              *(v146 + 12) = 2080;
              LOBYTE(v168) = v136;
              sub_100035D04(&qword_100339988, &qword_100272B60);
              v147 = String.init<A>(describing:)();
              v149 = sub_100017494(v147, v148, &v169);

              *(v146 + 14) = v149;
              _os_log_impl(&_mh_execute_header, v144, v145, "%s: %s", v146, 0x16u);
              swift_arrayDestroy();
            }

            LOBYTE(v169) = v136;
          }

          else
          {

            v137 = Logger.logObject.getter();
            v138 = static os_log_type_t.default.getter();
            v139 = HIDWORD(v136) & 1;
            if (os_log_type_enabled(v137, v138))
            {
              v140 = swift_slowAlloc();
              *&v166 = swift_slowAlloc();
              *&v169 = v166;
              *v140 = v164;
              *(v140 + 4) = sub_100017494(0xD000000000000014, v165 | 0x8000000000000000, &v169);
              *(v140 + 12) = 2080;
              LODWORD(v168) = v136;
              BYTE4(v168) = BYTE4(v136) & 1;
              sub_100035D04(&unk_10034B5D0, &unk_100289850);
              v141 = String.init<A>(describing:)();
              v143 = sub_100017494(v141, v142, &v169);
              v139 = HIDWORD(v136) & 1;

              *(v140 + 14) = v143;
              _os_log_impl(&_mh_execute_header, v137, v138, "%s: %s", v140, 0x16u);
              swift_arrayDestroy();
            }

            WORD2(v169) = v139;
            LODWORD(v169) = v136;
          }

          CurrentValueSubject.send(_:)();

          v135 += 2;
          --v134;
        }

        while (v134);
      }
    }

    return result;
  }

  v98 = v166;
  v99 = v160;
  v100 = sub_10009D534(v166, v160);
  v102 = sub_100070D94(v100, v101);
  if (!v102)
  {

    sub_10009D58C(v98, v99);
    v64 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v64, v122))
    {
      goto LABEL_108;
    }

    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v64, v122, "### Error: no rpCLDevice", v123, 2u);
LABEL_107:

LABEL_108:

LABEL_109:

    return result;
  }

  v103 = v102;
  v104 = sub_100142E20()[4];
  v105 = v104;

  if (v104)
  {
    v106 = sub_10009D5A0(&qword_10033E808, type metadata accessor for RapportProxy, &unk_100296888);
    v107 = type metadata accessor for TaskPriority();
    v108 = v158;
    (*(*(v107 - 8) + 56))(v158, 1, 1, v107);
    v109 = swift_allocObject();
    v109[2] = 0;
    v109[3] = 0;
    v110 = v160;
    v109[4] = v166;
    v109[5] = v110;
    v109[6] = v159;
    v109[7] = v105;
    v109[8] = v106;
    v109[9] = v103;
    sub_100240220(0, 0, v108, &unk_100274978, v109);

    goto LABEL_146;
  }

  sub_10009D58C(v166, v160);
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&_mh_execute_header, v150, v151, "### Error: no remoteTransportLink", v152, 2u);
  }

  return result;
}

uint64_t sub_10009B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a7;
  v7[13] = v9;
  v7[10] = a5;
  v7[11] = a6;
  v7[9] = a4;
  return (_swift_task_switch)(sub_10009B2FC, 0, 0);
}

uint64_t sub_10009B2FC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v0[5] = &type metadata for LaunchAppRequest;
  v0[6] = &off_100311D20;
  v6 = swift_allocObject();
  v0[2] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = 0;
  v6[5] = v4;
  sub_10009D534(v5, v3);

  v7 = swift_task_alloc();
  v0[14] = v7;
  v7[2] = v2;
  v7[3] = v0 + 2;
  v7[4] = v1;
  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = sub_100035D04(&qword_10033E810, &unk_100274980);
  *v8 = v0;
  v8[1] = sub_10009B464;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000012, 0x800000010029A5D0, sub_10009D7C8, v7, v9);
}

uint64_t sub_10009B464()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10009B5F0;
  }

  else
  {

    v2 = sub_10009B580;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10009B580()
{

  sub_10000903C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009B5F0()
{

  sub_10000903C((v0 + 16));
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033E598);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### LaunchAppRequest failed: %@", v4, 0xCu);
    sub_1000097E8(v5, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_10009B7A4(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 48);
      v4 = *(Strong + 56);
      sub_10009D4E0(v3, v4);

      if (v3)
      {
        v3(v5);
        sub_10002689C(v3, v4);
      }
    }
  }
}

double sub_10009B838(uint64_t *a1, uint64_t a2)
{
  v32 = sub_100035D04(&qword_10033E7E0, &qword_100274930);
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v25 - v4;
  v5 = sub_100035D04(&qword_10033E7E8, &qword_100274938);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_100035D04(&qword_10033D6F8, &unk_100274940);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v25 - v10;
  v11 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10009BEFC(&v37);
    v36[0] = v40;
    v44[0] = v37;
    v44[1] = v38;
    v45 = v39 | (v41 << 40) | (v40 << 32);
    v46 = -16384;
    sub_1000DBD34(v44);

    v43 = v37;
    sub_100056F28(&v43);
    v42 = v38;
    sub_1000097E8(&v42, &qword_10033A238, &qword_10027D3E0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v28 = UUID.uuidString.getter();
    v27 = v15;
    v34[0] = *(v11 + 24);

    v25 = v8;
    sub_100035D04(&qword_10033D400, &unk_100274950);
    v26 = v9;
    sub_10000E244(&qword_10033D780, &qword_10033D400, &unk_100274950, &unk_10027C688);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E7F0, &qword_10033E7E8, &qword_100274938, &protocol conformance descriptor for Publishers.Map<A, B>);
    v16 = Publisher.eraseToAnyPublisher()();

    (*(v29 + 8))(v7, v5);
    v34[0] = v16;
    v35 = *(v11 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

    sub_100035D04(&qword_10033D408, &qword_100273060);
    sub_10000E244(&qword_10033D748, &qword_10033D408, &qword_100273060, &unk_10027C688);
    v17 = v30;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E7F8, &qword_10033E7E0, &qword_100274930, &protocol conformance descriptor for Publishers.Map<A, B>);
    v18 = v32;
    v19 = Publisher.eraseToAnyPublisher()();

    (*(v31 + 8))(v17, v18);
    v35 = v19;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
    v20 = v33;
    Publishers.Merge.init(_:_:)();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = v11;
    sub_10000E244(&qword_10033D720, &qword_10033D6F8, &unk_100274940, &protocol conformance descriptor for Publishers.Merge<A, B>);

    v22 = v25;
    v23 = Publisher<>.sink(receiveValue:)();

    (*(v26 + 8))(v20, v22);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v14 + 40);
    *(v14 + 40) = 0x8000000000000000;
    sub_10004D1EC(v23, v28, v27, isUniquelyReferenced_nonNull_native);

    *(v14 + 40) = v35;
    swift_endAccess();
  }

  return result;
}

void sub_10009BEFC(uint64_t a2@<X8>)
{
  v3 = UUID.uuidString.getter();
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = sub_10000C868();
  v8 = v7;

  CurrentValueSubject.value.getter();
  if (v16)
  {
    CurrentValueSubject.value.getter();

    v9 = v12;
    v10 = v13;
  }

  else
  {
    v9 = v14;

    v10 = v15 & 1;
  }

  CurrentValueSubject.value.getter();
  v11 = v12;
  if (v12 == 6)
  {
    CurrentValueSubject.value.getter();

    v11 = v14;
  }

  else
  {
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 36) = v10;
  *(a2 + 37) = v11;
}

uint64_t sub_10009C078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10009BEFC(&v3);
    v10[0] = v3;
    v10[1] = v4;
    v11 = v5 | (v7 << 40) | (v6 << 32);
    v12 = -16384;
    sub_1000DBD34(v10);

    v9 = v3;
    sub_100056F28(&v9);
    v8 = v4;
    return sub_1000097E8(&v8, &qword_10033A238, &qword_10027D3E0);
  }

  return result;
}

uint64_t sub_10009C168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *&v8 = UUID.uuidString.getter();
    *(&v8 + 1) = v2;
    v9 = -16128;
    sub_1000DBD34(&v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = UUID.uuidString.getter();
    v6 = v5;
    swift_beginAccess();
    v7 = sub_1001D0A1C(v4, v6);
    swift_endAccess();
    sub_10009D4C8(v7);
  }

  return result;
}

uint64_t sub_10009C29C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v68 = a3;
  v64 = sub_100035D04(&qword_10033E440, &qword_100274658);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v47 - v4;
  v65 = sub_100035D04(&qword_10033E780, &qword_1002748A0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v47 - v5;
  v52 = sub_100035D04(&qword_10033E788, &qword_1002748A8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v47 - v6;
  v7 = sub_100035D04(&qword_10033E790, &qword_1002748B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v48 = sub_100035D04(&qword_10033E798, &qword_1002748B8);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v12 = &v47 - v11;
  v13 = sub_100035D04(&qword_10033E7A0, &qword_1002748C0);
  v55 = *(v13 - 8);
  v56 = v13;
  __chkstk_darwin(v13);
  v53 = &v47 - v14;
  v15 = sub_100035D04(&qword_10033E7A8, &qword_1002748C8);
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v54 = &v47 - v16;
  v17 = sub_100035D04(&qword_10033E7B0, &unk_1002748D0);
  v66 = *(v17 - 8);
  v67 = v17;
  __chkstk_darwin(v17);
  v69 = &v47 - v18;
  v19 = *a1;
  if (*a1)
  {
    v20 = UUID.uuidString.getter();
    v22 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = sub_10000C868();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v20 = 0;
    v22 = 0;
  }

  v71[0] = v20;
  v71[1] = v22;
  v71[2] = v23;
  v72 = v25;
  LOBYTE(v73) = 0;
  v26 = v69;
  Just.init(_:)();
  if (v19)
  {

    sub_10008D40C(v71);
    v27 = v72;
    v28 = v73;
    sub_10000EBC0(v71, v72);
    v29 = (*(v28 + 32))(v27, v28);
    sub_10000903C(v71);
    v71[0] = v29;
    sub_100035D04(&qword_10033B590, &qword_100272048);
    sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E7B8, &qword_10033E7B0, &unk_1002748D0, &protocol conformance descriptor for Just<A>);
    sub_10000E244(&qword_10033E7C0, &qword_10033E790, &qword_1002748B0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v30 = v67;
    Publisher.merge<A>(with:)();
    (*(v8 + 8))(v10, v7);
    sub_10008D40C(v71);
    v31 = v72;
    v32 = v73;
    sub_10000EBC0(v71, v72);
    v70 = (*(v32 + 40))(v31, v32);
    sub_100035D04(&qword_10033B508, &qword_1002744C0);
    sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v33 = v50;
    Publisher.map<A>(_:)();

    sub_10000903C(v71);
    sub_10000E244(&qword_10033E7C8, &qword_10033E788, &qword_1002748A8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v34 = v53;
    v35 = v48;
    v36 = v52;
    Publishers.Merge.merge<A>(with:)();
    (*(v51 + 8))(v33, v36);
    (*(v49 + 8))(v12, v35);
    v71[0] = sub_1001410D0();

    sub_100035D04(&qword_10033B480, &qword_100271FA0);
    sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v37 = v60;
    Publisher.filter(_:)();

    sub_10000E244(&qword_10033E518, &qword_10033E440, &qword_100274658, &protocol conformance descriptor for Publishers.Filter<A>);
    v38 = v61;
    v39 = v64;
    Publisher.map<A>(_:)();
    (*(v62 + 8))(v37, v39);
    sub_10000E244(&qword_10033E7D0, &qword_10033E780, &qword_1002748A0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v40 = v54;
    v41 = v56;
    v42 = v65;
    Publishers.Merge3.merge<A>(with:)();
    (*(v63 + 8))(v38, v42);
    (*(v55 + 8))(v34, v41);
    sub_10000E244(&qword_10033E7D8, &qword_10033E7A8, &qword_1002748C8, &protocol conformance descriptor for Publishers.Merge4<A, B, C, D>);
    v43 = v58;
    v44 = Publisher.eraseToAnyPublisher()();

    v45 = v43;
    v26 = v69;
    (*(v57 + 8))(v40, v45);
  }

  else
  {
    sub_10000E244(&qword_10033E7B8, &qword_10033E7B0, &unk_1002748D0, &protocol conformance descriptor for Just<A>);
    v30 = v67;
    v44 = Publisher.eraseToAnyPublisher()();
  }

  result = (*(v66 + 8))(v26, v30);
  *v68 = v44;
  return result;
}

uint64_t sub_10009CD34@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100243CA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

unint64_t sub_10009CD6C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100244CC4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_10009CDA4(uint64_t a1)
{
  v1 = (a1 + *(sub_100035D04(&unk_10034C700, &qword_100273D30) + 48));
  v2 = *v1;
  v3 = v1[1];
  if (v2 == UUID.uuidString.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_10009CE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_10009D458(a1, &v11 - v5);

  v7 = sub_100243F84();
  v9 = v8;
  result = sub_10007E6BC(v6);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  return result;
}

double sub_10009CF18(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v6[0] = v5;
    v6[1] = v4;
    v7 = v2;
    v8 = 0x8000;
    sub_1000DBD34(v6);
  }

  return result;
}

uint64_t sub_10009CFB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ProxControlDemoBridgeServer();
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

double sub_10009CFF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100035D04(&qword_10033E818, qword_100274990);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  (*(v9 + 16))(&v18 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = a3[3];
  v15 = a3[4];
  v16 = sub_10000EBC0(a3, v14);
  sub_100253174(v16, a4, sub_10009D7D4, v13, a2, v14, v15);

  return result;
}

void *sub_10009D168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v2[4] = &_swiftEmptySetSingleton;
  v2[5] = _swiftEmptyDictionarySingleton;
  v2[6] = 0;
  v2[7] = 0;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033E598);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Init", v8, 2u);
  }

  swift_weakAssign();
  v3[3] = a2;

  sub_100098610();
  return v3;
}

uint64_t sub_10009D29C@<X0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64));
  v12 = a1[1];
  v17[0] = *a1;
  v17[1] = v12;
  v17[2] = a1[2];
  sub_1001CD050(v17, v6, v7, v8, v9, v10, v16, v11);
  v13 = v16[1];
  *a2 = v16[0];
  a2[1] = v13;
  a2[2] = v16[2];
  return sub_10009D868(v16, v15);
}

uint64_t sub_10009D37C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BF964(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

uint64_t sub_10009D458(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10009D4C8(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_10009D4E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10009D4F0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_10009D534(a1, a2);
  }
}

uint64_t sub_10009D534(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_10009D548(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_10009D58C(a1, a2);
  }
}

uint64_t sub_10009D58C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_10009D5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009D5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009D6D4;

  return sub_10009B2CC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10009D6D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009D7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100035D04(&qword_10033E818, qword_100274990);

  return sub_1000F39D4(a1, a2, a3);
}

uint64_t sub_10009D8C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E820);
  sub_100003078(v0, qword_10033E820);
  return Logger.init(subsystem:category:)();
}

id sub_10009D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle] = 0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033E820);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Init", v16, 2u);
  }

  v17 = &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_viewControllerClassName];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_10009E1B0(a3, &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_context]);
  v18 = &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  *v18 = a4;
  *(v18 + 1) = a5;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "init");
  sub_10009E220(a3);
  return v19;
}

id sub_10009DAC4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  sub_10009DBD8();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_10009DBD8()
{
  v1 = v0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating...", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

void sub_10009DD84()
{
  v2 = v0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activating...", v6, 2u);
  }

  v7 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithServiceName:v8 viewControllerClassName:v9];

  v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_10009E1B0(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_context, v18);
  v12 = v19;
  if (v19)
  {
    v13 = v20;
    sub_10000EBC0(v18, v19);
    sub_1000EF198(v11, v12, v13);
    if (v1)
    {

      sub_10000903C(v18);
      return;
    }

    sub_10000903C(v18);
  }

  else
  {
    sub_10009E220(v18);
  }

  v14 = [objc_opt_self() newHandleWithDefinition:v10 configurationContext:v11];
  [v14 registerObserver:v2];
  v15 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle) = v14;
  v16 = v14;

  v17 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v16 activateWithContext:v17];
  (*(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler))(1);
}

uint64_t sub_10009E1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10033E8E0, qword_1002749D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E220(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10033E8E0, qword_1002749D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E298()
{
  v1 = 0x7373696D736964;
  if (*v0 != 1)
  {
    v1 = 7368560;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6573657270;
  }
}

unint64_t sub_10009E2F0()
{
  result = qword_10033E8F0;
  if (!qword_10033E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E8F0);
  }

  return result;
}

uint64_t sub_10009E34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 321))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_10009E3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_10009E464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = sub_100035D04(&qword_10033E910, &qword_100274B40);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  __chkstk_darwin(v3);
  v48 = &v41 - v5;
  v6 = sub_100035D04(&qword_10033D6F0, &unk_100273460);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v45 = &v41 - v8;
  v9 = sub_100035D04(&qword_10033E918, &qword_100274B48);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = sub_100035D04(&qword_10033E920, &qword_100274B50);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v53 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v41 - v16;
  v17 = sub_100035D04(&qword_10033E930, &qword_100274B58);
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  __chkstk_darwin(v17);
  v50 = &v41 - v19;
  sub_100035D04(&qword_10034A390, &qword_100287650);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100274B30;
  v58 = sub_1001EF03C();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v41 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E938, &qword_10033E920, &qword_100274B50, &protocol conformance descriptor for Publishers.Map<A, B>);
  v21 = Publisher.eraseToAnyPublisher()();

  (*(v13 + 8))(v15, v12);
  *(v20 + 32) = v21;
  v22 = a1;
  v58 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__handoffTargetStatus);

  sub_100035D04(&qword_10033D410, &unk_100273068);
  sub_10000E244(&qword_10033E940, &qword_10033D410, &unk_100273068, &unk_10027C688);
  v23 = v42;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E948, &qword_10033E918, &qword_100274B48, &protocol conformance descriptor for Publishers.Map<A, B>);
  v24 = v43;
  v25 = Publisher.eraseToAnyPublisher()();

  (*(v44 + 8))(v23, v24);
  *(v20 + 40) = v25;
  v26 = v22;
  v58 = sub_100070630();
  sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  v27 = v41;
  sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, v41);
  v28 = v45;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033D710, &qword_10033D6F0, &unk_100273460, &protocol conformance descriptor for Publishers.Map<A, B>);
  v29 = v46;
  v30 = Publisher.eraseToAnyPublisher()();

  (*(v47 + 8))(v28, v29);
  *(v20 + 48) = v30;
  v58 = sub_10007005C();
  sub_100035D04(&qword_10033E2E8, &qword_100274558);
  sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558, v27);
  v31 = v48;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E950, &qword_10033E910, &qword_100274B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v51;
  v33 = Publisher.eraseToAnyPublisher()();

  (*(v52 + 8))(v31, v32);
  *(v20 + 56) = v33;
  v58 = *(v26 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_transferrableActivityPublisherKicker);
  sub_100035D04(&qword_10034C750, &unk_100287670);
  sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670, &protocol conformance descriptor for PassthroughSubject<A, B>);
  *(v20 + 64) = Publisher.eraseToAnyPublisher()();
  v58 = v20;
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_100035D04(&qword_10033E958, &qword_100274B60);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, v27);
  sub_10000E244(&qword_10033E960, &qword_10033E958, &qword_100274B60, &protocol conformance descriptor for [A]);
  v34 = v49;
  Publishers.MergeMany.init<A>(_:)();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000A02C8;
  *(v35 + 24) = v26;

  sub_100035D04(&qword_10033E968, &qword_100274B68);
  sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v36 = v50;
  v37 = v53;
  Publisher.map<A>(_:)();

  (*(v56 + 8))(v34, v37);
  sub_10000E244(&qword_10033E970, &qword_10033E930, &qword_100274B58, &protocol conformance descriptor for Publishers.Map<A, B>);
  v38 = v54;
  v39 = Publisher.eraseToAnyPublisher()();
  result = (*(v55 + 8))(v36, v38);
  *v57 = v39;
  return result;
}

uint64_t sub_10009EDF8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B018);
  sub_100003078(v0, qword_10038B018);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10009EE7C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E8F8);
  v1 = sub_100003078(v0, qword_10033E8F8);
  if (qword_100338EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B018);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  while (1)
  {
    if (!v5)
    {
      return 0;
    }

    if ((*v6 & 1) == 0)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v6;
    --v5;
    if (v7)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  CurrentValueSubject.value.getter();
  v8 = v18;
  if (v18 == 1)
  {
    CurrentValueSubject.value.getter();

    v8 = v19;
    if (!v19)
    {
      return v8;
    }

LABEL_12:
    if ([v8 isVideo])
    {
      goto LABEL_27;
    }

    CurrentValueSubject.value.getter();
    v9 = v18;
    if (v18 == 1)
    {
      CurrentValueSubject.value.getter();

      v9 = v19;
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v10 = sub_100107F20(v9);

    if (v10)
    {
LABEL_23:

      return v8;
    }

LABEL_18:
    if (qword_100339180 != -1)
    {
      swift_once();
    }

    v11 = qword_10038B4E8;
    v12 = sub_1001CB464(a3);
    if (v12)
    {
      v13 = v12;
      v14 = [*&v11[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter] neighborhoodActivityConduit];
      v15 = [v14 activeSplitSessionTV];

      if (v15)
      {
        v16 = [v15 isEquivalentToDeviceHandle:v13];

        if (v16)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

LABEL_26:
    if ([v8 hostedOnCurrentDevice])
    {
      return v8;
    }

LABEL_27:

    return 0;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  return v8;
}

char *sub_10009F1DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity);
  v4 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v5 = qword_100338EB8;
  v77 = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer) + 24);

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003078(v6, qword_10033E8F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v74 = v7;
    v10 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v10 = 136315906;
    v11 = sub_100017494(0xD00000000000002BLL, 0x800000010029A790, v78);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, v78);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = sub_1001F129C();
    v18 = sub_100017494(v16, v17, v78);

    *(v10 + 24) = v18;
    *(v10 + 32) = 2080;
    v19 = sub_1001F129C();
    v21 = sub_100017494(v19, v20, v78);

    *(v10 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %s, local=%s, remote=%s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  if (v77 && *(*&v77[OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state] + 40) <= 1uLL)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v79 = v25;
      *v24 = 136315138;
      v78[3] = type metadata accessor for HandoffTransfer(0);
      v78[0] = v77;

      v26 = sub_100057A5C(v78);
      v28 = v27;
      sub_10000903C(v78);
      v29 = sub_100017494(v26, v28, &v79);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Existing active transfer: %s", v24, 0xCu);
      sub_10000903C(v25);
    }

    goto LABEL_24;
  }

  v30 = *(a2 + 16);
  v31 = (a2 + 32);
  v32 = 1;
  while (1)
  {
    if (!v30)
    {
      goto LABEL_28;
    }

    if (*v31 == 1)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v31;
    --v30;
    if (v33)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  CurrentValueSubject.value.getter();
  v30 = v79;
  if (v79 == 1)
  {
    CurrentValueSubject.value.getter();

    v30 = v78[0];
    if (!v78[0])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (!v30)
    {
LABEL_27:
      v32 = 1;
      goto LABEL_28;
    }
  }

  v34 = [v30 direction];
  if (!v34)
  {
LABEL_26:

    v30 = 0;
    goto LABEL_27;
  }

  if (v34 != 1)
  {
    if (v34 == 2)
    {

      v32 = a1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v32 = 0;
LABEL_28:
  v36 = sub_10009EF44(a2, v3, a1, v4);
  v35 = v36;
  v76 = v37;
  v39 = v38;
  if (v38 == 1)
  {
    if (v32 == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v51 = qword_100338F70;
  v52 = v36;

  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_1000E9168(0xD000000000000017, 0x800000010029A770);

  if (v53 || (v54 = [v52 bundleIdentifier], v55 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v57 = v56, v54, , LOBYTE(v55) = sub_1000E9168(v55, v57), , , (v55 & 1) != 0))
  {
    sub_100077374(v35, v76, v39);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Active call app is local foreground! Returning call", v60, 2u);
    }

    goto LABEL_44;
  }

  if (v32 != 1)
  {
LABEL_30:

    v40 = v30;
    v41 = [v40 bundleIdentifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (qword_100338F70 != -1)
    {
      swift_once();
    }

    v45 = sub_1000E9168(v42, v44);

    if (v45)
    {
      sub_100077374(v30, 0, v32);
      v22 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v22, v46, "Active media app is local foreground! Returning media", v47, 2u);
      }

      v48 = v35;
      v49 = v76;
      v50 = v39;
      goto LABEL_36;
    }
  }

LABEL_47:
  if (v39 != 1)
  {
    v58 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v58, v67, "Active call exists!", v68, 2u);
    }

LABEL_44:

    sub_100077374(v30, 0, v32);

    return v35;
  }

  CurrentValueSubject.value.getter();
  v61 = v79;
  if (v79 == 1)
  {
    CurrentValueSubject.value.getter();

    v61 = v78[0];
    v62 = v76;
    if (v78[0])
    {
      goto LABEL_50;
    }

LABEL_56:
    v22 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v70 = os_log_type_enabled(v22, v69);
    if (v32 != 1)
    {
      if (!v70)
      {

        return v30;
      }

      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v22, v69, "Active media exists!", v73, 2u);

      v48 = v35;
      v49 = v62;
      v50 = 1;
LABEL_36:
      sub_100077374(v48, v49, v50);

      return v30;
    }

    if (!v70)
    {

      return 0;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v22, v69, "No transferrable content.", v71, 2u);

    sub_100077374(v35, v62, 1);
    v65 = v30;
    v66 = 1;
LABEL_59:
    sub_100077374(v65, 0, v66);

    return 0;
  }

  v62 = v76;
  if (!v61)
  {
    goto LABEL_56;
  }

LABEL_50:

  v22 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v22, v63, "Active call can't be transferred. Returning nil", v64, 2u);

    sub_100077374(v35, v62, 1);
    v65 = v30;
    v66 = v32;
    goto LABEL_59;
  }

  sub_100077374(v30, 0, v32);
LABEL_24:

  return 0;
}

uint64_t sub_10009FCD4(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return 0x6964656D20746F4ELL;
  }

  v5 = a1;
  if ([v5 direction] != 1)
  {

    return 0x6873757020746F4ELL;
  }

  [v5 playbackState];
  if (!MRMediaRemotePlaybackStateIsAdvancing())
  {

    return 0x6176646120746F4ELL;
  }

  CurrentValueSubject.value.getter();
  v6 = v12;
  if (v12 == 1)
  {
    CurrentValueSubject.value.getter();

    v6 = v13;
    if (v13)
    {
LABEL_7:

      return 0xD000000000000013;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_7;
    }
  }

  v7 = *(*(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [v7 proxDeviceState];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  [v8 playbackState];
  if (MRMediaRemotePlaybackStateIsAdvancing())
  {

    return 0xD000000000000011;
  }

  if ([v9 playbackState])
  {

LABEL_17:
    return 0;
  }

  v10 = [v9 destination];
  v11 = [v10 origin];

  if (!v11)
  {

    return 0xD000000000000056;
  }

  return 0;
}

BOOL sub_10009FF24(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10009FCD4(a1, a2 & 1, a4);
  v9 = v8;
  if (v8)
  {
    v37 = v7;
    if (qword_100338EB8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033E8F8);

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v12, v13))
    {

      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = sub_100017494(v37, v9, &v38);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    v18 = sub_1000092A0(v16, v17);
    v20 = sub_100017494(v18, v19, &v38);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = sub_100078EF8(a1, a2 & 1, a3);
    v23 = sub_100017494(v21, v22, &v38);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Determined policy: Not Automatic: (%s). %s, %s", v14, 0x20u);
    swift_arrayDestroy();

    goto LABEL_10;
  }

  if (qword_100338EB8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_10033E8F8);

  v25 = a1;
  v12 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315394;
    v30 = sub_1000092A0(v28, v29);
    v32 = sub_100017494(v30, v31, &v38);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = sub_100078EF8(a1, a2 & 1, a3);
    v35 = sub_100017494(v33, v34, &v38);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v12, v26, "Determined policy: Automatic! %s, %s", v27, 0x16u);
    swift_arrayDestroy();

LABEL_10:
  }

LABEL_12:

  return v9 == 0;
}

uint64_t sub_1000A02D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1000A030C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 64);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v26 = v1;
    v5 = *(v2 - 1);
    v4 = *v2;
    v6 = *(v2 - 8);
    v7 = *(v2 - 2);
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100271B90;
    v9 = objc_allocWithZone(NIRegionPredicate);

    v10 = String._bridgeToObjectiveC()();
    LODWORD(v11) = v5;
    v12 = [v9 initWithName:v10 regionSizeCategory:0 radius:v7 preferredUpdateRate:v6 requiresUserIntent:v11];

    *(inited + 32) = v12;
    v13 = objc_allocWithZone(NIRegionPredicate);
    v14 = String._bridgeToObjectiveC()();
    LODWORD(v15) = v4;
    v16 = [v13 initWithName:v14 regionSizeCategory:10 radius:v7 preferredUpdateRate:v6 requiresUserIntent:v15];

    *(inited + 40) = v16;

    v17 = v3 >> 62;
    if (v3 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v25 + 2;
      if (__OFADD__(v25, 2))
      {
LABEL_18:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + 2;
      if (__OFADD__(v18, 2))
      {
        goto LABEL_18;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v17)
      {
        v21 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_10:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_11;
    }

    if (v17)
    {
      goto LABEL_10;
    }

LABEL_11:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_12:
    if (((*(v21 + 24) >> 1) - *(v21 + 16)) < 2)
    {
      break;
    }

    sub_1000A0CE0();
    swift_arrayInitWithCopy();

    v22 = *(v21 + 16);
    v23 = __OFADD__(v22, 2);
    v24 = v22 + 2;
    if (v23)
    {
      goto LABEL_22;
    }

    *(v21 + 16) = v24;
    v2 += 14;
    v1 = v26 - 1;
    if (v26 == 1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000A057C()
{
  sub_100035D04(&qword_10033E978, &unk_100274B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B70;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 1592);
  sub_10005FA50();
  v3 = v2;

  v4 = *(qword_10038B0B8 + 1600);
  sub_10005FA50();
  v6 = v5;

  v7 = *(qword_10038B0B8 + 1608);
  sub_10005FA50();
  v9 = v8;

  v51 = 0;
  *(inited + 32) = 0x746F6F7465756C62;
  *(inited + 40) = 0xE900000000000068;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 60) = v3;
  *(inited + 64) = v6;
  *(inited + 68) = v9;
  *(inited + 72) = 256;
  *(inited + 80) = 5;
  v10 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v12 = v11;

  v13 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v15 = v14;

  v16 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v18 = v17;

  v52 = 0;
  *(inited + 88) = 0x6F69746163756465;
  *(inited + 96) = 0xE90000000000006ELL;
  *(inited + 104) = 2;
  *(inited + 112) = 0;
  *(inited + 116) = v12;
  *(inited + 120) = v15;
  *(inited + 124) = v18;
  *(inited + 128) = 0;
  *(inited + 136) = 2;
  v19 = *(qword_10038B0B8 + 1624);
  sub_10005FA50();
  v21 = v20;

  v22 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v24 = v23;

  v25 = *(qword_10038B0B8 + 1640);
  sub_10005FA50();
  v27 = v26;

  v53 = 0;
  *(inited + 144) = 0x65747563657865;
  *(inited + 152) = 0xE700000000000000;
  *(inited + 160) = 2;
  *(inited + 168) = 0;
  *(inited + 172) = v21;
  *(inited + 176) = v24;
  *(inited + 180) = v27;
  *(inited + 184) = 256;
  *(inited + 192) = 6;
  v28 = *(qword_10038B0B8 + 1648);
  sub_10005FA50();
  v30 = v29;

  v31 = *(qword_10038B0B8 + 1656);
  sub_10005FA50();
  v33 = v32;

  v34 = *(qword_10038B0B8 + 1664);
  sub_10005FA50();
  v36 = v35;

  v56 = 0;
  *(inited + 200) = 0x6D726177657270;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = 1;
  *(inited + 224) = 0;
  *(inited + 225) = v57;
  *(inited + 227) = v58;
  *(inited + 228) = v30;
  *(inited + 232) = v33;
  *(inited + 236) = v36;
  *(inited + 240) = 0;
  *(inited + 242) = v54;
  *(inited + 246) = v55;
  *(inited + 248) = 4;
  v37 = *(qword_10038B0B8 + 1672);
  sub_10005FA50();
  v39 = v38;

  v40 = *(qword_10038B0B8 + 1680);
  sub_10005FA50();
  v42 = v41;

  v43 = *(qword_10038B0B8 + 1688);
  sub_10005FA50();
  v45 = v44;

  v61 = 0;
  strcpy((inited + 256), "prewarmInner");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  *(inited + 272) = 2;
  *(inited + 280) = 0;
  *(inited + 281) = v62;
  *(inited + 283) = v63;
  *(inited + 284) = v39;
  *(inited + 288) = v42;
  *(inited + 292) = v45;
  *(inited + 296) = 256;
  *(inited + 298) = v59;
  *(inited + 302) = v60;
  *(inited + 304) = 3;
  sub_1000A0BCC(v49);
  v46 = v49[1];
  *(inited + 312) = v49[0];
  *(inited + 328) = v46;
  *(inited + 344) = v49[2];
  *(inited + 360) = v50;
  v47 = sub_1000A030C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10038B030 = v47;
  return result;
}

uint64_t sub_1000A09A8()
{
  v1 = [v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2 == 0x746F6F7465756C62 && v4 == 0xE900000000000068;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v2 == 0x6D726177657270 && v4 == 0xE700000000000000;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v2 == 0x496D726177657270 ? (v8 = v4 == 0xEC00000072656E6ELL) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      return 1;
    }

    else if (v2 == 0x6F69746163756465 && v4 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    else if (v2 == 0x72656767697274 && v4 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 3;
    }

    else if (v2 == 0x65747563657865 && v4 == 0xE700000000000000)
    {

      return 4;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

void sub_1000A0BCC(uint64_t a1@<X8>)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 904);
  v4 = sub_1000031CC();

  v5 = v2[212];
  sub_10005FA50();
  v7 = v6;

  v8 = v2[213];
  sub_10005FA50();
  v10 = v9;

  v11 = v2[214];
  sub_10005FA50();
  v13 = v12;

  *a1 = 0x72656767697274;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 2;
  *(a1 + 24) = v4 & 1;
  *(a1 + 28) = v7;
  *(a1 + 32) = v10;
  *(a1 + 36) = v13;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

unint64_t sub_1000A0CE0()
{
  result = qword_10033E980;
  if (!qword_10033E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033E980);
  }

  return result;
}

__n128 sub_1000A0D2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A0D48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000A0D90(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1000A0DEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A0E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A0E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1000A0EC0(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000A0F78()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E988);
  sub_100003078(v0, qword_10033E988);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A0FF0()
{
  v1 = 0x657463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_1000A1054@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000A3110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000A107C(uint64_t a1)
{
  v2 = sub_1000A37AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A10B8(uint64_t a1)
{
  v2 = sub_1000A37AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A10F4(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10033EA98, &qword_100274E40);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_100035D04(&qword_10033EAA0, &qword_100274E48);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100035D04(&qword_10033EAA8, &qword_100274E50);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100035D04(&qword_10033EAB0, &unk_100274E58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_1000A37AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1000A3854();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1000A3800();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1000A38A8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1000A1480(uint64_t a1)
{
  v2 = sub_1000A3854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A14BC(uint64_t a1)
{
  v2 = sub_1000A3854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A14F8(uint64_t a1)
{
  v2 = sub_1000A3800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A1534(uint64_t a1)
{
  v2 = sub_1000A3800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1570(uint64_t a1)
{
  v2 = sub_1000A38A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A15AC(uint64_t a1)
{
  v2 = sub_1000A38A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A15E8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000A323C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000A1630()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E988);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000013, 0x800000010029A860, &v20);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = *(v1 + qword_10033E9A8);
  if (v8)
  {
    v9 = *(v1 + qword_10033E9A8);
  }

  else
  {
    v10 = objc_allocWithZone(NSXPCConnection);

    v11 = String._bridgeToObjectiveC()();

    v9 = [v10 initWithMachServiceName:v11 options:0];
  }

  v24 = sub_1000A1A40;
  v25 = 0;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100018AB8;
  v23 = &unk_1003049B8;
  v12 = _Block_copy(&v20);
  v13 = v8;
  [v9 setInterruptionHandler:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v2 + 80);
  *(v15 + 32) = *(v2 + 96);
  *(v15 + 40) = *(v2 + 104);
  *(v15 + 56) = *(v2 + 120);
  *(v15 + 64) = v14;
  v24 = sub_1000A30FC;
  v25 = v15;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100018AB8;
  v23 = &unk_100304A30;
  v16 = _Block_copy(&v20);

  [v9 setInvalidationHandler:v16];
  _Block_release(v16);
  v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP17proximitycontrold15XPCLinkProtocol_];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v9 _setQueue:qword_10038B5B8];
  v18 = v17;
  [v9 setExportedInterface:v18];
  [v9 setExportedObject:v1];
  [v9 setRemoteObjectInterface:v18];

  return v9;
}

void sub_1000A1A40()
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033E988);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### XPC interrupted", v2, 2u);
  }
}

double sub_1000A1B28(uint64_t a1)
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033E988);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC invalidated", v4, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000A1C64(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  sub_1000A1CBC(a1, a2, a3);
  return v6;
}

void *sub_1000A1CBC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  UUID.init()();
  v8 = qword_10033E9A0;
  type metadata accessor for PassthroughSubject();
  *(v3 + v8) = PassthroughSubject.__allocating_init()();
  *(v3 + qword_10033E9B0) = 0;
  v9 = qword_10033E9B8;
  sub_100035D04(&qword_10033EAC0, &unk_100274E70);
  swift_allocObject();
  *(v3 + v9) = PassthroughSubject.init()();
  *(v3 + qword_10033E9C0) = 0;
  *(v3 + qword_10033E9A8) = a1;
  v10 = (v3 + qword_10038B040);
  *v10 = a2;
  v10[1] = a3;
  v11 = qword_100338EC8;
  v12 = a1;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033E988);
  v14 = v12;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = v14;
    v19 = String.init<A>(describing:)();
    v21 = sub_100017494(v19, v20, &v24);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_100017494(a2, a3, &v24);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init: role=%s, machService=%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1000A1F6C()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = qword_10038B038;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_1000A20F0()
{
  sub_1000A1F6C();

  return swift_deallocClassInstance();
}

double sub_1000A2148(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10033E988);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = v5;
    v17 = v8;
    v18 = a2;
    v19 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD000000000000019, 0x800000010029A8B0, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v19);
    a2 = v18;
    v8 = v17;
    v5 = v16;
    v7 = v26;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = *(v4 + 80);
  *(v21 + 32) = *(v4 + 96);
  *(v21 + 40) = *(v4 + 104);
  *(v21 + 56) = *(v4 + 120);
  *(v21 + 64) = v20;
  v22 = v27;
  *(v21 + 72) = v27;
  *(v21 + 80) = a2;
  aBlock[4] = sub_1000A38FC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100304A80;
  v23 = _Block_copy(aBlock);

  sub_10006DA04(v22, a2);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000A3934(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v7, v5);
  (*(v8 + 8))(v10, v28);

  return result;
}

double sub_1000A25DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a3;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Optional();
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = *(a5 - 8);
  v17 = __chkstk_darwin(v13);
  v37 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v23 = sub_100058D2C(a2, v39, a5, a8);
    (*(v16 + 56))(v15, 0, 1, a5, v23);
    (*(v16 + 32))(v20, v15, a5);
    if (qword_100338EC8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003078(v24, qword_10033E988);
    v25 = v37;
    (*(v16 + 16))(v37, v20, a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = v28;
      v39 = swift_slowAlloc();
      v40 = v39;
      *v28 = 136315138;
      v29 = sub_10013FD74(v25, a5);
      v31 = v30;
      v32 = *(v16 + 8);
      v32(v25, a5);
      v33 = sub_100017494(v29, v31, &v40);

      v34 = v36;
      *(v36 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received output: %s", v34, 0xCu);
      sub_10000903C(v39);
    }

    else
    {

      v32 = *(v16 + 8);
      v32(v25, a5);
    }

    PassthroughSubject.send(_:)();
    v32(v20, a5);
  }

  return result;
}