void sub_100030094()
{
  v1 = v0;
  sub_100004944(&qword_100076340, &qword_100052378);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = (*(v2 + 48) + v19);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + v19;
        v23 = *v20;
        v24 = v20[1];
        v25 = v20[2];
        *(v22 + 48) = *(v20 + 24);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        *(*(v4 + 56) + v17) = v21;
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

void sub_100030214()
{
  v1 = v0;
  sub_100004944(&qword_1000762E0, &qword_1000522F0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v18) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = v14 << 6;
      v18 = 8 * v14;
      v19 = v17 - v18;
      v20 = (*(v2 + 48) + v19);
      v21 = *(*(v2 + 56) + v18);
      v22 = *(v4 + 48) + v19;
      v23 = *v20;
      v24 = v20[1];
      v25 = v20[2];
      *(v22 + 48) = *(v20 + 24);
      *(v22 + 16) = v24;
      *(v22 + 32) = v25;
      *v22 = v23;
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

void sub_100030384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004944(&qword_100076348, &unk_100052380);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000305A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100030384(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000306C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100030808(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000306C8()
{
  v1 = v0;
  sub_100004944(&qword_100076348, &unk_100052380);
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

void sub_100030808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004944(&qword_100076348, &unk_100052380);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

unint64_t sub_1000309F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&unk_100076390, &unk_100052410);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10002E80C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&unk_100076380, &unk_100052400);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008A40(v4, &v11, &qword_100074720, &qword_10004E8B0);
      v5 = v11;
      result = sub_10002E80C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100031E08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100030C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004944(&qword_100076340, &qword_100052378);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = v4;
  v5 = *(a1 + 80);
  v20 = *(a1 + 64);
  v21 = v5;
  v22 = v18;
  v23 = v4;
  v24 = v20;
  v25 = *(a1 + 80);
  result = sub_10002E89C(&v22);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_100008A40(&v18, v17, &unk_100076370, &unk_1000523F0);
    return v3;
  }

  v8 = (a1 + 96);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = v3[6] + 56 * result;
    v10 = v23;
    *v9 = v22;
    *(v9 + 16) = v10;
    *(v9 + 32) = v24;
    *(v9 + 48) = v25;
    *(v3[7] + 8 * result) = *(&v21 + 1);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_100008A40(&v18, v17, &unk_100076370, &unk_1000523F0);
    v14 = v8[1];
    v18 = *v8;
    v19 = v14;
    v15 = v8[3];
    v20 = v8[2];
    v21 = v15;
    v22 = v18;
    v23 = v14;
    v24 = v20;
    v25 = *(v8 + 24);
    result = sub_10002E89C(&v22);
    v8 += 4;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100030DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004944(&qword_1000762E0, &qword_1000522F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 5);
      v14 = *(i - 7);
      v15 = v5;
      v16 = *(i - 3);
      v17 = *(i - 4);
      v6 = *i;
      result = sub_10002E89C(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 56 * result;
      v10 = v15;
      *v9 = v14;
      *(v9 + 16) = v10;
      *(v9 + 32) = v16;
      *(v9 + 48) = v17;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_100030EC4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (*(a2 + 48) >> 62 == 1)
      {
        return *&v2.f64[0] == *a2;
      }
    }

    else
    {
      v9 = *(a2 + 48);
      if (!(v9 >> 62))
      {
        result = 0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v2), vceqq_f64(*(a2 + 16), v3)))) & 1) == 0 || *(a2 + 32) != v5)
        {
          return result;
        }

        v11 = *(a2 + 56);
        if (v7)
        {
LABEL_7:
          result = 0;
          if ((v7 >> 8) & 1) != ((v9 >> 8) & 1) || ((v9 ^ 1))
          {
            return result;
          }

          return v6 == v11;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v8 != 2)
  {
    if (v7 != 0xC000000000000000 || *&v3.f64[0] | *&v2.f64[0] | *&v2.f64[1] | *&v3.f64[1] | *&v5 | *&v4 | v6)
    {
      v15 = *(a2 + 48);
      if (v15 >> 62 != 3)
      {
        return 0;
      }

      if (*(a2 + 56))
      {
        return 0;
      }

      if (v15 != 0xC000000000000000)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v16 = vorrq_s8(*(a2 + 16), *(a2 + 32));
      if (*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(a2 + 8))
      {
        return 0;
      }
    }

    else
    {
      v13 = *(a2 + 48);
      if (v13 >> 62 != 3)
      {
        return 0;
      }

      if (v13 != 0xC000000000000000)
      {
        return 0;
      }

      v14 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  v9 = *(a2 + 48);
  if (v9 >> 62 != 2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v2), vceqq_f64(*(a2 + 16), v3)))) & 1) == 0 || *(a2 + 32) != v5)
  {
    return result;
  }

  v11 = *(a2 + 56);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_15:
  if (v9)
  {
    return 0;
  }

  result = 0;
  if (*(a2 + 40) == v4 && ((v7 >> 8) & 1) == ((v9 >> 8) & 1))
  {
    return v6 == v11;
  }

  return result;
}

id sub_1000310DC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource] = 0;
  *&v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView] = 0;
  v4 = &v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 24) = 512;
  v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor] = 0;
  *&v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage] = 0;
  *&v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = 0;
  v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = 0;
  v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing] = 0;
  v5 = &v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 6) = *(a1 + 48);
  v7 = &v2[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState];
  swift_beginAccess();
  sub_10003126C(a1, v11);
  type metadata accessor for ColorPickerState(0);
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);

  *v7 = ObservedObject.init(wrappedValue:)();
  v7[1] = v8;
  swift_endAccess();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FavoriteColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100031304()
{
  v1 = sub_100004944(&qword_100076258, &qword_100052050);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 56, v3 | 7);
}

void sub_1000313C8()
{
  v1 = *(sub_100004944(&qword_100076258, &qword_100052050) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_10002C268(v0 + v2, v3);
}

uint64_t sub_100031460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100031478()
{
  result = qword_100076280;
  if (!qword_100076280)
  {
    sub_100008B90(&qword_100076278, &qword_100052210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076280);
  }

  return result;
}

uint64_t sub_10003154C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031594(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100076290, &qword_100052268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003166C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_1000316D4()
{
  result = qword_1000762D0;
  if (!qword_1000762D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000762D0);
  }

  return result;
}

uint64_t sub_100031728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031760()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000317CC()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100031840()
{
  result = qword_100076308;
  if (!qword_100076308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076308);
  }

  return result;
}

void sub_100031894(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((v40 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v4 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    if (v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
LABEL_7:
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v37;
    v33 = v38;
    v34 = v39;
    LOWORD(v35) = v40;

LABEL_8:
    static Published.subscript.setter();
    return;
  }

  if (v40 != 0xC000000000000000 || v38 | v37 | *(&v37 + 1) | *(&v38 + 1) | v39 | *(&v39 + 1) | v41)
  {
    v17 = v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState;
    swift_beginAccess();
    v18 = *(v17 + 8);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    swift_retain_n();
    Binding.init(get:set:)();
    v30[2] = v34;
    v30[3] = v35;
    v31 = v36;
    v30[0] = v32;
    v30[1] = v33;
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    sub_1000059D4(&v32, &qword_100076350, &qword_100051160);
    v21 = [objc_opt_self() blackColor];
    sub_100019C44(v21, v29, v30);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();

    goto LABEL_8;
  }

  *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing) = 1;
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v5 = v35;
  if ((v35 & 0xFF00) != 0x200)
  {
    v26 = v33;
    v27 = v32;
    v6 = v34;
    v28 = v35 & 1;
    swift_getKeyPath();
    swift_getKeyPath();

    v7 = static Published.subscript.modify();
    v9 = v8;
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_10002EC04(0, *(v10 + 2) + 1, 1, v10);
      *v9 = v10;
    }

    v12 = (v5 >> 8) & 1;
    v13 = *(v10 + 2);
    v14 = *(v10 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v25 = v13 + 1;
      v22 = v10;
      v23 = *(v10 + 2);
      v24 = sub_10002EC04((v14 > 1), v13 + 1, 1, v22);
      v13 = v23;
      v15 = v25;
      v10 = v24;
      *v9 = v24;
    }

    *(v10 + 2) = v15;
    v16 = &v10[56 * v13];
    *(v16 + 2) = v27;
    *(v16 + 3) = v26;
    *(v16 + 4) = v6;
    v16[80] = v28;
    v16[81] = v12;
    v7(&v32, 0);
  }
}

_OWORD *sub_100031E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for _UIColorPickerContentViewController(uint64_t a1)
{
  result = qword_100076460;
  if (!qword_100076460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031F00(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100031F80(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100031FF4()
{
  v1 = v0;
  v2 = sub_100004944(&qword_100076510, &qword_1000524F0);
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v91 = v79 - v3;
  v4 = sub_100004944(&qword_100076518, &qword_1000524F8);
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin(v4);
  v94 = v79 - v5;
  v6 = sub_100004944(&qword_100076520, &qword_100052500);
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = v79 - v7;
  v8 = sub_100004944(&qword_100076528, &qword_100052508);
  v9 = *(v8 - 8);
  v98 = v8;
  v99 = v9;
  __chkstk_darwin(v8);
  v11 = v79 - v10;
  v84 = sub_100004944(&unk_100076530, &unk_100052510);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = v79 - v12;
  v82 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v14 = v79 - v13;
  v15 = sub_100004944(&unk_100076540, &qword_100052520);
  v86 = *(v15 - 1);
  v87 = v15;
  __chkstk_darwin(v15);
  v85 = v79 - v16;
  v17 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v17 - 8);
  v18 = (v0 + qword_100076400);
  *v18 = 0x64657463656C6573;
  v18[1] = 0xEB00000000626154;
  v19 = qword_100076408;
  *(v1 + v19) = [objc_allocWithZone(type metadata accessor for FavoritesStore()) init];
  v20 = qword_100076410;
  type metadata accessor for ColorPickerState(0);
  swift_allocObject();
  *(v1 + v20) = sub_10002608C(_swiftEmptyArrayStorage);
  v21 = qword_100076418;
  type metadata accessor for ColorPickerConfiguration(0);
  v22 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v22 + 40) = &type metadata for CombinedFullBrightnessWithRGBDisplayBoostBehavior;
  *(v22 + 48) = &off_10006DF78;
  *(v22 + 16) = 1;
  *(v22 + 56) = sub_1000384A0() & 1;
  *(v22 + 57) = sub_1000385C0() & 1;
  *(v1 + v21) = v22;
  *(v1 + qword_100076420) = 0;
  *(v1 + qword_100076428) = 0;
  *(v1 + qword_100076430) = 0;
  *(v1 + qword_100076438) = 0;
  *(v1 + qword_100076440) = 0;
  *(v1 + qword_100076448) = 0;
  *(v1 + qword_100076450) = 0;
  *(v1 + qword_100076458) = 0;
  sub_100036398(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);

  v23 = ObservedObject.init(wrappedValue:)();
  v25 = v24;
  v104 = v22;
  State.init(wrappedValue:)();
  v26 = v100;
  v27 = v101;
  v100 = v23;
  v101 = v25;
  v102 = v26;
  v103 = v27;

  v28 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v29 = [v28 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_8;
  }

  v30 = v29;
  v79[1] = v27;
  v79[2] = v26;
  v79[3] = v25;
  v31 = [v29 layer];

  [v31 setHitTestsAsOpaque:1];
  UIHostingController.safeAreaRegions.setter();

  v32 = [v28 view];
  if (!v32)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v32 _setSafeAreaInsetsFrozen:1];

  v33 = qword_100076410;
  v34 = *&v28[qword_100076408];
  swift_getKeyPath();
  swift_getKeyPath();

  v35 = v34;
  static Published.subscript.getter();

  v36 = sub_10000C704(v100);

  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v36;
  static Published.subscript.setter();

  sub_100025B10(v14);

  swift_beginAccess();

  sub_100004944(&qword_100076550, &qword_100051748);
  v37 = v11;
  Published.projectedValue.getter();
  swift_endAccess();

  v38 = sub_100008D7C(&qword_100076558, &qword_100076528, &qword_100052508, &protocol conformance descriptor for Published<A>.Publisher);
  v39 = v80;
  v40 = v98;
  v97 = v38;
  Publisher<>.removeDuplicates()();
  v41 = *(v99 + 8);
  v42 = v37;
  v99 += 8;
  v79[0] = v41;
  v41(v37, v40);
  sub_100008D7C(&qword_100076560, &unk_1000759A8, &qword_1000516E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100008D7C(&qword_100076568, &unk_100076530, &unk_100052510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v43 = v84;
  v44 = v85;
  v45 = v82;
  Publisher.combineLatest<A>(_:)();
  (*(v83 + 8))(v39, v43);
  v46 = v14;
  v47 = v33;
  (*(v81 + 8))(v46, v45);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100036208;
  *(v49 + 24) = v48;
  sub_100008D7C(&unk_100076570, &unk_100076540, &qword_100052520, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v50 = v28;
  v51 = v87;
  v52 = Publisher<>.sink(receiveValue:)();

  (*(v86 + 8))(v44, v51);
  *&v50[qword_100076420] = v52;

  v53 = [objc_opt_self() standardUserDefaults];

  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 stringForKey:v54];

  if (v55)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    v60 = _findStringSwitchCase(cases:string:)(&off_10006A610, v59);

    if (v60 <= 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v100) = v60;

      static Published.subscript.setter();
    }
  }

  swift_beginAccess();

  sub_100004944(&qword_100075F98, &qword_1000525C0);
  v61 = v88;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100008D7C(&unk_100076580, &qword_100076520, &qword_100052500, &protocol conformance descriptor for Published<A>.Publisher);
  v62 = v90;
  v63 = Publisher<>.sink(receiveValue:)();

  (*(v89 + 8))(v61, v62);
  *&v50[qword_100076448] = v63;

  swift_beginAccess();

  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v98;
  v65 = Publisher<>.sink(receiveValue:)();

  v66 = v79[0];
  (v79[0])(v42, v64);
  *&v50[qword_100076438] = v65;

  swift_beginAccess();

  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = Publisher<>.sink(receiveValue:)();

  v66(v42, v64);
  *&v50[qword_100076440] = v67;

  v68 = v47;
  swift_beginAccess();

  sub_100004944(&qword_100075FD8, &unk_100051DF0);
  v69 = v91;
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100008D7C(&qword_100076590, &qword_100076510, &qword_1000524F0, v87);
  sub_100036294();
  v70 = v93;
  v71 = v94;
  Publisher<>.removeDuplicates()();
  (*(v92 + 8))(v69, v70);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008D7C(&qword_1000765B0, &qword_100076518, &qword_1000524F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v72 = v96;
  v73 = Publisher<>.sink(receiveValue:)();

  (*(v95 + 8))(v71, v72);
  *&v50[qword_100076430] = v73;

  v74 = *&v28[v68];

  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v76 = (v74 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  v77 = *(v74 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  v78 = *(v74 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8);
  *v76 = sub_100036320;
  v76[1] = v75;

  sub_10000C134(v77, v78);
}

void sub_100033044(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + qword_100076458) & 1) == 0)
    {
      v6 = Strong;
      v7 = [Strong parentViewController];
      if (v7)
      {
        v8 = v7;
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (!v9)
        {
        }
      }

      else
      {
        v9 = 0;
      }

      [v9 _pickerDidSelectColor:a1 isVolatile:a2 & 1];

      Strong = v6;
    }
  }
}

void sub_100033124(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();

    [v4 setValue:v5 forKey:v6];
  }
}

void sub_100033260(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      v4 = Strong;
      v5 = [Strong parentViewController];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = v7;
          v9 = swift_allocObject();
          v10 = v4;
          *(v9 + 16) = v4;
          v20 = sub_100036368;
          v21 = v9;
          aBlock = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_100033A2C;
          v19 = &unk_10006DD58;
          v11 = _Block_copy(&aBlock);
          v12 = v10;

          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          v20 = sub_100036388;
          v21 = v13;
          aBlock = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_10002C56C;
          v19 = &unk_10006DDA8;
          v14 = _Block_copy(&aBlock);
          v15 = v12;

          [v8 _pickerDidShowEyedropperWithSelectionBlock:v11 dismissBlock:v14];

          _Block_release(v14);
          _Block_release(v11);
        }

        else
        {
        }
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      v6 = Strong;
    }
  }
}

uint64_t sub_10003346C(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_100036470;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C56C;
  aBlock[3] = &unk_10006DE48;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100036398(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004944(&qword_100076278, &qword_100052210);
  sub_100008D7C(&qword_100076280, &qword_100076278, &qword_100052210, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

double sub_100033768(uint64_t a1, uint64_t a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_1000337D4(void *a1, uint64_t a2)
{
  [a1 linearExposure];
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v22;
  if (v22 >= v4)
  {
    sub_100019F88(a1, &v22);
  }

  else
  {
    v6 = [a1 standardDynamicRangeColor];
    v19 = 0.0;
    v20[0] = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    [v6 getRed:v20 green:&v19 blue:&v18 alpha:&v17];
    sub_100019F88([objc_allocWithZone(UIColor) initWithRed:v20[0] green:v19 blue:v18 alpha:v17 linearExposure:v5], &v22);
  }

  v8 = v23;
  v7 = v24;
  v9 = v22;
  v10 = v26;
  v11 = v25;
  if (v5 <= 1.0 || v26 <= 1.0)
  {
    goto LABEL_15;
  }

  v13 = v22 > v23 ? v22 : v23;
  if (v13 <= v24)
  {
    v13 = v24;
  }

  if (v13 * 255.0 <= 254.0)
  {
LABEL_15:
    LOBYTE(v19) = 1;
    v14 = 0.0;
  }

  else
  {
    LOBYTE(v19) = 0;
    v14 = (v26 + -1.0) / (v5 + -1.0);
  }

  v15 = LOBYTE(v19) | (v27 << 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v20[0] = v9;
  v20[1] = v8;
  v20[2] = v7;
  v20[3] = v11;
  v20[4] = v10;
  v20[5] = v14;
  v21 = v15;

  return static Published.subscript.setter();
}

void sub_100033A2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100033A94(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_100036390;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C56C;
  aBlock[3] = &unk_10006DDF8;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100036398(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004944(&qword_100076278, &qword_100052210);
  sub_100008D7C(&qword_100076280, &qword_100076278, &qword_100052210, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_100033D88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100033E00(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      v4 = Strong;
      v5 = [Strong parentViewController];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (!v7)
        {
        }
      }

      else
      {
        v7 = 0;
      }

      [v7 _pickerDidFloatEyeDropper];

      Strong = v4;
    }
  }
}

void sub_100033EC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_100076408);
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v4;
    static Published.subscript.getter();

    sub_10000C860(v2, v7);
  }
}

void sub_100033FA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong parentViewController];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }

    [v5 _pickerDidFinish];
  }
}

void sub_1000340A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for _UIColorPickerContentViewController(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setBackgroundColor:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10003413C(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for _UIColorPickerContentViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a3);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t sub_1000341EC(void *a1)
{
  v2 = qword_100076458;
  *(v1 + qword_100076458) = 1;
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = sub_100019EAC(v4);

    if (v5 == 2)
    {
      if (qword_1000743E0 != -1)
      {
        swift_once();
      }

      v5 = byte_10007B138;
    }

    v6 = v3;
    sub_100019C44(v6, v5 & 1, &v11);
    v7 = HIBYTE(v12);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    v7 = 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10 == 1)
  {
    if (*(v1 + qword_100076450))
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  result = static Published.subscript.setter();
  *(v1 + v2) = 0;
  return result;
}

double sub_10003450C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_1000341EC(a3);

  return result;
}

id sub_10003458C(void *a1)
{
  v2 = v1;
  v4 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v5 = __chkstk_darwin(v4 - 8);
  v76 = &v75[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v75[-2] - v7;
  v8 = *(v1 + qword_100076450);
  *(v2 + qword_100076450) = a1;
  v9 = a1;

  LOBYTE(v8) = [v9 _shouldUseDarkGridInDarkMode];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v84) = v8;

  static Published.subscript.setter();
  v10 = [v9 title];
  if (!v10)
  {
    sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v10 = [v12 localizedStringForKey:v13 value:0 table:v14];
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  swift_getKeyPath();
  swift_getKeyPath();
  *&v84 = v15;
  *(&v84 + 1) = v17;

  static Published.subscript.setter();
  v18 = [v9 _allowsNoColor];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v84) = v18;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v84)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (HIBYTE(v87) << 8 != 512)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v84 = v80;
  v85 = v81;
  v86 = v82;
  v87 = v83;
  sub_100018314();
  v20 = v19;
  v21 = [v19 CGColor];
  v22 = CGColorGetColorSpace(v21);

  if (v22)
  {
    v23 = CGColorSpaceCopyName(v22);

    if (v23)
    {
      goto LABEL_12;
    }
  }

  if (qword_1000743E0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v24 = (byte_10007B138 ? &kCGColorSpaceDisplayP3 : &kCGColorSpaceSRGB);
    v23 = *v24;
LABEL_12:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v20;
    sub_1000341EC(v20);

LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = v80;
    if (v26 != [v9 showsAlpha])
    {
      v27 = [v9 showsAlpha];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v80) = v27;

      static Published.subscript.setter();
    }

    v28 = sub_10000C704([v9 showsAlpha]);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v80 = v28;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v29 = *&v80;
    [v9 maxGain];
    if (v29 != v30)
    {
      [v9 maxGain];
      v32 = v31;
      swift_getKeyPath();
      swift_getKeyPath();
      *&v80 = v32;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v33 = v83;
      if ((v83 & 0xFF00) != 0x200)
      {
        v74 = v81;
        *v75 = v80;
        v35 = *(&v82 + 1);
        v34 = *&v82;
        v78 = v83 & 1;
        LOBYTE(v79) = v83 & 1;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*&v80 < v34)
        {
          v34 = *&v80;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v80)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v34 <= 1.0 || *&v80 <= 1.0)
          {
            goto LABEL_28;
          }

          v36 = v75[1];
          if (v75[0] > v75[1])
          {
            v36 = v75[0];
          }

          if (v36 <= *&v74)
          {
            v36 = *&v74;
          }

          if (v36 * 255.0 <= 254.0)
          {
LABEL_28:
            LOBYTE(v79) = 1;
            v35 = 0.0;
          }

          else
          {
            LOBYTE(v79) = 0;
            v35 = (v34 + -1.0) / (*&v80 + -1.0);
          }
        }

        v37 = v33 & 0x100 | v79;
        swift_getKeyPath();
        swift_getKeyPath();
        v81 = v74;
        v80 = *v75;
        *&v82 = v34;
        *(&v82 + 1) = v35;
        v83 = v37;

        static Published.subscript.setter();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v80;
    if (v38 != [v9 _showsEyedropper])
    {
      v39 = [v9 _showsEyedropper];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v80) = v39;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = v80;
    if (v40 != [v9 _showsGridOnly])
    {
      v41 = [v9 _showsGridOnly];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v80) = v41;

      static Published.subscript.setter();
    }

    v42 = [v9 _suggestedColors];
    if (!v42)
    {
      break;
    }

    sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v43 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (!v44)
      {
LABEL_47:

        v42 = _swiftEmptyArrayStorage;
        break;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_47;
      }
    }

    v79 = _swiftEmptyArrayStorage;
    v20 = &v79;
    sub_10002F074(0, v44 & ~(v44 >> 63), 0);
    if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = 0;
      v42 = v79;
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v46 = *(v43 + 8 * v45 + 32);
        }

        sub_100019C44(v46, 0, &v80);
        v79 = v42;
        v48 = v42[2];
        v47 = v42[3];
        if (v48 >= v47 >> 1)
        {
          sub_10002F074((v47 > 1), v48 + 1, 1);
          v42 = v79;
        }

        ++v45;
        v42[2] = v48 + 1;
        v49 = &v42[7 * v48];
        v50 = v80;
        v51 = v81;
        v52 = v82;
        *(v49 + 40) = v83;
        *(v49 + 3) = v51;
        *(v49 + 4) = v52;
        *(v49 + 2) = v50;
      }

      while (v44 != v45);

      break;
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v79)
  {
    if (v42)
    {
      v53 = sub_10002E744(v79, v42);

      if (v53)
      {

        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  if (v42)
  {
LABEL_55:
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v42;

    static Published.subscript.setter();
  }

LABEL_56:
  if ([v9 _userInterfaceStyleForGrid])
  {
    v54 = [v9 _userInterfaceStyleForGrid];
    v55 = v77;
    if (v54 == 2)
    {
      v56 = &enum case for ColorScheme.dark(_:);
    }

    else
    {
      if ([v9 _userInterfaceStyleForGrid] != 1)
      {
        goto LABEL_64;
      }

      v56 = &enum case for ColorScheme.light(_:);
    }

    v58 = *v56;
    v59 = type metadata accessor for ColorScheme();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v55, v58, v59);
    (*(v60 + 56))(v55, 0, 1, v59);
  }

  else
  {
    v57 = type metadata accessor for ColorScheme();
    v55 = v77;
    (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100036674(v55, v76);

  static Published.subscript.setter();
  sub_1000366E4(v55);
LABEL_64:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = v79;
  if (v61 != [v9 _isEmbedded])
  {
    v62 = [v9 _isEmbedded];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v79) = v62;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = v79;
  if (v63 != [v9 _isInPopoverPresentation])
  {
    v64 = [v9 _isInPopoverPresentation];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v79) = v64;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v65 = v79;
  if (v65 != [v9 _useLandscapeLayout])
  {
    v66 = [v9 _useLandscapeLayout];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v79) = v66;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67 = v79;
  [v9 _preferredWidth];
  if (*&v67 != v68)
  {
    [v9 _preferredWidth];
    v70 = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v70;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v71 = v79;
  result = [v9 _isInSheetPresentation];
  if (v71 != result)
  {
    v73 = [v9 _isInSheetPresentation];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v79) = v73;

    return static Published.subscript.setter();
  }

  return result;
}

void sub_1000356B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10003458C(v4);
}

void sub_100035724(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2]();

  _Block_release(v3);
}

void sub_10003576C(void *a1)
{
  v4 = a1;
  v1 = [v4 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 _pickerDidFinish];
}

void sub_100035810()
{

  v1 = *(v0 + qword_100076450);
}

id sub_1000358E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIColorPickerContentViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003591C(uint64_t a1)
{

  v2 = *(a1 + qword_100076450);
}

__n128 sub_100035ADC@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_100035B7C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100035C28(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_100035CA8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100035E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100035EC0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100036674(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100036674(v8, v6);

  static Published.subscript.setter();
  return sub_1000366E4(v8);
}

void sub_100035FC8()
{
  v1 = v0;
  v2 = (v0 + qword_100076400);
  *v2 = 0x64657463656C6573;
  v2[1] = 0xEB00000000626154;
  v3 = qword_100076408;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for FavoritesStore()) init];
  v4 = qword_100076410;
  type metadata accessor for ColorPickerState(0);
  swift_allocObject();
  *(v1 + v4) = sub_10002608C(_swiftEmptyArrayStorage);
  v5 = qword_100076418;
  type metadata accessor for ColorPickerConfiguration(0);
  v6 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v6 + 40) = &type metadata for CombinedFullBrightnessWithRGBDisplayBoostBehavior;
  *(v6 + 48) = &off_10006DF78;
  *(v6 + 16) = 1;
  *(v6 + 56) = sub_1000384A0() & 1;
  v7 = sub_1000385C0();
  *(v1 + v5) = v6;
  *(v1 + qword_100076420) = 0;
  *(v1 + qword_100076428) = 0;
  *(v1 + qword_100076430) = 0;
  *(v1 + qword_100076438) = 0;
  *(v1 + qword_100076440) = 0;
  *(v1 + qword_100076448) = 0;
  *(v6 + 57) = v7 & 1;
  *(v1 + qword_100076450) = 0;
  *(v1 + qword_100076458) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000361D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036210()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100036294()
{
  result = qword_100076598;
  if (!qword_100076598)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    sub_10000DD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076598);
  }

  return result;
}

uint64_t sub_100036330()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100036398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100036430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075648, &qword_1000511B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000366E4(uint64_t a1)
{
  v2 = sub_100004944(&qword_100075648, &qword_1000511B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000367F8()
{
  v1 = v0;
  v2 = &UIColorPickerUIServiceAppDelegate__properties;
  v3 = [v0 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath;
  if (*&v1[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath])
  {
    v6 = v4;
    v7 = [*&v1[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] CGPath];
    v4 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v4 setPath:v7];

  v8 = [v1 layer];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  if (*&v1[v5])
  {
    v10 = v9;
    [*&v1[v5] lineWidth];
    v9 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  [v9 setLineWidth:v11];

  v12 = [v1 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  if (*&v1[v5])
  {
    v14 = v13;
    [*&v1[v5] miterLimit];
    v13 = v14;
  }

  else
  {
    v15 = 10.0;
  }

  [v13 setMiterLimit:v15];

  v16 = [v1 layer];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  v18 = *&v1[v5];
  v19 = &kCALineCapButt;
  if (v18)
  {
    v20 = [v18 lineCapStyle];
    v21 = &kCALineCapRound;
    if (v20 != 1)
    {
      v21 = &kCALineCapButt;
    }

    if (v20 == 2)
    {
      v19 = &kCALineCapSquare;
    }

    else
    {
      v19 = v21;
    }
  }

  v22 = *v19;
  [v17 setLineCap:v22];

  v23 = [v1 layer];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = *&v1[v5];
  v26 = &kCALineJoinMiter;
  if (v25)
  {
    v27 = [v25 lineJoinStyle];
    v28 = &kCALineJoinRound;
    if (v27 != 1)
    {
      v28 = &kCALineJoinMiter;
    }

    if (v27 == 2)
    {
      v26 = &kCALineJoinBevel;
    }

    else
    {
      v26 = v28;
    }
  }

  v29 = *v26;
  [v24 setLineJoin:v29];

  v30 = [v1 layer];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClassUnconditional();
  v32 = *&v1[v5];
  if (v32 && ([v32 usesEvenOddFillRule] & 1) != 0)
  {
    v33 = &kCAFillRuleEvenOdd;
  }

  else
  {
    v33 = &kCAFillRuleNonZero;
  }

  v34 = *v33;
  [v31 setFillRule:v34];

  v35 = *&v1[v5];
  if (v35)
  {
    v50 = 0;
    v36 = v35;
    [v36 getLineDash:0 count:&v50 phase:0];
    v37 = v50;
    if (v50 >= 1)
    {
      v49 = 0.0;
      v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v38 + 16) = v37;
      bzero((v38 + 32), 8 * v37);
      [v36 getLineDash:v38 + 32 count:&v50 phase:&v49];
      v39 = [v1 layer];
      objc_opt_self();
      v40 = swift_dynamicCastObjCClassUnconditional();
      v41 = v40;
      v42 = *(v38 + 16);
      if (v42)
      {
        v47 = v40;
        specialized ContiguousArray.reserveCapacity(_:)();
        v43 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithDouble:*(v38 + v43)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v43 += 8;
          --v42;
        }

        while (v42);

        v2 = &UIColorPickerUIServiceAppDelegate__properties;
        v41 = v47;
      }

      else
      {
      }

      sub_10000598C(0, &qword_1000754A8, NSNumber_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 setLineDashPattern:isa];

      v46 = [v1 *&v2[413]];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setLineDashPhase:v49];
    }
  }

  else
  {
    v44 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineDashPattern:0];

    v48 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineDashPhase:0.0];
  }
}

id sub_100036FA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10003700C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RemoveColorCell();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_100037220();

  return v12;
}

id sub_100037120(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RemoveColorCell();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100037220();
  }

  return v7;
}

void sub_100037220()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  v5 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView];
  [v4 addSubview:v5];

  v6 = [v0 contentView];
  v7 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView];
  [v6 setMaskView:v7];

  v8 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView];
  v9 = [v2 systemRedColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 layer];
  [v10 setCornerRadius:1.5];

  v11 = [v8 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  [v8 setClipsToBounds:1];
  v12 = [v0 contentView];
  [v12 addSubview:v8];

  v13 = [v2 systemGray5Color];
  [v5 setBackgroundColor:v13];

  v14 = [v2 blackColor];
  v15 = [v7 layer];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  if (v14)
  {
    v17 = v16;
    v18 = [v14 CGColor];
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v16 setFillColor:v18];

  [v0 setIsAccessibilityElement:1];
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v0 setAccessibilityLabel:v23];
}

void sub_1000376A4(uint64_t a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for RemoveColorCell();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v3 = *&v1[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_colorView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_maskShapeView];
  [v2 bounds];
  [v4 setFrame:?];
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithOvalInRect:{v6, v8, v10, v12}];
  if ([v2 isSelected])
  {
    [v2 bounds];
    v36 = CGRectInset(v35, 3.0, 3.0);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    [v2 bounds];
    v38 = CGRectInset(v37, 6.0, 6.0);
    v19 = v38.origin.x;
    v20 = v38.origin.y;
    v21 = v38.size.width;
    v22 = v38.size.height;
    v23 = [v13 bezierPathWithOvalInRect:{x, y, width, height}];
    v24 = [v23 bezierPathByReversingPath];

    [v14 appendPath:v24];
    v25 = [v13 bezierPathWithOvalInRect:{v19, v20, v21, v22}];
    [v14 appendPath:v25];
  }

  v26 = *&v4[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v4[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v14;
  v27 = v14;

  sub_1000367F8();
  v28 = [v2 isSelected];
  [v2 bounds];
  v29 = CGRectGetHeight(v39);
  v30 = -8.0;
  if (v28)
  {
    v30 = -18.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC20ColorPickerUIService15RemoveColorCell_barView];
  *&v33.a = 0x3FF0000000000000uLL;
  v32 = v29 + v30;
  v33.c = 0.0;
  v33.d = 1.0;
  *&v33.tx = 0uLL;
  [v31 setTransform:&v33];
  [v31 setBounds:{0.0, 0.0, 3.0, v32}];
  [v2 center];
  [v31 setCenter:?];
  CGAffineTransformMakeRotation(&v33, 0.785398163);
  [v31 setTransform:&v33];
}

UIAccessibilityTraits sub_100037A44()
{
  if (![v0 isSelected])
  {
    return UIAccessibilityTraitButton;
  }

  result = UIAccessibilityTraitSelected;
  if (!UIAccessibilityTraitSelected)
  {
    if (!UIAccessibilityTraitButton)
    {
      return 0;
    }

    return UIAccessibilityTraitButton | UIAccessibilityTraitSelected;
  }

  if ((UIAccessibilityTraitButton & ~UIAccessibilityTraitSelected) != 0)
  {
    return UIAccessibilityTraitButton | UIAccessibilityTraitSelected;
  }

  return result;
}

id sub_100037AC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoveColorCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100037BA4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_100037DD4(v2, &v20);
  v26 = v22;
  v27[0] = v23[0];
  *(v27 + 9) = *(v23 + 9);
  v24 = v20;
  v25 = v21;
  v28[2] = v22;
  v29[0] = v23[0];
  *(v29 + 9) = *(v23 + 9);
  v28[0] = v20;
  v28[1] = v21;
  sub_100008A40(&v24, v19, &qword_100076630, &qword_100052BB0);
  sub_1000059D4(v28, &qword_100076630, &qword_100052BB0);
  v32 = v26;
  v33[0] = v27[0];
  *(v33 + 9) = *(v27 + 9);
  v30 = v24;
  v31 = v25;
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGBLinear(_:), v4);
  v11 = Color.init(_:white:opacity:)();
  v12 = [objc_opt_self() currentDevice];
  [v12 userInterfaceIdiom];

  LOBYTE(v12) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *a1 = v8;
  *(a1 + 8) = v10;
  v13 = v33[0];
  *(a1 + 48) = v32;
  *(a1 + 64) = v13;
  *(a1 + 73) = *(v33 + 9);
  v14 = v31;
  *(a1 + 16) = v30;
  *(a1 + 32) = v14;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0x4000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v12;
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  *(a1 + 152) = v17;
  *(a1 + 160) = v18;
  *(a1 + 168) = 0;
}

void sub_100037DD4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v7 = a1[1];
  v30 = *a1;
  v31 = v7;
  v32 = a1[2];
  v33 = *(a1 + 24);
  v8 = sub_10001944C();
  v9 = swift_getKeyPath();
  v10 = [objc_opt_self() currentDevice];
  [v10 userInterfaceIdiom];

  LOBYTE(v10) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = 0;
  *&v19 = v9;
  *(&v19 + 1) = v8;
  LOBYTE(v20) = v10;
  *(&v20 + 1) = v11;
  *v21 = v12;
  *&v21[8] = v13;
  *&v21[16] = v14;
  v21[24] = 0;
  *a2 = KeyPath;
  *(a2 + 8) = v5;
  v15 = v19;
  v16 = v20;
  v17 = *v21;
  *(a2 + 57) = *&v21[9];
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 16) = v15;
  v22[0] = v9;
  v22[1] = v8;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = 0;

  sub_100008A40(&v19, v18, &qword_100076638, &qword_100052BE8);
  sub_1000059D4(v22, &qword_100076638, &qword_100052BE8);
}

uint64_t sub_100037FCC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037FF8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100038080()
{
  result = qword_100076640;
  if (!qword_100076640)
  {
    sub_100008B90(&qword_100076648, &qword_100052BF0);
    sub_10003810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076640);
  }

  return result;
}

unint64_t sub_10003810C()
{
  result = qword_100076650;
  if (!qword_100076650)
  {
    sub_100008B90(&qword_100076658, &qword_100052BF8);
    sub_100038198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076650);
  }

  return result;
}

unint64_t sub_100038198()
{
  result = qword_100076660;
  if (!qword_100076660)
  {
    sub_100008B90(&qword_100076668, &qword_100052C00);
    sub_100038224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076660);
  }

  return result;
}

unint64_t sub_100038224()
{
  result = qword_100076670;
  if (!qword_100076670)
  {
    sub_100008B90(&qword_100076678, &qword_100052C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076670);
  }

  return result;
}

void sub_100038288()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_100076680 = v2;
}

uint64_t sub_100038300()
{
  sub_10000898C(v0 + 2);
  v1 = OBJC_IVAR____TtC20ColorPickerUIService24ColorPickerConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ColorPickerConfiguration(uint64_t a1)
{
  result = qword_1000766B8;
  if (!qword_1000766B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000383F8(uint64_t a1)
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

uint64_t sub_1000384A0()
{
  if (qword_1000743E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100076680;
  if (!qword_100076680)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1000386E0(&v6);
    return 1;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t sub_1000385C0()
{
  if (qword_1000743E8 != -1)
  {
    swift_once();
  }

  v0 = qword_100076680;
  if (!qword_100076680)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1000386E0(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000386E0(uint64_t a1)
{
  v2 = sub_100004944(&unk_100076900, &unk_100052CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CombinedFullBrightnessWithRGBDisplayBoostBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CombinedFullBrightnessWithRGBDisplayBoostBehavior(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000388D4(double a1)
{
  sub_100004944(&qword_1000746F0, &qword_10004E888);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10004E490;
  *(v2 + 32) = [objc_opt_self() blackColor];
  sub_1000195E4(a1);
  *(v2 + 40) = v3;
  return v2;
}

double sub_100038964(double a1, double a2)
{
  v2 = a1 <= 0.0;
  result = 1.0;
  if (!v2)
  {
    return a2;
  }

  return result;
}

double sub_1000389A0(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFF00) == 0x200)
  {
    sub_100008BD8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C030();
    v6 = Text.init<A>(_:)();
    v8 = v7;
    LOBYTE(v5) = v9;
    sub_100004944(&qword_100076788, &qword_100052E40);
    sub_100039664();
    View.accessibility(value:)();
    v10 = v5 & 1;
    v11 = v6;
    v12 = v8;
  }

  else
  {
    sub_100018314();
    v14 = v13;
    v15 = [v13 _accessibilityNameWithLuma];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C030();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    sub_100004944(&qword_100076788, &qword_100052E40);
    sub_100039664();
    View.accessibility(value:)();
    v10 = v20 & 1;
    v11 = v16;
    v12 = v18;
  }

  sub_10000C084(v11, v12, v10);

  return result;
}

uint64_t sub_100038C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = sub_100004944(&qword_1000767B0, &qword_100052E58);
  __chkstk_darwin(v59);
  v4 = v53 - v3;
  v55 = sub_100004944(&qword_1000767B8, &qword_100052E60);
  v54 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v53 - v8;
  v57 = sub_100004944(&qword_1000767C0, &qword_100052E68);
  __chkstk_darwin(v57);
  v56 = v53 - v10;
  v58 = sub_100004944(&qword_1000767C8, &qword_100052E70);
  __chkstk_darwin(v58);
  v12 = (v53 - v11);
  v13 = sub_100004944(&qword_1000767D0, &qword_100052E78);
  v14 = __chkstk_darwin(v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v53 - v17;
  v19 = *(a1 + 64);
  if ((v19 & 0xFF00) == 0x200)
  {
    v20 = [objc_opt_self() systemGray5Color];
    v21 = Color.init(uiColor:)();
    v22 = *(type metadata accessor for RoundedRectangle() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = type metadata accessor for RoundedCornerStyle();
    (*(*(v24 - 8) + 104))(&v18[v22], v23, v24);
    __asm { FMOV            V0.2D, #1.5 }

    *v18 = _Q0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v30 = &v18[*(sub_100004944(&qword_1000767D8, &qword_100052E80) + 36)];
    v31 = v61[1];
    *v30 = v61[0];
    *(v30 + 1) = v31;
    *(v30 + 2) = v61[2];
    v32 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v34 = &v18[*(sub_100004944(&qword_1000767E0, &qword_100052EB8) + 36)];
    *v34 = KeyPath;
    v34[1] = v32;
    static UnitPoint.center.getter();
    v35 = &v18[*(v13 + 36)];
    *v35 = 0x3FE921FB54442D18;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    sub_100008A40(v18, v16, &qword_1000767D0, &qword_100052E78);
    *v12 = v21;
    v38 = sub_100004944(&qword_1000767E8, &qword_100052EC0);
    sub_100008A40(v16, v12 + *(v38 + 48), &qword_1000767D0, &qword_100052E78);
    swift_retain_n();
    sub_1000059D4(v16, &qword_1000767D0, &qword_100052E78);

    sub_100008A40(v12, v56, &qword_1000767C8, &qword_100052E70);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_1000767F0, &qword_1000767B0, &qword_100052E58, &protocol conformance descriptor for TupleView<A>);
    sub_100008D7C(&qword_1000767F8, &qword_1000767C8, &qword_100052E70, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    sub_1000059D4(v12, &qword_1000767C8, &qword_100052E70);
    return sub_1000059D4(v18, &qword_1000767D0, &qword_100052E78);
  }

  else
  {
    v40 = *(a1 + 32);
    v62 = *(a1 + 16);
    v63 = v40;
    v64 = *(a1 + 48);
    v41 = static Color.white.getter();
    v42 = static Color.black.getter();
    v43 = swift_allocObject();
    v44 = *(a1 + 48);
    *(v43 + 48) = *(a1 + 32);
    *(v43 + 64) = v44;
    v45 = *(a1 + 16);
    *(v43 + 16) = *a1;
    *(v43 + 32) = v45;
    v46 = v63;
    *(v43 + 88) = v62;
    *(v43 + 80) = *(a1 + 64);
    *(v43 + 104) = v46;
    *(v43 + 120) = v64;
    *(v43 + 136) = v19;
    sub_100039A64(a1, v61);
    v47 = v9;
    _CALayerView<>.init(onUpdate:)();
    v48 = v54;
    v49 = *(v54 + 16);
    v50 = v55;
    v49(v7, v47, v55);
    *v4 = v41;
    *(v4 + 1) = v42;
    *(v4 + 8) = 256;
    v51 = sub_100004944(&qword_100076800, &qword_100052EC8);
    v49(&v4[*(v51 + 64)], v7, v50);
    v52 = *(v48 + 8);
    v53[1] = v41;
    swift_retain_n();
    swift_retain_n();
    v52(v7, v50);

    sub_100008A40(v4, v56, &qword_1000767B0, &qword_100052E58);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_1000767F0, &qword_1000767B0, &qword_100052E58, &protocol conformance descriptor for TupleView<A>);
    sub_100008D7C(&qword_1000767F8, &qword_1000767C8, &qword_100052E70, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    sub_1000059D4(v4, &qword_1000767B0, &qword_100052E58);
    return (v52)(v47, v50);
  }
}

void sub_10003932C(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100039A64(a2, v9);
    sub_100039A64(a2, v9);
    static Published.subscript.getter();

    v4 = &CADynamicRangeHigh;
    if (v9[0] <= 1.0)
    {
      v4 = &CADynamicRangeAutomatic;
    }

    v5 = *v4;
    [a1 setPreferredDynamicRange:v5];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    sub_100039AA4(a2);

    [a1 setContentsMaximumDesiredEDR:v9[0]];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    sub_100039AA4(a2);

    sub_1000195E4(v9[0]);
    v7 = v6;
    v8 = [v6 CGColor];

    [a1 setBackgroundColor:v8];
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100039BA4(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10003955C()
{
  v1 = sub_100004944(&qword_100076788, &qword_100052E40);
  __chkstk_darwin(v1 - 8);
  v3 = (v9 - v2);
  v4 = v0[3];
  v13 = v0[2];
  v14 = v4;
  v15 = *(v0 + 32);
  v5 = v0[1];
  v11 = *v0;
  v12 = v5;
  *v3 = static Alignment.center.getter();
  v3[1] = v6;
  v7 = sub_100004944(&qword_100076790, &qword_100052E48);
  sub_100038C04(&v11, v3 + *(v7 + 44));
  v9[0] = v12;
  v9[1] = v13;
  v9[2] = v14;
  v10 = v15;
  sub_1000389A0(v9);
  return sub_1000059D4(v3, &qword_100076788, &qword_100052E40);
}

unint64_t sub_100039664()
{
  result = qword_100076798;
  if (!qword_100076798)
  {
    sub_100008B90(&qword_100076788, &qword_100052E40);
    sub_100008D7C(&qword_1000767A0, &qword_1000767A8, &qword_100052E50, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076798);
  }

  return result;
}

double sub_10003971C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  Path.move(to:)();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  Path.addLine(to:)();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  Path.addLine(to:)();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  Path.addLine(to:)();
  Path.closeSubpath()();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_10003987C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10000E290;
}

uint64_t sub_100039904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039CE0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100039968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039CE0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000399CC(uint64_t a1)
{
  v2 = sub_100039CE0();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100039A20()
{

  return _swift_deallocObject(v0, 138, 7);
}

unint64_t sub_100039AE8()
{
  result = qword_100076808;
  if (!qword_100076808)
  {
    sub_100008B90(&qword_100076810, &qword_100052F28);
    sub_100039664();
    sub_100039BA4(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076808);
  }

  return result;
}

uint64_t sub_100039BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100039C34()
{
  result = qword_100076828;
  if (!qword_100076828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076828);
  }

  return result;
}

unint64_t sub_100039C8C()
{
  result = qword_100076830;
  if (!qword_100076830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076830);
  }

  return result;
}

unint64_t sub_100039CE0()
{
  result = qword_100076838;
  if (!qword_100076838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076838);
  }

  return result;
}

id sub_100039D34(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color;
  *&v4[v9] = [objc_opt_self() blackColor];
  *&v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction] = 0;
  v11 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView;
  type metadata accessor for ShapeView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView;
  *&v4[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FavoriteColorWellCell();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_10003A078();

  return v15;
}

id sub_100039EA4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color;
  *&v1[v3] = [objc_opt_self() blackColor];
  *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = 0x3FF0000000000000;
  v4 = &v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction] = 0;
  v5 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView;
  type metadata accessor for ShapeView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v6] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView;
  *&v1[v8] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FavoriteColorWellCell();
  v9 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_10003A078();
  }

  return v10;
}

id sub_10003A000()
{
  v1 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell____lazy_storage___deleteInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIEditMenuInteraction) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10003A078()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  v5 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView];
  [v4 addSubview:v5];

  v6 = [v0 contentView];
  v7 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView];
  [v6 addSubview:v7];

  v8 = [v0 contentView];
  v9 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView];
  [v8 setMaskView:v9];

  v10 = [v7 layer];
  v11 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain;
  v12 = &CADynamicRangeHigh;
  if (*&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] <= 1.0)
  {
    v12 = &CADynamicRangeAutomatic;
  }

  v13 = *v12;
  [v10 setPreferredDynamicRange:v13];

  v14 = [v7 layer];
  [v14 setContentsMaximumDesiredEDR:*&v0[v11]];

  [v7 setBackgroundColor:*&v0[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color]];
  v15 = [v2 blackColor];
  v16 = [v5 layer];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  if (v15)
  {
    v18 = v17;
    v19 = [v15 CGColor];
    v17 = v18;
  }

  else
  {
    v19 = 0;
  }

  [v17 setFillColor:v19];

  v20 = [v2 blackColor];
  v21 = [v9 layer];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  if (v20)
  {
    v23 = v22;
    v24 = [v20 CGColor];
    v22 = v23;
  }

  else
  {
    v24 = 0;
  }

  [v22 setFillColor:v24];

  v25 = sub_10003A000();
  [v0 addInteraction:v25];
}

void sub_10003A494(uint64_t a1)
{
  v2 = v1;
  v36.receiver = v1;
  v36.super_class = type metadata accessor for FavoriteColorWellCell();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] setFrame:?];
  v11 = *&v1[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_blackHalfView];
  [v11 setFrame:{v4, v6, v8, v10}];
  v12 = *&v2[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maskShapeView];
  [v12 setFrame:{v4, v6, v8, v10}];
  v13 = [objc_allocWithZone(UIBezierPath) init];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  [v13 moveToPoint:{MinX, CGRectGetMinY(v38)}];
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v15 = CGRectGetMinX(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  [v13 addLineToPoint:{v15, CGRectGetMinY(v40)}];
  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  v16 = CGRectGetMinX(v41);
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  [v13 addLineToPoint:{v16, CGRectGetMaxY(v42)}];
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  [v13 addLineToPoint:{MaxX, CGRectGetMinY(v44)}];
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v18 = CGRectGetMinX(v45);
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [v13 addLineToPoint:{v18, CGRectGetMinY(v46)}];
  [v13 closePath];
  v19 = *&v11[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v11[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v13;
  v20 = v13;

  sub_1000367F8();
  v21 = objc_opt_self();
  v22 = [v21 bezierPathWithOvalInRect:{v4, v6, v8, v10}];
  if ([v2 isSelected])
  {
    v47.origin.x = v4;
    v47.origin.y = v6;
    v47.size.width = v8;
    v47.size.height = v10;
    v48 = CGRectInset(v47, 3.0, 3.0);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    v48.origin.x = v4;
    v48.origin.y = v6;
    v48.size.width = v8;
    v48.size.height = v10;
    v49 = CGRectInset(v48, 6.0, 6.0);
    v27 = v49.origin.x;
    v28 = v49.origin.y;
    v29 = v49.size.width;
    v30 = v49.size.height;
    v31 = [v21 bezierPathWithOvalInRect:{x, y, width, height}];
    v32 = [v31 bezierPathByReversingPath];

    [v22 appendPath:v32];
    v33 = [v21 bezierPathWithOvalInRect:{v27, v28, v29, v30}];
    [v22 appendPath:v33];
  }

  v34 = *&v12[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v12[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v22;
  v35 = v22;

  sub_1000367F8();
}

id sub_10003AB40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FavoriteColorWellCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003AC28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003AC38()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10003AC98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SpectrumView.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10003ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003AD98(uint64_t a1)
{
  sub_10003AE84();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_10003ADC0(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  *&v7[7] = *a1;
  *&v7[9] = v3;
  v4 = *(a1 + 49);
  LOBYTE(v7[0]) = 1;
  v7[11] = 0x3FF0000000000000;
  v7[12] = 0;
  v8 = 1;
  v9 = v4;
  sub_100018994(v7);
  [objc_opt_self() positionForColor:{*vcvt_hight_f32_f64(vcvt_f32_f64(*v7), *&v7[2]).i64}];
  return (v5 + 1.0) * 0.5 * a2;
}

unint64_t sub_10003AE84()
{
  result = qword_1000769C8;
  if (!qword_1000769C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000769C8);
  }

  return result;
}

id sub_10003AED8()
{
  v0 = [objc_allocWithZone(MTKView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setOpaque:1];
  [v0 setPaused:1];
  [v0 setEnableSetNeedsDisplay:1];
  sub_100004944(&qword_1000769D0, &qword_100053168);
  UIViewRepresentableContext.coordinator.getter();
  v1 = [objc_allocWithZone(SpectrumRenderer) initWithMetal:v0];
  v2 = *(v4 + 16);
  *(v4 + 16) = v1;

  return v0;
}

uint64_t sub_10003AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004944(&qword_1000769D8, &unk_100053170);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004944(&qword_100074910, &unk_10004EF60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003B124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004944(&qword_1000769D8, &unk_100053170);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004944(&qword_100074910, &unk_10004EF60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ColorSpaceButton(uint64_t a1)
{
  result = qword_100076A38;
  if (!qword_100076A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2AC(uint64_t a1)
{
  sub_10003B348();
  if (v1 <= 0x3F)
  {
    sub_10003B398(319);
    if (v2 <= 0x3F)
    {
      sub_1000153A0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003B348()
{
  if (!qword_100076A48)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100076A48);
    }
  }
}

void sub_10003B398(uint64_t a1)
{
  if (!qword_100076A50)
  {
    sub_100008368();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_100076A50);
    }
  }
}

uint64_t sub_10003B410@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_100004944(&qword_100076A88, &qword_1000531E8);
  v18 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v16 - v2;
  v20 = sub_100004944(&qword_100076A90, &qword_1000531F0);
  __chkstk_darwin(v20);
  v5 = &v16 - v4;
  v17 = sub_100004944(&qword_100076A98, &qword_1000531F8);
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - v7;
  v23 = v1;
  v22 = v1;
  sub_100004944(&qword_100076AA0, &qword_100053200);
  sub_100004944(&qword_100076AA8, &qword_100053208);
  sub_10003C3E0();
  sub_100008D7C(&qword_100076AD8, &qword_100076AA8, &qword_100053208, &protocol conformance descriptor for Picker<A, B, C>);
  Menu.init(content:label:)();
  type metadata accessor for ColorSpaceButton(0);
  sub_100004944(&qword_1000769D8, &unk_100053170);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v18 + 32))(v5, v3, v19);
  v9 = &v5[*(v20 + 36)];
  v10 = v29;
  *(v9 + 4) = v28;
  *(v9 + 5) = v10;
  *(v9 + 6) = v30;
  v11 = v25;
  *v9 = v24;
  *(v9 + 1) = v11;
  v12 = v27;
  *(v9 + 2) = v26;
  *(v9 + 3) = v12;
  sub_10003C560();
  View.menuTitle(_:)();
  sub_10003C618(v5);
  v13 = v21;
  (*(v6 + 32))(v21, v8, v17);
  result = sub_100004944(&qword_100076AF0, &qword_100053220);
  v15 = (v13 + *(result + 36));
  *v15 = sub_10003C680;
  v15[1] = 0;
  return result;
}

uint64_t sub_10003B838(uint64_t a1)
{
  v2 = type metadata accessor for ColorSpaceButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003C750(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_10003C7B8(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10003C750(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10003C7B8(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  Binding.init(get:set:)();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  sub_10000C030();
  v23 = Text.init<A>(_:)();
  v24 = v18;
  v25 = v19 & 1;
  v26 = v20;
  sub_100004944(&qword_100076B08, &unk_100053268);
  sub_10003CAB0();
  sub_10003CB04();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_10003BB3C()
{
  v5 = &off_10006C4D0;
  KeyPath = swift_getKeyPath();
  v1 = sub_100004944(&qword_100075290, qword_1000507B0);
  v2 = sub_100008D7C(&qword_100076B20, &qword_100075290, qword_1000507B0, &protocol conformance descriptor for [A]);
  v3 = sub_10003CAB0();
  return ForEach<>.init(_:id:content:)(&v5, KeyPath, sub_10003BC28, 0, v1, &type metadata for Text, v2, v3, &protocol witness table for Text);
}

uint64_t sub_10003BC28@<X0>(uint64_t a1@<X8>)
{
  sub_10001840C();
  sub_10000C030();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10003BC84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v52 = type metadata accessor for DynamicTypeSize();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004944(&qword_100076AF8, &qword_100053228);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v47 - v7;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = ObjCClassFromMetadata;
  v50 = objc_opt_self();
  v9 = [v50 bundleForClass:ObjCClassFromMetadata];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100004944(&qword_100075300, &qword_100050C20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004E4A0;
  v14 = a1[3];
  v61 = a1[2];
  v62 = v14;
  v63 = *(a1 + 32);
  v15 = a1[1];
  v59 = *a1;
  v60 = v15;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  v16 = sub_10001840C();
  v18 = v17;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10003C6A8();
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  v19 = static String.localizedStringWithFormat(_:_:)();
  v21 = v20;

  *&v59 = v19;
  *(&v59 + 1) = v21;
  sub_10000C030();
  v22 = Text.init<A>(_:)();
  v48 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v49 = v27;
  type metadata accessor for ColorSpaceButton(0);
  sub_10001CBF0(v5);
  LOBYTE(v19) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v3 + 8))(v5, v52);
  if (v19)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  KeyPath = swift_getKeyPath();
  *&v59 = v22;
  *(&v59 + 1) = v24;
  v31 = v26 & 1;
  LOBYTE(v60) = v26 & 1;
  *(&v60 + 1) = v28;
  *&v61 = KeyPath;
  BYTE8(v61) = v29;
  v32 = [v50 bundleForClass:v51];
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v57 = v36;
  v58 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  LOBYTE(v34) = v42;
  sub_100004944(&qword_100076AB8, &qword_100053210);
  sub_10003C4A8();
  v43 = v53;
  View.overrideMenuTitle(_:)();
  sub_10000C084(v39, v41, v34 & 1);

  sub_10000C084(v48, v24, v31);

  v44 = v56;
  (*(v54 + 32))(v56, v43, v55);
  result = sub_100004944(&qword_100076AA0, &qword_100053200);
  v46 = (v44 + *(result + 36));
  *v46 = sub_10003C680;
  v46[1] = 0;
  return result;
}

double sub_10003C1BC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  sub_100004944(&qword_100076350, &qword_100051160);
  v5 = Binding.wrappedValue.getter();
  if (v4 != v7)
  {
    __chkstk_darwin(v5);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10003C2A0(__int128 *a1, char a2)
{
  v4 = a1[3];
  v21 = a1[2];
  v22 = v4;
  v23 = *(a1 + 32);
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  if (a2)
  {
    sub_100018B1C(v24);
  }

  else
  {
    sub_100018994(v24);
  }

  v6 = a1[1];
  v7 = a1[3];
  v16 = a1[2];
  v17 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v12 = v16;
  v13 = a1[3];
  v18 = *(a1 + 32);
  v14 = *(a1 + 32);
  v10 = v15[0];
  v11 = v6;
  sub_10003CBA0(v15, &v19);
  Binding.wrappedValue.setter();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v19 = v10;
  v20 = v11;
  return sub_10003CC10(&v19);
}

unint64_t sub_10003C3E0()
{
  result = qword_100076AB0;
  if (!qword_100076AB0)
  {
    sub_100008B90(&qword_100076AA0, &qword_100053200);
    sub_100008B90(&qword_100076AB8, &qword_100053210);
    sub_10003C4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AB0);
  }

  return result;
}

unint64_t sub_10003C4A8()
{
  result = qword_100076AC0;
  if (!qword_100076AC0)
  {
    sub_100008B90(&qword_100076AB8, &qword_100053210);
    sub_100008D7C(&qword_100076AC8, &qword_100076AD0, &qword_100053218, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AC0);
  }

  return result;
}

unint64_t sub_10003C560()
{
  result = qword_100076AE0;
  if (!qword_100076AE0)
  {
    sub_100008B90(&qword_100076A90, &qword_1000531F0);
    sub_100008D7C(&qword_100076AE8, &qword_100076A88, &qword_1000531E8, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076AE0);
  }

  return result;
}

uint64_t sub_10003C618(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076A90, &qword_1000531F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C6A8()
{
  result = qword_100076B00;
  if (!qword_100076B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B00);
  }

  return result;
}

uint64_t sub_10003C6FC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSpaceButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSpaceButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10003C81C(_BYTE *a1@<X8>)
{
  type metadata accessor for ColorSpaceButton(0);
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  *a1 = v2;
}

uint64_t sub_10003C8C0()
{
  v1 = (type metadata accessor for ColorSpaceButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_100004944(&qword_1000769D8, &unk_100053170);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10003CA3C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ColorSpaceButton(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10003C1BC(a1, v4, v5, v6);
}

unint64_t sub_10003CAB0()
{
  result = qword_100076B10;
  if (!qword_100076B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B10);
  }

  return result;
}

unint64_t sub_10003CB04()
{
  result = qword_100076B18;
  if (!qword_100076B18)
  {
    sub_100008B90(&qword_100076B08, &unk_100053268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B18);
  }

  return result;
}

uint64_t sub_10003CBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100076350, &qword_100051160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CC10(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076350, &qword_100051160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003CC7C()
{
  result = qword_100076B28;
  if (!qword_100076B28)
  {
    sub_100008B90(&qword_100076AF0, &qword_100053220);
    sub_100008B90(&qword_100076A90, &qword_1000531F0);
    sub_10003C560();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076B28);
  }

  return result;
}

uint64_t sub_10003CD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003CE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003CF08(uint64_t a1)
{
  sub_100005880(319);
  if (v1 <= 0x3F)
  {
    sub_100046F24(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
    if (v2 <= 0x3F)
    {
      sub_100046F24(319, &qword_100074988, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_1000451C8(319, &unk_100076C00, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003D04C(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CPSlider(0);
  v5 = *(sub_10001CE7C(*&v1[*(v4 + 40)], v1[*(v4 + 40) + 8]) + 57);

  if (v3 > 2)
  {
    if (v3 != 3 && (v3 == 4 || (v5 & 1) != 0))
    {
      a1[3] = &type metadata for DecimalSliderControlStyle;
      a1[4] = &off_10006E430;
      v6 = sub_1000408E0;
    }

    else
    {
      a1[3] = &type metadata for PercentageSliderControlStyle;
      a1[4] = &off_10006E460;
      v6 = sub_100040378;
    }
  }

  else
  {
    a1[3] = &type metadata for IntegerSliderControlStyle;
    a1[4] = &off_10006E400;
    v6 = sub_100040D18;
  }

  *a1 = v6;
  a1[1] = 0;
}

uint64_t sub_10003D130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v43 = type metadata accessor for AccessibilityChildBehavior();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CPSlider(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v36 = v6;
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v38 = sub_100004944(&qword_100076D80, &qword_100053720);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v40 = sub_100004944(&qword_100076D88, &qword_100053728);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = &v32 - v10;
  v37 = type metadata accessor for CPSlider;
  sub_100044994(v1, v7, type metadata accessor for CPSlider);
  v11 = *(v5 + 80);
  v33 = (v11 + 16) & ~v11;
  v12 = swift_allocObject();
  v35 = type metadata accessor for CPSlider;
  sub_100045294(v7, v12 + ((v11 + 16) & ~v11), type metadata accessor for CPSlider);
  v13 = [objc_opt_self() currentDevice];
  [v13 userInterfaceIdiom];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = v62;
  v59 = v64;
  v52 = sub_1000452FC;
  v53 = v12;
  v54 = v61;
  v55 = v62;
  v56 = v63;
  v57 = v64;
  v58 = v65;
  sub_10003D04C(v49);
  v14 = v50;
  v15 = v51;
  sub_100008948(v49, v50);
  v16 = v2[2];
  v17 = v2[3];
  v46 = v2[1];
  v47 = v16;
  v48 = v17;
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  v46 = (*(v15 + 24))(v14, v15, v45, 0.0, 1.0);
  v47 = v18;
  sub_10000C030();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v15) = v22;
  sub_10000898C(v49);
  sub_100004944(&qword_100076D90, &qword_100053738);
  sub_100045328();
  View.accessibility(value:)();
  sub_10000C084(v19, v21, v15 & 1);

  v23 = v39;
  static AccessibilityChildBehavior.combine.getter();
  v24 = sub_1000453E0();
  v25 = v34;
  v26 = v38;
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v23, v43);
  sub_10004549C(v9);
  v27 = v32;
  sub_100044994(v2, v32, v37);
  v28 = v33;
  v29 = swift_allocObject();
  sub_100045294(v27, v29 + v28, v35);
  v52 = v26;
  v53 = v24;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  View.accessibilityAdjustableAction(_:)();

  return (*(v41 + 8))(v25, v30);
}

uint64_t sub_10003D71C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = type metadata accessor for CPSlider(0);
  v57 = *(v5 - 8);
  v67 = *(v57 + 64);
  __chkstk_darwin(v5 - 8);
  v65 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GeometryProxy();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DragGesture();
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100004944(&qword_100075598, &qword_1000515B0);
  __chkstk_darwin(v60);
  v53 = &v49 - v16;
  v61 = sub_100004944(&qword_100076DB8, &qword_100053750);
  __chkstk_darwin(v61);
  v18 = (&v49 - v17);
  v19 = sub_100004944(&qword_100076DC0, &qword_100053758);
  v20 = *(v19 - 8);
  v62 = v19;
  v63 = v20;
  __chkstk_darwin(v19);
  v66 = &v49 - v21;
  *v18 = static Alignment.center.getter();
  v18[1] = v22;
  v55 = v18;
  v23 = sub_100004944(&qword_100076DC8, &unk_100053760);
  sub_10003DEC8(a2, a1, v18 + *(v23 + 44));
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v24 = a1;
  v25 = v7;
  (*(v8 + 16))(v10, v24, v7);
  v56 = type metadata accessor for CPSlider;
  v26 = a2;
  v27 = v65;
  sub_100044994(a2, v65, type metadata accessor for CPSlider);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = *(v57 + 80);
  v30 = (v9 + v29 + v28) & ~v29;
  v57 = v29 | 7;
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v28, v10, v25);
  v54 = type metadata accessor for CPSlider;
  sub_100045294(v27, v31 + v30, type metadata accessor for CPSlider);
  sub_10004494C(&qword_1000755F8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_10004494C(&qword_100075600, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v32 = v53;
  v33 = v58;
  Gesture<>.onChanged(_:)();

  (*(v59 + 8))(v15, v33);
  v52 = v26;
  LODWORD(v59) = v26[56];
  v34 = *(v26 + 9);
  v58 = *(v26 + 8);
  v51 = v34;
  v50 = *(v26 + 10);
  LOBYTE(v71) = v59;
  v72 = v58;
  v73 = v34;
  v74 = v50;
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v35 = v69;
  v36 = v70;
  v37 = v60;
  v38 = v32 + *(v60 + 44);
  *v38 = v68;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  v39 = (v32 + *(v37 + 48));
  *v39 = sub_10001F624;
  v39[1] = 0;
  static GestureMask.all.getter();
  v40 = sub_100008D7C(&qword_100076DD0, &qword_100076DB8, &qword_100053750, &protocol conformance descriptor for ZStack<A>);
  v41 = sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0, &protocol conformance descriptor for GestureStateGesture<A, B>);
  v42 = v61;
  v43 = v55;
  View.gesture<A>(_:including:)();
  sub_1000059D4(v32, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v43, &qword_100076DB8, &qword_100053750);
  LOBYTE(v71) = v59;
  v72 = v58;
  v73 = v51;
  v74 = v50;
  GestureState.wrappedValue.getter();
  v44 = v65;
  sub_100044994(v52, v65, v56);
  v45 = swift_allocObject();
  sub_100045294(v44, v45 + ((v29 + 16) & ~v29), v54);
  v71 = v42;
  v72 = v37;
  v73 = v40;
  v74 = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v66;
  View.onChange<A>(of:initial:_:)();

  return (*(v63 + 8))(v47, v46);
}

uint64_t sub_10003DEC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v115 = a3;
  v104 = sub_100004944(&qword_100076DD8, &qword_100053778);
  __chkstk_darwin(v104);
  v103 = &v100 - v4;
  v112 = sub_100004944(&qword_100076DE0, &qword_100053780);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v102 = &v100 - v5;
  v6 = sub_100004944(&qword_100076DE8, &qword_100053788);
  v7 = __chkstk_darwin(v6 - 8);
  v114 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v113 = &v100 - v9;
  *&v116 = sub_100004944(&qword_100076DF0, &qword_100053790);
  *&v106 = *(v116 - 8);
  v10 = __chkstk_darwin(v116);
  v101 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = &v100 - v12;
  v13 = sub_100004944(&qword_100076DF8, &qword_100053798);
  v14 = __chkstk_darwin(v13 - 8);
  v110 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v100 - v16;
  v17 = type metadata accessor for Capsule();
  __chkstk_darwin(v17 - 8);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004944(&qword_100076E00, &qword_1000537A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v100 - v21;
  v23 = sub_100004944(&qword_100076E08, &qword_1000537A8);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = (&v100 - v25);
  v105 = sub_100004944(&qword_100076E10, &qword_1000537B0);
  __chkstk_darwin(v105);
  v28 = &v100 - v27;
  v29 = sub_100004944(&qword_100076E18, &qword_1000537B8);
  v30 = __chkstk_darwin(v29 - 8);
  v107 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v117 = &v100 - v32;
  *v26 = static Alignment.center.getter();
  v26[1] = v33;
  v34 = sub_100004944(&qword_100076E20, &qword_1000537C0);
  sub_10003EC04(a1, v26 + *(v34 + 44));
  v35 = v26 + *(v24 + 44);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  v38 = *(*(v37 - 8) + 104);
  v38(v35, v36, v37);
  *&v35[*(sub_100004944(&qword_100076E28, &qword_1000537C8) + 36)] = 256;
  v38(v19, v36, v37);
  v108 = a1;
  v39 = *a1;
  v40 = objc_opt_self();
  v41 = &selRef_systemGrayColor;
  if (v39 != 3)
  {
    v41 = &selRef_clearColor;
  }

  v42 = [v40 *v41];
  Color.init(uiColor:)();
  v43 = Color.opacity(_:)();

  v44 = [objc_opt_self() currentTraitCollection];
  [v44 displayScale];

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100044994(v19, v22, &type metadata accessor for Capsule);
  v45 = &v22[*(sub_100004944(&qword_100076E30, &qword_1000537D0) + 36)];
  v46 = v129;
  *v45 = v128;
  *(v45 + 1) = v46;
  *(v45 + 4) = v130;
  v47 = sub_100004944(&qword_100076E38, &qword_1000537D8);
  *&v22[*(v47 + 52)] = v43;
  *&v22[*(v47 + 56)] = 256;
  v48 = static Alignment.center.getter();
  v50 = v49;
  sub_100045A20(v19, &type metadata accessor for Capsule);
  v51 = &v22[*(sub_100004944(&qword_100076E40, &qword_1000537E0) + 36)];
  *v51 = v48;
  v51[1] = v50;
  v52 = static Alignment.center.getter();
  v54 = v53;
  v55 = &v28[*(v105 + 36)];
  sub_1000084B0(v22, v55, &qword_100076E00, &qword_1000537A0);
  v56 = (v55 + *(sub_100004944(&qword_100076E48, &qword_1000537E8) + 36));
  *v56 = v52;
  v56[1] = v54;
  sub_1000084B0(v26, v28, &qword_100076E08, &qword_1000537A8);
  sub_100045A80();
  v57 = 1;
  View.accessibility(hidden:)();
  sub_1000059D4(v28, &qword_100076E10, &qword_1000537B0);
  if (v39 == 5)
  {
    v58 = static Color.black.getter();
    v59 = [objc_opt_self() currentDevice];
    [v59 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v60 = v131;
    v61 = v132;
    v62 = v133;
    v63 = v134;
    v64 = v135;
    v65 = v136;
    GeometryProxy.size.getter();
    v66 = v101;
    v67 = &v101[*(v116 + 36)];
    *v67 = v68;
    *(v67 + 1) = v69;
    v70 = *(type metadata accessor for TickMarkModifier(0) + 20);
    *&v67[v70] = swift_getKeyPath();
    sub_100004944(&qword_1000754C8, &qword_100051010);
    swift_storeEnumTagMultiPayload();
    *v66 = v58;
    *(v66 + 8) = v60;
    *(v66 + 16) = v61;
    *(v66 + 24) = v62;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    *(v66 + 48) = v65;
    v71 = v100;
    sub_1000084B0(v66, v100, &qword_100076DF0, &qword_100053790);
    sub_1000084B0(v71, v118, &qword_100076DF0, &qword_100053790);
    v57 = 0;
  }

  (*(v106 + 56))(v118, v57, 1, v116);
  v72 = type metadata accessor for CPSlider(0);
  v73 = v108;
  if (*&v108[*(v72 + 36)])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v74 = v113;
    if ((v127 & 0xFF00) == 0x200)
    {
      (*(v111 + 56))(v113, 1, 1, v112);
    }

    else
    {
      v106 = v124;
      v116 = v123;
      v75 = v125;
      v76 = v126;
      v77 = v127 & 1;
      v122 = v127 & 1;
      v78 = HIBYTE(v127) & 1;
      v79 = *(v73 + 2);
      v80 = *(v73 + 3);
      *&v123 = *(v73 + 1);
      *(&v123 + 1) = v79;
      *&v124 = v80;
      sub_100004944(&qword_100075498, &qword_100053730);
      Binding.projectedValue.getter();
      v81 = v119;
      v82 = v120;
      v83 = v121;
      GeometryProxy.size.getter();
      v84 = v103;
      v85 = &v103[*(v104 + 36)];
      *v85 = v81;
      *(v85 + 1) = v82;
      *(v85 + 2) = v83;
      *(v85 + 3) = v86;
      *(v85 + 4) = v87;
      v88 = *(type metadata accessor for PositionModifier(0) + 24);
      *&v85[v88] = swift_getKeyPath();
      sub_100004944(&qword_1000754C8, &qword_100051010);
      swift_storeEnumTagMultiPayload();
      v89 = v106;
      *v84 = v116;
      *(v84 + 16) = v89;
      *(v84 + 32) = v75;
      *(v84 + 40) = v76;
      *(v84 + 48) = v77;
      *(v84 + 49) = v78;
      static UnitPoint.center.getter();
      sub_100045CC8();
      v90 = v102;
      View.accessibility(activationPoint:)();
      sub_1000059D4(v84, &qword_100076DD8, &qword_100053778);
      sub_1000084B0(v90, v74, &qword_100076DE0, &qword_100053780);
      (*(v111 + 56))(v74, 0, 1, v112);
    }

    v91 = v117;
    v92 = v107;
    sub_100008A40(v117, v107, &qword_100076E18, &qword_1000537B8);
    v93 = v110;
    sub_100008A40(v118, v110, &qword_100076DF8, &qword_100053798);
    v94 = v74;
    v95 = v74;
    v96 = v114;
    sub_100008A40(v94, v114, &qword_100076DE8, &qword_100053788);
    v97 = v115;
    sub_100008A40(v92, v115, &qword_100076E18, &qword_1000537B8);
    v98 = sub_100004944(&qword_100076E90, &qword_100053800);
    sub_100008A40(v93, v97 + *(v98 + 48), &qword_100076DF8, &qword_100053798);
    sub_100008A40(v96, v97 + *(v98 + 64), &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v95, &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v118, &qword_100076DF8, &qword_100053798);
    sub_1000059D4(v91, &qword_100076E18, &qword_1000537B8);
    sub_1000059D4(v96, &qword_100076DE8, &qword_100053788);
    sub_1000059D4(v93, &qword_100076DF8, &qword_100053798);
    return sub_1000059D4(v92, &qword_100076E18, &qword_1000537B8);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003EC04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OpacityBackground(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100004944(&qword_100076EA8, &qword_100053808);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = *a1;
  v45 = &v39 - v15;
  if (v17 == 3)
  {
    *v10 = 0x4028000000000000;
    (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.displayP3(_:), v3);
    v10[1] = Color.init(_:red:green:blue:opacity:)();
    v18 = *(v7 + 24);
    *(v10 + v18) = swift_getKeyPath();
    sub_100004944(&qword_100074F28, &qword_10004FDA0);
    swift_storeEnumTagMultiPayload();
    sub_100045294(v10, v16, type metadata accessor for OpacityBackground);
    (*(v8 + 56))(v16, 0, 1, v7);
LABEL_7:
    v19 = v14;
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10004F230;
    sub_10003F56C(v47);
    *(v26 + 32) = sub_10001944C();
    sub_10003F370(v48);
    *(v26 + 40) = sub_10001944C();
LABEL_8:
    Gradient.init(colors:)();
    static UnitPoint.leading.getter();
    static UnitPoint.trailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v22 = 0.0;
    v40 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v21 = v49;
    v44 = v50;
    v43 = v51;
    v42 = v52;
    v41 = v53;
    goto LABEL_9;
  }

  (*(v8 + 56))(&v39 - v15, 1, 1, v7);
  if (v17 == 4)
  {
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10004F230;
    sub_10003F56C(v47);
    if (*&a1[*(type metadata accessor for CPSlider(0) + 36)])
    {
      v19 = v14;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v48[0]);
      *(v38 + 32) = Color.init(_:)();
      sub_10003F370(v48);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v49);
      *(v38 + 40) = Color.init(_:)();
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 != 5)
    {
      goto LABEL_7;
    }

    v19 = v14;
    sub_100004944(&qword_100076EB0, &qword_100053810);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10004F230;
    *(v20 + 32) = static Color.black.getter();
    sub_10003F370(v48);
    if (*&a1[*(type metadata accessor for CPSlider(0) + 36)])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_1000195E4(v47[0]);
      *(v20 + 40) = Color.init(_:)();
      Gradient.init(colors:)();
      static UnitPoint.leading.getter();
      static UnitPoint.trailing.getter();
      LinearGradient.init(gradient:startPoint:endPoint:)();
      v21 = 0.0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      v22 = v47[0];
      v40 = v47[1];
      v23 = v47[2];
      v24 = v47[3];
      v25 = v47[4];
LABEL_9:
      v27 = v45;
      v28 = v19;
      sub_100008A40(v45, v19, &qword_100076EA8, &qword_100053808);
      v29 = v19;
      v30 = v46;
      sub_100008A40(v29, v46, &qword_100076EA8, &qword_100053808);
      v31 = sub_100004944(&qword_100076EB8, &qword_100053818);
      v32 = (v30 + *(v31 + 48));
      v33 = v40;
      *v32 = v22;
      v32[1] = v33;
      v32[2] = v23;
      v32[3] = v24;
      v32[4] = v25;
      v34 = (v30 + *(v31 + 64));
      v35 = v44;
      *v34 = v21;
      *(v34 + 1) = v35;
      v36 = v42;
      *(v34 + 2) = v43;
      *(v34 + 3) = v36;
      *(v34 + 4) = v41;

      sub_1000059D4(v27, &qword_100076EA8, &qword_100053808);

      return sub_1000059D4(v28, &qword_100076EA8, &qword_100053808);
    }
  }

  type metadata accessor for ColorPickerState(0);
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

_OWORD *sub_10003F370@<X0>(uint64_t a1@<X8>)
{
  if (*&v1[*(type metadata accessor for CPSlider(0) + 36)])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v11 & 0xFF00) == 0x200)
    {
      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, v8);
    }

    else
    {
      sub_1000197D4(3, 0, v8, COERCE_UNSIGNED_INT64(1.0));
    }

    v4 = *v1;
    v5 = 1.0;
    if (v4 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v5 = *&v9[0];
    }

    result = sub_1000197D4(v4, 0, v9, v5);
    v7 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v10;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

_OWORD *sub_10003F56C@<X0>(uint64_t a1@<X8>)
{
  if (*&v1[*(type metadata accessor for CPSlider(0) + 36)])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v11 & 0xFF00) == 0x200)
    {
      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, v8);
    }

    else
    {
      sub_1000197D4(3, 0, v8, COERCE_UNSIGNED_INT64(1.0));
    }

    v4 = *v1;
    v5 = 0.0;
    if (v4 == 4)
    {
      v5 = 1.0;
    }

    result = sub_1000197D4(v4, 0, v9, *&v5);
    v7 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v10;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  DragGesture.Value.location.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.setter();
  sub_100004944(&qword_100074608, &qword_100053770);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10003F8A8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v15 = v9;
    v16 = v10;
    v17 = v11;
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    v12 = fmin(v14 + 0.1, 1.0);
LABEL_6:
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v14 = v12;
    return Binding.wrappedValue.setter();
  }

  if (v8 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v15 = v9;
    v16 = v10;
    v17 = v11;
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    v12 = v14 + -0.1;
    if (v14 + -0.1 < 0.0)
    {
      v12 = 0.0;
    }

    goto LABEL_6;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10003FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = v2[1];
  type metadata accessor for TickMarkModifier(0);
  sub_10001D2CC(v12);
  (*(v7 + 104))(v10, enum case for LayoutDirection.rightToLeft(_:), v6);
  v14 = static LayoutDirection.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  v16 = 0.25;
  if (v14)
  {
    v16 = 0.75;
  }

  v17 = v13 * 0.5;
  v18 = v13 * 0.5 + v16 * (*v3 - v13);
  v19 = sub_100004944(&qword_1000770D0, &qword_1000539D0);
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  result = sub_100004944(&qword_1000770D8, &qword_1000539D8);
  v21 = (a2 + *(result + 36));
  *v21 = v18;
  v21[1] = v17;
  return result;
}

double sub_10003FCA0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  type metadata accessor for PositionModifier(0);
  sub_10001D2CC(v8);
  (*(v3 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  v11 = v1[1];
  v12 = v1[2];
  v14[1] = *v1;
  v14[2] = v11;
  v14[3] = v12;
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  if (v9)
  {
    return 1.0 - v14[0];
  }

  else
  {
    return v14[0];
  }
}

uint64_t sub_10003FE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = v5 * 0.5;
  v7 = v5 * 0.5 + sub_10003FCA0() * (*(v2 + 24) - v5);
  v8 = sub_100004944(&qword_1000770C0, &qword_1000539C0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100004944(&qword_1000770C8, &qword_1000539C8);
  v10 = (a2 + *(result + 36));
  *v10 = v7;
  v10[1] = v6;
  return result;
}

id sub_10003FF20()
{
  result = sub_1000405B4(0, 3, 0);
  qword_100076B30 = result;
  return result;
}

id sub_10003FF4C()
{
  result = [objc_allocWithZone(NSNumberFormatter) init];
  qword_100076B38 = result;
  return result;
}

void sub_10003FF80()
{
  v0 = type metadata accessor for CharacterSet();
  sub_100044DB4(v0, qword_100076B40);
  sub_100044D7C(v0, qword_100076B40);
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100076B30;
  v2 = [v1 minusSign];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004006C()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - v15;
  sub_100044DB4(v14, qword_100076B58);
  v21 = sub_100044D7C(v0, qword_100076B58);
  static CharacterSet.decimalDigits.getter();
  static CharacterSet.whitespaces.getter();
  CharacterSet.union(_:)();
  v22 = v1;
  v17 = *(v1 + 8);
  v17(v7, v0);
  v17(v10, v0);
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v18 = qword_100076B30;
  v19 = [v18 percentSymbol];

  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();

    CharacterSet.union(_:)();
    v17(v4, v0);
    v17(v13, v0);
    if (qword_100074400 != -1)
    {
      swift_once();
    }

    v20 = sub_100044D7C(v0, qword_100076B40);
    (*(v22 + 16))(v10, v20, v0);
    CharacterSet.union(_:)();
    v17(v10, v0);
    v17(v16, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100040378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterSet.init(charactersIn:)();
  if (qword_100074408 != -1)
  {
    swift_once();
  }

  sub_100044D7C(v4, qword_100076B58);
  v8 = CharacterSet.isSuperset(of:)();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringByReplacingCharactersInRange:v15 withString:{v16, v11}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CharacterSet.init(charactersIn:)();

    v13 = CharacterSet.isSuperset(of:)();

    v9(v7, v4);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

id sub_100040588()
{
  result = sub_1000405B4(1, 1, 2);
  qword_100076B70 = result;
  return result;
}

id sub_1000405B4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSNumberFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  [v10 setLocale:isa];

  [v10 setAllowsFloats:a1 & 1];
  [v10 setNumberStyle:a2];
  [v10 setMinimumFractionDigits:0];
  [v10 setMaximumFractionDigits:a3];
  return v10;
}

void sub_100040720()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - v6;
  sub_100044DB4(v5, qword_100076B78);
  sub_100044D7C(v0, qword_100076B78);
  static CharacterSet.decimalDigits.getter();
  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v8 = qword_100076B70;
  v9 = [v8 decimalSeparator];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();

    CharacterSet.union(_:)();
    v10 = *(v1 + 8);
    v10(v4, v0);
    v10(v7, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000408E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterSet.init(charactersIn:)();
  if (qword_100074418 != -1)
  {
    swift_once();
  }

  sub_100044D7C(v4, qword_100076B78);
  v8 = CharacterSet.isSuperset(of:)();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringByReplacingCharactersInRange:v15 withString:{v16, v11}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CharacterSet.init(charactersIn:)();
    v13 = CharacterSet.isSuperset(of:)();
    v9(v7, v4);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_100040AD0(double a1, double a2, double a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:(a3 - a2) * a1 + a2];
  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v4 = [qword_100076B70 stringFromNumber:v3];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100040BC8()
{
  v1 = *v0;

  return v1;
}

id sub_100040BF8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  result = [v4 setAllowsFloats:0];
  qword_100076B90 = v4;
  return result;
}

BOOL sub_100040D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 stringByReplacingCharactersInRange:a3 withString:{a4, v14}];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CharacterSet.init(charactersIn:)();
  static CharacterSet.decimalDigits.getter();
  if (CharacterSet.isSuperset(of:)())
  {
    v16 = String.count.getter();

    v17 = *(v7 + 8);
    v17(v10, v6);
    v17(v12, v6);
    return v16 < 4;
  }

  else
  {

    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v12, v6);
    return 0;
  }
}

uint64_t sub_100040F1C(double a1)
{
  v1 = round(a1 * 255.0);
  if (qword_100074420 != -1)
  {
    swift_once();
  }

  v2 = qword_100076B90;
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_100041020(unsigned __int8 a1, double a2)
{
  v5 = *(sub_10001CE7C(*(v2 + 24), *(v2 + 32)) + 57);

  if (a1 <= 2u)
  {
    v23 = &type metadata for IntegerSliderControlStyle;
    v24 = &off_10006E400;
    v6 = sub_100040D18;
LABEL_8:
    v22 = v6;
    sub_1000449FC(&v22, v25);
    v13 = v26;
    v14 = v27;
    sub_100008948(v25, v26);
    v17 = *(v14 + 24);
    v18.n128_u64[0] = 0;
LABEL_9:
    v16.n128_u64[0] = 1.0;
    v15.n128_f64[0] = a2;
    v12 = v17(v13, v14, v15, v18, v16);
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v23 = &type metadata for PercentageSliderControlStyle;
    v24 = &off_10006E460;
    v6 = sub_100040378;
    goto LABEL_8;
  }

  if (a1 != 4)
  {
    if (v5)
    {
      v23 = &type metadata for DecimalSliderControlStyle;
      v24 = &off_10006E430;
      v21 = sub_1000408E0;
    }

    else
    {
      v23 = &type metadata for PercentageSliderControlStyle;
      v24 = &off_10006E460;
      v21 = sub_100040378;
    }

    v22 = v21;
    sub_1000449FC(&v22, v25);
    v13 = v26;
    v14 = v27;
    sub_100008948(v25, v26);
    v17 = *(v14 + 24);
    v18.n128_u64[0] = -1.0;
    goto LABEL_9;
  }

  v23 = &type metadata for DecimalSliderControlStyle;
  v24 = &off_10006E430;
  *&v22 = sub_1000408E0;
  *(&v22 + 1) = 0;
  sub_1000449FC(&v22, v25);
  v7 = v26;
  v8 = v27;
  sub_100008948(v25, v26);
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v9.n128_u64[0] = v22;
    v10.n128_u64[0] = 1.0;
    v11.n128_f64[0] = a2;
    v12 = (*(v8 + 24))(v7, v8, v11, v10, v9);
LABEL_10:
    v19 = v12;
    sub_10000898C(v25);
    return v19;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000412DC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10001CE7C(*(v3 + 24), *(v3 + 32)) + 57);

  if (a1 <= 2u)
  {
    v23 = &type metadata for IntegerSliderControlStyle;
    v24 = &off_10006E400;
    v8 = sub_100040D18;
LABEL_8:
    v22 = v8;
    sub_1000449FC(&v22, v25);
    v14 = v26;
    v15 = v27;
    sub_100008948(v25, v26);
    v17 = *(v15 + 32);
    v18.n128_u64[0] = 0;
LABEL_9:
    v16.n128_u64[0] = 1.0;
    v13 = v17(a2, a3, v14, v15, v18, v16);
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v23 = &type metadata for PercentageSliderControlStyle;
    v24 = &off_10006E460;
    v8 = sub_100040378;
    goto LABEL_8;
  }

  if (a1 != 4)
  {
    if (v7)
    {
      v23 = &type metadata for DecimalSliderControlStyle;
      v24 = &off_10006E430;
      v21 = sub_1000408E0;
    }

    else
    {
      v23 = &type metadata for PercentageSliderControlStyle;
      v24 = &off_10006E460;
      v21 = sub_100040378;
    }

    v22 = v21;
    sub_1000449FC(&v22, v25);
    v14 = v26;
    v15 = v27;
    sub_100008948(v25, v26);
    v17 = *(v15 + 32);
    v18.n128_u64[0] = -1.0;
    goto LABEL_9;
  }

  v23 = &type metadata for DecimalSliderControlStyle;
  v24 = &off_10006E430;
  *&v22 = sub_1000408E0;
  *(&v22 + 1) = 0;
  sub_1000449FC(&v22, v25);
  v9 = v26;
  v10 = v27;
  sub_100008948(v25, v26);
  if (*(v3 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v11.n128_u64[0] = v22;
    v12.n128_u64[0] = 1.0;
    v13 = (*(v10 + 32))(a2, a3, v9, v10, v12, v11);
LABEL_10:
    v19 = v13;
    sub_10000898C(v25);
    return v19;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000415A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v81 = sub_100004944(&qword_100076C48, &qword_100053348);
  __chkstk_darwin(v81);
  v82 = (&v74 - v3);
  v84 = sub_100004944(&qword_100076C50, &qword_100053350);
  v4 = __chkstk_darwin(v84);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v74 - v7;
  __chkstk_darwin(v6);
  v86 = &v74 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004944(&qword_100076C58, &unk_100053358);
  v13 = __chkstk_darwin(v12 - 8);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v74 - v15;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v90 = a1;
  v19 = *a1;
  v20 = sub_100042FDC();
  v83 = v8;
  if (v18 != 6)
  {
    v91 = v20;
    v92 = v21;
    sub_10000C030();
    v22 = StringProtocol.localizedUppercase.getter();
    v24 = v23;

    v20 = v22;
    v21 = v24;
  }

  v91 = v20;
  v92 = v21;
  v76 = sub_10000C030();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v30 = [v16 currentDevice];
  v31 = [v30 userInterfaceIdiom];

  v80 = v19;
  v75 = v16;
  if (v31 == 6)
  {
    static Font.headline.getter();
  }

  else
  {
    static Font.footnote.getter();
  }

  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;

  sub_10000C084(v25, v27, v29 & 1);

  type metadata accessor for ColorSlider(0);
  v37 = Text.fontWeight(_:)();
  v39 = v38;
  v41 = v40;
  sub_10000C084(v32, v34, v36 & 1);

  v42 = [v75 currentDevice];
  v43 = [v42 userInterfaceIdiom];

  if (v43 == 6)
  {
    static Color.white.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v44 = Text.foregroundColor(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;

  sub_10000C084(v37, v39, v41 & 1);

  v91 = v44;
  v92 = v46;
  v93 = v48 & 1;
  v94 = v50;
  View.accessibility(hidden:)();
  sub_10000C084(v44, v46, v48 & 1);

  v51 = v77;
  sub_10001CBF0(v77);
  v52 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v78 + 8))(v51, v79);
  if (v52)
  {
    v91 = static HorizontalAlignment.center.getter();
    v92 = 0;
    v93 = 1;
    sub_1000082F0();
  }

  else
  {
    v91 = static VerticalAlignment.center.getter();
    v92 = 0x4030000000000000;
    v93 = 0;
    sub_10000829C();
  }

  v53 = AnyLayout.init<A>(_:)();
  v54 = v82;
  v55 = v83;
  v56 = v80;
  *v82 = v53;
  v57 = *(v81 + 44);

  sub_100041D6C(v90, (v54 + v57));
  v91 = sub_100042FDC();
  v92 = v58;
  v59 = Text.init<A>(_:)();
  v61 = v60;
  v63 = v62;
  sub_1000446D4();
  View.accessibility(label:)();
  sub_10000C084(v59, v61, v63 & 1);

  sub_1000059D4(v54, &qword_100076C48, &qword_100053348);
  v91 = 0x726564696C73;
  v92 = 0xE600000000000000;
  if (v56 > 2)
  {
    if (v56 == 3)
    {
      v64 = 0xE500000000000000;
      v65 = 0x6168706C41;
    }

    else if (v56 == 4)
    {
      v64 = 0xE400000000000000;
      v65 = 1852399943;
    }

    else
    {
      v64 = 0xE500000000000000;
      v65 = 0x74736F6F42;
    }
  }

  else if (v56)
  {
    if (v56 == 1)
    {
      v64 = 0xE500000000000000;
      v65 = 0x6E65657247;
    }

    else
    {
      v64 = 0xE400000000000000;
      v65 = 1702194242;
    }
  }

  else
  {
    v64 = 0xE300000000000000;
    v65 = 6579538;
  }

  v66 = v64;
  String.append(_:)(*&v65);

  v67 = v86;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_1000059D4(v55, &qword_100076C50, &qword_100053350);
  v68 = v89;
  v69 = v85;
  sub_100008A40(v89, v85, &qword_100076C58, &unk_100053358);
  v70 = v87;
  sub_100008A40(v67, v87, &qword_100076C50, &qword_100053350);
  v71 = v88;
  sub_100008A40(v69, v88, &qword_100076C58, &unk_100053358);
  v72 = sub_100004944(&qword_100076C78, &qword_100053370);
  sub_100008A40(v70, v71 + *(v72 + 48), &qword_100076C50, &qword_100053350);

  sub_1000059D4(v67, &qword_100076C50, &qword_100053350);
  sub_1000059D4(v68, &qword_100076C58, &unk_100053358);
  sub_1000059D4(v70, &qword_100076C50, &qword_100053350);
  return sub_1000059D4(v69, &qword_100076C58, &unk_100053358);
}

uint64_t sub_100041D6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(double *a1)@<X8>)
{
  v107 = a2;
  v112 = type metadata accessor for CPSlider(0);
  __chkstk_darwin(v112);
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100004944(&qword_100076C80, &qword_100053378);
  __chkstk_darwin(v111);
  v109 = (&v99 - v5);
  v6 = type metadata accessor for ColorSlider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v110 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_100076C88, &unk_100053380);
  v10 = __chkstk_darwin(v9 - 8);
  v114 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v99 - v12;
  v13 = _UISolariumEnabled();
  v108 = v8;
  v113 = v7;
  v105 = a1;
  LODWORD(v104) = *a1;
  if (v13)
  {
    v14 = v110;
    sub_100044994(a1, v110, type metadata accessor for ColorSlider);
    type metadata accessor for MainActor();
    v15 = static MainActor.shared.getter();
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    sub_100045294(v14, v17 + v16, type metadata accessor for ColorSlider);
    sub_100044994(a1, v14, type metadata accessor for ColorSlider);
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    sub_100045294(v14, v19 + v16, type metadata accessor for ColorSlider);
    Binding.init(get:set:)();
    v103 = *(&v125 + 1);
    v20 = v125;
    v21 = v126;
    v22 = *(a1 + 1);
    v23 = *(a1 + 2);
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v106 = v22;
    v99 = v23;
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v24 = v125;
    v25 = v126;
    type metadata accessor for ColorPickerConfiguration(0);
    sub_10004494C(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    v26 = Environment.init<A>(_:)();
    v28 = v27;
    v29 = EnvironmentObject.init()();
    v30 = v28 & 1;
    v31 = v104;
    LOBYTE(v157) = v30;
    v32 = v109;
    *v109 = v104;
    *(v32 + 1) = v125;
    *(v32 + 1) = *(&v125 + 3);
    v33 = v103;
    *(v32 + 1) = v20;
    *(v32 + 2) = v33;
    *(v32 + 3) = v21;
    *(v32 + 2) = v24;
    *(v32 + 48) = v25;
    *(v32 + 49) = v116;
    *(v32 + 13) = *(&v116 + 3);
    *(v32 + 7) = v26;
    *(v32 + 64) = v30;
    *(v32 + 17) = *(v160 + 3);
    *(v32 + 65) = v160[0];
    *(v32 + 9) = v29;
    *(v32 + 10) = v34;
    swift_storeEnumTagMultiPayload();
    sub_10001CB0C();
    sub_10004494C(&qword_100076C90, type metadata accessor for CPSlider, &unk_1000536D0);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v106 = type metadata accessor for ColorSlider;
    v35 = v110;
    sub_100044994(a1, v110, type metadata accessor for ColorSlider);
    type metadata accessor for MainActor();
    v36 = static MainActor.shared.getter();
    v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = &protocol witness table for MainActor;
    sub_100045294(v35, v38 + v37, type metadata accessor for ColorSlider);
    sub_100044994(a1, v35, v106);
    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = &protocol witness table for MainActor;
    sub_100045294(v35, v40 + v37, type metadata accessor for ColorSlider);
    Binding.init(get:set:)();
    v41 = v125;
    v42 = v126;
    v43 = *(a1 + 1);
    v44 = *(a1 + 2);
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v106 = v43;
    v99 = v44;
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();
    v31 = v104;

    v45 = v116;
    v46 = v117;
    *v4 = v31;
    *(v4 + 8) = v41;
    *(v4 + 3) = v42;
    *(v4 + 2) = v45;
    v4[48] = v46;
    LOBYTE(v160[0]) = 0;
    GestureState.init(wrappedValue:)();
    v47 = *(&v125 + 1);
    v48 = v126;
    v4[56] = v125;
    *(v4 + 8) = v47;
    *(v4 + 72) = v48;
    v49 = v112;
    v50 = *(v112 + 32);
    *&v4[v50] = swift_getKeyPath();
    sub_100004944(&qword_1000754C8, &qword_100051010);
    swift_storeEnumTagMultiPayload();
    v51 = &v4[*(v49 + 36)];
    *v51 = EnvironmentObject.init()();
    v51[1] = v52;
    v53 = &v4[*(v49 + 40)];
    type metadata accessor for ColorPickerConfiguration(0);
    sub_10004494C(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    *v53 = Environment.init<A>(_:)();
    v53[8] = v54 & 1;
    sub_100044994(v4, v109, type metadata accessor for CPSlider);
    swift_storeEnumTagMultiPayload();
    sub_10001CB0C();
    sub_10004494C(&qword_100076C90, type metadata accessor for CPSlider, &unk_1000536D0);
    _ConditionalContent<>.init(storage:)();
    sub_100045A20(v4, type metadata accessor for CPSlider);
  }

  v55 = v105;
  v56 = *(sub_10001CE7C(*(v105 + 3), v105[32]) + 57);

  if (v31 > 2)
  {
    v57 = v113;
    if (v31 != 3 && (v31 == 4 || (v56 & 1) != 0))
    {
      v158 = &type metadata for DecimalSliderControlStyle;
      v159 = &off_10006E430;
      v58 = sub_1000408E0;
    }

    else
    {
      v158 = &type metadata for PercentageSliderControlStyle;
      v159 = &off_10006E460;
      v58 = sub_100040378;
    }

    *&v157 = v58;
  }

  else
  {
    v158 = &type metadata for IntegerSliderControlStyle;
    v159 = &off_10006E400;
    *&v157 = sub_100040D18;
    v57 = v113;
  }

  *(&v157 + 1) = 0;
  sub_1000449FC(&v157, v160);
  v109 = type metadata accessor for ColorSlider;
  v59 = v110;
  sub_100044994(v55, v110, type metadata accessor for ColorSlider);
  type metadata accessor for MainActor();
  v60 = static MainActor.shared.getter();
  v61 = *(v57 + 80);
  v62 = (v61 + 32) & ~v61;
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = &protocol witness table for MainActor;
  sub_100045294(v59, v63 + v62, type metadata accessor for ColorSlider);
  sub_100044994(v55, v59, v109);
  v64 = static MainActor.shared.getter();
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  *(v65 + 24) = &protocol witness table for MainActor;
  sub_100045294(v59, v65 + v62, type metadata accessor for ColorSlider);
  Binding.init(get:set:)();
  v112 = *(&v125 + 1);
  v113 = v125;
  v66 = v126;
  v67 = v161;
  v68 = v162;
  sub_100008948(v160, v161);
  v101 = (*(v68 + 8))(v67, v68);
  v69 = v161;
  v70 = v162;
  sub_100008948(v160, v161);
  v100 = (*(v70 + 16))(v69, v70);
  v71 = v109;
  sub_100044994(v55, v59, v109);
  v72 = (v61 + 16) & ~v61;
  v111 = swift_allocObject();
  sub_100045294(v59, v111 + v72, type metadata accessor for ColorSlider);
  sub_100044994(v55, v59, v71);
  v104 = swift_allocObject();
  sub_100045294(v59, v104 + v72, type metadata accessor for ColorSlider);
  sub_1000088E4(v160, &v125);
  v103 = swift_allocObject();
  sub_1000449FC(&v125, v103 + 16);
  type metadata accessor for ColorPickerState(0);
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v108 = EnvironmentObject.init()();
  v110 = v73;
  v152 = 0;
  State.init(wrappedValue:)();
  LODWORD(v109) = v116;
  v102 = *(&v116 + 1);
  sub_100042E40();
  v74 = [objc_opt_self() defaultMetrics];
  v75 = [objc_opt_self() currentDevice];
  v76 = [v75 userInterfaceIdiom];

  v77 = 36.0;
  if (v76 == 6)
  {
    v77 = 44.0;
  }

  [v74 scaledValueForValue:v77];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (v106)
  {
    v78 = v100 & 1;
    v79 = v101 & 1;
    v100 &= 1u;
    v101 &= 1u;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100006314(BYTE1(v132) << 8 != 512);
    v80 = Color.init(uiColor:)();
    v81 = static Edge.Set.all.getter();
    v82 = v114;
    sub_100008A40(v115, v114, &qword_100076C88, &unk_100053380);
    v83 = v82;
    v84 = v107;
    sub_100008A40(v83, v107, &qword_100076C88, &unk_100053380);
    v85 = (v84 + *(sub_100004944(&qword_100076C98, &qword_100053438) + 48));
    *&v116 = v108;
    *(&v116 + 1) = v110;
    *&v117 = v113;
    *(&v117 + 1) = v112;
    *&v118 = v66;
    BYTE8(v118) = v79;
    BYTE9(v118) = v78;
    *(&v118 + 10) = v154;
    HIWORD(v118) = v155;
    v107 = sub_100044B00;
    *&v119 = 8;
    *(&v119 + 1) = sub_100044B00;
    *&v120 = v111;
    *(&v120 + 1) = sub_100044CAC;
    v87 = v103;
    v86 = v104;
    *&v121 = v104;
    *(&v121 + 1) = sub_100044D6C;
    *&v122 = v103;
    BYTE8(v122) = v109;
    *(&v122 + 9) = *v153;
    HIDWORD(v122) = *&v153[3];
    v88 = v102;
    *&v123[0] = v102;
    *(v123 + 8) = v149;
    *(&v123[2] + 8) = v151;
    *(&v123[1] + 8) = v150;
    *(&v123[3] + 1) = v80;
    LOBYTE(v124) = v81;
    *(&v124 + 1) = *v156;
    DWORD1(v124) = *&v156[3];
    *(&v124 + 1) = 0x4020000000000000;
    v89 = v116;
    v90 = v117;
    v91 = v119;
    v85[2] = v118;
    v85[3] = v91;
    *v85 = v89;
    v85[1] = v90;
    v92 = v120;
    v93 = v121;
    v94 = v123[0];
    v85[6] = v122;
    v85[7] = v94;
    v85[4] = v92;
    v85[5] = v93;
    v95 = v123[1];
    v96 = v123[2];
    v97 = v124;
    v85[10] = v123[3];
    v85[11] = v97;
    v85[8] = v95;
    v85[9] = v96;
    sub_100008A40(&v116, &v125, &qword_100076CA0, &qword_100053440);
    sub_1000059D4(v115, &qword_100076C88, &unk_100053380);
    v127 = v66;
    v142 = v149;
    *&v125 = v108;
    *(&v125 + 1) = v110;
    *&v126 = v113;
    *(&v126 + 1) = v112;
    v128 = v101;
    v129 = v100;
    v130 = v154;
    v131 = v155;
    v132 = 8;
    v133 = v107;
    v134 = v111;
    v135 = sub_100044CAC;
    v136 = v86;
    v137 = sub_100044D6C;
    v138 = v87;
    v139 = v109;
    *v140 = *v153;
    *&v140[3] = *&v153[3];
    v143 = v150;
    v144 = v151;
    v141 = v88;
    v145 = v80;
    v146 = v81;
    *v147 = *v156;
    *&v147[3] = *&v156[3];
    v148 = 0x4020000000000000;
    sub_1000059D4(&v125, &qword_100076CA0, &qword_100053440);
    sub_1000059D4(v114, &qword_100076C88, &unk_100053380);
    return sub_10000898C(v160);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100042D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7[3];
  v14 = a7[4];
  sub_100008948(a7, v13);
  v15 = (*(v14 + 40))(v13, v14);
  LOBYTE(a6) = v15(a1, a2, a3, a4, a5, a6);

  return a6 & 1;
}

void sub_100042E40()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [objc_opt_self() defaultMetrics];
  if (v2 == 6)
  {
    [v3 scaledValueForValue:88.0];
LABEL_7:

    return;
  }

  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = 76.0;
    if (v5)
    {
      v4 = 70.0;
    }

    [v3 scaledValueForValue:v4];
    goto LABEL_7;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_100042FDC()
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

void sub_100043154(unsigned __int8 *a1@<X2>, double *a2@<X8>)
{
  if (*(a1 + 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = v28;
    if ((v28 & 0xFF00) == 0x200)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v5 = v25;
      v6 = v24;
      v7 = v26;
      v8 = v27;
      v4 = v28;
    }

    else
    {
      v5 = v25;
      v6 = v24;
      v7 = v26;
      v8 = v27;
    }

    v24 = v6;
    v25 = v5;
    v26 = v7;
    v27 = v8;
    v28 = v4;
    v9 = *a1;
    v10 = *(a1 + 3);
    v11 = a1[32];
    v12 = sub_10001CE7C(v10, v11);
    sub_1000088E4((v12 + 2), v21);

    v13 = v22;
    v14 = v23;
    sub_100008948(v21, v22);
    v15 = (*(v14 + 8))(v13, v14);
    sub_100019A94(v9, v15 & 1);
    v17 = v16;
    sub_10000898C(v21);
    if (v9 == 5)
    {
      v18 = sub_10001CE7C(v10, v11);
      sub_1000088E4((v18 + 2), v21);

      v19 = v22;
      v20 = v23;
      sub_100008948(v21, v22);
      v17 = (*(v20 + 32))(&v24, v19, v20, v17);
      sub_10000898C(v21);
    }

    else if (v9 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v17 = (v17 + -1.0) / (v21[0] + -1.0);
    }

    *a2 = v17;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_100043444(double *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a4 + 1))
  {
    v5 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v6 = v30;
    if ((v30 & 0xFF00) == 0x200)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v7 = v27;
      v8 = v26;
      v9 = v28;
      v10 = v29;
      v6 = v30;
    }

    else
    {
      v7 = v27;
      v8 = v26;
      v9 = v28;
      v10 = v29;
    }

    v26 = v8;
    v27 = v7;
    v28 = v9;
    v29 = v10;
    v30 = v6;
    v11 = *a4;
    if (v11 == 5)
    {
      v15 = sub_10001CE7C(*(a4 + 3), a4[32]);
      sub_1000088E4((v15 + 2), &v22);

      v16 = *(&v23 + 1);
      v17 = v24;
      sub_100008948(&v22, *(&v23 + 1));
      v18 = (*(v17 + 40))(&v26, v16, v17, v5);
      sub_10000898C(&v22);
      v13 = 5;
      v12 = v18;
      v14 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v11 == 4)
      {
        v12 = v5 * (*&v22 + -1.0) + 1.0;
        v13 = 4;
        v14 = 0;
      }

      else
      {
        v14 = v22;
        v13 = v11;
        v12 = v5;
      }
    }

    sub_1000197D4(v13, v14, v20, *&v12);
    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    v25 = v21;
    v19 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v19);
    withAnimation<A>(_:_:)();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000437E8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10004494C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = (a2 + *(sub_100004944(&qword_100076ED0, &unk_100053858) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)] = 256;
  v10 = sub_100004944(&qword_100076ED8, &qword_100053868);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_100043A14@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = 0x4014000000000000;
  if (v5 == 6)
  {
    v6 = 0x4020000000000000;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v7 = sub_100004944(&qword_100076C40, &qword_100053340);
  return sub_1000415A8(v1, a1 + *(v7 + 44));
}

void sub_100043AC0(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_100004944(&qword_1000770E0, &unk_1000539E0);
  sub_100043B24(a2, a1);
}

void sub_100043B24(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for OpacityBackground(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryProxy.size.getter();
  v12 = v11 / *a1;
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  if (v12 <= 2)
  {
    v13 = 2;
  }

  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    goto LABEL_12;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v25[0] = 0;
    v25[1] = v15;
    KeyPath = swift_getKeyPath();
    sub_100044994(a1, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
    (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_100045294(v10, v18 + v16, type metadata accessor for OpacityBackground);
    (*(v5 + 32))(v18 + v17, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v19 = sub_100004944(&qword_1000755D0, &qword_1000510F0);
    v20 = sub_100004944(&qword_1000770E8, &qword_100053A10);
    v21 = sub_1000211A0();
    v22 = sub_100008D7C(&qword_1000770F0, &qword_1000770E8, &qword_100053A10, &protocol conformance descriptor for HStack<A>);
    ForEach<>.init(_:id:content:)(v25, KeyPath, sub_100047538, v18, v19, v20, v21, &protocol witness table for Int, v22);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100043E44(uint64_t *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_100004944(&qword_1000770F8, &qword_100053A18);
  sub_100043EB0(a2, a3, v7);
}

void sub_100043EB0(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OpacityBackground(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  GeometryProxy.size.getter();
  v9 = v8 / *a1;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  if (v9 <= 2)
  {
    v10 = 2;
  }

  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    goto LABEL_12;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v20[0] = 0;
    v20[1] = v12;
    KeyPath = swift_getKeyPath();
    sub_100044994(a1, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    sub_100045294(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for OpacityBackground);
    *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    v16 = sub_100004944(&qword_1000755D0, &qword_1000510F0);
    v17 = sub_100004944(&qword_100077100, &qword_100053A20);
    v18 = sub_1000211A0();
    v19 = sub_1000477F0();
    ForEach<>.init(_:id:content:)(v20, KeyPath, sub_100047744, v15, v16, v17, v18, &protocol witness table for Int, v19);
    return;
  }

LABEL_13:
  __break(1u);
}

__n128 sub_1000440E8@<Q0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_100044190(a3, *a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v7[6] = v8;
  *&v7[22] = v9;
  *&v7[38] = v10;
  *(a4 + 10) = *v7;
  *a4 = v5;
  *(a4 + 8) = 256;
  *(a4 + 26) = *&v7[16];
  result = *&v7[32];
  *(a4 + 42) = *&v7[32];
  *(a4 + 56) = *(&v10 + 1);
  return result;
}

uint64_t sub_100044190(char a1, char a2)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  type metadata accessor for OpacityBackground(0);
  sub_10001D044(v10);
  (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    result = static Color.black.getter();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = static Color.white.getter();
    if (a2)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  if (a1)
  {
    return result;
  }

LABEL_4:
}

uint64_t sub_10004431C(uint64_t a1)
{
  v2 = sub_100004944(&qword_100077168, &qword_100053AB0);
  __chkstk_darwin(v2);
  v4 = &v13 - v3;
  v5 = sub_100004944(&qword_100077170, &qword_100053AB8);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = sub_100004944(&qword_100077178, &qword_100053AC0);
  v11 = *(*(v10 - 8) + 16);
  if (v9 == 6)
  {
    v11(v7, a1, v10);
    *&v7[*(v5 + 36)] = 0x3FC999999999999ALL;
    sub_100008A40(v7, v4, &qword_100077170, &qword_100053AB8);
    swift_storeEnumTagMultiPayload();
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v7, &qword_100077170, &qword_100053AB8);
  }

  else
  {
    v11(v4, a1, v10);
    swift_storeEnumTagMultiPayload();
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000445C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100044994(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpacityBackground);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100045294(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for OpacityBackground);
  *a2 = sub_1000472CC;
  a2[1] = v7;
  return result;
}

unint64_t sub_1000446D4()
{
  result = qword_100076C60;
  if (!qword_100076C60)
  {
    sub_100008B90(&qword_100076C48, &qword_100053348);
    sub_100008D7C(&qword_100074F08, &qword_100074F10, &qword_10004FD60, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100008D7C(&qword_100076C68, &qword_100076C70, &qword_100053368, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076C60);
  }

  return result;
}

double sub_1000447DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000447EC()
{
  v1 = type metadata accessor for ColorSlider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1000447DC(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004494C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100044994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000449FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100044A14(double *a1@<X8>)
{
  v3 = *(type metadata accessor for ColorSlider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_100043154(v4, a1);
}

void sub_100044A88(double *a1)
{
  v3 = *(type metadata accessor for ColorSlider(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_100043444(a1, v4, v5, v6);
}

uint64_t sub_100044B68()
{
  v1 = type metadata accessor for ColorSlider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1000447DC(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ColorSlider(0) - 8);
  result = sub_1000412DC(*(v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80))), a1, a2);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_100044D34()
{
  sub_10000898C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044D7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100044DB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100044EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100044F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100045030(uint64_t a1)
{
  sub_1000451C8(319, &qword_100076D18, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1000451C8(319, &qword_100076D20, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1000451C8(319, &qword_100075550, &type metadata for Bool, &type metadata accessor for GestureState);
      if (v3 <= 0x3F)
      {
        sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
        if (v4 <= 0x3F)
        {
          sub_100005880(319);
          if (v5 <= 0x3F)
          {
            sub_100046F24(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000451C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100045294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100045328()
{
  result = qword_100076D98;
  if (!qword_100076D98)
  {
    sub_100008B90(&qword_100076D90, &qword_100053738);
    sub_100008D7C(&qword_100076DA0, &qword_100076DA8, &unk_100053740, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076D98);
  }

  return result;
}

unint64_t sub_1000453E0()
{
  result = qword_100076DB0;
  if (!qword_100076DB0)
  {
    sub_100008B90(&qword_100076D80, &qword_100053720);
    sub_100045328();
    sub_10004494C(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076DB0);
  }

  return result;
}

uint64_t sub_10004549C(uint64_t a1)
{
  v2 = sub_100004944(&qword_100076D80, &qword_100053720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045504()
{
  v1 = type metadata accessor for CPSlider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  sub_100004944(&qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004566C(uint64_t a1)
{
  v3 = *(type metadata accessor for CPSlider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10003F8A8(a1, v4);
}

uint64_t sub_1000456DC()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CPSlider(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v6 + 32);
  sub_100004944(&qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1000458C8(uint64_t a1)
{
  v3 = *(type metadata accessor for GeometryProxy() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CPSlider(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10003F714(a1, v1 + v4, v7);
}

uint64_t sub_1000459A0(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for CPSlider(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003F848(a1, a2, v6);
}

uint64_t sub_100045A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045A80()
{
  result = qword_100076E50;
  if (!qword_100076E50)
  {
    sub_100008B90(&qword_100076E10, &qword_1000537B0);
    sub_100045B38();
    sub_100008D7C(&qword_100076E88, &qword_100076E48, &qword_1000537E8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E50);
  }

  return result;
}

unint64_t sub_100045B38()
{
  result = qword_100076E58;
  if (!qword_100076E58)
  {
    sub_100008B90(&qword_100076E08, &qword_1000537A8);
    sub_100045BF0();
    sub_100008D7C(&qword_100076E80, &qword_100076E28, &qword_1000537C8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E58);
  }

  return result;
}

unint64_t sub_100045BF0()
{
  result = qword_100076E60;
  if (!qword_100076E60)
  {
    sub_100008B90(&qword_100076E68, &qword_1000537F0);
    sub_100008D7C(&qword_100076E70, &qword_100076E78, &qword_1000537F8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E60);
  }

  return result;
}

unint64_t sub_100045CC8()
{
  result = qword_100076E98;
  if (!qword_100076E98)
  {
    sub_100008B90(&qword_100076DD8, &qword_100053778);
    sub_100025410();
    sub_10004494C(&qword_100076EA0, type metadata accessor for PositionModifier, &unk_100053970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076E98);
  }

  return result;
}

uint64_t sub_100045DC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045E04(double a1)
{
  if (fabs(a1) >= 0.005)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  if (qword_1000743F0 != -1)
  {
    swift_once();
  }

  v3 = [qword_100076B30 stringFromNumber:v2];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_100045EEC(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = _StringObject.sharedUTF8.getter();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_100046088(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v28[0] = v10;
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[6] = 0;
  v28[7] = 0xE000000000000000;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28[2] = a1;
  v28[3] = a2;
  v28[4] = 0;
  v28[5] = v12;

  v13 = String.Iterator.next()();
  if (v13.value._object)
  {
    countAndFlagsBits = v13.value._countAndFlagsBits;
    object = v13.value._object;
    do
    {
      if (qword_100074418 != -1)
      {
        swift_once();
      }

      v17 = sub_100044D7C(v8, qword_100076B78);
      (*(v9 + 16))(v11, v17, v8);
      v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v19 = swift_allocObject();
      (*(v9 + 32))(v19 + v18, v11, v8);
      LOBYTE(v18) = sub_100045EEC(countAndFlagsBits, object, sub_1000468E4);

      if (v18)
      {
        v20._countAndFlagsBits = countAndFlagsBits;
        v20._object = object;
        String.append(_:)(v20);
      }

      v16 = String.Iterator.next()();
      countAndFlagsBits = v16.value._countAndFlagsBits;
      object = v16.value._object;
    }

    while (v16.value._object);
  }

  if (qword_100074410 != -1)
  {
    swift_once();
  }

  v21 = qword_100076B70;
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 numberFromString:{v22, v28[0]}];

  if (v23)
  {
    [v23 doubleValue];
    v25 = v24;

    if (v25 < a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= a4)
    {
      v26 = a4;
    }

    *&result = (v26 - a3) / (a4 - a3);
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_10004638C()
{
  if (qword_100074420 != -1)
  {
    swift_once();
  }

  v0 = qword_100076B90;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberFromString:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  v4 = fmin(v3 / 255.0, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return *&v4;
}

uint64_t sub_100046478(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v36 = 0;
  v37 = 0xE000000000000000;
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = a1;
  v33 = a2;
  v34 = 0;
  v35 = v16;

  v17 = String.Iterator.next()();
  if (v17.value._object)
  {
    countAndFlagsBits = v17.value._countAndFlagsBits;
    object = v17.value._object;
    v20 = (v5 + 8);
    v30 = (v5 + 16);
    do
    {
      CharacterSet.init(charactersIn:)();
      static CharacterSet.decimalDigits.getter();
      if (qword_100074400 != -1)
      {
        swift_once();
      }

      sub_100044D7C(v4, qword_100076B40);
      CharacterSet.union(_:)();
      v22 = *v20;
      (*v20)(v10, v4);
      (*v30)(v31, v15, v4);
      sub_10004494C(&qword_100076EC0, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
      dispatch thunk of SetAlgebra.intersection(_:)();
      sub_10004494C(&qword_100076EC8, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22(v10, v4);
      v22(v13, v4);
      v22(v15, v4);
      if (v23)
      {
        v24._countAndFlagsBits = countAndFlagsBits;
        v24._object = object;
        String.append(_:)(v24);
      }

      v21 = String.Iterator.next()();
      countAndFlagsBits = v21.value._countAndFlagsBits;
      object = v21.value._object;
    }

    while (v21.value._object);
  }

  if (qword_1000743F8 != -1)
  {
    swift_once();
  }

  v25 = qword_100076B38;
  v26 = String._bridgeToObjectiveC()();

  v27 = [v25 numberFromString:v26];

  if (!v27)
  {
    return 0;
  }

  v28 = [v27 integerValue];

  return fmin(fmax(v28 / 100.0, -1.0), 1.0);
}

uint64_t sub_10004685C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100046988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046A38(uint64_t a1)
{
  sub_1000451C8(319, &qword_100076D18, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100046B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_100004944(&qword_100076CA8, &qword_100053630);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100046BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_100004944(&qword_100076CA8, &qword_100053630);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100046C48(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_100046F24(319, &unk_100076D28, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100046D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_100004944(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100046DD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004944(&qword_1000754D8, &qword_100051028);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046E84(uint64_t a1)
{
  sub_100046F24(319, &qword_100075548, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100046F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100046F7C()
{
  result = qword_1000770A0;
  if (!qword_1000770A0)
  {
    sub_100008B90(&qword_1000770A8, qword_1000538C8);
    sub_100008B90(&qword_100076D80, &qword_100053720);
    sub_1000453E0();
    swift_getOpaqueTypeConformance2();
    sub_10004494C(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000770A0);
  }

  return result;
}

unint64_t sub_100047078()
{
  result = qword_1000770B0;
  if (!qword_1000770B0)
  {
    sub_100008B90(&qword_100076ED0, &unk_100053858);
    sub_100008D7C(&qword_1000770B8, &qword_100076ED8, &qword_100053868, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000770B0);
  }

  return result;
}

uint64_t sub_1000471B0()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000472F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100047390()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

void sub_100047538(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OpacityBackground(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_100043E44(a1, (v2 + v6), v9, a2);
}

uint64_t sub_10004761C()
{
  v1 = (type metadata accessor for OpacityBackground(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_100047744@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OpacityBackground(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1000440E8(a1, v6, a2).n128_u64[0];
  return result;
}

unint64_t sub_1000477F0()
{
  result = qword_100077108;
  if (!qword_100077108)
  {
    sub_100008B90(&qword_100077100, &qword_100053A20);
    sub_100008D7C(&qword_100077110, &qword_100077118, &qword_100053A28, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077108);
  }

  return result;
}

unint64_t sub_1000478BC()
{
  result = qword_100077120;
  if (!qword_100077120)
  {
    sub_100008B90(&qword_1000770C8, &qword_1000539C8);
    sub_100008D7C(&qword_100077128, &qword_1000770C0, &qword_1000539C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077120);
  }

  return result;
}

unint64_t sub_100047978()
{
  result = qword_100077130;
  if (!qword_100077130)
  {
    sub_100008B90(&qword_1000770D8, &qword_1000539D8);
    sub_100008D7C(&qword_100077138, &qword_1000770D0, &qword_1000539D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077130);
  }

  return result;
}

unint64_t sub_100047A34()
{
  result = qword_100077140;
  if (!qword_100077140)
  {
    sub_100008B90(&qword_100077148, &qword_100053A50);
    sub_100008D7C(&qword_100077150, &qword_100077158, &qword_100053A58, &protocol conformance descriptor for GeometryReader<A>);
    sub_100047AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077140);
  }

  return result;
}

unint64_t sub_100047AEC()
{
  result = qword_100077160;
  if (!qword_100077160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077160);
  }

  return result;
}

unint64_t sub_100047B5C()
{
  result = qword_100077180;
  if (!qword_100077180)
  {
    sub_100008B90(&qword_100077170, &qword_100053AB8);
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077180);
  }

  return result;
}

unint64_t sub_100047C18()
{
  result = qword_100077190;
  if (!qword_100077190)
  {
    sub_100008B90(&qword_100077198, &qword_100053AC8);
    sub_100047B5C();
    sub_100008D7C(&qword_100077188, &qword_100077178, &qword_100053AC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100077190);
  }

  return result;
}

id sub_1000488EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 eyedropperDidSelectColor:a2];
    v3 = *(a1 + 32);
  }

  return [v3 eyedropperDidDismiss];
}

float sub_100048B80(float *a1, float a2)
{
  v2 = a1[1];
  v3 = *a1 * 3.0;
  v4 = ((a1[2] - *a1) * 3.0) - v3;
  v5 = (1.0 - v3) - v4;
  v6 = 8;
  v7 = a2;
  while (1)
  {
    v8 = v7 * (v3 + (v7 * (v4 + (v5 * v7))));
    if (vabds_f32(v8, a2) < 0.00001)
    {
      break;
    }

    v9 = v3 + (v7 * ((v4 + v4) + ((v5 * 3.0) * v7)));
    if (fabsf(v9) >= 0.000001)
    {
      v7 = v7 - ((v8 - a2) / v9);
      if (--v6)
      {
        continue;
      }
    }

    v7 = 0.0;
    if (a2 >= 0.0)
    {
      v7 = 1.0;
      if (a2 <= 1.0)
      {
        v10 = 0.0;
        v11 = 1.0;
        v12 = -1025;
        v7 = a2;
        do
        {
          if (__CFADD__(v12++, 1))
          {
            break;
          }

          v14 = v7 * (v3 + (v7 * (v4 + (v5 * v7))));
          if (vabds_f32(v14, a2) < 0.00001)
          {
            break;
          }

          if ((v14 - a2) >= 0.0)
          {
            v11 = v7;
          }

          else
          {
            v10 = v7;
          }

          v7 = (v11 - v10) * 0.5 + v10;
        }

        while (v10 < v11);
      }
    }

    break;
  }

  v15 = ((a1[3] - v2) * 3.0) - (v2 * 3.0);
  return v7 * ((v2 * 3.0) + (v7 * (v15 + (((1.0 - (v2 * 3.0)) - v15) * v7))));
}

float sub_100048CD8(float *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 * 3.0;
  v5 = ((a1[3] - v3) * 3.0) - (v3 * 3.0);
  v6 = (1.0 - v4) - v5;
  v7 = 8;
  v8 = a2;
  while (1)
  {
    v9 = v8 * (v4 + (v8 * (v5 + (v6 * v8))));
    if (vabds_f32(v9, a2) < 0.00001)
    {
      break;
    }

    v10 = v4 + (v8 * ((v5 + v5) + ((v6 * 3.0) * v8)));
    if (fabsf(v10) >= 0.000001)
    {
      v8 = v8 - ((v9 - a2) / v10);
      if (--v7)
      {
        continue;
      }
    }

    v8 = 0.0;
    if (a2 >= 0.0)
    {
      v8 = 1.0;
      if (a2 <= 1.0)
      {
        v11 = 0.0;
        v12 = 1.0;
        v13 = -1025;
        v8 = a2;
        do
        {
          if (__CFADD__(v13++, 1))
          {
            break;
          }

          v15 = v8 * (v4 + (v8 * (v5 + (v6 * v8))));
          if (vabds_f32(v15, a2) < 0.00001)
          {
            break;
          }

          if ((v15 - a2) >= 0.0)
          {
            v12 = v8;
          }

          else
          {
            v11 = v8;
          }

          v8 = (v12 - v11) * 0.5 + v11;
        }

        while (v11 < v12);
      }
    }

    break;
  }

  v16 = ((a1[2] - v2) * 3.0) - (v2 * 3.0);
  return v8 * ((v2 * 3.0) + (v8 * (v16 + (((1.0 - (v2 * 3.0)) - v16) * v8))));
}

__n64 sub_100048E30(double a1)
{
  v1 = 0.5 - *(&a1 + 1) * 0.5;
  if (v1 >= 0.16667)
  {
    v3 = v1;
    if (v1 >= 0.33333)
    {
      if (v3 >= 0.500000015)
      {
        if (v1 >= 0.66667)
        {
          v8 = v3 * 6.0;
          if (v3 >= 0.833333358)
          {
            v10 = 1.0 - (v8 + -5.0);
            sub_100048B80(flt_100053B80, v10);
            return COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            v9 = v8 + -4.0;
            result.n64_f32[0] = sub_100048B80(flt_100053B80, v9);
            result.n64_u32[1] = 0;
          }
        }

        else
        {
          v6 = 1.0 - (v3 * 6.0 + -3.0);
          v7 = sub_100048B80(flt_100053B80, v6);
          result.n64_u32[0] = 0;
          result.n64_f32[1] = v7;
        }
      }

      else
      {
        v5 = v3 * 6.0 + -2.0;
        sub_100048B80(flt_100053B80, v5);
        result.n64_u32[0] = 0;
        result.n64_u32[1] = 1.0;
      }
    }

    else
    {
      v4 = 1.0 - (v3 * 6.0 + -1.0);
      result.n64_f32[0] = sub_100048B80(flt_100053B80, v4);
      result.n64_u32[1] = 1.0;
    }
  }

  else
  {
    return __PAIR64__(COERCE_UNSIGNED_INT(sub_100048B80(flt_100053B80, v1 * 6.0)), 1.0);
  }

  return result;
}

float sub_100049000(__n128 a1)
{
  if (a1.n128_f32[0] >= a1.n128_f32[1] && a1.n128_f32[0] >= a1.n128_f32[2])
  {
    v4 = (a1.n128_f32[1] - a1.n128_f32[2]) / (a1.n128_f32[0] - fminf(a1.n128_f32[1], a1.n128_f32[2]));
    goto LABEL_17;
  }

  if (a1.n128_f32[1] >= a1.n128_f32[0] && a1.n128_f32[1] >= a1.n128_f32[2])
  {
    v5 = (a1.n128_f32[2] - a1.n128_f32[0]) / (a1.n128_f32[1] - fminf(a1.n128_f32[0], a1.n128_f32[2]));
    v6 = 2.0;
LABEL_16:
    v4 = v5 + v6;
LABEL_17:
    while (v4 < 0.0)
    {
      v4 = v4 + 6.0;
    }

    return v4 * 60.0;
  }

  v4 = 0.0;
  if (a1.n128_f32[2] >= a1.n128_f32[0] && a1.n128_f32[2] >= a1.n128_f32[1])
  {
    v5 = (a1.n128_f32[0] - a1.n128_f32[1]) / (a1.n128_f32[2] - fminf(a1.n128_f32[0], a1.n128_f32[1]));
    v6 = 4.0;
    goto LABEL_16;
  }

  return v4 * 60.0;
}

float sub_10004909C(__n128 a1)
{
  v1 = sub_100049000(a1);
  *&v2 = 0;
  v3 = 100;
  v4 = 0.5;
  while (1)
  {
    v10 = v2;
    v5.n128_u64[0] = sub_100048E30(*&v2).n64_u64[0];
    v6 = sub_100049000(v5);
    if (vabds_f32(v1, v6) < 0.001)
    {
      break;
    }

    v7 = v10;
    if (v1 >= v6)
    {
      v8 = -v4;
    }

    else
    {
      v8 = v4;
    }

    *(&v7 + 1) = *(&v10 + 1) + v8;
    v4 = v4 * 0.5;
    --v3;
    v2 = v7;
    if (!v3)
    {
      return *(&v2 + 1);
    }
  }

  DWORD1(v2) = DWORD1(v10);
  return *(&v2 + 1);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}