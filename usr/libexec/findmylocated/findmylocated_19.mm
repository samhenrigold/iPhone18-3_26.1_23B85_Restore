void sub_100202C20(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_10004B564(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
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

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
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

void *sub_100202EA8()
{
  v1 = v0;
  sub_10004B564(&qword_1005B00F8, &qword_1004D1688);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10000709C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10004B064(v19, (*(v4 + 56) + 32 * v17));
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

void sub_100203074(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_10004B564(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_10000709C(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_100203214()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01E8, &qword_1004D1770);
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

void sub_10020337C()
{
  v1 = v0;
  sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
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

void sub_100203520()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01D0, &qword_1004D1758);
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

void sub_100203688()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocation(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B01C0, &qword_1004D1748);
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
        sub_10020AABC(*(v4 + 56) + v26, v30, type metadata accessor for SecureLocation);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10020AE30(v25, *(v27 + 56) + v26, type metadata accessor for SecureLocation);
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

void *sub_1002038E0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0118, &qword_1004D16A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_100182FA8(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
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

void sub_100203AB0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0288, &qword_1004D1830);
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

void sub_100203C18()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01B8, &qword_1004D1740);
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
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_100203DB0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0128, &qword_1004D16B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_100139350(v22, v24);
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

void *sub_100203F50()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - v3;
  sub_10004B564(&qword_1005B0360, &qword_1004D1988);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        sub_100005F04(*(v4 + 56) + v26, v31, &qword_1005AAC60, &qword_1004C46E8);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1000176A8(v25, *(v27 + 56) + v26, &qword_1005AAC60, &qword_1004C46E8);
        result = sub_100005F6C(v23, v24);
        v15 = v34;
      }

      while (v34);
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

        v1 = v30;
        v6 = v33;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
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

void sub_1002041B8()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsSubscription(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B01C8, &qword_1004D1750);
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
        sub_10020AABC(*(v4 + 56) + v26, v30, type metadata accessor for SecureLocationsSubscription);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10020AE30(v25, *(v27 + 56) + v26, type metadata accessor for SecureLocationsSubscription);
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

void sub_100204438()
{
  v1 = v0;
  sub_10004B564(&qword_1005B03C0, &qword_1004D19F8);
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void sub_1002045A0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B03B8, &qword_1004D19F0);
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

void sub_100204774()
{
  v1 = v0;
  v2 = type metadata accessor for FenceRecord(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B00B8, &qword_1004D1648);
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
        sub_10020AABC(*(v4 + 56) + v26, v30, type metadata accessor for FenceRecord);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10020AE30(v25, *(v27 + 56) + v26, type metadata accessor for FenceRecord);
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

void *sub_1002049CC()
{
  v1 = v0;
  v27 = type metadata accessor for UUID();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B00B0, &qword_1004D1640);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v28 = v3;
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
    v25[1] = v30 + 32;
    v25[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v20 = v27;
        v19 = v28;
        v21 = v30;
        v22 = *(v30 + 72) * v18;
        v23 = v26;
        (*(v30 + 16))(v26, *(v28 + 48) + v22, v27);
        v18 *= 584;
        memcpy(v33, (*(v19 + 56) + v18), 0x241uLL);
        v24 = v29;
        (*(v21 + 32))(*(v29 + 48) + v22, v23, v20);
        memcpy((*(v24 + 56) + v18), v33, 0x241uLL);
        result = sub_10005D0C0(v33, &v32);
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

        v1 = v25[0];
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

  return result;
}

void sub_100204C80(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10004B564(a1, a2);
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

void *sub_100204E04()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B02B0, &qword_1004D1858);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_100011004(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_100010BD4(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

void sub_10020508C()
{
  v1 = v0;
  Priority = type metadata accessor for LocatePriority();
  v3 = *(Priority - 8);
  v39 = Priority;
  v40 = v3;
  __chkstk_darwin(Priority);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0200, &qword_1004D1788);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v41 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v43 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v39;
        v21 = v40;
        v23 = *(v40 + 72) * v20;
        v24 = v38;
        (*(v40 + 16))(v38, *(v5 + 48) + v23, v39);
        v25 = *(v5 + 56);
        v26 = 24 * v20;
        v27 = (v25 + 24 * v20);
        v28 = *v27;
        v29 = v27[1];
        v42 = v27[2];
        v30 = v41;
        (*(v21 + 32))(*(v41 + 48) + v23, v24, v22);
        v31 = (*(v30 + 56) + v26);
        v5 = v37;
        *v31 = v28;
        v31[1] = v29;
        v31[2] = v42;

        v15 = v43;
      }

      while (v43);
    }

    v18 = v11;
    v7 = v41;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
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

void sub_100205358(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_10004B564(a2, a3);
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
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
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
    *v6 = v10;
  }
}

char *sub_100205610(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v48 = a1(0);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - v9;
  v46 = a2(0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - v10;
  sub_10004B564(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v8;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v8 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v13;
  }

  return result;
}

void sub_10020596C()
{
  v1 = v0;
  v39 = type metadata accessor for UUID();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0278, &qword_1004D1820);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = (v29 + v23);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;

        v14 = v36;
        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

char *sub_100205C18()
{
  v1 = v0;
  v31 = type metadata accessor for Destination();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0198, &qword_1004D1720);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
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

  return result;
}

char *sub_100205E88()
{
  v1 = v0;
  v2 = type metadata accessor for EncryptedLocation();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0268, &qword_1004D1810);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v38 + 32;
    v35 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v37;
        v26 = v38;
        v27 = *(v38 + 72) * v20;
        v28 = v36;
        (*(v38 + 16))(v36, *(v5 + 56) + v27, v37);
        v29 = v39;
        v30 = (*(v39 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v26 + 32))(*(v29 + 56) + v27, v28, v25);
        result = sub_100005F6C(v23, v24);
        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    v7 = v39;
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
        v40 = (v19 - 1) & v19;
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

void sub_10020612C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_10004B564(a2, a3);
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
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
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
    *v6 = v10;
  }
}

char *sub_100206414(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = sub_10004B564(a1, a2);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - v8;
  v45 = type metadata accessor for UUID();
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(a3, a4);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

id sub_100206760()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0358, &qword_1004D1980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10000709C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10004B064(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_1002068E0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100206A10(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100206B04;

  return v5(v2 + 32);
}

uint64_t sub_100206B04()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100206C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100206CA8;

  return daemon.getter();
}

uint64_t sub_100206CA8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 24) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001E6D00(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100206E84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100206E84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_1002072C4;
  }

  else
  {

    v4 = sub_100206FA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100206FA0()
{
  v9 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s reset all local DB", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10020714C;

  return sub_100309068();
}

uint64_t sub_10020714C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002074D0;
  }

  else
  {
    v2 = sub_100207260;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100207260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002072C4()
{
  v11 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed with error %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002074D0()
{
  v11 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed with error %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1002076DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0110, &qword_1004D16A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, v11, &qword_1005A92A0, &qword_1004C2818);
      v5 = v11[0];
      result = sub_1001FD7B4(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100010BD4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100207808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v16, &qword_1005B0130, &qword_1004D16C0);
      v5 = v16;
      v6 = v17;
      result = sub_100011104(v16, v17, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 25) = *(v19 + 9);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100207968(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0180, &qword_1004D1710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0178, &qword_1004D1708);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0180, &qword_1004D1710);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100011104(*v5, v12, &String.hash(into:), sub_10001145C);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Handle();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100207B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0080, &qword_1004D1618);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005B0088, &qword_1004D38F0);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100207CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A9E50, &qword_1004C33B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005A9E58, &qword_1004C33C0);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100207E2C(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = type metadata accessor for Friend();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = __chkstk_darwin(v3);
  v72 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v63 - v6;
  v69 = type metadata accessor for Device();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10004B564(&qword_1005B0010, &qword_1004D1578);
  __chkstk_darwin(v66);
  v68 = &v63 - v8;
  v9 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v63 - v13;
  __chkstk_darwin(v12);
  v71 = &v63 - v14;
  v15 = type metadata accessor for DataManager.State(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v63 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v63 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v63 - v26;
  __chkstk_darwin(v25);
  v29 = &v63 - v28;
  v30 = sub_10004B564(&qword_1005B0018, &qword_1004D1580);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v63 - v32;
  v34 = *(v31 + 56);
  sub_10020AABC(a1, &v63 - v32, type metadata accessor for DataManager.State);
  sub_10020AABC(v76, &v33[v34], type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_10020AABC(v33, v18, type metadata accessor for DataManager.State);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_28;
        }

        v36 = *v18;
        goto LABEL_22;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_28;
      }
    }

    sub_10020A58C(v33, type metadata accessor for DataManager.State);
    v43 = 1;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10020AABC(v33, v27, type metadata accessor for DataManager.State);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v74 + 8))(v27, v75);
        goto LABEL_28;
      }

      v46 = v73;
      v45 = v74;
      v47 = *(v74 + 32);
      v48 = v75;
      v47(v73, v27, v75);
      v49 = v72;
      v47(v72, &v33[v34], v48);
      v43 = static Friend.== infix(_:_:)();
      v50 = *(v45 + 8);
      v50(v49, v48);
      v50(v46, v48);
      goto LABEL_23;
    }

    sub_10020AABC(v33, v29, type metadata accessor for DataManager.State);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100002CE0(v29, &qword_1005AA718, &qword_1004C4370);
LABEL_28:
      sub_100002CE0(v33, &qword_1005B0018, &qword_1004D1580);
      v43 = 0;
      return v43 & 1;
    }

    v52 = v71;
    sub_1000176A8(v29, v71, &qword_1005AA718, &qword_1004C4370);
    v53 = &v33[v34];
    v54 = v70;
    sub_1000176A8(v53, v70, &qword_1005AA718, &qword_1004C4370);
    v55 = *(v66 + 48);
    v56 = v68;
    sub_100005F04(v52, v68, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v54, v56 + v55, &qword_1005AA718, &qword_1004C4370);
    v57 = v67;
    v58 = *(v67 + 48);
    v59 = v69;
    if (v58(v56, 1, v69) == 1)
    {
      sub_100002CE0(v54, &qword_1005AA718, &qword_1004C4370);
      sub_100002CE0(v52, &qword_1005AA718, &qword_1004C4370);
      if (v58(v56 + v55, 1, v59) == 1)
      {
        sub_100002CE0(v56, &qword_1005AA718, &qword_1004C4370);
        v43 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v60 = v65;
      sub_100005F04(v56, v65, &qword_1005AA718, &qword_1004C4370);
      if (v58(v56 + v55, 1, v59) != 1)
      {
        v61 = v64;
        (*(v57 + 32))(v64, v56 + v55, v59);
        sub_1001E6D00(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v62 = *(v57 + 8);
        v62(v61, v59);
        sub_100002CE0(v70, &qword_1005AA718, &qword_1004C4370);
        sub_100002CE0(v71, &qword_1005AA718, &qword_1004C4370);
        v62(v60, v59);
        sub_100002CE0(v56, &qword_1005AA718, &qword_1004C4370);
        goto LABEL_23;
      }

      sub_100002CE0(v70, &qword_1005AA718, &qword_1004C4370);
      sub_100002CE0(v71, &qword_1005AA718, &qword_1004C4370);
      (*(v57 + 8))(v60, v59);
    }

    sub_100002CE0(v56, &qword_1005B0010, &qword_1004D1578);
    v43 = 0;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10020AABC(v33, v24, type metadata accessor for DataManager.State);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v74 + 8))(v24, v75);
      goto LABEL_28;
    }

    v38 = v73;
    v37 = v74;
    v39 = *(v74 + 32);
    v40 = v24;
    v41 = v75;
    v39(v73, v40, v75);
    v42 = v72;
    v39(v72, &v33[v34], v41);
    v43 = static Friend.== infix(_:_:)();
    v44 = *(v37 + 8);
    v44(v42, v41);
    v44(v38, v41);
    goto LABEL_23;
  }

  sub_10020AABC(v33, v21, type metadata accessor for DataManager.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_28;
  }

  v36 = *v21;
LABEL_22:
  v43 = v36 ^ v33[v34] ^ 1;
LABEL_23:
  sub_10020A58C(v33, type metadata accessor for DataManager.State);
  return v43 & 1;
}

unint64_t sub_1002087C4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0008, &qword_1004D1570);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B01E0, &qword_1004D1768);
      result = sub_1001FD93C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Handle();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Location();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002089E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0340, &qword_1004D1968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100208B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10004B564(&qword_1005B0118, &qword_1004D16A8);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_100005F04(&v27, v26, &qword_1005ADC98, &qword_1004CC1C8);
  result = sub_100011104(v7, v8, &String.hash(into:), sub_10001145C);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_100005F04(&v27, v26, &qword_1005ADC98, &qword_1004CC1C8);
    result = sub_100011104(v7, v8, &String.hash(into:), sub_10001145C);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100208D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0090, &qword_1004D1620);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100208E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100208FA0(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0290, &qword_1004D1838);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0298, &qword_1004D1840);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0290, &qword_1004D1838);
      result = sub_1001FDA80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Destination();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002092FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_10004B564(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_10004B564(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_100005F04(v16, v12, a2, v27);
      result = sub_1001FD868(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002094DC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0388, &qword_1004D19C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0390, &qword_1004D19C8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0388, &qword_1004D19C0);
      result = sub_1001FD868(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_10004B564(&qword_1005AFA18, &qword_1004D1148);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209708(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0368, &qword_1004D19A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B02A8, &qword_1004D1850);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0368, &qword_1004D19A8);
      result = sub_1001FDB54(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ClientID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Date();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209928(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0050, &qword_1004D15A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0058, &qword_1004D15B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0050, &qword_1004D15A8);
      result = sub_1001FDC28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Friend();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FriendshipAction();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209B48(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0040, &qword_1004D1598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0028, &qword_1004D1590);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B0040, &qword_1004D1598);
      result = sub_1001FDCFC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AppNotificationEvent.EventType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B02B8, &qword_1004D1860);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_1001FDDD0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v16, &qword_1005B0160, &qword_1004D16F0);
      v5 = v16;
      v6 = v17;
      result = sub_100011104(v16, v17, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 26) = *(v19 + 10);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209F8C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B01A0, &qword_1004D1728);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005B0198, &qword_1004D1720);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v9, v5, &qword_1005B01A0, &qword_1004D1728);
      result = sub_1001FDA80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Destination();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10020A174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B01A8, &qword_1004D1730);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_10020A2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_10020AABC(a1, &v19 - v8, type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = 1;
      }

      else
      {
        v11 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v11 = 7;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = type metadata accessor for Friend();
      (*(*(v12 - 8) + 8))(v9, v12);
      v11 = 4;
    }

    else
    {
      v11 = 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = type metadata accessor for Friend();
    (*(*(v13 - 8) + 8))(v9, v13);
    v11 = 3;
  }

  else
  {
    sub_100002CE0(v9, &qword_1005AA718, &qword_1004C4370);
    v11 = 2;
  }

  sub_10020AABC(a2, v7, type metadata accessor for DataManager.State);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        v15 = 1;
      }

      else
      {
        v15 = 5;
      }
    }

    else if (v14 == 4)
    {
      v15 = 7;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14 > 1)
  {
    if (v14 == 2)
    {
      v16 = type metadata accessor for Friend();
      (*(*(v16 - 8) + 8))(v7, v16);
      v15 = 4;
    }

    else
    {
      v15 = 6;
    }
  }

  else if (v14)
  {
    v17 = type metadata accessor for Friend();
    (*(*(v17 - 8) + 8))(v7, v17);
    v15 = 3;
  }

  else
  {
    sub_100002CE0(v7, &qword_1005AA718, &qword_1004C4370);
    v15 = 2;
  }

  return v11 < v15;
}

uint64_t sub_10020A58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020A5EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Response() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_1001F8930(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t sub_10020A730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1001FA6B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10020A804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001FAD94(a1, v4, v5, v6);
}

uint64_t sub_10020A8B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FAE40(a1, v5, v4);
}

uint64_t sub_10020A964(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FAEDC(a1, v5, v4);
}

uint64_t sub_10020AA10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FC634(a1, v5, v4);
}

uint64_t sub_10020AABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AB24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F4F34(a1, v5, v4);
}

uint64_t sub_10020ABD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F6FB8(a1, v5, v4);
}

uint64_t sub_10020AC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F7054(a1, v4, v5, v6);
}

uint64_t sub_10020AD30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F7228(a1, v5, v4);
}

unint64_t sub_10020ADDC()
{
  result = qword_1005B00F0;
  if (!qword_1005B00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B00F0);
  }

  return result;
}

uint64_t sub_10020AE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AE98()
{
  v2 = *(type metadata accessor for AckAlertEndpoint(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10004B564(&qword_1005B0138, &qword_1004D16C8) - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = v0 + v4;
  v10 = *(v0 + v4);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_10000368C;

  return sub_1001E73A8(v8, v0 + v3, v10, v11, v12, v0 + v5, v0 + v7, v13);
}

unint64_t sub_10020B050()
{
  result = qword_1005B0150;
  if (!qword_1005B0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0150);
  }

  return result;
}

uint64_t sub_10020B0A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100002EF4(a1, v4);
}

uint64_t sub_10020B15C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100206A10(a1, v4);
}

uint64_t sub_10020B214(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10001DCB4(a1, v4);
}

uint64_t sub_10020B2E4()
{
  v2 = *(type metadata accessor for Account() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1001EDA70(v4, v0 + v3, v5);
}

uint64_t sub_10020B3EC(uint64_t a1)
{
  v4 = *(type metadata accessor for Account() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001EDE94(a1, v6, v1 + v5, v7);
}

uint64_t sub_10020B508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001EECA4(a1, v4);
}

uint64_t sub_10020B5B0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1001EFA10(a1, a2, v6);
}

uint64_t sub_10020B6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F02AC(a1, v4, v5, v6);
}

uint64_t sub_10020B760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F0C4C(a1, v4, v5, v6);
}

uint64_t sub_10020B818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F3424(a1, v4, v5, v6);
}

uint64_t sub_10020B8D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10020B918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F31C4(a1, v4, v5, v6);
}

uint64_t sub_10020B9D8()
{
  v1 = type metadata accessor for Account();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10020BAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020BB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001DEB98();
}

uint64_t sub_10020BBBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1001DCB08(a1, a2, v6);
}

uint64_t sub_10020BC6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10001DCB4(a1, v4);
}

uint64_t sub_10020BD4C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataManager.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10020BF1C()
{
  result = qword_1005B0458;
  if (!qword_1005B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0458);
  }

  return result;
}

unint64_t sub_10020BF74()
{
  result = qword_1005B0460;
  if (!qword_1005B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0460);
  }

  return result;
}

unint64_t sub_10020BFC8()
{
  result = qword_1005B0468;
  if (!qword_1005B0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0468);
  }

  return result;
}

unint64_t sub_10020C01C()
{
  result = qword_1005B0478;
  if (!qword_1005B0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0478);
  }

  return result;
}

uint64_t sub_10020C070(uint64_t a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_10020C098()
{
  result = qword_1005B0488;
  if (!qword_1005B0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0488);
  }

  return result;
}

unint64_t sub_10020C0F0()
{
  result = qword_1005B0490;
  if (!qword_1005B0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0490);
  }

  return result;
}

unint64_t sub_10020C148()
{
  result = qword_1005B0498;
  if (!qword_1005B0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0498);
  }

  return result;
}

uint64_t sub_10020C1B4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  v4 = type metadata accessor for Response();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for AckAlertEndpoint(0);
  v3[18] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Account();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v3;
  v6[1] = sub_10020C3A8;

  return daemon.getter();
}

uint64_t sub_10020C3A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 208) = a1;

  v3 = swift_task_alloc();
  *(v2 + 216) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100009368(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009368(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10020C584;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10020C584(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[13];

    return _swift_task_switch(sub_10020D2AC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[30] = v6;
    *v6 = v4;
    v6[1] = sub_10020C710;
    v7 = v3[19];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_10020C710()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_10020C820, v1, 0);
}

uint64_t sub_10020C820()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10020D35C(v3);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFF18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to ackAlert", v7, 2u);
    }

    sub_10020ADDC();
    swift_allocError();
    *v8 = 7;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[23];
    v11 = v0[24];
    v21 = v0[22];
    (*(v2 + 32))(v11, v3, v1);
    v13 = *(v2 + 16);
    v13(v12, v11, v1);
    sub_100143174(v12);
    v14 = URLComponents.path.modify();
    v15._countAndFlagsBits = 0x72656C416B63612FLL;
    v15._object = 0xE900000000000074;
    String.append(_:)(v15);
    v14(v0 + 7, 0);
    v16 = *(v2 + 8);
    v0[31] = v16;
    v0[32] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v1);
    v13(v21, v11, v1);

    v17 = swift_task_alloc();
    v0[33] = v17;
    *v17 = v0;
    v17[1] = sub_10020CB80;
    v18 = v0[22];
    v19 = v0[11];
    v20 = v0[12];

    return sub_100143D84(v18, v19, v20);
  }
}

uint64_t sub_10020CB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[34] = a1;
  v6[35] = a2;
  v6[36] = a3;
  v6[37] = v3;

  v7 = v5[13];
  if (v3)
  {
    v8 = sub_10020CFC4;
  }

  else
  {
    v8 = sub_10020CCB8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10020CCB8(uint64_t a1)
{
  v2 = *(v1 + 288);
  v12 = *(v1 + 272);
  v3 = *(v1 + 144);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  Account.dsid.getter();
  Account.appToken.getter();
  *(v1 + 40) = type metadata accessor for BasicCredential();
  *(v1 + 48) = &protocol witness table for BasicCredential;
  sub_10000331C((v1 + 16));
  BasicCredential.init(username:password:)();
  v6 = sub_100009368(&qword_1005AFFB0, type metadata accessor for DataManager, &unk_1004D1470);
  v7 = swift_task_alloc();
  *(v1 + 304) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v12;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1 + 16;
  *(v7 + 64) = v5;
  v8 = swift_task_alloc();
  *(v1 + 312) = v8;
  *v8 = v1;
  v8[1] = sub_10020CE70;
  v9 = *(v1 + 136);
  v10 = *(v1 + 120);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v4, v6, 0xD00000000000002ALL, 0x80000001004E52E0, sub_10020D420, v7, v10);
}

uint64_t sub_10020CE70()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = sub_10020D198;
  }

  else
  {
    v5 = v2[13];
    (*(v2[16] + 8))(v2[17], v2[15]);

    sub_100004984(v2 + 2);
    v4 = sub_10020D098;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10020CFC4()
{
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[18];

  v1(v2, v3);
  sub_10020D3C4(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10020D098()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[18];

  sub_10001A794(v1, v2);

  v3(v4, v5);
  sub_10020D3C4(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10020D198()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[18];

  sub_100004984(v0 + 2);

  sub_10001A794(v1, v2);

  v3(v4, v5);
  sub_10020D3C4(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10020D2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020D35C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020D3C4(uint64_t a1)
{
  v2 = type metadata accessor for AckAlertEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10020D474(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_10020D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005F04(a3, v22 - v9, &qword_1005A9690, &qword_1004C2A00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10020D8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005F04(a3, v22 - v9, &qword_1005A9690, &qword_1004C2A00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10020DB88()
{
  v1 = *(v0 + 3528);

  return _swift_task_switch(sub_10020DBF4, v1, 0);
}

uint64_t sub_10020DBF4()
{
  v24 = v0;
  v1 = v0[460];
  v2 = v0[459];
  v3 = v0[458];

  (*(v2 + 8))(v1, v3);
  v4 = v0[483];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  *(v5 + 32) = 33;
  v6 = sub_10004C9A8(v4);
  *(v5 + 64) = &type metadata for String;
  *(v5 + 72) = &off_10058C398;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  v8 = sub_1000105C0(v5);
  swift_setDeallocating();
  sub_100002CE0(v5 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v9 = sub_10004C68C(3u, v8);
  v11 = v10;
  v13 = v12;

  sub_10001157C(v9, v11, v13);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFF18);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v23);
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s failed: %{public}@", v17, 0x16u);
    sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v19);
  }

  v21 = v0[1];

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_10020DFA0()
{
  v24 = v0;
  v1 = v0[460];
  v2 = v0[459];
  v3 = v0[458];

  (*(v2 + 8))(v1, v3);
  v4 = v0[487];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  *(v5 + 32) = 33;
  v6 = sub_10004C9A8(v4);
  *(v5 + 64) = &type metadata for String;
  *(v5 + 72) = &off_10058C398;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  v8 = sub_1000105C0(v5);
  swift_setDeallocating();
  sub_100002CE0(v5 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v9 = sub_10004C68C(3u, v8);
  v11 = v10;
  v13 = v12;

  sub_10001157C(v9, v11, v13);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFF18);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v23);
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s failed: %{public}@", v17, 0x16u);
    sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v19);
  }

  v21 = v0[1];

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_10020E330()
{
  v21 = v0;

  v1 = *(v0 + 3736);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C1900;
  *(v2 + 32) = 33;
  v3 = sub_10004C9A8(v1);
  *(v2 + 64) = &type metadata for String;
  *(v2 + 72) = &off_10058C398;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = sub_1000105C0(v2);
  swift_setDeallocating();
  sub_100002CE0(v2 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v6 = sub_10004C68C(3u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF18);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v20);
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s failed: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10020E684()
{
  v21 = v0;

  v1 = *(v0 + 3776);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C1900;
  *(v2 + 32) = 33;
  v3 = sub_10004C9A8(v1);
  *(v2 + 64) = &type metadata for String;
  *(v2 + 72) = &off_10058C398;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = sub_1000105C0(v2);
  swift_setDeallocating();
  sub_100002CE0(v2 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v6 = sub_10004C68C(3u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF18);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v20);
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s failed: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10020E9E4()
{
  v21 = v0;

  v1 = *(v0 + 3816);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C1900;
  *(v2 + 32) = 33;
  v3 = sub_10004C9A8(v1);
  *(v2 + 64) = &type metadata for String;
  *(v2 + 72) = &off_10058C398;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = sub_1000105C0(v2);
  swift_setDeallocating();
  sub_100002CE0(v2 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v6 = sub_10004C68C(3u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF18);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v20);
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s failed: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10020ED50(uint64_t a1, uint64_t a2)
{
  v3[296] = v2;
  v3[295] = a2;
  v3[294] = a1;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v3[297] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[298] = v4;
  v3[299] = *(v4 - 8);
  v3[300] = swift_task_alloc();
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v3[301] = swift_task_alloc();
  v3[302] = swift_task_alloc();
  v3[303] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v3[304] = v5;
  v3[305] = *(v5 - 8);
  v3[306] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[307] = v6;
  v3[308] = *(v6 - 8);
  v3[309] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[310] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v3[311] = v7;
  v3[312] = *(v7 - 8);
  v3[313] = swift_task_alloc();
  v3[314] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[315] = v8;
  *v8 = v3;
  v8[1] = sub_10020F028;

  return daemon.getter();
}

uint64_t sub_10020F028(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[316] = a1;

  v3 = swift_task_alloc();
  v2[317] = v3;
  v4 = type metadata accessor for Daemon();
  v2[318] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[319] = v6;
  v7 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10020F208;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10020F208(uint64_t a1)
{
  v3 = *v2;
  v3[320] = a1;
  v3[321] = v1;

  if (v1)
  {
    v4 = v3[296];

    return _swift_task_switch(sub_100211488, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[322] = v5;
    *v5 = v3;
    v5[1] = sub_10020F380;

    return daemon.getter();
  }
}

uint64_t sub_10020F380(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2584) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2592) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_10020F534;
  v8 = *(v2 + 2552);
  v9 = *(v2 + 2544);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10020F534(uint64_t a1)
{
  v3 = *v2;
  v3[325] = a1;
  v3[326] = v1;

  if (v1)
  {
    v4 = v3[296];

    return _swift_task_switch(sub_100211750, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[327] = v5;
    *v5 = v3;
    v5[1] = sub_10020F6AC;

    return daemon.getter();
  }
}

uint64_t sub_10020F6AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2624) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2632) = v5;
  v6 = type metadata accessor for AccountService(0);
  v7 = sub_1000093B0(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v5 = v4;
  v5[1] = sub_10020F860;
  v8 = *(v2 + 2552);
  v9 = *(v2 + 2544);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10020F860(uint64_t a1)
{
  v3 = *v2;
  v3[330] = a1;
  v3[331] = v1;

  if (v1)
  {
    v4 = v3[296];

    return _swift_task_switch(sub_100211A24, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[332] = v5;
    *v5 = v3;
    v5[1] = sub_10020F9D8;

    return sub_100008CC0();
  }
}

uint64_t sub_10020F9D8(uint64_t a1)
{
  v2 = *(*v1 + 2368);
  *(*v1 + 2664) = a1;

  return _swift_task_switch(sub_10020FAF0, v2, 0);
}

uint64_t sub_10020FAF0()
{
  v1 = v0[333];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[308];
    v4 = v0[305];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v17 = *(v4 + 56);
    v18 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[306];
      v9 = v0[304];
      v18(v8, v6, v9);
      Friend.handle.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10000E8E0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[309];
      v13 = v0[307];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v17;
      --v2;
    }

    while (v2);
  }

  v0[334] = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  v0[335] = v14;
  *v14 = v0;
  v14[1] = sub_10020FCF0;
  v15 = v0[310];

  return sub_10000EB24(v15);
}

uint64_t sub_10020FCF0()
{
  v1 = *(*v0 + 2368);

  return _swift_task_switch(sub_10020FE00, v1, 0);
}

uint64_t sub_10020FE00()
{
  v18 = v0;
  v1 = v0[312];
  v2 = v0[311];
  v3 = v0[310];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v17);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s failed: %{public}@", v8, 0x16u);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v10);
    }

    else
    {
    }

    v13 = v0[294];
    v14 = type metadata accessor for Fence();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v12 = v0[320];
    (*(v1 + 32))(v0[314], v3, v2);

    return _swift_task_switch(sub_1002101CC, v12, 0);
  }
}

uint64_t sub_1002101CC()
{
  v1 = v0[320];
  v2 = v0[295];
  v3 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[336] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[337] = v5;
  v6 = sub_10004B564(&qword_1005B04B8, &qword_1004D1DC8);
  *v5 = v0;
  v5[1] = sub_100210310;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 75, v1, v3, 0x64692865636E6566, 0xEA0000000000293ALL, sub_100218F8C, v4, v6);
}

uint64_t sub_100210310()
{
  v2 = *v1;
  *(*v1 + 2704) = v0;

  if (v0)
  {
    v3 = *(v2 + 2560);

    v4 = sub_1002109F0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 2560);
    v4 = sub_100210444;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100210444()
{
  v1 = v0[296];
  memcpy(v0 + 221, v0 + 75, 0x241uLL);

  return _swift_task_switch(sub_1002104B8, v1, 0);
}

uint64_t sub_1002104B8()
{
  v31 = v0;
  memcpy(v0 + 148, v0 + 221, 0x241uLL);
  if (sub_10004AFD4((v0 + 148)) == 1)
  {
    v1 = v0[294];
    (*(v0[312] + 8))(v0[314], v0[311]);

    v2 = type metadata accessor for Fence();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
LABEL_17:

    v28 = v0[1];

    return v28();
  }

  memcpy(v0 + 2, v0 + 148, 0x241uLL);
  v3 = v0[153];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v0[152];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_16:
    v18 = v0[303];
    v19 = type metadata accessor for FenceRecord(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = v0[334];
    v21 = v0[314];
    v22 = v0[313];
    v23 = v0[312];
    v24 = v0[311];
    v25 = v0[303];
    v26 = v0[301];
    v27 = v0[294];
    sub_100005F04(v25, v26, &qword_1005AE720, &qword_1004CA2F0);
    (*(v23 + 16))(v22, v21, v24);
    sub_100212F28(v0 + 2, v26, v22, v20, v27);

    sub_100002CE0(v25, &qword_1005AE720, &qword_1004CA2F0);
    (*(v23 + 8))(v21, v24);
    goto LABEL_17;
  }

  v6 = v0[299];
  v7 = v0[298];
  v8 = v0[297];

  UUID.init(uuidString:)();
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_100002CE0(v0[297], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFF18);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v30);
      *(v12 + 12) = 2082;
      v13 = sub_10000D01C(v4, v3, &v30);

      *(v12 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s failed ckRecordName is invalid: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_16;
  }

  v14 = v0[300];
  v15 = v0[299];
  v16 = v0[298];
  v17 = v0[297];

  (*(v15 + 32))(v14, v17, v16);

  return _swift_task_switch(sub_100210D10, 0, 0);
}

uint64_t sub_100210A0C()
{
  v16 = v0;
  v1 = v0[314];
  v2 = v0[312];
  v3 = v0[311];

  (*(v2 + 8))(v1, v3);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = v0[294];
  v12 = type metadata accessor for Fence();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100210D10()
{
  v1 = swift_task_alloc();
  v0[339] = v1;
  *v1 = v0;
  v1[1] = sub_100210DB0;
  v2 = v0[302];
  v3 = v0[300];

  return sub_1001C3C00(v2, v3);
}

uint64_t sub_100210DB0()
{
  v2 = *v1;
  *(*v1 + 2720) = v0;

  if (v0)
  {
    v3 = sub_1002110D0;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 2368);
    v3 = sub_100210ECC;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100210ECC()
{
  v1 = v0[303];
  v2 = v0[302];
  (*(v0[299] + 8))(v0[300], v0[298]);
  sub_1000176A8(v2, v1, &qword_1005AE720, &qword_1004CA2F0);
  v3 = v0[334];
  v4 = v0[314];
  v5 = v0[313];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[303];
  v9 = v0[301];
  v10 = v0[294];
  sub_100005F04(v8, v9, &qword_1005AE720, &qword_1004CA2F0);
  (*(v6 + 16))(v5, v4, v7);
  sub_100212F28(v0 + 2, v9, v5, v3, v10);

  sub_100002CE0(v8, &qword_1005AE720, &qword_1004CA2F0);
  (*(v6 + 8))(v4, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002110D0()
{
  v1 = *(v0 + 2368);

  sub_100002CE0(v0 + 1768, &qword_1005B04B8, &qword_1004D1DC8);

  return _swift_task_switch(sub_100211154, v1, 0);
}

uint64_t sub_100211154()
{
  v19 = v0;
  v1 = v0[314];
  v2 = v0[312];
  v3 = v0[311];
  v4 = v0[300];
  v5 = v0[299];
  v6 = v0[298];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFF18);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v18);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s failed: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[294];
  v15 = type metadata accessor for Fence();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100211488()
{
  v13 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 2352);
  v9 = type metadata accessor for Fence();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100211750()
{
  v13 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 2352);
  v9 = type metadata accessor for Fence();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100211A24()
{
  v13 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 2352);
  v9 = type metadata accessor for Fence();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100211D04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100211DD0;

  return daemon.getter();
}

uint64_t sub_100211DD0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[6] = a1;

  v3 = swift_task_alloc();
  v2[7] = v3;
  v4 = type metadata accessor for Daemon();
  v2[8] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[9] = v6;
  v7 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100211FB0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100211FB0(uint64_t a1)
{
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_100212B00;
  }

  else
  {

    v6 = sub_1002120E8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002120E8()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100212220;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0x6566286574697277, 0xEE00293A7365636ELL, sub_100218F84, v4, &type metadata for () + 1);
}

uint64_t sub_100212220()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1002126C8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100212348;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100212348()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1002123D8;

  return daemon.getter();
}

uint64_t sub_1002123D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 128) = a1;

  v5 = swift_task_alloc();
  *(v3 + 136) = v5;
  v6 = type metadata accessor for FenceService(0);
  v7 = sub_1000093B0(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v5 = v4;
  v5[1] = sub_10021258C;
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10021258C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_100212D10;
  }

  else
  {

    *(v4 + 152) = a1;
    v6 = sub_100212944;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002126C8()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100212734, v1, 0);
}

uint64_t sub_100212734()
{
  v11 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100212944()
{
  v1 = v0[19];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_1000093B0(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v6);

  return _swift_task_switch(sub_100212A8C, v3, 0);
}

uint64_t sub_100212A8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100212B00()
{
  v11 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100212D10()
{
  v11 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100212F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v431 = a4;
  v432 = a3;
  v430 = a5;
  v7 = type metadata accessor for Date();
  v386 = *(v7 - 8);
  v387 = v7;
  v8 = __chkstk_darwin(v7);
  v383 = &v367 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v384 = &v367 - v10;
  v11 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v12 = __chkstk_darwin(v11 - 8);
  v382 = &v367 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v399 = &v367 - v14;
  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = __chkstk_darwin(v15 - 8);
  v381 = &v367 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v398 = &v367 - v18;
  v421 = type metadata accessor for Handle();
  v406 = *(v421 - 8);
  v19 = __chkstk_darwin(v421);
  *&v429 = &v367 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v411 = &v367 - v21;
  v424 = type metadata accessor for PersonHandle();
  v422 = *(v424 - 8);
  v22 = __chkstk_darwin(v424);
  v396 = &v367 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v418 = &v367 - v25;
  v26 = __chkstk_darwin(v24);
  *&v423 = &v367 - v27;
  v28 = __chkstk_darwin(v26);
  v405 = &v367 - v29;
  v30 = __chkstk_darwin(v28);
  v408 = (&v367 - v31);
  v32 = __chkstk_darwin(v30);
  v409 = &v367 - v33;
  __chkstk_darwin(v32);
  v410 = &v367 - v34;
  v395 = type metadata accessor for PlaceMark();
  v380 = *(v395 - 8);
  v35 = __chkstk_darwin(v395);
  v378 = &v367 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v401 = &v367 - v37;
  v394 = type metadata accessor for Fence.MonitorRegion();
  v379 = *(v394 - 8);
  v38 = __chkstk_darwin(v394);
  v393 = &v367 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v400 = &v367 - v40;
  v41 = sub_10004B564(&qword_1005B04C0, &qword_1004D1DD0);
  __chkstk_darwin(v41 - 8);
  v404 = (&v367 - v42);
  v43 = type metadata accessor for Fence.MonitorRegion.Source();
  v402 = *(v43 - 8);
  v403 = v43;
  v44 = __chkstk_darwin(v43);
  v385 = &v367 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v397 = &v367 - v46;
  v47 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  __chkstk_darwin(v47 - 8);
  v412 = &v367 - v48;
  v49 = type metadata accessor for Fence.AcceptanceStatus();
  v414 = *(v49 - 8);
  v415 = v49;
  v50 = __chkstk_darwin(v49);
  v392 = &v367 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v413 = &v367 - v52;
  v53 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v54 = __chkstk_darwin(v53 - 8);
  v377 = &v367 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = &v367 - v56;
  v58 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v58 - 8);
  v416 = &v367 - v59;
  v60 = sub_10004B564(&qword_1005B04C8, &qword_1004D1DD8);
  __chkstk_darwin(v60 - 8);
  v62 = &v367 - v61;
  v63 = type metadata accessor for Fence.Variant();
  v419 = *(v63 - 8);
  v420 = v63;
  v64 = __chkstk_darwin(v63);
  v391 = &v367 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v417 = &v367 - v66;
  v67 = sub_10004B564(&qword_1005B04D0, &qword_1004D1DE0);
  __chkstk_darwin(v67 - 8);
  v69 = &v367 - v68;
  v426 = type metadata accessor for Fence.Participant();
  v428 = *(v426 - 8);
  v70 = __chkstk_darwin(v426);
  v390 = &v367 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v389 = &v367 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v367 - v75;
  __chkstk_darwin(v74);
  v425 = &v367 - v77;
  v78 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  __chkstk_darwin(v78 - 8);
  v80 = &v367 - v79;
  v434 = type metadata accessor for Fence.ID();
  v435 = *(v434 - 8);
  v81 = __chkstk_darwin(v434);
  v388 = &v367 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v427 = &v367 - v83;
  v84 = a1[4];
  v85 = a1[5];
  v433 = a1;
  memcpy(v457, a1, sizeof(v457));
  if (v85)
  {
    v86 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v86 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v86)
    {
      v87 = type metadata accessor for FenceRecord(0);
      if ((*(*(v87 - 8) + 48))(a2, 1, v87) == 1)
      {

        if (qword_1005A80E0 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_10000A6F0(v88, qword_1005B04A0);
        memcpy(v458, v457, 0x241uLL);
        sub_10005D0C0(v458, v456);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        sub_10005D11C(v458);
        v91 = os_log_type_enabled(v89, v90);
        v92 = v432;
        v93 = a2;
        if (v91)
        {
          v94 = a2;
          v95 = swift_slowAlloc();
          *v456 = swift_slowAlloc();
          *v95 = 136446466;
          *(v95 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v456);
          *(v95 + 12) = 2082;
          v96 = *&v458[23];
          if (*&v458[23])
          {
            v97 = *(&v458[22] + 1);
          }

          else
          {
            v97 = 0x3E6C696E3CLL;
            v96 = 0xE500000000000000;
          }

          sub_10005D11C(v458);
          v193 = sub_10000D01C(v97, v96, v456);

          *(v95 + 14) = v193;
          v169 = "%{public}s missing a fenceRecord for fence: %{public}s";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v89, v90, v169, v95, 0x16u);
          swift_arrayDestroy();

          v194 = type metadata accessor for Account();
          (*(*(v194 - 8) + 8))(v92, v194);
          v93 = v94;
          goto LABEL_150;
        }

        goto LABEL_27;
      }
    }
  }

  v98 = v433;
  sub_10005D0C0(v433, v458);
  sub_1001739BC(a2);

  Fence.ID.init(string:)();
  v99 = v435;
  v100 = v434;
  if ((*(v435 + 48))(v80, 1, v434) == 1)
  {

    sub_10005D11C(v98);
    sub_100002CE0(v80, &qword_1005A9150, &qword_1004C2608);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_10000A6F0(v101, qword_1005B04A0);
    memcpy(v458, v457, 0x241uLL);
    sub_10005D0C0(v458, v456);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    sub_10005D11C(v458);
    v102 = os_log_type_enabled(v89, v90);
    v92 = v432;
    v93 = a2;
    if (v102)
    {
      v94 = a2;
      v95 = swift_slowAlloc();
      *v456 = swift_slowAlloc();
      *v95 = 136446466;
      *(v95 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v456);
      *(v95 + 12) = 2082;
      v103 = *&v458[23];
      if (*&v458[23])
      {
        v104 = *(&v458[22] + 1);
      }

      else
      {
        v104 = 0x3E6C696E3CLL;
        v103 = 0xE500000000000000;
      }

      sub_10005D11C(v458);
      v168 = sub_10000D01C(v104, v103, v456);

      *(v95 + 14) = v168;
      v169 = "%{public}s missing fence ID: %{public}s";
      goto LABEL_91;
    }

LABEL_27:
    sub_10005D11C(v458);

    v109 = type metadata accessor for Account();
    (*(*(v109 - 8) + 8))(v92, v109);
    goto LABEL_150;
  }

  (*(v99 + 32))(v427, v80, v100);
  if (*&v457[392])
  {
    v105 = *&v457[384];
  }

  else
  {
    v105 = 0;
  }

  if (*&v457[392])
  {
    v106 = *&v457[392];
  }

  else
  {
    v106 = 0xE000000000000000;
  }

  v107 = HIBYTE(v106) & 0xF;
  v374 = v105;
  v375 = v76;
  v108 = v105 & 0xFFFFFFFFFFFFLL;
  v376 = v106;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v108;
  }

  v407 = a2;
  if (v107)
  {
  }

  else
  {
    v110 = qword_1005A80E0;

    if (v110 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    sub_10000A6F0(v111, qword_1005B04A0);
    memcpy(v458, v457, 0x241uLL);
    sub_10005D0C0(v458, v456);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    sub_10005D11C(v458);
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v456 = swift_slowAlloc();
      *v114 = 136446466;
      *(v114 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v456);
      *(v114 + 12) = 2082;
      if (*&v458[23])
      {
        v115 = *(&v458[22] + 1);
      }

      else
      {
        v115 = 0x3E6C696E3CLL;
      }

      if (*&v458[23])
      {
        v116 = *&v458[23];
      }

      else
      {
        v116 = 0xE500000000000000;
      }

      v117 = sub_10000D01C(v115, v116, v456);

      *(v114 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v112, v113, "%{public}s fence with empty label: %{public}s", v114, 0x16u);
      swift_arrayDestroy();
    }
  }

  v118 = v432;
  swift_beginAccess();
  v119 = *&v457[64];
  v120 = *&v457[72];
  v121 = Account.dsid.getter();
  if (v120)
  {
    if (v119 == v121 && v120 == v122)
    {

      v123 = &enum case for Fence.Participant.me(_:);
      v93 = v407;
      goto LABEL_47;
    }

    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v93 = v407;
    if (v124)
    {
      v123 = &enum case for Fence.Participant.me(_:);
      goto LABEL_47;
    }
  }

  else
  {

    v93 = v407;
  }

  v123 = &enum case for Fence.Participant.other(_:);
LABEL_47:
  v125 = v428;
  v127 = v425;
  v126 = v426;
  (*(v428 + 104))(v425, *v123, v426);
  sub_100218598(v127, *&v457[552], *&v457[560], v69);
  if ((*(v125 + 48))(v69, 1, v126) == 1)
  {

    sub_10005D11C(v433);
    sub_100002CE0(v69, &qword_1005B04D0, &qword_1004D1DE0);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    sub_10000A6F0(v128, qword_1005B04A0);
    memcpy(v456, v457, sizeof(v456));
    memcpy(v458, v457, 0x241uLL);
    sub_10005D0C0(v456, v455);
    sub_10005D0C0(v458, v455);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    sub_10005D11C(v458);
    if (!os_log_type_enabled(v129, v130))
    {

      sub_10005D11C(v458);
      sub_10005D11C(v456);
      v143 = type metadata accessor for Account();
      (*(*(v143 - 8) + 8))(v118, v143);
      (*(v428 + 8))(v425, v426);
      goto LABEL_149;
    }

    v131 = v430;
    v132 = 0x3E6C696E3CLL;
    v133 = swift_slowAlloc();
    v455[0] = swift_slowAlloc();
    *v133 = 136446722;
    *(v133 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
    *(v133 + 12) = 2082;
    v134 = *&v456[368];
    if (*&v456[368])
    {
      v135 = *&v456[360];
    }

    else
    {
      v134 = 0xE500000000000000;
      v135 = 0x3E6C696E3CLL;
    }

    sub_10005D11C(v456);
    v189 = sub_10000D01C(v135, v134, v455);

    *(v133 + 14) = v189;
    *(v133 + 22) = 2082;
    v190 = *&v458[35];
    if (*&v458[35])
    {
      v132 = *(&v458[34] + 1);
    }

    else
    {
      v190 = 0xE500000000000000;
    }

    sub_10005D11C(v458);
    v191 = sub_10000D01C(v132, v190, v455);

    *(v133 + 24) = v191;
    _os_log_impl(&_mh_execute_header, v129, v130, "%{public}s fence with invalid finder: %{public}s, type: %{public}s", v133, 0x20u);
    swift_arrayDestroy();

    v192 = type metadata accessor for Account();
    (*(*(v192 - 8) + 8))(v432, v192);
    (*(v428 + 8))(v425, v426);
    goto LABEL_116;
  }

  v136 = v375;
  (*(v125 + 32))(v375, v69, v126);
  memcpy(v458, v457, 0x241uLL);
  sub_100005F04(v93, v57, &qword_1005AE720, &qword_1004CA2F0);
  v137 = type metadata accessor for FenceRecord(0);
  v138 = *(v137 - 8);
  v139 = *(v138 + 48);
  v140 = v138 + 48;
  if (v139(v57, 1, v137) == 1)
  {
    sub_10005D0C0(v458, v456);
    sub_100002CE0(v57, &qword_1005AE720, &qword_1004CA2F0);
    v141 = type metadata accessor for Fence.Schedule();
    v142 = v416;
    (*(*(v141 - 8) + 56))(v416, 1, 1, v141);
  }

  else
  {
    v144 = v416;
    sub_100005F04(&v57[*(v137 + 32)], v416, &qword_1005AE5C0, &unk_1004D06D0);
    sub_10005D0C0(v458, v456);
    v145 = v57;
    v142 = v144;
    sub_1001769EC(v145);
  }

  v146 = v419;
  sub_100218854(v458, v142, v62);
  v147 = v420;
  if ((*(v146 + 48))(v62, 1, v420) == 1)
  {

    sub_10005D11C(v433);
    sub_100002CE0(v62, &qword_1005B04C8, &qword_1004D1DD8);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v148 = type metadata accessor for Logger();
    sub_10000A6F0(v148, qword_1005B04A0);
    memcpy(v455, v457, 0x241uLL);
    memcpy(v456, v457, sizeof(v456));
    sub_10005D0C0(v455, &v453);
    sub_10005D0C0(v456, &v453);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    sub_10005D11C(v456);
    if (!os_log_type_enabled(v149, v150))
    {

      sub_10005D11C(v456);
      sub_10005D11C(v455);
      v170 = type metadata accessor for Account();
      (*(*(v170 - 8) + 8))(v118, v170);
      v171 = v136;
      v172 = *(v428 + 8);
      goto LABEL_148;
    }

    v131 = v430;
    v151 = 0x3E6C696E3CLL;
    v152 = swift_slowAlloc();
    v453 = swift_slowAlloc();
    *v152 = 136446722;
    *(v152 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v453);
    *(v152 + 12) = 2082;
    v153 = v455[46];
    if (v455[46])
    {
      v154 = v455[45];
    }

    else
    {
      v153 = 0xE500000000000000;
      v154 = 0x3E6C696E3CLL;
    }

    sub_10005D11C(v455);
    v206 = sub_10000D01C(v154, v153, &v453);

    *(v152 + 14) = v206;
    *(v152 + 22) = 2082;
    v207 = *&v456[544];
    if (*&v456[544])
    {
      v151 = *&v456[536];
    }

    else
    {
      v207 = 0xE500000000000000;
    }

    v208 = v375;
    sub_10005D11C(v456);
    v209 = sub_10000D01C(v151, v207, &v453);

    *(v152 + 24) = v209;
    _os_log_impl(&_mh_execute_header, v149, v150, "%{public}s fence with invalid trigger: %{public}s, trigger: %{public}s", v152, 0x20u);
    swift_arrayDestroy();

    v210 = type metadata accessor for Account();
    (*(*(v210 - 8) + 8))(v432, v210);
    goto LABEL_115;
  }

  v373 = v140;
  v156 = *(&v458[0] + 1);
  v155 = *&v458[0];
  (*(v146 + 32))(v417, v62, v147);

  v157 = v155;
  v158 = v412;
  sub_100249050(v157, v156, v412);
  v160 = v414;
  v159 = v415;
  if ((*(v414 + 48))(v158, 1, v415) == 1)
  {

    sub_10005D11C(v433);
    sub_100002CE0(v158, &qword_1005A9148, &qword_1004D2370);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v161 = type metadata accessor for Logger();
    sub_10000A6F0(v161, qword_1005B04A0);
    memcpy(v455, v457, 0x241uLL);
    memcpy(v456, v457, sizeof(v456));
    sub_10005D0C0(v455, &v453);
    sub_10005D0C0(v456, &v453);
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();
    sub_10005D11C(v456);
    if (os_log_type_enabled(v162, v163))
    {
      v131 = v430;
      v164 = 0x3E6C696E3CLL;
      v165 = swift_slowAlloc();
      v453 = swift_slowAlloc();
      *v165 = 136446722;
      *(v165 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v453);
      *(v165 + 12) = 2082;
      v166 = v455[46];
      if (v455[46])
      {
        v167 = v455[45];
      }

      else
      {
        v166 = 0xE500000000000000;
        v167 = 0x3E6C696E3CLL;
      }

      sub_10005D11C(v455);
      v212 = sub_10000D01C(v167, v166, &v453);

      *(v165 + 14) = v212;
      *(v165 + 22) = 2082;
      v213 = *&v456[8];
      if (*&v456[8])
      {
        v164 = *v456;
      }

      else
      {
        v213 = 0xE500000000000000;
      }

      v208 = v375;
      sub_10005D11C(v456);
      v214 = sub_10000D01C(v164, v213, &v453);

      *(v165 + 24) = v214;
      _os_log_impl(&_mh_execute_header, v162, v163, "%{public}s fence with invalid acceptanceStatus: %{public}s, acceptanceStatus: %{public}s", v165, 0x20u);
      swift_arrayDestroy();

      v215 = type metadata accessor for Account();
      (*(*(v215 - 8) + 8))(v432, v215);
      (*(v419 + 8))(v417, v420);
LABEL_115:
      v216 = *(v428 + 8);
      v217 = v426;
      v216(v208, v426);
      v216(v425, v217);
LABEL_116:
      (*(v435 + 8))(v427, v434);
      v93 = v407;
      goto LABEL_151;
    }

    sub_10005D11C(v456);
    sub_10005D11C(v455);
    v195 = type metadata accessor for Account();
    (*(*(v195 - 8) + 8))(v118, v195);
LABEL_146:
    (*(v146 + 8))(v417, v147);
    goto LABEL_147;
  }

  v173 = v158;
  v174 = v458[31];
  (v160[4])(v413, v173, v159);
  if (v174)
  {

    sub_10005D11C(v433);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    sub_10000A6F0(v175, qword_1005B04A0);
    memcpy(v455, v457, 0x241uLL);
    memcpy(v456, v457, sizeof(v456));
    sub_10005D0C0(v455, &v453);
    sub_10005D0C0(v456, &v453);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    sub_10005D11C(v456);
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = v146;
      v436[0] = swift_slowAlloc();
      *v178 = 136446722;
      *(v178 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v436);
      *(v178 + 12) = 2082;
      if (v455[46])
      {
        v180 = v455[45];
      }

      else
      {
        v180 = 0x3E6C696E3CLL;
      }

      v181 = v160;
      if (v455[46])
      {
        v182 = v455[46];
      }

      else
      {
        v182 = 0xE500000000000000;
      }

      sub_10005D11C(v455);
      v183 = sub_10000D01C(v180, v182, v436);

      *(v178 + 14) = v183;
      *(v178 + 22) = 2082;
      v453 = *&v456[488];
      v454 = v456[496];
      sub_10004B564(&qword_1005AD598, &unk_1004C9BF0);
      v184 = String.init<A>(describing:)();
      v186 = v185;
      sub_10005D11C(v456);
      v187 = sub_10000D01C(v184, v186, v436);

      *(v178 + 24) = v187;
      v93 = v407;
      _os_log_impl(&_mh_execute_header, v176, v177, "%{public}s fence with invalid radius: %{public}s, radius: %{public}s", v178, 0x20u);
      swift_arrayDestroy();

      v188 = type metadata accessor for Account();
      (*(*(v188 - 8) + 8))(v432, v188);
      (v181[1])(v413, v415);
      goto LABEL_83;
    }

    sub_10005D11C(v456);
    v211 = v455;
    goto LABEL_145;
  }

  if (BYTE8(v458[26]) & 1) != 0 || (BYTE8(v458[28]))
  {

    sub_10005D11C(v433);
    if (qword_1005A80E0 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_309;
  }

  v218 = *(&v458[27] + 1);
  if (!*(&v458[27] + 1))
  {

    sub_10005D11C(v433);
    if (qword_1005A80E0 != -1)
    {
      goto LABEL_312;
    }

    goto LABEL_136;
  }

  v219 = *&v458[26];
  v220 = *&v458[28];
  v416 = *&v458[27];

  v221 = v404;
  sub_1002499DC(v416, v218, v404);
  v222 = v402;
  v223 = v221;
  v224 = v403;
  if ((*(v402 + 48))(v223, 1, v403) == 1)
  {

    sub_10005D11C(v433);
    sub_100002CE0(v404, &qword_1005B04C0, &qword_1004D1DD0);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v225 = type metadata accessor for Logger();
    sub_10000A6F0(v225, qword_1005B04A0);
    memcpy(v455, v457, 0x241uLL);
    memcpy(v456, v457, sizeof(v456));
    sub_10005D0C0(v455, &v453);
    sub_10005D0C0(v456, &v453);
    v226 = Logger.logObject.getter();
    v227 = static os_log_type_t.error.getter();
    sub_10005D11C(v456);
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      v453 = swift_slowAlloc();
      *v228 = 136446722;
      *(v228 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v453);
      *(v228 + 12) = 2082;
      if (v455[46])
      {
        v229 = v455[45];
      }

      else
      {
        v229 = 0x3E6C696E3CLL;
      }

      v230 = v160;
      if (v455[46])
      {
        v231 = v455[46];
      }

      else
      {
        v231 = 0xE500000000000000;
      }

      sub_10005D11C(v455);
      v232 = sub_10000D01C(v229, v231, &v453);

      *(v228 + 14) = v232;
      *(v228 + 22) = 2082;
      if (*&v456[440])
      {
        v233 = *&v456[432];
      }

      else
      {
        v233 = 0x3E6C696E3CLL;
      }

      if (*&v456[440])
      {
        v234 = *&v456[440];
      }

      else
      {
        v234 = 0xE500000000000000;
      }

      v131 = v430;

      sub_10005D11C(v456);
      v235 = sub_10000D01C(v233, v234, &v453);

      *(v228 + 24) = v235;
      v93 = v407;
      _os_log_impl(&_mh_execute_header, v226, v227, "%{public}s fence with invalid source: %{public}s, locationType: %{public}s", v228, 0x20u);
      swift_arrayDestroy();

      v236 = type metadata accessor for Account();
      (*(*(v236 - 8) + 8))(v432, v236);
      (v230[1])(v413, v415);
      (*(v146 + 8))(v417, v420);
      v237 = *(v428 + 8);
      v238 = v426;
      v237(v375, v426);
      v237(v425, v238);
      (*(v435 + 8))(v427, v434);
      goto LABEL_151;
    }

    sub_10005D11C(v456);
    sub_10005D11C(v455);
    v253 = type metadata accessor for Account();
    (*(*(v253 - 8) + 8))(v118, v253);
    (v160[1])(v413, v415);
    goto LABEL_146;
  }

  v367 = v139;
  v368 = v137;
  v252 = v397;
  (*(v222 + 32))(v397, v404, v224);
  CLLocationCoordinate2DMake(v219, v220);
  (*(v222 + 16))(v385, v252, v224);
  Fence.MonitorRegion.init(center:radius:source:)();
  v437 = *&v457[160];
  v441 = *&v457[216];
  v442 = *&v457[232];
  v443 = *&v457[248];
  v444 = *&v457[264];
  v439 = *&v457[184];
  v440 = *&v457[200];
  v452 = *&v457[344];
  v160 = *&v457[136];
  v159 = *&v457[288];
  v451 = *&v457[328];
  v412 = *&v457[128];
  v436[0] = *&v457[128];
  v436[1] = *&v457[136];
  v416 = *&v457[144];
  v436[2] = *&v457[144];
  v436[3] = *&v457[152];
  v438 = *&v457[176];
  v404 = *&v457[280];
  v445 = *&v457[280];
  v446 = *&v457[288];
  v385 = *&v457[296];
  v447 = *&v457[296];
  v448 = *&v457[304];
  v449 = *&v457[312];
  v450 = *&v457[320];
  if (sub_10004AFD4(v436) == 1)
  {
    v159 = 0;
    v160 = 0;
  }

  else
  {
  }

  v118 = *&v458[5];
  v366 = 0;
  v365 = 0u;
  v364 = 0u;
  PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)();
  if (v118)
  {
    v254 = v118[2];
    if (v254)
    {
      v146 = 0;
      v93 = v422 + 32;
      v160 = v118 + 5;
      v147 = _swiftEmptyArrayStorage;
      while (v146 < v118[2])
      {

        PersonHandle.init(id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_1001FCCF0(0, v147[2] + 1, 1, v147);
        }

        v159 = v147[2];
        v255 = v147[3];
        if (v159 >= v255 >> 1)
        {
          v147 = sub_1001FCCF0((v255 > 1), v159 + 1, 1, v147);
        }

        ++v146;
        v147[2] = v159 + 1;
        (*(v422 + 32))(v147 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v159, v410, v424);
        v160 += 2;
        if (v254 == v146)
        {
          goto LABEL_167;
        }
      }

      __break(1u);
      goto LABEL_305;
    }
  }

  v147 = _swiftEmptyArrayStorage;
LABEL_167:
  v370 = v147;
  v256 = *&v458[29];
  if (*&v458[29])
  {
    v146 = *(*&v458[29] + 16);
    if (v146)
    {
      v93 = 0;
      v160 = (v422 + 32);
      v147 = (*&v458[29] + 40);
      v118 = _swiftEmptyArrayStorage;
      while (v93 < *(v256 + 16))
      {

        PersonHandle.init(id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1001FCCF0(0, v118[2] + 1, 1, v118);
        }

        v159 = v118[2];
        v257 = v118[3];
        if (v159 >= v257 >> 1)
        {
          v118 = sub_1001FCCF0((v257 > 1), v159 + 1, 1, v118);
        }

        ++v93;
        v118[2] = v159 + 1;
        (*(v422 + 32))(v118 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v159, v409, v424);
        v147 += 2;
        if (v146 == v93)
        {
          goto LABEL_178;
        }
      }

LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      swift_once();
LABEL_96:
      v196 = type metadata accessor for Logger();
      sub_10000A6F0(v196, qword_1005B04A0);
      memcpy(v456, v457, sizeof(v456));
      sub_10005D0C0(v456, v455);
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();
      sub_10005D11C(v456);
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v455[0] = swift_slowAlloc();
        *v199 = 136446466;
        *(v199 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
        *(v199 + 12) = 2082;
        v200 = v93;
        if (*&v456[368])
        {
          v201 = *&v456[360];
        }

        else
        {
          v201 = 0x3E6C696E3CLL;
        }

        v202 = v160;
        if (*&v456[368])
        {
          v203 = *&v456[368];
        }

        else
        {
          v203 = 0xE500000000000000;
        }

        sub_10005D11C(v456);
        v204 = sub_10000D01C(v201, v203, v455);

        *(v199 + 14) = v204;
        v93 = v200;
        _os_log_impl(&_mh_execute_header, v197, v198, "%{public}s fence with invalid coordinates: %{public}s", v199, 0x16u);
        swift_arrayDestroy();

        v205 = type metadata accessor for Account();
        (*(*(v205 - 8) + 8))(v118, v205);
        (v202[1])(v413, v415);
        (*(v419 + 8))(v417, v420);
        goto LABEL_147;
      }

      goto LABEL_144;
    }
  }

  v118 = _swiftEmptyArrayStorage;
LABEL_178:
  v410 = *(&v458[7] + 1);
  v369 = v118;
  if (*(&v458[7] + 1))
  {
    v160 = v431[2];
    if (v160)
    {
      v412 = *&v458[7];
      v416 = *(v406 + 16);
      v258 = v431 + ((*(v406 + 80) + 32) & ~*(v406 + 80));
      v259 = *(v406 + 72);
      v159 = v406 + 8;
      v260 = (v422 + 32);
      v404 = _swiftEmptyArrayStorage;
      (v416)(v411, v258, v421);
      while (1)
      {
        v261 = Handle.serverIdentifier.getter();
        if (!v262)
        {
          break;
        }

        if (v261 == v412 && v262 == v410)
        {
        }

        else
        {
          v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v263 & 1) == 0)
          {
            break;
          }
        }

        v264 = v411;
        Handle.identifier.getter();
        v265 = v405;
        PersonHandle.init(id:)();
        (*v159)(v264, v421);
        v266 = *v260;
        (*v260)(v408, v265, v424);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v404 = sub_1001FCCF0(0, v404[2] + 1, 1, v404);
        }

        v268 = v404[2];
        v267 = v404[3];
        if (v268 >= v267 >> 1)
        {
          v404 = sub_1001FCCF0((v267 > 1), v268 + 1, 1, v404);
        }

        v269 = v404;
        v404[2] = v268 + 1;
        v266(&v269[((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v268], v408, v424);
LABEL_182:
        v258 += v259;
        v160 = (v160 - 1);
        if (!v160)
        {
          goto LABEL_195;
        }

        (v416)(v411, v258, v421);
      }

      (*v159)(v411, v421);
      goto LABEL_182;
    }
  }

  v404 = _swiftEmptyArrayStorage;
LABEL_195:
  v270 = *(&v458[6] + 1);
  if (!*(&v458[6] + 1))
  {
    v408 = _swiftEmptyArrayStorage;
    v93 = v407;
LABEL_231:
    *v456 = v370;

    sub_1002494C8(v294);

    sub_1002494C8(v295);

    sub_1002494C8(v296);
    sub_1000093B0(&qword_1005B04D8, &type metadata accessor for PersonHandle, &protocol conformance descriptor for PersonHandle);
    v297 = Array<A>.uniqued()();

    if (*(v297 + 16))
    {
      v423 = v458[3];
      v429 = v458[2];
      v418 = *(&v458[35] + 1);
      v298 = LOBYTE(v458[36]);
    }

    else
    {
      v421 = v297;
      if (qword_1005A80E0 != -1)
      {
        swift_once();
      }

      v299 = type metadata accessor for Logger();
      sub_10000A6F0(v299, qword_1005B04A0);
      memcpy(v456, v457, sizeof(v456));
      v423 = *&v456[48];
      v429 = *&v456[32];
      v418 = *&v456[568];
      v298 = v456[576];
      sub_10005D0C0(v456, v455);
      v300 = Logger.logObject.getter();
      v301 = static os_log_type_t.error.getter();
      sub_10005D11C(v456);
      if (os_log_type_enabled(v300, v301))
      {
        v302 = swift_slowAlloc();
        v455[0] = swift_slowAlloc();
        *v302 = 136446466;
        *(v302 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
        *(v302 + 12) = 2082;
        if (*&v456[368])
        {
          v303 = *&v456[360];
        }

        else
        {
          v303 = 0x3E6C696E3CLL;
        }

        if (*&v456[368])
        {
          v304 = *&v456[368];
        }

        else
        {
          v304 = 0xE500000000000000;
        }

        v305 = sub_10000D01C(v303, v304, v455);

        *(v302 + 14) = v305;
        _os_log_impl(&_mh_execute_header, v300, v301, "%{public}s fence with no 'others': %{public}s", v302, 0x16u);
        swift_arrayDestroy();
      }

      v297 = v421;
    }

    Account.icloudIdentifier.getter();
    v306 = v396;
    PersonHandle.init(id:)();
    v307 = 0;
    v308 = *(v297 + 16);
    v309 = v368;
    while (v308 != v307)
    {
      v310 = v307 + 1;
      v311 = static PersonHandle.== infix(_:_:)();
      v307 = v310;
      if (v311)
      {
        v312 = v297;
        if (qword_1005A80E0 != -1)
        {
          swift_once();
        }

        v313 = type metadata accessor for Logger();
        sub_10000A6F0(v313, qword_1005B04A0);
        memcpy(v456, v457, sizeof(v456));
        sub_10005D0C0(v456, v455);
        v314 = Logger.logObject.getter();
        v315 = static os_log_type_t.error.getter();
        sub_10005D11C(v456);
        if (os_log_type_enabled(v314, v315))
        {
          v316 = swift_slowAlloc();
          v455[0] = swift_slowAlloc();
          *v316 = 136446466;
          *(v316 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
          *(v316 + 12) = 2082;
          if (*&v456[368])
          {
            v317 = *&v456[360];
          }

          else
          {
            v317 = 0x3E6C696E3CLL;
          }

          if (*&v456[368])
          {
            v318 = *&v456[368];
          }

          else
          {
            v318 = 0xE500000000000000;
          }

          v319 = sub_10000D01C(v317, v318, v455);

          *(v316 + 14) = v319;
          _os_log_impl(&_mh_execute_header, v314, v315, "%{public}s 'others' contain user's own handle: %{public}s", v316, 0x16u);
          swift_arrayDestroy();
        }

        v423 = *&v456[48];
        v429 = *&v456[32];
        v418 = *&v456[568];
        v298 = v456[576];
        __chkstk_darwin(v320);
        *(&v365 + 1) = v306;
        v297 = sub_1000267D4(sub_100218F94, &v364 + 8, v312, &type metadata accessor for PersonHandle, sub_100239398);
        v309 = v368;
        break;
      }
    }

    v321 = v377;
    sub_100005F04(v93, v377, &qword_1005AE720, &qword_1004CA2F0);
    if (v367(v321, 1, v309) == 1)
    {
      sub_100002CE0(v321, &qword_1005AE720, &qword_1004CA2F0);
      (*(v386 + 56))(v398, 1, 1, v387);
    }

    else
    {
      sub_100005F04(v321 + *(v309 + 36), v398, &unk_1005AE5B0, &qword_1004C32F0);
      sub_1001769EC(v321);
    }

    v322 = v433;
    v421 = v297;
    v323 = v429;
    if (v298)
    {
      if (qword_1005A80E0 != -1)
      {
        swift_once();
      }

      v324 = type metadata accessor for Logger();
      sub_10000A6F0(v324, qword_1005B04A0);
      memcpy(v456, v457, sizeof(v456));
      v423 = *&v456[48];
      v429 = *&v456[32];
      sub_10005D0C0(v456, v455);
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.error.getter();
      sub_10005D11C(v456);
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        v455[0] = swift_slowAlloc();
        *v327 = 136446466;
        *(v327 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
        *(v327 + 12) = 2082;
        if (*&v456[368])
        {
          v328 = *&v456[360];
        }

        else
        {
          v328 = 0x3E6C696E3CLL;
        }

        if (*&v456[368])
        {
          v329 = *&v456[368];
        }

        else
        {
          v329 = 0xE500000000000000;
        }

        v330 = sub_10000D01C(v328, v329, v455);

        *(v327 + 14) = v330;
        _os_log_impl(&_mh_execute_header, v325, v326, "%{public}s fence with missing updateTimestamp: %{public}s", v327, 0x16u);
        swift_arrayDestroy();
      }

      v323 = v429;
    }

    v331 = *(&v323 + 1);
    if (*(&v323 + 1))
    {
      v429 = v323;

      v332 = v429;
      v333 = v399;
      UUID.init(uuidString:)();

      sub_10005D11C(v322);

      v334 = type metadata accessor for UUID();
      v335 = (*(*(v334 - 8) + 48))(v333, 1, v334);
      v336 = *(&v423 + 1);
      v337 = v423;
      if (v335 == 1)
      {
        v338 = HIBYTE(v331) & 0xF;
        if ((v331 & 0x2000000000000000) == 0)
        {
          v338 = v332 & 0xFFFFFFFFFFFFLL;
        }

        if (v338)
        {
          if (qword_1005A80E0 != -1)
          {
            swift_once();
          }

          v339 = type metadata accessor for Logger();
          sub_10000A6F0(v339, qword_1005B04A0);
          memcpy(v455, v457, 0x241uLL);
          memcpy(v456, v457, sizeof(v456));
          v337 = *&v456[48];
          v336 = *&v456[56];
          sub_10005D0C0(v456, &v453);
          sub_10005D0C0(v455, &v453);
          v340 = Logger.logObject.getter();
          v341 = static os_log_type_t.error.getter();
          sub_10005D11C(v455);
          if (os_log_type_enabled(v340, v341))
          {
            v342 = swift_slowAlloc();
            v433 = swift_slowAlloc();
            v453 = v433;
            *v342 = 136446722;
            *(v342 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v453);
            *(v342 + 12) = 2082;
            if (v455[46])
            {
              v343 = v455[45];
            }

            else
            {
              v343 = 0x3E6C696E3CLL;
            }

            if (v455[46])
            {
              v344 = v455[46];
            }

            else
            {
              v344 = 0xE500000000000000;
            }

            v345 = sub_10000D01C(v343, v344, &v453);

            *(v342 + 14) = v345;
            *(v342 + 22) = 2082;
            if (*&v456[40])
            {
              v346 = *&v456[32];
            }

            else
            {
              v346 = 0x3E6C696E3CLL;
            }

            if (*&v456[40])
            {
              v347 = *&v456[40];
            }

            else
            {
              v347 = 0xE500000000000000;
            }

            sub_10005D11C(v456);
            v348 = sub_10000D01C(v346, v347, &v453);

            *(v342 + 24) = v348;
            _os_log_impl(&_mh_execute_header, v340, v341, "%{public}s fence with invalid ckRecordName: %{public}s, ckRecordName: %{public}s", v342, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10005D11C(v456);
          }
        }
      }
    }

    else
    {

      sub_10005D11C(v322);
      v349 = type metadata accessor for UUID();
      (*(*(v349 - 8) + 56))(v399, 1, 1, v349);
      v336 = *(&v423 + 1);
      v337 = v423;
    }

    memcpy(v456, v457, sizeof(v456));

    sub_10005D11C(v456);
    if (v336)
    {
      v350 = HIBYTE(v336) & 0xF;
      if ((v336 & 0x2000000000000000) == 0)
      {
        v350 = v337 & 0xFFFFFFFFFFFFLL;
      }

      if (v350)
      {
        v433 = v337;
        v431 = v336;
LABEL_303:
        v351 = v384;
        Date.init(timeIntervalSince1970:)();
        (*(v435 + 16))(v388, v427, v434);
        v352 = *(v428 + 16);
        v353 = v426;
        v352(v389, v425, v426);
        v352(v390, v375, v353);
        (*(v419 + 16))(v391, v417, v420);
        (*(v414 + 16))(v392, v413, v415);
        v354 = v379;
        (*(v379 + 16))(v393, v400, v394);
        v355 = v380;
        (*(v380 + 16))(v378, v401, v395);
        sub_100005F04(v398, v381, &unk_1005AE5B0, &qword_1004C32F0);
        sub_100005F04(v399, v382, &qword_1005A96E0, &qword_1004C2A80);
        v357 = v386;
        v356 = v387;
        v358 = v383;
        (*(v386 + 16))(v383, v351, v387);
        *(&v365 + 1) = v358;
        *&v365 = v431;
        *(&v364 + 1) = v433;
        v359 = v430;
        Fence.init(id:label:createdBy:finder:variant:acceptanceStatus:region:placemark:others:muteEndDate:ckRecordIdentifier:ckRecordZoneOwnerName:updatedAt:)();
        v360 = type metadata accessor for Account();
        (*(*(v360 - 8) + 8))(v432, v360);
        (*(v357 + 8))(v351, v356);
        sub_100002CE0(v398, &unk_1005AE5B0, &qword_1004C32F0);
        (*(v355 + 8))(v401, v395);
        (*(v354 + 8))(v400, v394);
        (*(v402 + 8))(v397, v403);
        (*(v414 + 8))(v413, v415);
        (*(v419 + 8))(v417, v420);
        v361 = *(v428 + 8);
        v362 = v426;
        v361(v375, v426);
        v361(v425, v362);
        (*(v435 + 8))(v427, v434);
        sub_100002CE0(v399, &qword_1005A96E0, &qword_1004C2A80);
        (*(v422 + 8))(v396, v424);
        v363 = type metadata accessor for Fence();
        (*(*(v363 - 8) + 56))(v359, 0, 1, v363);
        return sub_100002CE0(v407, &qword_1005AE720, &qword_1004CA2F0);
      }
    }

    v433 = 0;
    v431 = 0;
    goto LABEL_303;
  }

  v93 = v407;
  v147 = v431;
  v385 = *(*(&v458[6] + 1) + 16);
  if (!v385)
  {
    v408 = _swiftEmptyArrayStorage;
    goto LABEL_231;
  }

  v271 = 0;
  v371 = *(&v458[6] + 1) + 32;
  v409 = (v406 + 16);
  v118 = (v406 + 8);
  v146 = v421;
  v411 = (v422 + 32);
  v408 = _swiftEmptyArrayStorage;
  v372 = *(&v458[6] + 1);
  while (1)
  {
    if (v271 >= *(v270 + 16))
    {
      goto LABEL_306;
    }

    v272 = v147[2];
    v405 = v271;
    if (v272)
    {
      v273 = (v371 + 16 * v271);
      v274 = v273[1];
      v412 = *v273;
      v275 = v147 + ((*(v406 + 80) + 32) & ~*(v406 + 80));
      v416 = *(v406 + 72);
      v276 = *(v406 + 16);
      v410 = v274;

      v159 = _swiftEmptyArrayStorage;
      v160 = v409;
      while (1)
      {
        v276(v429, v275, v146);
        v277 = Handle.serverIdentifier.getter();
        if (v278)
        {
          if (v277 == v412 && v278 == v410)
          {

LABEL_210:
            v280 = v429;
            Handle.identifier.getter();
            v281 = v418;
            PersonHandle.init(id:)();
            (*v118)(v280, v146);
            v282 = *v411;
            (*v411)(v423, v281, v424);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_1001FCCF0(0, *(v159 + 16) + 1, 1, v159);
            }

            v284 = *(v159 + 16);
            v283 = *(v159 + 24);
            v160 = v409;
            if (v284 >= v283 >> 1)
            {
              v159 = sub_1001FCCF0((v283 > 1), v284 + 1, 1, v159);
            }

            *(v159 + 16) = v284 + 1;
            v282(v159 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v284, v423, v424);
            v146 = v421;
            goto LABEL_204;
          }

          v279 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v279)
          {
            goto LABEL_210;
          }
        }

        (*v118)(v429, v146);
LABEL_204:
        v275 += v416;
        if (!--v272)
        {

          v147 = v431;
          goto LABEL_217;
        }
      }
    }

    v159 = _swiftEmptyArrayStorage;
LABEL_217:
    v285 = *(v159 + 16);
    v93 = v407;
    v286 = v408[2];
    v146 = v286 + v285;
    if (__OFADD__(v286, v285))
    {
      goto LABEL_307;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v288 = v408;
    if (!isUniquelyReferenced_nonNull_native || v146 > v408[3] >> 1)
    {
      if (v286 <= v146)
      {
        v289 = v286 + v285;
      }

      else
      {
        v289 = v286;
      }

      v288 = sub_1001FCCF0(isUniquelyReferenced_nonNull_native, v289, 1, v408);
    }

    v146 = v421;
    v290 = *(v159 + 16);
    v408 = v288;
    if (!v290)
    {

      if (v285)
      {
        goto LABEL_308;
      }

      goto LABEL_199;
    }

    if ((v288[3] >> 1) - v288[2] < v285)
    {
      break;
    }

    swift_arrayInitWithCopy();

    if (v285)
    {
      v291 = v408[2];
      v292 = __OFADD__(v291, v285);
      v293 = v291 + v285;
      if (v292)
      {
        goto LABEL_311;
      }

      v408[2] = v293;
    }

LABEL_199:
    v271 = (v405 + 1);
    v270 = v372;
    if (v405 + 1 == v385)
    {
      goto LABEL_231;
    }
  }

  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  swift_once();
LABEL_136:
  v239 = type metadata accessor for Logger();
  sub_10000A6F0(v239, qword_1005B04A0);
  memcpy(v456, v457, sizeof(v456));
  sub_10005D0C0(v456, v455);
  v197 = Logger.logObject.getter();
  v240 = static os_log_type_t.error.getter();
  sub_10005D11C(v456);
  if (!os_log_type_enabled(v197, v240))
  {
LABEL_144:

    v211 = v456;
LABEL_145:
    sub_10005D11C(v211);
    v248 = type metadata accessor for Account();
    (*(*(v248 - 8) + 8))(v118, v248);
    (v160[1])(v413, v159);
    goto LABEL_146;
  }

  v241 = swift_slowAlloc();
  v455[0] = swift_slowAlloc();
  *v241 = 136446466;
  *(v241 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v455);
  *(v241 + 12) = 2082;
  v242 = v93;
  if (*&v456[368])
  {
    v243 = *&v456[360];
  }

  else
  {
    v243 = 0x3E6C696E3CLL;
  }

  v244 = v160;
  if (*&v456[368])
  {
    v245 = *&v456[368];
  }

  else
  {
    v245 = 0xE500000000000000;
  }

  sub_10005D11C(v456);
  v246 = sub_10000D01C(v243, v245, v455);

  *(v241 + 14) = v246;
  v93 = v242;
  _os_log_impl(&_mh_execute_header, v197, v240, "%{public}s fence with nil locationType: %{public}s", v241, 0x16u);
  swift_arrayDestroy();

  v247 = type metadata accessor for Account();
  (*(*(v247 - 8) + 8))(v118, v247);
  (v244[1])(v413, v415);
  v179 = v419;
LABEL_83:
  (*(v179 + 8))(v417, v420);
LABEL_147:
  v172 = *(v428 + 8);
  v171 = v375;
LABEL_148:
  v249 = v426;
  v172(v171, v426);
  v172(v425, v249);
LABEL_149:
  (*(v435 + 8))(v427, v434);
LABEL_150:
  v131 = v430;
LABEL_151:
  sub_100002CE0(v93, &qword_1005AE720, &qword_1004CA2F0);
  v250 = type metadata accessor for Fence();
  return (*(*(v250 - 8) + 56))(v131, 1, 1, v250);
}

uint64_t sub_10021709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[240] = a7;
  v7[239] = a6;
  v7[238] = a5;
  v7[237] = a4;
  sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v7[241] = swift_task_alloc();

  return _swift_task_switch(sub_100217148, a6, 0);
}

void sub_100217148()
{
  v1 = v0[237];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v34 = v0[238];
    v4 = v1 + 32;
    v5 = _swiftEmptyArrayStorage;
    v32 = v4;
    do
    {
      v33 = v5;
      v6 = (v4 + 584 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        memcpy(v0 + 2, v6, 0x241uLL);
        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        v8 = v0[7];
        v9 = v8 ? v0[7] : 0xE000000000000000;
        if (!*(v34 + 16))
        {
          break;
        }

        if (v8)
        {
          v10 = v0[6];
        }

        else
        {
          v10 = 0;
        }

        sub_10005D0C0((v0 + 2), (v0 + 75));

        v11 = sub_1000110D8(v10, v9);
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }

        v14 = v0[241];
        v15 = *(v34 + 56);
        v16 = type metadata accessor for FenceRecord(0);
        v17 = *(v16 - 8);
        sub_1001C2B80(v15 + *(v17 + 72) * v11, v14);
        sub_10005D11C((v0 + 2));
        (*(v17 + 56))(v14, 0, 1, v16);
        sub_100002CE0(v14, &qword_1005AE720, &qword_1004CA2F0);
        ++v7;
        v6 += 584;
        if (v3 == v2)
        {
          v5 = v33;
          goto LABEL_24;
        }
      }

      sub_10005D0C0((v0 + 2), (v0 + 148));

LABEL_17:
      v18 = v0[241];
      v19 = type metadata accessor for FenceRecord(0);
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      sub_100002CE0(v18, &qword_1005AE720, &qword_1004CA2F0);
      v5 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000F708(0, v33[2] + 1, 1);
        v5 = v33;
      }

      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        sub_10000F708((v20 > 1), v21 + 1, 1);
        v5 = v33;
      }

      v5[2] = v21 + 1;
      memcpy(&v5[73 * v21 + 4], v0 + 2, 0x241uLL);
      v4 = v32;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  v0[242] = v5;
  v22 = v5[2];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 30;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001004E57E0;
  *(inited + 80) = 32;
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v22;
  v24 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v25 = sub_10004C68C(3u, v24);
  v27 = v26;
  v29 = v28;

  sub_10001157C(v25, v27, v29);

  v30 = swift_task_alloc();
  v0[243] = v30;
  *v30 = v0;
  v30[1] = sub_100217598;
  v31 = v0[240];

  sub_1002176C4(v5, v31);
}

uint64_t sub_100217598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002176C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002176E8, v2, 0);
}

uint64_t sub_1002176E8()
{
  v12 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000A6F0(v1, qword_1005DFF18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[2];
  v5 = v0[3];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v11);
    *(v7 + 12) = 2050;
    *(v7 + 14) = *(v6 + 16);

    *(v7 + 22) = 2050;
    *(v7 + 24) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s serverFencesMissingCK: %{public}ld, allFences: %{public}ld", v7, 0x20u);
    sub_100004984(v8);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1002178FC;

  return daemon.getter();
}

uint64_t sub_1002178FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_100217AD8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100217AD8(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100217E68;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100217C00;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100217C00()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100217CDC;
    v2 = v0[2];

    return sub_1001BA84C(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100217CDC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10021802C;
  }

  else
  {
    v4 = sub_100217E08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100217E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100217E68()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s failed: %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10021802C()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E5800, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s failed: %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002181F0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a4;
  v30 = a3;
  v29 = type metadata accessor for Account();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - v13;
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  memcpy(v34, a1, 0x241uLL);
  v17 = type metadata accessor for FenceRecord(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v16, 1, 1, v17);
  if (v34[5])
  {
    if (*(a2 + 16) && (v20 = sub_1000110D8(v34[4], v34[5]), (v21 & 1) != 0))
    {
      sub_1001C2B80(*(a2 + 56) + *(v18 + 72) * v20, v14);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    sub_100002CE0(v16, &qword_1005AE720, &qword_1004CA2F0);
    v19(v14, v22, 1, v17);
    sub_1000176A8(v14, v16, &qword_1005AE720, &qword_1004CA2F0);
  }

  sub_100005F04(v16, v11, &qword_1005AE720, &qword_1004CA2F0);
  v23 = v28;
  (*(v27 + 16))(v28, v30, v29);
  sub_10005D0C0(v34, &v33);
  v24 = v32;

  sub_100212F28(v34, v11, v23, v24, v31);
  return sub_100002CE0(v16, &qword_1005AE720, &qword_1004CA2F0);
}

uint64_t sub_1002184D0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B04A0);
  v1 = sub_10000A6F0(v0, qword_1005B04A0);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFF18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100218598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Fence.Participant();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  v13 = v12;
  v14 = enum case for Fence.Participant.me(_:);
  if (v12 != enum case for Fence.Participant.me(_:))
  {
    if (v12 == enum case for Fence.Participant.other(_:))
    {
      if (a3)
      {
        if (a2 == 0x654D796669746F4ELL && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_15;
        }

        if (a2 == 0x744F796669746F4ELL && a3 == 0xEC00000073726568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          (*(v9 + 104))(a4, v14, v8);
          goto LABEL_16;
        }
      }
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }

LABEL_18:
    v15 = 1;
    return (*(v9 + 56))(a4, v15, 1, v8);
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (a2 == 0x654D796669746F4ELL && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_15:
    (*(v9 + 104))(a4, v13, v8);
    goto LABEL_16;
  }

  if ((a2 != 0x744F796669746F4ELL || a3 != 0xEC00000073726568) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  (*(v9 + 104))(a4, enum case for Fence.Participant.other(_:), v8);
LABEL_16:
  v15 = 0;
  return (*(v9 + 56))(a4, v15, 1, v8);
}

uint64_t sub_100218854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for Fence.Variant();
  v47 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v45 = &v43 - v9;
  __chkstk_darwin(v8);
  v46 = &v43 - v10;
  v11 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = sub_10004B564(&qword_1005B04C8, &qword_1004D1DD8);
  __chkstk_darwin(v17 - 8);
  v19 = &v43 - v18;
  v20 = *(a1 + 536);
  v21 = *(a1 + 544);
  v22 = *(a1 + 457);
  sub_100005F04(a2, v16, &qword_1005AE5C0, &unk_1004D06D0);
  if (v22 == 2 || !v21)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    goto LABEL_9;
  }

  if (v20 == 0x656C756465686373 && v21 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_1000176A8(v16, v14, &qword_1005AE5C0, &unk_1004D06D0);
    v23 = type metadata accessor for Fence.Schedule();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      v16 = v14;
LABEL_9:
      v26 = v47;
      v25 = v48;
      sub_100002CE0(v16, &qword_1005AE5C0, &unk_1004D06D0);
      v27 = 1;
      goto LABEL_10;
    }

    v31 = v46;
    (*(v24 + 32))(v46, v14, v23);
    v26 = v47;
    (*(v47 + 104))(v31, enum case for Fence.Variant.scheduled(_:), v5);
    v32 = *(v26 + 32);
    goto LABEL_22;
  }

  if (v20 == 1953069157 && v21 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_100002CE0(v16, &qword_1005AE5C0, &unk_1004D06D0);
    v33 = enum case for Fence.Trigger.leaving(_:);
    v34 = type metadata accessor for Fence.Trigger();
    v35 = v45;
    (*(*(v34 - 8) + 104))(v45, v33, v34);
    v36 = &enum case for Fence.Variant.oneTime(_:);
    if ((v22 & 1) == 0)
    {
      v36 = &enum case for Fence.Variant.recurring(_:);
    }

    v37 = *v36;
    v26 = v47;
    v38 = *(v47 + 104);
LABEL_21:
    v38(v35, v37, v5);
    v32 = *(v26 + 32);
    v31 = v46;
    v32(v46, v35, v5);
LABEL_22:
    v25 = v48;
    v32(v19, v31, v5);
    v27 = 0;
    goto LABEL_10;
  }

  if (v20 == 0x7265746E65 && v21 == 0xE500000000000000)
  {
    sub_10005D11C(a1);
    sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
    sub_100002CE0(v16, &qword_1005AE5C0, &unk_1004D06D0);
LABEL_27:
    v40 = enum case for Fence.Trigger.arriving(_:);
    v41 = type metadata accessor for Fence.Trigger();
    v35 = v44;
    (*(*(v41 - 8) + 104))(v44, v40, v41);
    v26 = v47;
    v38 = *(v47 + 104);
    v42 = &enum case for Fence.Variant.oneTime(_:);
    if ((v22 & 1) == 0)
    {
      v42 = &enum case for Fence.Variant.recurring(_:);
    }

    v37 = *v42;
    goto LABEL_21;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10005D11C(a1);
  sub_100002CE0(a2, &qword_1005AE5C0, &unk_1004D06D0);
  sub_100002CE0(v16, &qword_1005AE5C0, &unk_1004D06D0);
  if (v39)
  {
    goto LABEL_27;
  }

  v27 = 1;
  v26 = v47;
  v25 = v48;
LABEL_10:
  v28 = *(v26 + 56);
  v28(v19, v27, 1, v5);
  if ((*(v26 + 48))(v19, 1, v5))
  {
    sub_100002CE0(v19, &qword_1005B04C8, &qword_1004D1DD8);
    v29 = 1;
  }

  else
  {
    (*(v26 + 32))(v25, v19, v5);
    v29 = 0;
  }

  return (v28)(v25, v29, 1, v5);
}

BOOL sub_100218EF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PersonHandle();
  sub_1000093B0(&qword_1005B04E0, &type metadata accessor for PersonHandle, &protocol conformance descriptor for PersonHandle);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100218FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v41 - v11;
  v12 = type metadata accessor for Fence();
  v13 = __chkstk_darwin(v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v57 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      Fence.updatedAt.getter();
      v32 = v59;
      Fence.updatedAt.getter();
      v62 = static Date.> infix(_:_:)();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100219354(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = type metadata accessor for Date();
  v8 = *(v159 - 8);
  v9 = __chkstk_darwin(v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v133 - v11;
  v12 = type metadata accessor for Fence();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v149 = &v133 - v17;
  v18 = __chkstk_darwin(v16);
  v156 = &v133 - v19;
  __chkstk_darwin(v18);
  v160 = &v133 - v20;
  v21 = *(a3 + 1);
  v145 = a3;
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_96:
    v12 = v23;
    v23 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v145;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_10023C584(v12);
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v51)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_100219F54(*v51 + *(v13 + 72) * v130, *v51 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v51 + *(v13 + 72) * v131, v23);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10023C584(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        sub_10023C4F8(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v133 = a4;
  v22 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v23 = _swiftEmptyArrayStorage;
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v24 = v22 + 1;
    if (v22 + 1 >= v21)
    {
      v40 = v22 + 1;
      v51 = v145;
    }

    else
    {
      v146 = v21;
      v134 = v23;
      v135 = v5;
      v25 = v22;
      v138 = v22;
      v26 = *v145;
      v161 = v26;
      v27 = *(v13 + 72);
      v28 = (v26 + v27 * v24);
      v29 = v12;
      v30 = *(v13 + 16);
      (v30)(v160, v28, v12);
      v31 = v156;
      v147 = v30;
      (v30)(v156, v26 + v27 * v25, v29);
      v32 = v157;
      Fence.updatedAt.getter();
      v33 = v158;
      Fence.updatedAt.getter();
      LODWORD(v148) = static Date.> infix(_:_:)();
      v34 = *v153;
      v35 = v33;
      v36 = v159;
      (*v153)(v35, v159);
      v144 = v34;
      (v34)(v32, v36);
      v37 = *(v136 + 8);
      v23 = v152;
      v37(v31, v29);
      v143 = v37;
      v37(v160, v29);
      v38 = v138 + 2;
      v150 = v27;
      v39 = v161 + v27 * (v138 + 2);
      while (1)
      {
        v40 = v146;
        if (v146 == v38)
        {
          break;
        }

        v41 = v155;
        v42 = v147;
        v147();
        v43 = v156;
        v42(v156, v28, v41);
        v44 = v157;
        Fence.updatedAt.getter();
        v45 = v158;
        Fence.updatedAt.getter();
        LOBYTE(v161) = static Date.> infix(_:_:)() & 1;
        LODWORD(v161) = v161;
        v46 = v45;
        v47 = v159;
        v48 = v28;
        v49 = v144;
        (v144)(v46, v159);
        v49(v44, v47);
        v23 = v152;
        v50 = v143;
        (v143)(v43, v41);
        v50(v160, v41);
        ++v38;
        v39 += v150;
        v28 = &v150[v48];
        if ((v148 & 1) != v161)
        {
          v40 = v38 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v51 = v145;
      v13 = v136;
      v12 = v155;
      v22 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v40 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v40)
      {
        v52 = v40;
        v53 = v150 * (v40 - 1);
        v54 = v40 * v150;
        v146 = v40;
        v55 = v138;
        v56 = v138 * v150;
        do
        {
          if (v55 != --v52)
          {
            v57 = *v51;
            if (!v57)
            {
              goto LABEL_131;
            }

            v58 = *v151;
            (*v151)(v140, v57 + v56, v12);
            if (v56 < v53 || v57 + v56 >= (v57 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v58((v57 + v53), v140, v12);
            v51 = v145;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v52);
        v5 = v135;
        v13 = v136;
        v23 = v134;
        v22 = v138;
        v40 = v146;
      }

      else
      {
LABEL_23:
        v23 = v134;
      }
    }

    v59 = v51[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v22))
      {
        goto LABEL_124;
      }

      if (v40 - v22 < v133)
      {
        if (__OFADD__(v22, v133))
        {
          goto LABEL_126;
        }

        if (v22 + v133 >= v59)
        {
          v60 = v51[1];
        }

        else
        {
          v60 = v22 + v133;
        }

        if (v60 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v61 = v40;
    if (v40 < v22)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1001FCD18(0, *(v23 + 2) + 1, 1, v23);
    }

    v63 = *(v23 + 2);
    v62 = *(v23 + 3);
    v64 = v63 + 1;
    v51 = v13;
    if (v63 >= v62 >> 1)
    {
      v23 = sub_1001FCD18((v62 > 1), v63 + 1, 1, v23);
    }

    *(v23 + 2) = v64;
    v65 = &v23[16 * v63];
    *(v65 + 4) = v22;
    *(v65 + 5) = v61;
    v66 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v61;
    if (v63)
    {
      v13 = v66;
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v23 + 4);
          v69 = *(v23 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_112;
          }

          v84 = &v23[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_115;
          }

          v90 = &v23[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_119;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v23[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_114;
        }

        v97 = &v23[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_117;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v106 = *&v23[16 * v105 + 32];
        v107 = *&v23[16 * v67 + 40];
        sub_100219F54(*v145 + v51[9] * v106, *v145 + v51[9] * *&v23[16 * v67 + 32], *v145 + v51[9] * v107, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v107 < v106)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10023C584(v23);
        }

        if (v105 >= *(v23 + 2))
        {
          goto LABEL_109;
        }

        v108 = &v23[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v162 = v23;
        sub_10023C4F8(v67);
        v23 = v162;
        v64 = *(v162 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v23[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_110;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_111;
      }

      v79 = &v23[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_113;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_116;
      }

      if (v83 >= v75)
      {
        v101 = &v23[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v21 = *(v145 + 1);
    v22 = v141;
    v13 = v51;
    if (v141 >= v21)
    {
      goto LABEL_96;
    }
  }

  v134 = v23;
  v135 = v5;
  v109 = *v51;
  v110 = *(v13 + 72);
  v150 = *(v13 + 16);
  v111 = (v109 + v110 * (v40 - 1));
  v147 = -v110;
  v138 = v22;
  v112 = (v22 - v40);
  v148 = v109;
  v139 = v110;
  v113 = v109 + v40 * v110;
  v141 = v60;
LABEL_87:
  v146 = v40;
  v142 = v113;
  v143 = v112;
  v114 = v113;
  v144 = v111;
  v115 = v111;
  while (1)
  {
    v51 = v160;
    v116 = v150;
    (v150)(v160, v114, v12);
    v117 = v156;
    v116(v156, v115, v12);
    v118 = v157;
    Fence.updatedAt.getter();
    v119 = v158;
    Fence.updatedAt.getter();
    LODWORD(v161) = static Date.> infix(_:_:)();
    v120 = *v153;
    v121 = v119;
    v122 = v159;
    (*v153)(v121, v159);
    v123 = v118;
    v12 = v155;
    v120(v123, v122);
    v124 = *v152;
    (*v152)(v117, v12);
    v124(v51, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v40 = v146 + 1;
      v111 = &v144[v139];
      v112 = v143 - 1;
      v61 = v141;
      v113 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v23 = v134;
      v22 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v12);
    swift_arrayInitWithTakeFrontToBack();
    v125(v115, v126, v12);
    v115 = v147 + v115;
    v114 += v147;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_86;
    }
  }

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
}