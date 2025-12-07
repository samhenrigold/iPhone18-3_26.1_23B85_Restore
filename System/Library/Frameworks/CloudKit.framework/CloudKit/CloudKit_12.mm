void sub_18850227C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18840ADD8(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        sub_1883FA4B8();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v4 + 32);
    if (v25 >= 64)
    {
      sub_188501174(0, (v25 + 63) >> 6, v4 + 56);
    }

    else
    {
      sub_1883F9AD4();
      *v8 = v26;
    }

    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1883F860C();
LABEL_12:
    v17 = NSObject._rawHashValue(seed:)(*(v6 + 40)) & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    sub_1883F9020();
LABEL_21:
    sub_1883FDF90();
    *(v13 + v22) |= v23;
    sub_188405DCC(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  sub_1883F7AC4();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      sub_1883F7C04();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_188502424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
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
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_188501174(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v18);
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_188502690(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  sub_1883F9AD4();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_188502710()
{
  sub_1883F9160();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_18850227C(v12 + 1, v2, v3);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_188503A14();
LABEL_8:
      v14 = *v0;
      NSObject._rawHashValue(seed:)(*(*v0 + 40));
      sub_1883F9AD4();
      v17 = ~v16;
      while (1)
      {
        v9 = v15 & v17;
        if (((*(v14 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1883F4C5C(0, v7, v5);
        v18 = *(*(v14 + 48) + 8 * v9);
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          goto LABEL_15;
        }

        v15 = v9 + 1;
      }
    }

    sub_188503110();
  }

LABEL_12:
  v20 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v20 + 48) + 8 * v9) = v11;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
    sub_1883F8750();
  }
}

void sub_188502868(void *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_188502024(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1885037E4(v6 + 1);
LABEL_8:
      v20 = v3;
      v8 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x18CFD5EB0](0);
      v9 = a1;
      NSObject.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(*(v8 + 48) + 8 * a2);
        sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
        v13 = v9;
        v14 = v12;
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v20;
      goto LABEL_13;
    }

    sub_188502FC0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = a1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }
}

void sub_188502A0C(void *a1, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_188502424(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_188503234();
        goto LABEL_16;
      }

      sub_188503BA0(v9 + 1);
    }

    v11 = *v4;
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](a2 & 1);
    NSObject.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        v15 = *(v11 + 48) + 16 * a3;
        v16 = *v15;
        if (*(v15 + 8))
        {
          if (a2)
          {
            goto LABEL_14;
          }
        }

        else if ((a2 & 1) == 0)
        {
LABEL_14:
          sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
          v17 = v16;
          v18 = a1;
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            goto LABEL_19;
          }
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_16:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = a1;
  *(v21 + 8) = a2 & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void *sub_188502BE8()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_188502D28()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6B8, &qword_1886FBD18);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void sub_188502E68()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_188502FC0()
{
  v1 = v0;
  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void sub_188503110()
{
  sub_1883F7FF0();
  v1 = v0;
  sub_18844E6FC(v2, v3);
  v4 = *v0;
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
    v12 = *(v4 + 56);
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
        sub_1883F860C();
LABEL_17:
        v20 = v16 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        *(*(v6 + 48) + 8 * v20) = v21;
        v22 = v21;
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

      ++v17;
      if (*(v4 + 56 + 8 * v10))
      {
        sub_1883FA4B8();
        v14 = v19 & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v6;
    sub_1883FDCC0();
  }
}

id sub_188503234()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
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

  return result;
}

Swift::Int sub_188503394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1885035B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1885037E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](0);
        v16 = v15;
        NSObject.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_188503A14()
{
  sub_1883F9160();
  sub_18840ADD8(v2, v3, v4);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = NSObject._rawHashValue(seed:)(v17) & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_1883F9020();
LABEL_21:
        sub_1883FDF90();
        *(v12 + v23) |= v24;
        sub_188405DCC(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_1883F7AC4();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          sub_1883F7C04();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_1883FA4B8();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    sub_1883F8750();
  }
}

Swift::Int sub_188503BA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v17);
        v18 = v16;
        NSObject.hash(into:)();
        result = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v5 + 48) + 16 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_188503DE0()
{
  sub_1883F9160();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v0;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v3;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      sub_188504078(v5, v6);
    }

    else
    {
    }
  }

  else
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    sub_1883F9AD4();
    v10 = ~v9;
    while (1)
    {
      v11 = v8 & v10;
      if (((*(v4 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_188503110();
        }

        v15 = sub_188410D0C();
        sub_1885041EC(v15);
        *v1 = v16;
        break;
      }

      v8 = v11 + 1;
    }
  }

  sub_1883F8750();
}

uint64_t sub_188503F50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188502E68();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_188504380(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_188504078(uint64_t a1, uint64_t a2)
{

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_188501784(v3, v2, &qword_1EA90E598, &qword_1886FB740, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_1885041EC(v8);
      if (static NSObject.== infix(_:_:)())
      {
        *v13 = v4;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1885041EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

unint64_t sub_188504380(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

void sub_188504538()
{
  sub_1883F7FF0();
  v2 = v1;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }
  }

  else if (!*(*v0 + 16))
  {
    goto LABEL_13;
  }

  v3 = sub_1883F4C9C(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_18840578C();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = sub_188405008();
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_188503DE0();
    v8 = v7;
  }

LABEL_13:
  sub_1883FDCC0();
}

void sub_188504600()
{
  sub_1883F7FF0();
  if (*(*v0 + 16))
  {
    v2 = v1 + 56;
    v3 = 1 << *(v1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_10:
          v5 &= v5 - 1;

          v9 = sub_1883F7BC0();
          sub_188503F50(v9, v10);
        }

        while (v5);
        continue;
      }
    }

    sub_1883FDCC0();
  }

  else
  {
    sub_1883FDCC0();
  }
}

uint64_t sub_18850471C()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883FB5FC();

  return sub_188500070(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1885047DC()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883FB5FC();

  return sub_1884FF9B4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_188504870()
{
  sub_188404C04();
  sub_1883F653C();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883F6548();

  return sub_1884FF364(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_188504930()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883FB5FC();

  return sub_1884FC5C4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1885049C4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883FB5FC();

  return sub_1884FC040(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_188504A68()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188504AB4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F9ED8(v1);
  sub_1883FB5FC();

  return sub_1884FBD34(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_188504B48()
{
  result = qword_1EA90C678;
  if (!qword_1EA90C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C678);
  }

  return result;
}

unint64_t sub_188504B9C()
{
  result = qword_1EA90C750;
  if (!qword_1EA90C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C750);
  }

  return result;
}

unint64_t sub_188504BF0()
{
  result = qword_1EA90C890;
  if (!qword_1EA90C890)
  {
    type metadata accessor for Scope(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C890);
  }

  return result;
}

uint64_t sub_188504C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_188504C80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188504CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188504D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if (static NSObject.== infix(_:_:)())
  {
    v14 = a2 == a6 && a3 == a7;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (a4)
      {
        if (a8)
        {
          sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
          v15 = a8;
          v16 = a4;
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_188504E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  NSObject.hash(into:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    v6 = a5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_188504ED4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  sub_188504E18(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_188504F54(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  sub_188504E18(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

unint64_t sub_188504FD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(41);

  MEMORY[0x18CFD5140](a2, a3);
  MEMORY[0x18CFD5140](0x6365527265737520, 0xEE003D444964726FLL);
  v7 = a4;
  sub_18844E6FC(&qword_1EA90E6F8, &qword_1886FBE50);
  v8 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v8);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_188505110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1885050DC(a1, *(v2 + 8), *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_188505140()
{
  result = qword_1EA90E6F0;
  if (!qword_1EA90E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E6F0);
  }

  return result;
}

id sub_188505194(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountInfo:a1 userRecordID:a2];

  return v4;
}

id sub_1885051F0()
{
  v1 = (v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  *v1 = 0u;
  v1[1] = 0u;
  v3.super_class = CKSyncEngineAccount;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_188505260(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 init];
  v7 = sub_188505EAC(a1);
  v9 = v8;
  if (!v8)
  {

    a1 = 0;
    v7 = 0;
    a2 = 0;
  }

  v10 = &v6[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v12 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v11 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 8];
  v13 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 16];
  v14 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 24];
  *v10 = a1;
  *(v10 + 1) = v7;
  *(v10 + 2) = v9;
  *(v10 + 3) = a2;
  sub_1884D11E8(v12, v11, v13, v14);

  return v6;
}

id sub_188505374()
{
  result = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1885053C0()
{
  if (*(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped))
  {
    v1 = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped + 24);
    v2 = v1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18850545C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped;
  if (*(v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped))
  {
    a2 = *(v3 + 24);
    *(v3 + 24) = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8](a1, a2);
}

void sub_188505490(void *a1)
{
  v3 = [v1 accountInfo];
  v4 = NSStringFromSelector(sel_accountInfo);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  [a1 encodeObject:v3 forKey:v4];

  v6 = [v1 userRecordID];
  v7 = NSStringFromSelector(sel_userRecordID);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = MEMORY[0x18CFD5010](v8);

    v7 = v9;
  }

  v10 = v7;
  [a1 encodeObject:v6 forKey:?];
}

id CKSyncEngineAccount.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  sub_18844E6FC(&unk_1EA90E708, &qword_1886FBE58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1886F7400;
  *(v5 + 32) = sub_1883F4C5C(0, &unk_1EA90C790, off_1E70B9FA0);
  v6 = NSStringFromSelector(sel_accountInfo);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F8A98();

  if (!v28)
  {
    sub_18847EBC8(v27);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000032, 0x8000000188702FE0);
    v20 = _convertErrorToNSError(_:)();

    [a1 failWithError_];
LABEL_12:

    sub_1884D11E8(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3));
    type metadata accessor for CKSyncEngineAccount(v23);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v26;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1886F7400;
  *(v8 + 32) = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v9 = NSStringFromSelector(sel_userRecordID);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F8A98();

  if (!v28)
  {
    sub_18847EBC8(v27);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v21 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000033, 0x8000000188703020);
    v22 = _convertErrorToNSError(_:)();

    [a1 failWithError_];
    goto LABEL_12;
  }

  v10 = v26;
  v11 = sub_188505EAC(v7);
  v13 = v12;
  if (!v12)
  {

    v7 = 0;
    v11 = 0;
    v10 = 0;
  }

  v15 = *v4;
  v14 = *(v4 + 1);
  v16 = *(v4 + 2);
  v17 = *(v4 + 3);
  *v4 = v7;
  *(v4 + 1) = v11;
  *(v4 + 2) = v13;
  *(v4 + 3) = v10;
  sub_1884D11E8(v15, v14, v16, v17);
  v25.receiver = v2;
  v25.super_class = CKSyncEngineAccount;
  v18 = objc_msgSendSuper2(&v25, sel_init);

  return v18;
}

uint64_t CKSyncEngineAccount.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v41);
  if (!v42)
  {
    sub_18847EBC8(v41);
    goto LABEL_11;
  }

  type metadata accessor for CKSyncEngineAccount(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  v4 = *&v40[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v5 = *&v40[OBJC_IVAR___CKSyncEngineAccount__wrapped + 8];
  v7 = *&v40[OBJC_IVAR___CKSyncEngineAccount__wrapped + 16];
  v6 = *&v40[OBJC_IVAR___CKSyncEngineAccount__wrapped + 24];
  if (!v3)
  {
    v25 = sub_1883F9F04();
    sub_1884D123C(v25, v26, v27, v28);

    if (!v4)
    {
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
    v29 = *(v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped + 24);
    v30 = v3;

LABEL_10:
    v31 = sub_1883F75B4();
    sub_1884D11E8(v31, v32, v33, v34);
    v35 = sub_1883F9F04();
    sub_1884D11E8(v35, v36, v37, v38);
    goto LABEL_11;
  }

  v8 = sub_1883F9F04();
  sub_1884D123C(v8, v9, v10, v11);
  v12 = sub_1883F75B4();
  sub_1884D123C(v12, v13, v14, v15);
  v16 = sub_1883F75B4();
  v20 = sub_188504D10(v16, v17, v18, v19, v4, v5, v7, v6);

  v21 = sub_1883F75B4();
  sub_1884D11E8(v21, v22, v23, v24);
  return v20 & 1;
}

uint64_t CKSyncEngineAccount.hash.getter()
{
  sub_18844E6FC(&qword_1EA90E718, &qword_1886FBE60);
  sub_188505F10();
  return Optional<A>.hashValue.getter();
}

uint64_t CKSyncEngineAccount.description.getter()
{
  v1 = *&v0[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___CKSyncEngineAccount__wrapped + 24];
    v3 = v1;

    v4 = v2;
    v5 = objc_msgSendSuper2(&v15, sel_description);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v16 = v6;
    v17 = v8;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v9 = v3;

    v10 = v4;
    v11 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v11);

    return v16;
  }

  else
  {
    v18.receiver = v0;
    v18.super_class = CKSyncEngineAccount;
    v13 = objc_msgSendSuper2(&v18, sel_description);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
    return v14;
  }
}

id CKSyncEngineAccount.copy(with:)@<X0>(id result@<X0>, void *a2@<X8>)
{
  v4 = v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped;
  v5 = *(v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  if (v5)
  {
    v6 = type metadata accessor for CKSyncEngineAccount(result);
    v7 = *(v4 + 24);
    v8 = v7;
    result = sub_188505194(v5, v7);
    a2[3] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188505EAC(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_188505F10()
{
  result = qword_1EA90E720;
  if (!qword_1EA90E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E720);
  }

  return result;
}

uint64_t sub_188505F64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 stateSerialization];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 data];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = [v2 delegate];
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain_n();
    sub_18844E6FC(&qword_1EA90E748, &unk_1886FC000);
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    v12 = swift_dynamicCast();
    if ((v12 & 1) == 0)
    {
      v45 = 0u;
    }

    sub_1883F9440(v12, v13, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45);
    goto LABEL_8;
  }

  v21 = [v2 dataSource];
  if (v21)
  {
    v22 = v21;
    v11 = [objc_allocWithZone(CKSyncEngineDataSourceAdapter) initWithDataSource_];
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90E728, &qword_1886FBFF0);
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    v23 = swift_dynamicCast();
    if ((v23 & 1) == 0)
    {
      v45 = 0u;
    }

    if ([v22 respondsToSelector_])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = [v22 respondsToSelector_];
      swift_unknownObjectRelease();
      if (!v31)
      {
LABEL_8:
        v20 = 1;
LABEL_16:
        sub_18844E6FC(&qword_1EA90E738, &qword_1886FBFF8);
        swift_initStackObject();
        sub_1885010BC(v11);
        type metadata accessor for CKSyncEngineObjCDelegateAdapter();
        swift_allocObject();
        v32 = sub_1884FCF08();
        v33 = [v2 database];
        sub_18844E6FC(&unk_1EA90E420, &qword_1886FB178);
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(a1 + 96) = v34;
        *(a1 + 176) = 0;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0;
        *(a1 + 128) = 0u;
        *a1 = v33;
        sub_188424184(v7, v9);

        v35 = v33;
        sub_18841BA74(0, 0xF000000000000000);
        *(a1 + 8) = v7;
        *(a1 + 16) = v9;
        *(a1 + 24) = v32;
        *(a1 + 32) = &off_1EFA2C728;
        CKCurrentProcessIsDaemon();

        *(a1 + 48) = sub_188463094(v2, &selRef_subscriptionID);
        *(a1 + 56) = v36;
        *(a1 + 40) = [v2 automaticallySync];
        sub_1885066FC([v2 xpcActivityCriteriaOverrides]);
        *(a1 + 120) = [v2 continueSendingChangesAfterFailure];
        *(a1 + 80) = sub_188463094(v2, &selRef_apsMachServiceName);
        *(a1 + 88) = v37;
        *(a1 + 104) = [v2 useOpportunisticPushTopic];
        *(a1 + 105) = [v2 allowFetchAndModifyConcurrently];
        *(a1 + 112) = [v2 assetDownloadStagingManager];
        LOBYTE(v35) = [v2 isImmediatePushSyncEnabled];
        sub_18841BA74(v7, v9);
        swift_unknownObjectRelease();
        *(a1 + 121) = v35;
        *(a1 + 168) = v20;
        *(a1 + 64) = v32;
        *(a1 + 72) = &off_1EFA2C718;
        return sub_188506C34(v46, a1 + 128);
      }
    }

    v20 = 0;
    goto LABEL_16;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000005ELL, 0x8000000188703200, "CloudKit/CKSyncEngineConfiguration.swift", 40, 2, 196);
  __break(1u);
  return result;
}

uint64_t CKSyncEngine.Configuration.stateSerialization.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_188424184(v2, v3);
}

uint64_t CKSyncEngine.Configuration.stateSerialization.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_18841BA74(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t CKSyncEngine.Configuration.delegate.setter()
{
  sub_1883F877C();
  result = swift_unknownObjectRelease();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.subscriptionID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CKSyncEngine.Configuration.subscriptionID.setter()
{
  sub_1883F877C();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.delegatePrivate.setter()
{
  sub_1883F877C();
  result = swift_unknownObjectRelease();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.apsMachServiceName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CKSyncEngine.Configuration.apsMachServiceName.setter()
{
  sub_1883F877C();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

xpc_object_t CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.getter()
{
  result = *(*(v0 + 96) + 16);
  if (result)
  {
    return xpc_copy(result);
  }

  return result;
}

uint64_t sub_1885066FC(void *a1)
{
  v2 = *(v1 + 96);
  if (a1)
  {
    v3 = xpc_copy(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 16) = v3;

  return swift_unknownObjectRelease();
}

uint64_t (*CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.modify(void *a1))(xpc_object_t *a1, uint64_t a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v4 = xpc_copy(v4);
  }

  *a1 = v4;
  return sub_1885067B0;
}

uint64_t sub_1885067B0(xpc_object_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.setter(v3);
  }

  else
  {
    if (*a1)
    {
      v4 = xpc_copy(*a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0;
    }

    *(a1[2] + 2) = v4;
  }

  return swift_unknownObjectRelease();
}

void *CKSyncEngine.Configuration.assetDownloadStagingManager.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

unint64_t CKSyncEngine.Configuration.description.getter()
{
  v1 = v0;
  v2 = [*v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x18CFD5140](v3, v5);

  if (v1[2] >> 60 == 15)
  {
    MEMORY[0x18CFD5140](0xD000000000000017, 0x8000000188703110);
  }

  else
  {
    v6 = sub_1883FA224();
    sub_188423C74(v6, v7);
    _StringGuts.grow(_:)(22);
    MEMORY[0x18CFD5140](0xD000000000000014, 0x80000001887031B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18CFD5140](0, 0xE000000000000000);

    v8 = sub_1883FA224();
    sub_18841BA74(v8, v9);
  }

  if (*(v1 + 40) == 1)
  {
    MEMORY[0x18CFD5140](0xD000000000000014, 0x8000000188703190);
  }

  if (v1[7])
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(18);

    v10 = sub_1883FA224();
    MEMORY[0x18CFD5140](v10);
    sub_1883F9F18();
  }

  if (v1[11])
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(22);

    v11 = sub_1883FA224();
    MEMORY[0x18CFD5140](v11);
    sub_1883F9F18();
  }

  v12 = *(v1[12] + 2);
  if (v12 && xpc_copy(v12))
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(32);
    MEMORY[0x18CFD5140](0xD00000000000001ELL, 0x8000000188703130);
    swift_getObjectType();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F9F18();
    swift_unknownObjectRelease();
  }

  return 0xD000000000000018;
}

uint64_t sub_188506B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188506BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188506C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E740, &qword_1886FB170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188506CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 912) = a5;
  *(v5 + 904) = a4;
  *(v5 + 896) = a1;
  memcpy((v5 + 16), (a4 + 8), 0x48uLL);
  *(v5 + 920) = *(v5 + 16);
  *(v5 + 863) = *(v5 + 24);
  *(v5 + 840) = *(a4 + 17);
  *(v5 + 855) = *(a4 + 32);
  *(v5 + 928) = *(v5 + 48);
  v7 = *(a4 + 64);
  *(v5 + 808) = *(a4 + 48);
  *(v5 + 824) = v7;
  sub_1883F697C(v5 + 16, v5 + 88);
  v8 = swift_task_alloc();
  *(v5 + 936) = v8;
  *v8 = v5;
  v8[1] = sub_188506DA0;

  return sub_1884FB5E0();
}

uint64_t sub_188506DA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  *(v1 + 944) = v0;

  return MEMORY[0x1EEE6DFA0](sub_188506E98, 0, 0);
}

void sub_188506E98()
{
  v99 = v0;
  if (!*(v0 + 944))
  {
    v16 = *(v0 + 928);
    v17 = *(v0 + 863);
    v18 = *(v0 + 904);
    v19 = *(v0 + 896);
    *v19 = *(v0 + 920);
    *(v19 + 8) = v17;
    v20 = *(v18 + 17);
    *(v19 + 24) = *(v18 + 32);
    *(v19 + 32) = v16;
    *(v19 + 9) = v20;
    v21 = *(v18 + 48);
    *(v19 + 56) = *(v18 + 64);
    *(v19 + 40) = v21;
    goto LABEL_45;
  }

  v89 = v0 + 840;
  v90 = (v0 + 808);
  v91 = (v0 + 872);
  v92 = (v0 + 864);
  v1 = *(v0 + 920);
  sub_1883FA550();

  v2 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();

  v97 = MEMORY[0x1E69E7CC0];
  v3 = sub_1883F4C9C(v2);
  v4 = 0;
  v93 = v2 & 0xC000000000000001;
  v94 = v0;
  while (v3 != v4)
  {
    if (v93)
    {
      v5 = MEMORY[0x18CFD59D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (*(v0 + 863))
    {
      if (*(v0 + 863) != 1 || (*v91 = v5, *(swift_task_alloc() + 16) = v91, , v7 = sub_18850DE28(), , , (v7 & 1) != 0))
      {
LABEL_11:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_14;
      }
    }

    else
    {
      *v92 = v5;
      *(swift_task_alloc() + 16) = v92;

      v8 = sub_18850DE28();

      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    ++v4;
    v0 = v94;
  }

  v9 = v97;
  *(v0 + 952) = v97;
  v10 = MEMORY[0x1E69E7CC0];
  *(v0 + 880) = MEMORY[0x1E69E7CC0];
  v11 = sub_1883F4C9C(v9);
  *(v0 + 960) = v11;
  if (!v11)
  {
    v22 = *(v0 + 928);

    if (sub_1883F4C9C(v10))
    {
      v23 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {

          v95 = sub_1884043A8(v24);
          v1 = MEMORY[0x1E69E7CC0];
          sub_188504538();

          sub_1883F5DF8(v95);
          sub_1883FDE10();

          *(v0 + 160) = v1;
          *(v0 + 168) = 1;
          *(v0 + 169) = *v89;
          *(v0 + 184) = *(v89 + 15);
          *(v0 + 192) = v22;
          v25 = v90[1];
          *(v0 + 200) = *v90;
          *(v0 + 216) = v25;
          v26 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          v27 = sub_1883F69F4(v26);
          v29 = v28;
          if (v28 && (v30 = sub_1883F75D8(), (sub_1883F7624(v30, v31, v32, v29) & 1) == 0))
          {
            v33 = *(v0 + 944);
          }

          else
          {
            v33 = *(v0 + 944);
            v34 = *(v0 + 160);
            type metadata accessor for SyncEngine(0);
            v35 = sub_1883F98D8();
            sub_1883F8518(v35, v36, v37, v38, v39, v40, v41, v42, v87, v89, v90, v91, v92, v93, v94, v95);
            sub_1883F90D4();

            sub_1883F60E8(v27, v34, v26);
          }

          sub_1883F7768(v0 + 160);
          v47 = 1;
        }

        else
        {

          *(v0 + 664) = v10;
          *(v0 + 672) = 0;
          sub_1883FE1F0((v0 + 673), v87, v89);
          *(v0 + 688) = v68;
          *(v0 + 696) = v22;
          v69 = v90[1];
          *(v0 + 704) = *v90;
          *(v0 + 720) = v69;
          v70 = *(v0 + 680);
          sub_1883F697C(v0 + 664, v0 + 736);
          sub_1883F69F4(v70);
          v72 = v71;
          if (v71 && (v73 = sub_1883F75D8(), (sub_1883F7624(v73, v74, v75, v72) & 1) == 0))
          {
            v76 = *(v0 + 944);
          }

          else
          {
            v76 = *(v0 + 944);
            v77 = *(v0 + 664);
            v78 = *(v0 + 672);
            type metadata accessor for SyncEngine(0);
            v97 = v77;
            v98 = v78;

            v79 = sub_1883F6734(&v97);
            v81 = v80;

            sub_1883F60E8(v79, v81, v70);
          }

          sub_1883F7768(v0 + 664);
          v47 = 0;
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v96 = sub_1884043A8(MEMORY[0x1E69E7CC0]);
        v48 = sub_1884043A8(v23);
        sub_1884433B0(v48);
        sub_1883F5DF8(v96);
        sub_1883FDE10();

        *(v0 + 520) = v1;
        *(v0 + 528) = 0;
        sub_1883FE1F0((v0 + 529), v87, v89);
        *(v0 + 544) = v49;
        *(v0 + 552) = v22;
        v50 = v90[1];
        *(v0 + 560) = *v90;
        *(v0 + 576) = v50;
        v51 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        v52 = sub_1883F69F4(v51);
        v54 = v53;
        if (v53 && (v55 = sub_1883F75D8(), (sub_1883F7624(v55, v56, v57, v54) & 1) == 0))
        {
          v58 = *(v0 + 944);
        }

        else
        {
          v58 = *(v0 + 944);
          v59 = *(v0 + 520);
          type metadata accessor for SyncEngine(0);
          v60 = sub_1883F98D8();
          sub_1883F8518(v60, v61, v62, v63, v64, v65, v66, v67, v88, v89, v90, v91, v92, v93, v94, v96);
          sub_1883F90D4();

          sub_1883F60E8(v52, v59, v51);
        }

        sub_1883F7768(v0 + 520);
        v47 = 0;
      }
    }

    else
    {
      v46 = *(v0 + 944);

      v47 = *(v0 + 863);
      v1 = *(v0 + 920);
    }

    v82 = sub_1883FA4C8();
    *v83 = *v89;
    *(v0 + 400) = *(v89 + 15);
    *(v0 + 408) = v22;
    v84 = v90[1];
    *(v0 + 416) = *v90;
    *(v0 + 432) = v84;
    memcpy(v82, (v0 + 376), 0x48uLL);
    *(v0 + 304) = v1;
    *(v0 + 312) = v47;
    *(v0 + 313) = *v89;
    *(v0 + 328) = *(v89 + 15);
    *(v0 + 336) = v22;
    v85 = v90[1];
    *(v0 + 344) = *v90;
    *(v0 + 360) = v85;
    sub_1883F697C(v0 + 376, v0 + 448);
    sub_1883F7768(v0 + 304);
LABEL_45:
    sub_1883F816C();

    v86();
    return;
  }

  v12 = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  *(v0 + 968) = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  v13 = *(v0 + 928);
  *(v0 + 984) = v10;
  *(v0 + 976) = v13;
  v14 = *(v0 + 952);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x18CFD59D0](0);
    v12 = *(v0 + 968);
  }

  else
  {
    if (!*(v14 + 16))
    {
      goto LABEL_50;
    }

    v15 = *(v14 + 32);
  }

  *(v0 + 992) = v15;
  *(v0 + 1000) = 1;
  *(v0 + 1008) = *(*(v0 + 944) + v12);

  v43 = swift_task_alloc();
  *(v0 + 1016) = v43;
  *v43 = v0;
  v44 = sub_1883FA230(v43);

  sub_1884FE4E0(v44, v45);
}

uint64_t sub_1885075C4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;
  *(v4 + 1024) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1885076D4, 0, 0);
}

void sub_1885076D4()
{
  if (*(v0 + 1024))
  {
    v2 = (v0 + 984);
  }

  else
  {
    v2 = (v0 + 880);
    MEMORY[0x18CFD52F0](*(v0 + 992));
    if (*((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *v2;
  v4 = [*(v0 + 944) dataSource];
  v5 = *(v0 + 992);
  if (!v4)
  {

    goto LABEL_10;
  }

  AssetContents = CKSyncEngineDataSourceShouldFetchAssetContents(v4, *(v0 + 944), v5);
  v2 = *(v0 + 992);
  if (AssetContents)
  {

    swift_unknownObjectRelease();
LABEL_10:
    v7 = *(v0 + 976);
LABEL_23:
    v26 = *(v0 + 1000);
    if (v26 == *(v0 + 960))
    {
      v27 = (v0 + 808);

      if (!sub_1883F4C9C(v3))
      {
        v53 = *(v0 + 944);

        v54 = *(v0 + 863);
        v3 = *(v0 + 920);
        goto LABEL_52;
      }

      v28 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {

          v112 = sub_1884043A8(v29);
          sub_188504538();

          v30 = v112;
          sub_1883F5DF8(v112);
          sub_1883FDE10();

          *(v0 + 160) = v3;
          *(v0 + 168) = 1;
          *(v0 + 169) = *(v0 + 840);
          *(v0 + 184) = *(v0 + 855);
          *(v0 + 192) = v7;
          v31 = *(v0 + 824);
          *(v0 + 200) = *v27;
          *(v0 + 216) = v31;
          v32 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v32);
          sub_1883F90D4();
          if (v33 && (v34 = sub_1883F75D8(), (sub_1883F7624(v34, v35, v36, v1) & 1) == 0))
          {
            v30 = *(v0 + 944);
          }

          else
          {
            type metadata accessor for SyncEngine(0);
            v37 = sub_1883FF240();
            sub_1883F9674(v37, v38, v39, v40, v41, v42);
            sub_1883F8C64();

            sub_188402F14(v43, v44, v45, v46, v47, v48, v49, v50, v32);
          }

          sub_1883F7768(v0 + 160);
          v54 = 1;
LABEL_52:
          sub_1883FA4C8();
          sub_1883FE77C(v104);
          *(v0 + 400) = v105;
          *(v0 + 408) = v7;
          v106 = *(v0 + 824);
          *(v0 + 416) = *v27;
          *(v0 + 432) = v106;
          memcpy(v107, (v0 + 376), 0x48uLL);
          *(v0 + 304) = v3;
          *(v0 + 312) = v54;
          sub_1883FE77C((v0 + 313));
          *(v0 + 328) = v108;
          *(v0 + 336) = v7;
          v109 = *(v0 + 824);
          *(v0 + 344) = *v27;
          *(v0 + 360) = v109;
          sub_1883F697C(v0 + 376, v0 + 448);
          sub_1883F7768(v0 + 304);
          sub_1883F816C();
          sub_1883FF618();

          __asm { BRAA            X1, X16 }
        }

        *(v0 + 664) = v3;
        *(v0 + 672) = 0;
        sub_1883FE77C((v0 + 673));
        *(v0 + 688) = v82;
        *(v0 + 696) = v7;
        v83 = *(v0 + 824);
        *(v0 + 704) = *v27;
        *(v0 + 720) = v83;
        v84 = *(v0 + 680);
        sub_1883F697C(v0 + 664, v0 + 736);
        sub_1883F69F4(v84);
        sub_1883F90D4();
        if (v85 && (v86 = sub_1883F75D8(), (sub_1883F7624(v86, v87, v88, v1) & 1) == 0))
        {
          v2 = *(v0 + 944);
        }

        else
        {
          type metadata accessor for SyncEngine(0);
          v89 = sub_1883FF240();
          sub_1883F9674(v89, v90, v91, v92, v93, v94);
          sub_1883F8C64();

          sub_188402F14(v95, v96, v97, v98, v99, v100, v101, v102, v84);
        }

        v103 = v0 + 664;
      }

      else
      {

        v113 = sub_1884043A8(v3);
        v59 = sub_1884043A8(v28);
        sub_1884433B0(v59);
        v60 = v113;
        sub_1883F5DF8(v113);
        sub_1883FDE10();

        *(v0 + 520) = v3;
        *(v0 + 528) = 0;
        sub_1883FE77C((v0 + 529));
        *(v0 + 544) = v61;
        *(v0 + 552) = v7;
        v62 = *(v0 + 824);
        *(v0 + 560) = *v27;
        *(v0 + 576) = v62;
        v63 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v63);
        sub_1883F90D4();
        if (v64 && (v65 = sub_1883F75D8(), (sub_1883F7624(v65, v66, v67, v1) & 1) == 0))
        {
          v60 = *(v0 + 944);
        }

        else
        {
          type metadata accessor for SyncEngine(0);
          v68 = sub_1883FF240();
          sub_1883F9674(v68, v69, v70, v71, v72, v73);
          sub_1883F8C64();

          sub_188402F14(v74, v75, v76, v77, v78, v79, v80, v81, v63);
        }

        v103 = v0 + 520;
      }

      sub_1883F7768(v103);
      v54 = 0;
      goto LABEL_52;
    }

    *(v0 + 984) = v3;
    *(v0 + 976) = v7;
    v51 = *(v0 + 952);
    if ((v51 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x18CFD59D0](v26);
    }

    else
    {
      if (v26 >= *(v51 + 16))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v52 = *(v51 + 8 * v26 + 32);
    }

    *(v0 + 992) = v52;
    *(v0 + 1000) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      *(v0 + 1008) = *(*(v0 + 944) + *(v0 + 968));

      v55 = swift_task_alloc();
      *(v0 + 1016) = v55;
      *v55 = v0;
      sub_1883FA230(v55);
      sub_1883FF618();

      sub_1884FE4E0(v56, v57);
      return;
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = *(v0 + 976);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 888) = v8;
  sub_188486310();
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_56;
  }

  v1 = v10;
  v15 = v11;
  sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v7 = *(v0 + 888);
    if ((v15 & 1) == 0)
    {
LABEL_20:
      v19 = *(v0 + 992);
      v7[(v1 >> 6) + 8] |= 1 << v1;
      *(v7[6] + 8 * v1) = v19;
      v20 = v7[7] + 16 * v1;
      *v20 = 1;
      *(v20 + 8) = 0;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v24 = *(v0 + 992);
      v7[2] = v23;
      v25 = v24;
    }

LABEL_22:
    v2 = *(v0 + 992);
    *(v7[7] + 16 * v1) = 0;
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  sub_18848C83C();
  v7 = *(v0 + 888);
  sub_188486310();
  if ((v15 & 1) == (v17 & 1))
  {
    v1 = v16;
    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_1883FF618();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_188507D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1884061E0;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)();
}

uint64_t CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)()
{
  sub_1883F7120();
  v2 = v1;
  v4 = v3;
  memcpy((v0 + 16), v5, 0x50uLL);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_18842C524;

  return sub_188506CA4(v4, v6, v7, v0 + 16, v2);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.handleEvent(_:syncEngine:)()
{
  sub_1883F653C();
  sub_1883F8340(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = sub_1883FDA74(v4);
  *v5 = v6;
  v7 = sub_1883FEDC8(v5);

  return v8(v7);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  sub_1883F9F34(v9, v10, v11, v12, v13);
  sub_1883F8F90();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1883FDA74(v15);
  *v16 = v17;
  v16[1] = sub_188442BE4;
  sub_1883F8AB8();
  sub_1883F614C();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  sub_1883F9F34(v9, v10, v11, v12, v13);
  sub_1883F8F90();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1883FDA74(v15);
  *v16 = v17;
  v16[1] = sub_188442BE4;
  sub_1883F8AB8();
  sub_1883F614C();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)()
{
  sub_1883F653C();
  sub_1883F8340(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = sub_1883FDA74(v4);
  *v5 = v6;
  v7 = sub_1883FEDC8(v5);

  return v8(v7);
}

uint64_t sub_188508260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1884FEB54;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)();
}

uint64_t dispatch thunk of CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  sub_1883F9F34(v9, v10, v11, v12, v13);
  sub_1883F8F90();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1883FDA74(v15);
  *v16 = v17;
  v16[1] = sub_1884FEB54;
  sub_1883F8AB8();
  sub_1883F614C();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_18850841C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1884FEB54;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)();
}

uint64_t dispatch thunk of CKSyncEngineDelegatePrivate.relatedBundleIDs(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  sub_1883F9F34(v9, v10, v11, v12, v13);
  sub_1883F8F90();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1883FDA74(v15);
  *v16 = v17;
  v16[1] = sub_18850863C;
  sub_1883F8AB8();
  sub_1883F614C();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1885085E0()
{
  sub_188504908(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_188508610()
{
  sub_1885085E0();

  return MEMORY[0x1EEE6DEF0](v0);
}

id CKSyncEngine.Event.AccountChange.changeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1884D1670(v2, v3, v4);
}

uint64_t CKSyncEngine.Event.DidFetchChanges.context.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(a1, v1, 0x50uLL);
  return sub_1883FAB38(__dst, &v4);
}

id sub_1885086DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;

  return v5;
}

void *CKSyncEngine.Event.DidFetchAsset.error.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_188508764(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  sub_188423CCC(a1, a2);
  return v6;
}

id sub_1885087DC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPreviousUser:a1 currentUser:a2];

  return v4;
}

unint64_t CKSyncEngine.Event.AccountChange.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v15 = 0;
      v10 = v2;
      v11 = v1;
      _StringGuts.grow(_:)(51);
      sub_1883F7DC8();
      MEMORY[0x18CFD5140](0x43746E756F636341, 0xED000065676E6168);
      sub_188403810();
      MEMORY[0x18CFD5140](0xD00000000000001DLL);
      v12 = [v10 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8BE4();

      sub_1883FEAE8();

      MEMORY[0x18CFD5140](0x6E6572727563203ELL, 0xEE003D7265735574);
      v13 = [v11 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8BE4();

      sub_1883FEAE8();

      sub_1883FA058();

      return v15;
    }

    v3 = v2;
    _StringGuts.grow(_:)(28);

    sub_1883F9424();
    v15 = 0xD000000000000024;
    v4 = [v3 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8BE4();

    sub_1883FEAE8();

    sub_1883FA058();
    v5 = sub_1883F7E8C();
    v7 = 1;
  }

  else
  {
    v8 = v2;
    _StringGuts.grow(_:)(26);

    sub_1883F9424();
    v15 = 0xD000000000000022;
    v9 = [v8 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8BE4();

    sub_1883FEAE8();

    sub_1883FA058();
    v5 = sub_1883F7E8C();
    v7 = 0;
  }

  sub_18844CAB0(v5, v6, v7);
  return v15;
}

uint64_t CKSyncEngine.Event.FetchedDatabaseChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1883F8FA0();
  _StringGuts.grow(_:)(34);

  sub_1883F9424();
  sub_1883F8C80();
  v3 = MEMORY[0x18CFD5330](v2, &type metadata for CKDatabase.DatabaseChange.Modification);
  MEMORY[0x18CFD5140](v3);

  sub_1883F98FC();
  v4 = MEMORY[0x18CFD5330](v1, &type metadata for CKDatabase.DatabaseChange.Deletion);
  MEMORY[0x18CFD5140](v4);

  sub_1883FA058();
  return v6;
}

uint64_t CKSyncEngine.Event.FetchedRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_18840489C(0, v3, 0);
    v4 = v17;
    v5 = (v2 + 32);
    do
    {
      v6 = *v5;
      v7 = [v6 conciseDescription];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v16 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_18840489C((v11 > 1), v12 + 1, 1);
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v5;
      --v3;
    }

    while (v3);
  }

  sub_1883F8FA0();
  _StringGuts.grow(_:)(34);

  sub_1883F9424();
  sub_1883F8C80();
  MEMORY[0x18CFD5330](v4, MEMORY[0x1E69E6158]);
  sub_1883F8BE4();

  sub_1883FEAE8();

  sub_1883F98FC();
  v14 = MEMORY[0x18CFD5330](v1, &type metadata for CKDatabase.RecordZoneChange.Deletion);
  MEMORY[0x18CFD5140](v14);

  sub_1883FA058();
  return v16;
}

uint64_t CKSyncEngine.Event.SentDatabaseChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1883F8FA0();
  _StringGuts.grow(_:)(76);
  sub_1883F7DC8();
  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000013);
  MEMORY[0x18CFD5140](0x6F5A646576617320, 0xEC0000003D73656ELL);
  v4 = sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  v5 = MEMORY[0x18CFD5330](v2, v4);
  MEMORY[0x18CFD5140](v5);

  sub_188403810();
  MEMORY[0x18CFD5140]();
  v6 = MEMORY[0x18CFD5330](v1, &type metadata for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave);
  MEMORY[0x18CFD5140](v6);

  sub_188403810();
  MEMORY[0x18CFD5140]();
  v7 = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v8 = MEMORY[0x18CFD5330](v3, v7);
  MEMORY[0x18CFD5140](v8);

  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000013);
  type metadata accessor for CKError(0);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v9 = Dictionary.description.getter();
  MEMORY[0x18CFD5140](v9);

  sub_1883FA058();
  return v11;
}

char *CKSyncEngine.Event.SentRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = sub_1883F4C9C(*v0);
  v5 = MEMORY[0x1E69E7CC0];
  v23 = v3;
  if (!v4)
  {
LABEL_10:
    _StringGuts.grow(_:)(84);
    MEMORY[0x18CFD5140](60, 0xE100000000000000);
    sub_18840AF08();
    MEMORY[0x18CFD5140](0xD000000000000015);
    MEMORY[0x18CFD5140](0x6552646576617320, 0xEE003D7364726F63);
    v18 = MEMORY[0x18CFD5330](v5, MEMORY[0x1E69E6158]);
    v20 = v19;

    MEMORY[0x18CFD5140](v18, v20);

    sub_18840AF08();
    MEMORY[0x18CFD5140]();
    MEMORY[0x18CFD5330](v1, &type metadata for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave);
    sub_1883FE048();

    sub_18840AF08();
    MEMORY[0x18CFD5140]();
    v21 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    v22 = MEMORY[0x18CFD5330](v23, v21);
    MEMORY[0x18CFD5140](v22);

    sub_18840AF08();
    MEMORY[0x18CFD5140](0xD000000000000015);
    type metadata accessor for CKError(0);
    sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
    Dictionary.description.getter();
    sub_1883FE048();

    sub_1883F8358();
    return 0;
  }

  v6 = v4;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_18840489C(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v24;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFD59D0](v8, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 conciseDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_18840489C((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t CKSyncEngine.Event.WillFetchChanges.description.getter()
{
  memcpy(v4, v0, sizeof(v4));
  sub_1883F9424();
  v5 = 0xD00000000000001ALL;
  v6 = v1;
  Changes = CKSyncEngine.FetchChangesContext.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return v5;
}

uint64_t CKSyncEngine.Event.WillFetchRecordZoneChanges.description.getter()
{
  sub_1883F9424();
  sub_1883F8C80();
  v1 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v3;
}

uint64_t CKSyncEngine.Event.DidFetchRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1883F9454();
    MEMORY[0x18CFD5140](v4, 0xE700000000000000);
    v5 = _convertErrorToNSError(_:)();
    v6 = [v5 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x18CFD5140](v7, v9);
  }

  _StringGuts.grow(_:)(16);

  sub_1883F9424();
  sub_1883F8C80();
  v10 = [v2 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x18CFD5140](v11, v13);

  MEMORY[0x18CFD5140](0, 0xE000000000000000);

  sub_1883FA058();
  return 0;
}

uint64_t CKSyncEngine.Event.DidFetchChanges.description.getter()
{
  memcpy(v5, v0, sizeof(v5));
  sub_1883F8AD0();
  v6 = v2;
  v7 = v1;
  Changes = CKSyncEngine.FetchChangesContext.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return v6;
}

uint64_t CKSyncEngine.Event.WillSendChanges.description.getter()
{
  sub_1884057A4();
  sub_1884147BC();
  sub_1883FE048();

  sub_1883F8358();
  return v1;
}

uint64_t CKSyncEngine.Event.DidSendChanges.description.getter()
{
  sub_1884057A4();
  sub_1884147BC();
  sub_1883FE048();

  sub_1883F8358();
  return v1;
}

uint64_t CKSyncEngine.Event.WillFetchAsset.description.getter()
{
  sub_1883F9424();
  sub_1883F8C80();
  v1 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v3;
}

uint64_t CKSyncEngine.Event.FetchedAsset.description.getter()
{
  sub_1883F9424();
  sub_1883F8C80();
  v1 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v3;
}

unint64_t CKSyncEngine.Event.DidFetchAsset.description.getter()
{
  v3 = *v0;
  v4 = v0[1];
  _StringGuts.grow(_:)(22);

  sub_1883F9424();
  v5 = [v3 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  MEMORY[0x18CFD5140](v1, v2);

  v6 = sub_1883F9454();
  MEMORY[0x18CFD5140](v6, 0xE700000000000000);
  sub_18844E6FC(&qword_1EA90E4A8, &qword_1886FB3C8);
  v7 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v7);

  sub_1883F8358();
  return 0xD000000000000015;
}

uint64_t static CKSyncEngine.Event.AccountChange.ChangeType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
      v9 = sub_1883F8538();
      sub_1884D1670(v9, v10, 0);
      v11 = sub_1883FB5D4();
      sub_1884D1670(v11, v12, 0);
      sub_1883F7E8C();
      v8 = static NSObject.== infix(_:_:)();
      LOBYTE(v2) = 0;
      LOBYTE(v3) = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
      LOBYTE(v2) = 1;
      v4 = sub_1883F8538();
      sub_1884D1670(v4, v5, 1u);
      v6 = sub_1883FB5D4();
      sub_1884D1670(v6, v7, 1u);
      sub_1883F7E8C();
      v8 = static NSObject.== infix(_:_:)();
      LOBYTE(v3) = 1;
      goto LABEL_13;
    }

LABEL_10:
    v17 = sub_1883F8538();
    sub_1884D1670(v17, v18, v3);
    v19 = sub_1883FB5D4();
    sub_1884D1670(v19, v20, v2);
    v8 = 0;
    goto LABEL_13;
  }

  if (v3 != 2)
  {
    goto LABEL_10;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  LOBYTE(v2) = 2;
  v13 = sub_1883F8538();
  sub_1884D1670(v13, v14, 2u);
  v15 = sub_1883FB5D4();
  sub_1884D1670(v15, v16, 2u);
  sub_1883F7E8C();
  if (static NSObject.== infix(_:_:)())
  {
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v3) = 2;
LABEL_13:
  v21 = sub_1883FB5D4();
  sub_18844CAB0(v21, v22, v2);
  v23 = sub_1883F8538();
  sub_18844CAB0(v23, v24, v3);
  return v8 & 1;
}

uint64_t CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.description.getter()
{
  v1 = *v0;
  sub_1883F8FA0();
  _StringGuts.grow(_:)(21);
  sub_1883F7DC8();
  MEMORY[0x18CFD5140](0x6F5A64656C696146, 0xEE0065766153656ELL);
  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  v3 = sub_1883F9454();
  MEMORY[0x18CFD5140](v3, 0xE700000000000000);
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v7;
}

uint64_t CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.description.getter()
{
  v1 = *v0;
  sub_1883F8FA0();
  _StringGuts.grow(_:)(23);
  sub_1883F7DC8();
  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000010);
  MEMORY[0x18CFD5140](0x3D64726F63657220, 0xE800000000000000);
  v2 = [v1 conciseDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  v3 = sub_1883F9454();
  MEMORY[0x18CFD5140](v3, 0xE700000000000000);
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v7;
}

id sub_188509AC0()
{
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C5E0, off_1E70BA878);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithModifications:isa deletions:v2];

  return v3;
}

id sub_188509B74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);

  v6 = [v3 initWithRecordID:a1 recordType:v5];

  return v6;
}

id sub_188509BE0()
{
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C5D0, off_1E70BA868);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v0 initWithModifications:isa deletions:v2 zoneAttributesModifications:v3];

  return v4;
}

id sub_188509CD8()
{
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &unk_1EA90C340, off_1E70BA830);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v0 initWithSavedZones:isa failedZoneSaves:v2 deletedZoneIDs:v3 failedZoneDeletes:v4];

  return v5;
}

id sub_188509E44(void *a1, void *a2, SEL *a3)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = [v3 *a3];

  return v8;
}

id sub_188509EB4()
{
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C558, off_1E70BA828);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v0 initWithSavedRecords:isa failedRecordSaves:v2 deletedRecordIDs:v3 failedRecordDeletes:v4];

  return v5;
}

id sub_18850A020(void *a1, void *a2, SEL *a3)
{
  v5 = v3;
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 *a3];

  return v9;
}

uint64_t sub_18850A0B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_18850A0FC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18850A164(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) & 1 | (a2 << 60);
  *(result + 48) &= 1uLL;
  *(result + 64) = v2;
  return result;
}

__n128 sub_18850A184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18850A198(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18850A1D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_18850A254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return sub_1883F9AE0(result);
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return sub_1883FDE34(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return sub_1883FDE34(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return sub_1883F9AE0(result);
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

      return sub_1883FDE34(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1883FDE34(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 8))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

void *sub_18850A470(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A4B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

void *sub_18850A4F0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

id sub_18850A598@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recordsToSave];
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v1 recordIDsToDelete];
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v1 atomicByZone];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.recordsToSave.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.recordIDsToDelete.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18850A774, 0, 0);
}

uint64_t sub_18850A774()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  *(v0 + 64) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1;
    while (1)
    {
      *(v0 + 112) = v1;
      *(v0 + 120) = v7;
      *(v0 + 96) = v1;
      *(v0 + 104) = v7;
      *(v0 + 80) = v6;
      *(v0 + 88) = v7;
      *(v0 + 72) = v5;
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v8 = v3 + 16 * v6;
      v9 = *(v8 + 32);
      *(v0 + 128) = v9;
      v10 = *(v8 + 40);
      v11 = v9;
      v12 = v11;
      if (v10 != 1)
      {
        break;
      }

      v13 = [v11 size];
      if (__OFADD__(v5, v13))
      {
        goto LABEL_48;
      }

      if (v13 + v5 > 1572864)
      {

        if (qword_1EA90C9F0 == -1)
        {
LABEL_26:
          v26 = type metadata accessor for Logger();
          sub_1883F85F4(v26, qword_1EA90C9F8);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          v29 = sub_1883FA260(v28);
          v30 = *(v0 + 128);
          if (v29)
          {
            v31 = sub_1883F9468();
            *v31 = 0;
            _os_log_impl(&dword_1883EA000, v27, v28, "Next record will exceed max bytes per batch", v31, 2u);
            sub_1883F7B60();
          }

          v7 = *(v0 + 88);
          goto LABEL_40;
        }

LABEL_51:
        sub_1883F74A0();
        swift_once();
        goto LABEL_26;
      }

      v14 = v12;
      MEMORY[0x18CFD52F0]();
      v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
      {
        sub_1883F8DD4(v15);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = *v2;
      v16 = [v14 size];
      v17 = __OFADD__(v5, v16);
      v5 += v16;
      if (v17)
      {
        goto LABEL_49;
      }

      if (v1 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v18, v19))
      {
        goto LABEL_50;
      }

      if (v18 + v19 >= 250)
      {

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1883F85F4(v32, qword_1EA90C9F8);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        v35 = sub_1883FA260(v34);
        v36 = *(v0 + 128);
        if (v35)
        {
          *sub_1883F9468() = 0;
          v39 = "Reached max record count per batch";
          goto LABEL_37;
        }

LABEL_38:

        goto LABEL_40;
      }

      if (v5 >= 1572864)
      {

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1883F85F4(v40, qword_1EA90C9F8);
        v33 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        v42 = sub_1883FA260(v41);
        v36 = *(v0 + 128);
        if (v42)
        {
          *sub_1883F9468() = 0;
          v39 = "Current batch is over the max bytes per batch";
LABEL_37:
          sub_1883FE7A8(&dword_1883EA000, v37, v38, v39);
          sub_1883F7B60();
        }

        goto LABEL_38;
      }

      v20 = *(v0 + 64);
      v21 = *(v0 + 80) + 1;

      if (v21 == v20)
      {

        goto LABEL_40;
      }

      v6 = *(v0 + 80) + 1;
      v3 = *(v0 + 40);
    }

    v22 = *(v0 + 48);
    v23 = v11;
    v47 = (v22 + *v22);
    v24 = swift_task_alloc();
    *(v0 + 136) = v24;
    *v24 = v0;
    sub_1883F9F58(v24);

    return v47(v23);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v43 = MEMORY[0x1E69E7CC0];
    if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]) || sub_1883F4C9C(v7))
    {
      v44 = *(v0 + 32);
      *v44 = v43;
      *(v44 + 8) = v7;
      *(v44 + 16) = 0;
    }

    else
    {
      v46 = *(v0 + 32);

      *v46 = 0;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
    }

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_18850AC4C(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18850AD4C, 0, 0);
}

uint64_t sub_18850AD4C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = [*(v0 + 144) size];
    v4 = v3 + v2;
    if (__OFADD__(v2, v3))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v4 <= 1572864)
    {
      v7 = (v0 + 104);
    }

    else
    {
      v5 = *(v0 + 112);
      if (v5 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_8;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v8 = *(v0 + 128);

        v2 = *(v0 + 96);
        goto LABEL_53;
      }

      v7 = (v0 + 120);
      v6 = *(v0 + 120);
      if (v6 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_8;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

    v19 = *v7;
    v21 = v1;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC();
    if (v23)
    {
      sub_1883F8DD4(v22);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v24 = *(v0 + 128);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = *(v0 + 16);
    if (v4 > 1572864)
    {
LABEL_53:

      if (qword_1EA90C9F0 == -1)
      {
LABEL_54:
        v55 = type metadata accessor for Logger();
        sub_1883F85F4(v55, qword_1EA90C9F8);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        v58 = sub_1883FA260(v57);
        v59 = *(v0 + 128);
        if (v58)
        {
          *sub_1883F9468() = 0;
          sub_1883FE7A8(&dword_1883EA000, v60, v61, "Next record will exceed max bytes per batch");
          sub_1883F7B60();
        }

        v26 = *(v0 + 88);
        goto LABEL_57;
      }

LABEL_69:
      sub_1883F74A0();
      swift_once();
      goto LABEL_54;
    }

    v20 = *(v0 + 16);
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = type metadata accessor for Logger();
    sub_1883F85F4(v10, qword_1EA90C9F8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_1883EA000, v12, v13, "No record to save for record ID %@", v16, 0xCu);
      sub_188462FE0(v17);
      sub_1883F7B60();
      sub_1883F7B60();
      v15 = v12;
      v12 = *(v0 + 128);
    }

    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
  }

  v25 = *(v0 + 120);
  v26 = *(v0 + 88);
  while (1)
  {
    if (v20 >> 62)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v27 + v28 >= 250)
    {

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1883F85F4(v42, qword_1EA90C9F8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v45 = sub_1883FA260(v44);
      v46 = *(v0 + 128);
      if (!v45)
      {
        goto LABEL_48;
      }

      v47 = sub_1883F9468();
      *v47 = 0;
      v48 = "Reached max record count per batch";
      goto LABEL_47;
    }

    if (v4 >= 1572864)
    {

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1883F85F4(v49, qword_1EA90C9F8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v50 = sub_1883FA260(v44);
      v46 = *(v0 + 128);
      if (!v50)
      {
        goto LABEL_48;
      }

      v47 = sub_1883F9468();
      *v47 = 0;
      v48 = "Current batch is over the max bytes per batch";
LABEL_47:
      _os_log_impl(&dword_1883EA000, v43, v44, v48, v47, 2u);
      sub_1883F7B60();
LABEL_48:

      goto LABEL_57;
    }

    v29 = *(v0 + 64);
    v30 = *(v0 + 80) + 1;

    if (v30 == v29)
    {

LABEL_57:
      if (sub_1883F4C9C(v2) || sub_1883F4C9C(v26))
      {
        v62 = *(v0 + 32);
        *v62 = v2;
        *(v62 + 8) = v26;
        *(v62 + 16) = 0;
      }

      else
      {
        v64 = *(v0 + 32);

        *v64 = 0;
        *(v64 + 8) = 0;
        *(v64 + 16) = 0;
      }

      v63 = *(v0 + 8);

      return v63();
    }

    v31 = *(v0 + 80) + 1;
    *(v0 + 112) = v20;
    *(v0 + 120) = v25;
    *(v0 + 96) = v2;
    *(v0 + 104) = v19;
    *(v0 + 80) = v31;
    *(v0 + 88) = v26;
    *(v0 + 72) = v4;
    v32 = *(v0 + 40);
    if (v31 >= *(v32 + 16))
    {
      goto LABEL_65;
    }

    v33 = v32 + 16 * v31;
    v34 = *(v33 + 32);
    *(v0 + 128) = v34;
    v35 = *(v33 + 40);
    v36 = v34;
    v37 = v36;
    if (v35 != 1)
    {
      break;
    }

    v38 = [v36 size];
    if (__OFADD__(v4, v38))
    {
      goto LABEL_66;
    }

    if (v38 + v4 > 1572864)
    {
      goto LABEL_53;
    }

    v39 = v37;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC();
    if (v23)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = *(v0 + 24);
    v40 = [v39 size];
    v19 = v26;
    v25 = v26;
    v41 = __OFADD__(v4, v40);
    v4 += v40;
    if (v41)
    {
      goto LABEL_67;
    }
  }

  v51 = *(v0 + 48);
  v52 = v36;
  v65 = (v51 + *v51);
  v53 = swift_task_alloc();
  *(v0 + 136) = v53;
  *v53 = v0;
  sub_1883F9F58(v53);

  return v65(v52);
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(recordsToSave:recordIDsToDelete:atomicByZone:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  if (!v46)
  {

    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v6 = 0;
  v7 = 0;
  v8 = (a1 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    v13 = v11;
    v3 = v13;
    if (v12 != 1)
    {
      v45 = v10;
      v10 = v13;
      v20 = a2();
      if (!v20)
      {
        v43 = v3;
        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_1883F85F4(v25, qword_1EA90C9F8);
        v26 = v10;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v42 = a3;
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v11;
          v31 = v26;
          _os_log_impl(&dword_1883EA000, v27, v28, "No record to save for record ID %@", v29, 0xCu);
          sub_188462FE0(v30);
          a3 = v42;
          sub_1883F7B60();
          sub_1883F7B60();
          v26 = v27;
          v27 = v31;
        }

        v10 = v45;
        v3 = v43;
        goto LABEL_27;
      }

      v21 = v20;
      v22 = [v20 size];
      v19 = __OFADD__(v6, v22);
      v6 += v22;
      if (v19)
      {
        goto LABEL_65;
      }

      if (v6 <= 1572864)
      {
        goto LABEL_18;
      }

      if (v45 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_41;
        }
      }

      else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      if (!(v9 >> 62))
      {
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

LABEL_18:
        v23 = v21;
        MEMORY[0x18CFD52F0]();
        v24 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
        {
          sub_1883F8DD4(v24);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v49;
        if (v6 > 1572864)
        {
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }

LABEL_41:

      v10 = v45;
LABEL_42:

      if (qword_1EA90C9F0 == -1)
      {
LABEL_43:
        v34 = type metadata accessor for Logger();
        sub_1883F85F4(v34, qword_1EA90C9F8);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!sub_1883FA260(v36))
        {
          goto LABEL_55;
        }

        v37 = sub_1883F9468();
        *v37 = 0;
        v38 = "Next record will exceed max bytes per batch";
        goto LABEL_54;
      }

LABEL_66:
      sub_1883F74A0();
      swift_once();
      goto LABEL_43;
    }

    v14 = [v13 size];
    if (__OFADD__(v6, v14))
    {
      goto LABEL_63;
    }

    if (v14 + v6 > 1572864)
    {
      goto LABEL_42;
    }

    v15 = v3;
    v3 = v3;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC();
    if (v17)
    {
      sub_1883F8DD4(v16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v48;
    v18 = [v3 size];
    v19 = __OFADD__(v6, v18);
    v6 += v18;
    if (v19)
    {
      goto LABEL_64;
    }

    v3 = v15;
LABEL_27:
    if (v10 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >> 62)
    {
      v33 = __CocoaSet.count.getter();
    }

    else
    {
      v33 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v32, v33))
    {
      goto LABEL_62;
    }

    if (v32 + v33 >= 250)
    {
      break;
    }

    v4 = a1;
    if (v6 >= 1572864)
    {

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883F85F4(v40, qword_1EA90C9F8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (sub_1883FA260(v36))
      {
        v37 = sub_1883F9468();
        *v37 = 0;
        v38 = "Current batch is over the max bytes per batch";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    ++v7;

    v8 += 16;
    if (v46 == v7)
    {

      goto LABEL_56;
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1883F85F4(v39, qword_1EA90C9F8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (sub_1883FA260(v36))
  {
    v37 = sub_1883F9468();
    *v37 = 0;
    v38 = "Reached max record count per batch";
LABEL_54:
    _os_log_impl(&dword_1883EA000, v35, v36, v38, v37, 2u);
    sub_1883F7B60();
  }

LABEL_55:

LABEL_56:
  result = sub_1883F4C9C(v10);
  if (result || (result = sub_1883F4C9C(v9)) != 0)
  {
    *a3 = v10;
    *(a3 + 8) = v9;
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

char *CKSyncEngine.RecordZoneChangeBatch.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = sub_1883F4C9C(*v0);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v27 = MEMORY[0x1E69E7CC0];
    result = sub_18840489C(0, v4 & ~(v4 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v26 = v3;
    v8 = 0;
    v5 = v27;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFD59D0](v8, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 conciseDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = sub_1883F8DD4(v15);
        sub_18840489C(v18, v16 + 1, 1);
      }

      ++v8;
      *(v27 + 16) = v16 + 1;
      v17 = v27 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    v3 = v26;
  }

  if (v3)
  {
    v19 = 0xEF313D656E6F5A79;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (v3)
  {
    v20 = 0x4263696D6F746120;
  }

  else
  {
    v20 = 0;
  }

  _StringGuts.grow(_:)(44);

  MEMORY[0x18CFD5140](v20, v19);

  MEMORY[0x18CFD5140](0x7364726F63657220, 0xEF3D657661536F54);
  v21 = MEMORY[0x18CFD5330](v5, MEMORY[0x1E69E6158]);
  v23 = v22;

  MEMORY[0x18CFD5140](v21, v23);

  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188703570);
  v24 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v25 = MEMORY[0x18CFD5330](v1, v24);
  MEMORY[0x18CFD5140](v25);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_18850BC60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18850BCA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18850BCF0()
{
  v1 = [*(v0 + 16) lastAccount];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 accountInfo];
  v4 = [v2 userRecordID];
  sub_188505EAC(v3);
  v6 = v5;

  if (!v6)
  {

    return 0;
  }

  return v3;
}

void sub_18850BDBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(v4 + 16);
  if (a1)
  {
    type metadata accessor for CKSyncEngineAccount(0);
    v8 = sub_1883F7FB4();
    sub_1884D123C(v8, v9, v10, v11);
    v12 = a4;
    v13 = sub_188505194(a1, a4);
  }

  else
  {
    v13 = 0;
  }

  [v7 setLastAccount_];

  v14 = sub_1883F7FB4();

  sub_1884D11E8(v14, v15, v16, v17);
}

void sub_18850BE74(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = [objc_allocWithZone(CKSyncEnginePendingAssetSync) initWithAsset:*a1 type:0];
  [v4 markAssetSync:v5 inFlight:a2 & 1];
}

void sub_18850BEFC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(CKSyncEnginePendingAssetSync) initWithAsset:*a1 type:0];
  [v2 removeInFlightAssetSync_];
}

id CKSyncEngine.State.serverChangeTokenForDatabase.getter()
{
  v1 = [*(v0 + 16) serverChangeTokenForDatabase];

  return v1;
}

void CKSyncEngine.State.serverChangeTokenForDatabase.setter(void *a1)
{
  [*(v1 + 16) setServerChangeTokenForDatabase_];
}

void sub_18850BFF4(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = *(v2 + 16);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_18840578C();
      }

      else
      {
        v8 = sub_188405008();
      }

      v9 = v8;
      ++v6;
      [v7 setNeedsToFetchChanges:a1 & 1 forRecordZoneID:v8];
    }

    while (v5 != v6);
  }
}

void sub_18850C0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = MEMORY[0x18CFD5010](a1);
  }

  else
  {
    v4 = 0;
  }

  [v3 setExistingDatabaseSubscriptionID_];
}

Swift::Int sub_18850C174()
{
  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v0 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v0 = MEMORY[0x1E69E7CD0];
  }

  v19 = v0;
  v1 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  result = sub_1883F4C9C(v1);
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18CFD59D0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      sub_188406C1C(&v18, v5);
    }
  }

  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v10 = *(v8 - 1);
      v11 = v10;
      if (v9 == 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v10 zoneID];
      }

      sub_188406C1C(&v18, v12);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = v16;
      sub_188406C1C(&v18, [v17 zoneID]);

      --v14;
    }

    while (v14);
  }

  return v19;
}

uint64_t sub_18850C33C()
{
  v1 = [*(v0 + 16) pendingAutomaticSyncZoneIDs];
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_18850C5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 type];
  if (!v4)
  {
    v5 = 0;
LABEL_5:
    result = [v2 recordID];
    *a1 = result;
    *(a1 + 8) = v5;
    return result;
  }

  if (v4 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  sub_1883F75C8();
  _StringGuts.grow(_:)(42);

  sub_1883F9424();
  v7 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  sub_1883FDB78();

  sub_1883FDE40();
  result = sub_1883FEDF4("Fatal error", v8, v9, v10, v11, "CloudKit/CKSyncEngineState.swift", v12, v13, 510, v14);
  __break(1u);
  return result;
}

id sub_18850C6B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if ([v2 type])
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(34);

    sub_1883F9424();
    v5 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
    result = sub_1883FEDF4("Fatal error", v6, v7, v8, v9, "CloudKit/CKSyncEngineState.swift", v10, v11, 577, v12);
    __break(1u);
  }

  else
  {
    result = [v2 asset];
    *a1 = result;
  }

  return result;
}

id sub_18850C9F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 type];
  if (v4 == 1)
  {
    v5 = [v2 zoneID];
    v6 = 1;
LABEL_6:
    result = v5;
    *a1 = result;
    *(a1 + 8) = v6;
    return result;
  }

  if (v4)
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(39);

    sub_1883F9424();
    v9 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
    v16 = 539;
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v5 = [v7 zone];
      v6 = 0;
      goto LABEL_6;
    }

    sub_1883F75C8();
    _StringGuts.grow(_:)(43);

    sub_1883F9424();
    v17 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
    v16 = 533;
  }

  result = sub_1883FEDF4("Fatal error", v10, v11, v12, v13, "CloudKit/CKSyncEngineState.swift", v14, v15, v16, v18);
  __break(1u);
  return result;
}

id (*CKSyncEngine.State.hasPendingUntrackedChanges.modify(uint64_t a1))(void **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 hasPendingUntrackedChanges];
  return sub_18850CBD0;
}

void sub_18850CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F9160();
  a21 = v23;
  a22 = v24;
  v26 = [*(v22 + 16) *v25];
  sub_1883F4C5C(0, &qword_1EA90C730, off_1E70BA880);
  sub_1883F9598();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = sub_1883F4C9C(v27);
  if (!v28)
  {
LABEL_10:

    sub_1883F8750();
    return;
  }

  v29 = v28;
  a10 = MEMORY[0x1E69E7CC0];
  sub_18847798C(0, v28 & ~(v28 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a10;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        sub_18840578C();
      }

      else
      {
        v32 = sub_188405008();
      }

      v33 = v32;
      sub_18850C6B4(&a9);

      v34 = a9;
      a10 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_18847798C(v35 > 1, v36 + 1, 1);
        v31 = a10;
      }

      ++v30;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v29 != v30);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_18850D128(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CKSyncEngine.State.serverChangeTokenForDatabase.setter(v1);
}

void (*CKSyncEngine.State.serverChangeTokenForDatabase.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 serverChangeTokenForDatabase];
  return sub_18850D1B4;
}

void sub_18850D1B4(id *a1)
{
  v1 = *a1;
  [a1[1] setServerChangeTokenForDatabase_];
}

CKServerChangeToken_optional __swiftcall CKSyncEngine.State.serverChangeToken(for:)(CKRecordZoneID *a1)
{
  v2 = [*(v1 + 16) serverChangeTokenForZoneID_];

  v3 = v2;
  result.value._data = v4;
  result.value.super.isa = v3;
  result.is_nil = v5;
  return result;
}

uint64_t CKSyncEngine.State.Serialization.init(deprecatedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_18850D240(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18850D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18850D240(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18850D2E4(uint64_t a1)
{
  v2 = sub_188423FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18850D320(uint64_t a1)
{
  v2 = sub_188423FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CKSyncEngine.State.Serialization.encode(to:)(void *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90E760, &qword_1886FD040);
  sub_1883F70DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_188400B68(a1, a1[3]);
  sub_188423C74(v9, v10);
  sub_188423FF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v9;
  v13 = v10;
  sub_18845AE10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_188423CCC(v12, v13);
  return (*(v5 + 8))(v8, v3);
}

uint64_t CKSyncEngine.State.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static CKSyncEngine.PendingRecordZoneChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v5 = v3;
  v6 = v2;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t static CKSyncEngine.PendingDatabaseChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 == 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = [v3 zoneID];
  }

  v8 = v7;
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = [v5 zoneID];
  }

  v10 = v9;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v11 = static NSObject.== infix(_:_:)();

  return v11 & ~(v4 ^ v6) & 1;
}

uint64_t sub_18850D69C()
{
  if (*(v0 + 8))
  {
    v5 = 0x286574656C6564;
  }

  else
  {
    v5 = 0x2865766173;
  }

  v3 = [*v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  MEMORY[0x18CFD5140](v1, v2);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return v5;
}

Swift::Int sub_18850D7AC()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850D824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 8);
  v9 = *v4;
  v10 = v6;
  Hasher.init(_seed:)();
  a4(v8);
  return Hasher._finalize()();
}

uint64_t CKSyncEngine.PendingAssetSync.description.getter()
{
  v3 = [*v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  MEMORY[0x18CFD5140](v1, v2);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return 0x286863746566;
}

uint64_t static CKSyncEngine.PendingAssetSync.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v4 = v2;
  v5 = v3;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

Swift::Int CKSyncEngine.PendingAssetSync.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850DA24(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_18850DA80()
{
  result = qword_1EA90C670;
  if (!qword_1EA90C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C670);
  }

  return result;
}

unint64_t sub_18850DAD8()
{
  result = qword_1EA90E770;
  if (!qword_1EA90E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E770);
  }

  return result;
}

unint64_t sub_18850DB30()
{
  result = qword_1EA90C748;
  if (!qword_1EA90C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C748);
  }

  return result;
}

uint64_t sub_18850DBAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18850DBEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_18850DC54()
{
  result = qword_1EA90E778;
  if (!qword_1EA90E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E778);
  }

  return result;
}

BOOL sub_18850DCD4()
{
  sub_18840C67C();
  v3 = (v2 + 56);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = *(v3 - 2);
    v11[0] = *(v3 - 3);
    v11[1] = v8;
    v11[2] = v6;
    v11[3] = v7;

    v9 = v1(v11);

    if (v0)
    {
      break;
    }

    v3 += 4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

BOOL sub_18850DD84()
{
  sub_18840C67C();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_18850DE28()
{
  sub_1883F8FB8();
  sub_18850DE48(v0, v1, v2, v3);
  return v4 & 1;
}

void sub_18850DE48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x18CFD59D0](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_18850DF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_18841BAFC();
  sub_1883F4C5C(v7, v8, v9);
  sub_18841BAFC();
  sub_1883F66E4(v10, v11, v12);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1883F7BC0();
  v14 = Dictionary.init(dictionaryLiteral:)();

  if (a2)
  {
    v15 = a2;
  }

  else
  {
    type metadata accessor for SyncEngine(0);
    v15 = sub_1883F57B8();
  }

  v32 = v5;
  v33 = v6;
  v34 = v15;
  v35 = v13;
  v36 = v14;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  v40 = 3;
  sub_1883F697C(&v32, &v30);
  v16 = a2;
  sub_1883F69F4(v15);
  v18 = v17;
  if (v17 && (v19 = sub_1883F75D8(), (sub_1883F7624(v19, v20, v21, v18) & 1) == 0))
  {
  }

  else
  {
    v29 = v6;
    v22 = v32;
    v23 = v33;
    type metadata accessor for SyncEngine(0);
    v30 = v22;
    v31 = v23;
    v13 = MEMORY[0x1E69E7CC0];

    v24 = sub_1883F6734(&v30);
    v26 = v25;

    v27 = v26;
    v6 = v29;
    sub_1883F60E8(v24, v27, v15);
  }

  result = sub_1883F7768(&v32);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v15;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 3;
  return result;
}

Swift::Bool __swiftcall CKSyncEngine.FetchChangesOptions.Scope.contains(_:)(CKRecordZoneID *a1)
{
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x1EEE9AC00](a1);
      sub_1884137CC();
      sub_1883F8FB8();
      sub_18850DE48(v2, v3, v4, v5);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1884137CC();
    sub_1883F8FB8();
    sub_18850DE48(v7, v8, v9, v10);
    v6 = v11 ^ 1;
  }

  return v6 & 1;
}

uint64_t CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void CKSyncEngine.FetchAssetOptions.init(asset:operationGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 size];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() progressWithTotalUnitCount_];
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      type metadata accessor for SyncEngine(0);
      v8 = sub_1883F57B8();
    }

    v9 = v8;
    v10 = a1;
    v11 = v7;
    v12 = a2;
    sub_1883F69F4(v9);
    v14 = v13;
    if (v13 && (v15 = sub_1883F75D8(), (sub_1883F7624(v15, v16, v17, v14) & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine(0);
      sub_188410234();
      v18 = sub_1884E02F8();
      v20 = v19;

      sub_1883F60E8(v18, v20, v9);
    }

    *a3 = v9;
    a3[1] = v10;
    a3[2] = v11;
  }
}

BOOL sub_18850E3B8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.init(fetchChangesPriority:sendChangesPriority:syncEnabled:assetContentsFetchType:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  v10 = a2[1];
  v11 = *a4;
  v12 = a4[1];

  *a5 = v7;
  *(a5 + 8) = v8;

  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = a3;

  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._AssetOptions.init(fetchPriority:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

Swift::Bool __swiftcall CKSyncEngine.SendChangesOptions.Scope.contains(_:)(CKRecordID a1)
{
  v2 = *(v1 + 8);
  v3 = 1;
  switch(v2)
  {
    case 1:
      v10 = [(objc_class *)a1.super.isa zoneID];
      v11 = sub_188442F94(v10);
      MEMORY[0x1EEE9AC00](v11);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v12, v13, sub_1883F4C9C);
      v3 = v14;

      break;
    case 2:
      v15 = sub_188442F94(a1.super.isa);
      MEMORY[0x1EEE9AC00](v15);
      sub_1883F7E10();
      sub_1883F8FB8();
      sub_1883FF51C(v16, v17, v18, v19);
      v3 = v20;
      break;
    case 3:
      return v3 & 1;
    default:
      v4 = [(objc_class *)a1.super.isa zoneID];
      v5 = sub_188442F94(v4);
      MEMORY[0x1EEE9AC00](v5);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v6, v7, sub_1883F4C9C);
      v9 = v8;

      v3 = v9 ^ 1;
      break;
  }

  return v3 & 1;
}

Swift::Int CKSyncEngine._AutomaticSyncOptions._SyncPriority.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_1883FDECC();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850E81C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1883FDECC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s8CloudKit12CKSyncEngineC21_AutomaticSyncOptionsV01_F8PriorityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.fetchChangesPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.sendChangesPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.assetContentsFetchType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t static CKSyncEngine._AutomaticSyncOptions._ZoneOptions.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 == v9)
    {
LABEL_14:
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      sub_18841BAFC();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }

    return 0;
  }

  sub_1884433A4();
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v14 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._AssetOptions.fetchPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t static CKSyncEngine._AutomaticSyncOptions._AssetOptions.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

double CKSyncEngine._AutomaticSyncOptions.defaultZoneOption.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[5];
  v8 = v1[6];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return result;
}

__n128 CKSyncEngine._AutomaticSyncOptions.defaultZoneOption.setter()
{
  sub_188404A04();
  v8 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 32);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);

  *v0 = v8;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  sub_1883FE1B8();
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.defaultAssetOption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.zoneOptions.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.assetOptions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.init(zoneOptions:assetOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  *a3 = 0x6C616D726F6ELL;
  *(a3 + 8) = 0xE600000000000000;

  *(a3 + 16) = 0x6C616D726F6ELL;
  *(a3 + 24) = 0xE600000000000000;
  *(a3 + 32) = 1;

  *(a3 + 40) = 0xD000000000000012;
  *(a3 + 48) = 0x8000000188702670;

  *(a3 + 56) = 0x6C616D726F6ELL;
  *(a3 + 64) = 0xE600000000000000;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  Dictionary.init(dictionaryLiteral:)();
  sub_1884433A4();
  sub_1883F4C5C(v6, v7, v8);
  sub_1884433A4();
  sub_1883F66E4(v9, v10, v11);
  Dictionary.init(dictionaryLiteral:)();
  v12 = *MEMORY[0x1E696A3A8];

  *(a3 + 80) = a2;
  *(a3 + 88) = v12;
  *(a3 + 72) = a1;
  return result;
}

void sub_18850EF70(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_1883F8578();
    v8 = v7 & v6;
    v35 = (v9 + 63) >> 6;
    v36 = v5;
    v42 = a2;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v40 = (v8 - 1) & v8;
LABEL_11:
      v14 = v10 | (v3 << 6);
      v15 = *(*(v5 + 48) + 8 * v14);
      v16 = *(v5 + 56) + 56 * v14;
      v18 = *v16;
      v17 = *(v16 + 8);
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v41 = *(v16 + 32);
      v21 = *(v16 + 48);
      v39 = *(v16 + 40);
      v22 = v15;

      if (!v15)
      {
        return;
      }

      sub_188486310();
      v24 = v23;
      v26 = v25;

      if ((v26 & 1) == 0 || ((v27 = *(v42 + 56) + 56 * v24, v28 = *(v27 + 16), v29 = *(v27 + 24), v38 = *(v27 + 32), v30 = *(v27 + 40), v37 = *(v27 + 48), *v27 == v18) ? (v31 = v17 == *(v27 + 8)) : (v31 = 0), !v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_34:

        return;
      }

      if (v28 == v20 && v19 == v29)
      {
        if (v41 != v38)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1883F7EE0();
        if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v41 ^ v38))
        {
          goto LABEL_34;
        }
      }

      if (v30 == v39 && v21 == v37)
      {

        v5 = v36;
        v8 = v40;
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v36;
        v8 = v40;
        if ((v34 & 1) == 0)
        {
          return;
        }
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v35)
      {
        return;
      }

      ++v11;
      if (*(v4 + 8 * v3))
      {
        sub_1883FA4B8();
        v40 = v13 & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

double sub_18850F208@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;

  return result;
}

uint64_t sub_18850F220(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v4 = *a1;
  v5 = v1;

  return CKSyncEngine.FetchChangesOptions.scope.setter(&v4, v2);
}

uint64_t CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CKSyncEngine.FetchChangesOptions.zoneConfigurations.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_18850F5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1884DE34C();
  *a1 = result;
  return result;
}

uint64_t sub_18850F5EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F61C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18850F624@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18844C858(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18850F654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F684(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_18850F694(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_18850F6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18850F6F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18850F6F4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_18850F718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18850F74C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18850F74C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_18850F79C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F7CC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_18850F83C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18850F858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850DF40(a1);
  *a2 = result;
  return result;
}

uint64_t CKSyncEngine.FetchChangesContext.options.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  memcpy(a1, (v1 + 8), 0x48uLL);
  return sub_1883F697C(__dst, &v4);
}

uint64_t sub_18850F8DC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return CKSyncEngine.SendChangesOptions.scope.setter(&v3);
}

uint64_t CKSyncEngine.SendChangesOptions.scope.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *v1 = v3;
  *(v1 + 8) = v4;
  v5 = *(v1 + 16);

  v6 = v5;
  sub_1883F69F4(v6);
  sub_1883FE204();
  if (v7 && (v8 = sub_1883F75D8(), (sub_1883F7624(v8, v9, v10, v2) & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine(0);
    v11 = sub_1883FAF04();
    sub_188405EE0(v11, v12, v13, v14, v15, v16, v17, v18, v22);
    sub_1883FC71C();

    v19 = sub_1883F84DC();
    sub_1883F60E8(v19, v20, v6);
  }
}

void sub_18850FA18(uint64_t **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1883FF688(a1);
    v12 = v2;
    sub_1883F69F4(v12);
    v5 = v4;
    if (v4 && (v6 = sub_1883F75D8(), (sub_1883F7624(v6, v7, v8, v5) & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine(0);
      sub_188512740();
      sub_18841BAFC();
      sub_188413094(v9);
      sub_1883FE204();

      v10 = sub_1883FF4BC();
      sub_1883F60E8(v10, v11, v12);
    }
  }
}

uint64_t CKSyncEngine.SendChangesOptions.operationGroup.setter(void *a1)
{
  *(v1 + 16) = a1;

  v4 = a1;
  sub_1883F69F4(v4);
  sub_1883FE204();
  if (v5 && (v6 = sub_1883F75D8(), (sub_1883F7624(v6, v7, v8, v2) & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine(0);
    v9 = sub_1883FAF04();
    sub_188405EE0(v9, v10, v11, v12, v13, v14, v15, v16, v20);
    sub_1883FC71C();

    v17 = sub_1883F84DC();
    sub_1883F60E8(v17, v18, v4);
  }
}

uint64_t CKSyncEngine.SendChangesOptions.Scope.contains(_:)(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v4 = 1;
  switch(v3)
  {
    case 1:
      v12 = v2;
      v13 = [v12 zoneID];
      v14 = sub_188442F94(v13);
      MEMORY[0x1EEE9AC00](v14);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v15, v16, sub_1883F4C9C);
      v4 = v17;

      break;
    case 2:
      v24 = *a1;
      MEMORY[0x1EEE9AC00](a1);
      v23[2] = &v24;
      v19 = v18;
      sub_1883FF51C(sub_1884F9D44, v23, v20, sub_1883F4C9C);
      v4 = v21;

      break;
    case 3:
      return v4 & 1;
    default:
      v5 = v2;
      v6 = [v5 zoneID];
      v7 = sub_188442F94(v6);
      MEMORY[0x1EEE9AC00](v7);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v8, v9, sub_1883F4C9C);
      v11 = v10;

      v4 = v11 ^ 1;
      break;
  }

  return v4 & 1;
}

id sub_18850FDD0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883FDE28();
  sub_1883F4C5C(v1, v2, v3);
  sub_1883FDE28();
  sub_1883F66E4(v4, v5, v6);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v0 initWithExcludedZoneIDs_];

  return v8;
}

id CKSyncEngine.SendChangesContext.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;

  return v4;
}

Swift::Int CKSyncEngine.SyncReason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

void CKSyncEngine.FetchAssetOptions.operationGroup.setter(void *a1)
{
  *v1 = a1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v14 = a1;
  v6 = v5;
  v7 = v4;
  sub_1883F69F4(v14);
  sub_1883FE204();
  if (v8 && (v9 = sub_1883F75D8(), (sub_1883F7624(v9, v10, v11, v2) & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine(0);
    sub_1883FF4BC();
    sub_1884E02F8();
    sub_1883FC71C();
    v12 = sub_1883F84DC();
    sub_1883F60E8(v12, v13, v14);
  }
}

void sub_1885100BC(id **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = (*a1)[1];
    v4 = (*a1)[2];
    v5 = **a1;
    v6 = v3;
    v13 = v4;
    sub_1883F69F4(v5);
    sub_1883FE204();
    if (v7 && (v8 = sub_1883F75D8(), (sub_1883F7624(v8, v9, v10, v4) & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine(0);
      sub_1883FF4BC();
      sub_1884E02F8();
      sub_1883FC71C();
      v11 = sub_1883F84DC();
      sub_1883F60E8(v11, v12, v5);
    }
  }
}

id CKSyncEngine.FetchAssetContext.options.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v7 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v7;
  v4 = v2;
  v5 = v3;

  return v7;
}

uint64_t static CKSyncEngine.FetchChangesOptions.Scope.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_11;
      }

      v5 = 1;
LABEL_13:

      return v5 & 1;
    }

    if (v3 != 1)
    {
      goto LABEL_11;
    }

LABEL_6:

    v5 = sub_188472A78(v4, v2);

    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_6;
  }

LABEL_11:
  v5 = 0;
  return v5 & 1;
}

uint64_t CKSyncEngine.FetchChangesOptions.ZoneConfiguration.description.getter()
{
  sub_1883F9424();
  v2 = v0;
  MEMORY[0x18CFD5140]();

  sub_1883F8358();
  return v2;
}

uint64_t static CKSyncEngine.SendChangesOptions.Scope.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v3 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 2:
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      v5 = sub_188472A8C(v4, v2);
      goto LABEL_14;
    case 3:
      if (v3 != 3 || v2 != 0)
      {
        goto LABEL_16;
      }

      v7 = 1;
      goto LABEL_15;
    default:
      if (*(a2 + 8))
      {
LABEL_16:
        v7 = 0;
      }

      else
      {
LABEL_13:

        v5 = sub_188472A78(v8, v2);
LABEL_14:
        v7 = v5;

LABEL_15:
      }

      return v7 & 1;
  }
}

uint64_t CKSyncEngine.SyncReason.description.getter()
{
  if (*v0)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x656C756465686373;
  }
}

unint64_t CKSyncEngine.FetchAssetOptions.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1883F69F4(*v0);
  if (v3)
  {
    sub_1884147E8();
    v12 = v4 & 0xFFFFFFFFFFFFLL | 0x3D000000000000;
    MEMORY[0x18CFD5140]();

    v15 = v12;
    v16 = 0xE700000000000000;
  }

  sub_1884147E8();
  sub_1883FF004();
  v13 = v5;
  v14 = v6;
  v7 = [v2 operationGroupID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1883F7BC0();
  MEMORY[0x18CFD5140](v8);

  MEMORY[0x18CFD5140](v13, v14);

  _StringGuts.grow(_:)(26);

  sub_1883F9424();
  v9 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1883F7BC0();
  MEMORY[0x18CFD5140](v10);

  MEMORY[0x18CFD5140](v15, v16);

  MEMORY[0x18CFD5140](0x736572676F727020, 0xEC0000003E293D73);
  return 0xD000000000000019;
}

unint64_t CKSyncEngine.FetchAssetContext.description.getter()
{
  v1 = *v0;
  sub_188512720();

  sub_1883F9424();
  if (v1)
  {
    v2 = 0x6C61756E616DLL;
  }

  else
  {
    v2 = 0x656C756465686373;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000064;
  }

  MEMORY[0x18CFD5140](v2, v3);

  v4 = sub_188404394();
  MEMORY[0x18CFD5140](v4, 0xE90000000000003DLL);
  Asset = CKSyncEngine.FetchAssetOptions.description.getter();
  MEMORY[0x18CFD5140](Asset);

  sub_1883F8358();
  return 0xD00000000000001ALL;
}

void *sub_1885106E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_188510764(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v4 = *(type metadata accessor for PropertyDescription() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18851087C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_18840F728();
    if (v6 == v7)
    {
      sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
      v8 = sub_1883FF58C();
      v9 = j__malloc_size(v8);
      sub_188512708(v9);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_18851092C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    sub_18840F728();
    if (v7 == v8)
    {
      sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v9 = sub_1883FF58C();
      j__malloc_size(v9);
      sub_1883FE878();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != v4)
    {
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1885109F8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1883F62D4(v2, 0);

    MEMORY[0x18CFD59A0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_188510A94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_18840F728();
    if (v6 == v7)
    {
      sub_18844E6FC(&qword_1EA90D6E8, &qword_1886F86D0);
      v8 = sub_1883FF58C();
      v9 = j__malloc_size(v8);
      sub_188512708(v9);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_188510ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1883FDC24();
  if (v24)
  {
    sub_18844E6FC(&qword_1EA90E7D8, &unk_1886FE128);
    sub_1883F9AEC();
    sub_1883F86D0();
    while (1)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {

        goto LABEL_17;
      }

      sub_1883FDE4C();
      sub_1884433A4();
      sub_1883F4C5C(v25, v26, v27);
      swift_dynamicCast();
      type metadata accessor for CloudCoreContainer();
      swift_dynamicCast();
      sub_188410C8C();
      if (!(!v30 & v29))
      {
        sub_1883FB5EC(v28);
        sub_1885113E4();
      }

      v31 = NSObject._rawHashValue(seed:)(*(a12 + 40)) & ~(-1 << *(a12 + 32));
      if (((-1 << v31) & ~*(a12 + 64 + 8 * (v31 >> 6))) == 0)
      {
        break;
      }

      sub_1883FEB1C();
LABEL_14:
      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      *(*(a12 + 48) + 8 * v33) = a11;
      *(*(a12 + 56) + 8 * v33) = a10;
      sub_1883F96B8();
    }

    sub_18840B08C();
    while (1)
    {
      sub_18840BE58();
      if (v30)
      {
        if (v34)
        {
          break;
        }
      }

      sub_1883F7FC8();
      if (!v30)
      {
        sub_1883F7AA4();
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_17:
    sub_1883FDC98();
  }
}

Swift::Int sub_188511078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_18844E6FC(&qword_1EA90E7B8, &qword_1886FE0F8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v14 = v3;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      swift_dynamicCast();
      sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1885113E4();
      }

      v2 = v16;
      result = NSObject._rawHashValue(seed:)(*(v16 + 40));
      v5 = v16 + 64;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
      *(*(v16 + 56) + 8 * v9) = v14;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1885113E4()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4();
  sub_18844E6FC(v8, v9);
  sub_188405660();
  v11 = v10;
  v12 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_27:
    *v5 = v12;
    sub_1883F8750();
    return;
  }

  v31 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v13;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v15 & v14);
        goto LABEL_9;
      }
    }

    if (v7)
    {
      sub_1883FF398();
      if (v29 != v30)
      {
        sub_188410D18(v28);
      }

      else
      {
        sub_1885126E8(v28);
      }

      *(v1 + 16) = 0;
    }

    v5 = v31;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8();
    v18 = *(v17 + 8 * v16);
    if ((v7 & 1) == 0)
    {
      v19 = v11;
      v20 = v18;
    }

    NSObject._rawHashValue(seed:)(*(v12 + 40));
    sub_1883FF288();
    if (v21)
    {
      break;
    }

    sub_1883F9020();
LABEL_18:
    sub_1883FE7E8(v22);
    *(v27 + 8 * v26) = v18;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (v23 + 1 != v25 || (v24 & 1) == 0)
  {
    sub_18840E830();
    if (!v21)
    {
      sub_1883F7C04();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_18851152C()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4();
  sub_18844E6FC(&qword_1EA90E5C8, &qword_1886FE120);
  sub_188405660();
  v32 = v7;
  v9 = v8;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_27:
    *v5 = v10;
    sub_1883F8750();
    return;
  }

  v31 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v32)
    {
      sub_1883FF398();
      if (v29 != v30)
      {
        sub_188410D18(v28);
      }

      else
      {
        sub_1885126E8(v28);
      }

      *(v1 + 16) = 0;
    }

    v5 = v31;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8();
    v16 = (v15 + 16 * v14);
    v17 = *v16;
    v18 = *(v16 + 1);
    if ((v32 & 1) == 0)
    {
      v19 = v9;
    }

    NSObject._rawHashValue(seed:)(*(v10 + 40));
    sub_1883FF288();
    if (v20)
    {
      break;
    }

    sub_1883F9020();
LABEL_18:
    sub_1883FE7E8(v21);
    v27 = v26 + 16 * v25;
    *v27 = v17;
    *(v27 + 8) = v18;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (v22 + 1 != v24 || (v23 & 1) == 0)
  {
    sub_18840E830();
    if (!v20)
    {
      sub_1883F7C04();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_188511694()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4();
  sub_18844E6FC(&qword_1EA90E5B8, &qword_1886FBA50);
  sub_188405660();
  v33 = v7;
  v9 = v8;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_27:
    *v5 = v10;
    sub_1883F8750();
    return;
  }

  v32 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v33)
    {
      sub_1883FF398();
      if (v30 != v31)
      {
        sub_188410D18(v29);
      }

      else
      {
        sub_1885126E8(v29);
      }

      *(v1 + 16) = 0;
    }

    v5 = v32;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8();
    v16 = v15 + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    if ((v33 & 1) == 0)
    {
      v19 = v17;
      v20 = v9;
    }

    NSObject._rawHashValue(seed:)(*(v10 + 40));
    sub_1883FF288();
    if (v21)
    {
      break;
    }

    sub_1883F9020();
LABEL_18:
    sub_1883FE7E8(v22);
    v28 = v27 + 16 * v26;
    *v28 = v17;
    *(v28 + 8) = v18;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (v23 + 1 != v25 || (v24 & 1) == 0)
  {
    sub_18840E830();
    if (!v21)
    {
      sub_1883F7C04();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_188511800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = v6;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v14 = *(a4 + v8 + 40);
      v13 = *(a4 + v8 + 48);
      v15 = *(a4 + v8 + 56);
      v16 = *(a4 + v8 + 64);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 8) = v14;
      *(v12 + 16) = v13;
      *(v12 + 24) = v15;
      *(v12 + 32) = v16;
      if (v11 == v9)
      {

        goto LABEL_12;
      }

      v8 += 40;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1885118E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CKRecordValueStore.makeIterator()(&v34);

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v21 = a1;
      v7 = 0;
      v8 = v35;
      v9 = v34;
      v23 = v34;
      v24 = v35;
      v25 = *(&v34 + 1);
      v10 = (*(&v34 + 1) + 16 * v35 + 40);
      v22 = v34;
      while (1)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= *(v25 + 16))
        {
          goto LABEL_12;
        }

        if (v24 < 0)
        {
          goto LABEL_15;
        }

        v12 = a3;
        v13 = *(v10 - 1);
        v14 = *v10;

        v15 = MEMORY[0x18CFD5010](v13, v14);
        v16 = [v23 objectForKey_];

        if (!v16)
        {
          goto LABEL_17;
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        CKRecordValue.CKToSwiftNativeValue()();
        swift_unknownObjectRelease_n();
        ++v8;
        *&v27 = v13;
        *(&v27 + 1) = v14;
        sub_18843E080(&v26, v28);
        v17 = v29;
        v33 = v29;
        v18 = v28[1];
        v19 = v28[0];
        v20 = v27;
        *a2 = v27;
        *(a2 + 16) = v19;
        *(a2 + 32) = v18;
        *(a2 + 48) = v17;
        a2 += 56;
        v10 += 2;
        ++v7;
        v31 = v19;
        v32 = v18;
        v30 = v20;
        a3 = v12;
        v9 = v22;
        if (v11 == v12)
        {
LABEL_12:
          a1 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v9 = v34;
    v8 = v35;
LABEL_13:
    *a1 = v9;
    *(a1 + 16) = v8;
  }
}

void sub_188511AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CKRecord.makeIterator()(&v29);

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v20 = a3;
      v21 = a1;
      v7 = 0;
      v8 = v30;
      v9 = v29;
      v10 = v29;
      v11 = v29 + 40;
      v24 = v29;
      v19 = v29 + 40;
LABEL_5:
      if (!__OFADD__(v7, 1))
      {
        v23 = a2;
        v22 = v7 + 1;
        v12 = *(v10 + 16);
        v13 = (v11 + 16 * v8);
        for (i = v8; ; ++i)
        {
          if (i >= v12)
          {
            goto LABEL_15;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= *(v10 + 16))
          {
            goto LABEL_18;
          }

          v16 = *(v13 - 1);
          v15 = *v13;
          swift_bridgeObjectRetain_n();
          v17 = MEMORY[0x18CFD5010](v16, v15);

          v18 = [*(&v10 + 1) objectForKey_];

          if (v18)
          {
            swift_getObjectType();
            CKRecordValue.CKToSwiftNativeValue()();
            swift_unknownObjectRelease();
            *&v25 = v16;
            *(&v25 + 1) = v15;
            *v23 = v25;
            *(v23 + 16) = v26;
            *(v23 + 32) = v27;
            *(v23 + 48) = v28;
            a2 = v23 + 56;
            v8 = i + 1;
            v7 = v22;
            v9 = v24;
            v11 = v19;
            if (v22 != v20)
            {
              goto LABEL_5;
            }

            ++i;
LABEL_15:
            a1 = v21;
            goto LABEL_16;
          }

          v13 += 2;
          v9 = v24;
        }

        __break(1u);
LABEL_18:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v9 = v29;
    i = v30;
LABEL_16:
    *a1 = v9;
    *(a1 + 16) = i;
  }
}

uint64_t sub_188511C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t sub_188511D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_188511E6C()
{
  result = qword_1EA90C738;
  if (!qword_1EA90C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C738);
  }

  return result;
}

unint64_t sub_188511EC4()
{
  result = qword_1EA90E780;
  if (!qword_1EA90E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E780);
  }

  return result;
}

uint64_t sub_188511F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188511FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188511FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s19FetchChangesOptionsV17ZoneConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s19FetchChangesOptionsV17ZoneConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1885120F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188512134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_188512178(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1885121A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1885121E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188512244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188512284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1885122D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188512314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_188512358(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_188512380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1885123C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10SyncReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}