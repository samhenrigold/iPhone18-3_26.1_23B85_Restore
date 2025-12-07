uint64_t sub_10004DA2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JoeColorType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100002BE4(&qword_1001697B0, &unk_10010D250);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_100050A30();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
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
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
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
  return result;
}

uint64_t sub_10004DDD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100068914(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10004E708();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10004CA48(v14, a3 & 1);
    v9 = sub_100068914(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_10004F518(a1, v20);
  }

  else
  {

    return sub_10004E630(v9, a2, a1, v19);
  }
}

unint64_t sub_10004DEF8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10006889C(a2, a3);
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
      sub_10004CCC8(v16, a4 & 1);
      result = sub_10006889C(a2, a3);
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
      sub_10004E884();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
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

uint64_t sub_10004E064(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004CF68(v16, a4 & 1);
      v11 = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10004E9EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
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

_OWORD *sub_10004E1DC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004EB58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004D20C(v16, a4 & 1);
    v11 = sub_10006889C(a2, a3);
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
    sub_1000052E4(v22);

    return sub_10000BF7C(a1, v22);
  }

  else
  {
    sub_10004E69C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10004E32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004D4C4(v16, a4 & 1);
      v11 = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10004ECFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_10004E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10006889C(a3, a4);
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
      sub_10004D76C(v18, a5 & 1);
      v13 = sub_10006889C(a3, a4);
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
      sub_10004EE6C();
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

uint64_t sub_10004E630(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100008A5C(a3, a4[7] + 8 * a1);
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

_OWORD *sub_10004E69C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000BF7C(a4, (a5[7] + 32 * a1));
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

void *sub_10004E708()
{
  v1 = v0;
  sub_100002BE4(&qword_10016BF28, &qword_1001119F8);
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_100008A24(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100008A5C(v19, *(v4 + 56) + v17);
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

void *sub_10004E884()
{
  v1 = v0;
  sub_100002BE4(&qword_100169788, &qword_1001119F0);
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

  return result;
}

id sub_10004E9EC()
{
  v1 = v0;
  sub_100002BE4(&qword_100169758, &unk_10010D1F0);
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

void *sub_10004EB58()
{
  v1 = v0;
  sub_100002BE4(&qword_100169770, &qword_10010D208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000076F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000BF7C(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_10004ECFC()
{
  v1 = v0;
  sub_100002BE4(&qword_100169760, &unk_1001119E0);
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

  return result;
}

void *sub_10004EE6C()
{
  v1 = v0;
  sub_100002BE4(&qword_100169768, &qword_10010D200);
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

char *sub_10004EFE4()
{
  v1 = v0;
  v33 = type metadata accessor for JoeColorType();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_1001697B0, &unk_10010D250);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

id sub_10004F264()
{
  v0 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v0)
  {
    v1 = v0;
    static UserDefaultUtilities.SharedConstants.visioncompaniondHasInstalledTetsuoKey.getter();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 BOOLForKey:v2];
  }

  else
  {
    if (qword_100168E30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181FB8);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v5, "Failed to access daemon user defaults", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

unint64_t sub_10004F388(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = sub_10000B6F0(_swiftEmptyArrayStorage);
  }

  v2 = byte_10016BF08;
  v3 = objc_allocWithZone(NSNumber);

  v4 = [v3 initWithBool:v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004E064(v4, 0xD000000000000017, 0x800000010011DDE0, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(NSNumber) initWithBool:sub_10004F264() & 1];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10004E064(v6, 0xD000000000000018, 0x800000010011DE00, v7);
  return v1;
}

uint64_t sub_10004F4B0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BF20, &unk_1001119D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20TetsuoAnalyticsEventOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20TetsuoAnalyticsEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004F6D8()
{
  result = qword_10016BF30;
  if (!qword_10016BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF30);
  }

  return result;
}

unint64_t sub_10004F730()
{
  result = qword_10016BF38;
  if (!qword_10016BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF38);
  }

  return result;
}

uint64_t sub_10004F784(void *a1)
{
  sub_10004C784();
  v2 = a1;
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v2;
    v7 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      return 1;
    }

    else
    {
      v9 = v6;
      v10 = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {

        return 2;
      }

      else
      {
        v12 = v9;
        v13 = NSNumber.init(integerLiteral:)(3).super.super.isa;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          return 3;
        }

        else
        {
          v15 = NSNumber.init(integerLiteral:)(4).super.super.isa;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
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
  }
}

unint64_t sub_10004F8C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159918, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004F910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 30324 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1668508013 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726F7473 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10004FAB4(void *a1)
{
  v45 = sub_100002BE4(&qword_10016BF40, &qword_100111BD8);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_100002BE4(&qword_10016BF48, &qword_100111BE0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_100002BE4(&qword_10016BF50, &qword_100111BE8);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_100002BE4(&qword_10016BF58, &qword_100111BF0);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_100002BE4(&qword_10016BF60, &qword_100111BF8);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_100002BE4(&qword_10016BF68, &unk_100111C00);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_10000524C(a1, v17);
  sub_100050218();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_100017D5C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_100002BE4(&qword_100169D10, &qword_100119030);
    *v31 = &type metadata for CardType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000052E4(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_100050368();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_1000503BC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_100050314();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_1000502C0();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_10005026C();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_1000052E4(v49);
  return v14;
}

unint64_t sub_100050218()
{
  result = qword_10016BF70;
  if (!qword_10016BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF70);
  }

  return result;
}

unint64_t sub_10005026C()
{
  result = qword_10016BF78;
  if (!qword_10016BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF78);
  }

  return result;
}

unint64_t sub_1000502C0()
{
  result = qword_10016BF80;
  if (!qword_10016BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF80);
  }

  return result;
}

unint64_t sub_100050314()
{
  result = qword_10016BF88;
  if (!qword_10016BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF88);
  }

  return result;
}

unint64_t sub_100050368()
{
  result = qword_10016BF90;
  if (!qword_10016BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF90);
  }

  return result;
}

unint64_t sub_1000503BC()
{
  result = qword_10016BF98;
  if (!qword_10016BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppTitleComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppTitleComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000505BC()
{
  result = qword_10016BFD0;
  if (!qword_10016BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD0);
  }

  return result;
}

unint64_t sub_100050614()
{
  result = qword_10016BFD8;
  if (!qword_10016BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD8);
  }

  return result;
}

unint64_t sub_10005066C()
{
  result = qword_10016BFE0;
  if (!qword_10016BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE0);
  }

  return result;
}

unint64_t sub_1000506C4()
{
  result = qword_10016BFE8;
  if (!qword_10016BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE8);
  }

  return result;
}

unint64_t sub_10005071C()
{
  result = qword_10016BFF0;
  if (!qword_10016BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF0);
  }

  return result;
}

unint64_t sub_100050774()
{
  result = qword_10016BFF8;
  if (!qword_10016BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF8);
  }

  return result;
}

unint64_t sub_1000507CC()
{
  result = qword_10016C000;
  if (!qword_10016C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C000);
  }

  return result;
}

unint64_t sub_100050824()
{
  result = qword_10016C008;
  if (!qword_10016C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C008);
  }

  return result;
}

unint64_t sub_10005087C()
{
  result = qword_10016C010;
  if (!qword_10016C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C010);
  }

  return result;
}

unint64_t sub_1000508D4()
{
  result = qword_10016C018;
  if (!qword_10016C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C018);
  }

  return result;
}

unint64_t sub_10005092C()
{
  result = qword_10016C020;
  if (!qword_10016C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C020);
  }

  return result;
}

unint64_t sub_100050984()
{
  result = qword_10016C028;
  if (!qword_10016C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C028);
  }

  return result;
}

unint64_t sub_1000509DC()
{
  result = qword_10016C030;
  if (!qword_10016C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C030);
  }

  return result;
}

unint64_t sub_100050A30()
{
  result = qword_10016C038;
  if (!qword_10016C038)
  {
    type metadata accessor for JoeColorType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C038);
  }

  return result;
}

uint64_t sub_100050A94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100050ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100050B58()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 1397770580;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_10016C040 = v4;
}

uint64_t sub_100050C04()
{
  v1 = v0;
  v2 = sub_100002BE4(&qword_10016C050, &qword_100112170);
  __chkstk_darwin(v2);
  v4 = v15 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_100002BE4(&qword_10016C058, &qword_100112178);
  sub_100050E2C(v0, &v4[*(v5 + 44)]);
  v6 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v8 = &v4[*(v2 + 36)];
  *v8 = KeyPath;
  v8[1] = v6;
  v16 = *(v1 + 24);
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  v9 = swift_allocObject();
  v10 = v1[1];
  v9[1] = *v1;
  v9[2] = v10;
  v11 = v1[3];
  v9[3] = v1[2];
  v9[4] = v11;
  sub_100051744(v1, v15);
  sub_100002BE4(&qword_10016C060, &qword_1001121B8);
  sub_10005177C();
  v12 = type metadata accessor for PagePresentationSizing();
  v13 = sub_100051860();
  v15[0] = &type metadata for UserGuideView;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = &protocol witness table for PagePresentationSizing;
  swift_getOpaqueTypeConformance2();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_1000518B4(v4);
}

uint64_t sub_100050E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C090, &qword_1001121D8);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15[-v5 - 8];
  if (*(a1 + 8))
  {
    if (MobileGestaltCoordinator.hasHomeButton.getter())
    {
      v7 = *(v14 + 56);

      return v7(a2, 1, 1, v4);
    }

    else
    {
      if (qword_100168F40 != -1)
      {
        swift_once();
      }

      v9 = *(&xmmword_10016C040 + 1);
      *v6 = xmmword_10016C040;
      *(v6 + 1) = v9;
      v6[16] = 1;
      v10 = &v6[*(v4 + 40)];

      *v10 = static HorizontalAlignment.center.getter();
      *(v10 + 1) = 0x4030000000000000;
      v10[16] = 0;
      sub_100002BE4(&qword_10016C098, &qword_1001121E0);
      v16 = sub_1000E870C();
      v11 = swift_allocObject();
      v12 = *(a1 + 16);
      v11[1] = *a1;
      v11[2] = v12;
      v13 = *(a1 + 48);
      v11[3] = *(a1 + 32);
      v11[4] = v13;
      sub_100051744(a1, v15);
      sub_100002BE4(&qword_10016C0A0, &qword_1001121E8);
      type metadata accessor for ListTipView(0);
      sub_100012C48(&qword_10016C0A8, &qword_10016C0A0, &qword_1001121E8, &protocol conformance descriptor for [A]);
      sub_100051924(&qword_10016C0B0, type metadata accessor for ListTipView, &unk_100119B40);
      sub_100051924(&qword_10016C0B8, type metadata accessor for Tip, &unk_100119AEC);
      ForEach<>.init(_:content:)();
      *&v6[*(v4 + 44)] = 0x4024000000000000;
      sub_10005196C(v6, a2);
      return (*(v14 + 56))(a2, 0, 1, v4);
    }
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100051924(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000511C0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100051A58(a1, a3, type metadata accessor for Tip);
  v5 = swift_allocObject();
  v6 = a2[1];
  *(v5 + 1) = *a2;
  *(v5 + 2) = v6;
  v7 = a2[3];
  *(v5 + 3) = a2[2];
  *(v5 + 4) = v7;
  v8 = (a3 + *(type metadata accessor for ListTipView(0) + 20));
  *v8 = sub_100051A34;
  v8[1] = v5;
  return sub_100051744(a2, &v10);
}

uint64_t sub_100051268(uint64_t a1)
{
  v3 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TipDestinationAction(0);
  v7 = __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v20 - v11;
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  sub_100051A58(a1, v20 - v13, type metadata accessor for TipDestinationAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051A58(a1, v12, type metadata accessor for TipDestinationAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100051AC0(v12, v5);
      sub_100081630();
      v21 = *(v1 + 24);
      LOBYTE(v20[0]) = 0;
      sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
      State.wrappedValue.setter();
      v15 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination;
      v16 = v5;
    }

    else
    {
      v15 = type metadata accessor for TipDestinationAction;
      v16 = v12;
    }

    sub_100051B24(v16, v15);
    return sub_100051B24(v14, type metadata accessor for TipDestinationAction);
  }

  else
  {
    sub_100051A58(a1, v9, type metadata accessor for TipDestinationAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100051B24(v9, type metadata accessor for TipDestinationAction);
    }

    else
    {
      v18 = *v9;
      if (*v9 > 1u)
      {
        if (v18 == 2)
        {
          v19 = 0xEC00000037333966;
          v18 = 0x3763353738766564;
        }

        else
        {
          v19 = 0xEC00000065373636;
          v18 = 0x6333663735766564;
        }
      }

      else if (*v9)
      {
        v19 = 0xEC00000034383065;
        v18 = 0x3030386431766564;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v21 = *(v1 + 40);
      v22 = *(v1 + 56);
      v20[0] = v18;
      v20[1] = v19;
      sub_100002BE4(&qword_10016C088, &qword_1001121D0);
      State.wrappedValue.setter();
      v21 = *(v1 + 24);
      LOBYTE(v20[0]) = 1;
      sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
      return State.wrappedValue.setter();
    }
  }
}

double sub_1000515B8(uint64_t a1)
{
  v2 = type metadata accessor for PagePresentationSizing();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  sub_100002BE4(&qword_10016C088, &qword_1001121D0);
  State.wrappedValue.getter();
  v8 = v7;
  static PresentationSizing<>.page.getter();
  sub_100051860();
  View.presentationSizing<A>(_:)();
  (*(v3 + 8))(v5, v2);

  return result;
}

unint64_t sub_10005177C()
{
  result = qword_10016C068;
  if (!qword_10016C068)
  {
    sub_10000459C(&qword_10016C050, &qword_100112170);
    sub_100012C48(&qword_10016C070, &qword_10016C078, &unk_1001121C0, &protocol conformance descriptor for VStack<A>);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C068);
  }

  return result;
}

unint64_t sub_100051860()
{
  result = qword_10016C080;
  if (!qword_10016C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C080);
  }

  return result;
}

uint64_t sub_1000518B4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016C050, &qword_100112170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100051924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005196C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C090, &qword_1001121D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000519DC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100051A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100051B84()
{
  sub_10000459C(&qword_10016C050, &qword_100112170);
  sub_10000459C(&qword_10016C060, &qword_1001121B8);
  sub_10005177C();
  type metadata accessor for PagePresentationSizing();
  sub_100051860();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_100051C60()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating Tetsuo Config Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

id sub_100051DF8(uint64_t a1, uint64_t a2)
{
  v3 = MCGestaltIsiPad();
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182048);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Verifying device type %d", v7, 0x12u);
    sub_1000052E4(v8);
  }

  else
  {

    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  result = [objc_opt_self() valueWithInt32:v12 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100052058()
{
  result = qword_10016C0E8;
  if (!qword_10016C0E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016C0E8);
  }

  return result;
}

void sub_1000520FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5445535F4E45504FLL;
  v1._object = 0xED000053474E4954;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016C158 = v4;
}

uint64_t sub_1000521BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v45 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016C168, &qword_1001122A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = sub_100002BE4(&qword_10016C170, &qword_1001122B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v47 = a1;
  v48 = a2;
  v49 = a1;
  v50 = a2;
  sub_100002BE4(&qword_10016C178, &qword_1001122B8);
  v16 = sub_10000459C(&qword_10016C180, &qword_1001122C0);
  v17 = sub_100053F14();
  v51 = v16;
  v52 = v17;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  v18 = sub_100012C48(&qword_10016C200, &qword_10016C168, &qword_1001122A8, &protocol conformance descriptor for List<A, B>);
  View.listHasStackBehavior()();
  (*(v9 + 8))(v11, v8);
  InsetGroupedListStyle.init()();
  v51 = v8;
  v52 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v45;
  v19 = v46;
  View.listStyle<A>(_:)();
  (*(v5 + 8))(v7, v20);
  (*(v13 + 8))(v15, v12);
  v21 = v19;
  LOBYTE(v19) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v21 + *(sub_100002BE4(&qword_10016C208, &qword_100112308) + 36);
  *v30 = v19;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = static Edge.Set.bottom.getter();
  if (qword_100168F48 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v21 + *(sub_100002BE4(&qword_10016C210, &qword_100112310) + 36);
  *v40 = v31;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35;
  *(v40 + 24) = v37;
  *(v40 + 32) = v39;
  *(v40 + 40) = 0;
  v41 = swift_allocObject();
  v42 = v48;
  *(v41 + 16) = v47;
  *(v41 + 24) = v42;
  v43 = (v21 + *(sub_100002BE4(&qword_10016C218, &unk_100112318) + 36));
  *v43 = sub_10005435C;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
}

uint64_t sub_100052638(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C1C8, &qword_1001122E8);
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  v7 = sub_100002BE4(&qword_10016C180, &qword_1001122C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a2;
  sub_100053244(a2, v6);
  sub_100002BE4(&qword_10016C198, &qword_1001122C8);
  sub_100053FAC();
  sub_100054150();
  Section<>.init(footer:content:)();
  sub_100053F14();
  View.onOpenURL(perform:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100052808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_5:
    v12[0] = v5;
    sub_100054460(v12);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    sub_100002BE4(&qword_10016C240, &qword_100112368);
    sub_100002BE4(&qword_10016C248, &qword_100112370);
    sub_100012C48(&qword_10016C250, &qword_10016C240, &qword_100112368, &protocol conformance descriptor for [A]);
    v9 = sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    v10 = sub_10005406C();
    v12[0] = v9;
    v12[1] = v10;
    swift_getOpaqueTypeConformance2();
    sub_100054E58();
    return ForEach<>.init(_:content:)();
  }

  v5 = sub_1000B5A64(v4, 0);
  v6 = sub_100009968(v12, v5 + 32, v4, a1);
  v7 = v12[0];

  sub_1000151D4(v7);
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100052A1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = type metadata accessor for Tip(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AutomationSemantics();
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v34 - v14;
  v36 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0);
  __chkstk_darwin(v36);
  v17 = &v34 - v16;
  v18 = *a1;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v18;
  v40 = v18;

  Button.init(action:label:)();
  if (v18 > 2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  v41 = a3;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a3 + 48) != 0;
LABEL_6:
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v13 + 32))(v17, v15, v35);
  v24 = &v17[*(v36 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_100054F7C;
  v24[2] = v23;
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v25 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType(0) - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10010FEE0;
  v29 = (v28 + v27);
  *v29 = 1030;
  swift_storeEnumTagMultiPayload();
  v30 = (v29 + v26);
  sub_1000E4A84(v18, v9);
  v32 = *(v9 + 2);
  v31 = *(v9 + 3);

  sub_100054FFC(v9, type metadata accessor for Tip);
  *v30 = v32;
  v30[1] = v31;
  swift_storeEnumTagMultiPayload();
  sub_1000FCC48(192, v28, v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10005406C();
  View.automationSemantics(_:)();
  (*(v37 + 8))(v12, v38);
  return sub_100009908(v17, &qword_10016C1A0, &unk_1001122D0);
}

uint64_t sub_100052F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TipDestinationAction(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for Tip(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E4A84(v3, v16);
  sub_100054F94(&v16[*(v14 + 40)], v12, type metadata accessor for TipDestinationAction);
  sub_100054FFC(v16, type metadata accessor for Tip);
  sub_100054F94(v12, v10, type metadata accessor for TipDestinationAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051AC0(v10, v6);
    sub_100081630();
    sub_100054FFC(v6, type metadata accessor for ExternalLinkCoordinator.ExternalDestination);
  }

  else
  {
    sub_100054FFC(v12, type metadata accessor for TipDestinationAction);
    v12 = v10;
  }

  return sub_100054FFC(v12, type metadata accessor for TipDestinationAction);
}

uint64_t sub_10005316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for Tip(0);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E4A84(v2, v6);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);

  sub_100054FFC(v6, type metadata accessor for Tip);
  v13[0] = v8;
  v13[1] = v7;
  sub_100012928();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_100053244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for AutomationSemantics();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016C228, &qword_100112338);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v57 = &v51 - v8;
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v51 - v15;
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  swift_getKeyPath();
  *&v72[0] = a1;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(a1 + 48);
  if (!v19)
  {
    return (*(v60 + 56))(v59, 1, 1, v61);
  }

  *&v72[0] = *(a1 + 40);
  *(&v72[0] + 1) = v19;
  sub_100053A7C(v72, v16);
  v20 = *(v10 + 32);
  v52 = v9;
  v20(v18, v16, v9);
  (*(v10 + 16))(v13, v18, v9);
  v21 = Text.init(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v25 & 1;
  LOBYTE(v72[0]) = v25 & 1;
  LOBYTE(v62) = 0;
  v38 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v71 = 0;
  *&v62 = v21;
  *(&v62 + 1) = v23;
  LOBYTE(v63) = v37;
  *(&v63 + 1) = v27;
  LOWORD(v64) = 256;
  BYTE8(v64) = v28;
  *&v65 = v30;
  *(&v65 + 1) = v32;
  *&v66 = v34;
  *(&v66 + 1) = v36;
  LOBYTE(v67) = 0;
  BYTE8(v67) = v38;
  *&v68 = v39;
  *(&v68 + 1) = v40;
  *&v69 = v41;
  *(&v69 + 1) = v42;
  v70 = 0;
  *v5 = 0xD000000000000016;
  v5[1] = 0x800000010011DEF0;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v43 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10010D3B0;
  sub_100054F94(v5, v44 + v43, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v45 = v55;
  sub_1000FCC48(140, v44, v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100054FFC(v5, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100002BE4(&qword_10016C1D0, &qword_1001122F0);
  sub_100055118(&qword_10016C1D8, &qword_10016C1D0, &qword_1001122F0, sub_100054244);
  v46 = v57;
  View.automationSemantics(_:)();
  (*(v56 + 8))(v45, v58);
  v72[6] = v68;
  v72[7] = v69;
  v73 = v70;
  v72[2] = v64;
  v72[3] = v65;
  v72[4] = v66;
  v72[5] = v67;
  v72[0] = v62;
  v72[1] = v63;
  sub_100009908(v72, &qword_10016C1D0, &qword_1001122F0);
  (*(v10 + 8))(v18, v52);
  v48 = v59;
  v47 = v60;
  v49 = v61;
  (*(v60 + 32))(v59, v46, v61);
  return (*(v47 + 56))(v48, 0, 1, v49);
}

void sub_100053834()
{
  v0 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.absoluteString.getter() == 0xD000000000000016 && 0x800000010011DEF0 == v3)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  v5 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  (*(*(v5 - 8) + 56))(v2, 2, 7, v5);
  sub_100081630();
  sub_100054FFC(v2, type metadata accessor for ExternalLinkCoordinator.ExternalDestination);
}

uint64_t sub_100053970(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1000EE5F8(0, 0, v5, &unk_100112328, v7);
}

uint64_t sub_100053A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v4 = __chkstk_darwin(v3 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v29 = &v27 - v7;
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for URL();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = a1[1];
  v32 = *a1;
  v33 = v20;

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  AttributeContainer.init()();
  v22 = v30;
  AttributedString.init(_:attributes:)();
  (*(v14 + 16))(v34, v19, v13);
  URL.init(string:)();
  if ((*(v22 + 48))(v9, 1, v10) == 1)
  {
    (*(v14 + 8))(v19, v13);
    return sub_100009908(v9, &qword_10016BA40, &qword_100110FC0);
  }

  else
  {
    (*(v22 + 32))(v31, v9, v10);
    if (qword_100168F50 != -1)
    {
      swift_once();
    }

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v24 = v29;
    v25 = v31;
    (*(v22 + 16))(v29, v31, v10);
    (*(v22 + 56))(v24, 0, 1, v10);
    sub_100054D8C(v24, v28);
    sub_100054DFC();
    AttributedString.subscript.setter();
    sub_100009908(v24, &qword_10016BA40, &qword_100110FC0);
    static AttributedString.+= infix(_:_:)();
    v26 = *(v14 + 8);
    v26(v17, v13);
    (*(v22 + 8))(v25, v10);
    return (v26)(v19, v13);
  }
}

unint64_t sub_100053F14()
{
  result = qword_10016C188;
  if (!qword_10016C188)
  {
    sub_10000459C(&qword_10016C180, &qword_1001122C0);
    sub_100053FAC();
    sub_100054150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C188);
  }

  return result;
}

unint64_t sub_100053FAC()
{
  result = qword_10016C190;
  if (!qword_10016C190)
  {
    sub_10000459C(&qword_10016C198, &qword_1001122C8);
    sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    sub_10005406C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C190);
  }

  return result;
}

unint64_t sub_10005406C()
{
  result = qword_10016C1A8;
  if (!qword_10016C1A8)
  {
    sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
    sub_100012C48(&qword_10016C1B0, &qword_10016C1B8, &qword_1001122E0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1A8);
  }

  return result;
}

unint64_t sub_100054150()
{
  result = qword_10016C1C0;
  if (!qword_10016C1C0)
  {
    sub_10000459C(&qword_10016C1C8, &qword_1001122E8);
    sub_10000459C(&qword_10016C1D0, &qword_1001122F0);
    sub_100055118(&qword_10016C1D8, &qword_10016C1D0, &qword_1001122F0, sub_100054244);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1C0);
  }

  return result;
}

unint64_t sub_100054244()
{
  result = qword_10016C1E0;
  if (!qword_10016C1E0)
  {
    sub_10000459C(&qword_10016C1E8, &qword_1001122F8);
    sub_1000542D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1E0);
  }

  return result;
}

unint64_t sub_1000542D0()
{
  result = qword_10016C1F0;
  if (!qword_10016C1F0)
  {
    sub_10000459C(&qword_10016C1F8, &qword_100112300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1F0);
  }

  return result;
}

uint64_t sub_100054364()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000543A4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000FA04;

  return sub_1000BFAB4();
}

void sub_100054460(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000B67E0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100054598(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_100054598(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1000B67CC(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100054AD4((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100008E84(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_100008E84((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
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
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100054AD4((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_1000B6740(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_100054AD4(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100054CC0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100054D34()
{
  result = qword_10016C230;
  if (!qword_10016C230)
  {
    type metadata accessor for PasscodeAndBiometricsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C230);
  }

  return result;
}

uint64_t sub_100054D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100054DFC()
{
  result = qword_10016C238;
  if (!qword_10016C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C238);
  }

  return result;
}

unint64_t sub_100054E58()
{
  result = qword_10016C258;
  if (!qword_10016C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C258);
  }

  return result;
}

uint64_t sub_100054EB4(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100054F14@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100054F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100054FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100055060()
{
  result = qword_10016C260;
  if (!qword_10016C260)
  {
    sub_10000459C(&qword_10016C218, &unk_100112318);
    sub_100055118(&qword_10016C268, &qword_10016C210, &qword_100112310, sub_10005519C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C260);
  }

  return result;
}

uint64_t sub_100055118(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005519C()
{
  result = qword_10016C270;
  if (!qword_10016C270)
  {
    sub_10000459C(&qword_10016C208, &qword_100112308);
    sub_10000459C(&qword_10016C170, &qword_1001122B0);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016C168, &qword_1001122A8);
    sub_100012C48(&qword_10016C200, &qword_10016C168, &qword_1001122A8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C270);
  }

  return result;
}

uint64_t sub_10005530C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(*(updated - 8) + 48);

  return v5(a1, a2, updated);
}

uint64_t sub_10005538C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(*(updated - 8) + 56);

  return v5(a1, a2, a2, updated);
}

uint64_t type metadata accessor for SoftwareUpdateView(uint64_t a1)
{
  result = qword_10016C2D0;
  if (!qword_10016C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055448(uint64_t a1)
{
  result = type metadata accessor for SoftwareUpdateInfo();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000554D0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016C308, &qword_100112418);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_100002BE4(&qword_10016C310, &qword_100112420);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v42 = v1;
  sub_100002BE4(&qword_10016C318, &qword_100112428);
  sub_100012C48(&qword_10016C320, &qword_10016C318, &qword_100112428, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v14 = sub_100012C48(&qword_10016C328, &qword_10016C308, &qword_100112418, &protocol conformance descriptor for List<A, B>);
  View.listHasStackBehavior()();
  (*(v7 + 8))(v9, v6);
  InsetGroupedListStyle.init()();
  v43 = v6;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v41;
  v16 = v39;
  View.listStyle<A>(_:)();
  (*(v40 + 8))(v5, v16);
  (*(v11 + 8))(v13, v10);
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 + *(sub_100002BE4(&qword_10016C330, &qword_100112430) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = sub_100002BE4(&qword_10016C338, &qword_100112438);
  v37 = v15 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_10005589C@<X0>(char *a2@<X8>)
{
  v49 = a2;
  v2 = sub_100002BE4(&qword_10016C340, &unk_100112440);
  v3 = __chkstk_darwin(v2 - 8);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v41 - v5;
  v46 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v46);
  v7 = &v41 - v6;
  v8 = sub_100002BE4(&qword_10016C348, &qword_100112450);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v43 = sub_100002BE4(&qword_10016C350, &qword_100112458);
  __chkstk_darwin(v43);
  v15 = &v41 - v14;
  v47 = sub_100002BE4(&qword_10016C358, &qword_100112460);
  v45 = *(v47 - 8);
  v16 = __chkstk_darwin(v47);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v20 = &v15[*(sub_100002BE4(&qword_10016C360, &qword_100112468) + 44)];
  sub_100055ED8(v56);
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4008000000000000;
  v13[16] = 0;
  v21 = sub_100002BE4(&qword_10016C368, &qword_100112470);
  sub_100056164(&v13[*(v21 + 44)]);
  v53 = v56[2];
  v54 = v56[3];
  v55 = v57;
  v51 = v56[0];
  v52 = v56[1];
  sub_10000C178(v13, v11, &qword_10016C348, &qword_100112450);
  v22 = v54;
  v58[2] = v53;
  v58[3] = v54;
  v23 = v55;
  v59 = v55;
  v25 = v51;
  v24 = v52;
  v58[0] = v51;
  v58[1] = v52;
  *(v20 + 2) = v53;
  *(v20 + 3) = v22;
  *(v20 + 8) = v23;
  *v20 = v25;
  *(v20 + 1) = v24;
  v26 = sub_100002BE4(&qword_10016C370, &unk_100112478);
  sub_10000C178(v11, &v20[*(v26 + 48)], &qword_10016C348, &qword_100112450);
  sub_100056DA0(v58, v60);
  sub_100009908(v13, &qword_10016C348, &qword_100112450);
  sub_100009908(v11, &qword_10016C348, &qword_100112450);
  v60[2] = v53;
  v60[3] = v54;
  v61 = v55;
  v60[0] = v51;
  v60[1] = v52;
  sub_100009908(v60, &qword_10016B8A0, &unk_100110E00);
  v27 = enum case for DynamicTypeSize.accessibility2(_:);
  v28 = type metadata accessor for DynamicTypeSize();
  (*(*(v28 - 8) + 104))(v7, v27, v28);
  sub_1000128D0();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100012C48(&qword_10016C378, &qword_10016C350, &qword_100112458, &protocol conformance descriptor for HStack<A>);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    v42 = v19;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v7, &qword_100169A10, &qword_10010D450);
    sub_100009908(v15, &qword_10016C350, &qword_100112458);
    v30 = sub_100002BE4(&qword_10016C380, &qword_100112488);
    v31 = v48;
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    v33 = v44;
    v32 = v45;
    v34 = *(v45 + 16);
    v35 = v19;
    v36 = v47;
    v34(v44, v35, v47);
    v37 = v50;
    sub_10000C178(v31, v50, &qword_10016C340, &unk_100112440);
    v38 = v49;
    v34(v49, v33, v36);
    v39 = sub_100002BE4(&qword_10016C388, &unk_100112490);
    sub_10000C178(v37, &v38[*(v39 + 48)], &qword_10016C340, &unk_100112440);
    sub_100009908(v31, &qword_10016C340, &unk_100112440);
    v40 = *(v32 + 8);
    v40(v42, v36);
    sub_100009908(v37, &qword_10016C340, &unk_100112440);
    return (v40)(v33, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100055ED8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.Interpolation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = SoftwareUpdateInfo.iconImageData.getter();
  v12 = v11;
  v13 = static SoftwareUpdateUtilities.uiImageFromData(_:)();
  sub_10003DCC8(updated, v12);
  if (v13)
  {
    Image.init(uiImage:)();
  }

  else
  {
    Image.init(systemName:)();
  }

  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, enum case for Image.Interpolation.high(_:), v2);
  v14 = Image.interpolation(_:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v15 = v17[1];
  *(a1 + 24) = v17[0];
  *(a1 + 40) = v15;
  result = *&v18;
  *(a1 + 56) = v18;
  return result;
}

uint64_t sub_100056164@<X0>(char *a2@<X8>)
{
  v50 = a2;
  v51 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v49 = *(v51 - 8);
  v2 = __chkstk_darwin(v51);
  v53 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v41 - v4;
  v6 = sub_100002BE4(&qword_10016C390, &qword_1001124A0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_100002BE4(&qword_10016C398, &qword_1001124A8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  sub_100056838(v8);
  v16 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  static Font.Weight.bold.getter();
  sub_100056E18();
  View.fontWeight(_:)();
  sub_100009908(v8, &qword_10016C390, &qword_1001124A0);
  sub_1000565B0(v5);
  updated = SoftwareUpdateInfo.releaseNotes.getter();
  if (v20 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v21 = updated;
  v22 = v20;
  v52 = static SoftwareUpdateUtilities.stringFromData(_:)();
  if (!v23)
  {
    sub_10003DCC8(v21, v22);
LABEL_5:
    v52 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    goto LABEL_6;
  }

  v24 = v23;
  v54 = 0;
  State.init(wrappedValue:)();
  sub_10003DCC8(v21, v22);
  v46 = v56;
  v47 = v55;

  v48 = v24;

LABEL_6:
  v43 = v15;
  v44 = v10;
  v25 = *(v10 + 16);
  v25(v13, v15, v9);
  v26 = v49;
  v41 = v5;
  v42 = v9;
  v45 = v13;
  v27 = *(v49 + 16);
  v28 = v53;
  v29 = v51;
  v27(v53, v5, v51);
  v30 = v50;
  v25(v50, v13, v9);
  v31 = sub_100002BE4(&qword_10016C3C8, &unk_1001124F8);
  v27(&v30[*(v31 + 48)], v28, v29);
  v32 = &v30[*(v31 + 64)];
  v33 = v52;
  v35 = v47;
  v34 = v48;
  v36 = v46;
  sub_100057008(v52, v48, v47, v46);
  sub_10005704C(v33, v34, v35, v36);
  *v32 = v33;
  v32[1] = v34;
  v32[2] = v35;
  v32[3] = v36;
  v37 = *(v26 + 8);
  v37(v41, v29);
  v38 = *(v44 + 8);
  v39 = v42;
  v38(v43, v42);
  sub_10005704C(v33, v34, v35, v36);
  v37(v53, v29);
  return (v38)(v45, v39);
}

double sub_1000565B0@<D0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = type metadata accessor for AutomationSemantics();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() mainBundle];
  v30._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x800000010011DF10;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v30);

  v27 = v7;
  sub_100012928();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.footnote.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10001297C(v8, v10, v12 & 1);

  v27._countAndFlagsBits = v13;
  v27._object = v15;
  v28 = v17 & 1;
  v29 = v19;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_100009908(v25, &qword_100169A38, &qword_10010D460);
  sub_100009908(v26, &qword_100169A38, &qword_10010D460);
  View.automationSemantics(_:)();
  (*(v22 + 8))(v2, v24);
  sub_10001297C(v13, v15, v17 & 1);

  return result;
}

uint64_t sub_100056838@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AutomationSemantics();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v32 - v6;
  v8 = sub_100002BE4(&qword_10016C3D0, &qword_100112508);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = SoftwareUpdateInfo.osName.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v16._countAndFlagsBits = SoftwareUpdateInfo.productVersion.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

  if (has_internal_ui)
  {
    v17._countAndFlagsBits = 10272;
    v17._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    v18._countAndFlagsBits = SoftwareUpdateInfo.productBuildVersion.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    LocalizedStringKey.init(stringInterpolation:)();
    *v10 = Text.init(_:tableName:bundle:comment:)();
    *(v10 + 1) = v20;
    v10[16] = v21 & 1;
    *(v10 + 3) = v22;
    swift_storeEnumTagMultiPayload();
    v38 = &type metadata for Text;
    v39 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
    LocalizedStringKey.init(stringInterpolation:)();
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v38 = v25;
    v39 = v26;
    v32[1] = v8;
    v29 = v28 & 1;
    v40 = v28 & 1;
    v41 = v30;
    memset(v37, 0, sizeof(v37));
    memset(v36, 0, sizeof(v36));
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    v32[0] = a1;
    sub_100009908(v36, &qword_100169A38, &qword_10010D460);
    sub_100009908(v37, &qword_100169A38, &qword_10010D460);
    View.automationSemantics(_:)();
    (*(v33 + 8))(v4, v34);
    sub_10001297C(v25, v27, v29);

    v31 = v35;
    (*(v35 + 16))(v10, v7, v5);
    swift_storeEnumTagMultiPayload();
    v38 = &type metadata for Text;
    v39 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v31 + 8))(v7, v5);
  }
}

uint64_t sub_100056DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B8A0, &unk_100110E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056E18()
{
  result = qword_10016C3A0;
  if (!qword_10016C3A0)
  {
    sub_10000459C(&qword_10016C390, &qword_1001124A0);
    sub_100056ED0();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3A0);
  }

  return result;
}

unint64_t sub_100056ED0()
{
  result = qword_10016C3A8;
  if (!qword_10016C3A8)
  {
    sub_10000459C(&qword_10016C3B0, &qword_1001124E0);
    sub_100056F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3A8);
  }

  return result;
}

unint64_t sub_100056F54()
{
  result = qword_10016C3B8;
  if (!qword_10016C3B8)
  {
    sub_10000459C(&qword_10016C3C0, &unk_1001124E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3B8);
  }

  return result;
}

void sub_100057008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_10005704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_100057094()
{
  result = qword_10016C3D8;
  if (!qword_10016C3D8)
  {
    sub_10000459C(&qword_10016C338, &qword_100112438);
    sub_100057120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3D8);
  }

  return result;
}

unint64_t sub_100057120()
{
  result = qword_10016C3E0;
  if (!qword_10016C3E0)
  {
    sub_10000459C(&qword_10016C330, &qword_100112430);
    sub_10000459C(&qword_10016C310, &qword_100112420);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016C308, &qword_100112418);
    sub_100012C48(&qword_10016C328, &qword_10016C308, &qword_100112418, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3E0);
  }

  return result;
}

uint64_t sub_10005728C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100057318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceModelConfiguratorView(uint64_t a1)
{
  result = qword_10016C448;
  if (!qword_10016C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000573E0(uint64_t a1)
{
  sub_10005744C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005744C(uint64_t a1)
{
  if (!qword_10016C458)
  {
    type metadata accessor for DeviceModelParameters(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &qword_10016C458);
    }
  }
}

__n128 sub_1000574C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C498, &qword_1001125A0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v26[-v6];
  v27 = a1;
  static Axis.Set.vertical.getter();
  sub_100002BE4(&qword_10016C4A0, &qword_1001125A8);
  sub_100012C48(&qword_10016C4A8, &qword_10016C4A0, &qword_1001125A8, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v8 = &v7[*(sub_100002BE4(&qword_10016C4B0, &qword_1001125B0) + 36)];
  *v8 = a1;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v10 = Color.init(_:)();
  v11 = static Edge.Set.all.getter();
  v12 = &v7[*(sub_100002BE4(&qword_10016C4B8, &unk_1001125B8) + 36)];
  *v12 = v10;
  v12[8] = v11;
  v13 = &v7[*(v5 + 44)];
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #16.0 }

  *v13 = _Q0;
  *&v13[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10005B408(v7, a2);
  v22 = a2 + *(sub_100002BE4(&qword_10016C4C0, &qword_1001125C8) + 36);
  v23 = v33;
  *(v22 + 64) = v32;
  *(v22 + 80) = v23;
  *(v22 + 96) = v34;
  v24 = v29;
  *v22 = v28;
  *(v22 + 16) = v24;
  result = v31;
  *(v22 + 32) = v30;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_100057784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_10016C4C8, &qword_1001125D0);
  return sub_1000577DC(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000577DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C4D0, &qword_1001125D8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = sub_100002BE4(&qword_10016C4D8, &qword_1001125E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0x4020000000000000;
  v15[16] = 0;
  v16 = sub_100002BE4(&qword_10016C4E0, &qword_1001125E8);
  sub_1000579FC(a1, &v15[*(v16 + 44)]);
  sub_10005845C(a1, v9);
  sub_10000C178(v15, v13, &qword_10016C4D8, &qword_1001125E0);
  sub_10000C178(v9, v7, &qword_10016C4D0, &qword_1001125D8);
  sub_10000C178(v13, a2, &qword_10016C4D8, &qword_1001125E0);
  v17 = sub_100002BE4(&qword_10016C4E8, &qword_1001125F0);
  sub_10000C178(v7, a2 + *(v17 + 48), &qword_10016C4D0, &qword_1001125D8);
  sub_100009908(v9, &qword_10016C4D0, &qword_1001125D8);
  sub_100009908(v15, &qword_10016C4D8, &qword_1001125E0);
  sub_100009908(v7, &qword_10016C4D0, &qword_1001125D8);
  return sub_100009908(v13, &qword_10016C4D8, &qword_1001125E0);
}

uint64_t sub_1000579FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v81 = type metadata accessor for ButtonToggleStyle();
  v95 = *(v81 - 8);
  __chkstk_darwin(v81);
  v90 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v92 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  v80 = sub_100002BE4(&qword_10016C5F8, &qword_100112958);
  v93 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = &v74 - v7;
  v85 = sub_100002BE4(&qword_10016C600, &qword_100112960);
  v84 = *(v85 - 8);
  v8 = __chkstk_darwin(v85);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v82 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v91 = &v74 - v13;
  __chkstk_darwin(v12);
  v94 = &v74 - v14;
  v15 = type metadata accessor for DeviceModelConfiguratorView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = sub_100002BE4(&qword_10016C608, &qword_100112968);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v89 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v74 - v22;
  v79 = a1;
  sub_10005B728(a1, &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v25 = swift_allocObject();
  sub_10005B864(&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v96 = 0xD000000000000011;
  v97 = 0x800000010011DFD0;

  Button.init(action:label:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v23[*(sub_100002BE4(&qword_10016C610, &qword_100112970) + 36)];
  *v34 = v17;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = static Color.blue.getter();
  v36 = static Edge.Set.all.getter();
  v37 = &v23[*(sub_100002BE4(&qword_10016C618, &qword_100112978) + 36)];
  *v37 = v35;
  v37[8] = v36;
  v38 = static Color.white.getter();

  KeyPath = swift_getKeyPath();
  v40 = *(sub_100002BE4(&qword_10016C620, &qword_1001129B0) + 36);
  v87 = v23;
  v41 = &v23[v40];
  *v41 = KeyPath;
  v41[1] = v38;
  v42 = &v23[*(v19 + 44)];
  v43 = *(type metadata accessor for RoundedRectangle() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #8.0 }

  *v42 = _Q0;
  *&v42[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  LocalizedStringKey.init(stringLiteral:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v51 = *(v92 + 8);
  v92 += 8;
  v78 = v51;
  v51(v6, v4);
  v52 = v88;
  Toggle<>.init(_:isOn:)();
  v53 = v90;
  ButtonToggleStyle.init()();
  v77 = sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958, &protocol conformance descriptor for Toggle<A>);
  v76 = sub_10005B940(&qword_10016C630, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v54 = v80;
  v55 = v81;
  View.toggleStyle<A>(_:)();
  v56 = *(v95 + 8);
  v95 += 8;
  v75 = v56;
  v56(v53, v55);
  v57 = *(v93 + 8);
  v93 += 8;
  v74 = v57;
  v57(v52, v54);
  LocalizedStringKey.init(stringLiteral:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v78(v6, v4);
  v58 = v88;
  Toggle<>.init(_:isOn:)();
  v59 = v90;
  ButtonToggleStyle.init()();
  v60 = v91;
  View.toggleStyle<A>(_:)();
  v75(v59, v55);
  v74(v58, v54);
  v61 = v89;
  sub_10000C178(v87, v89, &qword_10016C608, &qword_100112968);
  v62 = v84;
  v63 = *(v84 + 16);
  v64 = v82;
  v65 = v85;
  v63(v82, v94, v85);
  v66 = v83;
  v67 = v60;
  v68 = v65;
  v63(v83, v67, v65);
  v69 = v61;
  v70 = v86;
  sub_10000C178(v69, v86, &qword_10016C608, &qword_100112968);
  v71 = sub_100002BE4(&qword_10016C638, &qword_100112A08);
  v63((v70 + *(v71 + 48)), v64, v68);
  v63((v70 + *(v71 + 64)), v66, v68);
  v72 = *(v62 + 8);
  v72(v91, v68);
  v72(v94, v68);
  sub_100009908(v87, &qword_10016C608, &qword_100112968);
  v72(v66, v68);
  v72(v64, v68);
  return sub_100009908(v89, &qword_10016C608, &qword_100112968);
}

uint64_t sub_100058408()
{
  sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  Bindable.wrappedValue.getter();
  sub_10005E894();
}

uint64_t sub_10005845C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100002BE4(&qword_10016C4F0, &qword_1001125F8);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100002BE4(&qword_10016C4F8, &qword_100112600);
  v9 = __chkstk_darwin(v8 - 8);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_100002BE4(&qword_10016C500, &qword_100112608);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v37 - v21;
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  v52 = a1;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0x4020000000000000;
  v24[16] = 0;
  v25 = sub_100002BE4(&qword_10016C508, &qword_100112610);
  v26 = *(v25 + 44);
  v41 = v24;
  sub_10005A3F4(0x6C65646F4DLL, 0xE500000000000000, sub_10005B478, v51, &qword_10016C5E8, &qword_1001128A8, &qword_10016C5F0, &qword_1001128B0, &v24[v26]);
  v50 = a1;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0x4020000000000000;
  v12[16] = 0;
  v27 = *(sub_100002BE4(&qword_10016C510, &qword_100112618) + 44);
  v39 = v12;
  sub_10005A3F4(0x6172656D6143, 0xE600000000000000, sub_10005B480, v49, &qword_10016C5D0, &qword_1001127A0, &qword_10016C5D8, &qword_1001127A8, &v12[v27]);
  v48 = a1;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v28 = *(sub_100002BE4(&qword_10016C518, &qword_100112620) + 44);
  v38 = v7;
  sub_10005A3F4(0x42206C6C6F726353, 0xEF726F6976616865, sub_10005B488, v47, &qword_10016C5B8, &qword_100112738, &qword_10016C5C0, &qword_100112740, &v7[v28]);
  v46 = a1;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0x4020000000000000;
  v22[16] = 0;
  sub_10005A3F4(2003134806, 0xE400000000000000, sub_10005B490, v45, &qword_10016C5E8, &qword_1001128A8, &qword_10016C5F0, &qword_1001128B0, &v22[*(v25 + 44)]);
  v29 = v19;
  v40 = v19;
  sub_10000C178(v24, v19, &qword_10016C500, &qword_100112608);
  v30 = v42;
  sub_10000C178(v12, v42, &qword_10016C4F8, &qword_100112600);
  v31 = v7;
  v32 = v43;
  sub_10000C178(v31, v43, &qword_10016C4F0, &qword_1001125F8);
  v33 = v16;
  sub_10000C178(v22, v16, &qword_10016C500, &qword_100112608);
  v34 = v44;
  sub_10000C178(v29, v44, &qword_10016C500, &qword_100112608);
  v35 = sub_100002BE4(&qword_10016C520, &qword_100112628);
  sub_10000C178(v30, v34 + v35[12], &qword_10016C4F8, &qword_100112600);
  sub_10000C178(v32, v34 + v35[16], &qword_10016C4F0, &qword_1001125F8);
  sub_10000C178(v33, v34 + v35[20], &qword_10016C500, &qword_100112608);
  sub_100009908(v22, &qword_10016C500, &qword_100112608);
  sub_100009908(v38, &qword_10016C4F0, &qword_1001125F8);
  sub_100009908(v39, &qword_10016C4F8, &qword_100112600);
  sub_100009908(v41, &qword_10016C500, &qword_100112608);
  sub_100009908(v33, &qword_10016C500, &qword_100112608);
  sub_100009908(v32, &qword_10016C4F0, &qword_1001125F8);
  sub_100009908(v30, &qword_10016C4F8, &qword_100112600);
  return sub_100009908(v40, &qword_10016C500, &qword_100112608);
}

uint64_t sub_1000589D8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v51 - v3;
  v5 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v6 = __chkstk_darwin(v5 - 8);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v54 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v53 = &v51 - v11;
  v12 = __chkstk_darwin(v10);
  v59 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = (&v51 - v15);
  v16 = __chkstk_darwin(v14);
  v58 = (&v51 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23 = *(v2 + 8);
  v23(v4, v1);
  v25 = v60;
  v24 = v61;
  v26 = v62;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0x4010000000000000;
  v22[16] = 0;
  v57 = v22;
  v27 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x697461746F522058, 0xAF29B0C228206E6FLL, v25, v24, &v22[*(v27 + 44)], v26, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v28 = v60;
  v29 = v61;
  v30 = v62;
  v31 = static HorizontalAlignment.leading.getter();
  v51 = v20;
  *v20 = v31;
  *(v20 + 1) = 0x4010000000000000;
  v20[16] = 0;
  sub_10005A690(0x697461746F522059, 0xAF29B0C228206E6FLL, v28, v29, &v20[*(v27 + 44)], v30, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v32 = v60;
  v33 = v61;
  v34 = v62;
  v35 = static HorizontalAlignment.leading.getter();
  v36 = v58;
  *v58 = v35;
  v36[1] = 0x4010000000000000;
  *(v36 + 16) = 0;
  sub_10005A690(0x697461746F52205ALL, 0xAF29B0C228206E6FLL, v32, v33, (v36 + *(v27 + 44)), v34, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v37 = v60;
  v38 = v61;
  v39 = v62;
  v40 = static HorizontalAlignment.leading.getter();
  v41 = v52;
  *v52 = v40;
  *(v41 + 8) = 0x4010000000000000;
  *(v41 + 16) = 0;
  sub_10005A690(0x656C616353, 0xE500000000000000, v37, v38, (v41 + *(v27 + 44)), v39, 0, 0x3E4CCCCDu);

  v42 = v59;
  sub_10000C178(v57, v59, &qword_10016C528, &qword_100112630);
  v43 = v51;
  v44 = v53;
  sub_10000C178(v51, v53, &qword_10016C528, &qword_100112630);
  v45 = v58;
  v46 = v54;
  sub_10000C178(v58, v54, &qword_10016C528, &qword_100112630);
  v47 = v55;
  sub_10000C178(v41, v55, &qword_10016C528, &qword_100112630);
  v48 = v56;
  sub_10000C178(v42, v56, &qword_10016C528, &qword_100112630);
  v49 = sub_100002BE4(&qword_10016C538, &qword_1001126E0);
  sub_10000C178(v44, v48 + v49[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v46, v48 + v49[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v47, v48 + v49[20], &qword_10016C528, &qword_100112630);
  sub_100009908(v41, &qword_10016C528, &qword_100112630);
  sub_100009908(v45, &qword_10016C528, &qword_100112630);
  sub_100009908(v43, &qword_10016C528, &qword_100112630);
  sub_100009908(v57, &qword_10016C528, &qword_100112630);
  sub_100009908(v47, &qword_10016C528, &qword_100112630);
  sub_100009908(v46, &qword_10016C528, &qword_100112630);
  sub_100009908(v44, &qword_10016C528, &qword_100112630);
  return sub_100009908(v59, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005904C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v70 - v3;
  v5 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v6 = __chkstk_darwin(v5 - 8);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v74 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v73 = &v70 - v11;
  v12 = __chkstk_darwin(v10);
  v72 = &v70 - v13;
  v14 = __chkstk_darwin(v12);
  v71 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v70 - v17;
  v18 = __chkstk_darwin(v16);
  v78 = (&v70 - v19);
  v20 = __chkstk_darwin(v18);
  v81 = (&v70 - v21);
  v22 = __chkstk_darwin(v20);
  v80 = (&v70 - v23);
  v24 = __chkstk_darwin(v22);
  v82 = (&v70 - v25);
  v26 = __chkstk_darwin(v24);
  v28 = &v70 - v27;
  __chkstk_darwin(v26);
  v30 = &v70 - v29;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31 = *(v2 + 8);
  v31(v4, v1);
  v32 = v83;
  v33 = v84;
  v34 = v85;
  *v30 = static HorizontalAlignment.leading.getter();
  *(v30 + 1) = 0x4010000000000000;
  v30[16] = 0;
  v79 = v30;
  v35 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x697469736F502058, 0xEA00000000006E6FLL, v32, v33, &v30[*(v35 + 44)], v34, COERCE_UNSIGNED_INT(-10.0), COERCE_UNSIGNED_INT(10.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31(v4, v1);
  v36 = v83;
  v37 = v84;
  v38 = v85;
  v39 = static HorizontalAlignment.leading.getter();
  v77 = v28;
  *v28 = v39;
  *(v28 + 1) = 0x4010000000000000;
  v28[16] = 0;
  sub_10005A690(0x697469736F502059, 0xEA00000000006E6FLL, v36, v37, &v28[*(v35 + 44)], v38, 0, COERCE_UNSIGNED_INT(1.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31(v4, v1);
  v40 = v83;
  v41 = v84;
  v42 = v85;
  v43 = static HorizontalAlignment.leading.getter();
  v44 = v82;
  *v82 = v43;
  v44[1] = 0x4010000000000000;
  *(v44 + 16) = 0;
  sub_10005A690(0x697469736F50205ALL, 0xEA00000000006E6FLL, v40, v41, (v44 + *(v35 + 44)), v42, COERCE_UNSIGNED_INT(-20.0), COERCE_UNSIGNED_INT(20.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31(v4, v1);
  v45 = v83;
  v46 = v84;
  v47 = v85;
  v48 = static HorizontalAlignment.leading.getter();
  v49 = v80;
  *v80 = v48;
  v49[1] = 0x4010000000000000;
  *(v49 + 16) = 0;
  sub_10005A690(0x656C616353, 0xE500000000000000, v45, v46, (v49 + *(v35 + 44)), v47, 0, COERCE_UNSIGNED_INT(2.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31(v4, v1);
  v50 = v83;
  v51 = v84;
  v52 = v85;
  v53 = static HorizontalAlignment.leading.getter();
  v54 = v81;
  *v81 = v53;
  v54[1] = 0x4010000000000000;
  *(v54 + 16) = 0;
  sub_10005A690(7496006, 0xE300000000000000, v50, v51, (v54 + *(v35 + 44)), v52, 0, 0x459C4000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v31(v4, v1);
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v58 = static HorizontalAlignment.leading.getter();
  v59 = v78;
  *v78 = v58;
  v59[1] = 0x4010000000000000;
  *(v59 + 16) = 0;
  sub_10005A690(1918985550, 0xE400000000000000, v55, v56, (v59 + *(v35 + 44)), v57, 0, 0x447A0000u);

  v60 = v70;
  sub_10000C178(v79, v70, &qword_10016C528, &qword_100112630);
  v61 = v71;
  sub_10000C178(v77, v71, &qword_10016C528, &qword_100112630);
  v62 = v72;
  sub_10000C178(v82, v72, &qword_10016C528, &qword_100112630);
  v63 = v73;
  sub_10000C178(v80, v73, &qword_10016C528, &qword_100112630);
  v64 = v74;
  sub_10000C178(v81, v74, &qword_10016C528, &qword_100112630);
  v65 = v59;
  v66 = v75;
  sub_10000C178(v65, v75, &qword_10016C528, &qword_100112630);
  v67 = v76;
  sub_10000C178(v60, v76, &qword_10016C528, &qword_100112630);
  v68 = sub_100002BE4(&qword_10016C5E0, &qword_1001128A0);
  sub_10000C178(v61, v67 + v68[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v62, v67 + v68[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v63, v67 + v68[20], &qword_10016C528, &qword_100112630);
  sub_10000C178(v64, v67 + v68[24], &qword_10016C528, &qword_100112630);
  sub_10000C178(v66, v67 + v68[28], &qword_10016C528, &qword_100112630);
  sub_100009908(v78, &qword_10016C528, &qword_100112630);
  sub_100009908(v81, &qword_10016C528, &qword_100112630);
  sub_100009908(v80, &qword_10016C528, &qword_100112630);
  sub_100009908(v82, &qword_10016C528, &qword_100112630);
  sub_100009908(v77, &qword_10016C528, &qword_100112630);
  sub_100009908(v79, &qword_10016C528, &qword_100112630);
  sub_100009908(v66, &qword_10016C528, &qword_100112630);
  sub_100009908(v64, &qword_10016C528, &qword_100112630);
  sub_100009908(v63, &qword_10016C528, &qword_100112630);
  sub_100009908(v62, &qword_10016C528, &qword_100112630);
  sub_100009908(v61, &qword_10016C528, &qword_100112630);
  return sub_100009908(v60, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v32 = a2;
  v2 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v6 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v7 = __chkstk_darwin(v6 - 8);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v30 = v29 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v29 - v12;
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16 = *(v3 + 8);
  v16(v5, v2);
  v17 = v33;
  v18 = v34;
  v19 = v35;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v20 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x76697469736E6553, 0xEB00000000797469, v17, v18, &v15[*(v20 + 44)], v19, 0, COERCE_UNSIGNED_INT(1.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16(v5, v2);
  v21 = v33;
  v22 = v34;
  v23 = v35;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  sub_10005A690(0x1000000000000011, 0x800000010011DFB0, v21, v22, &v13[*(v20 + 44)], v23, 0, 0x43B40000u);

  v24 = v30;
  sub_10000C178(v15, v30, &qword_10016C528, &qword_100112630);
  v25 = v31;
  sub_10000C178(v13, v31, &qword_10016C528, &qword_100112630);
  v26 = v32;
  sub_10000C178(v24, v32, &qword_10016C528, &qword_100112630);
  v27 = sub_100002BE4(&qword_10016C5C8, &qword_100112798);
  sub_10000C178(v25, v26 + *(v27 + 48), &qword_10016C528, &qword_100112630);
  sub_100009908(v13, &qword_10016C528, &qword_100112630);
  sub_100009908(v15, &qword_10016C528, &qword_100112630);
  sub_100009908(v25, &qword_10016C528, &qword_100112630);
  return sub_100009908(v24, &qword_10016C528, &qword_100112630);
}

uint64_t sub_100059CF8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v51 - v3;
  v5 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v6 = __chkstk_darwin(v5 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v55 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v54 = &v51 - v11;
  v12 = __chkstk_darwin(v10);
  v59 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v53 = (&v51 - v15);
  v16 = __chkstk_darwin(v14);
  v58 = (&v51 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23 = *(v2 + 8);
  v23(v4, v1);
  v25 = v60;
  v24 = v61;
  v26 = v62;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0x4010000000000000;
  v22[16] = 0;
  v27 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  v28 = *(v27 + 44);
  v51 = v22;
  sub_10005A690(0x5220746365707341, 0xEC0000006F697461, v25, v24, &v22[v28], v26, COERCE_UNSIGNED_INT(1.0), COERCE_UNSIGNED_INT(2.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v29 = v60;
  v30 = v61;
  v31 = v62;
  *v20 = static HorizontalAlignment.leading.getter();
  *(v20 + 1) = 0x4010000000000000;
  v20[16] = 0;
  v52 = v20;
  sub_10005A690(0x206D756D6978614DLL, 0xED00006874646957, v29, v30, &v20[*(v27 + 44)], v31, 0, 0x44BB8000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v32 = v60;
  v33 = v61;
  v34 = v62;
  v35 = static HorizontalAlignment.leading.getter();
  v36 = v58;
  *v58 = v35;
  v36[1] = 0x4010000000000000;
  *(v36 + 16) = 0;
  sub_10005A690(0x206D756D696E694DLL, 0xED00006874646957, v32, v33, (v36 + *(v27 + 44)), v34, 0, 0x43960000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23(v4, v1);
  v37 = v60;
  v38 = v61;
  v39 = v62;
  v40 = static HorizontalAlignment.leading.getter();
  v41 = v53;
  *v53 = v40;
  *(v41 + 8) = 0x4010000000000000;
  *(v41 + 16) = 0;
  sub_10005A690(0x50206D6F74746F42, 0xEE00676E69646461, v37, v38, (v41 + *(v27 + 44)), v39, 0xC2480000, 0x42480000u);

  v42 = v59;
  sub_10000C178(v22, v59, &qword_10016C528, &qword_100112630);
  v43 = v52;
  v44 = v54;
  sub_10000C178(v52, v54, &qword_10016C528, &qword_100112630);
  v45 = v58;
  v46 = v55;
  sub_10000C178(v58, v55, &qword_10016C528, &qword_100112630);
  v47 = v56;
  sub_10000C178(v41, v56, &qword_10016C528, &qword_100112630);
  v48 = v57;
  sub_10000C178(v42, v57, &qword_10016C528, &qword_100112630);
  v49 = sub_100002BE4(&qword_10016C538, &qword_1001126E0);
  sub_10000C178(v44, v48 + v49[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v46, v48 + v49[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v47, v48 + v49[20], &qword_10016C528, &qword_100112630);
  sub_100009908(v41, &qword_10016C528, &qword_100112630);
  sub_100009908(v45, &qword_10016C528, &qword_100112630);
  sub_100009908(v43, &qword_10016C528, &qword_100112630);
  sub_100009908(v51, &qword_10016C528, &qword_100112630);
  sub_100009908(v47, &qword_10016C528, &qword_100112630);
  sub_100009908(v46, &qword_10016C528, &qword_100112630);
  sub_100009908(v44, &qword_10016C528, &qword_100112630);
  return sub_100009908(v59, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005A388@<X0>(uint64_t a3@<X8>)
{
  sub_100012928();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_10005A3F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v53 = a7;
  v54 = a8;
  v48 = a5;
  v49 = a6;
  v50 = a4;
  v51 = a3;
  v52 = a9;
  v11 = sub_100002BE4(a5, a6);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v46 - v14;
  v55 = a1;
  v56 = a2;
  sub_100012928();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_10001297C(v15, v17, v19 & 1);

  static Font.Weight.semibold.getter();
  v25 = Text.fontWeight(_:)();
  v27 = v26;
  v29 = v28;
  sub_10001297C(v20, v22, v24 & 1);

  static Color.secondary.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;

  sub_10001297C(v25, v27, v29 & 1);

  v37 = v46;
  (v51)(v36);
  v39 = v47;
  v38 = v48;
  v40 = v49;
  sub_10000C178(v37, v47, v48, v49);
  v42 = v52;
  v41 = v53;
  *v52 = v30;
  v42[1] = v32;
  LOBYTE(v25) = v20 & 1;
  *(v42 + 16) = v20 & 1;
  v42[3] = v35;
  v43 = v42;
  v44 = sub_100002BE4(v41, v54);
  sub_10000C178(v39, v43 + *(v44 + 48), v38, v40);
  sub_100003AE4(v30, v32, v25);

  sub_100009908(v37, v38, v40);
  sub_100009908(v39, v38, v40);
  sub_10001297C(v30, v32, v25);

  return result;
}

void sub_10005A690(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, unsigned int a7@<S1>, unsigned int a8@<S2>)
{
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v13 = sub_100002BE4(&qword_10016C540, &qword_1001126E8);
  v14 = __chkstk_darwin(v13 - 8);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v44 = a1;
  v45 = a2;
  sub_100012928();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.caption.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10001297C(v18, v20, v22 & 1);

  static Color.secondary.getter();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10001297C(v23, v25, v27 & 1);

  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v35 = sub_100002BE4(&qword_10016C548, &qword_1001126F0);
  sub_10005A940(v41, v42, &v17[*(v35 + 44)], a6, a7, a8);
  v36 = v40;
  sub_10000C178(v17, v40, &qword_10016C540, &qword_1001126E8);
  v37 = v43;
  *v43 = v28;
  v37[1] = v30;
  *(v37 + 16) = v32 & 1;
  v37[3] = v34;
  v38 = v37;
  v39 = sub_100002BE4(&qword_10016C550, &qword_1001126F8);
  sub_10000C178(v36, v38 + *(v39 + 48), &qword_10016C540, &qword_1001126E8);
  sub_100003AE4(v28, v30, v32 & 1);

  sub_100009908(v17, &qword_10016C540, &qword_1001126E8);
  sub_100009908(v36, &qword_10016C540, &qword_1001126E8);
  sub_10001297C(v28, v30, v32 & 1);
}

uint64_t sub_10005A940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, unsigned int a5@<S1>, unsigned int a6@<S2>)
{
  v82 = a3;
  v80 = type metadata accessor for RoundedBorderTextFieldStyle();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100002BE4(&qword_10016C558, &qword_100112700);
  v68 = *(v66 - 8);
  v15 = __chkstk_darwin(v66);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v61 - v18;
  v72 = sub_100002BE4(&qword_10016C560, &qword_100112708);
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v61 - v19;
  v75 = sub_100002BE4(&qword_10016C568, &qword_100112710);
  __chkstk_darwin(v75);
  v69 = &v61 - v20;
  v78 = sub_100002BE4(&qword_10016C570, &qword_100112718);
  v77 = *(v78 - 8);
  v21 = __chkstk_darwin(v78);
  v76 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v61 - v23;
  v24 = sub_100002BE4(&qword_10016C578, &qword_100112720);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v61 - v26;
  v28 = sub_100002BE4(&qword_10016C580, &qword_100112728);
  v29 = v28 - 8;
  v30 = __chkstk_darwin(v28);
  v67 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v61 - v33;
  __chkstk_darwin(v32);
  v36 = &v61 - v35;
  v62 = &v61 - v35;
  *&v84 = a1;
  *(&v84 + 1) = a2;
  *&v85 = a4;
  *&v91 = __PAIR64__(a6, a5);
  sub_10005B4B8();

  Slider<>.init<A>(value:in:onEditingChanged:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v25 + 32))(v34, v27, v24);
  v37 = &v34[*(v29 + 44)];
  v38 = v89;
  *(v37 + 4) = v88;
  *(v37 + 5) = v38;
  *(v37 + 6) = v90;
  v39 = v85;
  *v37 = v84;
  *(v37 + 1) = v39;
  v40 = v87;
  *(v37 + 2) = v86;
  *(v37 + 3) = v40;
  sub_10005B50C(v34, v36);
  LocalizedStringKey.init(stringLiteral:)();
  *&v91 = a1;
  *(&v91 + 1) = a2;
  *&v92 = a4;

  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  v41 = v70;
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v42 = v66;
  FloatingPointFormatStyle.precision(_:)();
  (*(v71 + 8))(v41, v73);
  (*(v68 + 8))(v17, v42);
  sub_100012C48(&qword_10016C590, &qword_10016C558, &qword_100112700, &protocol conformance descriptor for FloatingPointFormatStyle<A>);
  v43 = v65;
  TextField<>.init<A>(_:value:format:prompt:)();
  v44 = v79;
  RoundedBorderTextFieldStyle.init()();
  sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708, &protocol conformance descriptor for TextField<A>);
  sub_10005B940(&qword_10016C5A0, &type metadata accessor for RoundedBorderTextFieldStyle, &protocol conformance descriptor for RoundedBorderTextFieldStyle);
  v45 = v69;
  v46 = v72;
  v47 = v80;
  View.textFieldStyle<A>(_:)();
  (*(v81 + 8))(v44, v47);
  (*(v74 + 8))(v43, v46);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v48 = (v45 + *(v75 + 36));
  v49 = v92;
  *v48 = v91;
  v48[1] = v49;
  v48[2] = v93;
  sub_10005B57C();
  v50 = v83;
  View.keyboardType(_:)();
  sub_100009908(v45, &qword_10016C568, &qword_100112710);
  v51 = v62;
  v52 = v67;
  sub_10000C178(v62, v67, &qword_10016C580, &qword_100112728);
  v53 = v77;
  v54 = *(v77 + 16);
  v55 = v76;
  v56 = v78;
  v54(v76, v50, v78);
  v57 = v82;
  sub_10000C178(v52, v82, &qword_10016C580, &qword_100112728);
  v58 = sub_100002BE4(&qword_10016C5B0, &qword_100112730);
  v54((v57 + *(v58 + 48)), v55, v56);
  v59 = *(v53 + 8);
  v59(v83, v56);
  sub_100009908(v51, &qword_10016C580, &qword_100112728);
  v59(v55, v56);
  return sub_100009908(v52, &qword_10016C580, &qword_100112728);
}

double sub_10005B370@<D0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_10016C488, &qword_100112590);
  sub_1000574C0(v2, a2 + *(v4 + 44));
  v5 = static Edge.Set.all.getter();
  v6 = a2 + *(sub_100002BE4(&qword_10016C490, &qword_100112598) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_10005B408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C498, &qword_1001125A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B4B8()
{
  result = qword_10016C588;
  if (!qword_10016C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C588);
  }

  return result;
}

uint64_t sub_10005B50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C580, &qword_100112728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B57C()
{
  result = qword_10016C5A8;
  if (!qword_10016C5A8)
  {
    sub_10000459C(&qword_10016C568, &qword_100112710);
    sub_10000459C(&qword_10016C560, &qword_100112708);
    type metadata accessor for RoundedBorderTextFieldStyle();
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708, &protocol conformance descriptor for TextField<A>);
    sub_10005B940(&qword_10016C5A0, &type metadata accessor for RoundedBorderTextFieldStyle, &protocol conformance descriptor for RoundedBorderTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C5A8);
  }

  return result;
}

uint64_t sub_10005B728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceModelConfiguratorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B78C()
{
  v1 = *(type metadata accessor for DeviceModelConfiguratorView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005B864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceModelConfiguratorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B8C8()
{
  type metadata accessor for DeviceModelConfiguratorView(0);

  return sub_100058408();
}

uint64_t sub_10005B940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005B994()
{
  result = qword_10016C640;
  if (!qword_10016C640)
  {
    sub_10000459C(&qword_10016C490, &qword_100112598);
    sub_100012C48(&qword_10016C648, &qword_10016C650, &unk_100112A10, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C640);
  }

  return result;
}

uint64_t sub_10005BA4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_10005BAEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 105);
  return result;
}

float sub_10005BB8C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 20);
  *a2 = result;
  return result;
}

float sub_10005BC2C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

float sub_10005BCCC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 28);
  *a2 = result;
  return result;
}

float sub_10005BD6C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 44);
  *a2 = result;
  return result;
}

float sub_10005BE0C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

float sub_10005BEAC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 52);
  *a2 = result;
  return result;
}

float sub_10005BF4C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

float sub_10005BFEC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 60);
  *a2 = result;
  return result;
}

float sub_10005C08C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

float sub_10005C12C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 68);
  *a2 = result;
  return result;
}

float sub_10005C1CC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

float sub_10005C26C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 76);
  *a2 = result;
  return result;
}

float sub_10005C30C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 100);
  *a2 = result;
  return result;
}

float sub_10005C3AC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 84);
  *a2 = result;
  return result;
}

float sub_10005C44C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

float sub_10005C4EC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 96);
  *a2 = result;
  return result;
}

uint64_t sub_10005C58C()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10005C5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

void sub_10005C69C(char a1)
{
  v3 = "SpatialGalleryItemUnfavorited";
  if (*(v1 + 16))
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if (a1)
  {
    v3 = "RealityDevice14,1";
  }

  if ((v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {

LABEL_9:
    *(v1 + 16) = a1 & 1;
    return;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10005F828();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

float sub_10005C800()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 20);
}

void sub_10005C870(float a1)
{
  if (*(v1 + 20) == a1)
  {
    *(v1 + 20) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005C958()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_10005C9C8(float a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CAB0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 28);
}

void sub_10005CB20(float a1)
{
  if (*(v1 + 28) == a1)
  {
    *(v1 + 28) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CC08()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

float sub_10005CC78@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_10005CD18(float a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CE00()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 36);
}

float sub_10005CE70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 36);
  *a2 = result;
  return result;
}

void sub_10005CF10(float a1)
{
  if (*(v1 + 36) == a1)
  {
    *(v1 + 36) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CFF8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

float sub_10005D068@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_10005D108(float a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D1F0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 44);
}

void sub_10005D260(float a1)
{
  if (*(v1 + 44) == a1)
  {
    *(v1 + 44) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D348()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

void sub_10005D3B8(float a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D4A0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 52);
}

void sub_10005D510(float a1)
{
  if (*(v1 + 52) == a1)
  {
    *(v1 + 52) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D5F8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_10005D668(float a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D750()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 60);
}

void sub_10005D7C0(float a1)
{
  if (*(v1 + 60) == a1)
  {
    *(v1 + 60) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D8A8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

void sub_10005D918(float a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DA00()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 68);
}

void sub_10005DA70(float a1)
{
  if (*(v1 + 68) == a1)
  {
    *(v1 + 68) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DB58()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

void sub_10005DBC8(float a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DCB0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 76);
}

void sub_10005DD20(float a1)
{
  if (*(v1 + 76) == a1)
  {
    *(v1 + 76) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DE08()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 84);
}

void sub_10005DE78(float a1)
{
  if (*(v1 + 84) == a1)
  {
    *(v1 + 84) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DF60()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

void sub_10005DFD0(float a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E0B8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 92);
}

float sub_10005E128@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 92);
  *a2 = result;
  return result;
}

void sub_10005E1C8(float a1)
{
  if (*(v1 + 92) == a1)
  {
    *(v1 + 92) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E2B0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

void sub_10005E320(float a1)
{
  if (*(v1 + 96) == a1)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E408()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 100);
}

void sub_10005E478(float a1)
{
  if (*(v1 + 100) == a1)
  {
    *(v1 + 100) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005E560()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_10005E5D0(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005E6B0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 105);
}

uint64_t sub_10005E720(uint64_t result)
{
  if (*(v1 + 105) == (result & 1))
  {
    *(v1 + 105) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005E800(char a1)
{
  *(v1 + 16) = 1;
  *(v1 + 80) = 0;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1 & 1;
  sub_10005F880(a1 & 1, v5);
  v3 = v5[1];
  *(v1 + 20) = v5[0];
  *(v1 + 36) = v3;
  *(v1 + 52) = v5[2];
  *(v1 + 68) = v6;
  *(v1 + 76) = v7;
  *(v1 + 84) = v8;
  *(v1 + 100) = v9;
  *(v1 + 104) = v10;
  return v1;
}

void sub_10005E894()
{
  swift_getKeyPath();
  v23 = v0;
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10005F880(*(v0 + 16), &v23);
  if (*(v0 + 20) == *&v23)
  {
    *(v0 + 20) = v23;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 24) == *(&v23 + 1))
  {
    *(v0 + 24) = HIDWORD(v23);
  }

  else
  {
    v2 = swift_getKeyPath();
    __chkstk_darwin(v2);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 28) == v24)
  {
    *(v0 + 28) = v24;
  }

  else
  {
    v3 = swift_getKeyPath();
    __chkstk_darwin(v3);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 32) == v25)
  {
    *(v0 + 32) = v25;
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 36) == v26)
  {
    *(v0 + 36) = v26;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 40) == v27)
  {
    *(v0 + 40) = v27;
  }

  else
  {
    v6 = swift_getKeyPath();
    __chkstk_darwin(v6);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 44) == v28)
  {
    *(v0 + 44) = v28;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 48) == v29)
  {
    *(v0 + 48) = v29;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 52) == v30)
  {
    *(v0 + 52) = v30;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 56) == v31)
  {
    *(v0 + 56) = v31;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 60) == v32)
  {
    *(v0 + 60) = v32;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 64) == v33)
  {
    *(v0 + 64) = v33;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 68) == v34)
  {
    *(v0 + 68) = v34;
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 72) == v35)
  {
    *(v0 + 72) = v35;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 76) == v36)
  {
    *(v0 + 76) = v36;
  }

  else
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 84) == v37)
  {
    *(v0 + 84) = v37;
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 88) == v38)
  {
    *(v0 + 88) = v38;
  }

  else
  {
    v17 = swift_getKeyPath();
    __chkstk_darwin(v17);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 92) == v39)
  {
    *(v0 + 92) = v39;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 96) == v40)
  {
    *(v0 + 96) = v40;
  }

  else
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 100) == v41)
  {
    *(v0 + 100) = v41;
  }

  else
  {
    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (v42 == *(v0 + 104))
  {
    *(v0 + 104) = v42;
  }

  else
  {
    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (v43 == *(v0 + 105))
  {
    *(v0 + 105) = v43;
  }

  else
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005F63C()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceModelParameters(uint64_t a1)
{
  result = qword_10016C688;
  if (!qword_10016C688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F72C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10005F828()
{
  result = qword_10016CC90;
  if (!qword_10016CC90)
  {
    type metadata accessor for DeviceModelParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CC90);
  }

  return result;
}

double sub_10005F880@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if ((v4 | 0x8000000000000000) == 0x800000010011C810)
  {

    v5 = 0.0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = -0.125;
    }
  }

  if (a1)
  {
    v7 = 0x800000010011C810;
  }

  else
  {
    v7 = 0x800000010011C7F0;
  }

  if (0x800000010011C810 == v7)
  {

    v8 = 0.27;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0.015;
    if (v9)
    {
      v8 = 0.27;
    }
  }

  *a2 = 1086324736;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 0x3E0E560400000000;
  *(a2 + 28) = v5;
  *(a2 + 32) = v8;
  *(a2 + 36) = xmmword_100112A20;
  *(a2 + 52) = xmmword_100112A30;
  result = -131072.094;
  *(a2 + 68) = 0xC1000000C1700000;
  *(a2 + 76) = 1070386381;
  *(a2 + 80) = 0;
  return result;
}

float sub_10005FA30()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 20) = result;
  return result;
}

float sub_10005FA6C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

float sub_10005FAA8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 28) = result;
  return result;
}

float sub_10005FAE4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

float sub_10005FB20()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 36) = result;
  return result;
}

float sub_10005FB5C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

float sub_10005FB98()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 44) = result;
  return result;
}

float sub_10005FBD4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

float sub_10005FC10()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 52) = result;
  return result;
}

float sub_10005FC4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

float sub_10005FC88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 60) = result;
  return result;
}

float sub_10005FCC4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

float sub_10005FD00()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 68) = result;
  return result;
}

float sub_10005FD3C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

float sub_10005FD78()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 76) = result;
  return result;
}

float sub_10005FDB4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 84) = result;
  return result;
}

float sub_10005FDF0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

float sub_10005FE2C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 92) = result;
  return result;
}

float sub_10005FE68()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 96) = result;
  return result;
}

float sub_10005FEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 100) = result;
  return result;
}

uint64_t sub_100060150(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Device();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100060210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Device();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DeviceModelView(uint64_t a1)
{
  result = qword_10016CCF0;
  if (!qword_10016CCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060300(uint64_t a1)
{
  sub_1000603A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DeviceProvider(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000603A4(uint64_t a1)
{
  if (!qword_10016CD00)
  {
    type metadata accessor for DeviceModelParameters(255);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_10016CD00);
    }
  }
}

__n128 sub_100060418@<Q0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = sub_100002BE4(&qword_10016CD38, &qword_100112F68) - 8;
  __chkstk_darwin(v72);
  v3 = v65 - v2;
  v4 = sub_100002BE4(&qword_10016CD40, &qword_100112F70);
  __chkstk_darwin(v4 - 8);
  v67 = v65 - v5;
  v66 = sub_100002BE4(&qword_10016CD48, &qword_100112F78);
  __chkstk_darwin(v66);
  v68 = v65 - v6;
  v69 = sub_100002BE4(&qword_10016CD50, &qword_100112F80);
  __chkstk_darwin(v69);
  v70 = v65 - v7;
  v8 = type metadata accessor for DeviceModelView(0);
  v9 = v8[5];
  v10 = type metadata accessor for Device();
  (*(*(v10 - 8) + 16))(v3, &v1[v9], v10);
  v11 = *&v1[v8[6]];
  v12 = *&v1[v8[7]];
  v14 = *(v1 + 1);
  v15 = *(v1 + 2);
  *&v74 = *v1;
  v13 = v74;
  *(&v74 + 1) = v14;
  *&v75 = v15;

  v16 = sub_100002BE4(&qword_10016CD58, &qword_100112F88);
  Binding.wrappedValue.getter();
  v17 = v73;
  v18 = type metadata accessor for AsyncARViewWrapper(0);
  *&v3[v18[5]] = v11;
  *&v3[v18[6]] = v12;
  *&v3[v18[7]] = v17;
  v19 = v18[8];
  v73 = 0;
  State.init(wrappedValue:)();
  *&v3[v19] = v74;
  v20 = &v3[v18[9]];
  v73 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v21 = *(&v74 + 1);
  *v20 = v74;
  *(v20 + 1) = v21;
  *&v74 = v13;
  *(&v74 + 1) = v14;
  *&v75 = v15;
  Binding.wrappedValue.getter();
  v22 = v73;
  swift_getKeyPath();
  *&v74 = v22;
  v23 = sub_10006110C(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v11) = *(v22 + 100);

  v24 = &v3[*(v72 + 44)];
  *v24 = *&v11;
  *(v24 + 4) = 0;
  v25 = v13;
  *&v74 = v13;
  *(&v74 + 1) = v14;
  v26 = v14;
  v27 = v15;
  *&v75 = v15;
  v28 = v16;
  Binding.wrappedValue.getter();
  v29 = v73;
  swift_getKeyPath();
  *&v74 = v29;
  v72 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v20) = *(v29 + 104);

  if (v20 == 1)
  {
    v30 = static Color.red.getter();
  }

  else
  {
    v30 = static Color.clear.getter();
  }

  v31 = v30;
  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v15;
  v65[1] = v28;
  Binding.wrappedValue.getter();
  v32 = v73;
  swift_getKeyPath();
  *&v74 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = v67;
  sub_100060C40(v31, v67);

  sub_100009908(v3, &qword_10016CD38, &qword_100112F68);
  LOBYTE(v31) = static Edge.Set.top.getter();
  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v27;
  Binding.wrappedValue.getter();
  v34 = v73;
  swift_getKeyPath();
  *&v74 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v33;
  v44 = v68;
  sub_10001D504(v43, v68, &qword_10016CD40, &qword_100112F70);
  v45 = v44 + *(v66 + 36);
  *v45 = v31;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  LOBYTE(v31) = static Edge.Set.bottom.getter();
  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v27;
  Binding.wrappedValue.getter();
  v46 = v73;
  swift_getKeyPath();
  *&v74 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v70;
  sub_10001D504(v44, v70, &qword_10016CD48, &qword_100112F78);
  v56 = v55 + *(v69 + 36);
  *v56 = v31;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v27;
  Binding.wrappedValue.getter();
  v57 = v73;
  swift_getKeyPath();
  *&v74 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v48) = *(v57 + 88);

  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v27;
  Binding.wrappedValue.getter();
  v58 = v73;
  swift_getKeyPath();
  *&v74 = v58;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v50) = *(v58 + 84);

  static Alignment.center.getter();
  if (*&v48 > *&v50)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v71;
  sub_10001D504(v55, v71, &qword_10016CD50, &qword_100112F80);
  v61 = v60 + *(sub_100002BE4(&qword_10016CD60, &qword_100113080) + 36);
  v62 = v79;
  *(v61 + 64) = v78;
  *(v61 + 80) = v62;
  *(v61 + 96) = v80;
  v63 = v75;
  *v61 = v74;
  *(v61 + 16) = v63;
  result = v77;
  *(v61 + 32) = v76;
  *(v61 + 48) = result;
  return result;
}

uint64_t sub_100060C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = v30;
  v8 = v30 * 0.5;
  v9 = v31;
  v10 = DWORD1(v31);
  v11 = *(&v31 + 1);
  v12 = v32;

  v13 = static Alignment.center.getter();
  v15 = v14;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  sub_10000C178(v4, a2, &qword_10016CD38, &qword_100112F68);
  v16 = (a2 + *(sub_100002BE4(&qword_10016CD40, &qword_100112F70) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v13;
  v42 = v15;
  sub_10000C178(v33, v20, &qword_10016CD68, &qword_100113088);
  sub_10000C178(&v35, v20, &qword_10016CD70, &unk_100113090);
  sub_100009908(v40, &qword_10016CD70, &unk_100113090);
  *v20 = v8;
  *&v20[1] = v7;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a1;
  v26 = 256;
  return sub_100009908(v20, &qword_10016CD68, &qword_100113088);
}

unint64_t sub_100060E58()
{
  result = qword_10016CD78;
  if (!qword_10016CD78)
  {
    sub_10000459C(&qword_10016CD60, &qword_100113080);
    sub_100060F40(&qword_10016CD80, &qword_10016CD50, &qword_100112F80, sub_100060F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD78);
  }

  return result;
}

uint64_t sub_100060F40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100060FC4()
{
  result = qword_10016CD90;
  if (!qword_10016CD90)
  {
    sub_10000459C(&qword_10016CD40, &qword_100112F70);
    sub_100061050();
    sub_100061154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD90);
  }

  return result;
}

unint64_t sub_100061050()
{
  result = qword_10016CD98;
  if (!qword_10016CD98)
  {
    sub_10000459C(&qword_10016CD38, &qword_100112F68);
    sub_10006110C(&qword_10016CDA0, type metadata accessor for AsyncARViewWrapper, &unk_100114514);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD98);
  }

  return result;
}

uint64_t sub_10006110C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100061154()
{
  result = qword_10016CDA8;
  if (!qword_10016CDA8)
  {
    sub_10000459C(&qword_10016CD70, &unk_100113090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDA8);
  }

  return result;
}

unint64_t sub_1000611CC()
{
  result = qword_10016CDB0;
  if (!qword_10016CDB0)
  {
    sub_10000459C(&qword_10016CDB8, qword_1001130B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDB0);
  }

  return result;
}

uint64_t sub_100061230(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "RealityDevice14,1";
  }

  else
  {
    v2 = "SpatialGalleryItemUnfavorited";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000612D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10006134C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000613B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100061424(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100159AA0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100061484(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "RealityDevice14,1";
  }

  else
  {
    v2 = "SpatialGalleryItemUnfavorited";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_1000614D0()
{
  result = qword_10016CDC0;
  if (!qword_10016CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDC0);
  }

  return result;
}

uint64_t sub_100061524()
{
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000615A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

double sub_100061638(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037614();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100061768()
{
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000617E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10006187C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

double sub_1000618C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037614();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000619F4()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp12PINViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PINViewModel(uint64_t a1)
{
  result = qword_10016CDF8;
  if (!qword_10016CDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061AF4(uint64_t a1)
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

void sub_100061BAC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_100061C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_100061C50()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100061C90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v5 = 0x64657269707865;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6465747065636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x64656E696C636564;
  if (*a2 != 1)
  {
    v8 = 0x64657269707865;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465747065636361;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100061D90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100061E34(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100061EC4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100061F64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100063A04(*a1);
  *a2 = result;
  return result;
}

void sub_100061F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v5 = 0x64657269707865;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465747065636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100061FF4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) = 0;
  v3 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) = 0;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, a1, v9);
  v11 = [objc_opt_self() defaultCenter];
  v12 = qword_100168F58;

  if (v12 != -1)
  {
    swift_once();
  }

  [v11 addObserver:v1 selector:"handleDialogResponseWithNotification:" name:qword_1001821B0 object:0];

  (*(v10 + 8))(a1, v9);
  return v1;
}

uint64_t sub_1000621BC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_1000631F8();
  v2 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_100014104(*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback), *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AcceptDialogController(uint64_t a1)
{
  result = qword_10016CF68;
  if (!qword_10016CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006231C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) != 1)
  {
    return;
  }

  v7 = v3;
  v8 = v0;
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v47 = 0xD000000000000012;
  v48 = 0x800000010011E440;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16))
  {
    v11 = sub_100068958(v49);
    if (v12)
    {
      sub_1000076F0(*(v10 + 56) + 32 * v11, v50);
      sub_100064580(v49);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:

        goto LABEL_14;
      }

      v14 = v47;
      v13 = v48;
      v47 = 0xD000000000000016;
      v48 = 0x800000010011E3E0;
      AnyHashable.init<A>(_:)();
      if (*(v10 + 16))
      {
        v15 = sub_100068958(v49);
        if (v16)
        {
          sub_1000076F0(*(v10 + 56) + 32 * v15, v50);
          sub_100064580(v49);

          if (swift_dynamicCast())
          {
            if (*(v8 + v6) == 1)
            {
              v45 = v48;
              v46 = v47;
              (*(v2 + 16))(v5, v8 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v7);
              v17 = UUID.uuidString.getter();
              v19 = v18;
              (*(v2 + 8))(v5, v7);
              if (v46 == v17 && v45 == v19)
              {

LABEL_26:
                if (v14 == 0xD00000000000002FLL && 0x800000010011E460 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v29 = 0;
                }

                else if (v14 == 0xD00000000000002FLL && 0x800000010011E490 == v13)
                {

                  v29 = 1;
                }

                else
                {
                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v43)
                  {
                    v29 = 1;
                  }

                  else
                  {
                    v29 = 2;
                  }
                }

                if (qword_100168E20 != -1)
                {
                  swift_once();
                }

                v30 = type metadata accessor for Logger();
                sub_100006B0C(v30, qword_100181F88);
                v31 = Logger.logObject.getter();
                v32 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v31, v32))
                {
                  v33 = swift_slowAlloc();
                  v49[0] = swift_slowAlloc();
                  *v33 = 136315394;
                  v34 = _typeName(_:qualified:)();
                  v36 = sub_100006B44(v34, v35, v49);

                  *(v33 + 4) = v36;
                  *(v33 + 12) = 2080;
                  v37 = v8;
                  if (v29)
                  {
                    if (v29 == 1)
                    {
                      v38 = 0xE800000000000000;
                      v39 = 0x64656E696C636564;
                    }

                    else
                    {
                      v38 = 0xE700000000000000;
                      v39 = 0x64657269707865;
                    }
                  }

                  else
                  {
                    v38 = 0xE800000000000000;
                    v39 = 0x6465747065636361;
                  }

                  v40 = sub_100006B44(v39, v38, v49);

                  *(v33 + 14) = v40;
                  _os_log_impl(&_mh_execute_header, v31, v32, "%s Received notification respose with result %s.", v33, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  v37 = v8;
                }

                v41 = *(v37 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
                if (v41)
                {
                  v42 = *(v37 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

                  v41(v29);
                  sub_100014104(v41, v42);
                }

                sub_1000631F8();
                return;
              }

              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v28)
              {
                goto LABEL_26;
              }
            }

            else
            {
            }

            return;
          }

          goto LABEL_20;
        }
      }
    }
  }

  sub_100064580(v49);
LABEL_14:
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006B0C(v20, qword_100181F88);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49[0] = v24;
    *v23 = 136315138;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100006B44(v25, v26, v49);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s The received AcceptDialogResponseNotification does not include the expected response user info keys.", v23, 0xCu);
    sub_1000052E4(v24);
  }
}

uint64_t sub_100062AEC(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

void sub_100062BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v11;
    v40 = v10;
    swift_errorRetain();
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006B0C(v14, qword_100181F88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = v6;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = v5;
      v20 = v19;
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v18 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100006B44(v21, v22, aBlock);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v20 = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s Failed adding accept dialog notification to center: %@.", v18, 0x16u);
      sub_100009908(v20, &unk_100169C20, &unk_10010D6B0);
      v5 = v38;

      sub_1000052E4(v36);

      v6 = v37;
    }

    sub_100064428();
    v25 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100064474;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015CAA8;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10006447C();
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v6 + 8))(v8, v5);
    (*(v39 + 8))(v13, v40);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006B0C(v27, qword_100181F88);
    v40 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = _typeName(_:qualified:)();
      v33 = sub_100006B44(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v40, v28, "%s Successfuly added accept dialog notification to center.", v29, 0xCu);
      sub_1000052E4(v30);
    }

    else
    {
      v34 = v40;
    }
  }
}

void sub_100063124(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

    v1(1);
    sub_100014104(v1, v2);
  }

  sub_1000631F8();
}

void sub_10006318C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000631F8()
{
  *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v2 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v3 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_100014104(v2, v3);
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer;
  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 removePendingNotificationRequestsWithIdentifiers:isa];

  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v6 removeDeliveredNotificationsWithIdentifiers:v8];
}

void sub_1000632E8()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer;
  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_100064578;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000634B8;
  v9[3] = &unk_10015CB48;
  v4 = _Block_copy(v9);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:240.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

uint64_t sub_100063460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100063520();
  }

  return result;
}

void sub_1000634B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100063520()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100064428();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_100064538;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015CAF8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006447C();
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1000637E4()
{
  result = qword_10016D0A8;
  if (!qword_10016D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0A8);
  }

  return result;
}

void sub_100063838(uint64_t a1, uint64_t a2)
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181F88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Invalidatig dialog as timer expired.", v6, 0xCu);
    sub_1000052E4(v7);
  }

  v11 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  if (v11)
  {
    v12 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

    v11(2);
    sub_100014104(v11, v12);
  }

  sub_1000631F8();
}

NSString sub_1000639CC()
{
  result = String._bridgeToObjectiveC()();
  qword_1001821B0 = result;
  return result;
}

unint64_t sub_100063A04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159B18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100063A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a4;
  v46 = a3;
  v42 = a2;
  v41 = a1;
  v48 = *v4;
  v45 = type metadata accessor for UUID();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v55._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x800000010011E3A0;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v55);

  v13 = String._bridgeToObjectiveC()();

  [v7 setTitle:v13];

  v14 = [v8 mainBundle];
  v56._object = 0xE000000000000000;
  v15._object = 0x800000010011E3C0;
  v15._countAndFlagsBits = 0xD000000000000014;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v56);

  sub_100002BE4(&unk_100171530, &unk_10011A560);
  v18 = swift_allocObject();
  v40 = xmmword_10010D3B0;
  *(v18 + 16) = xmmword_10010D3B0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10006437C();
  v19 = v42;
  *(v18 + 32) = v41;
  *(v18 + 40) = v19;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v7 setBody:v20];

  [v7 setInterruptionLevel:2];
  [v7 setRelevanceScore:1.0];
  sub_100002BE4(&qword_10016D0B8, &unk_100113360);
  inited = swift_initStackObject();
  *(inited + 16) = v40;
  aBlock = 0xD000000000000016;
  v50 = 0x800000010011E3E0;
  AnyHashable.init<A>(_:)();
  v22 = v44;
  v23 = v43;
  v24 = v45;
  (*(v44 + 16))(v43, v4 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v45);
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v22 + 8))(v23, v24);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v25;
  *(inited + 80) = v27;
  sub_10000BA38(inited);
  swift_setDeallocating();
  sub_100009908(inited + 32, &unk_1001714D0, &qword_10010D1E8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserInfo:isa];

  v29 = v7;
  v30 = String._bridgeToObjectiveC()();
  v31 = [objc_opt_self() requestWithIdentifier:v30 content:v29 trigger:0];

  v32 = (v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v33 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v34 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);
  v35 = v47;
  *v32 = v46;
  v32[1] = v35;

  sub_100014104(v33, v34);
  v36 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter);
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 16) = v5;
  *(v37 + 24) = v38;
  v53 = sub_100064408;
  v54 = v37;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10006318C;
  v52 = &unk_10015CA80;
  v39 = _Block_copy(&aBlock);

  [v36 addNotificationRequest:v31 withCompletionHandler:v39];
  _Block_release(v39);
  sub_1000632E8();
}

void sub_100064034(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog;
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog))
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Already showing accept dialog, avoid raising another one", v11, 0xCu);
      sub_1000052E4(v12);
    }

    a3(2);
  }

  else
  {
    v25 = v4;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006B0C(v18, qword_100181F88);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100006B44(v22, v23, &v26);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_100006B44(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Raising accept dialog for client %s.", v21, 0x16u);
      swift_arrayDestroy();
    }

    *(v25 + v7) = 1;

    sub_100063A50(a1, a2, a3, a4);
  }
}

unint64_t sub_10006437C()
{
  result = qword_10016D0B0;
  if (!qword_10016D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0B0);
  }

  return result;
}

uint64_t sub_1000643D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100064428()
{
  result = qword_10016D0C0;
  if (!qword_10016D0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016D0C0);
  }

  return result;
}

unint64_t sub_10006447C()
{
  result = qword_10016F260;
  if (!qword_10016F260)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F260);
  }

  return result;
}

unint64_t sub_1000644D4()
{
  result = qword_10016F270;
  if (!qword_10016F270)
  {
    sub_10000459C(&qword_10016D0C8, &unk_100113370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F270);
  }

  return result;
}

uint64_t sub_100064540()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006461C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5F4E495F57454956;
  v1._object = 0xEE0048544C414548;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016D0D0 = v4;
}

double sub_1000646DC@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static HorizontalAlignment.leading.getter();
  v44 = 1;
  sub_10006499C(a1, a2, &v27);
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v61[12] = v39;
  v61[13] = v40;
  v61[14] = v41;
  v61[8] = v35;
  v61[9] = v36;
  v61[10] = v37;
  v61[11] = v38;
  v61[4] = v31;
  v61[5] = v32;
  v61[6] = v33;
  v61[7] = v34;
  v61[0] = v27;
  v61[1] = v28;
  v60 = v42;
  v62 = v42;
  v61[2] = v29;
  v61[3] = v30;
  sub_10000C178(&v45, v26, &qword_10016D110, &qword_100113438);
  sub_100009908(v61, &qword_10016D110, &qword_100113438);
  *(&v43[12] + 7) = v57;
  *(&v43[13] + 7) = v58;
  *(&v43[14] + 7) = v59;
  *(&v43[8] + 7) = v53;
  *(&v43[9] + 7) = v54;
  *(&v43[10] + 7) = v55;
  *(&v43[11] + 7) = v56;
  *(&v43[4] + 7) = v49;
  *(&v43[5] + 7) = v50;
  *(&v43[6] + 7) = v51;
  *(&v43[7] + 7) = v52;
  *(v43 + 7) = v45;
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[15] + 7) = v60;
  *(&v43[3] + 7) = v48;
  v7 = v44;
  LOBYTE(a2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v27) = 0;
  v16 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v18 = v43[13];
  *(a3 + 209) = v43[12];
  *(a3 + 225) = v18;
  *(a3 + 241) = v43[14];
  *(a3 + 256) = *(&v43[14] + 15);
  v19 = v43[9];
  *(a3 + 145) = v43[8];
  *(a3 + 161) = v19;
  v20 = v43[11];
  *(a3 + 177) = v43[10];
  *(a3 + 193) = v20;
  v21 = v43[5];
  *(a3 + 81) = v43[4];
  *(a3 + 97) = v21;
  v22 = v43[7];
  *(a3 + 113) = v43[6];
  *(a3 + 129) = v22;
  v23 = v43[1];
  *(a3 + 17) = v43[0];
  *(a3 + 33) = v23;
  result = *&v43[2];
  v25 = v43[3];
  *(a3 + 49) = v43[2];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 65) = v25;
  *(a3 + 272) = a2;
  *(a3 + 280) = v9;
  *(a3 + 288) = v11;
  *(a3 + 296) = v13;
  *(a3 + 304) = v15;
  *(a3 + 312) = 0;
  *(a3 + 320) = KeyPath;
  *(a3 + 328) = v16;
  return result;
}

uint64_t sub_10006499C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = a2;
  v39 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v78 = 0;
  *&v52 = sub_100068F50(a1);
  *(&v52 + 1) = v14;
  sub_100012928();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(a2) = v18;
  static Font.Weight.semibold.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  v35 = v22;
  v37 = v23;
  sub_10001297C(v15, v17, a2 & 1);

  if (qword_100168F60 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_10016D0D0 + 1);
  v36 = xmmword_10016D0D0;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v38;
  *v48 = v38;
  *&v48[56] = v44;
  *&v48[72] = v45;
  *&v48[88] = v46;
  *&v48[104] = v47;
  *&v48[8] = v41;
  *&v48[24] = v42;
  *&v48[40] = v43;
  v48[120] = v39;
  *&v48[124] = *&v40[3];
  *&v48[121] = *v40;
  *&v49 = v7;
  *(&v49 + 1) = v9;
  *&v50 = v11;
  *(&v50 + 1) = v13;
  v51 = 0;
  LOBYTE(v62) = 0;
  v60 = v49;
  v61 = v50;
  v52 = *v48;
  v53 = *&v48[16];
  v58 = *&v48[96];
  v59 = *&v48[112];
  v56 = *&v48[64];
  v57 = *&v48[80];
  v54 = *&v48[32];
  v55 = *&v48[48];
  v26 = v50;
  *(a3 + 128) = v49;
  *(a3 + 144) = v26;
  v27 = v62;
  v28 = v57;
  *(a3 + 64) = v56;
  *(a3 + 80) = v28;
  v29 = v59;
  *(a3 + 96) = v58;
  *(a3 + 112) = v29;
  v30 = v53;
  *a3 = v52;
  *(a3 + 16) = v30;
  v31 = v55;
  *(a3 + 32) = v54;
  *(a3 + 48) = v31;
  *(a3 + 160) = v27;
  *(a3 + 168) = v19;
  *(a3 + 176) = v21;
  *(a3 + 184) = v35 & 1;
  *(a3 + 192) = v37;
  *(a3 + 200) = v36;
  *(a3 + 208) = v24;
  *(a3 + 216) = 0xD000000000000019;
  *(a3 + 224) = 0x800000010011D5F0;
  *(a3 + 232) = sub_1000650E0;
  *(a3 + 240) = v25;
  v32 = v38;

  v33 = a1;
  sub_10000C178(v48, &v63, &qword_10016D118, &unk_100113470);
  sub_100003AE4(v19, v21, v35 & 1);

  sub_10001297C(v19, v21, v35 & 1);

  v67 = v44;
  v68 = v45;
  v69 = v46;
  v70 = v47;
  v64 = v41;
  v65 = v42;
  v63 = v32;
  v66 = v43;
  v71 = v39;
  *&v72[3] = *&v40[3];
  *v72 = *v40;
  v73 = v7;
  v74 = v9;
  v75 = v11;
  v76 = v13;
  v77 = 0;
  return sub_100009908(&v63, &qword_10016D118, &unk_100113470);
}

uint64_t sub_100064D7C(void *a1)
{
  v2 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  (*(*(v6 - 8) + 56))(v4, 0, 7, v6);
  sub_100081630();
  return sub_1000650FC(v4);
}

uint64_t sub_100064E68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  sub_100002BE4(&qword_10016D0E0, &qword_100113418);
  sub_100064F68();
  return Button.init(action:label:)();
}

uint64_t sub_100064F20()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100064F68()
{
  result = qword_10016D0E8;
  if (!qword_10016D0E8)
  {
    sub_10000459C(&qword_10016D0E0, &qword_100113418);
    sub_100065020();
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0E8);
  }

  return result;
}

unint64_t sub_100065020()
{
  result = qword_10016D0F0;
  if (!qword_10016D0F0)
  {
    sub_10000459C(&qword_10016D0F8, &qword_100113420);
    sub_100012C48(&qword_10016D100, &qword_10016D108, &unk_100113428, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0F0);
  }

  return result;
}

uint64_t sub_1000650FC(uint64_t a1)
{
  v2 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000651D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016D130, &qword_1001134E0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v10 = 0.96;
  }

  else
  {
    v10 = 1.0;
  }

  static UnitPoint.center.getter();
  v12 = v11;
  v14 = v13;
  (*(v3 + 32))(v9, v5, v2);
  v15 = &v9[*(v7 + 44)];
  *v15 = v10;
  *(v15 + 1) = v10;
  *(v15 + 2) = v12;
  *(v15 + 3) = v14;
  v16 = static Animation.easeInOut.getter();
  v17 = ButtonStyleConfiguration.isPressed.getter();
  sub_100065384(v9, a1);
  result = sub_100002BE4(&qword_10016D138, &qword_1001134E8);
  v19 = a1 + *(result + 36);
  *v19 = v16;
  *(v19 + 8) = v17 & 1;
  return result;
}

uint64_t sub_100065384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D130, &qword_1001134E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000653F8()
{
  result = qword_10016D140;
  if (!qword_10016D140)
  {
    sub_10000459C(&qword_10016D138, &qword_1001134E8);
    sub_100065484();
    sub_100065568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D140);
  }

  return result;
}

unint64_t sub_100065484()
{
  result = qword_10016D148;
  if (!qword_10016D148)
  {
    sub_10000459C(&qword_10016D130, &qword_1001134E0);
    sub_100065510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D148);
  }

  return result;
}

unint64_t sub_100065510()
{
  result = qword_10016D150;
  if (!qword_10016D150)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D150);
  }

  return result;
}

unint64_t sub_100065568()
{
  result = qword_10016D158;
  if (!qword_10016D158)
  {
    sub_10000459C(&qword_10016D160, &unk_1001134F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D158);
  }

  return result;
}

void *sub_1000655CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  if ([a1 numberOfPages] != a6)
  {
    [a1 setNumberOfPages:a6];
  }

  v8 = [a1 currentPage];
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  result = Binding.wrappedValue.getter();
  if (v8 != v10)
  {
    Binding.wrappedValue.getter();
    return [a1 setCurrentPage:v10];
  }

  return result;
}

uint64_t sub_10006583C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10006590C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PrescriptionCarouselView(uint64_t a1)
{
  result = qword_10016D200;
  if (!qword_10016D200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100065A08(uint64_t a1)
{
  sub_100065B50(319, &qword_10016D210, &type metadata for Prescription, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100065AEC(319);
    if (v2 <= 0x3F)
    {
      sub_100065B50(319, &unk_10016D220, &type metadata for Int, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100065AEC(uint64_t a1)
{
  if (!qword_10016D218)
  {
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10016D218);
    }
  }
}

void sub_100065B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_100065BBC()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  [v0 setHidesForSinglePage:1];
  sub_100002BE4(&qword_10016D378, &unk_1001137A0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v2 action:"changed:" forControlEvents:4096];

  return v0;
}

void *sub_100065C64@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v12 = *v1;
  v13 = v3;
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  Binding.projectedValue.getter();
  v4 = v11;
  v5 = type metadata accessor for CarouselPageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17AppleVisionProApp19CarouselPageControl11Coordinator_currentPage];
  *v7 = v10;
  *(v7 + 2) = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100065D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068724();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100065D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068724();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100065DD4(uint64_t a1)
{
  sub_100068724();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100065DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrescriptionCarouselView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v17 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  __chkstk_darwin(v17);
  v7 = &v16 - v6;
  v16 = sub_100002BE4(&qword_10016D258, &qword_1001135E8);
  __chkstk_darwin(v16);
  v9 = &v16 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100002BE4(&qword_10016D260, &qword_1001135F0);
  sub_100066104(v1, &v9[*(v10 + 44)]);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  State.wrappedValue.getter();
  sub_100067C44(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100067CAC(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_100012C48(&qword_10016D268, &qword_10016D258, &qword_1001135E8, &protocol conformance descriptor for VStack<A>);
  sub_100067D90();
  View.onChange<A>(of:initial:_:)();

  sub_100009908(v7, &unk_10016F2E0, qword_100113590);
  sub_100009908(v9, &qword_10016D258, &qword_1001135E8);
  sub_100067C44(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_100067CAC(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  result = sub_100002BE4(&qword_10016D280, &qword_1001135F8);
  v15 = (a1 + *(result + 36));
  *v15 = sub_100067FAC;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

uint64_t sub_100066104@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v93 = type metadata accessor for PrescriptionCarouselView(0);
  v77 = *(v93 - 8);
  __chkstk_darwin(v93);
  v78 = v3;
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002BE4(&qword_10016D290, &qword_100113608);
  __chkstk_darwin(v4 - 8);
  v94 = &v76 - v5;
  v6 = type metadata accessor for ScrollIndicatorVisibility();
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PagingScrollTargetBehavior();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  __chkstk_darwin(v8);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002BE4(&qword_10016D298, &qword_100113610);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v80 = sub_100002BE4(&qword_10016D2A0, &qword_100113618);
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v15 = &v76 - v14;
  v16 = sub_100002BE4(&qword_10016D2A8, &qword_100113620);
  v86 = *(v16 - 8);
  v87 = v16;
  __chkstk_darwin(v16);
  v100 = &v76 - v17;
  v18 = sub_100002BE4(&qword_10016D2B0, &qword_100113628);
  v89 = *(v18 - 8);
  v90 = v18;
  __chkstk_darwin(v18);
  v88 = &v76 - v19;
  v20 = sub_100002BE4(&qword_10016D2B8, &qword_100113630);
  v97 = *(v20 - 8);
  v98 = v20;
  v21 = __chkstk_darwin(v20);
  v96 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v101 = &v76 - v23;
  static Axis.Set.horizontal.getter();
  v95 = a1;
  v102 = a1;
  sub_100002BE4(&qword_10016D2C0, &qword_100113638);
  sub_100012C48(&qword_10016D2C8, &qword_10016D2C0, &qword_100113638, &protocol conformance descriptor for LazyHStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v25 = Color.init(_:)();
  v26 = &v13[*(v11 + 36)];
  v27 = sub_100002BE4(&qword_10016D2D0, &qword_100113640);
  v28 = (v26 + *(v27 + 52));
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28->i8[v29], v30, v31);
  *v28 = vdupq_n_s64(0x4040000000000000uLL);
  v32 = v82;
  *v26 = v25;
  *(v26 + *(v27 + 56)) = 256;
  v33 = v80;
  v34 = sub_100068034();
  View.scrollTargetLayout(isEnabled:)();
  sub_100009908(v13, &qword_10016D298, &qword_100113610);
  v35 = v81;
  PagingScrollTargetBehavior.init()();
  *&v135 = v11;
  *(&v135 + 1) = v34;
  v36 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.scrollTargetBehavior<A>(_:)();
  (*(v85 + 8))(v35, v36);
  (*(v83 + 8))(v15, v33);
  static ScrollIndicatorVisibility.never.getter();
  sub_100002BE4(&qword_10016D2F8, &qword_100113650);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10010FEE0;
  LOBYTE(v30) = static Axis.Set.vertical.getter();
  *(v38 + 32) = v30;
  v39 = static Axis.Set.horizontal.getter();
  *(v38 + 33) = v39;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v39)
  {
    Axis.Set.init(rawValue:)();
  }

  v40 = v95;
  *&v135 = v33;
  *(&v135 + 1) = v36;
  *&v136 = OpaqueTypeConformance2;
  *(&v136 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v87;
  v43 = v88;
  v44 = v100;
  View.scrollIndicators(_:axes:)();
  (*(v91 + 8))(v32, v92);
  (*(v86 + 8))(v44, v42);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  v45 = v94;
  State.projectedValue.getter();
  type metadata accessor for UUID();
  *&v135 = v42;
  *(&v135 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  sub_1000683B8(&qword_10016D300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v46 = v90;
  View.scrollPosition<A>(id:anchor:)();
  sub_100009908(v45, &qword_10016D290, &qword_100113608);
  (*(v89 + 8))(v43, v46);
  v47 = *v40;
  if (*(*v40 + 16) < 2uLL)
  {
    sub_100068118(&v135);
  }

  else
  {
    v48 = v79;
    sub_100067C44(v40, v79);
    type metadata accessor for MainActor();
    v49 = static MainActor.shared.getter();
    v50 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = &protocol witness table for MainActor;
    sub_100067CAC(v48, v51 + v50);
    sub_100067C44(v40, v48);
    v52 = static MainActor.shared.getter();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = &protocol witness table for MainActor;
    sub_100067CAC(v48, v53 + v50);
    Binding.init(get:set:)();
    v54 = v135;
    v55 = v136;
    v56 = *(v47 + 16);
    static Alignment.bottom.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v112 = v54;
    *&v113 = v55;
    *(&v113 + 1) = v56;
    v118 = v109;
    v119 = v110;
    v120 = v111;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v117 = v108;
    *&v103[23] = v113;
    *&v103[87] = v108;
    *&v103[71] = v107;
    *&v103[55] = v106;
    *&v103[39] = v105;
    *&v103[135] = v111;
    *&v103[119] = v110;
    *&v103[103] = v109;
    *&v103[7] = v54;
    v129 = v109;
    v130 = v110;
    v131 = v111;
    v125 = v105;
    v126 = v106;
    v104 = 1;
    LOBYTE(v121) = 1;
    v103[151] = 1;
    v123 = v54;
    *&v124 = v55;
    *(&v124 + 1) = v56;
    v127 = v107;
    v128 = v108;
    LOBYTE(v132) = 1;
    sub_10000C178(&v112, &v135, &qword_10016D318, &qword_100113668);
    sub_100009908(&v123, &qword_10016D318, &qword_100113668);
    *&v134[105] = *&v103[96];
    *&v134[121] = *&v103[112];
    *&v134[137] = *&v103[128];
    *&v134[41] = *&v103[32];
    *&v134[57] = *&v103[48];
    *&v134[73] = *&v103[64];
    *&v134[89] = *&v103[80];
    *&v134[9] = *v103;
    *v134 = 0;
    v134[8] = 1;
    *&v134[153] = *&v103[144];
    *&v134[25] = *&v103[16];
    FeatureEligibilityState.rawValue.getter();
    v143 = *&v134[128];
    v144 = *&v134[144];
    v145 = v134[160];
    v139 = *&v134[64];
    v140 = *&v134[80];
    v142 = *&v134[112];
    v141 = *&v134[96];
    v135 = *v134;
    v136 = *&v134[16];
    v138 = *&v134[48];
    v137 = *&v134[32];
  }

  v58 = v96;
  v57 = v97;
  v59 = *(v97 + 16);
  v60 = v101;
  v61 = v98;
  v59(v96, v101, v98);
  v120 = v143;
  v121 = v144;
  v122 = v145;
  v116 = v139;
  v117 = v140;
  v118 = v141;
  v119 = v142;
  v112 = v135;
  v113 = v136;
  v114 = v137;
  v115 = v138;
  v62 = v99;
  v59(v99, v58, v61);
  v63 = *(sub_100002BE4(&qword_10016D308, &qword_100113658) + 48);
  v64 = v121;
  v131 = v120;
  v132 = v121;
  v65 = v116;
  v66 = v117;
  v127 = v116;
  v128 = v117;
  v68 = v118;
  v67 = v119;
  v129 = v118;
  v130 = v119;
  v69 = v112;
  v70 = v113;
  v123 = v112;
  v124 = v113;
  v72 = v114;
  v71 = v115;
  v125 = v114;
  v126 = v115;
  v73 = &v62[v63];
  *(v73 + 8) = v120;
  *(v73 + 9) = v64;
  *(v73 + 4) = v65;
  *(v73 + 5) = v66;
  *(v73 + 6) = v68;
  *(v73 + 7) = v67;
  *v73 = v69;
  *(v73 + 1) = v70;
  v133 = v122;
  v73[160] = v122;
  *(v73 + 2) = v72;
  *(v73 + 3) = v71;
  sub_10000C178(&v123, v134, &qword_10016D310, &qword_100113660);
  v74 = *(v57 + 8);
  v74(v60, v61);
  *&v134[128] = v120;
  *&v134[144] = v121;
  v134[160] = v122;
  *&v134[64] = v116;
  *&v134[80] = v117;
  *&v134[96] = v118;
  *&v134[112] = v119;
  *v134 = v112;
  *&v134[16] = v113;
  *&v134[32] = v114;
  *&v134[48] = v115;
  sub_100009908(v134, &qword_10016D310, &qword_100113660);
  return (v74)(v58, v61);
}