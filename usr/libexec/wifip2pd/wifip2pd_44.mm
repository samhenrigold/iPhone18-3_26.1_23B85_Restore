void sub_10037DA54()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D00, &qword_1004B1EB8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037DBA8()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D20, &unk_1004B1ED0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 6 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037DD00()
{
  v1 = v0;
  sub_10005DC58(&unk_100597D40, &unk_1004B1EF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037DE40()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B140, &qword_1004B1EC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 6) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 7 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v18 + 6);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 4) = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037DFA0()
{
  v1 = v0;
  sub_10005DC58(&unk_10058B3A0, &qword_10047F4C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 17);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037E110()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B260, &unk_1004B4E00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_10037E274(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10005DC58(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
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

      v18 = *(v4 + 56 + 8 * v10);
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

unint64_t sub_10037E3A4(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v17, a1 & 0xFFFFFFFFFFFFLL);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(*(v3 + 48) + 6 * v6) | (*(*(v3 + 48) + 6 * v6 + 2) << 16), a1 & 0xFFFFFFFFFFFFLL))
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v17 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DBA8();
      v11 = v17;
    }

    v12 = (*(v11 + 48) + 6 * v6);
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 5);
    sub_10037E7A8(v6);
    v9 = 0;
    *v1 = v17;
    v8 = v13 | (v14 << 32) | (v15 << 40);
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 48);
}

uint64_t sub_10037E4EC(unsigned __int16 a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 2 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DD00();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 2 * v6);
    sub_10037E96C(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 16);
}

void sub_10037E5E4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NANClusterChangeEvent.hash(into:)(&v21, (BYTE5(a1) << 32) & 0xFFFF00FF00000000 | (v8 << 40) | (v7 << 24) | (v6 << 16) | (v5 << 8) | BYTE1(a1));
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v9 + 48) - v12 + 8 * v12);
      if (static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(*v14 | (*(v14 + 2) << 16) | (*(v14 + 3) << 24), (BYTE5(a1) << 40) | (BYTE6(a1) << 48) | (BYTE4(a1) << 32) | (BYTE3(a1) << 24) | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1))
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v21 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10037DE40();
      v17 = v21;
    }

    v18 = *(v17 + 48) - v12 + 8 * v12;
    v19 = *(v18 + 4);
    v20 = *(v18 + 6);
    *a2 = *v18;
    *(a2 + 4) = v19;
    *(a2 + 6) = v20;
    sub_10037EAF4(v12);
    v15 = 0;
    *v2 = v21;
  }

  else
  {
LABEL_5:
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v15 = 1;
    *a2 = 0;
  }

  *(a2 + 7) = v15;
}

void sub_10037E7A8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = (*(v3 + 48) + 6 * v6);
        v12 = *(v11 + 1);
        v13 = *v11;
        Hasher.init(_seed:)();
        NANClusterChangeEvent.hash(into:)(v21, v13 | (v12 << 16));
        v14 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 6 * v2;
          v17 = (v15 + 6 * v6);
          if (v2 != v6 || v16 >= v17 + 6)
          {
            v10 = *v17;
            *(v16 + 4) = *(v17 + 2);
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_10037E96C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 2 * v6);
        v12 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 2 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_10037EAF4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v12 = *(v3 + 48) - v6 + 8 * v6;
        v13 = *(v12 + 3);
        v14 = *v12;
        v15 = *(v12 + 1);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        NANClusterChangeEvent.hash(into:)(v23, v15 | (v13 << 16));
        v16 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = v17 - v2 + 8 * v2;
          v19 = v17 - v6 + 8 * v6;
          if (v2 != v6 || v18 >= v19 + 7)
          {
            v10 = *v19;
            v11 = *(v19 + 4);
            *(v18 + 6) = *(v19 + 6);
            *(v18 + 4) = v11;
            *v18 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }
}

void *sub_10037ECD8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

    sub_10037F0C4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_10037ED68(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v34 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v7;
    v37 = v4;
    v30 = &v27;
    __chkstk_darwin();
    v29 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v31 = 0;
    v9 = 0;
    v7 = a3 + 56;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v4 = a3;
      v18 = *(a3 + 48);
      v19 = v33;
      v20 = *(v34 + 72);
      v32 = v17;
      sub_1000275E0(v18 + v20 * v17, v33, type metadata accessor for AWDLPeer.AdvertisedService);
      v21 = v37;
      v22 = v35(v19);
      sub_100380008(v19, type metadata accessor for AWDLPeer.AdvertisedService);
      v37 = v21;
      if (v21)
      {

        return swift_willThrow();
      }

      v12 = v36;
      if (v22)
      {
        *&v29[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_10037F2E8(v29, v28, v31, a3);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10037F2E8(v29, v28, v31, a3);
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_10037ECD8(v25, v7, a3, v35);

  if (!v4)
  {
    return v26;
  }

  return result;
}

void sub_10037F0C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v28 = a4;
  v23 = a2;
  v24 = a1;
  v27 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v25 = 0;
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v29 = a3;
  v9 = *(a3 + 56);
  v8 = a3 + 56;
  v7 = v9;
  v10 = 1 << *(v8 - 24);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v14 = v26;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v30 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v6 << 6);
    sub_1000275E0(*(v29 + 48) + *(v27 + 72) * v18, v14, type metadata accessor for AWDLPeer.AdvertisedService);
    v19 = v31;
    v20 = v28(v14);
    sub_100380008(v14, type metadata accessor for AWDLPeer.AdvertisedService);
    v31 = v19;
    if (v19)
    {
      return;
    }

    v12 = v30;
    if (v20)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:
        v22 = v29;

        sub_10037F2E8(v24, v23, v25, v22);
        return;
      }
    }
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      goto LABEL_16;
    }

    v17 = *(v8 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v30 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_10037F2E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v31 = a1;
  v32 = a4;
  v30 = result;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v34 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v35 = *(v33 + 72);
    sub_1000275E0(v18 + v35 * (v15 | (v13 << 6)), v9, type metadata accessor for AWDLPeer.AdvertisedService);
    Hasher.init(_seed:)();
    v19 = v9[41];
    String.lowercased()();
    String.hash(into:)();

    String.lowercased()();
    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v19);
    result = Hasher._finalize()();
    v10 = v30;
    v20 = -1 << *(v30 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a1 = v31;
      a4 = v32;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a1 = v31;
    a4 = v32;
LABEL_26:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_10037D4B0(v9, *(v10 + 48) + v23 * v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v34;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v34 = (v17 - 1) & v17;
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

uint64_t *sub_10037F660(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  v4 = qword_100597980;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Browse(0, v5, v6, v7);
  sub_10006153C();
  *(v1 + v4) = Dictionary.init()();
  v8 = qword_100597988;
  type metadata accessor for AWDLDiscoveryEngine.Advertise(0, v5, v6, v9);
  sub_10002B68C();
  *(v1 + v8) = Dictionary.init()();
  v10 = qword_10059BA40;
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(0, v5, v6, v11);
  *(v1 + v10) = Dictionary.init()();
  *(v1 + qword_10059BA38) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_10037F80C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v6 = a4;
  v10 = a4 >> 8;
  Logger.init(subsystem:category:)();
  *(v4 + qword_100597A28) = 0;
  *(v4 + qword_100597A30) = 0;
  *(v4 + qword_100597A38) = 0;
  *(v4 + qword_100597A40) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v4 + qword_100597A18) = a1;
  v11 = v4 + qword_100597A20;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = v6 & 1;
  *(v11 + 17) = v10;

  swift_unownedRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_10037BFE4();
    v18 = v17;

    v19 = sub_100002320(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Created %s", v14, 0xCu);
    sub_100002A00(v15);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_10037FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Logger.init(subsystem:category:)();
  *(v5 + qword_100597AF8) = 0;
  *(v5 + qword_100597B00) = 0;
  *(v5 + qword_100597B08) = 0;
  *(v5 + qword_100597B10) = 0;
  *(v5 + qword_100597AD8) = a1;
  v10 = v5 + qword_100597AE0;
  *(v10 + 32) = *(a2 + 32);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  v12 = v5 + qword_100597AE8;
  *(v12 + 48) = *(a3 + 48);
  v13 = *(a3 + 32);
  *(v12 + 16) = *(a3 + 16);
  *(v12 + 32) = v13;
  *v12 = *a3;
  sub_1000275E0(a4, v5 + qword_100597AF0, type metadata accessor for DNSRecords.SRV);

  swift_unownedRetain();
  sub_100083AB8(a3, v23);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    v18 = sub_10037CE1C();
    v20 = v19;

    v21 = sub_100002320(v18, v20, v23);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Created %s", v16, 0xCu);
    sub_100002A00(v17);

    sub_100083B14(a3);
  }

  else
  {
    sub_100083B14(a3);
  }

  sub_100380008(a4, type metadata accessor for DNSRecords.SRV);
  return v5;
}

uint64_t sub_10037FC98(__int128 *a1)
{
  v3 = v1 + qword_100597AE8;
  v4 = *(v1 + qword_100597AE8 + 16);
  v10[0] = *(v1 + qword_100597AE8);
  v10[1] = v4;
  v11 = *(v1 + qword_100597AE8 + 32);
  v12 = *(v1 + qword_100597AE8 + 48);
  v13[0] = v10[0];
  v13[1] = v4;
  v13[2] = v11;
  v14 = v12;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  *(v3 + 48) = *(a1 + 6);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *v3 = v5;
  sub_100083AB8(v10, v9);
  sub_100083AB8(a1, v9);
  sub_100083B14(v13);
  sub_10037C084(v10);
  return sub_100083B14(v10);
}

uint64_t sub_10037FD3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = a2 >> 8;
  v11 = a2 >> 16;
  v12 = a2 >> 24;
  v13 = HIDWORD(a2);
  v14 = a2 >> 40;
  Logger.init(subsystem:category:)();
  *(v5 + qword_10059BA70) = 0;
  *(v5 + qword_10059BA78) = 0;
  *(v5 + qword_10059BA50) = a1;
  v15 = (v5 + qword_10059BA58);
  *v15 = v8;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v16 = a4;
  v15[4] = v13;
  v15[5] = v14;
  v17 = v5 + qword_10059BA60;
  v18 = *(a3 + 16);
  *v17 = *a3;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a3 + 32);
  sub_1000275E0(a4, v5 + qword_10059BA68, type metadata accessor for DNSRecords.SRV);

  swift_unownedRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = sub_10037D390();
    v25 = v24;

    v26 = sub_100002320(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Created %s", v21, 0xCu);
    sub_100002A00(v22);
  }

  else
  {
  }

  sub_100380008(v16, type metadata accessor for DNSRecords.SRV);
  return v5;
}

uint64_t sub_10037FFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100380008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100380114(void *a1)
{
  if (*(*a1 + qword_100597A38) == 1)
  {
    return (*(*a1 + qword_100597A40) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038014C(void *a1)
{
  if (*(*a1 + qword_100597B08) == 1)
  {
    return (*(*a1 + qword_100597B10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003802BC(uint64_t a1)
{
  v9 = &value witness table for Builtin.NativeObject + 64;
  v10 = &unk_1004B1F48;
  v1 = *(a1 + 112);
  v2 = *(a1 + 96);
  v7[0] = *(a1 + 80);
  v7[1] = v2;
  v8 = v1;
  result = type metadata accessor for P2PController.Components(319, v7);
  if (v4 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v12 = &unk_1004B1F48;
    v13 = &unk_1004B1F60;
    v14 = &unk_1004B1F78;
    v15 = &unk_1004B1F48;
    v16 = &unk_1004B1F60;
    v17 = &unk_1004B1F78;
    v18 = &value witness table for Builtin.UnknownObject + 64;
    result = type metadata accessor for DispatchTime();
    if (v5 <= 0x3F)
    {
      v19 = *(result - 8) + 64;
      v20 = &unk_1004B1F90;
      v21 = &unk_1004B1FA8;
      v22 = &unk_1004B1F78;
      result = type metadata accessor for Logger();
      if (v6 <= 0x3F)
      {
        v23 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void *sub_100380430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100367988(0, v1, 0);
  v18 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v19 = *(a1 + 36);
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v7 = v4 >> 6;
    if ((*(v18 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_22;
    }

    if (v19 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    result = [*(*(a1 + 48) + 8 * v4) uniqueIdentifier];
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      v17 = result;
      sub_100367988((v8 > 1), v9 + 1, 1);
      result = v17;
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    _swiftEmptyArrayStorage[v9 + 4] = result;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_24;
    }

    v10 = *(v18 + 8 * v7);
    if ((v10 & (1 << v4)) == 0)
    {
      goto LABEL_25;
    }

    if (v19 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v11 = v10 & (-2 << (v4 & 0x3F));
    if (v11)
    {
      v6 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v12 = v7 << 6;
      v13 = v7 + 1;
      v14 = (a1 + 72 + 8 * v7);
      while (v13 < (v6 + 63) >> 6)
      {
        v16 = *v14++;
        v15 = v16;
        v12 += 64;
        ++v13;
        if (v16)
        {
          result = sub_10002BEB8(v4, v19, 0);
          v6 = __clz(__rbit64(v15)) + v12;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v4, v19, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10038067C()
{
  v1 = v0;
  v2 = *v0;
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v61[0] = *(v2 + 80);
  v3 = v61[0];
  v61[1] = v4;
  v52 = v4;
  v57 = v2;
  v58 = *(v2 + 96);
  v62 = v58;
  v63 = v5;
  v60 = type metadata accessor for P2PController.Components(0, v61);
  v55 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v48 - v6;
  v53 = *(v3 - 8);
  __chkstk_darwin();
  v59 = &v48 - v7;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v54 = &v48 - v8;
  swift_getAssociatedTypeWitness();
  *&v58 = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin();
  v18 = &v48 - v17;
  *(v1 + *(v2 + 144)) = 1;
  v19 = v1 + *(*v1 + 136);
  v20 = *(v13 + 16);
  v20(&v48 - v17, v19, v12, v16);
  LOBYTE(v2) = Preferences.nan.getter(v12);
  v21 = *(v13 + 8);
  v22 = v21(v18, v12);
  v23 = 0;
  if (v2)
  {
    v24 = v1[2];
    (*(*v24 + 168))(v22);
    v25 = (v24 + *(*v24 + 104));
    v26 = v25[1];
    v49 = *v25;
    v50 = v24;
    v51 = v19;
    (v20)(v15, v19, v12);

    v30 = Preferences.nanDataMACAddress.getter(v12, v27, v28, v29);
    v21(v15, v12);
    if ((v30 & 0x1000000000000) != 0)
    {
      static WiFiAddress.random()(v32);
    }

    WiFiAddress.linkLocalAddress()(v31);
    v34 = v54;
    v35 = v59;
    v36 = v58;
    (*(*(v52 + 8) + 16))(2, v49, v26, v33 & 0xFFFFFFFFFFFFLL, v58);
    v37 = v60;
    v38 = v53;
    (*(v53 + 8))(v35, v36);

    (*(v38 + 56))(v34, 0, 1, v36);
    v39 = v57;
    WitnessTable = swift_getWitnessTable(byte_1004B2090, v57);
    type metadata accessor for NANInterface(0, v39, WitnessTable, v41);
    v42 = v56;
    v19 = v51;
    (*(v55 + 16))(v56, v51, v37);

    v43 = v50;

    sub_100410970(v34, v42, v43, sub_100387628, v1);
    v23 = v44;
  }

  v45 = v60;

  sub_10031736C(v23);

  v46 = *&v19[*(v45 + 68)];
  swift_beginAccess();

  swift_unownedRelease();
  *(v46 + 16) = v23;
  swift_endAccess();
  swift_unownedRetain();

  return v23;
}

char *sub_100380CC8()
{
  v1 = v0;
  v69 = 0;
  v2 = *v0;
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v73 = *(v2 + 80);
  v3 = v73;
  v74 = v4;
  v61 = v4;
  v70 = v2;
  v68 = *(v2 + 96);
  v75 = v68;
  v76 = v5;
  v71 = type metadata accessor for P2PController.Components(0, &v73);
  v66 = *(v71 - 8);
  __chkstk_darwin();
  v64 = &v58 - v6;
  v62 = *(v3 - 8);
  __chkstk_darwin();
  v67 = &v58 - v7;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v63 = &v58 - v8;
  v9 = v68;
  swift_getAssociatedTypeWitness();
  *&v68 = v9;
  v65 = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v58 - v18;
  *(v1 + *(v2 + 168)) = 1;
  v20 = v1 + *(*v1 + 136);
  v21 = *(v14 + 16);
  v21(&v58 - v18, v20, v13, v17);
  LOBYTE(v2) = Preferences.awdl.getter(v13);
  v22 = *(v14 + 8);
  v23 = v22(v19, v13);
  if (v2)
  {
    v24 = v1[2];
    (*(*v24 + 168))(v23);
    v25 = *(*v24 + 104);
    v59 = v24;
    v26 = &v24[v25];
    v27 = *(v26 + 1);
    v58 = *v26;
    v60 = v20;
    (v21)(v16, v20, v13);

    v31 = Preferences.awdlMACAddress.getter(v13, v28, v29, v30);
    v22(v16, v13);
    if ((v31 & 0x1000000000000) != 0)
    {
      static WiFiAddress.random()(v33);
    }

    WiFiAddress.linkLocalAddress()(v32);
    v35 = v63;
    v36 = v67;
    v37 = v69;
    v38 = v65;
    (*(*(v61 + 8) + 16))(1, v58, v27, v34 & 0xFFFFFFFFFFFFLL, v65);
    v40 = v70;
    v39 = v71;
    if (v37)
    {

      v41 = v62;
      (*(v62 + 8))(v36, v38);
      v42 = 1;
    }

    else
    {
      v41 = v62;
      (*(v62 + 8))(v36, v38);

      v42 = 0;
    }

    v20 = v60;
    (*(v41 + 56))(v35, v42, 1, v38);
    WitnessTable = swift_getWitnessTable(byte_1004B20C8, v40);
    type metadata accessor for AWDLInterface(0, v40, WitnessTable, v45);
    v46 = v64;
    (*(v66 + 16))(v64, v20, v39);
    v47 = v59;

    v43 = sub_10044CA38(v35, v46, v47);
  }

  else
  {
    v43 = v69;
    v40 = v70;
    v39 = v71;
  }

  v72 = v43;
  v48 = swift_getWitnessTable(byte_1004B20C8, v40);
  type metadata accessor for AWDLInterface(255, v40, v48, v49);
  type metadata accessor for Optional();
  v50 = swift_getWitnessTable(byte_1004B20AC, v40);
  v51 = swift_getWitnessTable(byte_1004B2090, v40);
  v73 = v40;
  v74 = v48;
  *&v75 = v50;
  *(&v75 + 1) = v51;
  v76 = v68;
  v52 = type metadata accessor for AWDLNetworkAgent(0, &v73);
  sub_100073CE8(sub_100384E28, v1, &type metadata for Never, v52, v53, &v73);
  v54 = *(*v1 + 184);
  v55 = *(v1 + v54);
  *(v1 + v54) = v73;

  swift_weakAssign();
  v56 = *&v20[*(v39 + 68)];
  swift_beginAccess();

  swift_unownedRelease();
  *(v56 + 24) = v43;
  swift_endAccess();
  swift_unownedRetain();

  return v43;
}

void sub_100381408(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = v1 + *(*v1 + 216);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    sub_10038762C(*v4, v6);
    swift_unknownObjectRetain();
    CountryCode.code.getter(v3);
    v11 = String._bridgeToObjectiveC()();

    [v6 setCountryCode:v11];

    swift_unknownObjectRelease_n();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Client is not valid, not setting country code", v9, 2u);
    }

    v10 = v2 + *(*v2 + 208);
    *v10 = v3;
    *(v10 + 2) = 0;
  }
}

void sub_1003815A8(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiRemoteClientCountryCodeMonitorXPCDelegate];
  v7 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v7 setRemoteObjectInterface:v6];

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v4[10];
  *(v9 + 24) = v4[11];
  *(v9 + 32) = *(v5 + 6);
  *(v9 + 48) = v4[14];
  *(v9 + 56) = v8;
  v10 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v11 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v12 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v10 = sub_100388E10;
  *(v10 + 1) = v9;

  sub_100010520(v11, v12);

  v13 = [v7 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100598030, &qword_1004B2148);
  if (swift_dynamicCast())
  {
    v14 = v2 + *(*v2 + 216);
    v15 = *v14;
    v16 = *(v14 + 1);
    *v14 = a1;
    *(v14 + 1) = v30;
    v17 = a1;
    swift_unknownObjectRetain();
    sub_10038766C(v15, v16);
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = a1;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "%@ is monitoring interface country code", v21, 0xCu);
      sub_10000BB28(v22);
    }

    v24 = *v14;
    if (!*v14)
    {
      goto LABEL_7;
    }

    v25 = *(v14 + 1);
    v26 = (v2 + *(*v2 + 208));
    if (v26[1])
    {

LABEL_7:
      swift_unknownObjectRelease();
      return;
    }

    v28 = *v26;
    sub_10038762C(*v14, *(v14 + 1));
    swift_unknownObjectRetain();
    CountryCode.code.getter(v28);
    v29 = String._bridgeToObjectiveC()();

    [v25 setCountryCode:v29];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v27 = xmmword_100481800;
    *(v27 + 16) = 1;
    swift_willThrow();
  }
}

double sub_1003819A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong + *(*Strong + 216);
    v5 = *v3;
    v4 = *(v3 + 8);
    *v3 = 0;
    *(v3 + 8) = 0;
    sub_10038766C(v5, v4);
  }

  return result;
}

uint64_t sub_100381A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v36 = a3;
  v37 = a4;
  v18 = a4;
  v32 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v19 = type metadata accessor for P2PController.Components(0, &v36);
  *(a8 + v19[15]) = a2;
  v20 = v19[16];
  v36 = a3;
  v37 = v18;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v21 = type metadata accessor for P2PController(255, &v36);
  WitnessTable = swift_getWitnessTable(byte_1004B20C8, v21);
  v23 = swift_getWitnessTable(byte_1004B20AC, v21);
  v24 = swift_getWitnessTable(byte_1004B2090, v21);
  v36 = v21;
  v37 = WitnessTable;
  v38 = v23;
  v39 = v24;
  type metadata accessor for RadioResourceManager(0, &v36);
  *(a8 + v20) = sub_10030CD60();
  v25 = v19[17];
  v36 = v21;
  v37 = WitnessTable;
  v38 = v23;
  v39 = v24;
  type metadata accessor for PeerCacheManager(0, &v36);
  *(a8 + v25) = sub_100444270();
  v26 = v19[18];
  v36 = a3;
  v37 = v32;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  _s22P2PActivityCoordinatorCMa(0, &v36);
  *(a8 + v26) = sub_1002D0B08();
  v27 = v19[19];
  type metadata accessor for CoreAnalyticsCommunicator();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = &_swiftEmptyDictionarySingleton;
  *(a8 + v27) = v28;
  *(v28 + 56) = &_swiftEmptySetSingleton;
  v29 = v19[20];
  type metadata accessor for WiFiAwarePairedDevicesStore(0, *(v33 + 80), *(v33 + 88), v30);
  result = WiFiAwarePairedDevicesStore.__allocating_init()();
  *(a8 + v29) = result;
  return result;
}

uint64_t sub_100381D34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[13] = a4;
  v4[14] = *a4;
  v5 = sub_10005DC58(&qword_10058F460, &qword_100492830);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_10005DC58(&unk_100598040, &qword_1004B2168);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100381E90, 0, 0);
}

uint64_t sub_100381E90()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(*v2 + 136);
  *(v0 + 168) = v3;
  v4 = v2 + v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  v7 = type metadata accessor for P2PController.Components(0, v0 + 64);
  *(v0 + 176) = v7;
  v8 = *(v4 + *(v7 + 80));
  *(v0 + 184) = v8;
  *(v0 + 192) = *(v4 + *(v7 + 60));
  v9 = *v8;
  *(v0 + 200) = *(*v8 + 320);
  *(v0 + 208) = (v9 + 320) & 0xFFFFFFFFFFFFLL | 0x1B4F000000000000;

  return _swift_task_switch(sub_100381F9C, v8, 0);
}

uint64_t sub_100381F9C()
{
  (*(v0 + 200))(*(v0 + 192));

  return _swift_task_switch(sub_10038201C, 0, 0);
}

uint64_t sub_10038201C()
{
  v1 = *(v0[13] + v0[21] + *(v0[22] + 80));
  v2 = direct field offset for WiFiAwarePairedDevicesStore.events;
  v0[27] = v1;
  v0[28] = v2;

  return _swift_task_switch(sub_1003820AC, v1, 0);
}

uint64_t sub_1003820AC()
{
  (*(v0[16] + 16))(v0[17], v0[27] + v0[28], v0[15]);

  return _swift_task_switch(sub_100382134, 0, 0);
}

uint64_t sub_100382134()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_100382210;
  v5 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 31, 0, 0, v5);
}

uint64_t sub_100382210()
{

  return _swift_task_switch(sub_10038230C, 0, 0);
}

uint64_t sub_10038230C()
{
  if (*(v0 + 248))
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100010520(0, 0);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *OS_dispatch_queue.nan.unsafeMutableAddressor();

    sub_100010520(0, 0);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100388F14;
    *(v5 + 24) = v3;
    *(v0 + 48) = sub_1001D6BCC;
    *(v0 + 56) = v5;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100382A80;
    *(v0 + 40) = &unk_100578018;
    v6 = _Block_copy((v0 + 16));

    dispatch_sync(v4, v6);

    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      v11 = swift_task_alloc();
      *(v0 + 240) = v11;
      *v11 = v0;
      v11[1] = sub_100382554;
      v10 = *(v0 + 144);
      v7 = v0 + 248;
      v8 = 0;
      v9 = 0;
    }

    return AsyncStream.Iterator.next(isolation:)(v7, v8, v9, v10);
  }
}

uint64_t sub_100382554()
{

  return _swift_task_switch(sub_100382650, 0, 0);
}

uint64_t sub_100382650()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 104);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100010520(sub_100388F14, v1);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *OS_dispatch_queue.nan.unsafeMutableAddressor();

    sub_100010520(sub_100388F14, v4);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100388F14;
    *(v6 + 24) = v4;
    *(v0 + 48) = sub_1001D6BCC;
    *(v0 + 56) = v6;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100382A80;
    *(v0 + 40) = &unk_100578018;
    v7 = _Block_copy((v0 + 16));

    dispatch_sync(v5, v7);

    _Block_release(v7);
    LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_task_alloc();
      *(v0 + 240) = v12;
      *v12 = v0;
      v12[1] = sub_100382554;
      v11 = *(v0 + 144);
      v8 = v0 + 248;
      v9 = 0;
      v10 = 0;
    }

    return AsyncStream.Iterator.next(isolation:)(v8, v9, v10, v11);
  }
}

void sub_1003828B0(uint64_t a1)
{
  v2 = sub_10001BDD0();
  if (v2)
  {
    sub_10040CAE8(v2, v3, v4, v5);

    sub_1003513B4();
  }

  v6 = *(a1 + *(*a1 + 152));
  if (v6)
  {

    sub_100410568();
    sub_10000E074(v6);
  }
}

void sub_100382AA8()
{
  if (sub_10001BDD0())
  {
    v0 = sub_100019F94();

    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v1))
    {
      goto LABEL_13;
    }

    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136315138;
    if (v0)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v0)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    v6 = sub_100002320(v4, v5, &v10);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Current NAN state is %s", v2, 0xCu);
    sub_100002A00(v3);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Unable to retrieve NAN state", v8, 2u);
  }

LABEL_13:
}

double sub_100382C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchTime();
  v43 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v15 = &v36[-v14];
  v16 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin();
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v40 = v11;
    v44[0] = a2;
    v44[1] = a3;
    v44[2] = a4;
    v44[3] = a5;
    v44[4] = a6;
    type metadata accessor for P2PController.Components(0, v44);

    sub_1002CCAE8();

    sub_1002CCFAC();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v24;
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v24 = 136315138;
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      v25 = *v21;
      v37 = v23;
      v26 = *(v25 + 200);
      swift_beginAccess();
      v27 = v43;
      v28 = v40;
      (*(v43 + 16))(v13, v21 + v26, v40);
      DispatchTime.distance(to:)();
      v29 = *(v27 + 8);
      v29(v13, v28);
      v29(v15, v28);
      v30 = DispatchTimeInterval.description.getter();
      v32 = v31;

      (*(v41 + 8))(v18, v42);
      v33 = sub_100002320(v30, v32, v44);

      v34 = v38;
      *(v38 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v22, v37, "Core analytics periodic timer fired for App datacollection : %s", v34, 0xCu);
      sub_100002A00(v39);
    }

    else
    {

      v28 = v40;
      v27 = v43;
    }

    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v35 = *(*v21 + 200);
    swift_beginAccess();
    (*(v27 + 40))(v21 + v35, v15, v28);
    swift_endAccess();
  }

  return result;
}

char *sub_1003830D4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  if (*(v0 + v2))
  {

    Task.cancel()();
  }

  *(v0 + v2) = 0;

  *(v0 + *(*v0 + 224)) = 0;

  v3 = *(*v0 + 136);
  v4 = *(v1 + 112);
  v5 = *(v1 + 96);
  v12[0] = *(v1 + 80);
  v12[1] = v5;
  v13 = v4;
  v6 = type metadata accessor for P2PController.Components(0, v12);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_10000E074(*(v0 + *(*v0 + 152)));

  sub_10000E074(*(v0 + *(*v0 + 176)));

  v7 = *(*v0 + 200);
  v8 = type metadata accessor for DispatchTime();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_10038766C(*(v0 + *(*v0 + 216)), *(v0 + *(*v0 + 216) + 8));

  v9 = *(*v0 + 232);
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_100383358()
{
  sub_1003830D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1003833E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100383434(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for Preferences(319, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  if (v8 <= 0x3F)
  {
    v33 = 0;
    v40 = result;
    v9 = swift_getAssociatedTypeWitness();
    v10 = swift_getAssociatedConformanceWitness();
    result = type metadata accessor for LongTermPairingKeyStore(319, v9, v10, v11);
    if (v12 <= 0x3F)
    {
      v34 = 0;
      v41 = result;
      v13 = a1[3];
      v14 = a1[5];
      v15 = a1[6];
      v28 = v3;
      v29 = v13;
      v30 = v2;
      v31 = v14;
      v26 = v15;
      v27 = v14;
      v32 = v15;
      v16 = type metadata accessor for P2PController(255, &v28);
      WitnessTable = swift_getWitnessTable(byte_1004B20C8, v16);
      v18 = swift_getWitnessTable(byte_1004B20AC, v16);
      v19 = swift_getWitnessTable(byte_1004B2090, v16);
      v28 = v16;
      v29 = WitnessTable;
      v30 = v18;
      v31 = v19;
      result = type metadata accessor for RadioResourceManager(319, &v28);
      if (v20 <= 0x3F)
      {
        v35 = 0;
        v42 = result;
        v28 = v16;
        v29 = WitnessTable;
        v30 = v18;
        v31 = v19;
        result = type metadata accessor for PeerCacheManager(319, &v28);
        if (v21 <= 0x3F)
        {
          v36 = 0;
          v43 = result;
          v28 = v3;
          v29 = v13;
          v30 = v2;
          v31 = v27;
          v32 = v26;
          result = _s22P2PActivityCoordinatorCMa(319, &v28);
          if (v22 <= 0x3F)
          {
            v37 = 0;
            v44 = result;
            result = type metadata accessor for CoreAnalyticsCommunicator();
            if (v24 <= 0x3F)
            {
              v38 = 0;
              v45 = result;
              result = type metadata accessor for WiFiAwarePairedDevicesStore(319, v9, v10, v23);
              if (v25 <= 0x3F)
              {
                v39 = 0;
                v46 = result;
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003836F8(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80);
  v11 = v9 + 3 + v10;
  v12 = v10 | 3;
  v13 = (v10 | 3) + v9 + 3;
  v14 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v15 = v10 | 7;
  v16 = (v10 | 7) + v14;
  v17 = (v10 | 7) + 1;
  if (v8 >= a2)
  {
    goto LABEL_27;
  }

  v18 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  v19 = v15 + v9 + 3;
  v20 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
  v21 = ((((((((((((v9 + ((v11 + ((v11 + ((v20 + v10 + ((v10 + 8) & ~v15) + ((v15 + v18 + ((v15 + v18 + ((v19 + ((v18 + v10 + ((v19 + ((v11 + ((v14 + v10 + ((v13 + ((v11 + ((v11 + ((v14 + v10 + ((v12 + v14 + ((v12 + v20 + ((v19 + ((v11 + ((v14 + v10 + ((v13 + ((v11 + ((v18 + v10 + (v17 & ~v15) + ((v16 + ((v13 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + (v11 & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v12)) & ~v15)) & ~v10)) & ~v10)) & ~v12)) & ~v10)) & ~v10)) & ~v15)) & ~v12)) & ~v12)) & ~v10)) & ~v10)) & ~v10)) & ~v12)) & ~v10)) & ~v10)) & ~v15)) & ~v10)) & ~v15)) & ~v15)) & ~v15)) & ~v10)) & ~v10)) & ~v10) + 10) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v8 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v8 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  if (v7 >= 0x7FFFFFFF)
  {
    v32 = *(v6 + 48);

    return v32(a1);
  }

  else
  {
    v30 = ~v10;
    v31 = *(((((v17 + ((v16 + ((v13 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((a1 + v11) & v30)) & v30)) & v30)) & v30)) & v30)) & v30)) & v30)) & ~v12)) & ~v15)) & ~v15) + v9) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }
}

void sub_100383AD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v9 + 3;
  v14 = *(v7 + 80);
  v15 = v9 + 3 + v14;
  v16 = v14 | 3;
  v17 = (v14 | 3) + v9 + 3;
  v18 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v19 = v14 | 7;
  v20 = (v14 | 7) + v18;
  v21 = (v14 | 7) + 1;
  v22 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  v23 = (v21 & ~(v14 | 7)) + v22;
  v24 = (v14 | 7) + v9 + 3;
  v25 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
  v26 = (v14 | 7) + v22;
  v27 = (v26 + ((v26 + ((v24 + ((v22 + v14 + ((v24 + ((v15 + ((v18 + v14 + ((v17 + ((v15 + ((v15 + ((v18 + v14 + (((v14 | 3) + v18 + (((v14 | 3) + v25 + ((v24 + ((v15 + ((v18 + v14 + ((v17 + ((v15 + ((v23 + v14 + ((v20 + ((v17 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + (v15 & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~(v14 | 7))) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~(v14 | 7))) & ~(v14 | 3))) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~(v14 | 7))) & ~v14)) & ~(v14 | 7))) & ~(v14 | 7))) & ~(v14 | 7);
  v28 = ((((((((((((((v15 + ((v15 + ((v25 + v14 + ((v14 + 8) & ~(v14 | 7)) + v27) & ~v14)) & ~v14)) & ~v14) + v9 + 3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v31 = 0;
    v32 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v28)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v28)
    {
      v34 = ~v12 + a2;
      bzero(a1, v28);
      *a1 = v34;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        *&a1[v28] = v33;
      }

      else
      {
        *&a1[v28] = v33;
      }
    }

    else if (v31)
    {
      a1[v28] = v33;
    }

    return;
  }

  if (v28)
  {
    v29 = 2;
  }

  else
  {
    v29 = a3 - v12 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = a2 - v12;
  if (a2 > v12)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v28] = 0;
    goto LABEL_38;
  }

  if (!v31)
  {
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 >= 0x7FFFFFFF)
  {
    if (v10 >= a2)
    {
      v39 = *(v7 + 56);

      v39(a1, a2);
    }

    else
    {
      if (v13 <= 3)
      {
        v36 = ~(-1 << (8 * v13));
      }

      else
      {
        v36 = -1;
      }

      if (v13)
      {
        LODWORD(a2) = v36 & (~v10 + a2);
        if (v13 <= 3)
        {
          v37 = v13;
        }

        else
        {
          v37 = 4;
        }

        bzero(a1, v13);
        if (v37 <= 2)
        {
          if (v37 != 1)
          {
            *a1 = a2;
            return;
          }

LABEL_55:
          *a1 = a2;
          return;
        }

        if (v37 == 3)
        {
          *a1 = a2;
          a1[2] = BYTE2(a2);
        }

        else
        {
          *a1 = a2;
        }
      }
    }
  }

  else
  {
    v35 = ~v14;
    a1 = ((v20 + ((v17 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + (&a1[v15] & v35)) & v35)) & v35)) & v35)) & v35)) & v35)) & v35)) & ~v16)) & ~v19);
    if (v11 < a2)
    {
      bzero(a1, v23);
      if (v23 > 3)
      {
        *a1 = a2 ^ 0x80000000;
        return;
      }

      goto LABEL_55;
    }

    v38 = ((&a1[v21] & ~v19) + v9) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v38 + 8) = a2 & 0x7FFFFFFF;
      *(v38 + 16) = 0;
    }

    else
    {
      *(v38 + 16) = (a2 - 1);
    }
  }
}

uint64_t sub_100383FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

char *sub_1003840DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *a1;
  WitnessTable = swift_getWitnessTable(byte_1004B20C8, *a2);
  v9 = swift_getWitnessTable(byte_1004B20AC, v6);
  v10 = swift_getWitnessTable(byte_1004B2090, v6);
  v11 = *(v5 + 96);
  *&v15 = v6;
  *(&v15 + 1) = WitnessTable;
  v16 = v9;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  type metadata accessor for AWDLNetworkAgent(0, &v15);
  v12 = a2 + *(v5 + 136);
  v15 = *(v6 + 80);
  v16 = v11;
  v17 = *(v6 + 104);
  v13 = *&v12[*(type metadata accessor for P2PController.Components(0, &v15) + 72)];

  result = sub_1003FCDFC(v7, v13);
  *a3 = result;
  return result;
}

void sub_100384250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v5 = *v2;
  v6 = *v2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lock();
  swift_allocObject();
  v13 = Lock.init()();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = *(v5 + 112);
  v17 = *(v6 + 96);
  aBlock = *(v6 + 80);
  v46 = v17;
  v47 = v16;
  type metadata accessor for P2PController.Components(0, &aBlock);

  sub_1002D860C();

  v18 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = v13;
  v32 = v13;
  v19[4] = v14;
  v19[5] = v15;
  v19[6] = v40;
  v19[7] = a2;
  v31 = a2;
  v47 = sub_100384DF8;
  v48 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v38 = &v46;
  *&v46 = sub_10000C8B8;
  *(&v46 + 1) = &unk_100577BE0;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  v34 = sub_10001CF14();
  v33 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  v36 = sub_10005DCA0();
  v22 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  v23 = *(v43 + 8);
  v43 += 8;
  v37 = v23;
  v23(v8, v22);
  v24 = *(v42 + 8);
  v42 += 8;
  v35 = v24;
  v24(v12, v41);

  v25 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v26 = swift_allocObject();
  v27 = v32;
  v26[2] = v3;
  v26[3] = v27;
  v26[4] = v15;
  v26[5] = v14;
  v28 = v31;
  v26[6] = v40;
  v26[7] = v28;
  v47 = sub_100384E10;
  v48 = v26;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_10000C8B8;
  *(&v46 + 1) = &unk_100577C30;
  v29 = _Block_copy(&aBlock);

  v30 = v25;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  v37(v8, v22);
  v35(v12, v41);
}

double sub_10038479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 144)) == 1)
  {
    if (sub_10001BDD0())
    {
      sub_1004109DC();
    }

    v16 = *(*a1 + 152);
    v17 = *(a1 + v16);
    *(a1 + v16) = 0;
    sub_10000E074(v17);
  }

  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = 1;
  swift_beginAccess();
  v18 = *(a4 + 16);
  Lock.unlock()();
  if (v18 == 1)
  {
    v20 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    aBlock[4] = v23;
    aBlock[5] = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100577C80;
    v21 = _Block_copy(aBlock);
    v22 = v20;

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v25 + 8))(v12, v10);
    (*(v13 + 8))(v15, v24);
  }

  return result;
}

double sub_100384AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v13 = *(v28 - 8);
  __chkstk_darwin();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 168)) == 1)
  {
    v16 = sub_10000DFFC();
    if (v16)
    {
      sub_10044CA8C(v16, v17, v18, v19);
    }

    v20 = *(*a1 + 176);
    v21 = *(a1 + v20);
    *(a1 + v20) = 0;
    sub_10000E074(v21);
  }

  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = 1;
  swift_beginAccess();
  v22 = *(a4 + 16);
  Lock.unlock()();
  if (v22 == 1)
  {
    v24 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    aBlock[4] = v27;
    aBlock[5] = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100577C58;
    v25 = _Block_copy(aBlock);
    v26 = v24;

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v29 + 8))(v12, v10);
    (*(v13 + 8))(v15, v28);
  }

  return result;
}

void sub_100384E48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char *a5)
{
  v30[1] = a4;
  v31 = a3;
  v30[0] = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v10 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    v14 = *v11;
    *v9 = *v11;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if (v14)
    {
      if (sub_10001BDD0())
      {
        (v30[0])();
        v31(0);
      }

      else
      {
        v21 = a5;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to accept %@ because there is no NAN interface", v24, 0xCu);
          sub_10000BB28(v25);
        }

        v27 = &v21[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v28 = *&v21[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v29 = *&v21[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v27 = 0;
        *(v27 + 1) = 0;
        sub_100010520(v28, v29);
        v31(7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v16 = xmmword_100481800;
    *(v16 + 16) = 1;
    swift_willThrow();
    v17 = &a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v18 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v19 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
    *v17 = 0;
    *(v17 + 1) = 0;
    sub_100010520(v18, v19);
    swift_getErrorValue();
    v20 = Error.apiError.getter(v32);
    v31(v20);
  }
}

uint64_t sub_1003851B4(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6)
{
  v54 = a4;
  v55 = a3;
  v51 = a2;
  v52 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v49 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v53 = a5;
  v18 = *&a5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v19 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v20 = *v19;
  v21 = static NSObject.== infix(_:_:)();

  if (v21)
  {
    v22 = *v19;
    *v17 = *v19;
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    result = (*(v15 + 8))(v17, v14);
    if (v22)
    {
      if (sub_10000DFFC())
      {
      }

      else
      {
        v26 = v50;
        (*(v50 + 16))(v13, a6 + *(*a6 + 136), v11);
        v27 = Preferences.awdl.getter(v11);
        (*(v26 + 8))(v13, v11);
        if (v27)
        {
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "No AWDL interface found. Creating AWDL interface", v30, 2u);
          }

          v31 = sub_100380CC8();
          v32 = *(*a6 + 176);
          v33 = *(a6 + v32);
          *(a6 + v32) = v31;
          sub_10000E074(v33);
        }
      }

      v34 = *(a6 + *(*a6 + 176));
      if (v34)
      {

        v52(v35);
        v55(0);
        return sub_10000E074(v34);
      }

      else
      {
        v40 = v53;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to accept %@ because there is no AWDL interface", v43, 0xCu);
          sub_10000BB28(v44);
        }

        v46 = &v40[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v47 = *&v40[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v48 = *&v40[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v46 = 0;
        *(v46 + 1) = 0;
        sub_100010520(v47, v48);
        return v55(7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v25 = xmmword_100481800;
    *(v25 + 16) = 1;
    swift_willThrow();
    v36 = &v53[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v37 = *&v53[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v38 = *&v53[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
    *v36 = 0;
    *(v36 + 1) = 0;
    sub_100010520(v37, v38);
    swift_getErrorValue();
    v39 = Error.apiError.getter(v56);
    v55(v39);
  }

  return result;
}

uint64_t sub_1003857B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = *a4;
  return _swift_task_switch(sub_1003857FC, 0, 0);
}

uint64_t sub_1003857FC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 64) + *(**(v0 + 64) + 136);
  v4 = *(v1 + 112);
  v5 = *(v1 + 96);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = *(v3 + *(type metadata accessor for P2PController.Components(0, v0 + 16) + 80));
  *(v0 + 104) = v6;
  v7 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

  v8 = [v7 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_10058F648, &qword_1004B2140);
  *(v0 + 144) = swift_dynamicCast();
  v9 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_uuid;
  *(v0 + 112) = *(v0 + 56);
  *(v0 + 120) = v9;
  v10 = *v6;
  *(v0 + 128) = *(*v6 + 536);
  *(v0 + 136) = (v10 + 536) & 0xFFFFFFFFFFFFLL | 0x27A1000000000000;

  return _swift_task_switch(sub_100385978, v6, 0);
}

uint64_t sub_100385978()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = 0;
  }

  (*(v0 + 128))(*(v0 + 72), *(v0 + 80), v1, *(v0 + 88) + *(v0 + 120));

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100385A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a6;
  v47 = a7;
  v44 = a9;
  v45 = a10;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v48 = &v40 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = a8;
    v43 = a4;
    (*(v18 + 16))(v20, Strong + *(*Strong + 232), v17);

    v22 = a2;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = a2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v41 = a5;
      *v26 = 138412546;
      *(v26 + 4) = v22;
      *(v26 + 12) = 2112;
      *(v26 + 14) = a3;
      *v27 = v22;
      v27[1] = a3;
      v28 = v22;

      _os_log_impl(&_mh_execute_header, v23, v24, "%@ with store instance: %@ was invalidated", v26, 0x16u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();
      a5 = v41;

      a2 = v40;
    }

    (*(v18 + 8))(v20, v17);
    a8 = v42;
    a4 = v43;
  }

  v29 = type metadata accessor for TaskPriority();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v32 = v47;
  v31[4] = v46;
  v31[5] = v32;
  v34 = v44;
  v33 = v45;
  v31[6] = a8;
  v31[7] = v34;
  v31[8] = v33;
  v31[9] = a1;
  v31[10] = a4;
  v31[11] = a5;
  v31[12] = a2;
  v35 = a2;

  sub_1003ACE3C(0, 0, v30, &unk_1004B2130, v31);

  v36 = &v35[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v37 = *&v35[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v38 = *&v35[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v36 = 0;
  *(v36 + 1) = 0;
  return sub_100010520(v37, v38);
}

uint64_t sub_100385D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 80) = a1;
  *(v8 + 16) = a8;
  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  v9 = type metadata accessor for P2PController.Components(0, v8 + 16);
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100385E80, 0, 0);
}

uint64_t sub_100385E80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  v2 = *(v0 + 136);
  if (Strong)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    (*(v4 + 16))(*(v0 + 136), Strong + *(*Strong + 136), v3);

    v5 = *(v2 + *(v3 + 80));
    *(v0 + 152) = v5;
    v6 = *(v4 + 8);

    v6(v2, v3);
    *(v0 + 160) = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_uuid;
    v7 = *v5;
    *(v0 + 168) = *(*v5 + 544);
    *(v0 + 176) = (v7 + 544) & 0xFFFFFFFFFFFFLL | 0xD46B000000000000;

    return _swift_task_switch(sub_10038601C, v5, 0);
  }

  else
  {
    **(v0 + 80) = 1;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10038601C()
{
  (*(v0 + 168))(*(v0 + 96), *(v0 + 104), *(v0 + 112) + *(v0 + 160));

  return _swift_task_switch(sub_10038609C, 0, 0);
}

uint64_t sub_10038609C()
{
  **(v0 + 80) = *(v0 + 144) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038610C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 120) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return _swift_task_switch(sub_100386148, 0, 0);
}

uint64_t sub_100386148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 64);
  *(v4 + 96) = sub_10040CAE8(a1, a2, a3, a4);
  v6 = swift_task_alloc();
  *(v4 + 104) = v6;
  *v6 = v4;
  v6[1] = sub_1003861F8;
  v7 = *(v4 + 56);
  v8 = *(v4 + 120);

  return sub_1003668A8(v8, v7, v5 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1003861F8(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100386318, 0, 0);
}

uint64_t sub_100386318()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 16) = v1;

  v6 = v1;
  v3(v1);

  v7 = (v2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v8 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v9 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
  *v7 = 0;
  v7[1] = 0;
  sub_100010520(v8, v9);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1003863E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for AWDLPeer(0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100046564(a2 & 0xFFFFFFFFFFFFLL))
  {
    sub_10000B02C();
    swift_allocError();
    v14 = 3;
    goto LABEL_6;
  }

  sub_100041B60(a2 & 0xFFFFFFFFFFFFLL, v7);
  v8 = &v7[*(v5 + 96)];
  if (v8[8])
  {
    v9 = &v7[*(v5 + 92)];
    v10 = *v9;
    v11 = v9[8];
    result = sub_1003077CC(v7);
    if (v11 == 1)
    {
      sub_10000B02C();
      swift_allocError();
      v14 = 2;
LABEL_6:
      *v13 = v14;
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v10 = *v8;
    result = sub_1003077CC(v7);
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    return a3(v10);
  }

  __break(1u);
  return result;
}

void sub_100386568()
{
  __chkstk_darwin();
  v51 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(*v4 + 432);
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v12 = *(v11 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v10, v5 + v12, v7);
  (*(*(v6 + 88) + 152))(v55, v7);
  (*(v8 + 8))(v10, v7);
  memcpy(v56, v55, 0xE89uLL);
  if (sub_100388D64(v56) == 1)
  {
    sub_1000827F8(_swiftEmptyArrayStorage);
    v3();
  }

  else
  {
    memcpy(v57, v56, 0xE88uLL);
    v13 = eventPayload(for:)(v57);
    v49 = v3;
    v50 = v0;
    v14 = *(*v5 + 560);
    swift_beginAccess();
    v15 = *(v5 + v14);
    v16 = AWDLTrafficRegistrationServiceAirPlay;

    v17 = sub_1004479A4(v16, v15);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v17 & 1;
    sub_100085188(&v53, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v13;
    sub_10007FDF4(v52, 0xD000000000000019, 0x80000001004C02E0, isUniquelyReferenced_nonNull_native);
    v19 = v58;
    v20 = *(v5 + v14);
    v21 = AWDLTrafficRegistrationServiceSidecar;

    v22 = sub_1004479A4(v21, v20);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v22 & 1;
    sub_100085188(&v53, v52);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v19;
    sub_10007FDF4(v52, 0xD000000000000019, 0x80000001004C0300, v23);
    v24 = v58;
    v25 = *(v5 + v14);
    v26 = AWDLTrafficRegistrationServiceRemoteCamera;

    v27 = sub_1004479A4(v26, v25);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v27 & 1;
    sub_100085188(&v53, v52);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v24;
    sub_10007FDF4(v52, 0xD00000000000001ELL, 0x80000001004C0320, v28);
    v29 = v58;
    v30 = *(v5 + v14);
    v31 = AWDLTrafficRegistrationServiceRemoteScreen;

    v32 = sub_1004479A4(v31, v30);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v32 & 1;
    sub_100085188(&v53, v52);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v29;
    sub_10007FDF4(v52, 0xD00000000000001ELL, 0x80000001004C0340, v33);
    v34 = v58;
    v35 = *(v5 + v14);
    v36 = AWDLTrafficRegistrationServiceUniversalControl;

    v37 = sub_1004479A4(v36, v35);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v37 & 1;
    sub_100085188(&v53, v52);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v34;
    sub_10007FDF4(v52, 0xD000000000000022, 0x80000001004C0360, v38);
    v39 = v58;
    v40 = *(v5 + v14);
    v41 = AWDLTrafficRegistrationServiceTVRemoteCamera;

    v42 = sub_1004479A4(v41, v40);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v42 & 1;
    sub_100085188(&v53, v52);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v39;
    sub_10007FDF4(v52, 0xD000000000000020, 0x80000001004C0390, v43);
    v44 = v58;
    v45 = *(v5 + v14);
    v46 = AWDLTrafficRegistrationServiceTimeSync;

    LOBYTE(v40) = sub_1004479A4(v46, v45);

    v54 = &type metadata for Bool;
    LOBYTE(v53) = v40 & 1;
    sub_100085188(&v53, v52);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v44;
    sub_10007FDF4(v52, 0xD00000000000001DLL, 0x80000001004C03C0, v47);
    (v49)(v58);
  }
}

uint64_t sub_100386B14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    sub_1000827F8(_swiftEmptyArrayStorage);
    a3();
  }

  else
  {
    v6 = (a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v7 = *(a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v8 = *(a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
    *v6 = 0;
    v6[1] = 0;

    return sub_100010520(v7, v8);
  }
}

uint64_t sub_100386B98(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 432);
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a1 + v10, v5);
  (*(*(v4 + 88) + 120))(a2, v5);
  return (*(v6 + 8))(v8, v5);
}

double sub_100386CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v26 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 168)) == 1 && sub_10000DFFC())
  {
    v16 = sub_10044D734();
  }

  else
  {
    v16 = &_swiftEmptyDictionarySingleton;
  }

  v17 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v16;
  v19 = v26;
  v18[4] = a3;
  v18[5] = v19;
  v18[6] = v24;
  v18[7] = a6;
  aBlock[4] = sub_100388DE8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100577F28;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v25 + 8))(v12, v10);
  (*(v13 + 8))(v15, v27);

  return result;
}

double sub_10038700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(*a1 + 144)) == 1)
  {
    v17 = sub_10001BDD0();
    v21 = &_swiftEmptyDictionarySingleton;
    if (v17)
    {
      v38 = "LL_STATS_REMOTE_SCREEN_ACTIVE";
      v39 = v17;
      sub_10040CAE8(v17, v18, v19, v20);
      v22 = sub_10034A0AC();
      v40 = v12;
      v23 = a2;
      v24 = a5;
      v25 = a3;
      v26 = a4;
      v27 = a6;
      v28 = v22;

      v29 = v28 <= 0;
      a6 = v27;
      a4 = v26;
      a3 = v25;
      a5 = v24;
      a2 = v23;
      v12 = v40;
      v30 = !v29;
      v48 = &type metadata for Bool;
      LOBYTE(aBlock) = v30;
      sub_100085188(&aBlock, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = &_swiftEmptyDictionarySingleton;
      sub_10007FDF4(v45, 0xD000000000000018, v38 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      v21 = v44;
    }
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v32 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v33 = swift_allocObject();
  v33[2] = a2;
  v33[3] = v21;
  v33[4] = a3;
  v33[5] = a4;
  v33[6] = a5;
  v33[7] = a6;
  v49 = sub_100388F40;
  v50 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v47 = sub_10000C8B8;
  v48 = &unk_100577ED8;
  v34 = _Block_copy(&aBlock);
  v35 = v32;

  static DispatchQoS.unspecified.getter();
  *&v45[0] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v42 + 8))(v14, v12);
  (*(v41 + 8))(v16, v43);

  return result;
}

double sub_1003873BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1001EAAA4(a2, sub_1001E8450, 0, isUniquelyReferenced_nonNull_native, v13);

  *(a1 + 16) = v13[0];
  swift_endAccess();
  swift_beginAccess();
  *(a3 + 16) = 1;
  swift_beginAccess();
  if (*(a4 + 16))
  {

    a5(v12);
  }

  return result;
}

uint64_t sub_1003874F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "The invalidation handler was called for %@ before we could process its request", v5, 0xCu);
    sub_10000BB28(v6);
  }

  v8 = &v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v8 = NANBitmap.Channel.operatingClass.getter;
  v8[1] = 0;

  v9 = &v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v10 = *&v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v11 = *&v2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v9 = 0;
  *(v9 + 1) = 0;

  return sub_100010520(v10, v11);
}

void *sub_10038762C(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

void *sub_10038766C(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003876AC()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003874F0(v0 + v2, v3);
}

uint64_t sub_1003877F8(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!a1)
  {
    v3 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    v5 = *v3;
    v4 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_100010520(v5, v4);
    a1 = 0;
  }

  return v2(a1);
}

uint64_t sub_1003878B8(uint64_t a1)
{
  if (a1)
  {
    return (*(v1 + 24))(_swiftEmptyArrayStorage);
  }

  v3 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_100010520(v4, v5);
}

uint64_t sub_100387950(uint64_t a1)
{
  if (a1)
  {
    return (*(v1 + 24))(0);
  }

  v3 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_100010520(v4, v5);
}

void sub_1003879BC()
{
  v1 = *(v0 + 16);
  v2 = sub_10044D224(1);
  v1();
}

uint64_t sub_100387A18(uint64_t a1)
{
  if (a1)
  {
    return (*(v1 + 24))(0);
  }

  v3 = (*(v1 + 16) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_100010520(v4, v5);
}

uint64_t sub_100387AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64) | (*(v1 + 66) << 16);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10030BDD0;

  return sub_10038610C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100387BBC(uint64_t a1)
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
  v10[1] = sub_10030BDD0;

  return sub_1003857B0(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_100387CC8(uint64_t a1)
{
  v2 = v1;
  v108 = a1;
  v3 = *v1;
  v91 = v3;
  v4 = type metadata accessor for DispatchTimeInterval();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v106 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v103 = (&v76 - v6);
  __chkstk_darwin();
  v102 = (&v76 - v7);
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v98 - 8);
  __chkstk_darwin();
  v97 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v99 = *(v9 - 8);
  v100 = v9;
  __chkstk_darwin();
  v96 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v92 = &v76 - v11;
  v87 = &unk_1004B4EC0;
  v93 = &v112;
  v12 = v3[12];
  v13 = v3[10];
  swift_getAssociatedTypeWitness();
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v89 = &v76 - v16;
  v17 = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v82 = &v76 - v18;
  v19 = swift_checkMetadataState();
  v109 = *(v19 - 8);
  __chkstk_darwin();
  v21 = &v76 - v20;
  v80 = v17;
  v79 = swift_getAssociatedConformanceWitness();
  type metadata accessor for Preferences(0, v17, v79, v22);
  __chkstk_darwin();
  v107 = &v76 - v23;
  v86 = v3[11];
  v85 = v3[13];
  v77 = v14;
  *&v24 = v14;
  *(&v24 + 1) = v86;
  v95 = v24;
  *&v25 = v12;
  *(&v25 + 1) = v85;
  v94 = v25;
  v83 = v3[14];
  v112 = v25;
  aBlock = v24;
  v113 = v83;
  v84 = type metadata accessor for P2PController.Components(0, &aBlock);
  v81 = *(v84 - 8);
  __chkstk_darwin();
  v78 = &v76 - v26;
  *(v2 + 24) = 0;
  *(v2 + v3[18]) = 0;
  *(v2 + *(*v2 + 152)) = 1;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  *(v2 + *(*v2 + 176)) = 1;
  *(v2 + *(*v2 + 184)) = 0;
  v27 = *(*v2 + 192);
  *(v2 + v27) = [objc_allocWithZone(WiFiP2PUIAgent) init];
  v90 = type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v28 = v2 + *(*v2 + 208);
  *v28 = 0;
  v28[2] = 1;
  v29 = (v2 + *(*v2 + 216));
  *v29 = 0;
  v29[1] = 0;
  *(v2 + *(*v2 + 224)) = 0;
  Logger.init(subsystem:category:)();
  v76 = v12;
  v87 = *(v12 + 56);
  v87(v14, v12);
  v30 = v82;
  (*(AssociatedConformanceWitness + 56))(v19, AssociatedConformanceWitness);
  v31 = *(v109 + 8);
  v109 += 8;
  v31(v21, v19);
  Preferences.init(storage:)(v30, v80, v79, v107);
  v32 = AssociatedTypeWitness;
  v33 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LongTermPairingKeyStore(0, v32, v33, v34);
  v35 = v77;
  v36 = v76;
  v87(v77, v76);
  v37 = v89;
  (*(AssociatedConformanceWitness + 64))(v19, AssociatedConformanceWitness);
  v31(v21, v19);
  v38 = LongTermPairingKeyStore.__allocating_init(keychain:)(v37);
  v39 = v78;
  v40 = v83;
  sub_100381A24(v107, v38, v35, v86, v36, v85, v83, v78);
  v41 = *(*v2 + 136);
  v42 = v81;
  v43 = v39;
  v44 = v84;
  (*(v81 + 32))(v2 + v41, v39, v84);
  v45 = v91;
  WitnessTable = swift_getWitnessTable(byte_1004B20AC, v91);
  type metadata accessor for InfrastructureWiFiInterface(0, v45, WitnessTable, v47);
  v48 = v42;
  (*(v42 + 16))(v43, v2 + v41, v44);
  v51 = sub_1003F2AE0(v108, v43, v49, v50);
  (*(v48 + 8))(v43, v44);
  v2[2] = v51;

  sub_10031741C(v51);

  swift_weakAssign();
  v52 = *(v2 + *(*v2 + 192));

  v53 = v52;
  sub_1002DF1A8(v52);

  v54 = type metadata accessor for TaskPriority();
  v55 = v92;
  (*(*(v54 - 8) + 56))(v92, 1, 1, v54);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v2;

  *(v2 + *(*v2 + 160)) = sub_1003ACB3C(0, 0, v55, &unk_1004B2158, v56);

  v57 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v113 = sub_100388EDC;
  v114 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v112 = sub_10000C8B8;
  *(&v112 + 1) = &unk_100577FA0;
  v58 = _Block_copy(&aBlock);

  v59 = v57;
  v60 = v96;
  static DispatchQoS.unspecified.getter();
  v110 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v62 = v97;
  v61 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v58);

  (*(v101 + 8))(v62, v61);
  (*(v99 + 8))(v60, v100);

  v63 = v102;
  *v102 = 86400;
  v64 = enum case for DispatchTimeInterval.seconds(_:);
  v65 = v105;
  v66 = *(v104 + 104);
  v66(v63, enum case for DispatchTimeInterval.seconds(_:), v105);
  v67 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v68 = v103;
  *v103 = 86400;
  v69 = v65;
  v66(v68, v64, v65);
  v70 = v106;
  *v106 = 180;
  v66(v70, v64, v69);
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = v67;

  v73 = swift_allocObject();
  v74 = v94;
  *(v73 + 16) = v95;
  *(v73 + 32) = v74;
  *(v73 + 48) = v40;
  *(v73 + 56) = v71;
  swift_allocObject();
  *(v2 + *(*v2 + 224)) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v63, v72, v68, v70, sub_100388EE4, v73);

  return v2;
}

unint64_t sub_100388B0C()
{
  result = qword_10059B290;
  if (!qword_10059B290)
  {
    v3 = sub_100018AB4(255, &qword_1005974C0, NSNumber_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_10059B290);
  }

  return result;
}

double sub_100388BF8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  sub_10040CAE8(a1, a2, a3, a4);
  a2(v6, v7);

  return result;
}

uint64_t sub_100388C60(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[4];
  v5 = v1[2];
  v6 = v1[9];
  v7 = v1[10];
  v9 = v1[11];
  v8 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10030BDD0;

  return sub_100385D9C(a1, v5, v4, v6, v7, v9, v8, v12);
}

uint64_t sub_100388D64(uint64_t a1)
{
  if (*(a1 + 3720))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100388D80(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100388E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002CB380;

  return sub_100381D34(a1, v4, v5, v6);
}

uint64_t WiFiAwareMonitorClient.Status.description.getter(uint64_t a1, char a2)
{
  if (!a2)
  {
    _StringGuts.grow(_:)(17);

    strcpy(v5, "Running [PID: ");
    HIBYTE(v5[1]) = -18;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    _StringGuts.grow(_:)(20);

    v5[0] = 0xD000000000000011;
    v5[1] = 0x80000001004C03E0;
LABEL_5:
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 93;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v5[0];
  }

  return 0x6E776F6E6B6E55;
}

unint64_t WiFiAwareMonitorClient.BKSStatus.description.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0xD00000000000002ALL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (a1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_100389140(uint64_t a1)
{
  [*(v1 + 32) invalidate];
  v3 = [objc_opt_self() targetWithPid:a1];
  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004B1170;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() attributeWithDomain:v5 name:v6];

  *(v4 + 32) = v7;
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = String._bridgeToObjectiveC()();
  sub_100018AB4(0, qword_100598290, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithExplanation:v9 target:v3 attributes:isa];

  v26 = 0;
  v12 = [v11 acquireWithError:&v26];
  v13 = v26;
  if (v12)
  {
    v14 = *(v1 + 32);
    *(v1 + 32) = v11;
    v15 = v13;
    v16 = v11;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Assertion acquired successfully for pid %d.", v19, 8u);
    }
  }

  else
  {
    v20 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 67109378;
      *(v23 + 4) = a1;
      *(v23 + 8) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 10) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to acquire assertion for pid %d: %@", v23, 0x12u);
      sub_10000BB28(v24);
    }

    else
    {
    }
  }
}

uint64_t WiFiAwareMonitorClient.publisher.getter()
{
  sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  sub_10000CADC(&qword_100598058, &unk_1005943F0, &qword_1004B2170, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t WiFiAwareMonitorClient.status.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  swift_beginAccess();
  return *v1;
}

void WiFiAwareMonitorClient.status.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t WiFiAwareMonitorClient.bksstatus.getter()
{
  v1 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
  swift_beginAccess();
  return *(v0 + v1);
}

void WiFiAwareMonitorClient.bksstatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL WiFiAwareMonitorClient.processIsRunning.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  swift_beginAccess();
  return *(v1 + 8) == 0;
}

void sub_10038982C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v28 = a3;
  v29 = a2;
  v26[0] = a1;
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v27 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  v8 = sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v26[1] = "com.apple.NexusCLI";
  v26[2] = v8;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10001F984(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v9 = v28;
  *(v3 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 32) = 0;
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor;
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor) = 0;
  v11 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_subject;
  aBlock = 0;
  LOBYTE(v31) = 2;
  v32 = 0;
  LOBYTE(v33) = 2;
  sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  swift_allocObject();
  *(v3 + v11) = CurrentValueSubject.init(_:)();
  v12 = v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
  *v12 = 0;
  *(v12 + 8) = 2;
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus) = 0;
  if (v9 < 1)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v19, v20, "Invalid: pid: %d", v21, 8u);
    }

    goto LABEL_9;
  }

  v13 = v29;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136315394;
    v18 = v26[0];
    *(v16 + 4) = sub_100002320(v26[0], v13, &aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v14, v15, "Will begin monitoring bundleID: %s, pid: %d", v16, 0x12u);
    sub_100002A00(v17);
  }

  else
  {

    v18 = v26[0];
  }

  *(v4 + 16) = v9;
  sub_100389140(v9);
  __chkstk_darwin();
  v26[-4] = v18;
  v26[-3] = v13;
  v26[-2] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10038B120;
  *(v22 + 24) = &v26[-6];
  v34 = sub_10038B12C;
  v35 = v22;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10038ABF8;
  v33 = &unk_100578188;
  v23 = _Block_copy(&aBlock);
  v24 = objc_opt_self();

  v25 = [v24 monitorWithConfiguration:v23];
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    v19 = *(v4 + v10);
    *(v4 + v10) = v25;
LABEL_9:

    return;
  }

  __break(1u);
}

void sub_100389E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() predicateMatchingBundleIdentifier:v7];

  sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004B1170;
  *(v9 + 32) = v8;
  sub_100018AB4(0, &qword_100598288, RBSProcessPredicate_ptr);
  v10 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setServiceClass:33];
  v12 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v12];

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v16[4] = sub_10038B154;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10038AB58;
  v16[3] = &unk_100578200;
  v15 = _Block_copy(v16);

  [a1 setUpdateHandler:v15];
  _Block_release(v15);
}

uint64_t sub_10038A084(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a5;
  v17[5] = a6;
  aBlock[4] = sub_10038B160;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100578250;
  v18 = _Block_copy(aBlock);

  v19 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001F984(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v21);
}

void sub_10038A398(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v72 = a3;
    v73 = a4;
    if ([a2 isApplication])
    {
      v9 = a2;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v79[0] = v13;
        *v12 = 136315138;
        v14 = [v9 name];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v75 = v16;
        v76 = v18;
        sub_10005DC58(&unk_100599FD0, &qword_100482530);
        v19 = String.init<A>(describing:)();
        v21 = sub_100002320(v19, v20, v79);

        *(v12 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "process %s is application", v12, 0xCu);
        sub_100002A00(v13);
      }
    }

    if ([a2 isDaemon])
    {
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v79[0] = v26;
        *v25 = 136315138;
        v27 = [v22 name];
        if (v27)
        {
          v28 = v27;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v75 = v29;
        v76 = v31;
        sub_10005DC58(&unk_100599FD0, &qword_100482530);
        v32 = String.init<A>(describing:)();
        v34 = sub_100002320(v32, v33, v79);

        *(v25 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "process %s is Daemon", v25, 0xCu);
        sub_100002A00(v26);
      }
    }

    v35 = [a2 currentState];
    v38 = 1;
    if (v35)
    {
      v36 = v35;
      v37 = [v35 isRunning];

      if (v37)
      {
        v38 = 0;
      }
    }

    v39 = [a2 pid];

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v42 = 136315650;
      *(v42 + 4) = sub_100002320(a3, v73, &v75);
      *(v42 + 12) = 2080;
      v43 = v8 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
      swift_beginAccess();
      v44 = WiFiAwareMonitorClient.Status.description.getter(*v43, *(v43 + 8));
      v46 = sub_100002320(v44, v45, &v75);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2080;
      v47 = WiFiAwareMonitorClient.Status.description.getter(v39, v38);
      v49 = sub_100002320(v47, v48, &v75);

      *(v42 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "BundleID: %s: Status changed from %s to %s", v42, 0x20u);
      swift_arrayDestroy();
    }

    v50 = v8 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_status;
    swift_beginAccess();
    v51 = *(v50 + 8);
    v75 = *v50;
    LOBYTE(v76) = v51;
    v77 = v39;
    v78 = v38;

    CurrentValueSubject.send(_:)();

    *v50 = v39;
    *(v50 + 8) = v38;
    v52 = [a2 currentState];
    if (v52)
    {
      v53 = v52;
      v54 = sub_10038AEA0(v52);

      v55 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
      swift_beginAccess();
      *(v8 + v55) = v54;
    }

    v56 = a2;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v59 = 136315650;
      *(v59 + 4) = sub_100002320(v72, v73, &v74);
      *(v59 + 12) = 2080;
      v60 = [v56 name];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0xE000000000000000;
      }

      v65 = sub_100002320(v62, v64, &v74);

      *(v59 + 14) = v65;
      *(v59 + 22) = 2080;
      v66 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
      swift_beginAccess();
      v67 = *(v8 + v66);
      if (v67 <= 1)
      {
        if (*(v8 + v66))
        {
          v70 = 0x80000001004C0490;
          v68 = 0xD00000000000001DLL;
        }

        else
        {
          v70 = 0xE700000000000000;
          v68 = 0x6E776F6E6B6E55;
        }
      }

      else if (v67 == 2)
      {
        v70 = 0x80000001004C0460;
        v68 = 0xD00000000000002ALL;
      }

      else
      {
        v68 = 0xD000000000000024;
        if (v67 == 3)
        {
          v69 = "BKSApplicationStateBackgroundRunning";
        }

        else
        {
          v69 = "BKSApplicationStateForegroundRunning";
        }

        v70 = (v69 - 32) | 0x8000000000000000;
      }

      v71 = sub_100002320(v68, v70, &v74);

      *(v59 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v57, v58, "BKSStatus for %s [%s]: %s", v59, 0x20u);
      swift_arrayDestroy();
    }
  }
}

void sub_10038AB58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_10038ABF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t WiFiAwareMonitorClient.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_logger, v2, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v8, v9, "deinit: release assertion and stop montoring for pid %d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = *(v1 + 32);
  if (v12)
  {
    [v12 invalidate];
  }

  v13 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor;
  v14 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_processMonitor);
  if (v14)
  {
    [v14 invalidate];
  }

  v11((v1 + v7), v2);

  return v1;
}

uint64_t WiFiAwareMonitorClient.__deallocating_deinit()
{
  WiFiAwareMonitorClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10038AEA0(void *a1)
{
  result = [a1 taskState];
  if (result > 2)
  {
    if (result != 4)
    {
      if (result == 3)
      {
        return 2;
      }

      return 0;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result != 2)
    {
      return 0;
    }
  }

  v3 = [a1 endowmentNamespaces];
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004478AC(0xD00000000000001DLL, 0x80000001004C05D0, v5);

  return 4;
}

unint64_t sub_10038AF78()
{
  result = qword_100598068;
  if (!qword_100598068)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiAwareMonitorClient.BKSStatus, &type metadata for WiFiAwareMonitorClient.BKSStatus, v0, v1);
    atomic_store(result, &qword_100598068);
  }

  return result;
}

uint64_t type metadata accessor for WiFiAwareMonitorClient(uint64_t a1)
{
  result = qword_100598098;
  if (!qword_100598098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038B020(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10038B17C(uint64_t a1)
{
  result = type metadata accessor for NANDriverCapabilities(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NANPeer(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Logger();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

id sub_10038B2F4()
{
  v1 = v0;
  v163 = *v0;
  v174 = type metadata accessor for Date();
  v164 = *(v174 - 8);
  __chkstk_darwin();
  v3 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005983B0, &qword_1004B2428);
  __chkstk_darwin();
  v177 = &v157 - v4;
  v170 = sub_10005DC58(&qword_10058FE28, &unk_1004B2430);
  __chkstk_darwin();
  v169 = &v157 - v5;
  v6 = type metadata accessor for SampleEntry(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v172 = &v157 - v10;
  __chkstk_darwin();
  v159 = &v157 - v11;
  __chkstk_darwin();
  v158 = &v157 - v12;
  __chkstk_darwin();
  v165 = &v157 - v13;
  __chkstk_darwin();
  v162 = &v157 - v14;
  __chkstk_darwin();
  v178 = &v157 - v15;
  __chkstk_darwin();
  v17 = (&v157 - v16);
  __chkstk_darwin();
  v19 = (&v157 - v18);
  __chkstk_darwin();
  v21 = (&v157 - v20);
  v22 = v1 + qword_10059BAA0;
  v23 = type metadata accessor for NANPeer(0);
  v173 = *&v22[*(v23 + 20)] | (*&v22[*(v23 + 20) + 2] << 16);
  static WAAnalytics.samplePeerStats(macAddress:)(v173, &v180);
  v171 = v6;
  v160 = v9;
  v161 = v3;
  if (!v181)
  {
    sub_100016290(&v180, &qword_10058BA80, &qword_1004818C0);

    v24 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v182[0] = v42;
      *v41 = 16777730;
      *(v41 + 4) = *(v1 + 112);
      *(v41 + 5) = 2080;
      v43 = WiFiAddress.description.getter(v173);
      v45 = v44;

      v46 = sub_100002320(v43, v45, v182);

      *(v41 + 7) = v46;
      _os_log_impl(&_mh_execute_header, v24, v40, "[Datapath Performance] ID: %hhu: %s, Failed to samplePeerStats on report", v41, 0xFu);
      sub_100002A00(v42);
    }

    else
    {
    }

    goto LABEL_13;
  }

  sub_100085188(&v180, v182);
  static Date.now.getter();
  sub_100002B30(v182, v21 + *(v6 + 20));
  sub_10038F6A0(v21, v19, type metadata accessor for SampleEntry);
  v24 = qword_10059BAB8;
  swift_beginAccess();
  v25 = *(&v24->isa + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v24->isa + v1) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1003A72AC((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    sub_10038F708(v19, v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, type metadata accessor for SampleEntry);
    *(&v24->isa + v1) = v25;
    swift_endAccess();
    sub_10038F6A0(v21, v17, type metadata accessor for SampleEntry);
    swift_retain_n();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v180 = v176;
      *v31 = 16777986;
      *(v31 + 4) = *(v1 + 112);

      *(v31 + 5) = 2080;
      v32 = WiFiAddress.description.getter(v173);
      v34 = v33;

      v35 = sub_100002320(v32, v34, &v180);

      *(v31 + 7) = v35;
      *(v31 + 15) = 2080;
      v6 = v171;
      sub_10038F6A0(v17, v178, type metadata accessor for SampleEntry);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      sub_10038FCA4(v17, type metadata accessor for SampleEntry);
      v39 = sub_100002320(v36, v38, &v180);

      *(v31 + 17) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[Datapath Performance] ID: %hhu: %s, Query samplePeerStats on report ok %s", v31, 0x19u);
      v24 = v176;
      swift_arrayDestroy();
    }

    else
    {

      v24 = type metadata accessor for SampleEntry;
      sub_10038FCA4(v17, type metadata accessor for SampleEntry);
    }

    sub_10038FCA4(v21, type metadata accessor for SampleEntry);
    sub_100002A00(v182);
LABEL_13:
    v47 = v172;
    v48 = qword_10059BAB8;
    v178 = qword_10059BAB0;
    swift_beginAccess();
    v50 = *(v1 + v48);
    v51 = *(v50 + 16);
    if (v51 < 3)
    {
      break;
    }

    v166 = (v164 + 16);
    v168 = (v164 + 56);
    v176 = v7 + 56;
    *&v49 = 16777986;
    v167 = v49;
    v17 = &qword_1005983B0;
    v21 = &qword_1004B2428;
    v175 = v7;
    while (1)
    {

      v52 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v25))
      {
        v53 = swift_slowAlloc();
        *&v180 = swift_slowAlloc();
        *v53 = v167;
        *(v53 + 4) = *(v1 + 112);
        *(v53 + 5) = 2080;
        v54 = WiFiAddress.description.getter(v173);
        v56 = v55;

        v57 = sub_100002320(v54, v56, &v180);

        *(v53 + 7) = v57;
        *(v53 + 15) = 2080;
        v58 = *(v1 + v48);
        if (*(v58 + 16))
        {
          v59 = v174;
          v60 = v169;
          (*v166)(v169, v58 + ((*(v175 + 80) + 32) & ~*(v175 + 80)), v174);
          v61 = 0;
        }

        else
        {
          v61 = 1;
          v59 = v174;
          v60 = v169;
        }

        (*v168)(v60, v61, 1, v59);
        v62 = String.init<A>(describing:)();
        v24 = v63;
        v64 = sub_100002320(v62, v63, &v180);

        *(v53 + 17) = v64;
        _os_log_impl(&_mh_execute_header, v52, v25, "[Datapath Performance] ID: %hhu: %s, self.peerAnalytics.count > 2, removing sample dated %s", v53, 0x19u);
        swift_arrayDestroy();

        v6 = v171;
        v47 = v172;
        v7 = v175;
        v21 = &qword_1004B2428;
      }

      else
      {
      }

      swift_beginAccess();
      v19 = *(v1 + v48);
      if (!v19[2])
      {
        break;
      }

      v24 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v65 = v177;
      sub_10038F6A0(v24 + v19, v177, type metadata accessor for SampleEntry);
      (*(v7 + 56))(v65, 0, 1, v6);
      sub_100016290(v65, &qword_1005983B0, &qword_1004B2428);
      v25 = v19[2];
      if (!v25)
      {
        goto LABEL_58;
      }

      v66 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v48) = v19;
      if (!v66 || v25 - 1 > v19[3] >> 1)
      {
        v19 = sub_1003A72AC(v66, v25, 1, v19);
        *(v1 + v48) = v19;
      }

      sub_10038FCA4(v24 + v19, type metadata accessor for SampleEntry);
      v67 = *(v7 + 72);
      if (v67 > 0 || v24 + v19 >= v24 + v19 + v67 + (v19[2] - 1) * v67)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v67)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v19[2];
      *(v1 + v48) = v19;
      swift_endAccess();
      v50 = *(v1 + v48);
      v51 = *(v50 + 16);
      if (v51 <= 2)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v25 = sub_1003A72AC(0, *(v25 + 2) + 1, 1, v25);
    *(&v24->isa + v1) = v25;
  }

LABEL_32:
  if (!v51)
  {
    swift_retain_n();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v180 = v94;
      *v93 = 16777986;
      *(v93 + 4) = *(v1 + 112);
      *(v93 + 5) = 2080;
      v95 = WiFiAddress.description.getter(v173);
      v97 = sub_100002320(v95, v96, &v180);

      *(v93 + 7) = v97;
      *(v93 + 15) = 2048;
      v98 = *(*(v1 + v48) + 16);

      *(v93 + 17) = v98;

      _os_log_impl(&_mh_execute_header, v91, v92, "[Datapath Performance] ID: %hhu: %s, Not Enough Samples, only have %ld", v93, 0x19u);
      sub_100002A00(v94);
    }

    else
    {
    }

    goto LABEL_48;
  }

  v68 = v50 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v69 = v162;
  sub_10038F6A0(v68, v162, type metadata accessor for SampleEntry);
  v70 = v68 + *(v7 + 72) * (v51 - 1);
  v71 = v165;
  sub_10038F6A0(v70, v165, type metadata accessor for SampleEntry);
  sub_10038FC5C(&qword_1005983B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v72 = v47;
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v73 = v158;
    sub_10038F6A0(v71, v158, type metadata accessor for SampleEntry);
    v74 = v159;
    sub_10038F6A0(v69, v159, type metadata accessor for SampleEntry);
    swift_retain_n();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v180 = v177;
      *v77 = 16778242;
      *(v77 + 4) = *(v1 + 112);

      *(v77 + 5) = 2080;
      v78 = WiFiAddress.description.getter(v173);
      LODWORD(v176) = v76;
      v79 = v78;
      v81 = v80;

      v82 = sub_100002320(v79, v81, &v180);

      *(v77 + 7) = v82;
      *(v77 + 15) = 2080;
      sub_10038FC5C(&qword_10058CA40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      sub_10038FCA4(v73, type metadata accessor for SampleEntry);
      v86 = sub_100002320(v83, v85, &v180);
      v72 = v172;

      *(v77 + 17) = v86;
      *(v77 + 25) = 2080;
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      sub_10038FCA4(v74, type metadata accessor for SampleEntry);
      v90 = sub_100002320(v87, v89, &v180);
      v6 = v171;

      *(v77 + 27) = v90;
      _os_log_impl(&_mh_execute_header, v75, v176, "[Datapath Performance] ID: %hhu: %s, assert(lateSample.date > earlySample.date) fails %s <= %s", v77, 0x23u);
      swift_arrayDestroy();
      v69 = v162;

      v71 = v165;
    }

    else
    {

      sub_10038FCA4(v74, type metadata accessor for SampleEntry);
      sub_10038FCA4(v73, type metadata accessor for SampleEntry);
    }
  }

  sub_10038F6A0(v69, v72, type metadata accessor for SampleEntry);
  v99 = v160;
  sub_10038F6A0(v71, v160, type metadata accessor for SampleEntry);
  swift_retain_n();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    *&v180 = v177;
    *v102 = 16778242;
    *(v102 + 4) = *(v1 + 112);

    *(v102 + 5) = 2080;
    v103 = WiFiAddress.description.getter(v173);
    LODWORD(v176) = v101;
    v104 = v103;
    v106 = v105;

    v107 = sub_100002320(v104, v106, &v180);

    *(v102 + 7) = v107;
    *(v102 + 15) = 2080;
    sub_10038FC5C(&qword_10058CA40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v72;
    v111 = v110;
    sub_10038FCA4(v109, type metadata accessor for SampleEntry);
    v112 = sub_100002320(v108, v111, &v180);

    *(v102 + 17) = v112;
    *(v102 + 25) = 2080;
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = v114;
    sub_10038FCA4(v99, type metadata accessor for SampleEntry);
    v116 = sub_100002320(v113, v115, &v180);
    v6 = v171;

    *(v102 + 27) = v116;
    _os_log_impl(&_mh_execute_header, v100, v176, "[Datapath Performance] ID: %hhu: %s, Calculating from date %s to  %s", v102, 0x23u);
    swift_arrayDestroy();
    v69 = v162;

    v71 = v165;
  }

  else
  {

    sub_10038FCA4(v99, type metadata accessor for SampleEntry);
    sub_10038FCA4(v72, type metadata accessor for SampleEntry);
  }

  v117 = static WAAnalytics.peerStatsDictionary(earlyData:laterData:)(v69 + *(v6 + 20), v71 + *(v6 + 20));

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *&v180 = swift_slowAlloc();
    *v120 = 16777986;
    *(v120 + 4) = *(v1 + 112);
    *(v120 + 5) = 2080;
    v121 = WiFiAddress.description.getter(v173);
    v123 = v122;

    v124 = sub_100002320(v121, v123, &v180);

    *(v120 + 7) = v124;
    *(v120 + 15) = 2080;
    v179 = v117;

    sub_10005DC58(&qword_1005983C8, &qword_1004B2448);
    v125 = String.init<A>(describing:)();
    v127 = sub_100002320(v125, v126, &v180);

    *(v120 + 17) = v127;
    _os_log_impl(&_mh_execute_header, v118, v119, "[Datapath Performance] ID: %hhu: %s, peerStats: %s", v120, 0x19u);
    swift_arrayDestroy();
    v69 = v162;

    if (v117)
    {
LABEL_45:
      v128 = sub_10038F8E0(v117, sub_10038FC54);

      sub_10038FCA4(v165, type metadata accessor for SampleEntry);
      sub_10038FCA4(v69, type metadata accessor for SampleEntry);
      *(v1 + qword_10059BAC0) = v128;

      goto LABEL_48;
    }
  }

  else
  {

    if (v117)
    {
      goto LABEL_45;
    }
  }

  sub_10038FCA4(v165, type metadata accessor for SampleEntry);
  sub_10038FCA4(v69, type metadata accessor for SampleEntry);
LABEL_48:

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *v131 = 16778754;
    *(v131 + 4) = *(v1 + 112);

    *(v131 + 5) = 2080;
    *&v180 = sub_10038FA60();
    *(&v180 + 1) = v133;
    sub_10005DC58(&unk_10059AB80, &qword_10049ED90);
    v134 = String.init<A>(describing:)();
    v136 = sub_100002320(v134, v135, &v179);

    *(v131 + 7) = v136;
    *(v131 + 15) = 2112;
    v137 = sub_10038CD9C();
    *(v131 + 17) = v137;
    *v132 = v137;
    *(v131 + 25) = 2112;
    v138 = sub_10038CE00();
    *(v131 + 27) = v138;
    v132[1] = v138;
    *(v131 + 35) = 2112;
    v139 = sub_10038CC1C();
    *(v131 + 37) = v139;
    v132[2] = v139;
    *(v131 + 45) = 2080;
    *&v180 = sub_10038DB5C();
    sub_10005DC58(&qword_1005983C0, &qword_1004B2440);
    v140 = String.init<A>(describing:)();
    v142 = sub_100002320(v140, v141, &v179);

    *(v131 + 47) = v142;
    _os_log_impl(&_mh_execute_header, v129, v130, "[Datapath Performance] ID: %hhu, localTimestamp: %s, Throughput Ceiling: %@, Throughput Capacity: %@, Signal Strength: %@, Tx Latency: %s", v131, 0x37u);
    sub_10005DC58(&qword_10058B780, &qword_100480AC0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {
  }

  v143 = v161;
  Date.init()();
  v144 = sub_10038FA60();
  v146 = v145;
  v147 = sub_10038CD9C();
  v148 = sub_10038CE00();
  v149 = sub_10038DB5C();
  v150 = sub_10038CC1C();
  v151 = sub_10038E770();
  v152.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v146 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100017554(v144, v146);
    if (v149)
    {
      goto LABEL_53;
    }

LABEL_55:
    v154.super.isa = 0;
    goto LABEL_56;
  }

  isa = 0;
  if (!v149)
  {
    goto LABEL_55;
  }

LABEL_53:
  sub_10036CDE8();
  sub_10038FC5C(&qword_10059B290, sub_10036CDE8, &protocol conformance descriptor for NSObject);
  v154.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_56:
  v155 = [objc_allocWithZone(WiFiAwareDatapathPerformanceReport) initWithTimestamp:v152.super.isa localTimestamp:isa throughputCeilingMbps:v147 throughputCapacityMbps:v148 txLatency:v154.super.isa signalStrength:v150 durationActive:v151];

  (*(v164 + 8))(v143, v174);
  return v155;
}

uint64_t sub_10038CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + qword_10059BAA0;
  v5 = type metadata accessor for NANPeer(0);
  WiFiAddress.description.getter(*(v4 + *(v5 + 20)) | (*(v4 + *(v5 + 20) + 2) << 16));
  String.uppercased()();

  sub_10005E2E4();
  LOBYTE(v4) = StringProtocol.contains<A>(_:)();

  return v4 & 1;
}

Class sub_10038CC1C()
{
  swift_unownedRetainStrong();
  v1 = v0 + qword_10059BAA0;
  v2 = type metadata accessor for NANPeer(0);
  v3 = sub_1004109E4(*(v1 + *(v2 + 20)) | (*(v1 + *(v2 + 20) + 2) << 16));
  v5 = v4;

  result = 0;
  if ((v5 & 1) == 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = RSSI.description.getter();
      v13 = sub_100002320(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "RSSI: %s", v9, 0xCu);
      sub_100002A00(v10);
    }

    sub_10036CDE8();
    v14 = RSSI.scaled.getter(v3);
    return NSNumber.init(floatLiteral:)(v14).super.super.isa;
  }

  return result;
}

Class sub_10038CD9C()
{
  v0 = sub_10038D144();
  if (v1)
  {
    return 0;
  }

  v3 = *&v0;
  sub_10038D970();
  v6 = v5;
  if (v5 >= v3)
  {
    v6 = v3;
  }

  if ((v4 & 1) == 0)
  {
    v3 = v6;
  }

  sub_10036CDE8();
  return NSNumber.init(floatLiteral:)(v3).super.super.isa;
}

Class sub_10038CE00()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + qword_10059BAC8);
  swift_unownedRetainStrong();
  v7 = *(*v6 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, AssociatedTypeWitness);

  v8 = v1 + qword_10059BAA0;
  v9 = (v8 + *(type metadata accessor for NANPeer(0) + 20));
  v10 = *(v9 + 1);
  v11 = *v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 352))(v11 | (v10 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  result = sub_10038CD9C();
  if (result)
  {
    v15 = result;
    [(objc_class *)result floatValue];
    v17 = v16;

    sub_10036CDE8();
    return NSNumber.init(floatLiteral:)(vcvtd_n_f64_u32(v13, 6uLL) * v17).super.super.isa;
  }

  return result;
}

uint64_t sub_10038D144()
{
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v1 = v0 + qword_10059BA98;
  v2 = type metadata accessor for NANDriverCapabilities(0);
  v3 = (v1 + v2[19]);
  if (v3[5])
  {
    v4 = (v1 + v2[18]);
    if (*(v4 + 20))
    {
      v5 = (v1 + v2[17]);
      if (v5[4])
      {
        goto LABEL_8;
      }

      v7 = *v5;
      v6 = v5[1];
      v8 = HIDWORD(*v5);
      v9 = *v5 >> 40;
      v10 = HIWORD(*v5);
      v12 = v5[2];
      v11 = v5[3];
      v75 = HIDWORD(v6);
      v76 = v6 >> 40;
      v77 = HIWORD(v6);
      v78 = HIBYTE(v6);
      v79 = v12 >> 8;
      v80 = v12 >> 16;
      v81 = v12 >> 24;
      v82 = HIDWORD(v12);
      v83 = v12 >> 40;
      v84 = HIWORD(v12);
      v85 = HIBYTE(v12);
      v86 = v11 >> 8;
      v87 = v11 >> 24;
      v88 = HIBYTE(v11);
      type metadata accessor for apple80211_ht_capability(0);
      v92 = v13;
      v93 = &protocol witness table for apple80211_ht_capability;
      v14 = swift_allocObject();
      *&v90 = v14;
      *(v14 + 16) = v7;
      *(v14 + 20) = v8;
      *(v14 + 21) = v9;
      *(v14 + 22) = v10;
      *(v14 + 24) = v6;
      *(v14 + 26) = BYTE2(v6);
      *(v14 + 27) = BYTE3(v6);
      *(v14 + 28) = v75;
      *(v14 + 29) = v76;
      *(v14 + 30) = v77;
      *(v14 + 31) = v78;
      *(v14 + 32) = v12;
      *(v14 + 33) = v79;
      *(v14 + 34) = v80;
      *(v14 + 35) = v81;
      *(v14 + 36) = v82;
      *(v14 + 37) = v83;
      *(v14 + 38) = v84;
      *(v14 + 39) = v85;
      *(v14 + 40) = v11;
      *(v14 + 41) = v86;
      *(v14 + 43) = v87;
      *(v14 + 47) = v88;
    }

    else
    {
      v27 = *v4;
      v26 = v4[1];
      v28 = HIDWORD(*v4);
      v29 = *v4 >> 40;
      v30 = *(v4 + 4);
      v31 = HIWORD(*v4) | (v26 << 16);
      v32 = v26 >> 16;
      v33 = HIDWORD(v26);
      v34 = HIWORD(v26);
      type metadata accessor for apple80211_vht_capability(0);
      v92 = v35;
      v93 = &protocol witness table for apple80211_vht_capability;
      LODWORD(v90) = v27;
      BYTE4(v90) = v28;
      BYTE5(v90) = v29;
      *(&v90 + 6) = v31;
      WORD5(v90) = v32;
      WORD6(v90) = v33;
      HIWORD(v90) = v34;
      v91 = v30;
    }
  }

  else
  {
    v15 = *v3;
    v16 = v3[1];
    v17 = HIDWORD(*v3);
    v18 = *v3 >> 40;
    v20 = v3[3];
    v19 = v3[4];
    v21 = HIWORD(*v3);
    v22 = HIBYTE(*v3);
    v23 = v3[2];
    v71 = v16 >> 16;
    v72 = v16 >> 24;
    v73 = HIDWORD(v16);
    v74 = v16 >> 40;
    v75 = HIWORD(v16);
    v76 = HIBYTE(v16);
    v77 = v23 >> 8;
    v78 = v23 >> 16;
    v79 = v23 >> 24;
    v80 = HIDWORD(v23);
    v81 = v23 >> 40;
    v82 = HIWORD(v23);
    v83 = HIBYTE(v23);
    v84 = v20 >> 16;
    v85 = HIDWORD(v20);
    v86 = HIWORD(v20);
    v87 = v19 >> 16;
    v88 = HIDWORD(v19);
    type metadata accessor for apple80211_he_capability(0);
    v92 = v24;
    v93 = &protocol witness table for apple80211_he_capability;
    v25 = swift_allocObject();
    *&v90 = v25;
    *(v25 + 16) = v15;
    *(v25 + 20) = v17;
    *(v25 + 21) = v18;
    *(v25 + 22) = v21;
    *(v25 + 23) = v22;
    *(v25 + 24) = v16;
    *(v25 + 26) = v71;
    *(v25 + 27) = v72;
    *(v25 + 28) = v73;
    *(v25 + 29) = v74;
    *(v25 + 30) = v75;
    *(v25 + 31) = v76;
    *(v25 + 32) = v23;
    *(v25 + 33) = v77;
    *(v25 + 34) = v78;
    *(v25 + 35) = v79;
    *(v25 + 36) = v80;
    *(v25 + 37) = v81;
    *(v25 + 38) = v82;
    *(v25 + 39) = v83;
    *(v25 + 40) = v20;
    *(v25 + 42) = v84;
    *(v25 + 44) = v85;
    *(v25 + 46) = v86;
    *(v25 + 48) = v19;
    *(v25 + 50) = v87;
    *(v25 + 52) = v88;
  }

  sub_10038FBE4(&v90, &v95);
LABEL_8:
  v36 = *(&v96 + 1);
  if (*(&v96 + 1))
  {
    v37 = v97;
    sub_100029B34(&v95, *(&v96 + 1));
    v38 = *(v36 - 8);
    v39 = __chkstk_darwin();
    v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    (*(v37 + 24))(v98, v36, v37);
    (*(v38 + 8))(v41, v36);
    v42 = BYTE1(v98[0]);
    if (BYTE1(v98[0]) == 7)
    {
      v43 = 7;
    }

    else if (static Bandwidth.< infix(_:_:)())
    {
      v43 = 4;
    }

    else
    {
      v43 = v42;
    }

    v45 = v102;
    v46 = v100;
    v47 = v101;
    v48 = v98[1];
    LODWORD(v49) = v99;
    v50 = LOBYTE(v98[0]);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v89 = v49;
      v49 = v53;
      v54 = swift_slowAlloc();
      LODWORD(v88) = v50;
      v94 = v54;
      *v49 = 136315394;
      LOBYTE(v90) = v88;
      BYTE1(v90) = v43;
      *(&v90 + 1) = v48;
      LOBYTE(v91) = v89;
      v92 = v46;
      LOBYTE(v93) = v47;
      BYTE1(v93) = v45;
      v55 = PHYCapabilities.description.getter();
      v57 = sub_100002320(v55, v56, &v94);
      v87 = v48;
      v58 = v47;
      v59 = v46;
      v60 = v45;
      v61 = v43;
      v62 = v57;

      *(v49 + 4) = v62;
      *(v49 + 12) = 2080;
      PHYCapabilities.PHYDataRateMbps.getter();
      v103 = v63;
      LOBYTE(v104) = v64 & 1;
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      v65 = String.init<A>(describing:)();
      v67 = sub_100002320(v65, v66, &v94);

      *(v49 + 14) = v67;
      v43 = v61;
      v45 = v60;
      v46 = v59;
      v47 = v58;
      v48 = v87;
      _os_log_impl(&_mh_execute_header, v51, v52, "[Datapath Performance] SELF: %s, Data Rate: %s Mbps", v49, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v50) = v88;

      LOBYTE(v49) = v89;
    }

    LOBYTE(v103) = v50;
    BYTE1(v103) = v43;
    v104 = v48;
    v105 = v49;
    v106 = v46;
    v107 = v47;
    v108 = v45;
    PHYCapabilities.PHYDataRateMbps.getter();
    v44 = v68;
  }

  else
  {
    v44 = 0;
  }

  sub_100016290(&v95, &qword_1005983A8, &unk_1004B2418);
  return v44;
}

double sub_10038D970()
{
  v1 = v0 + qword_10059BAA0;
  v2 = (v1 + *(type metadata accessor for NANPeer(0) + 112));
  v4 = *v2;
  if (*v2 != 3)
  {
    v5 = *(v2 + 16);
    v6 = v2[3];
    v7 = *(v2 + 4);
    v8 = v2[1];
    v19 = v4;
    v20 = v8;
    v21 = v7 & 1;
    v22 = v6;
    v23 = v5 & 0xFF01;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = PHYCapabilities.description.getter();
      v14 = sub_100002320(v12, v13, &v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      PHYCapabilities.PHYDataRateMbps.getter();
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      v15 = String.init<A>(describing:)();
      v17 = sub_100002320(v15, v16, &v18);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Datapath Performance] PEER: %s, Data Rate: %s Mbps", v11, 0x16u);
      swift_arrayDestroy();
    }

    return PHYCapabilities.PHYDataRateMbps.getter();
  }

  return result;
}

uint64_t sub_10038DB5C()
{
  v1 = sub_1002DE59C(_swiftEmptyArrayStorage);
  v2 = *(v0 + qword_10059BAC0);
  if (!v2)
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "[Datapath Performance] Bad self.lastIntervalMetrics", v63, 2u);
    }

    v60 = *(v1 + 16);
    if (!v60)
    {
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  v97 = v1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v99 = *(v0 + qword_10059BAC0);

  v8 = 0;
  while (1)
  {
    if (!v6)
    {
      if (v7 <= v8 + 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10 - 1;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v6 = 0;
          v102 = 0u;
          v103 = 0u;
          v8 = v11;
          v101 = 0u;
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_104;
    }

    v9 = v8;
LABEL_17:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v99 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_100002B30(*(v99 + 56) + 32 * v13, v100);
    *&v101 = v15;
    *(&v101 + 1) = v16;
    sub_100085188(v100, &v102);

LABEL_18:
    v104 = v101;
    v105[0] = v102;
    v105[1] = v103;
    v17 = *(&v101 + 1);
    if (!*(&v101 + 1))
    {
      break;
    }

    v18 = v104;
    sub_100085188(v105, &v101);
    *&v100[0] = v18;
    *(&v100[0] + 1) = v17;
    sub_10005E2E4();
    if (StringProtocol.contains<A>(_:)() & 1) != 0 && (*&v100[0] = v18, *(&v100[0] + 1) = v17, (StringProtocol.contains<A>(_:)()) && (sub_100002B30(&v101, v100), (swift_dynamicCast()))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v100[0] = v97;
      v20 = sub_10000B8DC(1);
      v22 = *(v97 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_110;
      }

      v26 = v21;
      if (*(v97 + 24) >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = v20;
          sub_10046ADEC();
          v20 = v56;
        }
      }

      else
      {
        sub_100310060(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_10000B8DC(1);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_118;
        }
      }

      v50 = *&v100[0];
      v97 = *&v100[0];
      if ((v26 & 1) == 0)
      {
        *(*&v100[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v50[6] + 8 * v20) = 1;
        *(v50[7] + 8 * v20) = 0x636E6574614C7874;
        sub_100002A00(&v101);
        v51 = v50[2];
        v24 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v24)
        {
          goto LABEL_114;
        }

        goto LABEL_71;
      }

LABEL_69:
      *(v50[7] + 8 * v20) = 0x636E6574614C7874;
      sub_100002A00(&v101);
    }

    else
    {
      *&v100[0] = v18;
      *(&v100[0] + 1) = v17;
      if (StringProtocol.contains<A>(_:)())
      {
        *&v100[0] = v18;
        *(&v100[0] + 1) = v17;
        if (StringProtocol.contains<A>(_:)())
        {
          sub_100002B30(&v101, v100);
          if (swift_dynamicCast())
          {

            v28 = swift_isUniquelyReferenced_nonNull_native();
            *&v100[0] = v97;
            v20 = sub_10000B8DC(2);
            v30 = *(v97 + 16);
            v31 = (v29 & 1) == 0;
            v24 = __OFADD__(v30, v31);
            v32 = v30 + v31;
            if (v24)
            {
              goto LABEL_111;
            }

            v33 = v29;
            if (*(v97 + 24) >= v32)
            {
              if ((v28 & 1) == 0)
              {
                v57 = v20;
                sub_10046ADEC();
                v20 = v57;
              }
            }

            else
            {
              sub_100310060(v32, v28);
              v20 = sub_10000B8DC(2);
              if ((v33 & 1) != (v34 & 1))
              {
                goto LABEL_118;
              }
            }

            v50 = *&v100[0];
            v97 = *&v100[0];
            if (v33)
            {
              goto LABEL_69;
            }

            *(*&v100[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
            *(v50[6] + 8 * v20) = 2;
            *(v50[7] + 8 * v20) = 0x636E6574614C7874;
            sub_100002A00(&v101);
            v53 = v50[2];
            v24 = __OFADD__(v53, 1);
            v52 = v53 + 1;
            if (v24)
            {
              goto LABEL_115;
            }

            goto LABEL_71;
          }
        }
      }

      *&v100[0] = v18;
      *(&v100[0] + 1) = v17;
      if (StringProtocol.contains<A>(_:)())
      {
        *&v100[0] = v18;
        *(&v100[0] + 1) = v17;
        if (StringProtocol.contains<A>(_:)())
        {
          sub_100002B30(&v101, v100);
          if (swift_dynamicCast())
          {

            v35 = swift_isUniquelyReferenced_nonNull_native();
            *&v100[0] = v97;
            v20 = sub_10000B8DC(4);
            v37 = *(v97 + 16);
            v38 = (v36 & 1) == 0;
            v24 = __OFADD__(v37, v38);
            v39 = v37 + v38;
            if (v24)
            {
              goto LABEL_112;
            }

            v40 = v36;
            if (*(v97 + 24) >= v39)
            {
              if ((v35 & 1) == 0)
              {
                v58 = v20;
                sub_10046ADEC();
                v20 = v58;
              }
            }

            else
            {
              sub_100310060(v39, v35);
              v20 = sub_10000B8DC(4);
              if ((v40 & 1) != (v41 & 1))
              {
                goto LABEL_118;
              }
            }

            v50 = *&v100[0];
            v97 = *&v100[0];
            if (v40)
            {
              goto LABEL_69;
            }

            *(*&v100[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
            *(v50[6] + 8 * v20) = 4;
            *(v50[7] + 8 * v20) = 0x636E6574614C7874;
            sub_100002A00(&v101);
            v54 = v50[2];
            v24 = __OFADD__(v54, 1);
            v52 = v54 + 1;
            if (v24)
            {
              goto LABEL_116;
            }

            goto LABEL_71;
          }
        }
      }

      *&v100[0] = v18;
      *(&v100[0] + 1) = v17;
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {

        goto LABEL_6;
      }

      *&v100[0] = v18;
      *(&v100[0] + 1) = v17;
      v42 = StringProtocol.contains<A>(_:)();

      if (v42 & 1) != 0 && (sub_100002B30(&v101, v100), (swift_dynamicCast()))
      {
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v100[0] = v97;
        v20 = sub_10000B8DC(3);
        v45 = *(v97 + 16);
        v46 = (v44 & 1) == 0;
        v24 = __OFADD__(v45, v46);
        v47 = v45 + v46;
        if (v24)
        {
          goto LABEL_113;
        }

        v48 = v44;
        if (*(v97 + 24) >= v47)
        {
          if ((v43 & 1) == 0)
          {
            v59 = v20;
            sub_10046ADEC();
            v20 = v59;
          }
        }

        else
        {
          sub_100310060(v47, v43);
          v20 = sub_10000B8DC(3);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_118;
          }
        }

        v50 = *&v100[0];
        v97 = *&v100[0];
        if (v48)
        {
          goto LABEL_69;
        }

        *(*&v100[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v50[6] + 8 * v20) = 3;
        *(v50[7] + 8 * v20) = 0x636E6574614C7874;
        sub_100002A00(&v101);
        v55 = v50[2];
        v24 = __OFADD__(v55, 1);
        v52 = v55 + 1;
        if (v24)
        {
          goto LABEL_117;
        }

LABEL_71:
        v50[2] = v52;
      }

      else
      {
LABEL_6:
        sub_100002A00(&v101);
      }
    }
  }

  v1 = v97;
  v60 = *(v97 + 16);
  if (v60)
  {
    goto LABEL_80;
  }

LABEL_77:
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "[Datapath Performance] avgLatency has no data", v66, 2u);
  }

  v60 = *(v1 + 16);
  if (v60)
  {
LABEL_80:
    *&v104 = _swiftEmptyArrayStorage;
    sub_1003678C8(0, v60, 0);
    v67 = v104;
    v68 = v1 + 64;
    v69 = _HashTable.startBucket.getter();
    v70 = *(v1 + 36);
    v98 = v70;
    sub_10036CDE8();
    v71 = 0;
    v95 = v1 + 72;
    v96 = v60;
    while ((v69 & 0x8000000000000000) == 0 && v69 < 1 << *(v1 + 32))
    {
      v74 = v69 >> 6;
      if ((*(v68 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
      {
        goto LABEL_105;
      }

      if (v70 != *(v1 + 36))
      {
        goto LABEL_106;
      }

      v75 = v68;
      v76 = *(*(v1 + 56) + 8 * v69);
      v77.super.super.isa = NSNumber.init(integerLiteral:)(*(*(v1 + 48) + 8 * v69)).super.super.isa;
      v78.super.super.isa = NSNumber.init(floatLiteral:)(v76).super.super.isa;
      *&v104 = v67;
      v79 = v1;
      v81 = *(v67 + 16);
      v80 = *(v67 + 24);
      v82 = v67;
      if (v81 >= v80 >> 1)
      {
        isa = v78.super.super.isa;
        sub_1003678C8((v80 > 1), v81 + 1, 1);
        v78.super.super.isa = isa;
        v82 = v104;
      }

      *(v82 + 16) = v81 + 1;
      v83 = (v82 + 16 * v81);
      v83[4].super.super.isa = v77.super.super.isa;
      v83[5].super.super.isa = v78.super.super.isa;
      v72 = 1 << *(v79 + 32);
      if (v69 >= v72)
      {
        goto LABEL_107;
      }

      v84 = *(v75 + 8 * v74);
      if ((v84 & (1 << v69)) == 0)
      {
        goto LABEL_108;
      }

      v1 = v79;
      v67 = v82;
      v68 = v75;
      v70 = v98;
      if (v98 != *(v79 + 36))
      {
        goto LABEL_109;
      }

      v85 = v84 & (-2 << (v69 & 0x3F));
      if (v85)
      {
        v72 = __clz(__rbit64(v85)) | v69 & 0x7FFFFFFFFFFFFFC0;
        v73 = v96;
      }

      else
      {
        v86 = v74 << 6;
        v87 = v74 + 1;
        v73 = v96;
        v88 = (v95 + 8 * v74);
        while (v87 < (v72 + 63) >> 6)
        {
          v90 = *v88++;
          v89 = v90;
          v86 += 64;
          ++v87;
          if (v90)
          {
            sub_10002BEB8(v69, v98, 0);
            v72 = __clz(__rbit64(v89)) + v86;
            goto LABEL_82;
          }
        }

        sub_10002BEB8(v69, v98, 0);
      }

LABEL_82:
      ++v71;
      v69 = v72;
      if (v71 == v73)
      {

        if (!*(v67 + 16))
        {
          goto LABEL_101;
        }

        goto LABEL_99;
      }
    }

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
    type metadata accessor for WiFiAwareAccessCategory(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_99:
      sub_10005DC58(&unk_10059B230, &unk_1004B2400);
      v91 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
LABEL_101:
      v91 = &_swiftEmptyDictionarySingleton;
    }

    *&v104 = v91;

    sub_10038EB34(v92, 1, &v104);

    return v104;
  }

  return result;
}

double sub_10038E770()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_10038E854()
{
  sub_10038FCA4(v0 + qword_10059BA98, type metadata accessor for NANDriverCapabilities);
  sub_10038FCA4(v0 + qword_10059BAA0, type metadata accessor for NANPeer);
  v1 = qword_10059BAA8;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_10059BAB0;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unownedRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10038E974()
{
  sub_10038E854();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SampleEntry(uint64_t a1)
{
  result = qword_100598370;
  if (!qword_100598370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038EA2C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t *sub_10038EAA4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
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

    v8 = sub_10038F770(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10038EB34(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_1003E096C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_10030FDF8(v16, v6 & 1);
    v11 = sub_1003E096C(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10036CDE8();
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_10046AC8C();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v21[6] + 8 * v11) = v9;
  *(v21[7] + 8 * v11) = v10;
  v22 = v21[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x80000001004BD5D0;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    sub_10036CDE8();
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v24 = 1;
    while (v24 < a1[2])
    {
      v25 = *v6;
      v26 = *a3;
      v9 = *(v6 - 1);
      v10 = v25;
      v27 = sub_1003E096C(v9);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v15 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v28;
      if (v26[3] < v31)
      {
        sub_10030FDF8(v31, 1);
        v27 = sub_1003E096C(v9);
        if ((v17 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v33[6] + 8 * v27) = v9;
      *(v33[7] + 8 * v27) = v10;
      v34 = v33[2];
      v15 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v24;
      v33[2] = v35;
      v6 += 2;
      if (v4 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10038EE9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = type metadata accessor for SampleEntry(0);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v11;
  __chkstk_darwin();
  v13 = &v54 - v12;
  __chkstk_darwin();
  v15 = &v54 - v14;
  v16 = type metadata accessor for NANPeer(0) - 8;
  __chkstk_darwin();
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  Date.init()();
  *(v5 + qword_10059BAC0) = 0;
  *(v5 + 112) = a1;
  *(v5 + qword_10059BAC8) = a2;
  v19 = *(*a2 + 736);
  swift_beginAccess();
  sub_10038F6A0(a2 + v19, v5 + qword_10059BA98, type metadata accessor for NANDriverCapabilities);
  swift_unownedRetain();
  sub_10040CD68(a3 & 0xFFFFFFFFFFFFLL, v18);
  sub_10038F708(v18, v5 + qword_10059BAA0, type metadata accessor for NANPeer);
  v20 = qword_10059BAB0;
  v21 = type metadata accessor for Logger();
  v59 = *(v21 - 8);
  v60 = a4;
  (*(v59 + 16))(v5 + v20, a4, v21);
  v22 = qword_10059BAB8;
  *(v5 + qword_10059BAB8) = _swiftEmptyArrayStorage;
  v23 = (v5 + qword_10059BAA0 + *(v16 + 28));
  static WAAnalytics.samplePeerStats(macAddress:)(*v23 | (*(v23 + 1) << 16), &v61);
  if (v62)
  {
    sub_100085188(&v61, v63);
    static Date.now.getter();
    sub_100002B30(v63, &v15[*(v58 + 20)]);
    sub_10038F6A0(v15, v13, type metadata accessor for SampleEntry);
    swift_beginAccess();
    v24 = *(v5 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v22) = v24;
    v54 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1003A72AC(0, v24[2] + 1, 1, v24);
      *(v5 + v22) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1003A72AC((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    sub_10038F708(v13, v24 + ((v56[80] + 32) & ~v56[80]) + *(v56 + 9) * v27, type metadata accessor for SampleEntry);
    *(v5 + v22) = v24;
    swift_endAccess();
    v28 = v57;
    sub_10038F6A0(v15, v57, type metadata accessor for SampleEntry);
    swift_retain_n();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v56 = v15;
      v32 = v31;
      *&v61 = swift_slowAlloc();
      *v32 = 16777986;
      *(v32 + 4) = *(v5 + 112);
      *(v32 + 5) = 2080;
      v33 = *(v23 + 1);
      v34 = *v23;

      v35 = WiFiAddress.description.getter(v34 | (v33 << 16));
      v37 = v36;

      v38 = sub_100002320(v35, v37, &v61);

      *(v32 + 7) = v38;
      *(v32 + 15) = 2080;
      sub_10038F6A0(v28, v55, type metadata accessor for SampleEntry);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      sub_10038FCA4(v28, type metadata accessor for SampleEntry);
      v42 = sub_100002320(v39, v41, &v61);

      *(v32 + 17) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "[Datapath Performance] ID: %hhu: %s, Query samplePeerStats on init ok %s", v32, 0x19u);
      swift_arrayDestroy();

      (*(v59 + 8))(v60, v54);
      v43 = v56;
    }

    else
    {

      (*(v59 + 8))(v60, v54);
      sub_10038FCA4(v28, type metadata accessor for SampleEntry);
      v43 = v15;
    }

    sub_10038FCA4(v43, type metadata accessor for SampleEntry);
    sub_100002A00(v63);
  }

  else
  {
    sub_100016290(&v61, &qword_10058BA80, &qword_1004818C0);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v63[0] = v47;
      *v46 = 16777730;
      *(v46 + 4) = *(v5 + 112);
      *(v46 + 5) = 2080;
      v48 = WiFiAddress.description.getter(*v23 | (*(v23 + 1) << 16));
      v49 = v21;
      v51 = v50;

      v52 = sub_100002320(v48, v51, v63);

      *(v46 + 7) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "[Datapath Performance] ID: %hhu: %s, Failed to samplePeerStats on init", v46, 0xFu);
      sub_100002A00(v47);

      (*(v59 + 8))(v60, v49);
    }

    else
    {

      (*(v59 + 8))(v60, v21);
    }
  }

  return v5;
}

uint64_t sub_10038F634(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NANDatapathPerformanceInstance(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_10038EE9C(a1, a2, a3 & 0xFFFFFFFFFFFFLL, a4);
}

uint64_t sub_10038F6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038F708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t *sub_10038F770(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
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
    sub_100002B30(*(a3 + 56) + 32 * v14, v22);

    LOBYTE(v16) = (v23)(v16, v17, v22);
    sub_100002A00(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_10036849C(v20, a2, v21, a3);
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
      return sub_10036849C(v20, a2, v21, a3);
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

unint64_t *sub_10038F8E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *, __n128))
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10038F770(v8, v6, a1, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10038EAA4(v10, v6, a1, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_10038FA60()
{
  v0 = type metadata accessor for ContinuousClock.Instant();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ContinuousClock.Instant.now.getter();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10038FC5C(&unk_1005983D0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  (*(v1 + 8))(v3, v0);

  return v4;
}

uint64_t sub_10038FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005983A8, &unk_1004B2418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038FC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10038FCA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10038FD04(uint64_t a1)
{
  type metadata accessor for NANSubscribe.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        sub_1002FD83C(319);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_10038FEC4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  __chkstk_darwin();
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v22 - v4;
  v5 = *(a1 + 64);
  v23 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v28 = a1;

  v10 = 0;
  v11 = v24;
  while (v8)
  {
    v12 = v10;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v28 + 56);
    v16 = *(v28 + 48) - v14 + 8 * v14;
    v17 = *(v16 + 4);
    v29 = *(v16 + 6);
    v18 = v15 + *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8) + 72) * v14;
    v19 = v26;
    LODWORD(v15) = *v16;
    sub_1003A4E40(v18, v11 + *(v26 + 48), type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v11 = v15;
    *(v11 + 4) = v17;
    *(v11 + 6) = v29;
    v20 = v25;
    sub_100012400(v11, v25, &unk_100595C80, &qword_1004AFD40);
    v21 = *(v19 + 48);
    sub_10046F438(v30, *(v20 + 1) | (*(v20 + 3) << 16));
    sub_1003A4664(v20 + v21, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_100016290(v11, &unk_100595C80, &qword_1004AFD40);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v23 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10039011C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v113 = a4;
  v123 = a2;
  v112 = a5;
  v121 = a3 >> 16;
  type metadata accessor for NANIdentityKey(0);
  __chkstk_darwin();
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v111 = *(v124 - 8);
  __chkstk_darwin();
  v129 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v106 - v10;
  __chkstk_darwin();
  v122 = &v106 - v11;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v125 = a1;

  v19 = 0;
  v120 = v8;
  if (v15)
  {
    while (1)
    {
LABEL_8:
      v21 = __clz(__rbit64(v15)) | (v19 << 6);
      v22 = v125;
      v23 = *(v125 + 48);
      v24 = type metadata accessor for UUID();
      v126 = *(v24 - 8);
      v25 = v23 + *(v126 + 72) * v21;
      v26 = *(v126 + 16);
      v27 = v122;
      v127 = v24;
      v26(v122, v25);
      v28 = *(v22 + 56);
      v29 = v28 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v21;
      v30 = v124;
      sub_1003A4E40(v29, v27 + *(v124 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
      v31 = v130;
      sub_10001CEA8(v27, v130, &unk_100597500, &unk_1004939B0);
      v32 = v31;
      v33 = v129;
      sub_100012400(v32, v129, &unk_100597500, &unk_1004939B0);
      v34 = *(v30 + 48);
      sub_1003A4E40(v33 + v34, v8, type metadata accessor for NANIdentityKey);
      sub_1003A4664(v33 + v34, type metadata accessor for NANPairedDeviceSharedAssociation);
      v5 = v123[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_141;
      }

      v8 = *v123;
      v35 = v123[2];
      v36 = v123[3];
      sub_10000AB0C(*v123, v123[1]);
      sub_10000AB0C(v35, v36);
      v17 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v121, v8, v5);
      v39 = v38;
      v40 = v18 >> 62;
      v41 = v5 >> 62;
      v128 = v36;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v40 <= 1)
      {
        if (!v40)
        {
          v42 = BYTE6(v18);
          if (v41 <= 1)
          {
            goto LABEL_27;
          }

          goto LABEL_32;
        }

        LODWORD(v42) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_128;
        }

        v42 = v42;
        goto LABEL_26;
      }

      if (v40 == 2)
      {
        v44 = *(v17 + 16);
        v43 = *(v17 + 24);
        v45 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (v45)
        {
          goto LABEL_127;
        }

        goto LABEL_26;
      }

      v42 = 0;
      if (v41 <= 1)
      {
LABEL_27:
        if (v41)
        {
          LODWORD(v46) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
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
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
          }

          v46 = v46;
        }

        else
        {
          v46 = BYTE6(v5);
        }

        goto LABEL_34;
      }

LABEL_32:
      if (v41 != 2)
      {
        if (v42)
        {
          goto LABEL_94;
        }

        goto LABEL_62;
      }

      v48 = *(v8 + 2);
      v47 = *(v8 + 3);
      v45 = __OFSUB__(v47, v48);
      v46 = v47 - v48;
      if (v45)
      {
        goto LABEL_126;
      }

LABEL_34:
      if (v42 != v46)
      {
        goto LABEL_94;
      }

      if (v42 < 1)
      {
        goto LABEL_62;
      }

      v117 = v35;
      v118 = v18;
      if (v40 > 1)
      {
        v115 = v37;
        if (v40 != 2)
        {
          v50 = v17;
          memset(v132, 0, 14);
          sub_10000AB0C(v8, v5);
          v62 = v119;
          sub_100031E04(v132, v8, v5, &v131);
          v119 = v62;
          if (v62)
          {
            goto LABEL_144;
          }

          sub_1000124C8(v8, v5);
          v52 = v131;
          v37 = v115;
LABEL_52:
          v36 = v128;
          v17 = v50;
          v35 = v117;
          v18 = v118;
          if (!v52)
          {
            goto LABEL_94;
          }

          goto LABEL_62;
        }

        v116 = v38;
        v54 = *(v17 + 16);
        v53 = *(v17 + 24);
        v114 = v17;
        v110 = v53;
        sub_10000AB0C(v8, v5);
        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v109 = v55;
          v56 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v56))
          {
            goto LABEL_137;
          }

          v109 += v54 - v56;
        }

        else
        {
          v109 = 0;
        }

        if (__OFSUB__(v110, v54))
        {
          goto LABEL_134;
        }

        __DataStorage._length.getter();
        v63 = v119;
        sub_100031E04(v109, v8, v5, v132);
        v119 = v63;
        if (v63)
        {
          goto LABEL_144;
        }

        sub_1000124C8(v8, v5);
        v64 = v132[0];
        v35 = v117;
      }

      else
      {
        v110 = v8;
        v116 = v38;
        if (!v40)
        {
          v49 = v37;
          v132[0] = v17;
          v50 = v17;
          LODWORD(v132[1]) = v118;
          WORD2(v132[1]) = WORD2(v118);
          v8 = v110;
          sub_10000AB0C(v110, v5);
          v51 = v119;
          sub_100031E04(v132, v8, v5, &v131);
          v119 = v51;
          if (v51)
          {
            goto LABEL_144;
          }

          sub_1000124C8(v8, v5);
          v52 = v131;
          v39 = v116;
          v37 = v49;
          goto LABEL_52;
        }

        v114 = v17;
        v115 = v37;
        v109 = (v17 >> 32) - v17;
        if (v17 >> 32 < v17)
        {
          goto LABEL_133;
        }

        v57 = v17;
        sub_10000AB0C(v110, v5);
        v58 = __DataStorage._bytes.getter();
        if (v58)
        {
          v59 = v58;
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v57, v60))
          {
            goto LABEL_138;
          }

          v61 = v57 - v60 + v59;
        }

        else
        {
          v61 = 0;
        }

        v35 = v117;
        __DataStorage._length.getter();
        v65 = v61;
        v8 = v110;
        v66 = v119;
        sub_100031E04(v65, v110, v5, v132);
        v119 = v66;
        if (v66)
        {
          goto LABEL_144;
        }

        sub_1000124C8(v8, v5);
        v64 = v132[0];
      }

      v37 = v115;
      v39 = v116;
      v36 = v128;
      v18 = v118;
      v17 = v114;
      if ((v64 & 1) == 0)
      {
        goto LABEL_94;
      }

LABEL_62:
      v67 = v39 >> 62;
      v68 = v36 >> 62;
      if (v39 >> 62 == 3)
      {
        v69 = 0;
        if (!v37 && v39 == 0xC000000000000000 && v36 >> 62 == 3)
        {
          v69 = 0;
          if (!v35 && v36 == 0xC000000000000000)
          {
            goto LABEL_122;
          }
        }

LABEL_79:
        if (v68 <= 1)
        {
          goto LABEL_80;
        }

        goto LABEL_85;
      }

      if (v67 <= 1)
      {
        if (!v67)
        {
          v69 = BYTE6(v39);
          if (v68 <= 1)
          {
            goto LABEL_80;
          }

          goto LABEL_85;
        }

        LODWORD(v69) = HIDWORD(v37) - v37;
        if (__OFSUB__(HIDWORD(v37), v37))
        {
          goto LABEL_131;
        }

        v69 = v69;
        goto LABEL_79;
      }

      if (v67 == 2)
      {
        v71 = *(v37 + 16);
        v70 = *(v37 + 24);
        v45 = __OFSUB__(v70, v71);
        v69 = v70 - v71;
        if (v45)
        {
          goto LABEL_132;
        }

        goto LABEL_79;
      }

      v69 = 0;
      if (v68 <= 1)
      {
LABEL_80:
        if (v68)
        {
          LODWORD(v72) = HIDWORD(v35) - v35;
          if (__OFSUB__(HIDWORD(v35), v35))
          {
            goto LABEL_130;
          }

          v72 = v72;
        }

        else
        {
          v72 = BYTE6(v36);
        }

        goto LABEL_87;
      }

LABEL_85:
      if (v68 != 2)
      {
        if (!v69)
        {
LABEL_120:
          v100 = v37;
          sub_1000124C8(v17, v18);
          sub_1000124C8(v100, v39);
          v101 = v8;
          v102 = v5;
          v103 = v35;
          v104 = v36;
          goto LABEL_123;
        }

LABEL_94:
        v78 = v37;
        sub_1000124C8(v17, v18);
        sub_1000124C8(v78, v39);
        sub_1002E9FD4(v8, v5, v35, v128);
        v8 = v120;
        sub_1003A4664(v120, type metadata accessor for NANIdentityKey);
        v80 = v126;
        v79 = v127;
        goto LABEL_95;
      }

      v74 = *(v35 + 16);
      v73 = *(v35 + 24);
      v45 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v45)
      {
        goto LABEL_129;
      }

LABEL_87:
      if (v69 != v72)
      {
        goto LABEL_94;
      }

      if (v69 < 1)
      {
        goto LABEL_120;
      }

      v118 = v18;
      v114 = v17;
      if (v67 > 1)
      {
        v110 = v8;
        v8 = v35;
        v115 = v37;
        if (v67 != 2)
        {
          memset(v132, 0, 14);
          sub_10000AB0C(v35, v36);
          v90 = v119;
          sub_100031E04(v132, v35, v36, &v131);
          v119 = v90;
          if (v90)
          {
            goto LABEL_143;
          }

          sub_1000124C8(v35, v36);
          sub_1000124C8(v114, v118);
          sub_1000124C8(v115, v39);
          v77 = v110;
          goto LABEL_107;
        }

        v81 = *(v37 + 24);
        v109 = *(v37 + 16);
        v108 = v81;
        sub_10000AB0C(v35, v36);
        v116 = v39;
        v82 = __DataStorage._bytes.getter();
        v117 = v35;
        if (v82)
        {
          v83 = v82;
          v84 = __DataStorage._offset.getter();
          v85 = v109;
          if (__OFSUB__(v109, v84))
          {
            goto LABEL_139;
          }

          v107 = v109 - v84 + v83;
          v86 = v116;
        }

        else
        {
          v107 = 0;
          v86 = v116;
          v85 = v109;
        }

        if (__OFSUB__(v108, v85))
        {
          goto LABEL_136;
        }

        v8 = v86;
        __DataStorage._length.getter();
        v35 = v117;
        v92 = v119;
        sub_100031E04(v107, v117, v36, v132);
        v119 = v92;
        if (v92)
        {
          goto LABEL_143;
        }

        sub_1000124C8(v35, v36);
        sub_1000124C8(v114, v118);
        sub_1000124C8(v115, v8);
        v93 = v110;
        v94 = v5;
        v95 = v35;
        v96 = v36;
      }

      else
      {
        v116 = v39;
        v117 = v35;
        if (!v67)
        {
          v132[0] = v37;
          LOWORD(v132[1]) = v39;
          BYTE2(v132[1]) = BYTE2(v39);
          BYTE3(v132[1]) = BYTE3(v39);
          BYTE4(v132[1]) = BYTE4(v39);
          BYTE5(v132[1]) = BYTE5(v39);
          v110 = v132 + BYTE6(v39);
          v35 = v117;
          v75 = v37;
          sub_10000AB0C(v117, v36);
          v76 = v119;
          sub_100031E04(v132, v35, v36, &v131);
          v119 = v76;
          if (v76)
          {
            goto LABEL_143;
          }

          sub_1000124C8(v35, v36);
          sub_1000124C8(v114, v118);
          sub_1000124C8(v75, v116);
          v77 = v8;
LABEL_107:
          sub_1002E9FD4(v77, v5, v35, v36);
          v91 = v131;
          goto LABEL_116;
        }

        v115 = v37;
        v110 = ((v37 >> 32) - v37);
        if (v37 >> 32 < v37)
        {
          goto LABEL_135;
        }

        v87 = v37;
        sub_10000AB0C(v117, v36);
        v88 = __DataStorage._bytes.getter();
        if (v88)
        {
          v109 = v88;
          v89 = __DataStorage._offset.getter();
          if (__OFSUB__(v87, v89))
          {
            goto LABEL_140;
          }

          v109 += v87 - v89;
        }

        else
        {
          v109 = 0;
        }

        v36 = v116;
        __DataStorage._length.getter();
        v97 = v117;
        v35 = v128;
        v98 = v119;
        sub_100031E04(v109, v117, v128, v132);
        v119 = v98;
        if (v98)
        {
          sub_1000124C8(v97, v35);
          __break(1u);
LABEL_143:
          sub_1000124C8(v35, v36);
          __break(1u);
LABEL_144:
          result = sub_1000124C8(v8, v5);
          __break(1u);
          return result;
        }

        sub_1000124C8(v97, v35);
        sub_1000124C8(v114, v118);
        sub_1000124C8(v115, v36);
        v93 = v8;
        v94 = v5;
        v95 = v97;
        v96 = v35;
      }

      sub_1002E9FD4(v93, v94, v95, v96);
      v91 = v132[0];
LABEL_116:
      v8 = v120;
      sub_1003A4664(v120, type metadata accessor for NANIdentityKey);
      v80 = v126;
      v79 = v127;
      if (v91)
      {
        goto LABEL_124;
      }

LABEL_95:
      v15 &= v15 - 1;
      (*(v80 + 8))(v129, v79);
      v17 = sub_100016290(v130, &unk_100597500, &unk_1004939B0);
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    v42 = 0;
    if (v5 >> 62 == 3 && !v17 && v18 == 0xC000000000000000)
    {
      v42 = 0;
      if (!v8 && v5 == 0xC000000000000000)
      {
        goto LABEL_62;
      }
    }

LABEL_26:
    if (v41 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_4:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      (*(v111 + 56))(v112, 1, 1, v124);
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_122:
  sub_1000124C8(v17, v18);
  sub_1000124C8(0, 0xC000000000000000);
  v101 = v8;
  v102 = v5;
  v103 = 0;
  v104 = 0xC000000000000000;
LABEL_123:
  sub_1002E9FD4(v101, v102, v103, v104);
  sub_1003A4664(v120, type metadata accessor for NANIdentityKey);
  v80 = v126;
  v79 = v127;
LABEL_124:
  (*(v80 + 8))(v129, v79);

  v105 = v112;
  sub_10001CEA8(v130, v112, &unk_100597500, &unk_1004939B0);
  (*(v111 + 56))(v105, 0, 1, v124);
}

uint64_t sub_100390F88()
{
  v1 = v0 + qword_10059BAE8;
  swift_beginAccess();
  result = type metadata accessor for NANSubscribe.Configuration(0);
  *(v1 + *(result + 60)) = 0;
  return result;
}

uint64_t sub_100390FDC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + qword_1005983F8);
  if (v3)
  {
    v5 = result;
    swift_unknownObjectRetain();
    v6 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v3 subscribeDetectedMulticastError:v5 fromMulticastSender:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10039106C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_1005983F8);
  if (v4)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = WiFiAddress.apiAddress.getter(a3 & 0xFFFFFFFFFFFFLL);
    [v4 subscribeReceivedDataBlobForMulticastSession:isa fromPeer:v7];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100391120(uint64_t a1, unint64_t a2, int a3)
{
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    *(v10 + 14) = sub_100002320(a1, a2, &v17);
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ updated bundleID to: %s and pid to %d", v10, 0x1Cu);
    sub_100016290(v11, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v12);
  }

  v14 = &v7[qword_100598430];
  *v14 = a1;
  *(v14 + 1) = a2;

  v15 = &v7[qword_100598438];
  *v15 = a3;
  v15[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  v7[qword_100598440] = result & 1;
  return result;
}

uint64_t sub_1003912F4@<X0>(void *a2@<X8>)
{
  v4 = *(v2 + qword_1005983F8);
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = ObjectType;

  return swift_unknownObjectRetain();
}

uint64_t sub_100391354()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v5 = *v4;
  *v3 = *v4;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if (v5)
  {
    return sub_100394D24();
  }

  __break(1u);
  return result;
}

uint64_t sub_100391474@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BAE8;
  swift_beginAccess();
  return sub_1003A4E40(v1 + v3, a1, type metadata accessor for NANSubscribe.Configuration);
}

uint64_t sub_1003914E0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    goto LABEL_5;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v4;
LABEL_6:
  *(v1 + qword_1005983F8) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100391580@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BB00;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003915F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v34 - v8;
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  v10 = Preferences.subscribeFilterEnabled.getter(v6);
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) != 0 && *(v1 + qword_10059BAF0) == 1)
  {
    v12 = v1 + qword_100598400;
    swift_beginAccess();
    if (*(*v12 + 16))
    {
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);

      LOBYTE(v21) = sub_1002EA604(v16, v13, v14 | (v15 << 8));
      v18 = v17;
      v20 = v19;

      v21 = v21;
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v21 = 512;
    }

    v22 = v1 + qword_10059BAE8;
    swift_beginAccess();
    v23 = v22 + *(type metadata accessor for NANSubscribe.Configuration(0) + 56);
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = v26 & 0xFF00;
    if (v21 > 0x1FF)
    {
      if (v27 == 512)
      {
        sub_10011A008(v25, v24, v26);
        return sub_10011A01C(v18, v20, v21);
      }
    }

    else if (v27 != 512)
    {
      sub_10011A008(v25, v24, v26);
      sub_10011A008(v25, v24, v26);
      sub_10011A008(v18, v20, v21);
      v28 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v20, v25, v24);
      sub_10011A01C(v25, v24, v26);
      if (v28)
      {
        sub_10011A01C(v25, v24, v26);
        if (v21 == v26)
        {
          sub_10011A01C(v18, v20, v21);
          if ((v26 & 0x100) != 0)
          {
            goto LABEL_19;
          }

          return sub_10011A01C(v18, v20, v21);
        }
      }

      else
      {
        sub_10011A01C(v25, v24, v26);
      }

      v29 = v18;
      v30 = v20;
      v31 = v21;
LABEL_18:
      sub_10011A01C(v29, v30, v31);
LABEL_19:
      *&v32 = __chkstk_darwin().n128_u64[0];
      *(&v34 - 4) = v1;
      *(&v34 - 3) = v18;
      *(&v34 - 2) = v20;
      *(&v34 - 4) = v21;
      WitnessTable = swift_getWitnessTable(byte_1004B2590, ObjectType, v32);
      sub_10036E438(sub_1003A4DA8, &v34 - 48, ObjectType, WitnessTable);
      return sub_10011A01C(v18, v20, v21);
    }

    sub_10011A008(v25, v24, v26);
    sub_10011A008(v18, v20, v21);
    sub_10011A01C(v18, v20, v21);
    v29 = v25;
    v30 = v24;
    v31 = v26;
    goto LABEL_18;
  }

  return result;
}

double sub_100391A68()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = (&v21 - v7);
  __chkstk_darwin();
  v10 = (&v21 - v9);
  v11 = qword_10059BB10;
  swift_beginAccess();
  if (*(*(v1 + v11) + 16) || (v13 = qword_100598400, swift_beginAccess(), *(*(v1 + v13) + 16)) || (v14 = qword_10059BB08, swift_beginAccess(), *(*(v1 + v14) + 16)))
  {
    v15 = qword_100598410;
    if (*(v1 + qword_100598410))
    {
      return result;
    }

    *v10 = 5;
    v22 = v2;
    v16 = enum case for DispatchTimeInterval.seconds(_:);
    v17 = *(v4 + 104);
    v17(v10, enum case for DispatchTimeInterval.seconds(_:), v3);
    v23 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    *v8 = 5;
    v17(v8, v16, v3);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v20 = v22;
    v19[2] = *(v22 + 80);
    v19[3] = *(v20 + 88);
    v19[4] = v18;
    *v6 = 100;
    v17(v6, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    type metadata accessor for P2PTimer(0);
    swift_allocObject();
    *(v1 + v15) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v10, v23, v8, v6, sub_1003A4D74, v19);
  }

  else
  {
    *(v1 + qword_100598410) = 0;
  }

  return result;
}

double sub_100391D70(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v7 = a3 >> 8;
  v8 = v3 + qword_100598400;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = v4 & 1;
  *(v8 + 17) = v7;

  sub_1003915F8();
  return sub_100391A68();
}

void sub_100391DF4()
{
  v1 = v0;
  v2 = v0 + qword_10059BAE8;
  swift_beginAccess();
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059BB18;
  swift_beginAccess();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 2;

  v9 = *(v1 + qword_1005983E0);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v10 = sub_1003F06BC();

  *(v1 + qword_100598448) = v10;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v11 = sub_1003F06D8();

  *(v1 + qword_100598450) = v11;
  swift_unownedRetainStrong();
  v12 = *(v9 + *(*v9 + 800));
  swift_unownedRetainStrong();

  (*(*v12 + 200))(v13);

  WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v12) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v12 & 1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  sub_1003EB084();
  v15 = v14;
  v17 = v16;

  if (v15)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v8 + 100) = v17;
}

void sub_10039205C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v85) = a2;
  v87 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v94 = AssociatedTypeWitness;
  __chkstk_darwin();
  v92 = &v82 - v5;
  v6 = swift_checkMetadataState();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin();
  v88 = &v82 - v7;
  v86 = type metadata accessor for DispatchTime();
  v8 = *(v86 - 8);
  __chkstk_darwin();
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = (v2 + qword_100598430);
  v14 = *(v2 + qword_100598430 + 8);
  v84 = v13;
  if (v14)
  {
    v15 = *v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = v3 + qword_10059BB18;
  swift_beginAccess();
  *v17 = v15;
  *(v17 + 8) = v16;

  *(v17 + 68) = *(v3 + qword_100598440);
  swift_endAccess();
  v18 = *(v3 + qword_1005983E0);
  v19 = swift_unownedRetainStrong();
  sub_10040CAE8(v19, v20, v21, v22);

  v23 = sub_100337438();

  *(v17 + 48) = v23;
  v24 = swift_unownedRetainStrong();
  sub_10040CAE8(v24, v25, v26, v27);

  v28 = sub_10033746C();

  *(v17 + 40) = v28;
  v29 = swift_unownedRetainStrong();
  sub_10040CAE8(v29, v30, v31, v32);

  v34 = sub_100337590(v33);

  *(v17 + 56) = v34;
  if ((v87 + 1) >= 6)
  {
    v35 = 5;
  }

  else
  {
    v35 = 0x50403020501uLL >> (8 * (v87 + 1));
  }

  *(v17 + 33) = v35;
  *(v17 + 34) = v85;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v36 = DispatchTime.uptimeNanoseconds.getter();
  v37 = v8;
  v38 = *(v8 + 8);
  v39 = v12;
  v40 = v86;
  v38(v39, v86);
  (*(v37 + 16))(v10, v3 + qword_100598458, v40);
  v41 = DispatchTime.uptimeNanoseconds.getter();
  v38(v10, v40);
  if (v36 < v41)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v17 + 88) = (v36 - v41) / 0xF4240;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v42 = sub_1003F06BC();

  v43 = *(v3 + qword_100598448);
  v44 = v42 >= v43;
  v45 = v42 - v43;
  if (!v44)
  {
    goto LABEL_22;
  }

  *(v17 + 132) = v45;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v46 = sub_1003F06D8();

  v47 = *(v3 + qword_100598450);
  v44 = v46 >= v47;
  v48 = v46 - v47;
  if (!v44)
  {
    goto LABEL_23;
  }

  *(v17 + 136) = v48;
  v49 = v84[1];
  if (!v49)
  {
LABEL_20:
    swift_unownedRetainStrong();
    v75 = v88;
    v76 = v89;
    v77 = v90;
    (*(v89 + 16))(v88, v18 + *(*v18 + 112), v90);

    v78 = v92;
    (*(AssociatedConformanceWitness + 152))(v77, AssociatedConformanceWitness);
    (*(v76 + 8))(v75, v77);
    memcpy(v96, v17, sizeof(v96));
    v79 = v94;
    v80 = swift_getAssociatedConformanceWitness();
    v81 = *(v80 + 32);
    sub_1002CB02C(v96, &v95);
    v81(v96, v79, v80);
    sub_1002CB088(v96);
    (*(v93 + 8))(v78, v79);
    return;
  }

  v50 = *v84;
  swift_unownedRetainStrong();

  sub_10040CAE8(v51, v52, v53, v54);

  v55 = sub_100337438();

  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >> 16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = swift_unownedRetainStrong();
  sub_10040CAE8(v56, v57, v58, v59);

  v60 = sub_10033746C();

  if ((v60 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v60 >> 16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v61 = swift_unownedRetainStrong();
  sub_10040CAE8(v61, v62, v63, v64);

  v65 = sub_100337594();

  if ((v65 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!(v65 >> 16))
  {
    v87 = *(v17 + 88);
    LODWORD(v86) = *(v17 + 64);
    swift_unownedRetainStrong();
    v66 = *(*v18 + 112);
    v84 = v55;
    v85 = v49;
    v67 = v88;
    v68 = v89;
    v69 = *(v89 + 16);
    v83 = v50;
    v70 = v90;
    v69(v88, v18 + v66, v90);

    v71 = v60;
    v72 = v92;
    (*(AssociatedConformanceWitness + 152))(v70, AssociatedConformanceWitness);
    (*(v68 + 8))(v67, v70);
    v97[0] = v83;
    v97[1] = v85;
    v98 = v84;
    v99 = v71;
    v100 = v65;
    v101 = 0u;
    memset(v102, 0, sizeof(v102));
    v103 = v86;
    *v104 = v96[0];
    *&v104[3] = *(v96 + 3);
    v105 = v87;
    v73 = v94;
    v74 = swift_getAssociatedConformanceWitness();
    (*(v74 + 40))(v97, v73, v74);
    sub_1002CB0DC(v97);
    (*(v93 + 8))(v72, v73);
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
}

_BYTE *sub_1003928D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a6;
  v13 = objc_allocWithZone(v6);
  return sub_100392964(a1, a2, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32), v7);
}

_BYTE *sub_100392964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v102 = a6;
  v100 = a3;
  v101 = a5;
  v107 = a4;
  v104 = a2;
  v116 = a1;
  ObjectType = swift_getObjectType();
  v8 = *v6;
  v9 = swift_isaMask;
  v10 = type metadata accessor for Logger();
  v109 = *(v10 - 8);
  v110 = v10;
  __chkstk_darwin();
  v111 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LongTermPairingKeys(0);
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin();
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *((v9 & v8) + 0x58);
  v14 = *((v9 & v8) + 0x50);
  v96 = *(v76 + 8);
  v103 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  v98 = AssociatedTypeWitness;
  __chkstk_darwin();
  v95 = &v75 - v16;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v99 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v75 - v18;
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchTime();
  v23 = *(v112 - 8);
  __chkstk_darwin();
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[qword_10059BAF0] = 0;
  v26 = qword_1005983E8;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v27 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
  (*(v20 + 16))(v22, v27, v19);
  v91 = v26;
  - infix(_:_:)();
  v28 = v22;
  v29 = v116;
  (*(v20 + 8))(v28, v19);
  v30 = v104;
  v92 = *(v23 + 8);
  v93 = (v23 + 8);
  v92(v25, v112);
  v84 = qword_1005983F0;
  *&v7[qword_1005983F0] = 0;
  v85 = qword_10059BAF8;
  *&v7[qword_10059BAF8] = 0;
  v86 = qword_1005983F8;
  *&v7[qword_1005983F8] = 0;
  v90 = qword_10059BB00;
  Logger.init(subsystem:category:)();
  v31 = &v7[qword_100598400];
  *v31 = &_swiftEmptySetSingleton;
  *(v31 + 1) = 0;
  *(v31 + 8) = 1025;
  v32 = qword_10059BB08;
  *&v7[qword_10059BB08] = &_swiftEmptyDictionarySingleton;
  v87 = v32;
  v88 = qword_100598410;
  *&v7[qword_100598410] = 0;
  v89 = qword_100598418;
  *&v7[qword_100598418] = 0;
  v7[qword_100598420] = 0;
  v33 = &v7[qword_100598428];
  *v33 = static Duration.zero.getter();
  v33[1] = v34;
  v82 = qword_10059BB10;
  *&v7[qword_10059BB10] = &_swiftEmptySetSingleton;
  v35 = &v7[qword_100598430];
  *v35 = 0;
  v35[1] = 0;
  v83 = v35;
  v36 = &v7[qword_100598438];
  *v36 = 0;
  v36[4] = 1;
  v7[qword_100598440] = 0;
  v37 = qword_10059BB18;
  NANWiFiAwareStatistics.init()(&v115);
  v81 = v37;
  memcpy(&v7[v37], &v115, 0x120uLL);
  *&v7[qword_100598448] = 0;
  *&v7[qword_100598450] = 0;
  v80 = qword_100598458;
  variable initialization expression of AWDLPeer.lastUpdated();
  v78 = qword_1005983E0;
  *&v7[qword_1005983E0] = v29;
  v79 = qword_10059BAE8;
  sub_1003A4E40(v30, &v7[qword_10059BAE8], type metadata accessor for NANSubscribe.Configuration);
  v38 = type metadata accessor for NANSubscribe.Configuration(0);
  if (*(v30 + *(v38 + 68)))
  {
    v40 = v105;
    v39 = v106;
    (*(v105 + 56))(&v7[qword_100598408], 1, 1, v106);
    swift_unownedRetain();
    v41 = v109;
  }

  else
  {
    v75 = v31;
    swift_unownedRetainStrong();
    v43 = v97;
    v42 = v98;
    v44 = v95;
    (*(v97 + 16))(v95, v29 + *(*v29 + 112), v98);
    swift_unownedRetain();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 128))(v42, AssociatedConformanceWitness);
    (*(v43 + 8))(v44, v42);
    v46 = v94;
    LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(*(v30 + 8), *(v30 + 16), 1, v94);

    v47 = qword_100598408;
    sub_10001CEA8(v46, &v7[qword_100598408], &qword_10058C8D8, &qword_100482300);
    v48 = v99;
    sub_100012400(&v7[v47], v99, &qword_10058C8D8, &qword_100482300);
    v40 = v105;
    v39 = v106;
    if ((*(v105 + 48))(v48, 1, v106) == 1)
    {

      sub_100016290(v48, &qword_10058C8D8, &qword_100482300);
      v49 = 6;
      v41 = v109;
LABEL_9:
      sub_10000B02C();
      swift_allocError();
      *v50 = v49;
      *(v50 + 8) = 0;
      *(v50 + 16) = 1;
      swift_willThrow();
      sub_1003A4664(v30, type metadata accessor for NANSubscribe.Configuration);

      swift_unownedRelease();
      sub_1003A4664(&v7[v79], type metadata accessor for NANSubscribe.Configuration);
      v51 = v92;
      v52 = v112;
      v53 = v93;
      v92(&v7[v91], v112);

      swift_unknownObjectRelease();
      (*(v41 + 8))(&v7[v90], v110);

      sub_100016290(&v7[qword_100598408], &qword_10058C8D8, &qword_100482300);

      memcpy(v113, &v7[v81], sizeof(v113));
      sub_1002CB088(v113);
      v51(&v7[v80], v52);
      swift_deallocPartialClassInstance();
      return v53;
    }

    sub_100016290(v48, &qword_10058C8D8, &qword_100482300);
    v41 = v109;
  }

  if (*(v30 + *(v38 + 84)) && (static Duration.< infix(_:_:)() & 1) != 0)
  {

    v49 = 2;
    goto LABEL_9;
  }

  v114.receiver = v7;
  v114.super_class = ObjectType;
  v54 = v40;
  v55 = objc_msgSendSuper2(&v114, "init");
  v56 = &v55[qword_100598430];
  v57 = v107;
  *v56 = v100;
  v56[1] = v57;

  v58 = &v55[qword_100598438];
  v59 = BYTE4(v101);
  *v58 = v101;
  v58[4] = v59 & 1;
  v55[qword_100598440] = v102 & 1;
  v60 = v39;
  v61 = qword_100598408;
  if (!(*(v54 + 48))(&v55[qword_100598408], 1, v60))
  {
    v62 = &v55[v61];
    v63 = v77;
    sub_1003A4E40(v62, v77, type metadata accessor for LongTermPairingKeys);
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65 = swift_allocObject();
    v66 = v76;
    v65[2] = v103;
    v65[3] = v66;
    v65[4] = v64;

    LongTermPairingKeys.updatedPairedDevicesHandler.setter(sub_1003A4EA8, v65);
    sub_1003A4664(v63, type metadata accessor for LongTermPairingKeys);
  }

  v67 = v110;
  (*(v41 + 16))(v111, &v55[qword_10059BB00], v110);
  v53 = v55;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v30;
    v72 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v53;
    *v72 = v53;
    v73 = v53;
    _os_log_impl(&_mh_execute_header, v68, v69, "Created %@", v70, 0xCu);
    sub_100016290(v72, &qword_10058B780, &qword_100480AC0);
    v30 = v71;
  }

  (*(v41 + 8))(v111, v67);
  sub_1003A4664(v30, type metadata accessor for NANSubscribe.Configuration);

  return v53;
}

uint64_t sub_1003935DC()
{
  v1 = (v0 + qword_100598400);
  swift_beginAccess();
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v13 = *v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v5 = qword_10059BB08;
  swift_beginAccess();

  sub_1003A3638(v6, &v13);
  v8 = v7;

  *(v0 + v5) = v8;

  v9 = v14;
  LODWORD(v5) = v15;
  v10 = v16;

  sub_100391D70(v11, v9, v5 | (v10 << 8));
}

id sub_1003936C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v7 = &v28 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v28 - v10;
  if (v1[qword_10059BAF0] == 1)
  {
    v28 = v3;
    v29 = ObjectType;
    v12 = *&v1[qword_1005983E0];
    swift_unownedRetainStrong();
    v13 = *(*v12 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v11, v12 + v13, AssociatedTypeWitness);

    v14 = qword_10059BAE8;
    swift_beginAccess();
    v15 = v1[v14];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 248))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v3 = v28;
    ObjectType = v29;
  }

  v17 = qword_1005983F8;
  v18 = *&v1[qword_1005983F8];
  if (v18)
  {
    [v18 subscribeTerminatedWithReason:-1];
  }

  v19 = v30;
  *&v1[v17] = 0;
  swift_unknownObjectRelease();
  sub_100012400(&v1[qword_100598408], v7, &qword_10058C8D8, &qword_100482300);
  v20 = type metadata accessor for LongTermPairingKeys(0);
  if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
  {
    sub_100016290(v7, &qword_10058C8D8, &qword_100482300);
  }

  else
  {
    LongTermPairingKeys.updatedPairedDevicesHandler.setter(0, 0);
    sub_1003A4664(v7, type metadata accessor for LongTermPairingKeys);
  }

  (*(v19 + 16))(v5, &v1[qword_10059BB00], v3);
  v21 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v1;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Destroyed %@", v24, 0xCu);
    sub_100016290(v25, &qword_10058B780, &qword_100480AC0);
  }

  (*(v19 + 8))(v5, v3);
  v31.receiver = v21;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "dealloc");
}

uint64_t sub_100393BCC(uint64_t a1)
{
  swift_unownedRelease();
  sub_1003A4664(a1 + qword_10059BAE8, type metadata accessor for NANSubscribe.Configuration);
  v2 = qword_1005983E8;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);

  swift_unknownObjectRelease();
  v5 = qword_10059BB00;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  sub_100016290(a1 + qword_100598408, &qword_10058C8D8, &qword_100482300);

  memcpy(v8, (a1 + qword_10059BB18), sizeof(v8));
  sub_1002CB088(v8);
  return (v4)(a1 + qword_100598458, v3);
}

void sub_100393DAC()
{
  v2 = v0;
  v3 = swift_isaMask & *v0;
  v59 = *(v3 + 0x58);
  v4 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin();
  v53 = &v52 - v9;
  v56 = type metadata accessor for NANSubscribe.Configuration(0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4;
  v12 = swift_getAssociatedTypeWitness();
  v57 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v52 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v20 = *v19;
  *v18 = *v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (v2[qword_10059BAF0])
  {
    return;
  }

  v52 = qword_10059BAF0;
  v22 = *&v2[qword_1005983E0];
  swift_unownedRetainStrong();
  sub_10040CBA8();
  if (v1)
  {

    v63 = v1;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v62 == 1)
      {
        if (v60 == 7)
        {

          swift_unownedRetainStrong();
          v27 = sub_100019F94();

          if (v27)
          {

LABEL_14:
            v29 = v2;
            v30 = Logger.logObject.getter();
            v31 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              *v32 = 138412290;
              *(v32 + 4) = v29;
              *v33 = v2;
              v34 = v29;
              _os_log_impl(&_mh_execute_header, v30, v31, "%@ faking start until NAN becomes available", v32, 0xCu);
              sub_100016290(v33, &qword_10058B780, &qword_100480AC0);
            }

            goto LABEL_17;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_14;
          }

          sub_10000B02C();
          swift_allocError();
          *v51 = xmmword_10047CE50;
          *(v51 + 16) = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1000B2594(v60, v61, v62);
      }
    }

    return;
  }

  swift_unownedRetainStrong();
  v23 = *(*v22 + 96);
  swift_beginAccess();
  v24 = v57;
  (*(v57 + 16))(v14, v22 + v23, v12);

  v25 = qword_10059BAE8;
  swift_beginAccess();
  sub_1003A4E40(&v2[v25], v11, type metadata accessor for NANSubscribe.Configuration);
  v26 = swift_getAssociatedConformanceWitness();
  (*(v26 + 200))(v11, v12, v26);
  sub_1003A4664(v11, type metadata accessor for NANSubscribe.Configuration);
  (*(v24 + 8))(v14, v12);
LABEL_17:
  v2[v52] = 1;
  v35 = v2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v2;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "%@ was started", v38, 0xCu);
    sub_100016290(v39, &qword_10058B780, &qword_100480AC0);
  }

  v41 = &v35[qword_10059BAE8];
  swift_beginAccess();
  v43 = v56;
  if ((v41[v56[18] + 6] & 1) == 0 && (v41[v56[20]] & 1) == 0)
  {
    if (v41[v56[25] + 7])
    {
      v44 = 1;
    }

    else
    {
      swift_unownedRetainStrong();
      v45 = v53;
      WiFiInterface.preferences.getter();

      v46 = v55;
      v47 = Preferences.disableMulticastRateAdapter.getter(v55);
      (*(v54 + 8))(v45, v46);
      v44 = v47 ^ 1;
    }

    type metadata accessor for MulticastReceiverManager(0, v58, v59, v42);
    v48 = swift_unownedRetainStrong();
    v49 = sub_1004275B4(v48, *v41, v44 & 1, *&v41[v43[23]] | (*&v41[v43[23] + 4] << 32), *&v41[v43[24]] | (v41[v43[24] + 2] << 16));

    *&v35[qword_10059BAF8] = v49;
  }

  v50 = *&v35[qword_1005983F8];
  if (v50)
  {
    [v50 subscribeStartedWithInstanceID:*v41];
  }

  sub_100391DF4();
  sub_1003946C4(*&v41[v43[21]]);
}

void sub_1003946C4(unint64_t a1)
{
  v2 = v1;
  v29 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  __chkstk_darwin();
  v11 = &v24 - v10;
  if (a1)
  {
    swift_beginAccess();
    static Duration.+ infix(_:_:)();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v2[qword_100598420] = 0;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v25 = a1;
        *v11 = a1;
        v12 = *(v5 + 104);
        v12(v11, enum case for DispatchTimeInterval.seconds(_:), v4);
        v26 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v13 = swift_allocObject();
        v28 = 1000000000000000000 * a1;
        v14 = v13;
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        v27 = (a1 * 0xDE0B6B3A7640000uLL) >> 64;
        v16 = v15;
        v17 = v29;
        v15[2] = *(v29 + 80);
        v15[3] = *(v17 + 88);
        v15[4] = v14;
        v12(v9, enum case for DispatchTimeInterval.never(_:), v4);
        *v7 = 100;
        v12(v7, enum case for DispatchTimeInterval.milliseconds(_:), v4);
        type metadata accessor for P2PTimer(0);
        swift_allocObject();
        *&v2[qword_100598418] = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v26, v9, v7, sub_1003A4E34, v16);

        swift_beginAccess();
        static Duration.+= infix(_:_:)();
        swift_endAccess();
        v18 = v2;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *v22 = v2;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v25;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "%@ timeout set to %lu seconds", v21, 0x16u);
          sub_100016290(v22, &qword_10058B780, &qword_100480AC0);
        }
      }
    }
  }
}

void sub_100394AC4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v2 + 16))(v4, Strong + qword_10059BB00, v1);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@ timed out. Stopping.", v9, 0xCu);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
    }

    (*(v2 + 8))(v4, v1);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[qword_100598420] = 1;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100394D24();
  }
}

uint64_t sub_100394D24()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v51 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v49 = &v43 - v3;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v48 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v47 = &v43 - v7;
  __chkstk_darwin();
  v46 = &v43 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v14)
  {
    v17 = qword_10059BAF0;
    if (*(v1 + qword_10059BAF0) == 1)
    {
      v18 = qword_10059BB00;
      v19 = v1;
      v43 = v18;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      v22 = os_log_type_enabled(v20, v21);
      v44 = v2;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v19;
        *v24 = v1;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "%@ will attempt to stop", v23, 0xCu);
        sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
        v2 = v44;
      }

      *(v1 + v17) = 0;
      v26 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
      v27 = v46;
      (*(v5 + 16))(v46, v26, v4);
      v28 = *v13;
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v51;
      v30[3] = v2;
      v30[4] = v29;
      v31 = *(v5 + 104);
      v32 = v47;
      v31(v47, enum case for DispatchTimeInterval.never(_:), v4);
      v33 = v48;
      *v48 = 100;
      v31(v33, enum case for DispatchTimeInterval.milliseconds(_:), v4);
      type metadata accessor for P2PTimer(0);
      swift_allocObject();
      *&v19[qword_1005983F0] = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v27, v28, v32, v33, sub_1003A099C, v30);

      v34 = qword_10059BAF8;
      if (*&v19[qword_10059BAF8])
      {

        sub_100426450();
      }

      v36 = v49;
      v35 = v50;
      *&v19[v34] = 0;

      v37 = *&v19[qword_1005983E0];
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v38 = *(*v37 + 96);
      swift_beginAccess();
      v39 = AssociatedTypeWitness;
      (*(v35 + 16))(v36, v37 + v38, AssociatedTypeWitness);

      v40 = qword_10059BAE8;
      swift_beginAccess();
      v41 = v19[v40];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 248))(v41, v39, AssociatedConformanceWitness);
      return (*(v35 + 8))(v36, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003954EC(char *a1)
{
  v328 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v327 = type metadata accessor for NANSubscribe.Configuration(0);
  __chkstk_darwin();
  v308 = &v283 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v304 = &v283 - v5;
  v310 = *((v3 & v2) + 0x58);
  v329 = v1;
  v6 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v319 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v318 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v303 = &v283 - v8;
  v9 = type metadata accessor for DispatchTime();
  v321 = *(v9 - 8);
  v322 = v9;
  __chkstk_darwin();
  v315 = &v283 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v320 = &v283 - v11;
  v12 = type metadata accessor for DispatchTimeInterval();
  v316 = *(v12 - 8);
  v317 = v12;
  __chkstk_darwin();
  v314 = &v283 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v313 = &v283 - v14;
  v288 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v287 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v298 = *(v16 - 8);
  v299 = v16;
  __chkstk_darwin();
  v286 = &v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v297 = &v283 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v292 = *(v19 - 8);
  __chkstk_darwin();
  v290 = &v283 - v20;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v295 = &v283 - v21;
  v294 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v291 = *(v294 - 8);
  __chkstk_darwin();
  v285 = &v283 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v296 = &v283 - v23;
  v309 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  v289 = AssociatedConformanceWitness;
  v293 = v19;
  v26 = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for Preferences(0, v25, v26, v27);
  v306 = *(v28 - 8);
  v307 = v28;
  __chkstk_darwin();
  v305 = &v283 - v29;
  v312 = type metadata accessor for NANAttribute(0);
  *&v324 = *(v312 - 8);
  __chkstk_darwin();
  v301 = (&v283 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v300 = &v283 - v31;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v284 = &v283 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v302 = &v283 - v33;
  __chkstk_darwin();
  v326 = &v283 - v34;
  __chkstk_darwin();
  *&v323 = &v283 - v35;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v37 = &v283 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v325 = &v283 - v38;
  __chkstk_darwin();
  v40 = &v283 - v39;
  __chkstk_darwin();
  v42 = &v283 - v41;
  __chkstk_darwin();
  v44 = &v283 - v43;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  __chkstk_darwin();
  v48 = (&v283 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v50 = *v49;
  *v48 = *v49;
  (*(v46 + 104))(v48, enum case for DispatchPredicate.onQueue(_:), v45);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v46 + 8))(v48, v45);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  v52 = v328;
  sub_1003A4E40(v328, v44, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v44;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1003A4E40(v44, v40, type metadata accessor for DriverEvent);
    v55 = v329;
    if (*v40 == 1)
    {
      if (*(v329 + qword_10059BAF0) == 1)
      {
        v63 = *(v329 + qword_1005983E0);
        swift_unownedRetainStrong();
        sub_10040CBA8();

        v121 = *&v55[qword_10059BAF8];
        if (!v121 || *(v121 + qword_10059BBF8) == 1)
        {
          swift_unownedRetainStrong();
          v122 = *(*v63 + 96);
          swift_beginAccess();
          v123 = v63 + v122;
          v124 = v329;
          v125 = AssociatedTypeWitness;
          (*(v319 + 16))(v318, v123, AssociatedTypeWitness);

          v126 = qword_10059BAE8;
          swift_beginAccess();
          v127 = v308;
          sub_1003A4E40(v124 + v126, v308, type metadata accessor for NANSubscribe.Configuration);
          v128 = swift_getAssociatedConformanceWitness();
          (*(v128 + 200))(v127, v125, v128);
          sub_1003A4664(v127, type metadata accessor for NANSubscribe.Configuration);
          (*(v319 + 8))(v318, v125);
          return sub_1003A4664(v54, type metadata accessor for DriverEvent);
        }

        v136 = qword_10059BAE8;
        swift_beginAccess();
        LOBYTE(v339[0]) = v55[v136];
        v339[1] = 3;
        LOBYTE(v339[2]) = 3;
        sub_1000B24F8(v339);
        v137 = v325;
        memcpy(v325, v339, 0x16AuLL);
        swift_storeEnumTagMultiPayload();
        sub_1003954EC(v137);
        v104 = v137;
        goto LABEL_27;
      }

      return sub_1003A4664(v54, type metadata accessor for DriverEvent);
    }

LABEL_24:
    sub_1003A4E40(v52, v37, type metadata accessor for DriverEvent);
    v92 = v55;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = v55;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v339[0] = v98;
      *v96 = 138412546;
      *(v96 + 4) = v92;
      *v97 = v95;
      *(v96 + 12) = 2080;
      v99 = v92;
      v100 = DriverEvent.description.getter();
      v102 = v101;
      sub_1003A4664(v37, type metadata accessor for DriverEvent);
      v103 = sub_100002320(v100, v102, v339);

      *(v96 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v93, v94, "%@ received an unexpected %s", v96, 0x16u);
      sub_100016290(v97, &qword_10058B780, &qword_100480AC0);
      v54 = v44;

      sub_100002A00(v98);

      return sub_1003A4664(v54, type metadata accessor for DriverEvent);
    }

    v104 = v37;
LABEL_27:
    sub_1003A4664(v104, type metadata accessor for DriverEvent);
    return sub_1003A4664(v54, type metadata accessor for DriverEvent);
  }

  v55 = v329;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_24;
  }

  sub_1003A4E40(v44, v42, type metadata accessor for DriverEvent);
  memcpy(v338, v42, 0x16AuLL);
  memcpy(v339, v42, 0x16AuLL);
  v56 = sub_100185198(v339);
  if (v56 != 13)
  {
    if (v56 != 11)
    {
      if (v56 == 2)
      {
        v328 = v44;
        NANBitmap.Channel.operatingClass.getter();
        v58 = *v57;
        v317 = v57[1];
        v319 = v57[2];
        v59 = v57[3];
        v320 = v57[4];
        v321 = v57[5];
        v322 = v57[6];
        v325 = v57[7];
        v60 = *(v57 + 2);
        v318 = *(v57 + 1);
        v61 = &v55[qword_10059BAE8];
        swift_beginAccess();
        if (v61[*(v327 + 22)] > 1u)
        {
          v62 = v326;
          if (v61[*(v327 + 22)] != 2)
          {

            goto LABEL_39;
          }
        }

        else
        {
          v62 = v326;
        }

        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v113 = v324;
        v114 = v323;
        if (v112)
        {
          goto LABEL_39;
        }

        memcpy(v337, v338, sizeof(v337));
        NANBitmap.Channel.operatingClass.getter();

        Array<A>.retrieve(attribute:)(42, v60, v114);
        sub_1001854F8(v338);
        v115 = *(v113 + 48);
        v116 = v312;
        v117 = v115(v114, 1, v312);
        v316 = v60;
        if (v117 == 1)
        {
          v118 = v58;
          v119 = v59;
          v120 = v319;
          sub_100016290(v114, &unk_100595C00, &qword_10048F790);
LABEL_46:
          v336[0] = 0;
          v336[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v138._object = 0x80000001004C07C0;
          v138._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v138);
          v140 = v320;
          v139 = v321;
          v141 = v322;
          v142 = v325;
          v143._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v119 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v120);
          String.append(_:)(v143);

          v144._countAndFlagsBits = 0xD000000000000017;
          v144._object = 0x80000001004C07E0;
          String.append(_:)(v144);
          sub_100398410(v336[0], v336[1], v329, v118 | (v317 << 8) | (v120 << 16) | (v119 << 24) | (v140 << 32) | (v139 << 40) | (v141 << 48) | (v142 << 56));

LABEL_47:
          sub_1001854F8(v338);
          v54 = v328;
          return sub_1003A4664(v54, type metadata accessor for DriverEvent);
        }

        if (swift_getEnumCaseMultiPayload() != 37)
        {
          v118 = v58;
          v119 = v59;
          v120 = v319;
          sub_1003A4664(v114, type metadata accessor for NANAttribute);
          goto LABEL_46;
        }

        v132 = *v114;
        v334 = xmmword_100483C50;
        v335 = 0uLL;
        memcpy(v336, v338, 0x16AuLL);
        NANBitmap.Channel.operatingClass.getter();

        Array<A>.retrieve(attribute:)(43, v60, v62);
        sub_1001854F8(v338);
        v133 = v115(v62, 1, v116);
        v326 = v132;
        if (v133 == 1)
        {
          v134 = v62;
          v135 = v59;
          sub_100016290(v134, &unk_100595C00, &qword_10048F790);
        }

        else
        {
          v145 = v62;
          v146 = v300;
          sub_1003A46C4(v145, v300, type metadata accessor for NANAttribute);
          v147 = v301;
          sub_1003A46C4(v146, v301, type metadata accessor for NANAttribute);
          v135 = v59;
          if (swift_getEnumCaseMultiPayload() == 38)
          {
            v148 = *v147;
            v323 = v147[1];
            v324 = v148;
            sub_1002E9FD4(0, 0xF000000000000000, 0, 0);
            v335 = v323;
            v334 = v324;
          }

          else
          {
            sub_1003A4664(v147, type metadata accessor for NANAttribute);
          }
        }

        v149 = *(v329 + qword_1005983E0);
        swift_unownedRetainStrong();
        v150 = v305;
        WiFiInterface.preferences.getter();
        *&v324 = v149;

        v151 = v307;
        LOBYTE(v149) = Preferences.enableMulticastKeys.getter(v307);
        (*(v306 + 8))(v150, v151);
        if ((v149 & 1) == 0)
        {
LABEL_100:
          v59 = v135;
          if (v61[*(v327 + 22)] - 1 >= 2)
          {
            v212 = v326;
            if (v61[*(v327 + 22)])
            {
            }

            else
            {
              v333[0] = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
              v332[0] = v212;
              sub_10027B614();

              v213 = dispatch thunk of SetAlgebra.isSuperset(of:)();

              if ((v213 & 1) == 0)
              {
                v333[0] = 0;
                v333[1] = 0xE000000000000000;
                _StringGuts.grow(_:)(56);
                v214._object = 0x80000001004C07C0;
                v214._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v214);
                v216 = v320;
                v215 = v321;
                v217 = v322;
                v194 = v325;
                v218 = v319;
                v219._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v59 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v319);
                String.append(_:)(v219);

                v220._object = 0x80000001004C0880;
                v220._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v220);
                v198 = v333[0];
                v199 = v333[1];
                v201 = v58 | (v317 << 8) | (v218 << 16) | (v59 << 24) | (v216 << 32) | (v215 << 40) | (v217 << 48);
                goto LABEL_109;
              }
            }

LABEL_132:
            sub_1002E9FD4(v334, *(&v334 + 1), v335, *(&v335 + 1));
LABEL_39:
            if (*(v329 + qword_10059BAF0) == 1)
            {
              v129 = v60;
              v130 = v58 | (v317 << 8) | (v319 << 16) | (v59 << 24) | (v320 << 32) | (v321 << 40) | (v322 << 48) | (v325 << 56);
              v131 = v318;
              sub_10039860C(v130, v318, v129, 0);
              sub_10039B884(v130, v131);
            }

            goto LABEL_47;
          }

          v208 = NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
          v333[0] = *v208;
          v209 = v326;
          v332[0] = v326;
          sub_10027B614();
          if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0 || *(&v334 + 1) >> 60 == 15)
          {

            v333[0] = 0;
            v333[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            v221._object = 0x80000001004C07C0;
            v221._countAndFlagsBits = 0xD00000000000001BLL;
            String.append(_:)(v221);
            v223 = v320;
            v222 = v321;
            v224 = v322;
            v194 = v325;
            v225 = v319;
            v226._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v59 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v319);
            String.append(_:)(v226);

            v227._countAndFlagsBits = 0xD00000000000001DLL;
            v227._object = 0x80000001004C0800;
            String.append(_:)(v227);
            v198 = v333[0];
            v199 = v333[1];
            v201 = v58 | (v317 << 8) | (v225 << 16) | (v59 << 24) | (v223 << 32) | (v222 << 40) | (v224 << 48);
            goto LABEL_109;
          }

          v210 = v61[*(v327 + 22)];
          v315 = v58;
          if (v210 > 1)
          {
            v211 = v293;
            if (v210 == 2)
            {

              v231 = v292;
              goto LABEL_116;
            }
          }

          else
          {
            v211 = v293;
          }

          v231 = v292;
          v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v232 & 1) == 0)
          {
LABEL_118:

            v233 = v324;
            swift_unownedRetainStrong();
            v234 = v290;
            (*(v231 + 16))(v290, v233 + *(*v233 + 112), v211);

            (*(v289 + 128))(v211);
            (*(v231 + 8))(v234, v211);
            v235 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

            v236 = v316;
            v237 = v319;
            v238 = v315 | (v317 << 8) | (v319 << 16) | (v135 << 24) | (v320 << 32) | (v321 << 40) | (v322 << 48) | (v325 << 56);

            v239 = v295;
            v326 = v238;
            sub_10039011C(v235, &v334, v238, v236, v295);

            v240 = v294;
            if ((*(v291 + 48))(v239, 1, v294) == 1)
            {
              sub_100016290(v239, &unk_1005985B0, &unk_1004939A0);
              if (v61[*(v327 + 22)] <= 1u && v61[*(v327 + 22)])
              {

LABEL_135:
                v333[0] = 0;
                v333[1] = 0xE000000000000000;
                _StringGuts.grow(_:)(68);
                v280._object = 0x80000001004C07C0;
                v280._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v280);
                v281._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v135 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v237);
                String.append(_:)(v281);

                v282._countAndFlagsBits = 0xD000000000000027;
                v282._object = 0x80000001004C0820;
                String.append(_:)(v282);
                v198 = v333[0];
                v229 = v333[1];
                v230 = v329;
                v228 = v326;
                goto LABEL_110;
              }

              v267 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v267)
              {
                goto LABEL_135;
              }
            }

            else
            {
              v241 = v239;
              v242 = v296;
              sub_10001CEA8(v241, v296, &unk_100597500, &unk_1004939B0);
              v243 = v242;
              v244 = v285;
              sub_100012400(v243, v285, &unk_100597500, &unk_1004939B0);
              v245 = *(v240 + 48);
              v247 = v297;
              v246 = v298;
              v248 = v299;
              (*(v298 + 32))(v297, v244, v299);
              v249 = v244 + v245;
              v250 = v248;
              sub_1003A4664(v249, type metadata accessor for NANPairedDeviceSharedAssociation);
              v251 = v286;
              (*(v246 + 16))(v286, v247, v248);
              memcpy(v333, v338, 0x16AuLL);
              NANBitmap.Channel.operatingClass.getter();

              v252 = Logger.logObject.getter();
              v253 = static os_log_type_t.default.getter();
              sub_1001854F8(v338);
              if (os_log_type_enabled(v252, v253))
              {
                v254 = v246;
                v255 = swift_slowAlloc();
                *&v323 = swift_slowAlloc();
                v332[0] = v323;
                *v255 = 136315394;
                sub_1003A461C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v256 = v251;
                LODWORD(v314) = v253;
                v257 = dispatch thunk of CustomStringConvertible.description.getter();
                v258 = v250;
                v260 = v259;
                v261 = *(v254 + 8);
                v261(v256, v258);
                v262 = sub_100002320(v257, v260, v332);

                *(v255 + 4) = v262;
                *(v255 + 12) = 2080;
                v237 = v319;
                v263 = WiFiAddress.description.getter((v320 << 16) | (v59 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v319);
                v265 = sub_100002320(v263, v264, v332);

                *(v255 + 14) = v265;
                _os_log_impl(&_mh_execute_header, v252, v314, "Discovery: Found matching UUID: %s for paired peers %s", v255, 0x16u);
                swift_arrayDestroy();

                v266 = v261;
              }

              else
              {

                v266 = *(v246 + 8);
                v266(v251, v250);
                v237 = v319;
              }

              v268 = *&v61[*(v327 + 19)];
              v269 = v297;
              if (v268)
              {

                if (!sub_10030BDDC(v269, v268))
                {
                  v332[0] = 0;
                  v332[1] = 0xE000000000000000;
                  _StringGuts.grow(_:)(71);
                  v272._object = 0x80000001004C07C0;
                  v272._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v272);
                  v273._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v59 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v237);
                  String.append(_:)(v273);

                  v274._countAndFlagsBits = 0xD000000000000028;
                  v274._object = 0x80000001004C0850;
                  String.append(_:)(v274);
                  v275 = v299;
                  v276 = Array.description.getter();
                  v278 = v277;

                  v279._countAndFlagsBits = v276;
                  v279._object = v278;
                  String.append(_:)(v279);

                  sub_100398410(v332[0], v332[1], v329, v326);

                  sub_1001854F8(v338);
                  v266(v269, v275);
                  sub_100016290(v296, &unk_100597500, &unk_1004939B0);
                  goto LABEL_111;
                }
              }

              v266(v269, v299);
              sub_100016290(v296, &unk_100597500, &unk_1004939B0);
            }

            swift_unownedRetainStrong();
            v270 = (v320 << 16) | (v59 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40);
            v271 = v287;
            sub_10040CD68(v270 | v237, v287);
            *(v271 + *(v288 + 108)) = 0;
            sub_10040E430(v271, v270 | v237);

            v58 = v315;
            v60 = v316;
            goto LABEL_132;
          }

LABEL_116:
          v333[0] = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
          v332[0] = v209;
          if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
          {
            v333[0] = *v208;
            v332[0] = v209;

            dispatch thunk of SetAlgebra.isSuperset(of:)();
          }

          goto LABEL_118;
        }

        *&v323 = v135;
        memcpy(v333, v338, 0x16AuLL);
        NANBitmap.Channel.operatingClass.getter();

        v152 = v302;
        Array<A>.retrieve(attribute:)(34, v60, v302);
        sub_1001854F8(v338);
        v153 = v115(v152, 1, v312);
        v315 = v58;
        if (v153 == 1)
        {

          sub_100016290(v152, &unk_100595C00, &qword_10048F790);
LABEL_92:
          v189 = v323;
          v332[0] = 0;
          v332[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(74);
          v190._object = 0x80000001004C07C0;
          v190._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v190);
          v192 = v320;
          v191 = v321;
          v193 = v322;
          v194 = v325;
          v195 = v319;
          v196._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v189 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v319);
          String.append(_:)(v196);

          v197._countAndFlagsBits = 0xD00000000000002DLL;
          v197._object = 0x80000001004C08A0;
          String.append(_:)(v197);
          v198 = v332[0];
          v199 = v332[1];
          v200 = v315 | (v317 << 8) | (v195 << 16) | (v189 << 24) | (v192 << 32);
LABEL_93:
          v201 = v200 | (v191 << 40) | (v193 << 48);
LABEL_109:
          v228 = v201 | (v194 << 56);
          v229 = v199;
          v230 = v329;
LABEL_110:
          sub_100398410(v198, v229, v230, v228);
          sub_1001854F8(v338);

LABEL_111:
          sub_1002E9FD4(v334, *(&v334 + 1), v335, *(&v335 + 1));
          v54 = v328;
          return sub_1003A4664(v54, type metadata accessor for DriverEvent);
        }

        if (swift_getEnumCaseMultiPayload() != 30)
        {

          sub_1003A4664(v152, type metadata accessor for NANAttribute);
          goto LABEL_92;
        }

        v154 = NANAttribute.CipherSuiteInformation.Capabilities.groupKeySupport.getter(*v152);

        if (v154 == 2)
        {
          memcpy(v332, v338, 0x16AuLL);
          NANBitmap.Channel.operatingClass.getter();

          v155 = v284;
          v60 = v316;
          Array<A>.retrieve(attribute:)(14, v316, v284);
          sub_1001854F8(v338);
          v156 = v115(v155, 1, v312);
          v135 = v323;
          if (v156 == 1)
          {

            sub_100016290(v155, &unk_100595C00, &qword_10048F790);
LABEL_98:
            v330 = 0;
            v331 = 0xE000000000000000;
            _StringGuts.grow(_:)(70);
            v203._countAndFlagsBits = 0xD000000000000022;
            v203._object = 0x80000001004C08D0;
            String.append(_:)(v203);
            v204 = v320;
            v191 = v321;
            v193 = v322;
            v194 = v325;
            v205 = v319;
            v206._countAndFlagsBits = WiFiAddress.description.getter((v320 << 16) | (v135 << 8) | (v321 << 24) | (v322 << 32) | (v325 << 40) | v319);
            String.append(_:)(v206);

            v207._countAndFlagsBits = 0xD000000000000022;
            v207._object = 0x80000001004C0900;
            String.append(_:)(v207);
            v198 = v330;
            v199 = v331;
            v200 = v315 | (v317 << 8) | (v205 << 16) | (v135 << 24) | (v204 << 32);
            goto LABEL_93;
          }

          if (swift_getEnumCaseMultiPayload() != 14)
          {

            sub_1003A4664(v155, type metadata accessor for NANAttribute);
            goto LABEL_98;
          }

          v202 = *(v155 + 2);
          sub_1001842D0(*(v155 + 16), *(v155 + 24), *(v155 + 32));
          if ((v202 & 0x400) == 0)
          {

            goto LABEL_98;
          }

          v58 = v315;
          goto LABEL_100;
        }

LABEL_91:

        goto LABEL_92;
      }

      sub_1001854F8(v338);
      goto LABEL_24;
    }

    NANBitmap.Channel.operatingClass.getter();
    v65 = *(v64 + 8);
    v66 = *(v64 + 16);
    v326 = qword_10059BAF0;
    if (v55[qword_10059BAF0] == 1)
    {
      v67 = type metadata accessor for P2PTimer(0);
      LODWORD(v325) = v66;
      v68 = v320;
      v318 = v67;
      variable initialization expression of AWDLPeer.lastUpdated();
      v69 = qword_1005983E8;
      swift_beginAccess();
      v71 = v321;
      v70 = v322;
      v72 = *(v321 + 16);
      *&v323 = v69;
      v73 = v315;
      v72(v315, &v55[v69], v322);
      v74 = v313;
      DispatchTime.distance(to:)();
      v75 = *(v71 + 8);
      v75(v73, v70);
      v76 = v68;
      v66 = v325;
      v75(v76, v70);
      v77 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
      v79 = v316;
      v78 = v317;
      v80 = v314;
      (*(v316 + 16))(v314, v77, v317);
      LOBYTE(v69) = static DispatchTimeInterval.< infix(_:_:)(v80, v74);
      v81 = *(v79 + 8);
      v81(v80, v78);
      v81(v74, v78);
      v55 = v329;
      if ((v69 & 1) != 0 && v65 != 1)
      {
        v82 = v329 + qword_10059BAE8;
        swift_beginAccess();
        if (*(v82 + *(v327 + 20)) == 1)
        {
          v328 = v54;
          v83 = v55;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v84, v85))
          {

LABEL_66:
            v159 = v323;
            v160 = v320;
            variable initialization expression of AWDLPeer.lastUpdated();
            swift_beginAccess();
            (*(v321 + 40))(&v55[v159], v160, v322);
            swift_endAccess();
            v161 = *&v83[qword_1005983E0];
            swift_unownedRetainStrong();
            sub_10040CBA8();

            v327 = v83;
            swift_unownedRetainStrong();
            v162 = *(*v161 + 96);
            swift_beginAccess();
            v163 = v319;
            v164 = v161 + v162;
            v165 = v303;
            v166 = AssociatedTypeWitness;
            (*(v319 + 16))(v303, v164, AssociatedTypeWitness);

            v167 = v82;
            v168 = v304;
            sub_1003A4E40(v167, v304, type metadata accessor for NANSubscribe.Configuration);
            v169 = swift_getAssociatedConformanceWitness();
            (*(v169 + 200))(v168, v166, v169);
            sub_1003A4664(v168, type metadata accessor for NANSubscribe.Configuration);
            (*(v163 + 8))(v165, v166);
            v54 = v328;
            return sub_1003A4664(v54, type metadata accessor for DriverEvent);
          }

          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v333[0] = v88;
          *v86 = 138412546;
          *(v86 + 4) = v83;
          *v87 = v55;
          *(v86 + 12) = 2080;
          *&v324 = v65;
          v327 = v88;
          if (v65 > 2)
          {
            if (v65 == 3)
            {
              v89 = 0x6961462070696843;
              v90 = 0xEC0000006572756CLL;
              goto LABEL_65;
            }

            if (v65 == 4)
            {
              v90 = 0x80000001004BA540;
              v89 = 0xD000000000000018;
              goto LABEL_65;
            }
          }

          else
          {
            if (v65 == -1)
            {
              v90 = 0x80000001004BA5E0;
              v89 = 0xD000000000000011;
              goto LABEL_65;
            }

            if (v65 == 2)
            {
              v89 = 0x7165522072657355;
              v90 = 0xEE00646574736575;
LABEL_65:
              v157 = v83;
              v158 = sub_100002320(v89, v90, v333);

              *(v86 + 14) = v158;
              _os_log_impl(&_mh_execute_header, v84, v85, "%@ got an early termination with reason: %s. Retrying", v86, 0x16u);
              sub_100016290(v87, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v327);

              v55 = v329;
              goto LABEL_66;
            }
          }

          v90 = 0xE700000000000000;
          v89 = 0x6E776F6E6B6E55;
          goto LABEL_65;
        }
      }
    }

    v170 = qword_100598418;
    if (*&v55[qword_100598418] && (v55[qword_100598420] & 1) != 0)
    {
      v65 = 1;
    }

    sub_10039205C(v65, v66);
    v171 = v55;
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v172, v173))
    {

LABEL_85:
      v55[v326] = 0;
      *&v171[qword_1005983F0] = 0;

      v182 = qword_1005983F8;
      v183 = *&v171[qword_1005983F8];
      if (v183)
      {
        [v183 subscribeTerminatedWithReason:v65];
      }

      *&v171[v182] = 0;
      swift_unknownObjectRelease();
      *&v55[v170] = 0;

      v171[qword_100598420] = 0;
      v184 = swift_unownedRetainStrong();
      sub_10040CAE8(v184, v185, v186, v187);

      sub_100367078(v171);

      return sub_1003A4664(v54, type metadata accessor for DriverEvent);
    }

    v328 = v54;
    v174 = v55;
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v332[0] = v177;
    *v175 = 138412546;
    *(v175 + 4) = v171;
    *v176 = v174;
    *(v175 + 12) = 2080;
    *&v324 = v65;
    if (v65 <= 1)
    {
      if (v65 == -1)
      {
        v178 = 0x80000001004BA5E0;
        v179 = 0xD000000000000011;
        goto LABEL_84;
      }

      if (v65 == 1)
      {
        v178 = 0xE900000000000074;
        v179 = 0x754F2064656D6954;
        goto LABEL_84;
      }
    }

    else
    {
      switch(v65)
      {
        case 2:
          v179 = 0x7165522072657355;
          v178 = 0xEE00646574736575;
          goto LABEL_84;
        case 3:
          v179 = 0x6961462070696843;
          v178 = 0xEC0000006572756CLL;
          goto LABEL_84;
        case 4:
          v178 = 0x80000001004BA540;
          v179 = 0xD000000000000018;
LABEL_84:
          v180 = v171;
          v181 = sub_100002320(v179, v178, v332);

          *(v175 + 14) = v181;
          _os_log_impl(&_mh_execute_header, v172, v173, "%@ was terminated with reason %s", v175, 0x16u);
          sub_100016290(v176, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v177);

          v54 = v328;
          v55 = v329;
          v65 = v324;
          goto LABEL_85;
      }
    }

    v178 = 0xE700000000000000;
    v179 = 0x6E776F6E6B6E55;
    goto LABEL_84;
  }

  NANBitmap.Channel.operatingClass.getter();
  if (v55[qword_10059BAF0] == 1)
  {
    sub_10039CA30(*v91, *(v91 + 8), *(v91 + 16));
    sub_1001854F8(v338);
  }

  else
  {
    sub_1001854F8(v338);
    v105 = v55;
    v106 = Logger.logObject.getter();
    v107 = v55;
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 138412290;
      *(v109 + 4) = v105;
      *v110 = v107;
      v111 = v105;
      _os_log_impl(&_mh_execute_header, v106, v108, "%@ Failed to handle follow-up frame because interface is not active", v109, 0xCu);
      sub_100016290(v110, &qword_10058B780, &qword_100480AC0);
    }
  }

  return sub_1003A4664(v54, type metadata accessor for DriverEvent);
}