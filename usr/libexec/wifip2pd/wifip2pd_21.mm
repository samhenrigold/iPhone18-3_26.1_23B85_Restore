Swift::Int sub_1001947DC(Swift::Int result, uint64_t a2)
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
      Hasher.init(_seed:)();
      String.hash(into:)();

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
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

Swift::Int sub_1001949C4(Swift::Int result, uint64_t a2)
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
      Hasher.init(_seed:)();
      String.hash(into:)();

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
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

Swift::Int sub_100194F64(Swift::Int result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v12 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      a3(v12);
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v10)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + v4);
        v16 = (v14 + v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v4);
        v19 = (v17 + 32 * v7);
        if (v4 != v7 || v18 >= v19 + 2)
        {
          v11 = v19[1];
          *v18 = *v19;
          v18[1] = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

Swift::Int sub_10019511C(Swift::Int result, uint64_t a2)
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
      Hasher.init(_seed:)();
      String.hash(into:)();

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
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

Swift::Int sub_100195414(Swift::Int result, uint64_t a2)
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
      Hasher.init(_seed:)();
      String.hash(into:)();

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
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

void sub_100195788()
{
  v1 = v0;
  sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
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
        sub_100002B30(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100085188(v25, (*(v4 + 56) + v22));
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

void sub_10019592C()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3C0, &unk_100492340);
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
        v18 = *(v2 + 48) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        LOBYTE(v18) = *(v18 + 33);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 33) = v18;
        *(*(v4 + 56) + 8 * v17) = v24;

        v26 = v24;
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

void sub_100195AC4()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F300, &unk_100492260);
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
        v19 = *(v2 + 48) + 40 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        LOBYTE(v19) = *(v19 + 33);
        v17 *= 16;
        v25 = *(v2 + 56) + v17;
        v26 = *v25;
        LOBYTE(v25) = *(v25 + 8);
        v27 = *(v4 + 48) + v18;
        *v27 = v21;
        *(v27 + 8) = v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v23;
        *(v27 + 32) = v24;
        *(v27 + 33) = v19;
        v28 = *(v4 + 56) + v17;
        *v28 = v26;
        *(v28 + 8) = v25;

        v29 = v26;
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

void sub_100195C70()
{
  v1 = v0;
  v23 = *(type metadata accessor for NANGenericServiceProtocol.Attribute(0) - 8);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BB58, &unk_100492320);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v22 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
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
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = *(v23 + 72) * v19;
        sub_100198748(*(v4 + 56) + v21, v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
        *(*(v6 + 48) + v19) = v20;
        sub_1001988B4(v3, *(v6 + 56) + v21, type metadata accessor for NANGenericServiceProtocol.Attribute);
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

        v1 = v22;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_100195EA4()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAA8, &qword_100480DF0);
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 20) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 20);
      v20 = *(v17 + 4);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v18;
      *(v21 + 4) = v20;
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

void sub_100196010()
{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  __chkstk_darwin();
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BA78, &unk_100480DC0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100002B30(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        sub_100085188(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

void sub_100196294()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAA0, &unk_100492270);
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 24) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v22 = *(v4 + 56) + 32 * v14;
      *v22 = v21;
      *(v22 + 8) = v18;
      *(v22 + 16) = v19;
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

void sub_100196404()
{
  v1 = v0;
  v35 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_100198748(*(v4 + 56) + v25, v34, type metadata accessor for NANPairedDeviceSharedAssociation);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        sub_1001988B4(v24, *(v26 + 56) + v25, type metadata accessor for NANPairedDeviceSharedAssociation);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

void sub_100196730()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3B8, &qword_100492338);
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
        v18 = *(v2 + 56) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;

        v23 = v20;
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

void sub_1001968A8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3B0, &qword_100492330);
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

void sub_100196A18()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
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
        sub_100002B30(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100085188(v20, (*(v4 + 56) + 32 * v17));
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

void sub_100196B98()
{
  v1 = v0;
  v30 = *(type metadata accessor for StorageEntry(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F388, &qword_1004922E8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_100198748(*(v3 + 56) + v25, v29, type metadata accessor for StorageEntry);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_1001988B4(v24, *(v26 + 56) + v25, type metadata accessor for StorageEntry);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
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
    *v1 = v5;
  }
}

void sub_100196DF0()
{
  v1 = v0;
  v35 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F398, &unk_100492300);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_100198748(*(v4 + 56) + v25, v34, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        sub_1001988B4(v24, *(v26 + 56) + v25, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

void sub_10019711C()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F390, &unk_1004922F0);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void sub_100197280()
{
  v1 = v0;
  sub_10005DC58(&unk_10058BB30, &unk_100480E60);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_10000AB0C(v22, *(&v22 + 1));
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

void sub_100197404()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BB10, &qword_100480E40);
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

void sub_100197574()
{
  v1 = v0;
  v37 = *(sub_10005DC58(&qword_10058F3A0, &qword_100492310) - 8);
  __chkstk_darwin();
  v36 = &v33 - v2;
  sub_10005DC58(&qword_10058F3A8, &qword_100492318);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    v13 = *(v3 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    v35 = v3;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v40 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 40 * v19;
        v21 = *(v3 + 56);
        v22 = *(v3 + 48) + 40 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 24);
        v39 = *(v22 + 16);
        v26 = *(v22 + 32);
        v27 = *(v22 + 33);
        v28 = v36;
        v29 = *(v37 + 72) * v19;
        sub_100012400(v21 + v29, v36, &qword_10058F3A0, &qword_100492310);
        v30 = v38;
        v31 = v39;
        v32 = *(v38 + 48) + v20;
        *v32 = v23;
        *(v32 + 8) = v24;
        v3 = v35;
        *(v32 + 16) = v31;
        *(v32 + 24) = v25;
        *(v32 + 32) = v26;
        *(v32 + 33) = v27;
        sub_1001987F8(v28, *(v30 + 56) + v29);

        v14 = v40;
      }

      while (v40);
    }

    v17 = v9;
    v5 = v38;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
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

void sub_1001977F8()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F340, &qword_1004948F0);
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

void sub_1001979B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
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
        v20 = *(*(v4 + 48) + v19);
        sub_100002B30(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        sub_100085188(v21, (*(v6 + 56) + 32 * v19));
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

uint64_t _s7CoreP2P10NANPairingV8MetadataV4PeerV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL _s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 4) == *(a2 + 32) && a1[5] == *(a2 + 40))
  {
    return *(a1 + 6) == *(a2 + 48);
  }

  return 0;
}

BOOL _s7CoreP2P10NANPairingV8MetadataV23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a1[5];
  v8 = *(a1 + 6);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (!v9 && v6 == v11 && v7 == v12 && v8 == v13)
    {
      goto LABEL_20;
    }

    return result;
  }

  if (!v9)
  {
    return 0;
  }

  if (v4 == v10 && v5 == v9)
  {
    result = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (v6 == v11 && v7 == v12 && v8 == v13)
  {
LABEL_20:
    v17 = *(a1 + 7);
    v18 = *(a1 + 8);
    v19 = *(a1 + 9);
    v20 = *(a1 + 10);
    v22 = *(a1 + 11);
    v21 = *(a1 + 12);
    v23 = *(a2 + 56);
    v24 = *(a2 + 64);
    v25 = *(a2 + 72);
    v26 = *(a2 + 80);
    v28 = *(a2 + 88);
    v27 = *(a2 + 96);
    return (v17 == v23 && v18 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v19 == v25 && v20 == v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v22 == v28 && v21 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return result;
}

uint64_t sub_100197F64(uint64_t a1)
{
  v2 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100198008(void *a1)
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v3 = (&v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v5 = (&v32 - v4);
  __chkstk_darwin();
  v7 = &v32 - v6;
  __chkstk_darwin();
  v9 = (&v32 - v8);
  v33 = sub_100082620(_swiftEmptyArrayStorage);
  if (a1 && (v10 = [a1 txtRecordData]) != 0 && (v11 = v10, v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v14 = v13, v11, v14 >> 60 != 15))
  {
    *v9 = v12;
    v9[1] = v14;
    v30 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
  }

  else
  {
    v15 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  sub_100012400(v9, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 4);
  sub_100016290(v9, &qword_10058BB48, &unk_100483040);
  if (a1 && (v16 = [a1 blob]) != 0 && (v17 = v16, v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v20 = v19, v17, v20 >> 60 != 15))
  {
    *v5 = v18;
    v5[1] = v20;
    v31 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
  }

  else
  {
    v21 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  }

  sub_100012400(v5, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 6);
  sub_100016290(v5, &qword_10058BB48, &unk_100483040);
  if (a1 && (v22 = [a1 instanceName]) != 0 && (v23 = v22, v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v26 = v25, v23, v26))
  {
    *v3 = v24;
    v3[1] = v26;
    v27 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v3, 0, 1, v27);
  }

  else
  {
    v28 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
    (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  }

  sub_100012400(v3, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 3);
  sub_100016290(v3, &qword_10058BB48, &unk_100483040);
  return v33;
}

unint64_t sub_1001984B4()
{
  result = qword_10058F2E8;
  if (!qword_10058F2E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPairing.Metadata.This, &type metadata for NANPairing.Metadata.This, v0, v1);
    atomic_store(result, &qword_10058F2E8);
  }

  return result;
}

unint64_t sub_10019850C()
{
  result = qword_10058F2F0;
  if (!qword_10058F2F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPairing.Metadata.Peer, &type metadata for NANPairing.Metadata.Peer, v0, v1);
    atomic_store(result, &qword_10058F2F0);
  }

  return result;
}

unint64_t sub_100198564()
{
  result = qword_10058F2F8;
  if (!qword_10058F2F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPairing.Metadata, &type metadata for NANPairing.Metadata, v0, v1);
    atomic_store(result, &qword_10058F2F8);
  }

  return result;
}

__n128 sub_1001985B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001985E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10019862C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001986A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001986EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100198748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001987B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001987F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100198868()
{
  result = qword_10058D480;
  if (!qword_10058D480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058D480);
  }

  return result;
}

uint64_t sub_1001988B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019891C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NANPairedDeviceSharedAssociation(0);
  __chkstk_darwin();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a2 + 16);
  if (!v52)
  {
    return 0;
  }

  v8 = 0;
  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = 0;
  v11 = *(v5 + 72);
  v49 = v4;
  v50 = v11;
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_10019B4BC(v9, v7);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v12 = *(&v54 + 1);
    v13 = v54;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v14 = v54;
    v15 = v12 >> 62;
    v16 = *(&v54 + 1) >> 62;
    if (v12 >> 62 == 3)
    {
      v17 = 0;
      if (!v13 && v12 == 0xC000000000000000 && *(&v54 + 1) >> 62 == 3)
      {
        v17 = 0;
        if (v54 == __PAIR128__(0xC000000000000000, 0))
        {
          sub_1000124C8(0, 0xC000000000000000);
          v18 = 0;
          v19 = 0xC000000000000000;
          goto LABEL_36;
        }
      }

LABEL_22:
      if (v16 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        v17 = BYTE6(v12);
        if (v16 <= 1)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }

      LODWORD(v17) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_87;
      }

      v17 = v17;
      goto LABEL_22;
    }

    if (v15 == 2)
    {
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      v22 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v22)
      {
        goto LABEL_88;
      }

      goto LABEL_22;
    }

    v17 = 0;
    if (v16 <= 1)
    {
LABEL_23:
      if (v16)
      {
        LODWORD(v23) = DWORD1(v54) - v54;
        if (__OFSUB__(DWORD1(v54), v54))
        {
          goto LABEL_86;
        }

        v23 = v23;
      }

      else
      {
        v23 = BYTE14(v54);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v16 != 2)
    {
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_35:
      sub_1000124C8(v54, *(&v54 + 1));
      v18 = v13;
      v19 = v12;
LABEL_36:
      sub_1000124C8(v18, v19);
      v7 = v51;
      goto LABEL_53;
    }

    v25 = *(v54 + 16);
    v24 = *(v54 + 24);
    v22 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v22)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
    }

LABEL_30:
    if (v17 != v23)
    {
LABEL_4:
      sub_1000124C8(v54, *(&v54 + 1));
      sub_1000124C8(v13, v12);
      v7 = v51;
      goto LABEL_5;
    }

    if (v17 < 1)
    {
      goto LABEL_35;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        *&v54 = v13;
        WORD4(v54) = v12;
        BYTE10(v54) = BYTE2(v12);
        BYTE11(v54) = BYTE3(v12);
        BYTE12(v54) = BYTE4(v12);
        BYTE13(v54) = BYTE5(v12);
        goto LABEL_49;
      }

      v48 = v10;
      if (v13 >> 32 < v13)
      {
        goto LABEL_89;
      }

      v29 = __DataStorage._bytes.getter();
      if (v29)
      {
        v47 = v29;
        v30 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v30))
        {
          goto LABEL_92;
        }

        v27 = v13 - v30 + v47;
      }

      else
      {
        v27 = 0;
      }

LABEL_52:
      __DataStorage._length.getter();
      v10 = v48;
      sub_100031E04(v27, v14, *(&v14 + 1), &v54);
      sub_1000124C8(v13, v12);
      sub_1000124C8(v14, *(&v14 + 1));
      v7 = v51;
      if ((v54 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    if (v15 == 2)
    {
      v48 = v10;
      v26 = *(v13 + 16);
      v47 = *(v13 + 24);
      v27 = __DataStorage._bytes.getter();
      if (v27)
      {
        v28 = __DataStorage._offset.getter();
        if (__OFSUB__(v26, v28))
        {
          goto LABEL_91;
        }

        v27 += v26 - v28;
      }

      if (__OFSUB__(v47, v26))
      {
        goto LABEL_90;
      }

      goto LABEL_52;
    }

    *(&v54 + 6) = 0;
    *&v54 = 0;
LABEL_49:
    sub_100031E04(&v54, v14, *(&v14 + 1), &v53);
    sub_1000124C8(v13, v12);
    sub_1000124C8(v14, *(&v14 + 1));
    v7 = v51;
    if (!v53)
    {
      goto LABEL_5;
    }

LABEL_53:
    if (v7[v49[5]] != *(a1 + v49[5]) || v7[v49[6]] != *(a1 + v49[6]))
    {
      goto LABEL_5;
    }

    v31 = v49[7];
    v32 = *&v7[v31];
    v33 = *&v7[v31 + 8];
    v34 = (a1 + v31);
    v35 = *v34;
    v36 = v34[1];
    v37 = v33 >> 62;
    v38 = v36 >> 62;
    if (v33 >> 62 == 3)
    {
      v39 = 0;
      if (!v32 && v33 == 0xC000000000000000 && v36 >> 62 == 3)
      {
        v39 = 0;
        if (!v35 && v36 == 0xC000000000000000)
        {
          goto LABEL_81;
        }
      }

LABEL_68:
      if (v38 <= 1)
      {
        goto LABEL_69;
      }

      goto LABEL_74;
    }

    if (v37 == 2)
    {
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      v22 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v22)
      {
        goto LABEL_95;
      }

      goto LABEL_68;
    }

    if (v37 == 1)
    {
      LODWORD(v39) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_96;
      }

      v39 = v39;
      if (v38 <= 1)
      {
LABEL_69:
        if (v38)
        {
          LODWORD(v42) = HIDWORD(v35) - v35;
          if (__OFSUB__(HIDWORD(v35), v35))
          {
            goto LABEL_93;
          }

          v42 = v42;
        }

        else
        {
          v42 = BYTE6(v36);
        }

        goto LABEL_76;
      }
    }

    else
    {
      v39 = BYTE6(v33);
      if (v38 <= 1)
      {
        goto LABEL_69;
      }
    }

LABEL_74:
    if (v38 == 2)
    {
      break;
    }

    if (!v39)
    {
      goto LABEL_81;
    }

LABEL_5:
    sub_10019B520(v7);
    ++v8;
    v9 += v50;
    if (v52 == v8)
    {
      return 0;
    }
  }

  v44 = *(v35 + 16);
  v43 = *(v35 + 24);
  v22 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v22)
  {
    goto LABEL_94;
  }

LABEL_76:
  if (v39 != v42)
  {
    goto LABEL_5;
  }

  if (v39 >= 1)
  {
    sub_10000AB0C(v35, v36);
    if ((sub_100031C74(v32, v33, v35, v36) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_81:
  if (*&v7[v49[8]] != *(a1 + v49[8]))
  {
    goto LABEL_5;
  }

  sub_10019B520(v7);
  return v8;
}

uint64_t sub_100198F4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2;
    v5 = a1;
    v6 = 0;
    if (a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2 == 0xC000000000000000;
    }

    v8 = !v7;
    v38 = v8;
    v9 = a2 >> 62;
    v10 = __OFSUB__(HIDWORD(a1), a1);
    v36 = v10;
    v35 = HIDWORD(a1) - a1;
    v37 = BYTE6(a2);
    v11 = (a3 + 40);
    v32 = *(a3 + 16);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *v11 >> 62;
      if (v14 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_36;
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v21)
        {
          goto LABEL_67;
        }

        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v14)
      {
        LODWORD(v18) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_68;
        }

        v18 = v18;
        if (v9 <= 1)
        {
LABEL_33:
          v22 = v37;
          if (v9)
          {
            v22 = v35;
            if (v36)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v18 = BYTE6(v12);
        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v9 != 2)
      {
        if (!v18)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      v21 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v21)
      {
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
      }

LABEL_39:
      if (v18 != v22)
      {
        goto LABEL_13;
      }

      if (v18 < 1)
      {
        return v6;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v40[0] = *(v11 - 1);
          LOWORD(v40[1]) = v12;
          BYTE2(v40[1]) = BYTE2(v12);
          BYTE3(v40[1]) = BYTE3(v12);
          BYTE4(v40[1]) = BYTE4(v12);
          BYTE5(v40[1]) = BYTE5(v12);
          sub_10000AB0C(v13, v12);
          sub_100031E04(v40, v5, v4, &v39);
          sub_1000124C8(v13, v12);
          if (v39)
          {
            return v6;
          }

          goto LABEL_13;
        }

        if (v13 >> 32 < v13)
        {
          goto LABEL_69;
        }

        sub_10000AB0C(*(v11 - 1), *v11);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v29))
          {
            goto LABEL_72;
          }

          v27 += v13 - v29;
        }

        goto LABEL_58;
      }

      if (v14 == 2)
      {
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        sub_10000AB0C(*(v11 - 1), *v11);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v28 = __DataStorage._offset.getter();
          if (__OFSUB__(v26, v28))
          {
            goto LABEL_71;
          }

          v27 += v26 - v28;
        }

        if (__OFSUB__(v25, v26))
        {
          goto LABEL_70;
        }

LABEL_58:
        __DataStorage._length.getter();
        v30 = v27;
        v5 = a1;
        v4 = a2;
        sub_100031E04(v30, a1, a2, v40);
        sub_1000124C8(v13, v12);
        if (v40[0])
        {
          return v6;
        }

        v3 = v32;
        goto LABEL_13;
      }

      memset(v40, 0, 14);
      sub_10000AB0C(v13, v12);
      sub_100031E04(v40, v5, v4, &v39);
      sub_1000124C8(v13, v12);
      if (v39)
      {
        return v6;
      }

LABEL_13:
      v11 += 2;
      if (v3 == ++v6)
      {
        return 0;
      }
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12 == 0xC000000000000000;
    }

    v17 = !v15 || v9 < 3;
    if (((v17 | v38) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v18 = 0;
    if (v9 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return 0;
}

uint64_t sub_100199314(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  v25 = a2;
  if ((a3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
    }
  }

  else if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 >> 32;
  v8 = a1;
  v23 = a2 >> 16;
  v24 = a2 >> 8;
  v21 = HIDWORD(a2);
  v22 = a2 >> 24;
  v19 = HIWORD(a2);
  v20 = a2 >> 40;
  v17 = v6;
  v18 = HIBYTE(a2);
  if (v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = BYTE6(a3);
  if (v5)
  {
    v9 = a2 >> 32;
  }

  while (v6 != v9)
  {
    if (v5 == 2)
    {
      if (v6 < *(a2 + 16))
      {
        goto LABEL_36;
      }

      if (v6 >= *(a2 + 24))
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_43;
      }

      v11 = v14;
      v15 = __DataStorage._offset.getter();
      v13 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      if (v6 < v25 || v6 >= v7)
      {
        goto LABEL_37;
      }

      v10 = __DataStorage._bytes.getter();
      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = v10;
      v12 = __DataStorage._offset.getter();
      v13 = v6 - v12;
      if (__OFSUB__(v6, v12))
      {
        goto LABEL_39;
      }

LABEL_25:
      if (*(v11 + v13) == v8)
      {
        return v6;
      }

      goto LABEL_29;
    }

    if (v6 >= BYTE6(a3))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26[0] = a2;
    v26[1] = v24;
    v26[2] = v23;
    v26[3] = v22;
    v26[4] = v21;
    v26[5] = v20;
    v26[6] = v19;
    v26[7] = v18;
    v27 = a3;
    v28 = BYTE2(a3);
    v29 = BYTE3(a3);
    v30 = BYTE4(a3);
    v31 = BYTE5(a3);
    if (v26[v6] == v8)
    {
      return v6;
    }

LABEL_29:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v5 != 2)
    {
      if (!v17)
      {
        return 0;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v9 = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_10019957C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B3C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 72 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 104), 72 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100199624@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B50(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10019B458(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100199744@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B8C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t NANMatchingFilter.FilterType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x546873696C627570;
  v2 = 0x526873696C627570;
  if (a1 != 3)
  {
    v2 = 0x73655265676E6172;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1001998B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P17NANMatchingFilterV0D4TypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001998E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF74696D736E6172;
  v4 = 0x546873696C627570;
  v5 = 0xEE00657669656365;
  v6 = 0x526873696C627570;
  if (v2 != 3)
  {
    v6 = 0x73655265676E6172;
    v5 = 0xED000065736E6F70;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001004B6400;
  v8 = 0xD000000000000011;
  if (*v1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001004B6420;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_1001999B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100199ACC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100199BCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

CoreP2P::NANMatchingFilter::RespondCondition_optional __swiftcall NANMatchingFilter.RespondCondition.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554E50, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANMatchingFilter_RespondCondition_txNotEqualRx;
  }

  else
  {
    v4.value = CoreP2P_NANMatchingFilter_RespondCondition_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100199DEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x757145746F4E7874;
  }

  else
  {
    v3 = 0x526C617571457874;
  }

  if (v2)
  {
    v4 = 0xE900000000000078;
  }

  else
  {
    v4 = 0xEC00000078526C61;
  }

  if (*a2)
  {
    v5 = 0x757145746F4E7874;
  }

  else
  {
    v5 = 0x526C617571457874;
  }

  if (*a2)
  {
    v6 = 0xEC00000078526C61;
  }

  else
  {
    v6 = 0xE900000000000078;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100199EA0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100554E50, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100199F00(uint64_t *a1@<X8>)
{
  v2 = 0x526C617571457874;
  if (*v1)
  {
    v2 = 0x757145746F4E7874;
  }

  v3 = 0xE900000000000078;
  if (*v1)
  {
    v3 = 0xEC00000078526C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100199F4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100199FDC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10019A058(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANMatchingFilter.addFilter(_:)(uint64_t a1, unint64_t a2)
{
  sub_10005DC58(&qword_10058CCC0, &qword_100492360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000AB0C(a1, a2);
  NANMatchingFilter.addFilters(_:)(inited);
  swift_setDeallocating();
  return sub_10019AD3C(inited + 32);
}

Swift::Void __swiftcall NANMatchingFilter.addFilters(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = 0;
    v3 = a1._rawValue + 32;
    do
    {
      v4 = v2;
      while (1)
      {
        if (v4 >= v1)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }

        v5 = *&v3[16 * v4];
        v6 = *&v3[16 * v4 + 8];
        v7 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          break;
        }

        if (v7)
        {
          v8 = *&v3[16 * v4];
          if (__OFSUB__(DWORD1(v5), v5))
          {
            goto LABEL_28;
          }

          v11 = DWORD1(v5) - v5;
          goto LABEL_16;
        }

        if (BYTE6(v6) <= 0x20uLL)
        {
          goto LABEL_19;
        }

LABEL_17:
        sub_1000124C8(v5, v6);
        ++v4;
        if (v2 == v1)
        {
          goto LABEL_24;
        }
      }

      if (v7 != 2)
      {
        goto LABEL_19;
      }

      v8 = *&v3[16 * v4];
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_27;
      }

LABEL_16:
      v15 = *&v3[16 * v4];
      sub_10000AB0C(v8, *&v3[16 * v4 + 8]);
      v5 = v15;
      if (v11 > 32)
      {
        goto LABEL_17;
      }

LABEL_19:
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C05C4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      v14 = v16;
      if (v13 >= v12 >> 1)
      {
        sub_1000C05C4((v12 > 1), v13 + 1, 1);
        v14 = v16;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *&_swiftEmptyArrayStorage[2 * v13 + 4] = v14;
    }

    while (v2 != v1);
  }

LABEL_24:
  sub_10023549C(_swiftEmptyArrayStorage);
}

unint64_t NANMatchingFilter.removeFilter(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_100198F4C(a1, a2, *(v2 + 8));
  if ((v4 & 1) == 0)
  {
    sub_100199744(result, &v5);
    return sub_1000124C8(v5, *(&v5 + 1));
  }

  return result;
}

uint64_t sub_10019A420()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10019A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BA950 == a2)
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

uint64_t sub_10019A53C(uint64_t a1)
{
  v2 = sub_10019AD90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A578(uint64_t a1)
{
  v2 = sub_10019AD90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANMatchingFilter.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1000B2BD8() & 1) == 0)
  {
    return 0;
  }

  return sub_1000BCCE0(a2, a4);
}

uint64_t NANMatchingFilter.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_10058F3C8, &qword_100492368);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_10019AD90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10019ADE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_10005DC58(&qword_10058F3E0, &qword_100492370);
    sub_10019B5D0(&qword_10058F3E8, sub_1000B8088, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void NANMatchingFilter.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  String.hash(into:)();

  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_10000AB0C(v6, *v5);
      Data.hash(into:)();
      sub_1000124C8(v6, v7);
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

Swift::Int NANMatchingFilter.hashValue.getter(unsigned __int8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10019A9A8()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10019AA04(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  Hasher.init(_seed:)();
  NANMatchingFilter.hash(into:)(v5, v3, v2);
  return Hasher._finalize()();
}

uint64_t sub_10019AA50@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10019AF44(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10019AAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_1000B2BD8() & 1) == 0)
  {
    return 0;
  }

  return sub_1000BCCE0(v2, v3);
}

CoreP2P::NANMatchingFilter __swiftcall NANMatchingFilter.init(type:)(CoreP2P::NANMatchingFilter::FilterType type)
{
  v1 = _swiftEmptyArrayStorage;
  result.matchingFilterList._rawValue = v1;
  result.type = type;
  return result;
}

uint64_t NANMatchingFilter.FilterType.description.getter(unsigned __int8 a1)
{
  v1 = 0x206873696C627550;
  v2 = 0x206873696C627550;
  if (a1 != 3)
  {
    v2 = 0x65522065676E6152;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 <= 1u)
  {
    return 0x6269726373627553;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10019ABBC()
{
  v1 = *v0;
  v2 = 0x206873696C627550;
  v3 = 0x206873696C627550;
  if (v1 != 3)
  {
    v3 = 0x65522065676E6152;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0x6269726373627553;
  }

  else
  {
    return v2;
  }
}

uint64_t NANMatchingFilter.RespondCondition.description.getter(char a1)
{
  if (a1)
  {
    return 0x757145746F4E7874;
  }

  else
  {
    return 0x526C617571457874;
  }
}

uint64_t sub_10019ACA8()
{
  if (*v0)
  {
    return 0x757145746F4E7874;
  }

  else
  {
    return 0x526C617571457874;
  }
}

unint64_t _s7CoreP2P17NANMatchingFilterV0D4TypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554DB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10019AD90()
{
  result = qword_10058F3D0;
  if (!qword_10058F3D0)
  {
    result = swift_getWitnessTable(byte_1004927A4, &type metadata for NANMatchingFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058F3D0);
  }

  return result;
}

unint64_t sub_10019ADE4()
{
  result = qword_10058F3D8;
  if (!qword_10058F3D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.FilterType, &type metadata for NANMatchingFilter.FilterType, v0, v1);
    atomic_store(result, &qword_10058F3D8);
  }

  return result;
}

uint64_t _s7CoreP2P17NANMatchingFilterV11descriptionSSvg_0(unsigned __int8 a1)
{
  v1 = 0xEC00000058522065;
  v2 = a1;
  v3 = 0x206873696C627550;
  v4 = 0xEA00000000005854;
  v5 = 0x206873696C627550;
  v6 = 0xEA00000000005852;
  if (a1 != 3)
  {
    v5 = 0x65522065676E6152;
    v6 = 0xEE0065736E6F7073;
  }

  if (a1 != 2)
  {
    v3 = v5;
    v4 = v6;
  }

  if (!a1)
  {
    v1 = 0xEC00000058542065;
  }

  if (a1 <= 1u)
  {
    v7 = 0x6269726373627553;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v1;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0x6E69686374614D3CLL;
}

uint64_t sub_10019AF44(void *a1)
{
  v2 = sub_10005DC58(&qword_10058F430, &qword_1004927F8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100029B34(a1, a1[3]);
  sub_10019AD90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_10019B57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_10005DC58(&qword_10058F3E0, &qword_100492370);
  v8[15] = 1;
  sub_10019B5D0(&qword_10058F440, sub_100039F68, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

unint64_t sub_10019B164()
{
  result = qword_10058F3F0;
  if (!qword_10058F3F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.FilterType, &type metadata for NANMatchingFilter.FilterType, v0, v1);
    atomic_store(result, &qword_10058F3F0);
  }

  return result;
}

unint64_t sub_10019B1BC()
{
  result = qword_10058F3F8;
  if (!qword_10058F3F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.RespondCondition, &type metadata for NANMatchingFilter.RespondCondition, v0, v1);
    atomic_store(result, &qword_10058F3F8);
  }

  return result;
}

unint64_t sub_10019B214()
{
  result = qword_10058F400;
  if (!qword_10058F400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter, &type metadata for NANMatchingFilter, v0, v1);
    atomic_store(result, &qword_10058F400);
  }

  return result;
}

unint64_t sub_10019B2AC()
{
  result = qword_10058F408;
  if (!qword_10058F408)
  {
    result = swift_getWitnessTable(byte_10049277C, &type metadata for NANMatchingFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058F408);
  }

  return result;
}

unint64_t sub_10019B304()
{
  result = qword_10058F410;
  if (!qword_10058F410)
  {
    result = swift_getWitnessTable(byte_1004926EC, &type metadata for NANMatchingFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058F410);
  }

  return result;
}

unint64_t sub_10019B35C()
{
  result = qword_10058F418;
  if (!qword_10058F418)
  {
    result = swift_getWitnessTable(asc_100492714, &type metadata for NANMatchingFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058F418);
  }

  return result;
}

unint64_t sub_10019B3B0()
{
  result = qword_10058F420;
  if (!qword_10058F420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.RespondCondition, &type metadata for NANMatchingFilter.RespondCondition, v0, v1);
    atomic_store(result, &qword_10058F420);
  }

  return result;
}

unint64_t sub_10019B404()
{
  result = qword_10058F428;
  if (!qword_10058F428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.FilterType, &type metadata for NANMatchingFilter.FilterType, v0, v1);
    atomic_store(result, &qword_10058F428);
  }

  return result;
}

uint64_t sub_10019B458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B520(uint64_t a1)
{
  v2 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10019B57C()
{
  result = qword_10058F438;
  if (!qword_10058F438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMatchingFilter.FilterType, &type metadata for NANMatchingFilter.FilterType, v0, v1);
    atomic_store(result, &qword_10058F438);
  }

  return result;
}

uint64_t sub_10019B5D0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(&qword_10058F3E0, &qword_100492370);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v17 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  dispatch thunk of IteratorProtocol.next()();
  if (v22)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v18 = xmmword_100480F40;
    do
    {
      v9 = v21;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v10 = swift_allocObject();
      *(v10 + 16) = v18;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = String.init(format:_:)();
      v13 = v12;
      v19 = v7;
      v20 = v8;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v7 = v19;
      v8 = v20;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v22 != 1);
  }

  (*(v17 + 8))(v6, v4);
  return v7;
}

uint64_t Data.utf8String.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  static String.Encoding.utf8.getter();
  return String.init(data:encoding:)();
}

uint64_t Data.colonFormatedString.getter(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10019BA90;
  *(v5 + 24) = v4;
  v8 = a2;
  sub_10000AB0C(a1, a2);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058F448, &qword_100492800);
  sub_10019BACC();
  v6 = BidirectionalCollection<>.joined(separator:)();
  sub_1000124C8(a1, v8);

  return v6;
}

uint64_t sub_10019BA0C(char a1)
{
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for UInt8;
  *(v2 + 64) = &protocol witness table for UInt8;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_10019BA98@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_10019BACC()
{
  result = qword_10058F450;
  if (!qword_10058F450)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058F448, &qword_100492800);
    v4[0] = sub_10019BB50();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v3, v4);
    atomic_store(result, &qword_10058F450);
  }

  return result;
}

unint64_t sub_10019BB50()
{
  result = qword_10058F458;
  if (!qword_10058F458)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_10058F458);
  }

  return result;
}

unint64_t Data.init(uuid:)(uint64_t a1)
{
  v6[0] = UUID.uuid.getter();
  v6[1] = v2;
  v3 = sub_10004F3B0(v6, &v7);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

void sub_10019BC64(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a4;
  v31 = a2;
  v33 = a1;
  v34 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v29 = *(v34 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v28 - v9;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v35 = a3;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v36 = v5;
      v16 = v8;
      v17 = v15;
LABEL_9:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v35;
      v20 = *(v35 + 48);
      v21 = type metadata accessor for UUID();
      v22 = v32;
      (*(*(v21 - 8) + 16))(v32, v20 + *(*(v21 - 8) + 72) * v18, v21);
      v23 = *(v19 + 56);
      v24 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      sub_1001ABBF0(v23 + *(*(v24 - 8) + 72) * v18, v22 + *(v34 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
      v8 = v16;
      sub_1001AC444(v22, v16);
      v25 = v36;
      v26 = v33(v16);
      v5 = v25;
      if (v25)
      {
        sub_100016290(v16, &unk_100597500, &unk_1004939B0);

        return;
      }

      if (v26)
      {
        break;
      }

      v13 &= v13 - 1;
      sub_100016290(v16, &unk_100597500, &unk_1004939B0);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v30;
    sub_1001AC444(v8, v30);
    (*(v29 + 56))(v27, 0, 1, v34);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        (*(v29 + 56))(v30, 1, 1, v34);
        return;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v36 = v5;
        v16 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10019BF58@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for WiFiAwarePairedDevice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1001ABBF0(v12, v10, type metadata accessor for WiFiAwarePairedDevice);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
      }

      if (v14)
      {
        break;
      }

      sub_1001AB714(v10, type metadata accessor for WiFiAwarePairedDevice);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1001ABCD0(v10, v18, type metadata accessor for WiFiAwarePairedDevice);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_10019C124(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_10019C214()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WiFiAwareKeychainError(0);
  __chkstk_darwin();
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001ABBF0(v1, v7, type metadata accessor for WiFiAwareKeychainError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10005DC58(qword_10058C850, &unk_100486F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v24;
      *(inited + 48) = 0x6E756F6620746F4ELL;
      v18 = 0xE900000000000064;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_10005DC58(qword_10058C850, &unk_100486F10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100480F40;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = inited + 32;
        v18 = 0x80000001004BAA30;
        *(inited + 72) = &type metadata for String;
        v26 = 0xD000000000000012;
        goto LABEL_12;
      }

      sub_10005DC58(qword_10058C850, &unk_100486F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v17;
      *(inited + 48) = 0x6C616E7265746E49;
      v18 = 0xEE00726F72726520;
    }

LABEL_13:
    *(inited + 56) = v18;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *v7;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = inited + 32;
    *(inited + 40) = v20;
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v29 = 0xD000000000000011;
    v30 = 0x80000001004BAAA0;
    v28[3] = v19;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22 = v29;
    v23 = v30;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v22;
    *(inited + 56) = v23;
LABEL_14:
    v14 = sub_1000827F8(inited);
    swift_setDeallocating();
    sub_100016290(v16, &qword_10058BB40, &unk_100480E70);
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = inited + 32;
    v18 = 0x80000001004BAA50;
    *(inited + 72) = &type metadata for String;
    v26 = 0xD00000000000001ELL;
LABEL_12:
    *(inited + 40) = v25;
    *(inited + 48) = v26;
    goto LABEL_13;
  }

  (*(v3 + 32))(v5, v7, v2);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100480F40;
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v10;
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v29 = 0xD000000000000023;
  v30 = 0x80000001004BAA70;
  sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12 = v29;
  v13 = v30;
  *(v9 + 72) = &type metadata for String;
  *(v9 + 48) = v12;
  *(v9 + 56) = v13;
  v14 = sub_1000827F8(v9);
  swift_setDeallocating();
  sub_100016290(v9 + 32, &qword_10058BB40, &unk_100480E70);
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_10019C794(uint64_t a1)
{
  v2 = sub_1001AB660(&unk_10058F730, type metadata accessor for WiFiAwareKeychainError, byte_100492A08);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019C800(uint64_t a1)
{
  v2 = sub_1001AB660(&unk_10058F730, type metadata accessor for WiFiAwareKeychainError, byte_100492A08);

  return Error<>._code.getter(a1, v2);
}

uint64_t WiFiAwarePairedDevicesStore.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v4 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiAwarePairedDevicesStore.__allocating_init()()
{
  v0 = swift_allocObject();
  WiFiAwarePairedDevicesStore.init()();
  return v0;
}

uint64_t WiFiAwarePairedDevicesStore.init()()
{
  v1 = v0;
  v2 = sub_10005DC58(&qword_10058F468, &qword_100492838);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v20 = sub_10005DC58(&qword_10058F470, &unk_100492840);
  v6 = *(v20 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v19 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v9 = *(v19 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  *(v1 + qword_10058F478) = 0;
  v12 = qword_10058F480;
  *(v1 + v12) = sub_100082A90(_swiftEmptyArrayStorage);
  v13 = qword_10058F488;
  *(v1 + v13) = sub_100082BFC(_swiftEmptyArrayStorage);
  swift_weakInit();
  v14 = qword_10058F498;
  *(v1 + v14) = sub_100082E3C(_swiftEmptyArrayStorage);
  *(v1 + qword_10058F4A0) = 3;
  (*(v3 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v5, v2);
  (*(v9 + 32))(v1 + direct field offset for WiFiAwarePairedDevicesStore.events, v11, v19);
  (*(v6 + 32))(v1 + qword_10058F4A8, v8, v20);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "WiFiAwarePairedDevicesStore initialized", v17, 2u);
  }

  return v1;
}

uint64_t WiFiAwarePairedDevicesStore.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10005DC58(&qword_10058F470, &unk_100492840);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v20 - v9;
  v11 = qword_10058F4A8;
  (*(v7 + 16))(&v20 - v9, v1 + qword_10058F4A8, v6, v8);
  AsyncStream.Continuation.finish()();
  v21 = *(v7 + 8);
  v21(v10, v6);
  v12 = qword_10059B508;
  (*(v3 + 16))(v5, v1 + qword_10059B508, v2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v11;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "WiFiAwarePairedDevicesStore deinitialized", v15, 2u);
    v11 = v20;
  }

  v16 = *(v3 + 8);
  v16(v5, v2);
  v16((v1 + v12), v2);

  v17 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v18 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v21((v1 + v11), v6);
  swift_weakDestroy();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WiFiAwarePairedDevicesStore.__deallocating_deinit()
{
  WiFiAwarePairedDevicesStore.deinit();

  return _swift_defaultActor_deallocate(v0);
}

void WiFiAwarePairedDevicesStore.activate(with:)(uint64_t a1)
{
  v2 = *v1;
  swift_weakAssign();

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for LongTermPairingKeyStore(0, *(v2 + 80), *(v2 + 88), v6);

    v7 = String.init<A>(describing:)();
    v9 = sub_100002320(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Activated WiFiAwarePairedDevicesStore with %s", v4, 0xCu);
    sub_100002A00(v5);
  }

  else
  {
  }
}

void sub_10019D220(__n128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for WiFiAwareKeychainError(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10005DC58(&qword_10058F520, &qword_1004928A0);
  __chkstk_darwin();
  v9 = &v44 - v8;
  sub_10005DC58(&qword_10058F528, &qword_1004928A8);
  __chkstk_darwin();
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v44 - v11;
  __chkstk_darwin();
  v51 = &v44 - v12;
  v50 = qword_10059B508;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[BEGIN] WiFiAwarePairedDevicesStore cache build", v15, 2u);
  }

  v16 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
  v17 = sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
  sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
  v18 = WiFiAwarePairedDevicesStore.getAll<A, B>()(&type metadata for String, v16, &protocol witness table for String, v17);
  if (!v2)
  {
    *(v3 + qword_10058F480) = v18;

    v19 = type metadata accessor for UUID();
    v20 = sub_1001AB660(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = sub_1001ABB48();
    sub_1001ABB9C();
    *(v3 + qword_10058F488) = WiFiAwarePairedDevicesStore.getAll<A, B>()(v19, &type metadata for WiFiAwarePairedDeviceMetadata, v20, v21);

LABEL_17:
    *(v3 + qword_10058F478) = 1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "[END] WiFiAwarePairedDevicesStore cache build", v43, 2u);
    }

    return;
  }

  v47 = v9;
  v45 = v7;
  *(v3 + qword_10058F480) = sub_100082A90(_swiftEmptyArrayStorage);

  *(v3 + qword_10058F488) = sub_100082BFC(_swiftEmptyArrayStorage);

  v52 = v2;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  v22 = v51;
  v23 = swift_dynamicCast();
  v24 = *(v5 + 56);
  v24(v22, v23 ^ 1u, 1, v4);
  v25 = v49;
  swift_storeEnumTagMultiPayload();
  v24(v25, 0, 1, v4);
  v26 = *(v48 + 48);
  v27 = v22;
  v28 = v47;
  sub_100012400(v27, v47, &qword_10058F528, &qword_1004928A8);
  sub_100012400(v25, v28 + v26, &qword_10058F528, &qword_1004928A8);
  v29 = *(v5 + 48);
  if (v29(v28, 1, v4) == 1)
  {
    sub_100016290(v25, &qword_10058F528, &qword_1004928A8);
    if (v29(v28 + v26, 1, v4) == 1)
    {
      sub_100016290(v28, &qword_10058F528, &qword_1004928A8);
      sub_100016290(v51, &qword_10058F528, &qword_1004928A8);
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v30 = v46;
  sub_100012400(v28, v46, &qword_10058F528, &qword_1004928A8);
  if (v29(v28 + v26, 1, v4) == 1)
  {
    sub_100016290(v25, &qword_10058F528, &qword_1004928A8);
    sub_1001AB714(v30, type metadata accessor for WiFiAwareKeychainError);
LABEL_11:
    sub_100016290(v28, &qword_10058F520, &qword_1004928A0);
    sub_100016290(v51, &qword_10058F528, &qword_1004928A8);
    goto LABEL_12;
  }

  v36 = v28 + v26;
  v37 = v28;
  v38 = v25;
  v39 = v45;
  sub_1001ABCD0(v36, v45, type metadata accessor for WiFiAwareKeychainError);
  v40 = sub_1001AAE20(v30, v39);
  sub_1001AB714(v39, type metadata accessor for WiFiAwareKeychainError);
  sub_100016290(v38, &qword_10058F528, &qword_1004928A8);
  sub_1001AB714(v30, type metadata accessor for WiFiAwareKeychainError);
  sub_100016290(v37, &qword_10058F528, &qword_1004928A8);
  sub_100016290(v51, &qword_10058F528, &qword_1004928A8);
  if (v40)
  {
    goto LABEL_16;
  }

LABEL_12:
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to activate WiFiAwarePairedDevicesStore: %@", v33, 0xCu);
    sub_100016290(v34, &qword_10058B780, &qword_100480AC0);
  }

  swift_willThrow();
}

CFTypeRef sub_10019DBC0(unsigned __int8 a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v5 = sub_1000102E8(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_100002B30(*(a2 + 56) + 32 * v5, v80);
      if (swift_dynamicCast())
      {
        v9 = result;
        v8 = v78;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v8 = 0xE700000000000000;
  v9 = 0x4E574F4E4B4E55;
LABEL_7:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v12 = sub_1000102E8(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_100002B30(*(a2 + 56) + 32 * v12, v80);
      if (swift_dynamicCast())
      {
        v15 = result;
        v16 = v78;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v16 = 0xE500000000000000;
  v15 = 0x294C4C4128;
LABEL_13:
  v75 = v15;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v80[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100002320(v75, v16, v80);
    *(v19 + 12) = 2080;
    v20 = sub_100002320(v9, v8, v80);

    *(v19 + 14) = v20;
    *(v19 + 22) = 2080;
    v21 = 5522759;
    v22 = 0x455441445055;
    if (a1 != 2)
    {
      v22 = 0x45564F4D4552;
    }

    if (a1)
    {
      v21 = 4473921;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (a1 <= 1u)
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = 0xE600000000000000;
    }

    v25 = sub_100002320(v23, v24, v80);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Accessing Keychain for %s (%s) [%s]", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = 0;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v34 = SecItemDelete(isa);

      if (v34)
      {
        if (v34 == -25300)
        {

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *&v80[0] = v45;
            *v44 = 136315138;
            v46 = sub_100002320(v75, v16, v80);

            *(v44 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v42, v43, "No items found for: %s", v44, 0xCu);
            sub_100002A00(v45);
          }

          else
          {
          }

          type metadata accessor for WiFiAwareKeychainError(0);
          sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
          swift_allocError();
          goto LABEL_63;
        }

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v80[0] = v38;
          *v37 = 136315394;
          v70 = sub_100002320(v75, v16, v80);

          *(v37 + 4) = v70;
          *(v37 + 12) = 1024;
          *(v37 + 14) = v34;
          v40 = "Failed to remove item for: %s. Error: %d";
          goto LABEL_56;
        }

LABEL_57:

        goto LABEL_58;
      }

LABEL_42:

      sub_10019DA4C(v47);
      return result;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a2 + 16))
    {
      v30 = sub_1000102E8(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_100002B30(*(a2 + 56) + 32 * v30, v80);
LABEL_45:
        v48 = Dictionary._bridgeToObjectiveC()().super.isa;
        sub_10005DC58(&qword_10058F760, &unk_100492AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100480F40;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v50;
        sub_100012400(v80, inited + 48, &qword_10058BA80, &qword_1004818C0);
        sub_100082AA4(inited);
        swift_setDeallocating();
        sub_100016290(inited + 32, &qword_10058BAF8, &qword_100480E38);
        sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
        v51 = Dictionary._bridgeToObjectiveC()().super.isa;

        v52 = SecItemUpdate(v48, v51);

        if (!v52)
        {
          sub_100016290(v80, &qword_10058BA80, &qword_1004818C0);

          sub_10019DA4C(v58);
          return result;
        }

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v79 = v56;
          *v55 = 136315394;
          v57 = sub_100002320(v75, v16, &v79);

          *(v55 + 4) = v57;
          *(v55 + 12) = 1024;
          *(v55 + 14) = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "Failed to update item for: %s. Error: %d", v55, 0x12u);
          sub_100002A00(v56);
        }

        else
        {
        }

        type metadata accessor for WiFiAwareKeychainError(0);
        sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
        swift_allocError();
        *v72 = v52;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_100016290(v80, &qword_10058BA80, &qword_1004818C0);
        goto LABEL_64;
      }
    }

    else
    {
    }

    memset(v80, 0, sizeof(v80));
    goto LABEL_45;
  }

  if (a1)
  {
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;
    v34 = SecItemAdd(v33, 0);

    if (v34)
    {

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v80[0] = v38;
        *v37 = 136315394;
        v39 = sub_100002320(v75, v16, v80);

        *(v37 + 4) = v39;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v34;
        v40 = "Failed to add item for: %s. Error: %d";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v35, v36, v40, v37, 0x12u);
        sub_100002A00(v38);

LABEL_58:

        type metadata accessor for WiFiAwareKeychainError(0);
        sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
        swift_allocError();
        *v71 = v34;
LABEL_63:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_64:
        sub_10019DA4C(v73);
        return swift_unknownObjectRelease();
      }

      goto LABEL_57;
    }

    goto LABEL_42;
  }

  v26 = Dictionary._bridgeToObjectiveC()().super.isa;
  v27 = SecItemCopyMatching(v26, &result);

  if (v27 == -25300)
  {

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v80[0] = v63;
      *v62 = 136315138;
      v64 = sub_100002320(v75, v16, v80);

      *(v62 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v60, v61, "No items found for: %s", v62, 0xCu);
      sub_100002A00(v63);
    }

    else
    {
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
  }

  else
  {
    if (!v27)
    {

      return result;
    }

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v80[0] = v68;
      *v67 = 136315394;
      v69 = sub_100002320(v75, v16, v80);

      *(v67 + 4) = v69;
      *(v67 + 12) = 1024;
      *(v67 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to get items for: %s. Error: %d", v67, 0x12u);
      sub_100002A00(v68);
    }

    else
    {
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    *v74 = v27;
  }

  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return swift_unknownObjectRelease();
}

void *sub_10019E970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a2;
  v9 = *(a2 - 1);
  __chkstk_darwin();
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v35 - v11;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v27 = v12;
    v28 = v13;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = *(v6 + qword_10058F4A0);
    v41 = 0;
    v31 = [(objc_class *)isa compressedDataUsingAlgorithm:v30 error:&v41];

    v32 = v41;
    if (v31)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000124C8(v27, v28);

      return v7;
    }

    v34 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000124C8(v27, v28);
  }

  v14 = *(v9 + 16);
  v15 = v40;
  v14(v40, a1, v7);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v17;
    v19 = v15;
    v20 = v18;
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v20 = 136315394;
    v14(v39, v19, v7);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v9 + 8))(v19, v7);
    v24 = sub_100002320(v21, v23, &v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v25;
    v26 = v36;
    *v36 = v25;
    _os_log_impl(&_mh_execute_header, v16, v37, "Failed to encode: %s with error: %@", v20, 0x16u);
    sub_100016290(v26, &qword_10058B780, &qword_100480AC0);

    v7 = v38;
    sub_100002A00(v38);
  }

  else
  {

    (*(v9 + 8))(v15, v7);
  }

  swift_willThrow();
  return v7;
}

void sub_10019ED60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = *(v4 + qword_10058F4A0);
  v28 = 0;
  v10 = [(objc_class *)isa decompressedDataUsingAlgorithm:v9 error:&v28];

  v11 = v28;
  if (v10)
  {
    v27 = a2;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v12 = v11;
    JSONDecoder.init()();
    v13 = v10;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v5)
    {
      sub_1000124C8(v14, v16);

      return;
    }

    sub_1000124C8(v14, v16);

    a2 = v27;
  }

  else
  {
    v17 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000AB0C(a1, a2);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_1000124C8(a1, a2);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v20 = 136315394;
    v23 = Data.description.getter();
    v25 = sub_100002320(v23, v24, &v28);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to decode: %s with error: %@", v20, 0x16u);
    sub_100016290(v21, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v22);
  }

  swift_willThrow();
}

void *WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v6) = a4;
  v34 = a3;
  v31 = type metadata accessor for WiFiAwarePairedDevice(0);
  v9 = *(v31 - 8);
  __chkstk_darwin();
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v29 - v12;
  if ((*(v4 + qword_10058F478) & 1) == 0)
  {
    sub_10019D220(v11);
    if (!v5)
    {
      goto LABEL_5;
    }

    return v4;
  }

  if (v5)
  {
    return v4;
  }

LABEL_5:
  v14 = *(v4 + qword_10058F480);
  if (!*(v14 + 16))
  {
LABEL_21:

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100002320(a1, a2, &v35);
      _os_log_impl(&_mh_execute_header, v25, v26, "No paired devices found for %s", v27, 0xCu);
      sub_100002A00(v28);
    }

    v4 = type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v4;
  }

  v15 = sub_1000102E8(a1, a2);
  if ((v16 & 1) == 0)
  {

    goto LABEL_21;
  }

  v29 = v5;
  v17 = *(*(v14 + 56) + 8 * v15);

  v32 = *(v17 + 16);
  if (!v32)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_26:

    return v4;
  }

  v19 = 0;
  v4 = _swiftEmptyArrayStorage;
  v30 = v6;
  v20 = v31;
  while (v19 < *(v17 + 16))
  {
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = *(v9 + 72);
    sub_1001ABBF0(v17 + v21 + v22 * v19, v13, type metadata accessor for WiFiAwarePairedDevice);
    if (((v6 & 1) != 0 || v13[*(v20 + 24)] == 1) && *&v13[*(v20 + 28)] == v34)
    {
      sub_1001ABCD0(v13, v33, type metadata accessor for WiFiAwarePairedDevice);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0704(0, v4[2] + 1, 1);
        v4 = v35;
      }

      v6 = v4[2];
      v24 = v4[3];
      if (v6 >= v24 >> 1)
      {
        sub_1000C0704((v24 > 1), v6 + 1, 1);
        v4 = v35;
      }

      v4[2] = v6 + 1;
      result = sub_1001ABCD0(v33, v4 + v21 + v6 * v22, type metadata accessor for WiFiAwarePairedDevice);
      LOBYTE(v6) = v30;
      v20 = v31;
    }

    else
    {
      result = sub_1001AB714(v13, type metadata accessor for WiFiAwarePairedDevice);
    }

    if (v32 == ++v19)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

void WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v2 + qword_10058F478))
  {
    if (v3)
    {
      return;
    }
  }

  else
  {
    sub_10019D220(v8);
    if (v3)
    {
      return;
    }
  }

  v11 = *(v2 + qword_10058F488);
  if (*(v11 + 16))
  {

    v12 = sub_10002A440(a1);
    if (v13)
    {
      v14 = *(v11 + 56) + 72 * v12;
      v30 = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 64);
      v31 = *(v14 + 16);
      v32 = v16;
      v34 = v17;
      v33 = v15;
      sub_1000B7880(&v30, v29);

      v18 = v33;
      *(a2 + 32) = v32;
      *(a2 + 48) = v18;
      *(a2 + 64) = v34;
      v19 = v31;
      *a2 = v30;
      *(a2 + 16) = v19;
      return;
    }
  }

  (*(v7 + 16))(v10, a1, v6, v8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v30 = v23;
    *v22 = 136315138;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v7 + 8))(v10, v6);
    v27 = sub_100002320(v24, v26, &v30);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "No metadata found for %s", v22, 0xCu);
    sub_100002A00(v23);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  type metadata accessor for WiFiAwareKeychainError(0);
  sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

NSObject *WiFiAwarePairedDevicesStore.getPairedDevicesInfo(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(type metadata accessor for WiFiAwarePairedDevice(0) - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v6;
    v16 = v15;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(a1, a2, &v34);
    *(v16 + 12) = 2080;
    v17 = 0xE900000000000079;
    v18 = 0x7261726F706D6554;
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    if (a3 == 1)
    {
      v20 = 0x6E656E616D726550;
      v19 = 0xE900000000000074;
    }

    if (a3 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (a3)
    {
      v21 = v18;
    }

    else
    {
      v21 = 1701736270;
    }

    HIDWORD(v30) = v14;
    if (a3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    v23 = sub_100002320(v21, v22, &v34);
    v31 = a1;
    v24 = v23;
    v5 = v4;

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, BYTE4(v30), "[GET] Paired devices info for %s with %s storage class.", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v33;

    v25 = v31;
  }

  else
  {

    v25 = a1;
  }

  v34 = _swiftEmptyArrayStorage;
  result = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v25, a2, a3, 0);
  if (v5)
  {
    goto LABEL_21;
  }

  v27 = result;
  isa = result[2].isa;
  if (!isa)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_21:

    return v13;
  }

  v29 = 0;
  while (v29 < *(v27 + 16))
  {
    sub_1001ABBF0(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v12, type metadata accessor for WiFiAwarePairedDevice);
    sub_10019FB98(v12, v6, &v34);
    v29 = (v29 + 1);
    result = sub_1001AB714(v12, type metadata accessor for WiFiAwarePairedDevice);
    if (isa == v29)
    {
      v13 = v34;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_10019FB98(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for WiFiAwarePairedDevice(0);
  __chkstk_darwin();
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(a1, v9);
  if (!v3)
  {
    sub_1001AB6A8();
    sub_1001ABBF0(a1, v7, type metadata accessor for WiFiAwarePairedDevice);
    WiFiAwarePairedDeviceInfo.init(device:metadata:)(v7, v9);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

uint64_t WiFiAwarePairedDevicesStore.getPairedDeviceInfo(for:with:matching:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v5 = v4;
  v51 = a3;
  sub_10005DC58(&unk_10058F4C0, &unk_100492870);
  __chkstk_darwin();
  v48 = &v40 - v8;
  v9 = type metadata accessor for WiFiAwarePairedDevice(0);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin();
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v47 = a4;
  v18(v17, a4, v13, v15);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v5;
    v22 = v21;
    v41 = swift_slowAlloc();
    v53 = v41;
    *v22 = 136315650;
    *(v22 + 4) = sub_100002320(v50, a2, &v53);
    *(v22 + 12) = 2080;
    v23 = 0xE900000000000079;
    v24 = 0x7261726F706D6554;
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    if (v51 == 1)
    {
      v26 = 0x6E656E616D726550;
      v25 = 0xE900000000000074;
    }

    if (v51 != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    if (v51)
    {
      v27 = v24;
    }

    else
    {
      v27 = 1701736270;
    }

    if (v51)
    {
      v28 = v23;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    v29 = sub_100002320(v27, v28, &v53);
    v42 = v12;
    v30 = v29;

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v14 + 8))(v17, v13);
    v34 = sub_100002320(v31, v33, &v53);
    v12 = v42;

    *(v22 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v19, v20, "[GET] Paired device info for %s with %s storageClass and PairingKeyStoreID %s", v22, 0x20u);
    v20 = v41;
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v35 = v49;
  WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v50, a2, v51, 0);
  if (!v35)
  {
    __chkstk_darwin();
    v36 = v48;
    *(&v40 - 2) = v47;
    sub_10019BF58(sub_1001AC5B0, v37, v36);

    if ((*(v45 + 48))(v36, 1, v46) == 1)
    {
      sub_100016290(v36, &unk_10058F4C0, &unk_100492870);
      v20 = type metadata accessor for WiFiAwareKeychainError(0);
      sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1001ABCD0(v36, v12, type metadata accessor for WiFiAwarePairedDevice);
      WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(v12, v52);
      sub_1001AB6A8();
      v38 = v44;
      sub_1001ABBF0(v12, v44, type metadata accessor for WiFiAwarePairedDevice);
      v20 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v38, v52);
      sub_1001AB714(v12, type metadata accessor for WiFiAwarePairedDevice);
    }
  }

  return v20;
}

uint64_t WiFiAwarePairedDevicesStore.getAll<A, B>()(uint64_t a1, ValueMetadata *a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v70 = &v61 - v8;
  Description = a2[-1].Description;
  __chkstk_darwin();
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v76 = &v61 - v10;
  v83 = type metadata accessor for Optional();
  v79 = *(v83 - 8);
  __chkstk_darwin();
  v72 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v61 - v12;
  v78 = v4;
  v81 = qword_10059B508;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "[GET] ALL", v16, 2u);
  }

  v89 = Dictionary.init()();
  v17 = sub_1001AB4DC(a2 == &type metadata for WiFiAwarePairedDeviceMetadata);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  type metadata accessor for CFString(0);
  *(&v88 + 1) = v21;
  *&v87 = kSecMatchLimitAll;
  sub_100085188(&v87, v86);
  v22 = kSecMatchLimitAll;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v17;
  sub_10007FDF4(v86, v18, v20, isUniquelyReferenced_nonNull_native);

  v24 = v85;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v84 = a2;
  *(&v88 + 1) = &type metadata for Bool;
  v71 = a3;
  LOBYTE(v87) = 1;
  sub_100085188(&v87, v86);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v24;
  sub_10007FDF4(v86, v25, v27, v28);

  v29 = v85;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  *(&v88 + 1) = &type metadata for Bool;
  LOBYTE(v87) = 1;
  sub_100085188(&v87, v86);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v29;
  sub_10007FDF4(v86, v30, v32, v33);

  v34 = v85;
  v35 = v82;
  v36 = sub_10019DBC0(0, v85);
  if (v35)
  {
  }

  else if (v36 && (*&v87 = v36, sub_10005DC58(&qword_10058F4D8, &unk_100492880), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v61 = v34;
    v68 = 0;
    v38 = *&v86[0];
    v82 = *(*&v86[0] + 16);
    if (v82)
    {
      v39 = 0;
      v75 = kSecAttrAccount;
      v69 = kSecValueData;
      v65 = (v79 + 16);
      v64 = (Description + 16);
      v63 = (Description + 56);
      v62 = (Description + 8);
      v40 = (v79 + 8);
      v81 = a1 - 8;
      v79 = (a1 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v41 = v84;
      Description = *&v86[0];
      while (v39 < *(v38 + 2))
      {
        v42 = *&v38[8 * v39 + 32];
        if (v41 == &type metadata for WiFiAwarePairedDeviceMetadata)
        {
          if (!*(v42 + 16))
          {
            goto LABEL_39;
          }

          result = sub_10007CFD0(v75);
          if ((v45 & 1) == 0)
          {
            goto LABEL_40;
          }

          sub_100002B30(*(v42 + 56) + 32 * result, v86);
          sub_100085188(v86, &v87);
          swift_dynamicCast();
          UUID.init(uuidString:)();

          v46 = swift_dynamicCast();
          v47 = *(a1 - 8);
          if (v46)
          {
            v48 = v13;
            v49 = 0;
          }

          else
          {
            v48 = v13;
            v49 = 1;
          }

          (*(*(a1 - 8) + 56))(v48, v49, 1, a1);
        }

        else
        {
          if (*(v42 + 16))
          {

            v43 = sub_10007CFD0(v75);
            if (v44)
            {
              sub_100002B30(*(v42 + 56) + 32 * v43, &v87);
            }

            else
            {
              v87 = 0u;
              v88 = 0u;
            }
          }

          else
          {
            v87 = 0u;
            v88 = 0u;
          }

          sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
          v50 = swift_dynamicCast();
          v47 = *(a1 - 8);
          (*(v47 + 56))(v13, v50 ^ 1u, 1, a1);
        }

        v51 = *(v47 + 48);
        if (v51(v13, 1, a1) != 1 && *(v42 + 16) && (v52 = sub_10007CFD0(v69), (v53 & 1) != 0) && (sub_100002B30(*(v42 + 56) + 32 * v52, &v87), (swift_dynamicCast() & 1) != 0))
        {
          v66 = *(&v86[0] + 1);
          v67 = *&v86[0];
          v54 = v68;
          sub_10019ED60(*&v86[0], *(&v86[0] + 1), v84, v73);
          if (v54)
          {

            sub_1000124C8(v67, v66);

            return (*v40)(v13, v83);
          }

          v68 = 0;
          v55 = v72;
          (*v65)(v72, v13, v83);
          result = v51(v55, 1, a1);
          if (result == 1)
          {
            goto LABEL_41;
          }

          v56 = v70;
          v57 = v74;
          v41 = v84;
          (*v64)(v70, v74, v84);
          (*v63)(v56, 0, 1, v41);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          sub_1000124C8(v67, v66);
          (*v62)(v57, v41);
        }

        else
        {

          v41 = v84;
        }

        ++v39;
        result = (*v40)(v13, v83);
        v38 = Description;
        if (v82 == v39)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_32:

      return v89;
    }
  }

  else
  {

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Internal Error while accessing Keychain", v60, 2u);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t WiFiAwarePairedDevicesStore.addPairedDevice(for:metadata:keyStoreID:storageClass:lifetime:client:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v258 = a6;
  v9 = a7.n128_f64[0];
  v269 = a3;
  v275 = a1;
  v13 = type metadata accessor for WiFiAwareKeychainError(0);
  __chkstk_darwin();
  v253 = &v235[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v261 = &v235[-v15];
  __chkstk_darwin();
  v260 = &v235[-v16];
  v17 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  __chkstk_darwin();
  v250 = &v235[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v257 = type metadata accessor for Date();
  v256 = *(v257 - 8);
  __chkstk_darwin();
  v255 = &v235[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&unk_10058F4C0, &unk_100492870);
  __chkstk_darwin();
  v262 = &v235[-v20];
  v270 = type metadata accessor for WiFiAwarePairedDevice(0);
  v272 = *(v270 - 1);
  __chkstk_darwin();
  v252 = &v235[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v251 = &v235[-v22];
  __chkstk_darwin();
  v24 = &v235[-v23];
  __chkstk_darwin();
  v264 = &v235[-v25];
  __chkstk_darwin();
  v263 = &v235[-v26];
  __chkstk_darwin();
  v254 = &v235[-v27];
  __chkstk_darwin();
  v273 = &v235[-v28];
  __chkstk_darwin();
  v266 = &v235[-v29];
  v30 = type metadata accessor for UUID();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v32 = &v235[-v31];
  __chkstk_darwin();
  v39 = &v235[-v38];
  v274 = a5;
  if (a5 == 2)
  {
    v246 = v34;
    v241 = v33;
    v242 = v32;
    v238 = v36;
    v239 = v35;
    v240 = v17;
    v40 = a4;
    v41 = v8;
    if (v9 != 0.0)
    {
      goto LABEL_10;
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v9;
      v50 = "Invalid Lifetime: %f for Temporary StorageClass";
      v51 = v48;
      v52 = v47;
      v53 = v49;
      v54 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v52, v51, v50, v53, v54);
    }

LABEL_21:

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
LABEL_31:
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  if (a5 != 1)
  {
    v47 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      v50 = "Invalid StorageClass";
      v51 = v79;
      v52 = v47;
      v53 = v80;
      v54 = 2;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v246 = v34;
  v241 = v33;
  v242 = v32;
  v238 = v36;
  v239 = v35;
  v240 = v17;
  v40 = a4;
  v41 = v8;
  if (v9 != 0.0)
  {
    v42 = v37;
    v259 = v30;
    v271 = v40;
    v43 = v24;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      *(v46 + 4) = v9;
      *(v46 + 12) = 2048;
      *(v46 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Invalid Lifetime: %f for Permanent StorageClass, Expecting %f", v46, 0x16u);
    }

    v24 = v43;
    v40 = v271;
    v30 = v259;
    v37 = v42;
  }

LABEL_10:
  v271 = v40;
  v248 = v13;
  v55 = qword_10059B508;
  v56 = *(v37 + 16);
  v249 = v37 + 16;
  v259 = v56;
  v57 = v37;
  (v56)(v39);
  v58 = v269;
  sub_1000B7880(v269, v278);

  v245 = v55;
  v59 = Logger.logObject.getter();
  v60 = v58;
  v61 = static os_log_type_t.default.getter();
  sub_1000B7220(v60);

  v247 = v59;
  v62 = os_log_type_enabled(v59, v61);
  v267 = v41;
  v268 = a2;
  v237 = v24;
  v243 = v57;
  if (v62)
  {
    v63 = swift_slowAlloc();
    *&v278[0] = swift_slowAlloc();
    *v63 = 136315906;
    v64 = WiFiAwarePairedDeviceMetadata.description.getter();
    v66 = sub_100002320(v64, v65, v278);
    v236 = v61;
    v67 = v66;

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    if (v274 == 2)
    {
      v68 = 0x7261726F706D6554;
    }

    else
    {
      v68 = 0x6E656E616D726550;
    }

    if (v274 == 2)
    {
      v69 = 0xE900000000000079;
    }

    else
    {
      v69 = 0xE900000000000074;
    }

    v70 = sub_100002320(v68, v69, v278);

    *(v63 + 14) = v70;
    *(v63 + 22) = 2080;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = *(v57 + 8);
    v75 = v30;
    v244 = v74;
    v74(v39, v30);
    v76 = sub_100002320(v71, v73, v278);

    *(v63 + 24) = v76;
    *(v63 + 32) = 2080;
    v77 = v271;
    *(v63 + 34) = sub_100002320(v275, v268, v278);
    v78 = v247;
    _os_log_impl(&_mh_execute_header, v247, v236, "[ADD] Paired device with metdata %s, %s storage class and pairingKeyStoreID %s for %s", v63, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v81 = *(v57 + 8);
    v75 = v30;
    v244 = v81;
    v81(v39, v30);
    v77 = v271;
  }

  if ((sub_1001A4168(v77) & 1) == 0)
  {
    v89 = v77;
    v90 = v246;
    v91 = v75;
    v259(v246, v89, v75);
    v92 = v268;

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *&v278[0] = v274;
      *v95 = 136315394;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v244(v90, v91);
      v99 = sub_100002320(v96, v98, v278);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      *(v95 + 14) = sub_100002320(v275, v92, v278);
      _os_log_impl(&_mh_execute_header, v93, v94, "PairingKeyStoreID %s does not exist for %s", v95, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v244(v90, v75);
    }

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    v47 = v100;
    v259(v100, v89, v91);
    goto LABEL_31;
  }

  v82 = v274;
  v83 = v265;
  v84 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v275, v268, v274, 0);
  v85 = v83;
  if (v83)
  {
    *&v278[0] = v83;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    v86 = v260;
    swift_dynamicCast();
    v87 = v261;
    swift_storeEnumTagMultiPayload();
    v47 = sub_1001AAE20(v86, v87);
    sub_1001AB714(v87, type metadata accessor for WiFiAwareKeychainError);
    sub_1001AB714(v86, type metadata accessor for WiFiAwareKeychainError);
    if ((v47 & 1) == 0)
    {
LABEL_32:
      swift_willThrow();
      return v47;
    }

    v85 = 0;
    v88 = _swiftEmptyArrayStorage;
  }

  else
  {
    v88 = v84;
  }

  __chkstk_darwin();
  *&v235[-16] = v77;
  *&v235[-8] = v82;
  v102 = v262;
  sub_10019BF58(sub_1001AC5D4, v88, v262);
  if ((*(v272 + 48))(v102, 1, v270) == 1)
  {
    v265 = v85;
    sub_100016290(v102, &unk_10058F4C0, &unk_100492870);
    v103 = sub_1001AB830(v88);
    if ((v104 & 1) == 0)
    {
      v47 = v103;
      if (v103)
      {
        v105 = v241;
        v106 = v259;
        v259(v241, v77, v75);
        if (v82 != 2)
        {
          v9 = 0.0;
        }

        v262 = v88;
        v107 = v237;
        v106(v237, v105, v75);
        v108 = v270;
        *(v107 + v270[5]) = v47;
        *(v107 + v108[7]) = v82;
        *(v107 + v108[8]) = v9;
        *(v107 + v108[10]) = v258;
        *(v107 + v108[6]) = 1;
        Date.init()();
        v109 = v75;
        v274 = v243 + 8;
        v244(v105, v75);
        sub_10005DC58(&qword_10058F4E0, &unk_100482FD0);
        v110 = (*(v272 + 80) + 32) & ~*(v272 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_100480F40;
        v112 = v107;
        v113 = v262;
        sub_1001ABBF0(v112, v111 + v110, type metadata accessor for WiFiAwarePairedDevice);
        *&v278[0] = v113;

        sub_100235590(v111);
        if (*(v113 + 2))
        {
          v114 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
          sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
          v115 = sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
          v116 = v265;
          sub_1001A4224(v278, v275, v268, 0, 2u, v114, v117, v115);
          v118 = v116;
          if (v116)
          {

LABEL_53:

            goto LABEL_116;
          }
        }

        else
        {
          v140 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
          sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
          v141 = sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
          v142 = v265;
          sub_1001A4224(v278, v275, v268, 0, 1u, v140, v143, v141);
          v118 = v142;

          if (v142)
          {
            goto LABEL_53;
          }
        }

        v171 = *(v269 + 48);
        v278[2] = *(v269 + 32);
        v278[3] = v171;
        v279 = *(v269 + 64);
        v172 = *(v269 + 16);
        v278[0] = *v269;
        v278[1] = v172;
        v173 = UUID.uuidString.getter();
        v175 = v174;
        sub_1001ABB48();
        v176 = sub_1001ABB9C();
        sub_1001A4224(v278, v173, v175, 1, 1u, &type metadata for WiFiAwarePairedDeviceMetadata, v177, v176);
        if (v118)
        {

          *&v278[0] = v118;
          swift_errorRetain();
          sub_10005DC58(&qword_10058C830, &qword_1004821F0);
          v178 = v253;
          swift_dynamicCast();
          if (swift_getEnumCaseMultiPayload())
          {

            sub_1001AB714(v178, type metadata accessor for WiFiAwareKeychainError);
            v47 = v239;
            v179 = v75;
            v259(v239, v77, v75);
            swift_errorRetain();
            v180 = Logger.logObject.getter();
            v181 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v275 = swift_slowAlloc();
              *&v278[0] = v275;
              *v182 = 136315394;
              sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v184 = dispatch thunk of CustomStringConvertible.description.getter();
              v186 = v185;
              v244(v47, v179);
              v187 = sub_100002320(v184, v186, v278);

              *(v182 + 4) = v187;
              *(v182 + 12) = 2112;
              swift_errorRetain();
              v188 = _swift_stdlib_bridgeErrorToNSError();
              *(v182 + 14) = v188;
              *v183 = v188;
              _os_log_impl(&_mh_execute_header, v180, v181, "Failed to add metadata for %s: %@", v182, 0x16u);
              sub_100016290(v183, &qword_10058B780, &qword_100480AC0);

              v47 = v275;
              sub_100002A00(v275);
            }

            else
            {

              v244(v47, v75);
            }

            goto LABEL_115;
          }

          if (*v178 != -25299)
          {

LABEL_115:
            swift_willThrow();
LABEL_116:
            v162 = &v269;
LABEL_117:
            sub_1001AB714(*(v162 - 32), type metadata accessor for WiFiAwarePairedDevice);
            return v47;
          }

          v204 = v238;
          v205 = v75;
          v259(v238, v77, v75);
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = swift_slowAlloc();
            v273 = swift_slowAlloc();
            *&v278[0] = v273;
            *v208 = 136315138;
            sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v209 = dispatch thunk of CustomStringConvertible.description.getter();
            v211 = v210;
            v244(v204, v205);
            v212 = sub_100002320(v209, v211, v278);

            *(v208 + 4) = v212;
            _os_log_impl(&_mh_execute_header, v206, v207, "Metadata already exists for %s", v208, 0xCu);
            sub_100002A00(v273);

            v189 = v275;

            goto LABEL_102;
          }

          v244(v204, v109);
        }

        else
        {
        }

        v189 = v275;
LABEL_102:
        Strong = swift_weakLoadStrong();
        v191 = v237;
        if (!Strong || (LongTermPairingKeyStore.incrementUsageCount(for:)(v237), v193 = v192, , (v193 & 1) != 0))
        {

          v194 = v191;
          v195 = v252;
          sub_1001ABBF0(v194, v252, type metadata accessor for WiFiAwarePairedDevice);
          v196 = v268;

          v197 = Logger.logObject.getter();
          v198 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v197, v198))
          {
            v199 = swift_slowAlloc();
            *&v278[0] = swift_slowAlloc();
            *v199 = 136315394;
            v200 = WiFiAwarePairedDevice.description.getter();
            v202 = v201;
            sub_1001AB714(v195, type metadata accessor for WiFiAwarePairedDevice);
            v203 = sub_100002320(v200, v202, v278);

            *(v199 + 4) = v203;
            *(v199 + 12) = 2080;
            *(v199 + 14) = sub_100002320(v189, v196, v278);
            _os_log_impl(&_mh_execute_header, v197, v198, "Failed to increment usage count for %s for %s", v199, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_1001AB714(v195, type metadata accessor for WiFiAwarePairedDevice);
          }

          sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
          v47 = v248;
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          goto LABEL_115;
        }

        v213 = v251;
        sub_1001ABBF0(v191, v251, type metadata accessor for WiFiAwarePairedDevice);
        v214 = v268;

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          *&v278[0] = swift_slowAlloc();
          *v217 = 136315394;
          v218 = WiFiAwarePairedDevice.description.getter();
          v219 = v213;
          v221 = v220;
          sub_1001AB714(v219, type metadata accessor for WiFiAwarePairedDevice);
          v222 = sub_100002320(v218, v221, v278);

          *(v217 + 4) = v222;
          *(v217 + 12) = 2080;
          v223 = v214;
          *(v217 + 14) = sub_100002320(v275, v214, v278);
          _os_log_impl(&_mh_execute_header, v215, v216, "Successfully added new paired Device %s for %s", v217, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v224 = v213;
          v223 = v214;

          sub_1001AB714(v224, type metadata accessor for WiFiAwarePairedDevice);
        }

        v225 = qword_10058F498;
        v226 = v267;
        swift_beginAccess();
        v227 = *(v226 + v225);
        if (*(v227 + 16))
        {

          v228 = v223;
          v229 = sub_1000102E8(v275, v223);
          if (v230)
          {
            v231 = *(*(v227 + 56) + 8 * v229);

            v232 = *(v231 + 16);
            if (v232)
            {
              v233 = 0;
              v145 = v250;
              while (v233 < *(v231 + 16))
              {
                sub_1001ABBF0(v231 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v233, v145, type metadata accessor for PairedDeviceXPCDelegate);
                sub_1001A34B0(v145, v237, v269, v234, v267, v275, v228);
                ++v233;
                sub_1001AB714(v145, type metadata accessor for PairedDeviceXPCDelegate);
                if (v232 == v233)
                {
                  goto LABEL_128;
                }
              }

              goto LABEL_140;
            }
          }

LABEL_128:
        }

        v170 = v237;
        goto LABEL_94;
      }
    }

    v134 = v268;

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v278[0] = v138;
      *v137 = 136315138;
      *(v137 + 4) = sub_100002320(v275, v134, v278);
      _os_log_impl(&_mh_execute_header, v135, v136, "Failed to assign new deviceID for %s", v137, 0xCu);
      sub_100002A00(v138);
    }

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    v47 = v248;
    swift_allocError();
    goto LABEL_31;
  }

  sub_1001ABCD0(v102, v266, type metadata accessor for WiFiAwarePairedDevice);
  v119 = v242;
  v259(v242, v77, v75);
  v120 = v268;

  v121 = v77;
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v122, v123))
  {
    LODWORD(v269) = v123;
    v265 = v85;
    v262 = v88;
    v124 = swift_slowAlloc();
    *&v278[0] = swift_slowAlloc();
    *v124 = 136315906;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    v244(v119, v75);
    v128 = sub_100002320(v125, v127, v278);

    *(v124 + 4) = v128;
    *(v124 + 12) = 2080;
    *(v124 + 14) = sub_100002320(v275, v120, v278);
    *(v124 + 22) = 2080;
    v129 = v266;
    swift_beginAccess();
    v130 = *&v129[v270[7]];
    if (v130)
    {
      v131 = v274;
      if (v130 == 2)
      {
        v132 = 0x7261726F706D6554;
        v133 = 0xE900000000000079;
      }

      else if (v130 == 1)
      {
        v132 = 0x6E656E616D726550;
        v133 = 0xE900000000000074;
      }

      else
      {
        v133 = 0xE700000000000000;
        v132 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v133 = 0xE400000000000000;
      v132 = 1701736270;
      v131 = v274;
    }

    v144 = sub_100002320(v132, v133, v278);

    *(v124 + 24) = v144;
    *(v124 + 32) = 1024;
    v139 = v270;
    v47 = v266;
    *(v124 + 34) = v266[v270[6]];
    _os_log_impl(&_mh_execute_header, v122, v269, "PairingKeyStoreID %s already exists for %s with %s storage class [isValid: %{BOOL}d]", v124, 0x26u);
    swift_arrayDestroy();

    v121 = v271;
    v88 = v262;
    v85 = v265;
  }

  else
  {

    v244(v119, v75);
    v139 = v270;
    v47 = v266;
    v131 = v274;
  }

  swift_beginAccess();
  if (*(v47 + v139[6]))
  {

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1001AB714(v47, type metadata accessor for WiFiAwarePairedDevice);
    return v47;
  }

  v145 = v268;
  v146 = v235;
  __chkstk_darwin();
  *&v235[-16] = v121;
  *&v235[-8] = v131;
  v147 = sub_10019C124(sub_1001ABC58, &v235[-32], v88, type metadata accessor for WiFiAwarePairedDevice);
  v269 = v85;
  v265 = v235;
  if (v148)
  {
    v149 = *(v88 + 16);
    v150 = v149;
    v151 = v270;
    goto LABEL_66;
  }

  v150 = v147;
  v149 = v147 + 1;
  if (__OFADD__(v147, 1))
  {
    __break(1u);
LABEL_140:
    __break(1u);

    result = sub_1001AB714(v145, type metadata accessor for PairedDeviceXPCDelegate);
    __break(1u);
    return result;
  }

  v151 = v88 + 16;
  v152 = *(v88 + 16);
  v153 = v273;
  if (v149 == v152)
  {
LABEL_64:
    if (v149 < v150)
    {
      goto LABEL_135;
    }

    v145 = v268;
    v152 = &v281;
    v151 = v270;
    if (v150 < 0)
    {
      goto LABEL_136;
    }

LABEL_66:
    v152 = v150 - v149;
    v146 = v150;
    if (__OFADD__(v149, v150 - v149))
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v277 = v88;
    if (!isUniquelyReferenced_nonNull_native || v150 > *(v88 + 24) >> 1)
    {
      if (v149 <= v150)
      {
        v155 = v150;
      }

      else
      {
        v155 = v149;
      }

      v88 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v155, 1, v88);
      v277 = v88;
    }

    sub_1001ABD38(v150, v149, 0, type metadata accessor for WiFiAwarePairedDevice);
    v156 = v266;
    swift_beginAccess();
    v156[*(v151 + 24)] = 1;
    v157 = v255;
    Date.init()();
    (*(v256 + 40))(&v156[*(v151 + 36)], v157, v257);
    swift_endAccess();
    v149 = v254;
    sub_1001ABBF0(v156, v254, type metadata accessor for WiFiAwarePairedDevice);
    v150 = *(v88 + 16);
    v152 = *(v88 + 24);
    v146 = v150 + 1;
    if (v150 >= v152 >> 1)
    {
      goto LABEL_138;
    }

    goto LABEL_74;
  }

  while (v149 < v152)
  {
    v163 = (*(v272 + 80) + 32) & ~*(v272 + 80);
    v164 = v88;
    v145 = v88 + v163;
    v88 = *(v272 + 72);
    v146 = v88 * v149;
    sub_1001ABBF0(v145 + v88 * v149, v153, type metadata accessor for WiFiAwarePairedDevice);
    if (static UUID.== infix(_:_:)())
    {
      v165 = *(v273 + v270[7]);
      sub_1001AB714(v273, type metadata accessor for WiFiAwarePairedDevice);
      v152 = v274;
      v166 = v165 == v274;
      v153 = v273;
      if (v166)
      {
        v88 = v164;
        goto LABEL_78;
      }
    }

    else
    {
      sub_1001AB714(v153, type metadata accessor for WiFiAwarePairedDevice);
    }

    if (v149 == v150)
    {
      v88 = v164;
    }

    else
    {
      if (v150 < 0)
      {
        goto LABEL_131;
      }

      v167 = *v151;
      if (v150 >= *v151)
      {
        goto LABEL_132;
      }

      v151 = v88 * v150;
      sub_1001ABBF0(v145 + v88 * v150, v263, type metadata accessor for WiFiAwarePairedDevice);
      if (v149 >= v167)
      {
        goto LABEL_133;
      }

      sub_1001ABBF0(v145 + v146, v264, type metadata accessor for WiFiAwarePairedDevice);
      v88 = v164;
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v273;
      if ((v168 & 1) == 0)
      {
        v88 = sub_1000C2BA0(v164);
      }

      v169 = v88 + v163;
      sub_1001AC4B4(v264, v169 + v151, type metadata accessor for WiFiAwarePairedDevice);
      v152 = *(v88 + 16);
      if (v149 >= v152)
      {
        goto LABEL_134;
      }

      sub_1001AC4B4(v263, v169 + v146, type metadata accessor for WiFiAwarePairedDevice);
    }

    ++v150;
LABEL_78:
    ++v149;
    v151 = v88 + 16;
    v152 = *(v88 + 16);
    if (v149 == v152)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v88 = sub_1001176CC((v152 > 1), v146, 1, v88);
LABEL_74:
  v47 = v275;
  *(v88 + 16) = v146;
  sub_1001ABCD0(v149, v88 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v150, type metadata accessor for WiFiAwarePairedDevice);
  v276 = v88;
  v158 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
  sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
  v159 = sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
  v160 = v269;
  sub_1001A4224(&v276, v47, v145, 0, 2u, v158, v161, v159);
  if (v160)
  {

    v162 = &v280;
    goto LABEL_117;
  }

  v170 = v266;
  v47 = *&v266[*(v151 + 20)];
LABEL_94:
  sub_1001AB714(v170, type metadata accessor for WiFiAwarePairedDevice);
  return v47;
}

void sub_1001A34B0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v31 = a6;
  v32 = type metadata accessor for PairedDeviceXPCDelegate(0);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WiFiAwarePairedDevice(0);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB6A8();
  sub_1001ABBF0(a2, v14, type metadata accessor for WiFiAwarePairedDevice);
  sub_1000B7880(a3, v33);
  v15 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v14, a3);
  sub_1001ABBF0(a1, v12, type metadata accessor for PairedDeviceXPCDelegate);

  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33[0] = v29;
    *v20 = 136315650;
    *(v20 + 4) = sub_100002320(v31, a7, v33);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v16;
    *(v20 + 22) = 2080;
    v33[10] = *&v12[*(v32 + 20)];
    swift_unknownObjectRetain();
    v22 = v16;
    sub_10005DC58(&qword_10058F538, &qword_1004928C8);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
    v26 = sub_100002320(v23, v25, v33);

    *(v20 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending ADD event to %s for %@ using %s", v20, 0x20u);
    sub_100016290(v21, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();

    a1 = v30;
  }

  else
  {

    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
  }

  v27 = *(a1 + *(v32 + 20));
  if (v27)
  {
    [v27 pairedDeviceAdded:v16];
  }
}

uint64_t WiFiAwarePairedDevicesStore.authrorizeNewPairedDevice(for:with:storageClass:lifetime:client:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(a3, v15);
  if (!v6)
  {
    v13.n128_f64[0] = a6;
    a5 = WiFiAwarePairedDevicesStore.addPairedDevice(for:metadata:keyStoreID:storageClass:lifetime:client:)(a1, a2, v15, a3, a4, a5, v13);
    sub_1000B7220(v15);
  }

  return a5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.reauthorizePairedDevice(for:with:)(Swift::String a1, Swift::UInt64 with)
{
  v63 = with;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = type metadata accessor for Date();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin();
  v55 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for WiFiAwarePairedDevice(0);
  v7 = *(v62 - 8);
  __chkstk_darwin();
  v59 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = v50 - v9;
  __chkstk_darwin();
  v11 = v50 - v10;
  __chkstk_darwin();
  v13 = v50 - v12;
  __chkstk_darwin();
  v15 = v50 - v14;
  __chkstk_darwin();
  v17 = v50 - v16;
  __chkstk_darwin();
  v19 = v50 - v18;
  v58 = countAndFlagsBits;
  v20 = v61;
  v21 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 1);
  if (v20)
  {
    return;
  }

  v61 = v17;
  v53 = object;
  v54 = v13;
  v50[0] = v11;
  v50[1] = 0;
  v51 = v19;
  v52 = v2;
  v23 = (v21 + 2);
  v22 = v21[2];
  v24 = v21;

  v25 = v62;
  if (!v22)
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    v28 = v53;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64 = v32;
      *v31 = 134218242;
      *(v31 + 4) = v63;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_100002320(v58, v28, &v64);
      _os_log_impl(&_mh_execute_header, v29, v30, "No device found with ID %llu for %s", v31, 0x16u);
      sub_100002A00(v32);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v26 = 0;
  while (1)
  {
    v27 = *v23;
    if (v26 >= *v23)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v17 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    sub_1001ABBF0(&v17[v24 + v13 * v26], v15, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v15[*(v25 + 20)] == v63)
    {
      break;
    }

    ++v26;
    sub_1001AB714(v15, type metadata accessor for WiFiAwarePairedDevice);
    if (v22 == v26)
    {
      goto LABEL_7;
    }
  }

  v22 = type metadata accessor for WiFiAwarePairedDevice;
  v33 = v61;
  sub_1001ABCD0(v15, v61, type metadata accessor for WiFiAwarePairedDevice);
  sub_1001ABCD0(v33, v51, type metadata accessor for WiFiAwarePairedDevice);
  v27 = *(v24 + 16);
  if (!v27)
  {
LABEL_14:
    v36 = *(v24 + 16);
    v7 = v36;
    v23 = v58;
    goto LABEL_20;
  }

  v7 = 0;
  v22 = &v17[v13];
  v34 = &v17[*(v25 + 20)];
  v35 = v63;
  while (*&v34[v24] != v63)
  {
    v34 = &v13[v34];
    ++v7;
    v22 = &v13[v22];
    if (v27 == v7)
    {
      goto LABEL_14;
    }
  }

  v36 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_54;
  }

  v37 = v54;
  if (v36 != v27)
  {
    while (v36 < v27)
    {
      v61 = v24;
      v46 = v22 + v24;
      v47 = v35;
      v48 = v37;
      sub_1001ABBF0(v46, v37, type metadata accessor for WiFiAwarePairedDevice);
      v26 = *(v48 + *(v62 + 20));
      v49 = v48;
      v35 = v47;
      sub_1001AB714(v49, type metadata accessor for WiFiAwarePairedDevice);
      if (v26 == v47)
      {
        v37 = v54;
        v24 = v61;
      }

      else
      {
        if (v36 == v7)
        {
          v37 = v54;
          v24 = v61;
        }

        else
        {
          v24 = v61;
          if (v7 < 0)
          {
            goto LABEL_46;
          }

          v26 = *v23;
          if (v7 >= *v23)
          {
            goto LABEL_47;
          }

          v23 = v7 * v13;
          sub_1001ABBF0(&v17[v61 + v7 * v13], v60, type metadata accessor for WiFiAwarePairedDevice);
          if (v36 >= v26)
          {
            goto LABEL_48;
          }

          sub_1001ABBF0(v22 + v24, v59, type metadata accessor for WiFiAwarePairedDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1000C2BA0(v24);
          }

          sub_1001AC4B4(v59, &v17[v24 + v23], type metadata accessor for WiFiAwarePairedDevice);
          v27 = *(v24 + 16);
          if (v36 >= v27)
          {
            goto LABEL_49;
          }

          sub_1001AC4B4(v60, v22 + v24, type metadata accessor for WiFiAwarePairedDevice);
          v37 = v54;
        }

        ++v7;
      }

      ++v36;
      v23 = v24 + 16;
      v27 = *(v24 + 16);
      v22 = &v13[v22];
      if (v36 == v27)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_45;
  }

  v36 = *(v24 + 16);
LABEL_18:
  if (v36 < v7)
  {
    __break(1u);
  }

  else
  {
    v23 = v58;
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v27 = v7 - v36;
      v26 = v7;
      if (!__OFADD__(v36, v7 - v36))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v24;
        if (!isUniquelyReferenced_nonNull_native || v7 > *(v24 + 24) >> 1)
        {
          if (v36 <= v7)
          {
            v39 = v7;
          }

          else
          {
            v39 = v36;
          }

          v24 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v39, 1, v24);
          v65 = v24;
        }

        sub_1001ABD38(v7, v36, 0, type metadata accessor for WiFiAwarePairedDevice);
        v40 = v62;
        v41 = v51;
        v51[*(v62 + 24)] = 1;
        v42 = v55;
        Date.init()();
        (*(v56 + 40))(v41 + *(v40 + 36), v42, v57);
        v7 = v50[0];
        sub_1001ABBF0(v41, v50[0], type metadata accessor for WiFiAwarePairedDevice);
        v22 = *(v24 + 16);
        v27 = *(v24 + 24);
        v26 = v22 + 1;
        if (v22 < v27 >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v24 = sub_1001176CC((v27 > 1), v26, 1, v24);
LABEL_28:
      *(v24 + 16) = v26;
      sub_1001ABCD0(v7, &v17[v24 + v22 * v13], type metadata accessor for WiFiAwarePairedDevice);
      v64 = v24;
      v43 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
      sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
      v44 = sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
      sub_1001A4224(&v64, v23, v53, 0, 2u, v43, v45, v44);

      sub_1001AB714(v51, type metadata accessor for WiFiAwarePairedDevice);
      return;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_1001A4168(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = LongTermPairingKeyStore.loadPairedPeersWithIDs()();

    __chkstk_darwin();
    v5[2] = a1;
    v3 = sub_100129748(sub_1001AC51C, v5, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1001A4224(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unsigned __int8 a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1001AB774(a2, a3, a4 & 1);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v18 = sub_10019E970(a1, a6, v17, a8);
  if (v8)
  {
  }

  else
  {
    v33 = &type metadata for Data;
    *&v32 = v18;
    *(&v32 + 1) = v19;
    sub_100085188(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v14;
    sub_10007FDF4(v31, v29, v16, isUniquelyReferenced_nonNull_native);

    sub_10019DBC0(a5, v34);

    swift_unknownObjectRelease();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *&v32 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = 5522759;
      v25 = 0x455441445055;
      if (a5 != 2)
      {
        v25 = 0x45564F4D4552;
      }

      if (a5)
      {
        v24 = 4473921;
      }

      if (a5 <= 1u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (a5 <= 1u)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      v28 = sub_100002320(v26, v27, &v32);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_100002320(a2, a3, &v32);
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully performed %s operation for: %s", v23, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t WiFiAwarePairedDevicesStore.updatePairedDeviceName(for:deviceID:to:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v62 = a4;
  v63 = a5;
  v85 = a3;
  v61 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  __chkstk_darwin();
  v60 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for WiFiAwarePairedDevice(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  __chkstk_darwin();
  v19 = &v55[-v18];
  if (a6 != 1)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Updates to temporary paired devices are not supported", v29, 2u);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v57 = v17;
  v64 = a1;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v58 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v59 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    *&v77 = v25;
    *v24 = 134218242;
    *(v24 + 4) = v85;
    *(v24 + 12) = 2080;
    v56 = v21;
    v26 = v64;
    *(v24 + 14) = sub_100002320(v64, a2, &v77);
    _os_log_impl(&_mh_execute_header, v20, v56, "Updating paired device with ID %llu for %s", v24, 0x16u);
    sub_100002A00(v25);

    v8 = v59;
  }

  else
  {

    v26 = v64;
  }

  v31 = v65;
  result = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(v26, a2, 1, 1);
  if (v31)
  {
    return result;
  }

  v32 = result;
  v65 = a2;
  v59 = v8;
  v33 = *(result + 16);
  if (!v33)
  {
  }

  v34 = 0;
  v35 = v68;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_1001ABBF0(v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v34, v16, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v16[*(v13 + 20)] == v85)
    {
      break;
    }

    ++v34;
    sub_1001AB714(v16, type metadata accessor for WiFiAwarePairedDevice);
    if (v33 == v34)
    {
    }
  }

  v36 = v16;
  v37 = v57;
  sub_1001ABCD0(v36, v57, type metadata accessor for WiFiAwarePairedDevice);
  v38 = v58;
  sub_1001ABCD0(v37, v58, type metadata accessor for WiFiAwarePairedDevice);
  v39 = v59;
  WiFiAwarePairedDevicesStore.getPairedDeviceMetadata(for:)(v38, v82);
  v84 = v82[0];
  v79 = v82[2];
  v80 = v82[3];
  v81 = v83;
  v77 = v82[0];
  v78 = v82[1];
  v40 = v63;

  sub_100016290(&v84, &unk_100599FD0, &qword_100482530);
  *&v77 = v62;
  *(&v77 + 1) = v40;
  v75[2] = v79;
  v75[3] = v80;
  v76 = v81;
  v75[0] = v77;
  v75[1] = v78;
  v72 = v79;
  v73 = v80;
  v74 = v81;
  v70 = v77;
  v71 = v78;
  sub_1000B7880(v75, v68);
  v41 = UUID.uuidString.getter();
  v43 = v42;
  sub_1001ABB48();
  v44 = sub_1001ABB9C();
  sub_1001A4224(&v70, v41, v43, 1, 2u, &type metadata for WiFiAwarePairedDeviceMetadata, v45, v44);
  v68[2] = v72;
  v68[3] = v73;
  v69 = v74;
  v68[0] = v70;
  v68[1] = v71;
  sub_1000B7220(v68);

  v46 = qword_10058F498;
  swift_beginAccess();
  v47 = *(v39 + v46);
  if (!*(v47 + 16))
  {
LABEL_22:
    v66[2] = v79;
    v66[3] = v80;
    v67 = v81;
    v66[0] = v77;
    v66[1] = v78;
    sub_1000B7220(v66);
    return sub_1001AB714(v38, type metadata accessor for WiFiAwarePairedDevice);
  }

  v48 = sub_1000102E8(v64, v65);
  if ((v49 & 1) == 0 || (v50 = *(*(v47 + 56) + 8 * v48), , , (v51 = *(v50 + 16)) == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v52 = 0;
  v35 = v60;
  v53 = v61;
  while (v52 < *(v50 + 16))
  {
    sub_1001ABBF0(v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52, v35, type metadata accessor for PairedDeviceXPCDelegate);
    sub_1001A4C74(v35, v38, &v77, v54, v59, v64, v65);
    ++v52;
    sub_1001AB714(v35, type metadata accessor for PairedDeviceXPCDelegate);
    if (v51 == v52)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);

  result = sub_1001AB714(v35, type metadata accessor for PairedDeviceXPCDelegate);
  __break(1u);
  return result;
}

void sub_1001A4C74(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v33 = a6;
  v34 = type metadata accessor for PairedDeviceXPCDelegate(0);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WiFiAwarePairedDevice(0);
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB6A8();
  sub_1001ABBF0(a2, v14, type metadata accessor for WiFiAwarePairedDevice);
  v15 = *(a3 + 48);
  v36[2] = *(a3 + 32);
  v36[3] = v15;
  v37 = *(a3 + 64);
  v16 = *(a3 + 16);
  v36[0] = *a3;
  v36[1] = v16;
  sub_1000B7880(v36, v35);
  v17 = WiFiAwarePairedDeviceInfo.init(device:metadata:)(v14, v36);
  sub_1001ABBF0(a1, v12, type metadata accessor for PairedDeviceXPCDelegate);

  v18 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v22 = 136315650;
    *(v22 + 4) = sub_100002320(v33, a7, v35);
    *(v22 + 12) = 2112;
    *(v22 + 14) = v18;
    *v23 = v18;
    *(v22 + 22) = 2080;
    v38 = *&v12[*(v34 + 20)];
    swift_unknownObjectRetain();
    v24 = v18;
    sub_10005DC58(&qword_10058F538, &qword_1004928C8);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
    v28 = sub_100002320(v25, v27, v35);

    *(v22 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending CHANGED event to %s for %@ using %s", v22, 0x20u);
    sub_100016290(v23, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();

    a1 = v32;
  }

  else
  {

    sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
  }

  v29 = *(a1 + *(v34 + 20));
  if (v29)
  {
    [v29 pairedDeviceChanged:v18];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.deauthorizePairedDevice(for:with:remove:)(Swift::String a1, Swift::UInt64 with, Swift::Bool remove)
{
  v5 = v4;
  v6 = v3;
  v124 = remove;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v116 = *v3;
  v112 = *(type metadata accessor for PairedDeviceXPCDelegate(0) - 8);
  __chkstk_darwin();
  v111 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for UUID();
  v114 = *(v115 - 8);
  __chkstk_darwin();
  v113 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for WiFiAwarePairedDevice(0);
  v12 = *(v126 - 8);
  __chkstk_darwin();
  v117 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = (&v106 - v14);
  __chkstk_darwin();
  v123 = &v106 - v15;
  __chkstk_darwin();
  v120 = &v106 - v16;
  __chkstk_darwin();
  v18 = &v106 - v17;
  __chkstk_darwin();
  v118 = &v106 - v19;
  __chkstk_darwin();
  v122 = &v106 - v20;
  v21 = qword_10059B508;

  v121 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v125 = v6;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v110 = v5;
    v26 = countAndFlagsBits;
    v27 = object;
    v28 = v25;
    v29 = swift_slowAlloc();
    *&v129 = v29;
    *v28 = 134218498;
    *(v28 + 4) = with;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100002320(v26, v27, &v129);
    *(v28 + 22) = 1024;
    *(v28 + 24) = v124;
    _os_log_impl(&_mh_execute_header, v22, v23, "[DEAUTH] Paired device with deviceID %llu for %s [Remove: %{BOOL}d]", v28, 0x1Cu);
    sub_100002A00(v29);

    object = v27;
    countAndFlagsBits = v26;
    v5 = v110;
    v6 = v125;
  }

  v30 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 0);
  if (v5)
  {
    return;
  }

  v31 = v30;
  v109 = 0;
  v108 = countAndFlagsBits;
  v110 = object;
  v33 = v30 + 2;
  v32 = v30[2];

  if (!v32)
  {
LABEL_9:

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_10:

    return;
  }

  v34 = 0;
  while (1)
  {
    v35 = *v33;
    if (v34 >= *v33)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v6 = *(v12 + 72);
    sub_1001ABBF0(v31 + v23 + v6 * v34, v18, type metadata accessor for WiFiAwarePairedDevice);
    if (*(v18 + *(v126 + 20)) == with)
    {
      break;
    }

    ++v34;
    sub_1001AB714(v18, type metadata accessor for WiFiAwarePairedDevice);
    if (v32 == v34)
    {
      goto LABEL_9;
    }
  }

  v36 = v118;
  sub_1001ABCD0(v18, v118, type metadata accessor for WiFiAwarePairedDevice);
  v37 = v36;
  v38 = v122;
  sub_1001ABCD0(v37, v122, type metadata accessor for WiFiAwarePairedDevice);
  v131 = 0;
  v39 = v110;
  v40 = v109;
  v41 = WiFiAwarePairedDevicesStore.getPairedDeviceInfo(for:with:matching:)(v108, v110, 1, v38);
  if (v40)
  {
    v118 = v31;

    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v107 = v42;
      v46 = v45;
      v109 = swift_slowAlloc();
      *&v129 = v109;
      *v44 = 136315394;
      *(v44 + 4) = sub_100002320(v108, v39, &v129);
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v47;
      *v46 = v47;
      v48 = v43;
      v49 = v107;
      _os_log_impl(&_mh_execute_header, v107, v48, "Failed to get paired device info for %s: %@", v44, 0x16u);
      sub_100016290(v46, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v109);
    }

    else
    {
    }

    v107 = 0;
    v31 = v118;
  }

  else
  {
    v107 = v41;
    v131 = v41;
  }

  v109 = 0;
  v35 = *v33;
  if (!*v33)
  {
LABEL_22:
    v12 = *v33;
    v18 = *v33;
    v33 = v125;
    goto LABEL_28;
  }

  v18 = 0;
  v32 = v6 + v23;
  v50 = *(v126 + 20) + v23;
  while (*(v31 + v50) != with)
  {
    v50 += v6;
    ++v18;
    v32 += v6;
    if (v35 == v18)
    {
      goto LABEL_22;
    }
  }

  v118 = with;
  v12 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);

    sub_1001AB714(v23, type metadata accessor for PairedDeviceXPCDelegate);
    __break(1u);
    return;
  }

  v51 = v120;
  if (v12 != v35)
  {
    while (v12 < v35)
    {
      v61 = v31;
      sub_1001ABBF0(v31 + v32, v51, type metadata accessor for WiFiAwarePairedDevice);
      v31 = *(v51 + *(v126 + 20));
      sub_1001AB714(v51, type metadata accessor for WiFiAwarePairedDevice);
      v35 = v118;
      if (v31 == v118)
      {
        v31 = v61;
      }

      else
      {
        if (v12 == v18)
        {
          v31 = v61;
        }

        else
        {
          if (v18 < 0)
          {
            goto LABEL_86;
          }

          v33 = *v33;
          if (v18 >= v33)
          {
            goto LABEL_87;
          }

          v31 = v18 * v6;
          sub_1001ABBF0(v61 + v23 + v18 * v6, v123, type metadata accessor for WiFiAwarePairedDevice);
          if (v12 >= v33)
          {
            goto LABEL_88;
          }

          v33 = v119;
          sub_1001ABBF0(v61 + v32, v119, type metadata accessor for WiFiAwarePairedDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_1000C2BA0(v61);
          }

          v51 = v120;
          v62 = v61 + v23 + v31;
          v31 = v61;
          sub_1001AC4B4(v33, v62, type metadata accessor for WiFiAwarePairedDevice);
          v35 = v61[2];
          if (v12 >= v35)
          {
            goto LABEL_89;
          }

          sub_1001AC4B4(v123, v61 + v32, type metadata accessor for WiFiAwarePairedDevice);
        }

        ++v18;
      }

      ++v12;
      v33 = (v31 + 16);
      v35 = *(v31 + 16);
      v32 += v6;
      if (v12 == v35)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_85;
  }

  v12 = v35;
LABEL_26:
  if (v12 < v18)
  {
    goto LABEL_92;
  }

  v33 = v125;
  if (v18 < 0)
  {
    goto LABEL_93;
  }

LABEL_28:
  v35 = v18 - v12;
  v32 = v18;
  if (__OFADD__(v12, v18 - v12))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = v31;
  if (!isUniquelyReferenced_nonNull_native || v18 > *(v31 + 24) >> 1)
  {
    if (v12 <= v18)
    {
      v53 = v18;
    }

    else
    {
      v53 = v12;
    }

    v31 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v53, 1, v31);
    v132 = v31;
  }

  sub_1001ABD38(v18, v12, 0, type metadata accessor for WiFiAwarePairedDevice);
  v118 = v31;
  v132 = v31;

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = os_log_type_enabled(v54, v55);
  if (!v124)
  {
    if (v56)
    {
      v63 = swift_slowAlloc();
      *&v129 = swift_slowAlloc();
      *v63 = 136315394;
      v18 = v122;
      swift_beginAccess();
      v64 = WiFiAwarePairedDevice.description.getter();
      v66 = sub_100002320(v64, v65, &v129);

      *(v63 + 4) = v66;
      v33 = v125;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_100002320(v108, v110, &v129);
      _os_log_impl(&_mh_execute_header, v54, v55, "Marking paired device %s as invalid for %s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v18 = v122;
    }

    v31 = v118;
    swift_beginAccess();
    *(v18 + *(v126 + 24)) = 0;
    sub_1001ABBF0(v18, v117, type metadata accessor for WiFiAwarePairedDevice);
    v32 = *(v31 + 16);
    v35 = *(v31 + 24);
    v12 = v32 + 1;
    if (v32 >= v35 >> 1)
    {
      goto LABEL_94;
    }

    goto LABEL_59;
  }

  if (v56)
  {
    v57 = swift_slowAlloc();
    *&v129 = swift_slowAlloc();
    *v57 = 136315394;
    v18 = v122;
    swift_beginAccess();
    v58 = WiFiAwarePairedDevice.description.getter();
    v60 = sub_100002320(v58, v59, &v129);

    *(v57 + 4) = v60;
    v33 = v125;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_100002320(v108, v110, &v129);
    _os_log_impl(&_mh_execute_header, v54, v55, "Removing paired device %s for %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = v122;
  }

  v31 = v118;
  v67 = v114;
  v68 = v113;
  swift_beginAccess();
  v69 = v115;
  (*(v67 + 16))(v68, v18, v115);
  v70 = v109;
  sub_1001A84B0(v68);
  if (v70)
  {
    (*(v67 + 8))(v68, v69);

    sub_1001AB714(v18, type metadata accessor for WiFiAwarePairedDevice);
  }

  else
  {
    v109 = 0;
    (*(v67 + 8))(v68, v69);
    v71 = v108;
    while (1)
    {
      v118 = v31;
      v72 = *(v31 + 16);

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      v75 = os_log_type_enabled(v73, v74);
      if (v72)
      {
        if (v75)
        {
          v76 = swift_slowAlloc();
          *&v129 = swift_slowAlloc();
          *v76 = 136315394;
          v77 = v108;
          v78 = v110;
          *(v76 + 4) = sub_100002320(v108, v110, &v129);
          *(v76 + 12) = 2080;
          v79 = v118;

          v80 = Array.description.getter();
          v82 = v81;

          v83 = sub_100002320(v80, v82, &v129);
          v33 = v125;

          *(v76 + 14) = v83;
          _os_log_impl(&_mh_execute_header, v73, v74, "Updating paired device list for %s to %s", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v78 = v110;
          v79 = v118;
          v77 = v108;
        }

        v87 = sub_1001AB774(v77, v78, 0);
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;
        *&v128[0] = v79;

        v91 = sub_10005DC58(&qword_10058F4E8, &qword_100492890);
        sub_1001ABAAC(&qword_10058F4F0, &qword_10058F4F8, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
        v92 = sub_1001ABAAC(&qword_10058F500, &qword_10058F508, protocol conformance descriptor for WiFiAwarePairedDevice, &protocol conformance descriptor for <A> [A]);
        v93 = v109;
        v95 = sub_10019E970(v128, v91, v94, v92);
        if (v93)
        {

          sub_1001AB714(v122, type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_10;
        }

        v97 = v95;
        v98 = v96;

        v130 = &type metadata for Data;
        *&v129 = v97;
        *(&v129 + 1) = v98;
        sub_100085188(&v129, v128);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v87;
        sub_10007FDF4(v128, v88, v90, v99);

        sub_10019DBC0(2u, v127);
        v18 = v122;

        v71 = v108;
      }

      else
      {
        if (v75)
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&v129 = v85;
          *v84 = 136315138;
          v86 = v110;
          *(v84 + 4) = sub_100002320(v71, v110, &v129);
          _os_log_impl(&_mh_execute_header, v73, v74, "No paired devices left for %s. Removing!", v84, 0xCu);
          sub_100002A00(v85);
        }

        else
        {

          v86 = v110;
        }

        v100 = sub_1001AB774(v71, v86, 0);
        v101 = v109;
        sub_10019DBC0(3u, v100);
        if (v101)
        {

          sub_1001AB714(v18, type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_10;
        }
      }

      swift_unknownObjectRelease();
      v102 = qword_10058F498;
      swift_beginAccess();
      v103 = *(v33 + v102);
      v31 = v112;
      v23 = v111;
      if (!*(v103 + 16))
      {

        goto LABEL_83;
      }

      v104 = sub_1000102E8(v71, v110);
      if ((v105 & 1) == 0)
      {
        break;
      }

      v12 = *(*(v103 + 56) + 8 * v104);

      v32 = *(v12 + 16);
      if (!v32)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        v35 = *(v12 + 16);
        if (v6 >= v35)
        {
          break;
        }

        sub_1001ABBF0(v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v6, v23, type metadata accessor for PairedDeviceXPCDelegate);
        sub_1001A6488(v23, &v131, v33, v71, v110);
        ++v6;
        sub_1001AB714(v23, type metadata accessor for PairedDeviceXPCDelegate);
        if (v32 == v6)
        {
          goto LABEL_82;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v31 = sub_1001176CC((v35 > 1), v12, 1, v31);
LABEL_59:
      v71 = v108;
      *(v31 + 16) = v12;
      sub_1001ABCD0(v117, v31 + v23 + v32 * v6, type metadata accessor for WiFiAwarePairedDevice);
      v132 = v31;
    }

LABEL_82:

LABEL_83:
    sub_1001AB714(v18, type metadata accessor for WiFiAwarePairedDevice);
  }
}

void sub_1001A6488(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for PairedDeviceXPCDelegate(0);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  if (*a2)
  {
    v31 = a4;
    sub_1001ABBF0(a1, v12, type metadata accessor for PairedDeviceXPCDelegate);
    v14 = v13;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v29 = a1;
      v20 = v19;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v18 = 136315650;
      *(v18 + 4) = sub_100002320(v31, a5, &v33);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v14;
      *v20 = v13;
      *(v18 + 22) = 2080;
      v32 = *&v12[*(v10 + 20)];
      swift_unknownObjectRetain();
      v21 = v14;
      sub_10005DC58(&qword_10058F538, &qword_1004928C8);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
      v25 = sub_100002320(v22, v24, &v33);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Sending REMOVE event to %s for %@ using %s", v18, 0x20u);
      sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
      a1 = v29;

      swift_arrayDestroy();
    }

    else
    {

      sub_1001AB714(v12, type metadata accessor for PairedDeviceXPCDelegate);
    }

    v26 = *(a1 + *(v10 + 20));
    if (v26)
    {
      [v26 pairedDeviceRemoved:v14];
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiAwarePairedDevicesStore.removeAllPairedDevices(for:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = *(type metadata accessor for WiFiAwarePairedDevice(0) - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v2;
    v14 = v13;
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(countAndFlagsBits, object, &v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "[REMOVE] ALL paired devices for %s", v12, 0xCu);
    sub_100002A00(v14);
    v3 = v20;
  }

  v15 = WiFiAwarePairedDevicesStore.getPairedDevices(for:with:includeInvalid:)(countAndFlagsBits, object, 1, 1);
  if (!v3)
  {
    v16 = v15;
    v17 = v15[2];
    if (v17)
    {
      v18 = 0;
      while (v18 < v16[2])
      {
        sub_1001ABBF0(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, type metadata accessor for WiFiAwarePairedDevice);
        sub_1001A6A00(v9, v4, countAndFlagsBits, object);
        ++v18;
        sub_1001AB714(v9, type metadata accessor for WiFiAwarePairedDevice);
        if (v17 == v18)
        {
          goto LABEL_8;
        }
      }

      __break(1u);

      sub_1001AB714(v9, type metadata accessor for WiFiAwarePairedDevice);
      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1001A6A00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for WiFiAwarePairedDevice(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(v9 + 28));
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  WiFiAwarePairedDevicesStore.deauthorizePairedDevice(for:with:remove:)(v11, v10, 1);
  if (v12)
  {
    sub_1001ABBF0(a1, v8, type metadata accessor for WiFiAwarePairedDevice);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = 0;
      v16 = v15;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v16 = 136315650;
      v17 = WiFiAwarePairedDevice.description.getter();
      v19 = v18;
      sub_1001AB714(v8, type metadata accessor for WiFiAwarePairedDevice);
      v20 = sub_100002320(v17, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_100002320(a3, a4, &v27);
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v21;
      v22 = v24;
      *v24 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to remove %s for %s: %@", v16, 0x20u);
      sub_100016290(v22, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      sub_1001AB714(v8, type metadata accessor for WiFiAwarePairedDevice);
    }
  }
}

uint64_t WiFiAwarePairedDevicesStore.removeAllPairedDevices()(__n128 a1)
{
  v2[7] = v1;
  v2[8] = *v1;
  v3 = type metadata accessor for WiFiAwareKeychainError(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_10005DC58(&qword_10058F520, &qword_1004928A0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10005DC58(&qword_10058F528, &qword_1004928A8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_10005DC58(&qword_10058F530, &qword_1004928B0);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6EDC, v1, 0);
}

void sub_1001A6EDC(uint64_t a1)
{
  v45 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[REMOVE] ALL paired devices", v4, 2u);
  }

  v5 = v1[7];

  v6 = qword_10058F498;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  v43 = v1;
  v40 = v7;
  while (v11)
  {
    v14 = v13;
LABEL_13:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(v7 + 48) + ((v14 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];

    v19._countAndFlagsBits = v18;
    v19._object = v17;
    WiFiAwarePairedDevicesStore.removeAllPairedDevices(for:)(v19);
    if (v20)
    {

      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        log = v21;
        v24 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v23 = 136315394;
        v25 = sub_100002320(v18, v17, &v44);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2112;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v26;
        *v24 = v26;
        _os_log_impl(&_mh_execute_header, log, v22, "Failed to remove ALL paired devices for %s: %@", v23, 0x16u);
        sub_100016290(v24, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v42);

        v7 = v40;
      }

      else
      {
      }
    }

    else
    {
    }

    v13 = v14;
    v1 = v43;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  v27 = sub_1001AB4DC(0);
  sub_10019DBC0(3u, v27);

  swift_unknownObjectRelease();
  v28 = sub_1001AB4DC(1);
  sub_10019DBC0(3u, v28);

  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Uninstalling ALL identities from pairing keystore", v31, 2u);
    }

    if (swift_weakLoadStrong())
    {
      LongTermPairingKeyStore.uninstallAllIdentities()();
    }

    v33 = v1[22];
    v32 = v1[23];
    v34 = v1[21];
    sub_10005DC58(&qword_10058F470, &unk_100492840);
    AsyncStream.Continuation.yield(_:)();
    (*(v33 + 8))(v32, v34);
    v35 = swift_task_alloc();
    v1[24] = v35;
    *v35 = v1;
    v35[1] = sub_1001A7CB8;

    sub_1001A7EF0();
  }

  else
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "PairingKeyStore is nil", v38, 2u);
    }

    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v39 = v1[1];

    v39();
  }
}

uint64_t sub_1001A7CB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001A7F10()
{
  v1 = [objc_allocWithZone(RPClient) init];
  v0[19] = v1;
  v2 = String._bridgeToObjectiveC()();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_1001A8070;
  v3 = swift_continuation_init();
  v0[17] = sub_10005DC58(&qword_10058F750, &qword_100492AC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001A8404;
  v0[13] = &unk_100566C28;
  v0[14] = v3;
  [v1 regenerateSelfIdentity:v2 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001A8070()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_1001A8290;
  }

  else
  {
    v4 = sub_1001A8190;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A8190()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Regenerated rapport self identity", v3, 2u);
  }

  v4 = *(v0 + 152);

  [v4 invalidate];
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001A8290(uint64_t a1)
{
  v2 = v1[20];
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to rapport regenerate self identity: %@", v5, 0xCu);
    sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
  }

  v8 = v1[19];

  swift_willThrow();
  v9 = v1[1];

  return v9();
}

uint64_t sub_1001A8404(uint64_t a1, void *a2)
{
  v3 = sub_100029B34((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void sub_1001A84B0(uint64_t a1)
{
  v2 = v1;
  v54 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v50 - v7;
  v8 = __chkstk_darwin();
  v10 = &v50 - v9;
  v11 = qword_10059B508;
  v12 = *(v5 + 16);
  v60 = a1;
  v55 = v12;
  (v12)(&v50 - v9, a1, v4, v8);
  v56 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v58 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v62 = v51;
    *v16 = 136315138;
    sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v2;
    v19 = v18;
    v57 = *(v5 + 8);
    v57(v10, v4);
    v20 = sub_100002320(v17, v19, &v62);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Decrementing usage count for %s", v16, 0xCu);
    sub_100002A00(v51);
  }

  else
  {

    v57 = *(v5 + 8);
    v57(v10, v4);
  }

  Strong = swift_weakLoadStrong();
  v22 = v59;
  v23 = v60;
  if (Strong && (v24 = LongTermPairingKeyStore.decrementUsageCount(for:)(v60), v26 = v25, , (v26 & 1) == 0))
  {
    if (!v24)
    {
      v37 = v53;
      v55(v53, v23, v4);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v62 = v41;
        *v40 = 136315138;
        sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        v57(v37, v4);
        v45 = sub_100002320(v42, v44, &v62);

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing paired device metadata for %s", v40, 0xCu);
        sub_100002A00(v41);
      }

      else
      {

        v57(v37, v4);
      }

      v46 = UUID.uuidString.getter();
      v48 = sub_1001AB774(v46, v47, 1);

      v49 = v61;
      sub_10019DBC0(3u, v48);

      v61 = v49;
      if (!v49)
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v55(v22, v23, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v22;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136315138;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v57(v29, v4);
      v35 = sub_100002320(v32, v34, &v62);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to decrement usage count for %s", v30, 0xCu);
      sub_100002A00(v31);
    }

    else
    {

      v57(v22, v4);
    }

    type metadata accessor for WiFiAwareKeychainError(0);
    sub_1001AB660(&unk_10058F4B0, type metadata accessor for WiFiAwareKeychainError, byte_100492A70);
    v36 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v61 = v36;
    swift_willThrow();
  }
}

void WiFiAwarePairedDevicesStore.startEvents(for:to:with:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PairedDeviceXPCDelegate(0);
  v16 = __chkstk_darwin();
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v58 = v10;
    v59 = v15;
    v56 = v13;
    v57 = v11;
    v54 = *(v11 + 16);
    v55 = a4;
    v54(v18, a4, v10, v16);
    *&v18[*(v14 + 20)] = a3;
    v20 = qword_10058F498;
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v5 + v20);
    v60 = a1;
    v61 = v22;
    *(v5 + v20) = 0x8000000000000000;
    v24 = sub_1000102E8(a1, a2);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
      goto LABEL_21;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v5 + v20) = v22;
        if (v23)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100197404();
        v22 = v61;
        *(v5 + v20) = v61;
        if (v28)
        {
LABEL_13:
          v20 = v22[7];
          v22 = *(v20 + 8 * v24);
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + 8 * v24) = v22;
          if (v35)
          {
LABEL_14:
            v37 = v22[2];
            v36 = v22[3];
            v38 = v59;
            if (v37 >= v36 >> 1)
            {
              v52 = sub_1001176F4((v36 > 1), v37 + 1, 1, v22);
              v38 = v59;
              v22 = v52;
              *(v20 + 8 * v24) = v52;
            }

            v22[2] = v37 + 1;
            sub_1001ABCD0(v18, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, type metadata accessor for PairedDeviceXPCDelegate);
            swift_endAccess();
            v39 = v56;
            v40 = v58;
            (v54)(v56, v55, v58);
            swift_unknownObjectRetain();

            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = v39;
              v44 = swift_slowAlloc();
              v62[0] = swift_slowAlloc();
              *v44 = 136315650;
              *(v44 + 4) = sub_100002320(v60, a2, v62);
              *(v44 + 12) = 2080;
              v61 = a3;
              swift_unknownObjectRetain();
              sub_10005DC58(&qword_10058F538, &qword_1004928C8);
              v45 = String.init<A>(describing:)();
              v47 = sub_100002320(v45, v46, v62);

              *(v44 + 14) = v47;
              *(v44 + 22) = 2080;
              sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v48 = dispatch thunk of CustomStringConvertible.description.getter();
              v50 = v49;
              (*(v57 + 8))(v43, v40);
              v51 = sub_100002320(v48, v50, v62);

              *(v44 + 24) = v51;
              _os_log_impl(&_mh_execute_header, v41, v42, "WiFiAwarePairedDeviceStore monitoring [START] for: %s to: %s with delegateID: %s", v44, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v57 + 8))(v39, v40);
            }

            return;
          }

LABEL_21:
          v22 = sub_1001176F4(0, v22[2] + 1, 1, v22);
          *(v20 + 8 * v24) = v22;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1001907B8(v27, isUniquelyReferenced_nonNull_native);
      v22 = v61;
      v29 = sub_1000102E8(v60, a2);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

      v24 = v29;
      *(v5 + v20) = v22;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    v22[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v22[6] + 16 * v24);
    *v31 = v60;
    v31[1] = a2;
    *(v22[7] + 8 * v24) = _swiftEmptyArrayStorage;
    v32 = v22[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v22[2] = v34;

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void WiFiAwarePairedDevicesStore.stopEvents(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v34 = v3;
    v12 = sub_10019C908(v37);
    v35 = a1;
    v14 = sub_1001A95D0(v36, a1, a2);
    if (*v13)
    {
      v15 = v13;
      __chkstk_darwin();
      *(&v33 - 2) = a3;
      v16 = sub_1001AAABC(sub_1001AC5B0, (&v33 - 4));
      v17 = *(*v15 + 16);
      if (v17 < v16)
      {
        __break(1u);
        return;
      }

      sub_1001ABE84(v16, v17);
      (v14)(v36, 0);
      (v12)(v37, 0);
    }

    else
    {
      (v14)(v36, 0);
      (v12)(v37, 0);
    }

    (*(v8 + 16))(v10, a3, v7);

    v18 = v34;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100002320(v35, a2, v37);
      *(v21 + 12) = 2080;
      sub_1001AB660(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v8 + 8))(v10, v7);
      v25 = sub_100002320(v22, v24, v37);
      v18 = v34;

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "WiFiAwarePairedDeviceStore monitoring [STOP] for: %s for delegateID: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v26 = qword_10058F498;
    swift_beginAccess();
    v27 = *(v18 + v26);
    v28 = v35;
    if (*(v27 + 16))
    {

      v29 = sub_1000102E8(v28, a2);
      if (v30)
      {
        v31 = *(*(v27 + 56) + 8 * v29);

        v32 = *(v31 + 16);

        if (v32)
        {
          return;
        }

        swift_beginAccess();
        sub_10007FBC8(v28, a2);
        swift_endAccess();
      }
    }
  }
}

uint64_t (*sub_1001A9554(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1001A9D98(v4, a2);
  return sub_1001A95CC;
}

uint64_t (*sub_1001A95D0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1001A9E40(v6, a2, a3);
  return sub_1001AC5CC;
}

uint64_t (*sub_1001A9658(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1001A9EEC(v6, a2, a3);
  return sub_1001AC5CC;
}

void sub_1001A96E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

_OWORD *sub_1001A9754(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100085188(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1001A97C0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
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

unint64_t sub_1001A9818(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
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

_OWORD *sub_1001A9878(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1001A9938(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1001A9988(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100085188(a3, (a4[7] + 32 * a1));
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