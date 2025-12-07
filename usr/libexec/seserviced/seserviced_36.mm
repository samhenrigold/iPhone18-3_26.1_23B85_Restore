void sub_10030F3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = *(*(v5 + 48) + 2 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_100069E2C(v31, *(&v31 + 1));
      }

      v21 = static Hasher._hash(seed:bytes:count:)();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
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

void sub_10030F668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100068FC4(a3, a4);
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

void sub_10030F904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100068FC4(&qword_10050ABA8, &qword_100415278);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_100317CAC(&unk_10050ABB0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v11 + 56) + 8 * v19) = v27;
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

void sub_10030FCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100068FC4(&qword_10050AB90, &qword_100415268);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      if ((v4 & 1) == 0)
      {
      }

      v22 = static Hasher._hash(seed:_:)();
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

LABEL_35:
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

void sub_10030FF40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100068FC4(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v9 + 48) + 4 * v17) = v22;
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

void sub_1003101AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100068FC4(&qword_100502C80, &qword_100409D60);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100075D50(v21, v32);
      }

      else
      {
        sub_1000754F0(v21, v32);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100317CAC(&qword_10050AB70, type metadata accessor for CFString, &unk_10040979C);
      _CFObject.hash(into:)();
      v23 = Hasher._finalize()();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_100075D50(v32, (*(v7 + 56) + 32 * v15));
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
}

void sub_10031048C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v24 = *(*(v5 + 56) + 2 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
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
      *(*(v7 + 56) + 2 * v15) = v24;
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

void sub_10031072C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100068FC4(&qword_100502C10, &unk_100409CD0);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
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

void sub_1003109EC()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_10050AA38, &qword_1004151D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v18 *= 24;
        v23 = *(v3 + 56) + v18;
        v35 = *v23;
        v24 = *(v23 + 16);
        v25 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        v26 = *(v25 + 56) + v18;
        *v26 = v35;
        *(v26 + 16) = v24;
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

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
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

void sub_100310CB8()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA50, &qword_1004151E8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

void sub_100310F28()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA58, &qword_1004151F0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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
        v23 = *(*(v3 + 56) + 2 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 2 * v18) = v23;
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

void sub_1003111C0()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AA30, &qword_1004151D0);
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

void sub_10031130C()
{
  v1 = v0;
  sub_100068FC4(&unk_100504000, &unk_10040B350);
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
        sub_1000754F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100075D50(v25, (*(v4 + 56) + v22));
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

void sub_1003114D8(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  sub_100068FC4(a1, a2);
  v6 = *v3;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
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
        v22 = *(*(v6 + 48) + 8 * v21);
        sub_1000BC094(*(v6 + 56) + 40 * v21, v23);
        *(*(v8 + 48) + 8 * v21) = v22;
        a3(v23, *(v8 + 56) + 40 * v21);
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
}

void sub_100311678(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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
        v21 = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 48) + 16 * v19) = v21;
        *(*(v6 + 56) + 8 * v19) = v20;
        sub_100069E2C(v21, *(&v21 + 1));
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

void sub_1003117D8()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAE8, &qword_100415240);
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_1000BC094(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_1000BC104(v25, *(v4 + 56) + v22);
        sub_100069E2C(v20, v21);
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

void sub_100311984()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAE0, &qword_100409D10);
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
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(*(v2 + 48) + v18);
        v23 = *(v19 + 8);
        *(*(v4 + 48) + v18) = v21;
        v22 = *(v4 + 56) + v17;
        *v22 = v20;
        *(v22 + 8) = v23;
        sub_100069E2C(v21, *(&v21 + 1));
        sub_100069E2C(v20, v23);
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

void sub_100311B20()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAD8, &qword_100415238);
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
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
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

void sub_100311CA0()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C50, &qword_100409D18);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100069E2C(v19, *(&v19 + 1));
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

void sub_100311E08()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AA48, &qword_1004151E0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        sub_100069E2C(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
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

void sub_100312094()
{
  v1 = v0;
  sub_100068FC4(&qword_1005092B0, qword_100413D00);
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
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

void sub_1003121E0()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAD0, &qword_100415230);
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v20 = *(v4 + 56) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
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

void sub_100312350()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB98, &qword_100415270);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100069E2C(v19, *(&v19 + 1));
        v20 = v18;
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

void sub_1003124BC()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AB60, &qword_100415248);
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

        swift_unknownObjectRetain();
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

void sub_100312654()
{
  v1 = v0;
  sub_100068FC4(&qword_100504758, &qword_10040BB08);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_1003127B4()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AAB0, &qword_100415218);
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
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

void sub_100312924()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AC10, &qword_100415290);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        sub_100092ECC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
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
}

void sub_100312AD8()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB78, &qword_100415250);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
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

void sub_100312C4C()
{
  v1 = v0;
  v35 = type metadata accessor for Date();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_100502D00, &qword_100409DD8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

void sub_100312EE0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_10050ABD0, &unk_100413B50);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
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

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
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

void sub_1003131B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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
        v21 = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 48) + 16 * v19) = v21;
        *(*(v6 + 56) + 8 * v19) = v20;
        sub_100069E2C(v21, *(&v21 + 1));
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

void sub_100313318()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AAC0, &qword_100415220);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_10031347C()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C40, &unk_100409D00);
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
        sub_100092ECC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000754F0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100075D50(v22, (*(v4 + 56) + v17));
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

void sub_100313620()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050AB88, &qword_100415260);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

void sub_1003138B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
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
}

void sub_100313A2C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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

void sub_100313B8C()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C78, &qword_100409D58);
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
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

void sub_100313CD8()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_100069E2C(v18, *(&v18 + 1));
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

void sub_100313E40(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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

void sub_100313FC4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_100068FC4(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_100314238()
{
  v1 = v0;
  sub_100068FC4(&qword_10050AB90, &qword_100415268);
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
}

void sub_1003143A8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
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

void sub_1003144F4()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C80, &qword_100409D60);
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
        sub_1000754F0(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100075D50(v20, (*(v4 + 56) + 32 * v17));
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

void sub_100314674()
{
  v1 = v0;
  sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
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
        LOWORD(v18) = *(*(v2 + 56) + 2 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 2 * v17) = v18;
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

void sub_1003147DC()
{
  v1 = v0;
  sub_100068FC4(&qword_100502C10, &unk_100409CD0);
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

void sub_100314954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v27 = a1;
  v28 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_10008C808(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a5 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v21 >= v19 && (a5 & 1) == 0)
  {
    sub_1003109EC();
    goto LABEL_9;
  }

  sub_100309B08(v19, a5 & 1);
  v22 = sub_10008C808(a4);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v22;
LABEL_9:
  v24 = v28;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v27;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_100317538(v16, v13, v27, v24, a3, v25);
  }
}

void sub_100314B38(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10008C8DC(a2, a3);
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
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10030D60C(v20, a4 & 1, a5, a6);
      v15 = sub_10008C8DC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100311678(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;

  sub_100069E2C(a2, a3);
}

void sub_100314CF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10008C808(a2);
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
      *(v20[7] + v14) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_100310CB8();
    goto LABEL_7;
  }

  sub_100309F28(v17, a3 & 1);
  v21 = sub_10008C808(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  sub_100317610(v14, v11, v7, v20);
}

void sub_100314E8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10008C808(a2);
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
      *(v20[7] + 2 * v14) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_100310F28();
    goto LABEL_7;
  }

  sub_10030A2E8(v17, a3 & 1);
  v21 = sub_10008C808(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  sub_1003176C8(v14, v11, v7, v20);
}

unint64_t sub_100315054(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008C9C8(a2);
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
    sub_1003111C0();
    result = v17;
    goto LABEL_8;
  }

  sub_10030A6A8(v14, a3 & 1);
  result = sub_10008C9C8(a2);
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100315178(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
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
      sub_10031130C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10030A928(v16, a4 & 1);
    v11 = sub_10008C908(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000752F4(v22);

    sub_100075D50(a1, v22);
  }

  else
  {
    sub_100317780(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1003152F4(uint64_t a1, Swift::UInt a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(_BYTE *, unint64_t), uint64_t (*a7)(uint64_t, void *))
{
  v11 = v7;
  v15 = *v7;
  v16 = sub_10008C9C8(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      sub_1003114D8(a4, a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_10030ABE0(v21, a3 & 1, a4, a5, a6);
    v16 = sub_10008C9C8(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    return sub_1003177EC(v16, a2, a1, v26, a6);
  }

  v27 = (v26[7] + 40 * v16);
  sub_1000752F4(v27);

  return a7(a1, v27);
}

void sub_100315484(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
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
      sub_1003117D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10030AEA0(v16, a4 & 1);
    v11 = sub_10008C8DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_1000752F4(v22);

    sub_1000BC104(a1, v22);
  }

  else
  {
    sub_1003178A4(v11, a2, a3, a1, v21);

    sub_100069E2C(a2, a3);
  }
}

void sub_1003155DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10008C8DC(a4, a5);
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
      sub_10030B160(v20, a6 & 1);
      v15 = sub_10008C8DC(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100311984();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v27 = *v26;
    v28 = v26[1];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    sub_10006A178(v27, v28);
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v25[6] + 16 * v15);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v25[7] + 24 * v15);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v31 = v25[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;

  sub_100069E2C(a4, a5);
}

unint64_t sub_100315784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_10008C9C8(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10030B430(v20, a6 & 1);
      result = sub_10008C9C8(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_100311B20();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a5;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
}

void sub_100315914(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030B6F4(v16, a4 & 1);
      v11 = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100311CA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
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

  sub_100069E2C(a2, a3);
}

uint64_t sub_100315A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v30 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_10008C808(a3);
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
      sub_100311E08();
      goto LABEL_9;
    }

    sub_10030B994(v18, a4 & 1);
    v21 = sub_10008C808(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v30;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v30;
    v25[1] = a2;

    return sub_10006A178(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_100317914(v15, v12, v23, a2, v24);
  }
}

unint64_t sub_100315C58(uint64_t a1, char a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10008C9C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030BFE4(v16, a4 & 1);
      result = sub_10008C9C8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1003121E0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = v21[7] + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * result;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_100315DC0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
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
      sub_10030C288(v16, a4 & 1);
      v11 = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100312350();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;

  sub_100069E2C(a2, a3);
}

void sub_100315F3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
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
      sub_10030C52C(v16, a4 & 1);
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1003124BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1003160B8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10008CB58(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10030C7FC(v13, a3 & 1);
      v8 = sub_10008CB58(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_10009393C(0, &qword_100504760, RBSAssertion_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_100312654();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

unint64_t sub_100316230(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008CBA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10030CA64(v14, a3 & 1);
      result = sub_10008CBA8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1003127B4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

void sub_100316390(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
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
      sub_10030CCEC(v16, a4 & 1);
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100312924();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_10018DC34(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_100316520(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C908(a2, a3);
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
      sub_10030CFBC(v16, a4 & 1);
      v11 = sub_10008C908(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100312AD8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10031669C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10008C908(a2, a3);
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
      sub_100312C4C();
      goto LABEL_7;
    }

    sub_10030D264(v15, a4 & 1);
    v25 = sub_10008C908(a2, a3);
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
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1003179D8(v12, a2, a3, a1, v18);
}

void sub_100316830(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10008C8DC(a2, a3);
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
      sub_10030E074(v16, a4 & 1, &qword_10050AC20, &qword_100415298);
      v11 = sub_10008C8DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1003131B8(&qword_10050AC20, &qword_100415298);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;

  sub_100069E2C(a2, a3);
}

_OWORD *sub_1003169D4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10008CA7C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10031347C();
      goto LABEL_7;
    }

    sub_10030E588(v13, a3 & 1);
    v19 = sub_10008CA7C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100092ECC(a2, v21);
      return sub_100317ACC(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000752F4(v17);

  return sub_100075D50(a1, v17);
}

uint64_t sub_100316B20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10008C808(a2);
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
      sub_100313620();
      goto LABEL_7;
    }

    sub_10030E840(v17, a3 & 1);
    v22 = sub_10008C808(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100317B48(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
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

unint64_t sub_100316CEC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008CA34(a2);
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
    sub_100313B8C();
    result = v17;
    goto LABEL_8;
  }

  sub_10030F184(v14, a3 & 1);
  result = sub_10008CA34(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 2 * result) = a2;
    *(v19[7] + result) = a1;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100316E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10008CA34(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10030F3EC(v16, a4 & 1);
      result = sub_10008CA34(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100313CD8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 2 * result) = a3;
    v25 = (v21[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;

  return sub_10006A178(v23, v24);
}

void sub_100316F84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10008C908(a2, a3);
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
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10030F668(v20, a4 & 1, a5, a6);
      v15 = sub_10008C908(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100313E40(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

unint64_t sub_100317120(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10008D218(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_10030FCC4(v14, a2 & 1);
      result = sub_10008D218(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100314238();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_100317288(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_10008CBA8(a2);
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
      sub_10030FF40(v18, a3 & 1, a4, a5);
      v13 = sub_10008CBA8(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1003143A8(a4, a5);
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + 4 * v13) = a2;
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

_OWORD *sub_1003173F8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10008CC58(a2);
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
      sub_1003144F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1003101AC(v13, a3 & 1);
    v8 = sub_10008CC58(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_1000752F4(v19);

    return sub_100075D50(a1, v19);
  }

  else
  {
    sub_100317C44(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100317538(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for UUID();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_100317610(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
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

uint64_t sub_1003176C8(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 2 * a1) = a3;
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

_OWORD *sub_100317780(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100075D50(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1003177EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = a5(a3, a4[7] + 40 * a1);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_10031785C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1003178A4(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000BC104(a4, a5[7] + 40 * a1);
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

uint64_t sub_100317914(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
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

uint64_t sub_1003179D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
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

unint64_t sub_100317A88(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_100317ACC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100075D50(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100317B48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
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

unint64_t sub_100317C00(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

_OWORD *sub_100317C44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100075D50(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100317CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100317CFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100317D60(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for CredentialInternal();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void SECServer.listCredentialsInternal(reply:)(void (*a1)(void, uint64_t), uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForEntitlement:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v19[15] == 1)
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = a1;
        v12[5] = a2;

        sub_1001F9BE8(0, 0, v6, &unk_1004152B0, v12);

        return;
      }
    }

    else
    {

      sub_100075768(v22, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_10051B2C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "listCredentialsInternal: Client not entitled", v16, 2u);
  }

  sub_10009591C();
  v17 = swift_allocError();
  *v18 = 15;
  a1(0, v17);
}

uint64_t sub_100318110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_100318130, 0, 0);
}

uint64_t sub_100318130()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 64) = qword_10051B858;

  return _swift_task_switch(sub_1003181C8, v1, 0);
}

uint64_t sub_1003181C8()
{
  *(v0 + 72) = sub_100362B68(0, 0);
  *(v0 + 80) = 0;

  return _swift_task_switch(sub_10031825C, 0, 0);
}

uint64_t sub_10031825C()
{
  v0[5] = v0[9];
  v1 = swift_allocObject();
  v0[11] = v1;
  v1[2] = v0 + 5;
  v1[3] = 0xD000000000000019;
  v1[4] = 0x800000010046E720;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1002FE82C;

  return sub_1001FBFAC(0xD000000000000019, 0x800000010046E720, &unk_1004152F8, v1);
}

void SECServer.deleteCredential(uuid:reply:)(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v26 = a1;
    v14 = a2;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 valueForEntitlement:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30[0] = v28;
    v30[1] = v29;
    a2 = v14;
    if (*(&v29 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v27 == 1)
      {
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
        (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v6);
        v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        (*(v7 + 32))(v19 + v18, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v20 = a2;
        v20[1] = a3;

        sub_1001F9BE8(0, 0, v11, &unk_1004152C0, v19);

        return;
      }
    }

    else
    {

      sub_100075768(v30, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B2C8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "deleteCredential: Client not entitled", v24, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v25 = 15;
  a2();
}

void SECServer.deleteApplication(identifier:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v8 - 8);
  v10 = &v22[-v9];
  v11 = [objc_opt_self() currentConnection];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 valueForEntitlement:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v22[15] == 1)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = a1;
        v16[5] = a2;
        v16[6] = a3;
        v16[7] = a4;

        sub_1001F9BE8(0, 0, v10, &unk_1004152D0, v16);

        return;
      }
    }

    else
    {

      sub_100075768(v25, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10051B2C8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "deleteCredential: Client not entitled", v20, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v21 = 15;
  a3();
}

uint64_t sub_100318CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_100318110(a1, v4, v5, v7, v6);
}

uint64_t sub_100318D68(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_1002FEFCC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100318E98(uint64_t a1)
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
  v10[1] = sub_10012E598;

  return sub_1002FF6D4(a1, v4, v5, v6, v7, v9, v8);
}

double sub_100318F6C(void (**a1)(void, void, void))
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = objc_opt_self();
  _Block_copy(a1);
  v7 = [v6 currentConnection];
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForEntitlement:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v20[15])
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = sub_10021BE6C;
        v12[5] = v5;

        sub_1001F9BE8(0, 0, v4, &unk_1004152E8, v12);

        return result;
      }
    }

    else
    {

      sub_100075768(v23, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "listCredentialsInternal: Client not entitled", v17, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v18 = 15;
  v19 = _convertErrorToNSError(_:)();
  (a1)[2](a1, 0, v19);

  return result;
}

double sub_1003192DC(uint64_t a1, void (**a2)(void, void))
{
  v26 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = objc_opt_self();
  _Block_copy(a2);
  v11 = [v10 currentConnection];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 valueForEntitlement:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30[0] = v28;
    v30[1] = v29;
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v27)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v3);
        v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        (*(v4 + 32))(v17 + v16, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
        v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v18 = sub_10012E5A0;
        v18[1] = v9;

        sub_1001F9BE8(0, 0, v8, &unk_1004152E0, v17);

        return result;
      }
    }

    else
    {

      sub_100075768(v30, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000958E4(v20, qword_10051B2C8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "deleteCredential: Client not entitled", v23, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v24 = 15;
  v25 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v25);

  return result;
}

double sub_10031972C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  _Block_copy(a3);
  v11 = [v10 currentConnection];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 valueForEntitlement:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v24[15])
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = a1;
        v16[5] = a2;
        v16[6] = sub_10012DE64;
        v16[7] = v9;

        sub_1001F9BE8(0, 0, v8, &unk_1004152D8, v16);

        return result;
      }
    }

    else
    {

      sub_100075768(v27, &qword_100502420, &qword_10040F310);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000958E4(v18, qword_10051B2C8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "deleteCredential: Client not entitled", v21, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v22 = 15;
  v23 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v23);

  return result;
}

uint64_t sub_100319AB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100319AF4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000C288C;

  return sub_1002FEFCC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100319C24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100319C5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C288C;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_100319D60()
{
  v0 = type metadata accessor for Schema.Version();
  sub_1000B6A94(v0, qword_10051B7C0);
  sub_1000958E4(v0, qword_10051B7C0);
  return Schema.Version.init(_:_:_:)();
}

void sub_100319DC4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10, &protocol conformance descriptor for CredentialType, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v3;
}

uint64_t sub_100319F0C()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10, &protocol conformance descriptor for CredentialType, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10031A04C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031CA68(&qword_10050AEF0, &qword_10050AF00, &protocol conformance descriptor for CredentialType, &protocol conformance descriptor for <A> [A]);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void sub_10031A130(void *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v4;
  a3[1] = v5;
}

double sub_10031A238(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10031A30C(uint64_t a1)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

double sub_10031A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void sub_10031A4B8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10025CC88(&qword_100508150, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v3;
}

double sub_10031A5EC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10031A6B0()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10025CC88(&qword_100508150, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10031A7DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10025CC88(&qword_100508158, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void sub_10031A8AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v3;
}

double sub_10031A9B8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10031AA88()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

double sub_10031AB8C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

double sub_10031AC34()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031C94C(&qword_10050AEE8, &qword_100506270, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t sub_10031AD74(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1002863E4(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10031C8E4(v6);
}

double sub_10031AEA4()
{
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031C94C(&qword_10050AEE8, &qword_100506270, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

double sub_10031AFE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  sub_10031C94C(&qword_10050AEE0, &qword_1005062A0, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

uint64_t sub_10031B0C4(uint64_t a1)
{
  v2 = v1;
  v19 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  *(v2 + 48) = sub_100068FC4(&qword_10050AF18, &qword_100415638);
  v7 = sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  v20 = v6;
  v21 = v6;
  v22 = v7;
  v23 = v7;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000B9634((v2 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  v8 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  v10 = v9;
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v20 = v8;
  v21 = v10;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v11 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.appletTypes.getter();
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v20 = v11;
  sub_100068FC4(&qword_10050AEF8, &qword_100415630);
  sub_10031CA68(&qword_10050AEF0, &qword_10050AF00, &protocol conformance descriptor for CredentialType, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.title.getter();
  v14 = v13;
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v20 = v12;
  v21 = v14;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  SEStorageManagementViewModel.WalletUsageGroup.PassEntry.lastUsedDate.getter();
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_10031C94C(&qword_10050AEE0, &qword_1005062A0, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10031C8E4(v5);
  *(v2 + 16) = 0;
  v15 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.instanceAIDs.getter();
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v20 = v15;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10025CC88(&qword_100508158, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v12) = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.isDeletable.getter();
  sub_1000752B0((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  LOBYTE(v20) = v12 & 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v16 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v2;
}

uint64_t sub_10031B580@<X0>(uint64_t a1@<X8>)
{
  v5[5] = a1;
  v2 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v2 - 8);
  v5[4] = v5 - v3;
  v6 = v1;
  swift_getKeyPath();
  sub_10031CB04(&qword_10050AEB0, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_100415404);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.getValue<A>(forKey:)();

  v5[2] = v7;
  v5[3] = v6;
  v6 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10025CC88(&qword_100508150, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  v5[1] = v6;
  v6 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031CA68(&qword_10050AF08, &qword_10050AF10, &protocol conformance descriptor for CredentialType, &protocol conformance descriptor for <A> [A]);
  PersistentModel.getValue<A>(forKey:)();

  v5[0] = v6;
  v6 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v6 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v6 = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10031C94C(&qword_10050AEE8, &qword_100506270, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
}

uint64_t sub_10031B9A4(__int128 *a1)
{
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  *(v1 + 48) = sub_100068FC4(&qword_10050AF18, &qword_100415638);
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000B9634((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1000752F4((v1 + 24));
  sub_1000BC104(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10031BAD8()
{
  sub_1000752F4((v0 + 24));
  v1 = OBJC_IVAR____TtCO10seserviced25SEStorageMockPassSchemaV19PassEntry___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(uint64_t a1)
{
  result = qword_10050AC60;
  if (!qword_10050AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031BBD0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10031BCB0()
{
  sub_100068FC4(&qword_1005081B8, &qword_100410800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004098F0;
  v1 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  v2 = sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_10031BD44@<X0>(uint64_t a1@<X8>)
{
  if (qword_100501D58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_1000958E4(v2, qword_10051B7C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10031BDEC(__int128 *a1)
{
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  v2 = swift_allocObject();
  sub_10031B9A4(a1);
  return v2;
}

uint64_t sub_10031BE78(__int128 *a1)
{
  swift_beginAccess();
  sub_1000752F4((v1 + 24));
  sub_1000BC104(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_10031BED0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1000BC094(v1 + 24, v4);
  return sub_10031BF60;
}

void sub_10031BF60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1000BC094(*a1, v2 + 40);
    swift_beginAccess();
    sub_1000752F4((v3 + 24));
    sub_1000BC104((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_1000752F4(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1000752F4((v3 + 24));
    sub_1000BC104(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_10031C01C()
{
  Hasher.init(_seed:)();
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10031C100(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10031C168()
{
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  sub_10031CB04(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  return PersistentModel.id.getter();
}

uint64_t sub_10031C1E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static PersistentModel.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10031C400()
{
  sub_100068FC4(&qword_10050AEC8, &qword_100415530);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10040A530;
  swift_getKeyPath();
  sub_100068FC4(&qword_10050AED0, &qword_100415560);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_1004098F0;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  sub_10031CB04(&qword_10050AED8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_10031C8E4(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031C94C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_1005031F0, &unk_10040C4C0);
    sub_10031CB04(a2, &type metadata accessor for Date, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10031CA68(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050AEF8, &qword_100415630);
    sub_10031CB04(a2, &type metadata accessor for CredentialType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10031CB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10031CB74(uint64_t a1, char a2)
{
  sub_100195868(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = 0;
  v12 = 0;
  v5 = [v2 copyItemData:isa outData:&v12 updateToApplePayView:a2 & 1 error:&v11];

  v6 = v12;
  v7 = v11;
  if (v5)
  {
    if (v6)
    {
      v8 = v6;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v9 = v7;
    v6 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10031CCB0()
{
  result = [objc_allocWithZone(type metadata accessor for SEFidoKeyManager(0)) init];
  qword_10051B7D8 = result;
  return result;
}

id sub_10031CD40(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, unint64_t a6, uint64_t a7, void *a8)
{
  v157._object = a8;
  v157._countAndFlagsBits = a7;
  v165 = a4;
  v159 = a3;
  v158 = a2;
  v160 = a1;
  v162 = type metadata accessor for SHA256();
  v166 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for SHA256Digest();
  v167 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Creating FiDO Attestation", v14, 2u);
  }

  v169 = Data.base64EncodedString(options:)(0);
  v176 = 47;
  v177 = 0xE100000000000000;
  v174 = 95;
  v175 = 0xE100000000000000;
  v15 = sub_10012512C();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v169._countAndFlagsBits = v16;
  v169._object = v18;
  v176 = 43;
  v177 = 0xE100000000000000;
  v174 = 45;
  v175 = 0xE100000000000000;
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v21 = v20;

  v169._countAndFlagsBits = v19;
  v169._object = v21;
  v176 = 61;
  v177 = 0xE100000000000000;
  v174 = 0;
  v175 = 0xE000000000000000;
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;

  v169._countAndFlagsBits = 0x6E68747561626577;
  v169._object = 0xEF6574616572632ELL;
  v170 = v22;
  v171 = v24;
  v172 = a5;
  v173 = a6;
  v25 = a6;
  v26 = type metadata accessor for JSONEncoder();
  swift_allocObject();

  v27 = JSONEncoder.init()();
  sub_1003225E8();
  v28 = v168;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v28)
  {
  }

  else
  {
    v31 = v29;
    v32 = v30;
    v147 = v15;
    v148 = v26;

    v33 = sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v156 = a5;
    v35 = v161;
    v34 = v162;
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v31, v32);
    sub_100357FC4(v31, v32, v35);
    v168 = 0;
    sub_10006A178(v31, v32);
    v36 = v163;
    v155 = v33;
    dispatch thunk of HashFunction.finalize()();
    v37 = v166[1];
    ++v166;
    v152 = v37;
    v37(v35, v34);
    v38 = v164;
    v171 = v164;
    v39 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v172 = v39;
    v40 = sub_1000B9634(&v169._countAndFlagsBits);
    v41 = v167;
    v42 = *(v167 + 16);
    v151 = v167 + 16;
    v150 = v42;
    v42(v40, v36, v38);
    sub_1000752B0(&v169, v171);
    v43 = v168;
    v153 = v39;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v27 = v43;
    v44 = *(v41 + 8);
    v167 = v41 + 8;
    v149 = v44;
    v44(v36, v38);
    v45 = v177;
    v168 = v176;
    sub_1000752F4(&v169);
    v46 = v31;
    v47 = [v165 key];
    v48 = [v47 publicKey];

    v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v154 = v25;
    v52 = sub_100322E3C(v156, v25, v49, v51, 1);
    if (v43)
    {
      sub_10006A178(v49, v51);
      sub_10006A178(v168, v45);
      sub_10006A178(v46, v32);
    }

    else
    {
      v55 = v53;
      v145 = v46;
      v146 = v32;
      v56 = v52;
      sub_10006A178(v49, v51);
      v176 = v56;
      v177 = v55;
      v171 = &type metadata for Data;
      v172 = &protocol witness table for Data;
      v57 = v168;
      v169._countAndFlagsBits = v168;
      v169._object = v45;
      v58 = sub_1000752B0(&v169, &type metadata for Data);
      v59 = v55;
      v60 = *v58;
      v61 = v58[1];
      v142 = v56;
      v143 = v59;
      sub_100069E2C(v56, v59);
      v144 = v45;
      sub_100069E2C(v57, v45);
      sub_10008E4C8(v60, v61, &v176);
      sub_1000752F4(&v169);
      v62 = v176;
      v63 = v177;
      v64 = v162;
      dispatch thunk of HashFunction.init()();
      sub_100069E2C(v62, v63);
      sub_100357FC4(v62, v63, v35);
      sub_10006A178(v62, v63);
      v65 = v163;
      dispatch thunk of HashFunction.finalize()();
      v152(v35, v64);
      v66 = v164;
      v171 = v164;
      v172 = v153;
      v67 = sub_1000B9634(&v169._countAndFlagsBits);
      v150(v67, v65, v66);
      sub_1000752B0(&v169, v171);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v149(v65, v66);
      v68 = v174;
      v69 = v175;
      sub_1000752F4(&v169);
      sub_10006A178(v62, v63);
      v169 = v157;

      v70._countAndFlagsBits = 47;
      v70._object = 0xE100000000000000;
      String.append(_:)(v70);

      v71._countAndFlagsBits = v156;
      v71._object = v154;
      String.append(_:)(v71);

      sub_10028C190(32, v169._countAndFlagsBits, v169._object);

      static String._fromSubstring(_:)();

      isa = Data._bridgeToObjectiveC()().super.isa;
      v73 = String._bridgeToObjectiveC()();

      v74 = Data._bridgeToObjectiveC()().super.isa;
      v169._countAndFlagsBits = 0;
      v75 = v160;
      v76 = sub_100032E80(v160, isa, v165, v73, 0, v74, 1, &v169);

      countAndFlagsBits = v169._countAndFlagsBits;
      if (v76)
      {
        v163 = 0;
        v166 = v169._countAndFlagsBits;
        v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v81 = [objc_opt_self() sharedManager];
        v82 = v78;
        v164 = v80;
        v83 = Data._bridgeToObjectiveC()().super.isa;
        v85 = sub_1003AF3C4(v75, v84);
        v86 = [v85 casdCertificate];

        v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v69;
        v90 = v89;

        v91 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v87, v90);
        v92 = Data._bridgeToObjectiveC()().super.isa;
        sub_100068FC4(&unk_100504720, &qword_100414C40);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1004098F0;
        *(v93 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v93 + 40) = v94;
        v95 = Array._bridgeToObjectiveC()().super.isa;

        v169._countAndFlagsBits = 0;
        v96 = [v81 PerformSEABAAWithAttestation:v83 casdCertificate:v91 nonce:v92 OIDs:v95 validityInterval:0 error:&v169];
        swift_unknownObjectRelease();

        v97 = v169._countAndFlagsBits;
        if (v96)
        {
          v167 = v68;
          v162 = v88;
          sub_100068FC4(&qword_1005025E0, &unk_10040F430);
          v98 = swift_allocObject();
          *(v98 + 1) = xmmword_100409900;
          v99 = v97;
          v100 = sub_1003AAA78(v96);
          v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v98[4] = v101;
          v98[5] = v103;
          v104 = sub_1003AAA6C(v96);
          v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          v98[6] = v105;
          v98[7] = v107;

          sub_10006A178(v82, v164);
          v108 = [v165 key];
          v109 = [v108 publicKey];

          v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10006A178(v110, v111);

          v169._countAndFlagsBits = 0x656C707061;
          v169._object = 0xE500000000000000;
          v170 = -7;
          v171 = v98;
          v112 = v142;
          v113 = v143;
          v172 = v142;
          v173 = v143;
          type metadata accessor for CBOREncoder();
          swift_allocObject();
          sub_100069E2C(v112, v113);
          v27 = CBOREncoder.init()();
          sub_100323450();
          v114 = v163;
          v115 = dispatch thunk of CBOREncoder.encode<A>(_:)();
          if (v114)
          {
            sub_10006A178(v112, v113);
            sub_10006A178(v167, v162);
            sub_10006A178(v145, v146);
            sub_10006A178(v168, v144);

            sub_10006A178(v112, v113);
          }

          else
          {
            v165 = v115;
            v166 = v116;

            sub_10006A178(v112, v113);

            v169 = Data.base64EncodedString(options:)(0);
            v176 = 47;
            v177 = 0xE100000000000000;
            v174 = 95;
            v175 = 0xE100000000000000;
            v119 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v121 = v120;

            v169._countAndFlagsBits = v119;
            v169._object = v121;
            v176 = 43;
            v177 = 0xE100000000000000;
            v174 = 45;
            v175 = 0xE100000000000000;
            v122 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v124 = v123;

            v169._countAndFlagsBits = v122;
            v169._object = v124;
            v176 = 61;
            v177 = 0xE100000000000000;
            v174 = 0;
            v175 = 0xE000000000000000;
            v125 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v163 = v126;
            v164 = v125;

            v169 = Data.base64EncodedString(options:)(0);
            v176 = 47;
            v177 = 0xE100000000000000;
            v174 = 95;
            v175 = 0xE100000000000000;
            v127 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v129 = v128;

            v169._countAndFlagsBits = v127;
            v169._object = v129;
            v176 = 43;
            v177 = 0xE100000000000000;
            v174 = 45;
            v175 = 0xE100000000000000;
            v130 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v132 = v131;

            v169._countAndFlagsBits = v130;
            v169._object = v132;
            v176 = 61;
            v177 = 0xE100000000000000;
            v174 = 0;
            v175 = 0xE000000000000000;
            v133 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v135 = v134;
            v136 = v163;

            v169._countAndFlagsBits = v164;
            v169._object = v136;
            v170 = v133;
            v171 = v135;
            swift_allocObject();
            JSONEncoder.init()();
            sub_1003234A4();
            v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            sub_10006A178(v167, v162);
            sub_10006A178(v145, v146);
            sub_10006A178(v165, v166);
            sub_10006A178(v168, v144);
            sub_10006A178(v112, v113);
          }
        }

        else
        {
          v27 = v169._countAndFlagsBits;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10006A178(v68, v88);
          sub_10006A178(v145, v146);
          sub_10006A178(v168, v144);
          sub_10006A178(v142, v143);
          sub_10006A178(v82, v164);
        }
      }

      else
      {
        v167 = v68;
        if (v169._countAndFlagsBits)
        {
          v117 = [v169._countAndFlagsBits code];
          v118 = countAndFlagsBits;
        }

        else
        {
          v118 = 0;
          v117 = 0;
        }

        v137 = v144;
        v138 = v168;
        v139 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
        v140 = countAndFlagsBits;
        v141 = v117;
        v27 = v139;
        sub_10030990C(v141, 0, 0xD000000000000015, 0x800000010046ECB0, v118);
        swift_willThrow();
        sub_10006A178(v167, v69);
        sub_10006A178(v145, v146);
        sub_10006A178(v138, v137);
        sub_10006A178(v142, v143);
      }
    }
  }

  return v27;
}

void *sub_10031E3AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a1;
  v75 = a2;
  v67 = type metadata accessor for P256.Signing.ECDSASignature();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.Signing.PublicKey();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v88 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256();
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v73 = *(v11 - 1);
  __chkstk_darwin(v11);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Performing FIDO verification", v15, 2u);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  isa = JSONDecoder.init()();
  sub_100322594();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {
  }

  else
  {

    v61 = v84;
    v65 = v85;
    v63 = v86;
    v64 = v87;
    v80 = v82;
    v81 = v83;
    v62 = v83;
    v78 = 95;
    v79 = 0xE100000000000000;
    v76 = 47;
    v77 = 0xE100000000000000;
    sub_10012512C();
    v80 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v81 = v17;
    v78 = 45;
    v79 = 0xE100000000000000;
    v76 = 43;
    v77 = 0xE100000000000000;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v20 = v19;

    v82 = v18;
    v83 = v20;

    v21 = String.count.getter();

    if ((v21 & 3) != 0)
    {
      v22 = String.count.getter();
      v23 = v22 & 3;
      if (v22 <= 0)
      {
        v23 = -(-v22 & 3);
      }

      v24._countAndFlagsBits = 61;
      v24._object = 0xE100000000000000;
      v25 = String.init(repeating:count:)(v24, 4 - v23);
      String.append(_:)(v25);
    }

    v26 = Data.init(base64Encoded:options:)();
    v28 = v27;
    sub_10006A2BC(v26, v27);

    if (v28 >> 60 == 15)
    {
      isa = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      sub_10030990C(0, 1, 0xD00000000000001CLL, 0x800000010046EC60, 0);
      swift_willThrow();
    }

    else
    {
      v59 = v26;
      v60 = v28;
      sub_10006A2D0(v26, v28);
      v80 = v61;
      v81 = v65;
      v78 = 95;
      v79 = 0xE100000000000000;
      v76 = 47;
      v77 = 0xE100000000000000;
      v80 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v81 = v29;
      v78 = 45;
      v79 = 0xE100000000000000;
      v76 = 43;
      v77 = 0xE100000000000000;
      v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v32 = v31;

      v82 = v30;
      v83 = v32;

      v33 = String.count.getter();

      if ((v33 & 3) != 0)
      {
        v34 = String.count.getter();
        v35 = v34 & 3;
        if (v34 <= 0)
        {
          v35 = -(-v34 & 3);
        }

        v36._countAndFlagsBits = 61;
        v36._object = 0xE100000000000000;
        v37 = String.init(repeating:count:)(v36, 4 - v35);
        String.append(_:)(v37);
      }

      v38 = Data.init(base64Encoded:options:)();
      v40 = v39;
      sub_10006A2BC(v38, v39);

      if (v40 >> 60 == 15)
      {
        isa = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
        sub_10030990C(0, 1, 0xD000000000000023, 0x800000010046EC80, 0);
        swift_willThrow();
      }

      else
      {
        sub_10006A2D0(v38, v40);
        sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
        dispatch thunk of HashFunction.init()();
        v41 = v59;
        v42 = v60;
        sub_100069E2C(v59, v60);
        sub_100357FC4(v41, v42, v10);
        v61 = 0;
        sub_10006A2D0(v41, v42);
        v43 = v72;
        dispatch thunk of HashFunction.finalize()();
        (*(v71 + 8))(v10, v8);
        v85 = v11;
        v86 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
        v44 = sub_1000B9634(&v82);
        v45 = v73;
        (*(v73 + 16))(v44, v43, v11);
        sub_1000752B0(&v82, v85);
        v46 = v61;
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v45 + 8))(v43, v11);
        v47 = v80;
        v48 = v81;
        sub_1000752F4(&v82);
        v80 = v38;
        v81 = v40;
        isa = &type metadata for Data;
        v85 = &type metadata for Data;
        v86 = &protocol witness table for Data;
        v82 = v47;
        v83 = v48;
        v49 = sub_1000752B0(&v82, &type metadata for Data);
        v50 = *v49;
        v51 = v49[1];
        sub_10006A2BC(v38, v40);
        sub_100069E2C(v47, v48);
        sub_10008E4C8(v50, v51, &v80);
        sub_10006A178(v47, v48);
        sub_1000752F4(&v82);
        v53 = v80;
        v52 = v81;
        v82 = v74;
        v83 = v75;
        sub_100069E2C(v74, v75);
        P256.Signing.PublicKey.init<A>(x963Representation:)();
        if (!v46)
        {
          v55 = v63;
          v56 = v64;
          v82 = v63;
          v83 = v64;
          sub_100069E2C(v63, v64);
          sub_1000937E0();
          v57 = v68;
          P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
          v82 = v53;
          v83 = v52;
          v58 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
          sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v58 & 1).super.super.isa;
          sub_10006A178(v53, v52);
          sub_10006A2D0(v59, v60);

          sub_10006A178(v55, v56);
          sub_10006A2D0(v38, v40);
          (*(v66 + 8))(v57, v67);
          (*(v69 + 8))(v88, v70);
          return isa;
        }

        sub_10006A178(v53, v52);
        sub_10006A2D0(v38, v40);
      }

      sub_10006A2D0(v59, v60);
    }

    sub_10006A178(v63, v64);
  }

  return isa;
}

void sub_10031EFE8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, char *a7)
{
  v52._countAndFlagsBits = a1;
  v52._object = a2;

  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v43 = a3;
  v12._countAndFlagsBits = a3;
  v45 = a4;
  v12._object = a4;
  String.append(_:)(v12);

  v13 = v52;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v15;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = v13;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessGroup;
  v16 = *(v7 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 120) = *(v7 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 128) = v16;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v17 = kSecClass;
  v18 = kSecClassGenericPassword;
  v19 = kSecAttrAccount;
  v20 = kSecAttrAccessGroup;

  v21 = kSecAttrSynchronizable;
  v22 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  if (a6 >> 60 != 15)
  {
    sub_100069E2C(a5, a6);
    *(&v53 + 1) = &type metadata for String;
    v52 = Data.base64EncodedString(options:)(0);
    sub_100075D50(&v52, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v22;
    sub_1003173F8(v50, kSecAttrService, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(a5, a6);
  }

  swift_getObjectType();
  sub_100195868(v22);

  v24 = v56;
  v25 = sub_100262F9C();

  if (!v24)
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52._countAndFlagsBits = swift_slowAlloc();
      *v28 = 134218498;
      *(v28 + 4) = v25[2];

      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1002FFA0C(a1, a2, &v52._countAndFlagsBits);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_1002FFA0C(a3, v45, &v52._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v26, v27, "Found %ld candidate keys for %s : %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = v25;
    v56 = v25[2];
    if (v56)
    {
      v30 = 0;
      v31 = v25 + 5;
      v47 = v29;
      while (v30 < v29[2])
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_100069E2C(v32, v33);
        PropertyListDecoder.init()();
        sub_100322540();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        v50[0] = v52;
        v50[1] = v53;
        v50[2] = v54;
        v51 = v55;
        if (qword_100501A08 != -1)
        {
          swift_once();
        }

        v34 = v51;
        sub_1001625A8(v51, *(&v51 + 1), a7);
        v36 = v35;
        v37 = [v35 BOOLValue];
        sub_10006A178(v32, v33);

        if (v37)
        {

          sub_100069E2C(v34, *(&v34 + 1));
          sub_100322510(v50);
          return;
        }

        sub_100322510(v50);
        v29 = v47;
        ++v30;
        v31 += 2;
        if (v56 == v30)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v52._countAndFlagsBits = swift_slowAlloc();
        *v40 = 134218498;
        v41 = v29[2];

        *(v40 + 4) = v41;

        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_1002FFA0C(a1, a2, &v52._countAndFlagsBits);
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_1002FFA0C(v43, v45, &v52._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v38, v39, "No matches found out of %ld candidate keys for %s : %s", v40, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

BOOL sub_10031F8AC()
{
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v3;
  *(inited + 72) = kSecAttrAccessGroup;
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 88) = v4;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;

  v8 = kSecAttrSynchronizable;
  v9 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  swift_getObjectType();
  sub_100195868(v9);

  v10 = sub_100262F9C();

  if (!v1)
  {
    v12 = v10[2];

    return v12 != 0;
  }

  return v11;
}

void sub_10031FC68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v39[0] = a1;
  v39[1] = a2;
  v39[2] = a3;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v39[6] = a7;
  v39[7] = a8;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  swift_bridgeObjectRetain_n();

  sub_100069E2C(a5, a6);
  sub_100069E2C(a7, a8);
  v14._countAndFlagsBits = 58;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);

  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10040F420;
  type metadata accessor for CFString(0);
  v18 = v17;
  *(v16 + 32) = kSecClass;
  *(v16 + 88) = v17;
  *(v16 + 96) = kSecAttrAccessible;
  *(v16 + 56) = v17;
  *(v16 + 64) = kSecClassGenericPassword;
  *(v16 + 152) = v17;
  *(v16 + 160) = kSecAttrAccount;
  *(v16 + 120) = v17;
  *(v16 + 128) = kSecAttrAccessibleAfterFirstUnlock;
  *(v16 + 216) = &type metadata for String;
  *(v16 + 184) = v17;
  *(v16 + 192) = v38;
  *(v16 + 224) = kSecAttrService;
  *(v16 + 248) = v17;
  v19 = kSecClass;
  v20 = kSecClassGenericPassword;
  v21 = kSecAttrAccessible;
  v22 = kSecAttrAccessibleAfterFirstUnlock;
  v23 = kSecAttrAccount;

  v24 = kSecAttrService;
  *(v16 + 256) = Data.base64EncodedString(options:)(0);
  *(v16 + 280) = &type metadata for String;
  *(v16 + 288) = kSecAttrAccessGroup;
  v25 = *(v36 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  v26 = *(v36 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(v16 + 312) = v18;
  *(v16 + 320) = v25;
  *(v16 + 328) = v26;
  *(v16 + 376) = v18;
  *(v16 + 344) = &type metadata for String;
  *(v16 + 352) = kSecAttrSynchronizable;
  *(v16 + 384) = 1;
  *(v16 + 440) = v18;
  *(v16 + 408) = &type metadata for Bool;
  *(v16 + 416) = kSecValueData;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v27 = kSecAttrAccessGroup;

  v28 = kSecAttrSynchronizable;
  v29 = kSecValueData;
  PropertyListEncoder.init()();
  sub_1003224BC();
  v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v32 = v31;

  if (v37)
  {

    sub_100322510(v39);
    sub_1000752F4((v16 + 416));
    sub_100075768(v16 + 352, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 288, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 224, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 160, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 96, &qword_10050AF70, &unk_100415690);
    sub_100075768(v16 + 32, &qword_10050AF70, &unk_100415690);
    *(v16 + 16) = 0;

    return;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v16 + 472) = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v16 + 448) = isa;
  if (!kSecAttrSyncViewHint)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v16 + 504) = v18;
  *(v16 + 480) = kSecAttrSyncViewHint;
  if (!kSecAttrViewHintApplePay)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v34 = kSecAttrViewHintApplePay;
  v35 = kSecAttrSyncViewHint;
  sub_10006A178(v30, v32);
  *(v16 + 536) = v18;
  *(v16 + 512) = v34;
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  NSDictionary.init(dictionaryLiteral:)();
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
LABEL_8:
  __break(1u);
}

void sub_1003203A4(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6)
{
  v51 = a1;
  v52 = a2;

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v47 = a3;
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);

  v10 = v51;
  v11 = v52;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v13;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrService;
  v14 = kSecClass;
  v15 = a4;
  v16 = kSecClassGenericPassword;
  v17 = kSecAttrAccount;
  v18 = kSecAttrService;
  *(inited + 120) = Data.base64EncodedString(options:)(0);
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  v19 = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup + 8);
  *(inited + 160) = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *(inited + 168) = v19;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v20 = kSecAttrAccessGroup;

  v21 = kSecAttrSynchronizable;
  v22 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  v23 = *(v44 + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper);
  sub_100195868(v22);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v23 deleteItem:isa];

  sub_100069E2C(a5, a6);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  sub_10006A178(a5, a6);
  if (!os_log_type_enabled(v26, v27))
  {

    if (!v25)
    {
      return;
    }

    goto LABEL_5;
  }

  v45 = v25;
  v28 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  *v28 = 136315906;
  *(v28 + 4) = sub_1002FFA0C(a1, a2, &v51);
  *(v28 + 12) = 2080;
  *(v28 + 14) = sub_1002FFA0C(v47, v15, &v51);
  *(v28 + 22) = 2080;
  v53 = sub_100288788(a5, a6);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v32 = sub_1002FFA0C(v29, v31, &v51);

  *(v28 + 24) = v32;
  *(v28 + 32) = 1024;
  *(v28 + 34) = v45;
  _os_log_impl(&_mh_execute_header, v26, v27, "Key for RP %s RPAH %s KH %s deleted with status %d", v28, 0x26u);
  swift_arrayDestroy();

  v25 = v45;
  if (v45)
  {
LABEL_5:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v33._object = 0x800000010046EC40;
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v33);
    v34._countAndFlagsBits = a1;
    v34._object = a2;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0x204841505220;
    v35._object = 0xE600000000000000;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v47;
    v36._object = v15;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 541608736;
    v37._object = 0xE400000000000000;
    String.append(_:)(v37);
    v53 = sub_100288788(a5, a6);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 0x2073757461747320;
    v42._object = 0xE800000000000000;
    String.append(_:)(v42);
    LODWORD(v53) = v25;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    sub_10030990C(0, 1, v51, v52, 0);
    swift_willThrow();
  }
}

uint64_t sub_100320AB8(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050AFB8, &qword_100415BD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000752B0(a1, a1[3]);
  sub_100324664();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v13 = *(v3 + 32);
    v12 = 2;
    sub_1001F6C50(&v15, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v13, *(&v13 + 1));
    v13 = *(v3 + 48);
    v14 = v13;
    v12 = 3;
    sub_1001F6C50(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100320CD0()
{
  v1 = 0x50676E69796C6572;
  v2 = 0x4879654B6F646966;
  if (*v0 != 2)
  {
    v2 = 0x74614479654B7470;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100320D64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003246B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100320D8C(uint64_t a1)
{
  v2 = sub_100324664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100320DC8(uint64_t a1)
{
  v2 = sub_100324664();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100320E04@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100324834(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

id sub_100320F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEFidoKeyManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SEFidoKeyManager(uint64_t a1)
{
  result = qword_10050AF58;
  if (!qword_10050AF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100321064(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100321108(void *a1)
{
  v3 = sub_100068FC4(&qword_10050AFE0, &qword_100415BF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000752B0(a1, a1[3]);
  sub_1003252E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003212A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100068FC4(&qword_10050B008, &qword_100415C00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000752B0(a1, a1[3]);
  sub_1003253E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10032143C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B018, &qword_100415C08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000752B0(a1, a1[3]);
  sub_100325294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1001F6C50(&v13, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100321634()
{
  v1 = 0x676E656C6C616863;
  if (*v0 != 1)
  {
    v1 = 0x6E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100321688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100324BD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003216B0(uint64_t a1)
{
  v2 = sub_1003252E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003216EC(uint64_t a1)
{
  v2 = sub_1003252E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100321740(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100321838()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6144746E65696C63;
  }
}

uint64_t sub_100321884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144746E65696C63 && a2 == 0xEE004E4F534A6174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010046EDE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100321970(uint64_t a1)
{
  v2 = sub_1003253E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003219AC(uint64_t a1)
{
  v2 = sub_1003253E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003219E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100324CEC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100321A38(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_100321ADC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x727574616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144746E65696C63;
  }
}

uint64_t sub_100321B4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100324ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100321B74(uint64_t a1)
{
  v2 = sub_100325294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100321BB0(uint64_t a1)
{
  v2 = sub_100325294();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100321BEC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100325000(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_100321C48(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10008FB4C(v3, v5, v8, v9);
}

uint64_t sub_100321D24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_10050B0B0, &unk_100416208);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000752B0(a1, a1[3]);
  sub_100326070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1003260C4(&qword_100506988, sub_1000B8890, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100321EEC()
{
  if (*v0)
  {
    return 6501752;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100321F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6501752 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100321FEC(uint64_t a1)
{
  v2 = sub_100326070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100322028(uint64_t a1)
{
  v2 = sub_100326070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100322064@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100325438(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1003220AC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10008C180(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003220D0(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050AFF0, &qword_100415BF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000752B0(a1, a1[3]);
  sub_10032533C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v11[0] = 1;
    sub_100325390();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1001F6C50(&v13, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003222A4()
{
  v1 = 0x746D7453747461;
  if (*v0 != 1)
  {
    v1 = 0x6174614468747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7630182;
  }
}

uint64_t sub_1003222F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10032563C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100322320(uint64_t a1)
{
  v2 = sub_10032533C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032235C(uint64_t a1)
{
  v2 = sub_10032533C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100322398@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100325754(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_1003223F4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v2 != v7 || (sub_10008C180(v4, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_10008FB4C(v3, v5, v8, v9);
}

unint64_t sub_1003224BC()
{
  result = qword_10050AF68;
  if (!qword_10050AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF68);
  }

  return result;
}

unint64_t sub_100322540()
{
  result = qword_10050AF78;
  if (!qword_10050AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF78);
  }

  return result;
}

unint64_t sub_100322594()
{
  result = qword_10050AF80;
  if (!qword_10050AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF80);
  }

  return result;
}

unint64_t sub_1003225E8()
{
  result = qword_10050AF88;
  if (!qword_10050AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF88);
  }

  return result;
}

uint64_t sub_10032263C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050AFA0, &qword_1004156A0);
  __chkstk_darwin(v4 - 8);
  v51 = &v44 - v5;
  v6 = type metadata accessor for COSEKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v17)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 65)
      {
        goto LABEL_8;
      }

LABEL_12:
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v53 = 0xD00000000000001BLL;
      v54 = 0x800000010046ED00;
      if (v17 <= 1)
      {
        if (!v17)
        {
          v32 = BYTE6(a2);
LABEL_24:
          sub_10009393C(0, &qword_10050AA20, NSError_ptr);
          v57 = v32;
          v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v41);

          sub_10030990C(0, 1, v53, v54, 0);
          return swift_willThrow();
        }

        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v32 = HIDWORD(a1) - a1;
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
      }

      v32 = 0;
      if (v17 != 2)
      {
        goto LABEL_24;
      }

      v34 = *(a1 + 16);
      v33 = *(a1 + 24);
      v32 = v33 - v34;
      if (!__OFSUB__(v33, v34))
      {
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) != 65)
  {
    goto LABEL_12;
  }

LABEL_8:
  v22 = v14;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v46 = v7;
  v23 = __DataStorage.init(capacity:)();
  v57 = 0;
  v58 = v23 | 0x4000000000000000;
  v44 = sub_1002B3B94(&off_1004C4FD0);
  v45 = v24;
  Data.append(_:)();
  LOWORD(v52[0]) = 4096;
  v55 = &type metadata for UnsafeRawBufferPointer;
  v56 = &protocol witness table for UnsafeRawBufferPointer;
  v53 = v52;
  v54 = v52 + 2;
  sub_1000752B0(&v53, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v53);
  sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v47 = v6;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(a1, a2);
  v25 = v50;
  sub_100357FC4(a1, a2, v11);
  v50 = v25;
  sub_10006A178(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v49 + 8))(v11, v9);
  v55 = v22;
  v56 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v26 = sub_1000B9634(&v53);
  (*(v13 + 16))(v26, v16, v22);
  sub_1000752B0(&v53, v55);
  v27 = v50;
  v6 = v47;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v9 = v27;
  (*(v13 + 8))(v16, v22);
  v28 = v52[0];
  v29 = v52[1];
  sub_1000752F4(&v53);
  sub_100288640(16, v28, v29, &v53);
  v30 = v53;
  v31 = v54;
  Data.append(_:)();
  sub_10006A178(v30, v31);
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  v17 = v51;
  v13 = v46;
  COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)();
  if ((*(v13 + 48))(v17, 1, v6) == 1)
  {
    sub_100075768(v17, &qword_10050AFA0, &qword_1004156A0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0xD000000000000028, 0x800000010046ED20, 0);
    swift_willThrow();
    sub_10006A178(v44, v45);
    return sub_10006A178(v57, v58);
  }

LABEL_19:
  v35 = v44;
  v36 = v48;
  (*(v13 + 32))(v48, v17, v6);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v37 = v13;
  CBOREncoder.init()();
  sub_1003234F8(&qword_10050AFA8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
  v38 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v9)
  {

    sub_10006A178(v35, v45);
    (*(v13 + 8))(v36, v6);
    return sub_10006A178(v57, v58);
  }

  v42 = v38;
  v43 = v39;

  Data.append(_:)();
  sub_10006A178(v42, v43);
  sub_10006A178(v35, v45);
  (*(v37 + 8))(v36, v6);
  return v57;
}