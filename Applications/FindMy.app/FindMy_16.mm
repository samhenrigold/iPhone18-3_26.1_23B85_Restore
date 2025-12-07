void sub_1001B5668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B3940, &qword_1005557D8);
  v34 = v4;
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

void sub_1001B590C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10007EBC0(&qword_1006B38B8, &qword_100557E10);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1001C252C(v28, v42, type metadata accessor for FMBeaconSharingModuleEntry);
      }

      else
      {
        sub_1001C229C(v28, v42, type metadata accessor for FMBeaconSharingModuleEntry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1001C252C(v42, *(v9 + 56) + v27 * v17, type metadata accessor for FMBeaconSharingModuleEntry);
      ++*(v9 + 16);
      v7 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1001B5C98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5C80, &qword_100557E48);
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
      v24 = *(*(v5 + 56) + 8 * v20);
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

void sub_1001B5F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10007EBC0(&qword_1006B3950, &qword_100557E40);
  v48 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v55 = v5;
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
    v44 = v2;
    v45 = (v6 + 16);
    v46 = v8;
    v47 = v6;
    v50 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v49;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v47 + 72) * v26;
      v53 = *(v47 + 72);
      v54 = v23;
      if (v48)
      {
        (*v50)(v18, v27, v55);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v51 = v28[1];
        v52 = v29;
        v31 = v28[2];
        v30 = v28[3];
      }

      else
      {
        (*v45)(v18, v27, v55);
        v32 = (*(v8 + 56) + 32 * v26);
        v33 = v32[1];
        v52 = *v32;
        v31 = v32[2];
        v30 = v32[3];

        v51 = v33;

        v34 = v31;
      }

      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v10 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v18 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v18 = v49;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v50)((*(v10 + 48) + v53 * v19), v18, v55);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v51;
      *v20 = v52;
      v20[1] = v21;
      v20[2] = v31;
      v20[3] = v30;
      ++*(v10 + 16);
      v8 = v46;
      v15 = v54;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v8 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v12, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v43;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1001B6350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5CA0, &qword_100557E60);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v43 = *v24;
      v44 = *v22;
      v26 = *(v24 + 24);
      v42 = *(v24 + 16);
      v41 = *(v24 + 32);
      v27 = *(v24 + 40);
      if ((v39 & 1) == 0)
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v43;
      *(v17 + 8) = v25;
      *(v17 + 16) = v42;
      *(v17 + 24) = v26;
      *(v17 + 32) = v41;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
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

void sub_1001B6658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B38D8, &qword_100555798);
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

void sub_1001B6918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for FMAccessoryProductImageRequest(0);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_10007EBC0(a3, a4);
  v42 = v8;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v38 = v4;
    v39 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v44 = *(v40 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        sub_1001C252C(v28, v11, type metadata accessor for FMAccessoryProductImageRequest);
        v43 = *(*(v12 + 56) + 8 * v26);
      }

      else
      {
        sub_1001C229C(v28, v11, type metadata accessor for FMAccessoryProductImageRequest);
        v43 = *(*(v12 + 56) + 8 * v26);
      }

      Hasher.init(_seed:)();
      type metadata accessor for URL();
      sub_10000E778(&qword_1006B5C78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
      sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v12 = v39;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v12 = v39;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_1001C252C(v11, *(v14 + 48) + v44 * v22, type metadata accessor for FMAccessoryProductImageRequest);
      *(*(v14 + 56) + 8 * v22) = v43;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v12 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v7 = v14;
}

void sub_1001B6D5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B1B00, &unk_1005541A0);
  v34 = v4;
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
        sub_1000072E4(v24, v35);
      }

      else
      {
        sub_100006004(v24, v35);
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
      sub_1000072E4(v35, (*(v7 + 56) + 32 * v15));
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

void sub_1001B7014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B1AB8, &unk_100554160);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_1000072E4(v22, v36);
      }

      else
      {
        sub_100006004(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

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
      sub_1000072E4(v36, (*(v7 + 56) + 32 * v15));
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

void sub_1001B72E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10007EBC0(&qword_1006B3938, &unk_100557E00);
  v39 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v37 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v39)
      {
        sub_1001C252C(v24, v7, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
        v40 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        sub_1001C229C(v24, v7, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
        v40 = *(*(v8 + 56) + 16 * v22);
      }

      Hasher.init(_seed:)();
      FMIPDevice.identifier.getter();
      String.hash(into:)();

      type metadata accessor for FMIPDeviceImageSize();
      sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
      dispatch thunk of Hashable.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v8 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v36;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1001C252C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      *(*(v10 + 56) + 16 * v18) = v40;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1001B76E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5CB8, &qword_100557EA0);
  v40 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
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
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v42 = *v24;
      v43 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v40 & 1) == 0)
      {

        v28 = v27;
        v29 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v41;
      *v17 = v42;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v39;
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
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1001B79B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5CC0, &qword_100557EA8);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v39 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      ++*(v7 + 16);
      v5 = v36;
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
}

void sub_1001B7C80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10007EBC0(&qword_1006B3968, &qword_100557E80);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
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

void sub_1001B805C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMUnknownItemCellViewModel(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10007EBC0(&qword_1006B3980, &unk_100557E90);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1001C252C(v27 + v28 * v24, v48, type metadata accessor for FMUnknownItemCellViewModel);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1001C229C(v29 + v28 * v24, v48, type metadata accessor for FMUnknownItemCellViewModel);
      }

      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1001C252C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for FMUnknownItemCellViewModel);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1001B8510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10007EBC0(a3, a4);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      v24 = Hasher._finalize()();
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
      *(*(v9 + 48) + v17) = v22;
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

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
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

void sub_1001B8798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10007EBC0(&qword_1006B3908, &unk_100557E70);
  v40 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v38 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v40)
      {
        sub_1001C252C(v24, v7, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
        v41 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        sub_1001C229C(v24, v7, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
        v41 = *(*(v8 + 56) + 16 * v22);
        v25 = v41;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
      sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
      dispatch thunk of Hashable.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v8 = v37;
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
      v8 = v37;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1001C252C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      *(*(v10 + 56) + 16 * v18) = v41;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1001B8B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10007EBC0(a3, a4);
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

void sub_1001B8E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10007EBC0(&qword_1006B3990, &qword_100555808);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1001C252C(v27 + v28 * v24, v48, type metadata accessor for FMModernPlatterButtonEntry);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1001C229C(v29 + v28 * v24, v48, type metadata accessor for FMModernPlatterButtonEntry);
      }

      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1001C252C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for FMModernPlatterButtonEntry);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1001B92D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B38F8, &unk_100557E30);
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
      v24 = *(*(v5 + 56) + v20);
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

void sub_1001B9578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B5C68, &qword_100557E28);
  v32 = v4;
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
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_46;
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

        if ((v32 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_44;
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
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v33 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v32 & 1) == 0)
      {
        sub_10009186C(v33, v21);
      }

      Hasher.init(_seed:)();
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v22 = 2;
        }

        else
        {
          if (v21 != 3)
          {
LABEL_24:
            Hasher._combine(_:)(4uLL);
            String.hash(into:)();
            goto LABEL_28;
          }

          v22 = 3;
        }
      }

      else if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_24;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      Hasher._combine(_:)(v22);
LABEL_28:
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

LABEL_46:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v33;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }
  }

LABEL_44:
  *v3 = v7;
}

void sub_1001B9890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMAnnotationIdentifier(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10007EBC0(&qword_1006B38F0, &qword_100557E20);
  v44 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_1001C252C(v25, v7, type metadata accessor for FMAnnotationIdentifier);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1001C229C(v25, v7, type metadata accessor for FMAnnotationIdentifier);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      Hasher.init(_seed:)();
      v30 = v27;
      sub_10017D71C(v45);
      v31 = Hasher._finalize()();
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
      sub_1001C252C(v30, *(v11 + 48) + v24 * v19, type metadata accessor for FMAnnotationIdentifier);
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

void sub_1001B9C14(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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
}

void sub_1001B9DC4(int64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

void sub_1001BA0E4(unint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for FMAccessoryProductImageRequest(0);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = a1;
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = v5;
    v13 = _HashTable.previousHole(before:)();
    v5 = v12;
    v14 = (v13 + 1) & v11;
    v15 = *(v4 + 72);
    v26 = a2 + 64;
    do
    {
      v28 = v5;
      v16 = v15;
      v17 = v15 * v10;
      sub_1001C229C(*(a2 + 48) + v15 * v10, v7, type metadata accessor for FMAccessoryProductImageRequest);
      Hasher.init(_seed:)();
      type metadata accessor for URL();
      sub_10000E778(&qword_1006B5C78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
      sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();
      sub_1001C21D8(v7, type metadata accessor for FMAccessoryProductImageRequest);
      v5 = v28;
      v19 = v18 & v11;
      if (v28 >= v14)
      {
        if (v19 < v14)
        {
          v8 = v26;
          v15 = v16;
          goto LABEL_4;
        }

        v15 = v16;
        if (v28 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v15 = v16;
        if (v19 >= v14 || v28 >= v19)
        {
LABEL_11:
          if (v15 * v28 < v17 || *(a2 + 48) + v15 * v28 >= (*(a2 + 48) + v17 + v15))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v28;
            v8 = v26;
          }

          else
          {
            v8 = v26;
            if (v15 * v28 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v28;
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * v5);
          v22 = (v20 + 8 * v10);
          if (v5 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v5 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v26;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_1001BA480(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v25 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1001C229C(*(a2 + 48) + v12 * v9, v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      Hasher.init(_seed:)();
      FMIPDevice.identifier.getter();
      String.hash(into:)();

      type metadata accessor for FMIPDeviceImageSize();
      sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      sub_1001C21D8(v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v25;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * a1);
          v20 = (v18 + 16 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1001BA7C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

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
}

void sub_1001BA970(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for FMUnknownItemCellViewModel(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

Swift::Int sub_1001BACB4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
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

void sub_1001BAE48(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v25 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1001C229C(*(a2 + 48) + v12 * v9, v6, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
      sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      sub_1001C21D8(v6, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v25;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * a1);
          v20 = (v18 + 16 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1001BB16C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = 2;
        }

        else
        {
          if (v11 != 3)
          {
LABEL_12:
            Hasher._combine(_:)(4uLL);

            String.hash(into:)();
            goto LABEL_16;
          }

          v12 = 3;
        }
      }

      else if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_12;
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      Hasher._combine(_:)(v12);
LABEL_16:
      v13 = Hasher._finalize()();
      result = sub_100091880(v10, v11);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_21;
      }

      if (v3 >= v14)
      {
LABEL_21:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001BB384(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000726C(a2, a3);
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
      sub_1001B5C98(v16, a4 & 1);
      v11 = sub_10000726C(a2, a3);
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
      sub_1001BDC24();
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

void sub_1001BB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1001B3964(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_1001BDD94();
      goto LABEL_7;
    }

    sub_1001B5F40(v20, a6 & 1);
    v29 = sub_1001B3964(a5);
    if ((v21 & 1) == (v30 & 1))
    {
      v17 = v29;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      sub_1001BCE84(v17, v14, a1, v32, v33, v34, v23);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 32 * v17);
  v25 = v24[2];
  v26 = v32;
  v27 = v33;
  *v24 = a1;
  v24[1] = v26;
  v28 = v34;
  v24[2] = v27;
  v24[3] = v28;
}

void sub_1001BB714(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000726C(a2, a3);
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
      sub_1001B6350(v16, a4 & 1);
      v11 = sub_10000726C(a2, a3);
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
      sub_1001BE03C();
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

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v25[2] = a1[2];
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

void sub_1001BB8CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000726C(a2, a3);
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
      sub_1001B8B9C(v16, a4 & 1, &qword_1006B5C60, &qword_100557E18);
      v11 = sub_10000726C(a2, a3);
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
      sub_1001BF8F0(&qword_1006B5C60, &qword_100557E18);
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
}

void sub_1001BBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000726C(a3, a4);
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
      sub_1001B6658(v18, a5 & 1);
      v13 = sub_10000726C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1001BE348();
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

void sub_1001BBC04(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a5;
  v7 = v5;
  v11 = type metadata accessor for FMAccessoryProductImageRequest(0);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1001B3C04(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1001BE4C0(a4, v28);
      goto LABEL_7;
    }

    sub_1001B6918(v19, a3 & 1, a4, v28);
    v25 = sub_1001B3C04(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001C229C(a2, v13, type metadata accessor for FMAccessoryProductImageRequest);
      sub_1001BCF58(v16, v13, a1, v22, type metadata accessor for FMAccessoryProductImageRequest, type metadata accessor for FMAccessoryProductImageRequest);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

_OWORD *sub_1001BBDEC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000726C(a2, a3);
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
      sub_1001BE6F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001B6D5C(v16, a4 & 1);
    v11 = sub_10000726C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100006060(v22);

    return sub_1000072E4(a1, v22);
  }

  else
  {
    sub_1001BD004(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1001BBF3C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1001B3A38(a2);
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
      sub_1001BE89C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1001B7014(v13, a3 & 1);
    v8 = sub_1001B3A38(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
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
    sub_100006060(v19);

    return sub_1000072E4(a1, v19);
  }

  else
  {
    sub_1001BD070(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1001BC07C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1001B3E04(a3);
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
      sub_1001BEA1C();
      goto LABEL_7;
    }

    sub_1001B72E4(v18, a4 & 1);
    v23 = sub_1001B3E04(a3);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001C229C(a3, v12, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      sub_1001BD0D8(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1001BC22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_10000726C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1001B76E4(v22, a7 & 1);
      v17 = sub_10000726C(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1001BEC64();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[2];
    v30 = v28[3];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v31 = (v27[6] + 16 * v17);
  *v31 = a5;
  v31[1] = a6;
  v32 = (v27[7] + 32 * v17);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = a4;
  v33 = v27[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v34;
}

void sub_1001BC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_10000726C(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_1001B79B8(v22, a5 & 1);
      v17 = sub_10000726C(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1001BEDF8();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 16 * v17);
  *v29 = a3;
  v29[1] = a4;
  v30 = v27[7] + 32 * v17;
  *v30 = a1;
  *(v30 + 8) = a2;
  *(v30 + 16) = a6;
  *(v30 + 24) = a7;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

void sub_1001BC57C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001B3964(a2);
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
      sub_1001BEF7C();
      goto LABEL_7;
    }

    sub_1001B7C80(v17, a3 & 1);
    v21 = sub_1001B3964(a2);
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
      sub_1001BD194(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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

uint64_t sub_1001BC748(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001B3964(a2);
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
      sub_1001BF1FC();
      goto LABEL_7;
    }

    sub_1001B805C(v17, a3 & 1);
    v24 = sub_1001B3964(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1001BD24C(v14, v11, a1, v20);
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
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for FMUnknownItemCellViewModel(0) - 8) + 72) * v14;

  return sub_1001C2238(a1, v22);
}

void sub_1001BC930(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1001B3D38(a3);
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
      sub_1001BF688();
      goto LABEL_7;
    }

    sub_1001B8798(v18, a4 & 1);
    v24 = sub_1001B3D38(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001C229C(a3, v12, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      sub_1001BD380(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  v27 = *v22;
  *v22 = a1;
  v22[1] = a2;

  v23 = v27;
}

void sub_1001BCAF0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001B40E0(a2, a3);
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
      sub_1001B9578(v16, a4 & 1);
      v11 = sub_1001B40E0(a2, a3);
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
      sub_1001BFEE0();
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

  sub_10009186C(a2, a3);
}

void sub_1001BCC70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1001B4074(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1001C0050();
      goto LABEL_7;
    }

    sub_1001B9890(v16, a3 & 1);
    v22 = sub_1001B4074(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001C229C(a2, v10, type metadata accessor for FMAnnotationIdentifier);
      sub_1001BCF58(v13, v10, a1, v19, type metadata accessor for FMAnnotationIdentifier, type metadata accessor for FMAnnotationIdentifier);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

unint64_t sub_1001BCE3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1001BCE84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1001BCF58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1001C252C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_1001BD004(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000072E4(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1001BD070(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000072E4(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1001BD0D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  result = sub_1001C252C(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
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

uint64_t sub_1001BD194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_1001BD24C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for FMUnknownItemCellViewModel(0);
  result = sub_1001C252C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FMUnknownItemCellViewModel);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1001BD33C(unint64_t result, char a2, uint64_t a3, void *a4)
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

uint64_t sub_1001BD380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  result = sub_1001C252C(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
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

void sub_1001BD468()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B38A8, &qword_100555770);
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

void sub_1001BD5D0()
{
  v1 = v0;
  v33 = type metadata accessor for FMIPPlaySoundChannels();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B5CC8, &qword_100557EB0);
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

void sub_1001BD850()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B3940, &qword_1005557D8);
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

void sub_1001BD9B8()
{
  v1 = v0;
  v2 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B38B8, &qword_100557E10);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001C229C(*(v4 + 56) + v26, v30, type metadata accessor for FMBeaconSharingModuleEntry);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1001C252C(v25, *(v27 + 56) + v26, type metadata accessor for FMBeaconSharingModuleEntry);
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

        v1 = v29;
        v6 = v32;
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
}

void sub_1001BDC24()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5C80, &qword_100557E48);
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

void sub_1001BDD94()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3950, &qword_100557E40);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v43 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v16;
    v39 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v41;
        v22 = v42;
        v23 = *(v42 + 72) * v20;
        v24 = v40;
        (*(v42 + 16))(v40, *(v5 + 48) + v23, v41);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = (v25 + 32 * v20);
        v28 = v27[1];
        v44 = *v27;
        v29 = v27[2];
        v30 = v27[3];
        v31 = v43;
        (*(v22 + 32))(*(v43 + 48) + v23, v24, v21);
        v32 = (*(v31 + 56) + v26);
        v5 = v39;
        *v32 = v44;
        v32[1] = v28;
        v32[2] = v29;
        v32[3] = v30;

        v33 = v29;
        v16 = v38;
        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v43;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v19 = *(v35 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
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

void sub_1001BE03C()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5CA0, &qword_100557E60);
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
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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

void sub_1001BE1EC()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5DA8, &qword_100557F68);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void sub_1001BE348()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B38D8, &qword_100555798);
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

void sub_1001BE4C0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for FMAccessoryProductImageRequest(0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(a1, a2);
  v9 = *v2;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v28 = v5;
    v12 = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v13)
    {
      memmove(v12, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = *(v9 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(v29 + 72) * v24;
        sub_1001C229C(*(v9 + 48) + v25, v8, type metadata accessor for FMAccessoryProductImageRequest);
        v26 = *(*(v9 + 56) + 8 * v24);
        sub_1001C252C(v8, *(v11 + 48) + v25, type metadata accessor for FMAccessoryProductImageRequest);
        *(*(v11 + 56) + 8 * v24) = v26;
        v27 = v26;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v28;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v11;
  }
}

void sub_1001BE6F8()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B1B00, &unk_1005541A0);
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
        sub_100006004(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000072E4(v25, (*(v4 + 56) + v22));
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

void sub_1001BE89C()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B1AB8, &unk_100554160);
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
        sub_100006004(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000072E4(v20, (*(v4 + 56) + 32 * v17));
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

void sub_1001BEA1C()
{
  v1 = v0;
  v2 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3938, &unk_100557E00);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
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
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1001C229C(*(v6 + 48) + v22, v5, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
        v21 *= 16;
        v23 = *(v8 + 48);
        v26 = *(*(v6 + 56) + v21);
        sub_1001C252C(v5, v23 + v22, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
        *(*(v8 + 56) + v21) = v26;
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

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1001BEC64()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5CB8, &qword_100557EA0);
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
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;

        v29 = v25;
        v30 = v26;
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

void sub_1001BEDF8()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5CC0, &qword_100557EA8);
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
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;
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

void sub_1001BEF7C()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3968, &qword_100557E80);
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

void sub_1001BF1FC()
{
  v1 = v0;
  v2 = type metadata accessor for FMUnknownItemCellViewModel(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3980, &unk_100557E90);
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
        sub_1001C229C(*(v5 + 56) + v26, v35, type metadata accessor for FMUnknownItemCellViewModel);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1001C252C(v25, *(v27 + 56) + v26, type metadata accessor for FMUnknownItemCellViewModel);
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

void sub_1001BF53C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10007EBC0(a1, a2);
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
}

void sub_1001BF688()
{
  v1 = v0;
  v2 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3908, &unk_100557E70);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
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
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1001C229C(*(v6 + 48) + v22, v5, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
        v21 *= 16;
        v23 = *(v8 + 48);
        v28 = *(*(v6 + 56) + v21);
        sub_1001C252C(v5, v23 + v22, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
        v24 = v28;
        *(*(v8 + 56) + v21) = v28;
        v25 = v24;
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

        v1 = v27;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1001BF8F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10007EBC0(a1, a2);
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

void sub_1001BFA4C()
{
  v1 = v0;
  v2 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B3990, &qword_100555808);
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
        sub_1001C229C(*(v5 + 56) + v26, v35, type metadata accessor for FMModernPlatterButtonEntry);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1001C252C(v25, *(v27 + 56) + v26, type metadata accessor for FMModernPlatterButtonEntry);
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

void sub_1001BFD78()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B38F8, &unk_100557E30);
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

void sub_1001BFEE0()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B5C68, &qword_100557E28);
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
        sub_10009186C(v19, *(&v19 + 1));
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

void sub_1001C0050()
{
  v1 = v0;
  v2 = type metadata accessor for FMAnnotationIdentifier(0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B38F0, &qword_100557E20);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
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
        sub_1001C229C(*(v5 + 48) + v21, v4, type metadata accessor for FMAnnotationIdentifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1001C252C(v4, *(v7 + 48) + v21, type metadata accessor for FMAnnotationIdentifier);
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

void sub_1001C028C(uint64_t (*a1)(char *, __int128 *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1001C0650(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1001C040C(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1001C040C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, __int128 *, __n128))
{
  v29 = a4;
  v24 = a2;
  v25 = a1;
  v5 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v26 = 0;
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v30 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v7 << 6);
    v19 = v30;
    v20 = v27;
    sub_1001C229C(v30[6] + *(v28 + 72) * v18, v27, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v32 = *(v19[7] + 16 * v18);

    v21 = v33;
    v22 = (v29)(v20, &v32);

    sub_1001C21D8(v20, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v33 = v21;
    if (v21)
    {
      return;
    }

    v13 = v31;
    if (v22)
    {
      *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1001C06E0(v25, v24, v26, v30);
        return;
      }
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_16;
    }

    v17 = v9[v7];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v31 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1001C0650(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, __int128 *, __n128))
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

    sub_1001C040C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_1001C06E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v34 = &v33 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10007EBC0(&qword_1006B3938, &unk_100557E00);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v33 = a4;
  v18 = v34;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v38 = *(v35 + 72);
    sub_1001C229C(v23 + v38 * v22, v18, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v39 = *(a4[7] + 16 * v22);
    sub_1001C252C(v18, v10, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    Hasher.init(_seed:)();

    FMIPDevice.identifier.getter();
    String.hash(into:)();

    type metadata accessor for FMIPDeviceImageSize();
    sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v14 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      a4 = v33;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    a4 = v33;
LABEL_26:
    *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1001C252C(v10, *(v14 + 48) + v27 * v38, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    *(*(v14 + 56) + 16 * v27) = v39;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v37;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v37 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1001C0AA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMAnnotationIdentifier(0);
  v38 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v36 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  sub_10007EBC0(&qword_1006B38F0, &qword_100557E20);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  v36 = a4;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v23 = v36;
    v22 = v37;
    v24 = *(v36 + 48);
    v40 = *(v38 + 72);
    sub_1001C229C(v24 + v40 * v21, v37, type metadata accessor for FMAnnotationIdentifier);
    v25 = *(*(v23 + 56) + 8 * v21);
    sub_1001C252C(v22, v10, type metadata accessor for FMAnnotationIdentifier);
    Hasher.init(_seed:)();
    v26 = v25;
    sub_10017D71C(v41);
    result = Hasher._finalize()();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_1001C252C(v10, *(v14 + 48) + v30 * v40, type metadata accessor for FMAnnotationIdentifier);
    *(*(v14 + 56) + 8 * v30) = v26;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001C0DD8(uint64_t a1, uint64_t a2)
{
  if (static FMIPDevice.== infix(_:_:)())
  {
    type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
    type metadata accessor for FMIPDeviceImageSize();
    sub_10000E778(&qword_1006B5C58, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1001C0EE4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10007EBC0(&qword_1006B5D30, &unk_100557EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - v4;
  v6 = sub_10007EBC0(&qword_1006B5D38, &qword_100563010);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_10007EBC0(&qword_1006B5D40, &qword_100557F00);
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  if ((v1 - 1) > 2)
  {
    v14 = "DEFAULT_ACCESSORY_HERO";
    top = 15.0;
    left = 15.0;
    bottom = 15.0;
    right = 15.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    v14 = "Failed to decode image at ";
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v21 = sub_1003DE3DC(0xD000000000000016, (v14 | 0x8000000000000000), 6778480, 0xE300000000000000, v17, v18, v19, v20, v33);
  if (v21 && (v22 = v21, [v21 size], v24 = right + left + v23, objc_msgSend(v22, "size"), v26 = bottom + top + v25, objc_msgSend(v22, "scale"), v28 = v27, v37.width = v24, v37.height = v26, UIGraphicsBeginImageContextWithOptions(v37, 0, v28), objc_msgSend(v22, "drawAtPoint:", left, top), v29 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), v22, v29))
  {
    v36 = v29;
    v30 = v29;
    Just.init(_:)();
    sub_1001C23CC();
    Just.setFailureType<A>(to:)();
    (*(v34 + 8))(v8, v6);
    sub_100004098(&qword_1006B5D48, &qword_1006B5D40, &qword_100557F00, &protocol conformance descriptor for Result<A, B>.Publisher);
    v31 = Publisher.eraseToAnyPublisher()();

    (*(v35 + 8))(v11, v9);
  }

  else
  {
    sub_1001C23CC();
    Fail.init(error:)();
    sub_100004098(&unk_1006C39B0, &qword_1006B5D30, &unk_100557EF0, &protocol conformance descriptor for Fail<A, B>);
    v31 = Publisher.eraseToAnyPublisher()();
    (*(v3 + 8))(v5, v2);
  }

  return v31;
}

void sub_1001C1304(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v116 = a1;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  *&v118 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v4 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B5C40, &qword_100557DE8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = &v82 - v8;
  v9 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v110 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v98 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v10;
  __chkstk_darwin(v11);
  v119 = &v82 - v12;
  v13 = sub_10007EBC0(&qword_1006B5C48, &unk_100557DF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v82 - v17;
  __chkstk_darwin(v18);
  v104 = &v82 - v19;
  v20 = type metadata accessor for FMIPDevice();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v95 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v22;
  v24 = __chkstk_darwin(v23);
  v26 = &v82 - v25;
  v27 = *(v21 + 2);
  v107 = a2;
  v105 = v28;
  v94 = v21 + 16;
  v93 = v27;
  (v27)(&v82 - v25, a2, v24);
  LOBYTE(a2) = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v30 = type metadata accessor for Logger();
    sub_100005B14(v30, qword_1006D4630);
    v31 = Logger.logObject.getter();
    v32 = os_log_type_enabled(v31, a2);
    v106 = v6;
    v103 = v21;
    if (v32)
    {
      v33 = a2;
      v34 = v4;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v123 = v36;
      *v35 = 136315138;
      aBlock = 0;
      v121 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      aBlock = 0xD000000000000022;
      v121 = 0x8000000100584A50;
      v37._countAndFlagsBits = FMIPDevice.identifier.getter();
      String.append(_:)(v37);

      v38 = sub_100005B4C(aBlock, v121, &v123);

      *(v35 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v33, "FMProductAssetProvider: %s", v35, 0xCu);
      sub_100006060(v36);

      v4 = v34;
      v21 = v103;
    }

    (*(v21 + 1))(v26, v105);
    v39 = v108;
    v40 = swift_beginAccess();
    v41 = *(v39 + 24);
    __chkstk_darwin(v40);
    *(&v82 - 2) = v107;

    sub_1001C028C(sub_1001C1FF4, (&v82 - 4), v41);
    v26 = v42;

    v43 = 0;
    v44 = *(v26 + 8);
    v84 = v26 + 64;
    v86 = v26;
    v45 = 1 << v26[32];
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    a2 = v46 & v44;
    v83 = (v45 + 63) >> 6;
    v47 = (v7 + 56);
    v117 = (v7 + 48);
    v91 = v115 + 7;
    v90 = v21 + 32;
    v89 = v122;
    v88 = (v118 + 8);
    v87 = (v4 + 8);
    v97 = v15;
    v92 = (v7 + 56);
    if ((v46 & v44) != 0)
    {
      break;
    }

LABEL_8:
    if (v83 <= v43 + 1)
    {
      v49 = v43 + 1;
    }

    else
    {
      v49 = v83;
    }

    v6 = v106;
    while (1)
    {
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v48 >= v83)
      {
        *&v118 = v49 - 1;
        v56 = *v47;
        (*v47)(v15, 1, 1, v106);
        a2 = 0;
        goto LABEL_16;
      }

      a2 = *&v84[8 * v48];
      ++v43;
      if (a2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  while (1)
  {
    v48 = v43;
    v6 = v106;
LABEL_15:
    v50 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v51 = v50 | (v48 << 6);
    v52 = v86;
    v53 = v119;
    sub_1001C229C(*(v86 + 6) + *(v110 + 72) * v51, v119, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v54 = *(v52 + 7);
    v55 = *(v6 + 48);
    v118 = *(v54 + 16 * v51);
    sub_1001C252C(v53, v15, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    *&v15[v55] = v118;
    v56 = *v47;
    (*v47)(v15, 0, 1, v6);

    *&v118 = v48;
LABEL_16:
    v57 = *v117;
    v58 = 1;
    if ((*v117)(v15, 1, v6) != 1)
    {
      v59 = *(v6 + 48);
      v60 = v85;
      sub_1001C252C(v15, v85, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      v61 = swift_allocObject();
      *(v61 + 16) = *&v15[v59];
      v62 = &v109[*(v6 + 48)];
      sub_1001C252C(v60, v109, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      v58 = 0;
      *v62 = sub_1001C2120;
      *(v62 + 1) = v61;
    }

    v63 = v109;
    v56(v109, v58, 1, v6);
    v64 = v104;
    sub_100035318(v63, v104, &qword_1006B5C48, &unk_100557DF0);
    if (v57(v64, 1, v6) == 1)
    {
      break;
    }

    v65 = (v64 + *(v6 + 48));
    v66 = *v65;
    v113 = v65[1];
    v114 = v66;
    v112 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext;
    v67 = v119;
    sub_1001C252C(v64, v119, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v115 = static OS_dispatch_queue.main.getter();
    v111 = swift_allocObject();
    swift_weakInit();
    v68 = v95;
    v69 = v105;
    v93(v95, v107, v105);
    v70 = v98;
    sub_1001C229C(v67, v98, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v71 = v103;
    v72 = (v103[80] + 24) & ~v103[80];
    v73 = (v96 + *(v110 + 80) + v72) & ~*(v110 + 80);
    v7 = (v91 + v73) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = v116;
    v75 = v74 + v72;
    v15 = v97;
    (*(v71 + 4))(v75, v68, v69);
    sub_1001C252C(v70, v74 + v73, v112);
    *(v74 + v7) = v111;
    v76 = (v74 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
    v4 = v113;
    *v76 = v114;
    v76[1] = v4;
    v122[2] = sub_1001C2014;
    v122[3] = v74;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122[0] = sub_100004AE4;
    v122[1] = &unk_10062C798;
    v77 = _Block_copy(&aBlock);

    v78 = v99;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v26 = sub_10000E778(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v21 = v101;
    v79 = v102;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v80 = v115;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v81 = v77;
    v47 = v92;
    _Block_release(v81);

    (*v88)(v21, v79);
    (*v87)(v78, v100);
    sub_1001C21D8(v119, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    v43 = v118;
    if (!a2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001C2014()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1001B33C0(v7, v0 + v2, v0 + v5, v8, v10, v11);
}

uint64_t sub_1001C2124(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1001C2164(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1001C21D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C2238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMUnknownItemCellViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C229C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C238C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001C23CC()
{
  result = qword_1006B5CF0;
  if (!qword_1006B5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5CF0);
  }

  return result;
}

uint64_t sub_1001C2420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C0EE4(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1001C2454(void (*a1)(char *), uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1001B196C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1001C2504@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001B267C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001C252C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for FMProductAssetProvider.AssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMProductAssetProvider.AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001C26E8()
{
  result = qword_1006B5DB0;
  if (!qword_1006B5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5DB0);
  }

  return result;
}

double sub_1001C2764()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle2;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = sub_100039388(2);
  v4 = UIFontTextStyleSubheadline;
  v5 = [v0 preferredFontForTextStyle:v4];

  v6 = UIFontTextStyleHeadline;
  v7 = [v0 preferredFontForTextStyle:v6];

  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightSemibold;
  v9 = UIFontWeightTrait;
  v10 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
  v11 = sub_10002ACDC(v10);

  v12 = sub_100039388(0x8000);

  v13 = UIFontTextStyleBody;
  v14 = [v0 preferredFontForTextStyle:v13];

  v15 = sub_100039388(0x8000);
  v16 = UIFontTextStyleCaption2;
  v17 = [v0 preferredFontForTextStyle:v16];

  qword_1006B5DB8 = v3;
  unk_1006B5DC0 = v5;
  qword_1006B5DC8 = v12;
  qword_1006B5DD0 = v15;
  qword_1006B5DD8 = v17;
  unk_1006B5DE0 = xmmword_100557FF0;
  unk_1006B5DF0 = xmmword_100558000;
  unk_1006B5E00 = xmmword_100558010;
  result = 14.0;
  *&qword_1006B5E10 = xmmword_100558020;
  qword_1006B5E20 = 0x4010000000000000;
  return result;
}

void sub_1001C29D8()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity;
  if (v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity])
  {
    v2 = &selRef_startAnimating;
  }

  else
  {
    v2 = &selRef_stopAnimating;
  }

  [*&v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator] *v2];
  [*&v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator] setHidden:(v0[v1] & 1) == 0];
  if (v0[v1])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v8[4] = sub_1001C41CC;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100004AE4;
  v8[3] = &unk_10062CA30;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v4 animateWithDuration:v6 animations:0.2];
  _Block_release(v6);
}

id sub_1001C2B3C(char a1)
{
  v3 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView;
  *&v1[v4] = [objc_allocWithZone(SFAdjustedImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator;
  *&v1[v7] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *&v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage] = 0;
  v8 = &v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceName];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwner];
  *v9 = 0;
  v9[1] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_usesB389Adjustments] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMActionLandingView_isItem] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FMActionLandingView();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001C2D24();
  sub_1001C31D8();
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  return v10;
}

void sub_1001C2D24()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMActionLandingView: SFAdjustedImageView %@", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760, &qword_100552DB0);
  }

  [v2 setPreservesSuperviewLayoutMargins:1];
  v9 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator] setHidden:1];
  v28 = v9;
  [*&v2[v9] setAlpha:0.0];
  v27 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView] setContentMode:1];
  v10 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel;
  v11 = qword_1006AEAE0;
  v12 = *&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setFont:qword_1006B5DC8];

  [*&v2[v10] setAdjustsFontForContentSizeCategory:1];
  [*&v2[v10] setNumberOfLines:0];
  v13 = *&v2[v10];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 labelColor];
  [v15 setTextColor:v16];

  [*&v2[v10] setTextAlignment:1];
  [*&v2[v10] setAdjustsFontForContentSizeCategory:1];
  v17 = *&v2[v10];
  v18 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityIdentifier:v18];

  v19 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel] setFont:qword_1006B5DD0];
  [*&v2[v19] setAdjustsFontForContentSizeCategory:1];
  [*&v2[v19] setNumberOfLines:0];
  v20 = *&v2[v19];
  v21 = [v14 secondaryLabelColor];
  [v20 setTextColor:v21];

  [*&v2[v19] setTextAlignment:1];
  [*&v2[v19] setAdjustsFontForContentSizeCategory:1];
  v22 = *&v2[v19];
  v23 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityIdentifier:v23];

  v24 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView] addSubview:*&v2[v27]];
  [*&v2[v24] addSubview:*&v2[v10]];
  [*&v2[v24] addSubview:*&v2[v19]];
  v25 = *&v2[v24];
  v26 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v26];

  [v2 addSubview:*&v2[v24]];
  [v2 addSubview:*&v2[v28]];
  sub_1001C3DC0();
}

void sub_1001C31D8()
{
  if (qword_1006AEAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006B5DE8;
  v2 = unk_1006B5DF0;
  v3 = [objc_opt_self() mainScreen];
  v4 = [v3 currentMode];

  if (v4)
  {
    [v4 size];
    v6 = v5;

    if (v6 == 1136.0)
    {
      v7 = *&v1;
    }

    else
    {
      v7 = v2;
    }

    v8 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1005521F0;
    v11 = [*&v0[v8] topAnchor];
    v12 = [v0 safeAreaLayoutGuide];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:v7];
    *(v10 + 32) = v14;
    v15 = [*&v0[v8] bottomAnchor];
    v16 = [v0 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v10 + 40) = v17;
    v18 = [*&v0[v8] leadingAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 leadingAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v10 + 48) = v21;
    v22 = [*&v0[v8] trailingAnchor];
    v23 = [v0 layoutMarginsGuide];
    v24 = [v23 trailingAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v10 + 56) = v25;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:isa];

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100552EE0;
    v28 = [*&v0[v9] centerXAnchor];
    v29 = [v0 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v27 + 32) = v30;
    v31 = [*&v0[v9] centerYAnchor];
    v32 = [*&v0[v8] centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v27 + 40) = v33;
    v34 = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:v34];

    sub_1001C3678();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C3678()
{
  if (qword_1006AEAE0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1006B5E10;
  v1 = *algn_1006B5E18;
  v3 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView;
  [*(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel;
  [*(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel;
  [*(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100552EF0;
  v6 = [*(v0 + v3) topAnchor];
  v7 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView;
  v8 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView) topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [*(v0 + v3) leadingAnchor];
  v11 = [*(v0 + v7) leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = [*(v0 + v3) trailingAnchor];
  v14 = [*(v0 + v7) trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v5 + 48) = v15;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  v18 = [*(v0 + v4) topAnchor];
  v19 = [*(v0 + v3) bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v2];

  *(v17 + 32) = v20;
  v21 = [*(v0 + v4) leadingAnchor];
  v22 = [*(v0 + v7) leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [*(v0 + v4) trailingAnchor];
  v25 = [*(v0 + v7) trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 48) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:v27];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1005521F0;
  v29 = [*(v0 + v42) topAnchor];
  v30 = [*(v0 + v4) bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v1];

  *(v28 + 32) = v31;
  v32 = [*(v0 + v42) leadingAnchor];
  v33 = [*(v0 + v7) leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v28 + 40) = v34;
  v35 = [*(v0 + v42) trailingAnchor];
  v36 = [*(v0 + v7) trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 48) = v37;
  v38 = [*(v0 + v42) bottomAnchor];
  v39 = [*(v0 + v7) bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v28 + 56) = v40;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:v43];
}

void sub_1001C3CC4(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMActionLandingView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC6FindMy19FMActionLandingView_heightConstraint];
  if (v3)
  {
    v4 = v3;
    [v2 frame];
    Height = CGRectGetHeight(v10);
    [v2 safeAreaInsets];
    v7 = Height - v6;
    [v2 safeAreaInsets];
    [v4 setConstant:v7 - v8];
  }
}

void sub_1001C3DC0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_usesB389Adjustments] == 1)
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceStyle];

    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 URLForResource:v9 withExtension:0];

    if (v10)
    {
      if (v7 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = *&v0[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView];
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      [v12 updateViewForAssetType:v11 adjustmentsURL:v14];

      (*(v2 + 8))(v5, v1);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100005B14(v16, qword_1006D4630);
      v21 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v21, v17, "FMActionLandingView: updateImageStyle no adjustment", v18, 2u);
      }

      v19 = v21;
    }
  }
}

id sub_1001C40B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMActionLandingView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001C41CC()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView) setAlpha:*(v0 + 24)];
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator);
  v3 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity))
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

void sub_1001C4244()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceContainerView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView;
  *(v0 + v2) = [objc_allocWithZone(SFAdjustedImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy19FMActionLandingView_activityIndicator;
  *(v0 + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage) = 0;
  v6 = (v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwner);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_usesB389Adjustments) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001C43A0(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithData:isa scale:v4];

  *a1 = v7;
}

void sub_1001C4454(void *a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1[2];

      _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceImageCache: preloadImages for %ld", v9, 0xCu);

      v10 = a1[2];
      if (!v10)
      {
        break;
      }

      goto LABEL_4;
    }

    v10 = a1[2];
    if (!v10)
    {
      break;
    }

LABEL_4:
    v11 = objc_opt_self();
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v28 = v13;
    v29 = v11;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v27 = *(v12 + 56);
    v30 = v12;
    v15 = (v12 - 8);
    a1 = _swiftEmptyArrayStorage;
    v13(v5, v14, v2);
    while (1)
    {
      v16 = [v29 mainScreen];
      [v16 scale];

      v17 = static FMIPDeviceImageCacheRequest.allRequests(for:scale:)();
      (*v15)(v5, v2);
      v18 = *(v17 + 16);
      v3 = a1[2];
      v19 = v3 + v18;
      if (__OFADD__(v3, v18))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= a1[3] >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 <= v19)
        {
          v21 = v3 + v18;
        }

        else
        {
          v21 = v3;
        }

        a1 = sub_10008BDC4(isUniquelyReferenced_nonNull_native, v21, 1, a1);
        if (*(v17 + 16))
        {
LABEL_17:
          v3 = a1[2];
          v22 = (a1[3] >> 1) - v3;
          type metadata accessor for FMIPDeviceImageCacheRequest();
          if (v22 < v18)
          {
            goto LABEL_25;
          }

          swift_arrayInitWithCopy();

          if (v18)
          {
            v23 = a1[2];
            v24 = __OFADD__(v23, v18);
            v25 = v23 + v18;
            if (v24)
            {
              goto LABEL_26;
            }

            a1[2] = v25;
          }

          goto LABEL_6;
        }
      }

      if (v18)
      {
        goto LABEL_24;
      }

LABEL_6:
      v14 += v27;
      if (!--v10)
      {
        goto LABEL_22;
      }

      v28(v5, v14, v2);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_22:
  dispatch thunk of FMImageCache.preload(requests:)();
}

uint64_t sub_1001C47FC()
{
  v0 = FMIPDeviceImageCache.deinit();
  sub_10005CD20(v0 + qword_1006B5EB0);

  return swift_deallocClassInstance();
}

void sub_1001C484C(uint64_t a1, uint64_t a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1001C4884(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v3 = *a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5220(v3, 0);
      sub_1003F02D8(v3, a1);
      swift_unknownObjectRelease();

      sub_1000C522C(v3, 0);
    }
  }
}

uint64_t sub_1001C4954(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      v9 = String.init<A>(describing:)();
      v11 = sub_100005B4C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error during donation - %s", v7, 0xCu);
      sub_100006060(v8);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001C4B04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      v9 = String.init<A>(describing:)();
      v11 = sub_100005B4C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error during donation - %s", v7, 0xCu);
      sub_100006060(v8);
    }

    else
    {
    }
  }

  return a2(a1);
}

void sub_1001C4D94()
{
  sub_1000391A0();
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphAndLabelView];
  [v0 addSubview:v1];
  v2 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:2];

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  v5 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphView];
  [v5 setContentMode:4];
  v6 = [objc_opt_self() whiteColor];
  [v5 setTintColor:v6];

  [v5 setImage:v17];
  [v1 addSubview:v5];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_label];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setTextAlignment:*&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_textAlignment]];
  if (v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_isBackgroundColor] == 1)
  {
    v9 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_color];
    v10 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v9;
    v11 = v9;

    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v12 = [v0 traitCollection];
    v13 = sub_100356E0C(v12);

    [v7 setTextColor:v13];
  }

  else
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v14 = [v0 traitCollection];
    v15 = sub_100356E0C(v14);

    v16 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v15;

    [v7 setTextColor:*&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_color]];
  }

  [v1 addSubview:v7];
}

void sub_1001C510C()
{
  sub_100039524();
  v53[3] = &type metadata for SolariumFeatureFlag;
  v53[4] = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v53);
  v2 = 16.0;
  if ((v1 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v2 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphAndLabelView];
  *(inited + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphView];
  *(inited + 40) = v5;
  v52 = v0;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_label];
  *(inited + 48) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  for (i = v8; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v12 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_15;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v15 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v51 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EE0;
  v18 = [v9 leadingAnchor];
  v19 = [v8 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v2];

  *(v17 + 32) = v20;
  v21 = [v9 centerYAnchor];
  v22 = [v8 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [v10 leadingAnchor];
  v27 = [v9 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v2 * 0.5];

  *(v25 + 32) = v28;
  v29 = [v10 trailingAnchor];
  v30 = [v8 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v2];

  *(v25 + 40) = v31;
  v32 = [v10 topAnchor];
  v33 = [v8 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v25 + 48) = v34;
  v35 = [v10 bottomAnchor];
  v36 = [v8 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v25 + 56) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100552EF0;
  v40 = [v8 topAnchor];
  v41 = [v52 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v43) = v53[0];
  [v42 setPriority:v43];
  *(v39 + 32) = v42;
  v44 = [v8 centerXAnchor];
  v45 = [v52 centerXAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v39 + 40) = v46;
  v47 = [v8 bottomAnchor];
  v48 = [v52 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-15.0];

  *(v39 + 48) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v50];
}

void sub_1001C58E0()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_color);
}

id sub_1001C5954(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMSingleLineIconPlatterButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001C5A2C()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphAndLabelView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_glyphView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001C5AF4()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v0];

  qword_1006B5F68 = v1;
}

uint64_t sub_1001C5C08(uint64_t a1)
{
  swift_getObjectType();
  sub_10017EE08(a1, v7);
  if (!v8)
  {
    sub_10000D2C0(v7);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*&v6[OBJC_IVAR____TtC6FindMy11FMRecipient_handle] == *(v1 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle) && *&v6[OBJC_IVAR____TtC6FindMy11FMRecipient_handle + 8] == *(v1 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle + 8))
  {

    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

double sub_1001C5D64(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1001C5E7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C88EC(*a1);
  *a2 = result;
  return result;
}

void sub_1001C5EAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C646E6168;
  v5 = 0xE800000000000000;
  v6 = 0x656D614E6C6C7566;
  if (v2 != 5)
  {
    v6 = 0x666C6573794D7369;
    v5 = 0xE800000000000000;
  }

  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E796C696D6166;
  if (v2 != 3)
  {
    v8 = 0x656D616E6B63696ELL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v10 = 0x6D614E6E65766967;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1001C5F8C()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x656D614E6C6C7566;
  if (v1 != 5)
  {
    v3 = 0x666C6573794D7369;
  }

  v4 = 0x614E796C696D6166;
  if (v1 != 3)
  {
    v4 = 0x656D616E6B63696ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x6D614E6E65766967;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001C6068@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C88EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001C60A8(uint64_t a1)
{
  v2 = sub_1001C73C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C60E4(uint64_t a1)
{
  v2 = sub_1001C73C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001C6120(void *a1)
{
  v3 = v1;
  v5 = sub_10007EBC0(&qword_1006B5FE8, &qword_100558188);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - v7;
  sub_1000244BC(a1, a1[3]);
  sub_1001C73C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v11 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_label);
    v10 = 1;
    sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
    sub_1001C7414(&qword_1006B5FF0, &qword_1006AF8F0, &qword_100555D20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName);
    v10 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName);
    v10 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_nickname);
    v10 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_fullName);
    v10 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself);
    v10 = 6;
    sub_10007EBC0(&qword_1006B14D8, &qword_100553900);
    sub_1001C7414(&qword_1006B5FF8, &qword_1006B14D8, &qword_100553900);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
  }
}