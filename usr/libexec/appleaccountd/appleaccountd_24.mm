_OWORD *sub_1002CF328(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10031B060(a2);
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
      sub_1002D0330();
      goto LABEL_7;
    }

    sub_1002CCBA4(v13, a3 & 1);
    v19 = sub_10031B060(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000D1064(a2, v21);
      return sub_1002CFCD8(v10, v21, a1, v16);
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
  sub_10000839C(v17);

  return sub_100070AF0(a1, v17);
}

unint64_t sub_1002CF488(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003084DC(a2, a3);
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
      sub_1002CCE5C(v16, a4 & 1);
      result = sub_1003084DC(a2, a3);
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
      sub_1002D04E8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
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

unint64_t sub_1002CF5EC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003084DC(a2, a3);
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
      sub_1002CD0FC(v16, a4 & 1);
      result = sub_1003084DC(a2, a3);
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
      sub_1002D0650();
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

unint64_t sub_1002CF758(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10031B728();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1002CD39C(v13, a3 & 1);
      result = sub_10031B728();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for AAFollowUpUserInfo(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1002D07B8();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

_OWORD *sub_1002CF8B4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003084DC(a2, a3);
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
      sub_1002D0914();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1002CD658(v16, a4 & 1);
    v11 = sub_1003084DC(a2, a3);
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
    sub_10000839C(v22);

    return sub_100070AF0(a1, v22);
  }

  else
  {
    sub_1002CFD54(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1002CFA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1003084DC(a3, a4);
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
      sub_1002CDFC4(v18, a5 & 1);
      v13 = sub_1003084DC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1002D0ED0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_100012324(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

unint64_t sub_1002CFBA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1002CFBE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  result = sub_1002D1840(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for CustodianRecoveryInfoRecord);
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

_OWORD *sub_1002CFCD8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100070AF0(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1002CFD54(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100070AF0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1002CFDC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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

void *sub_1002CFE94()
{
  v1 = v0;
  sub_100005814(&unk_1003E7770, &unk_100349910);
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

        result = swift_errorRetain();
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

char *sub_1002D0004()
{
  v1 = v0;
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E77D0, qword_100349980);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
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
        sub_1002D17D8(*(v5 + 56) + v26, v35, type metadata accessor for CustodianRecoveryInfoRecord);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1002D1840(v25, *(v27 + 56) + v26, type metadata accessor for CustodianRecoveryInfoRecord);
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

  return result;
}

void *sub_1002D0330()
{
  v1 = v0;
  sub_100005814(&qword_1003E8C20, &qword_10034A850);
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
        v18 = 40 * v17;
        sub_1000D1064(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DB1C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100070AF0(v22, (*(v4 + 56) + v17));
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

void *sub_1002D04E8()
{
  v1 = v0;
  sub_100005814(&qword_1003E8C70, &qword_10034A8B0);
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

void *sub_1002D0650()
{
  v1 = v0;
  sub_100005814(&unk_1003DBB70, &unk_100349970);
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

id sub_1002D07B8()
{
  v1 = v0;
  sub_100005814(&qword_1003E7758, &unk_100349900);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

void *sub_1002D0914()
{
  v1 = v0;
  sub_100005814(&qword_1003E3460, qword_1003469E0);
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
        sub_10000DB1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100070AF0(v25, (*(v4 + 56) + v22));
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

void *sub_1002D0AB8()
{
  v1 = v0;
  sub_100005814(&qword_1003E7790, &qword_100349930);
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

char *sub_1002D0C30()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  __chkstk_darwin(v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&unk_1003E7760, &unk_10034A870);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v42 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v38 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v40;
        v22 = v41;
        v23 = *(v41 + 72) * v20;
        v24 = v39;
        (*(v41 + 16))(v39, *(v5 + 48) + v23, v40);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = (v25 + 32 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[3];
        v43 = v27[2];
        v44 = v28;
        v31 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v24, v21);
        v32 = (*(v31 + 56) + v26);
        v5 = v38;
        v33 = v43;
        *v32 = v44;
        v32[1] = v29;
        v32[2] = v33;
        v32[3] = v30;

        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v42;
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

  return result;
}

void *sub_1002D0ED0()
{
  v1 = v0;
  sub_100005814(&qword_1003E7780, &qword_100349920);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100015D6C(v22, *(&v22 + 1));
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

char *sub_1002D1054()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E8C60, &qword_10034A8A0);
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
        result = sub_100015D6C(v28, v29);
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

  return result;
}

id sub_1002D12E0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100005814(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

        result = v22;
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

  return result;
}

void *sub_1002D143C()
{
  v1 = v0;
  sub_100005814(&unk_1003E77C0, &unk_100349960);
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

        result = swift_errorRetain();
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

id sub_1002D15AC()
{
  v1 = v0;
  sub_100005814(&qword_1003E7788, &qword_100349928);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

uint64_t sub_1002D170C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7708, &qword_1003498C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D1774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D17D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D1840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1002D18F8(uint64_t a1)
{
  sub_1002D1AF8(319, &qword_1003E7858, "custodianID ownerHandle ");
  if (v1 <= 0x3F)
  {
    sub_1002D1B64(319, &qword_1003E7860, type metadata accessor for CustodianRecord);
    if (v2 <= 0x3F)
    {
      sub_1002D1B64(319, &qword_1003E7868, sub_1002D1A3C);
      if (v3 <= 0x3F)
      {
        sub_1002D1A94();
        if (v4 <= 0x3F)
        {
          sub_1002D1AF8(319, &qword_1003E7880, "beneficiaryID handle ");
          if (v5 <= 0x3F)
          {
            sub_1002D1B64(319, qword_1003E7888, sub_1002D1BB0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002D1A3C(uint64_t a1)
{
  if (!qword_1003E7870)
  {
    type metadata accessor for CustodianRecord(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E7870);
    }
  }
}

void sub_1002D1A94()
{
  if (!qword_1003E7878)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1003E7878);
    }
  }
}

void sub_1002D1AF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002D1B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1002D1BB0()
{
  result = qword_1003E3170;
  if (!qword_1003E3170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E3170);
  }

  return result;
}

uint64_t sub_1002D1BFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100070AF0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100070AF0(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100070AF0(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002D1EC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    type metadata accessor for AAFollowUpUserInfo(0);
    v17 = v13;

    swift_dynamicCast();
    *&v34[0] = v15;
    *(&v34[0] + 1) = v16;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100070AF0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100070AF0(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v1[5]);
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
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
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v1[6] + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    result = sub_100070AF0(v34, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002D2194(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DB1C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100070AF0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100070AF0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100070AF0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100070AF0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1002D245C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&unk_1003E77B0, &unk_100349950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1003084DC(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1002D263C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v30[0] = *(*(a1 + 48) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v13 = *&v30[0];
    type metadata accessor for AAFollowUpUserInfo(0);
    v14 = v13;
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100070AF0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100070AF0(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100070AF0(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002D28F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v30[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = *&v30[0];
    type metadata accessor for AAFollowUpUserInfo(0);
    v14 = v13;

    swift_dynamicCast();
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100070AF0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100070AF0(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100070AF0(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1002D2BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005814(&qword_1003E3460, qword_1003469E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100070AF0(&v22, v24);
        sub_100070AF0(v24, v25);
        sub_100070AF0(v25, &v23);
        result = sub_1003084DC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000839C(v11);
          result = sub_100070AF0(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100070AF0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1002D2E28(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v47 - v10;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA40);
  sub_1002D4C5C(a1, v51);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  sub_1000C5460(a1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v49 = v8;
    v15 = v14;
    v47 = swift_slowAlloc();
    v48 = v9;
    v51[0] = v47;
    *v15 = 136315138;
    v16 = sub_1002D4614();
    v18 = a2;
    v19 = a3;
    v20 = sub_10021145C(v16, v17, v51);

    *(v15 + 4) = v20;
    a3 = v19;
    a2 = v18;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v12, v13, "Posting User notification : %s", v15, 0xCu);
    sub_10000839C(v47);
    v9 = v48;

    v8 = v49;
  }

  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 40);
  if (v23 > 1)
  {
    v35 = *(a1 + 16);
    v36 = *(a1 + 24);
    v37 = *(a1 + 32);
    if (v23 == 2)
    {
      sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
      sub_1002C4C2C(v21, v22, v35, v36, v37, a2, a3);
    }

    else
    {
      sub_1002D4E28(v21, v22, v35, v36, v37);
      if (a2)
      {
        (a2)(0);
      }
    }
  }

  else if (*(a1 + 40))
  {
    v38 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 32);
    v50 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
    sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController), v50);
    v39 = a3;
    v40 = swift_allocObject();
    v41 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v41;
    *(v40 + 41) = *(a1 + 25);
    *(v40 + 64) = a2;
    *(v40 + 72) = v39;
    v42 = *(v38 + 8);
    sub_1002D4C5C(a1, v51);
    sub_100083AA0(a2, v39);
    v42(v21, v22, sub_1002D5454, v40, v50, v38);
  }

  else
  {
    v24 = v50;
    (*(v9 + 16))(v50, v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager__accountStore, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v24, v8);
    v25 = [*(*sub_1000080F8(v51 v51[3]) + 16)];
    if (v25)
    {
      v26 = v25;
      sub_10000839C(v51);
      v27 = (v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
      v28 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
      v29 = *(v4 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 32);
      v50 = v28;
      v49 = sub_1000080F8(v27, v28);
      v30 = sub_1002D1EC4(v22);
      v31 = swift_allocObject();
      v32 = *(a1 + 16);
      *(v31 + 16) = *a1;
      *(v31 + 32) = v32;
      *(v31 + 41) = *(a1 + 25);
      *(v31 + 64) = a2;
      *(v31 + 72) = a3;
      *(v31 + 80) = v26;
      v33 = *(v29 + 16);
      sub_1002D4C5C(a1, v51);
      sub_100083AA0(a2, a3);
      v34 = v26;
      v33(v21, v34, v30, sub_1002D54BC, v31, v50, v29);
    }

    else
    {
      sub_10000839C(v51);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Primary account found nil while preparing to post CFU, exiting.", v45, 2u);
      }

      if (a2)
      {
        v46 = [objc_allocWithZone(NSError) initWithDomain:AAErrorDomain code:-4404 userInfo:0];
        a2();
      }
    }
  }
}

void sub_1002D33B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    swift_errorRetain();
    sub_1002D4C5C(a3, v31);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1002D4614();
      v15 = sub_10021145C(v13, v14, v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v16 = String.init<A>(describing:)();
      v18 = sub_10021145C(v16, v17, v31);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error occurred while posting FollowUp %s - Error: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    if (a4)
    {
      swift_errorRetain();
      a4(a2);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    sub_1002D4C5C(a3, v31);
    v21 = a6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v24 = 136315394;
      v27 = sub_1002D4614();
      v29 = sub_10021145C(v27, v28, v31);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully posted Follow Up - %s on account: %@", v24, 0x16u);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v26);
    }

    if (a4)
    {
      a4(0);
    }
  }
}

void sub_1002D3764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    sub_1002D4C5C(a3, v25);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v10 = 136315394;
      v11 = sub_1002D4614();
      v13 = sub_10021145C(v11, v12, v25);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, v25);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error occurred while posting FollowUp %s - Error: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    if (a4)
    {
      swift_errorRetain();
      a4(a2);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    sub_1002D4C5C(a3, v25);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v22 = sub_1002D4614();
      v24 = sub_10021145C(v22, v23, v25);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully posted Follow Up - %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    if (a4)
    {
      a4(0);
    }
  }
}

void sub_1002D3AB8(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  sub_1002D4C5C(a1, v33);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_1000C5460(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    v9 = v33[0];
    *v8 = 136315138;
    v10 = sub_1002D4614();
    v12 = sub_10021145C(v10, v11, v33);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing User notification: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v22 = *(a1 + 32);
      if (*(v22 + 16))
      {
        v23 = sub_1003084DC(0xD000000000000010, 0x800000010032C670);
        if (v24)
        {
          v25 = (*(v22 + 56) + 16 * v23);
          v26 = *v25;
          v27 = v25[1];
          sub_1000080F8((v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
          type metadata accessor for NotificationController();

          sub_1002C54D8(v26, v27);
        }
      }
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Dismissing system alert is not supported.", v32, 2u);
      }
    }
  }

  else
  {
    v13 = *a1;
    v14 = (v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
    v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController + 24);
    v16 = v14[4];
    if (*(a1 + 40))
    {
      sub_1000080F8(v14, v15);
      v17 = swift_allocObject();
      v28 = *(a1 + 16);
      v17[1] = *a1;
      v17[2] = v28;
      *(v17 + 41) = *(a1 + 25);
      v19 = *(v16 + 32);
      v29 = v4;

      v21 = sub_1002D56AC;
    }

    else
    {
      sub_1000080F8(v14, v15);
      v17 = swift_allocObject();
      v18 = *(a1 + 16);
      v17[1] = *a1;
      v17[2] = v18;
      *(v17 + 41) = *(a1 + 25);
      v19 = *(v16 + 32);
      v20 = v4;

      v21 = sub_1002D57E4;
    }

    v19(v13, v21, v17, v15, v16);
  }
}

void sub_1002D3E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA40);
    sub_1002D4C5C(a3, v22);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_1000C5460(a3);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = sub_1002D4614();
      v10 = sub_10021145C(v8, v9, v22);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, v22);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error occured while dismissing FollowUp %s - Error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    sub_1002D4C5C(a3, v22);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    sub_1000C5460(a3);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      v19 = sub_1002D4614();
      v21 = sub_10021145C(v19, v20, v22);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully dismissed Follow Up - %s", v17, 0xCu);
      sub_10000839C(v18);
    }
  }
}

void sub_1002D4188(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "User dismissed system alert", v13, 2u);
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Alternate response pressed for system alert", v5, 2u);
    }

    v6 = [objc_opt_self() defaultWorkspace];
    if (v6)
    {
      v8 = v6;
      URL._bridgeToObjectiveC()(v7);
      v10 = v9;
      sub_100308978(_swiftEmptyArrayStorage);
      oslog = Dictionary._bridgeToObjectiveC()().super.isa;

      [v8 openSensitiveURL:v10 withOptions:oslog];

LABEL_14:
    }
  }
}

void sub_1002D43E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1002D445C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23UserNotificationManager__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationManager(uint64_t a1)
{
  result = qword_1003E7900;
  if (!qword_1003E7900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D4578(uint64_t a1)
{
  sub_1001CFA84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D4614()
{
  v13 = type metadata accessor for Mirror();
  v12 = *(v13 - 8);
  __chkstk_darwin(v13);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v17 + 1) = &type metadata for UserNotificationType;
  v3 = swift_allocObject();
  *&v16 = v3;
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  *(v3 + 41) = *(v0 + 25);
  sub_1002D4C5C(v0, &v18);
  Mirror.init(reflecting:)();
  v21 = 0;
  v22 = 0xE000000000000000;
  v11 = v2;
  Mirror.children.getter();
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (v20)
  {
    v16 = v18;
    sub_100070AF0(&v19, &v17);
    sub_1002D54D0(&v16, &v14);
    object = v14._object;
    if (v14._object)
    {
      countAndFlagsBits = v14._countAndFlagsBits;
      sub_10000839C(v15);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v7._countAndFlagsBits = countAndFlagsBits;
      v7._object = object;
      String.append(_:)(v7);

      v8._countAndFlagsBits = 8250;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
    }

    else
    {
      sub_10000839C(v15);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v14);

    sub_100008D3C(&v16, &qword_1003E79A0, &unk_100349A90);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  (*(v12 + 8))(v11, v13);

  return v21;
}

uint64_t sub_1002D48D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_10031B728();
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D4A6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1003084DC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D4C10(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1002D4C94(&v5, &v7) & 1;
}

uint64_t sub_1002D4C94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 40) != 2)
  {
    if (!*(a1 + 40) && !*(a2 + 40))
    {
      v5 = a2[1];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {

LABEL_22:

        return sub_1002D48D8(v4, v5);
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (*(a2 + 40) != 2)
  {
    return 0;
  }

  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  if ((v3 != *a2 || v4 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v12 != v15 || v13 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1002D4A6C(v14, v17);
}

void sub_1002D4E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v8 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v8 - 8);
  v10 = v40 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v40 - v16;
  if (*(a5 + 16))
  {
    sub_1003084DC(0xD000000000000010, 0x800000010032C690);
    if (v18)
    {
      v44 = a3;

      URL.init(string:)();

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v23 = *(v12 + 32);
        v42 = v12 + 32;
        v43 = v23;
        v23(v17, v10, v11);
        sub_1002D5540();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = objc_opt_self();
        v26 = [v25 bundleForClass:ObjCClassFromMetadata];
        v40[2] = a4;
        v27 = v26;
        v47._object = 0x8000000100333DD0;
        v28._countAndFlagsBits = 0x53474E4954544553;
        v47._countAndFlagsBits = 0xD000000000000032;
        v28._object = 0xE800000000000000;
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v40[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v47)._countAndFlagsBits;

        v30 = [v25 bundleForClass:ObjCClassFromMetadata];
        v48._object = 0x8000000100333E10;
        v48._countAndFlagsBits = 0xD00000000000001ALL;
        v31._countAndFlagsBits = 19279;
        v31._object = 0xE200000000000000;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v48);

        v41 = objc_opt_self();
        v45 = String._bridgeToObjectiveC()();
        v33 = String._bridgeToObjectiveC()();
        v34 = String._bridgeToObjectiveC()();

        v35 = String._bridgeToObjectiveC()();

        (*(v12 + 16))(v15, v17, v11);
        v36 = (*(v12 + 80) + 16) & ~*(v12 + 80);
        v37 = swift_allocObject();
        v43(v37 + v36, v15, v11);
        aBlock[4] = sub_1002D5614;
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002D43E4;
        aBlock[3] = &unk_1003B34E8;
        v38 = _Block_copy(aBlock);

        v39 = v45;
        [v41 showUserNotificationWithTitle:v45 message:v33 cancelButtonTitle:v34 otherButtonTitle:v35 withCompletionBlock:v38];
        _Block_release(v38);

        (*(v12 + 8))(v17, v11);
        return;
      }

      sub_100008D3C(v10, &qword_1003E7500, &qword_10033EC30);
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to post system alert, action URL is missing.", v22, 2u);
  }
}

uint64_t sub_1002D5368()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80);
}

void *sub_1002D53BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2 && a6 != 3)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1002D5460()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002D54D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E79A0, &unk_100349A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002D5540()
{
  result = qword_1003E79A8;
  if (!qword_1003E79A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E79A8);
  }

  return result;
}

uint64_t sub_1002D558C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002D5614(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();

  sub_1002D4188(a1, a2);
}

uint64_t sub_1002D5694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D56C8()
{
  sub_1002D53BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57);
}

__n128 sub_1002D5718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002D572C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D5774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002D57E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D5870()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 1;
  v2 = *(v1 + 40);
  swift_errorRetain();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002D58E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v93 = *(v10 - 8);
  __chkstk_darwin(v10);
  v92 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v12 - 8);
  v91 = v12;
  __chkstk_darwin(v12);
  v89 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[5];
  v15 = v2[6];
  sub_1000080F8(v2 + 2, v14);
  if (((*(v15 + 40))(v14, v15) & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  v16 = v2[5];
  v17 = v2[6];
  sub_1000080F8(v2 + 2, v16);
  v18 = (*(v17 + 88))(AAFollowUpIdentifierRenewCredentials, v16, v17);
  if (v18)
  {
    v19 = v18;
    v94 = *(v18 + 16);
    if (v94)
    {
      v80 = v9;
      v81 = v10;
      v82 = v7;
      v83 = v6;
      v84 = a1;
      v85 = a2;
      v20 = dispatch_group_create();
      v21 = 0;
      a1 = AAFollowUpUserInfoAltDSID;
      v86 = &v99;
      v22 = v94;
      v88 = v2;
      while (1)
      {
        if (v21 >= *(v19 + 16))
        {
          __break(1u);
LABEL_48:
          swift_once();
LABEL_37:
          v63 = type metadata accessor for Logger();
          sub_100008D04(v63, qword_1003FAA40);
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            v67 = "Post install activity - No renew credentials CFU found";
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v23 = *(v19 + 8 * v21 + 32);

        dispatch_group_enter(v20);
        v95 = a1;
        type metadata accessor for AAFollowUpUserInfo(0);
        sub_1002D699C(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo, &unk_10033DB14);
        v24 = a1;
        AnyHashable.init<A>(_:)();
        if (!*(v23 + 16))
        {
          break;
        }

        v25 = sub_10031B060(&aBlock);
        if ((v26 & 1) == 0)
        {
          break;
        }

        sub_10000DB1C(*(v23 + 56) + 32 * v25, &v103);
        sub_1000526B0(&aBlock);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_17;
        }

        v27 = v3;
        v29 = v95;
        v28 = v96;
        v30 = v27[7];
        v31 = String._bridgeToObjectiveC()();
        v32 = [v30 iCloudAccountForAltDSID:v31];

        if (v32)
        {
          v33 = String._bridgeToObjectiveC()();
          v34 = [v30 authKitAccountWithAltDSID:v33];

          if (v34)
          {
            v35 = [v30 continuationTokenForAccount:v34];
            if (v35)
            {

              v36 = v88;
              v87 = v88[8];
              v37 = swift_allocObject();
              swift_weakInit();
              v38 = swift_allocObject();
              v38[2] = v34;
              v38[3] = v37;
              v38[4] = v32;
              v38[5] = v29;
              v3 = v36;
              v38[6] = v28;
              v38[7] = v20;
              v101 = sub_1002D6A74;
              v102 = v38;
              aBlock = _NSConcreteStackBlock;
              v98 = 1107296256;
              v99 = sub_1002D6838;
              v100 = &unk_1003B36B8;
              v39 = _Block_copy(&aBlock);
              v40 = v32;
              v41 = v34;
              v42 = v20;

              [v87 renewCredentialsForAccount:v40 completion:v39];
              _Block_release(v39);
            }

            else
            {

              if (qword_1003D7F20 != -1)
              {
                swift_once();
              }

              v58 = type metadata accessor for Logger();
              sub_100008D04(v58, qword_1003FAA40);
              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.debug.getter();
              v61 = os_log_type_enabled(v59, v60);
              v3 = v88;
              if (v61)
              {
                v62 = swift_slowAlloc();
                *v62 = 0;
                _os_log_impl(&_mh_execute_header, v59, v60, "Post install activity - Missing continuation key", v62, 2u);
              }

              dispatch_group_leave(v20);
            }

            v22 = v94;
          }

          else
          {

            if (qword_1003D7F20 != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            sub_100008D04(v53, qword_1003FAA40);
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.debug.getter();
            v56 = os_log_type_enabled(v54, v55);
            v3 = v88;
            v22 = v94;
            if (v56)
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&_mh_execute_header, v54, v55, "Post install activity - Missing IdMS account", v57, 2u);
            }

            dispatch_group_leave(v20);
          }

          goto LABEL_7;
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100008D04(v50, qword_1003FAA40);
        v44 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        v52 = os_log_type_enabled(v44, v51);
        v3 = v88;
        v22 = v94;
        if (v52)
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          v47 = v51;
          v48 = v44;
          v49 = "Post install activity - Missing AppleAccount";
          goto LABEL_5;
        }

LABEL_6:

        dispatch_group_leave(v20);
LABEL_7:
        if (v22 == ++v21)
        {

          sub_100071C74();
          v69 = v89;
          v68 = v90;
          v70 = v91;
          (*(v90 + 104))(v89, enum case for DispatchQoS.QoSClass.default(_:), v91);
          v71 = static OS_dispatch_queue.global(qos:)();
          (*(v68 + 8))(v69, v70);
          v72 = swift_allocObject();
          v73 = v85;
          *(v72 + 16) = v84;
          *(v72 + 24) = v73;
          v101 = sub_1002D6954;
          v102 = v72;
          aBlock = _NSConcreteStackBlock;
          v98 = 1107296256;
          v99 = sub_100031EF0;
          v100 = &unk_1003B3640;
          v74 = _Block_copy(&aBlock);

          v75 = v92;
          static DispatchQoS.unspecified.getter();
          v103 = _swiftEmptyArrayStorage;
          sub_1002D699C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100005814(&unk_1003DABE0, &unk_10033EC20);
          sub_1000383E4();
          v76 = v80;
          v77 = v83;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v74);

          (*(v82 + 8))(v76, v77);
          (*(v93 + 8))(v75, v81);
        }
      }

      sub_1000526B0(&aBlock);
LABEL_17:
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAA40);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_6;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = v45;
      v48 = v44;
      v49 = "Post install activity - Missing altDSID";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v48, v47, v49, v46, 2u);

      goto LABEL_6;
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_100008D04(v79, qword_1003FAA40);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Post install activity - No renew credentials followUp UserInfos found";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);
  }

LABEL_46:

  return (a1)(0, 0);
}

void sub_1002D64C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, NSObject *a8)
{
  if (a1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_10021145C(a6, a7, v32);
      *(v15 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 14) = v18;
      *v16 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to renew credentials for altDSID - %s with error - %@", v15, 0x16u);
      sub_100083380(v16);

      sub_10000839C(v17);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);
    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Post install activity - Credentials renewed for account: %@", v26, 0xCu);
      sub_100083380(v27);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 16, v32);

      v30 = v33;
      v31 = v34;
      sub_1000080F8(v32, v33);
      (*(v31 + 56))(AAFollowUpIdentifierRenewCredentials, a5, OSTransaction.complete(), 0, v30, v31);
      sub_10000839C(v32);
    }
  }

  dispatch_group_leave(a8);
}

void sub_1002D6838(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1002D68B0()
{
  sub_10000839C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1002D691C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002D6984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D699C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D69E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002D6A1C()
{

  return _swift_deallocObject(v0, 64);
}

void sub_1002D6A8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v46 - v5 + 48;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore;
    v17 = *(v4 + 16);
    v17(v6, Strong + OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore, v3);
    Dependency.wrappedValue.getter();
    v18 = *(v4 + 8);
    v18(v6, v3);
    v19 = [*(*sub_1000080F8(v46 v47) + 16)];
    if (v19)
    {

      sub_10000839C(v46);
      v17(v6, v15 + v16, v3);

      Dependency.wrappedValue.getter();
      v18(v6, v3);
      v20 = [*(*sub_1000080F8(v46 v47) + 16)];
      if (v20)
      {

        sub_10000839C(v46);
        sub_1002D70E8(1, sub_1002D8B6C, a1);
      }

      else
      {
        sub_10000839C(v46);
        sub_100005814(&qword_1003E4610, &qword_100347AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0x72456E496E676953;
        *(inited + 40) = 0xEB00000000726F72;
        type metadata accessor for AASignInError(0);
        v45 = -8014;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002D8B74(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(inited + 48) = v46[0];
        v38 = sub_100308AA8(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
        sub_1002D6F50(v38, a1, v39, v40, v41, v42, v43, v44);
      }
    }

    else
    {
      v25 = sub_10000839C(v46);
      sub_10030FF34(v25, v26, v27, v28, v29, v30, v31, v32, v45);
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100008D04(v33, qword_1003FAA40);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "No account signed in. Skipping Post Install Activities.", v36, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34(0, v8, v9, v10, v11, v12, v13, v14, v45);
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA40);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Lost reference to self. Aborting XPC activity for Post Install Activities", v24, 2u);
    }
  }
}

BOOL sub_1002D6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v13 = Dictionary.description.getter();
      v15 = sub_10021145C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Overall Post Install Activities failed: %s", v11, 0xCu);
      sub_10000839C(v12);
    }
  }

  return sub_10030FF34(a1, a2, a3, a4, a5, a6, a7, a8, v17);
}

uint64_t sub_1002D70E8(int a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v59 = a2;
  LODWORD(v68) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v63 = type metadata accessor for DispatchQoS();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_group_create();
  v71 = swift_allocObject();
  *(v71 + 16) = &_swiftEmptyDictionarySingleton;
  v14 = sub_100071C74();
  v70 = "ActivityProvider";
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v8;
  v55 = v14;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v70 = sub_100008D04(v16, qword_1003FAA40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    if (v68)
    {
      v21 = 0x656C756465686353;
    }

    else
    {
      v21 = 0x6E616D6544206E4FLL;
    }

    v22 = sub_10021145C(v21, 0xE900000000000064, aBlock);

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting %s Post Install Activities.", v19, 0xCu);
    sub_10000839C(v20);
  }

  v24 = *(v67 + 16);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    v27 = v68 & 1;
    if (v68)
    {
      v28 = 0x656C756465686353;
    }

    else
    {
      v28 = 0x6E616D6544206E4FLL;
    }

    v68 = v28;
    *&v23 = 136315394;
    v67 = v23;
    v69 = v13;
    do
    {
      sub_100040738(v26, aBlock);
      dispatch_group_enter(v13);
      sub_100040738(aBlock, &v77);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v29 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v29 = v67;
        v30 = v15;
        v31 = v27;
        v32 = sub_10021145C(v68, 0xE900000000000064, &v72);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        sub_1000080F8(&v77, v78);
        swift_getDynamicType();
        v33 = _typeName(_:qualified:)();
        v35 = v34;
        sub_10000839C(&v77);
        v36 = sub_10021145C(v33, v35, &v72);

        *(v29 + 14) = v36;
        v27 = v31;
        v15 = v30;
        v13 = v69;
        _os_log_impl(&_mh_execute_header, v41, v42, "Starting %s Post Install Activity - %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v77);
      }

      sub_1000080F8(aBlock, v74);
      sub_100040738(aBlock, &v77);
      v37 = swift_allocObject();
      *(v37 + 16) = v27;
      sub_10003E950(&v77, v37 + 24);
      v38 = v71;
      *(v37 + 64) = v15;
      *(v37 + 72) = v38;
      *(v37 + 80) = v13;
      v39 = v15;

      v40 = v13;
      sub_1002D58E4(sub_1002D8A40, v37);

      sub_10000839C(aBlock);
      v26 += 40;
      --v25;
    }

    while (v25);
  }

  else
  {
    LOBYTE(v27) = v68 & 1;
  }

  v43 = v57;
  v44 = v56;
  v45 = v58;
  (*(v57 + 104))(v56, enum case for DispatchQoS.QoSClass.default(_:), v58);
  v70 = static OS_dispatch_queue.global(qos:)();
  (*(v43 + 8))(v44, v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v15;
  *(v46 + 24) = v27;
  v47 = v59;
  *(v46 + 32) = v71;
  *(v46 + 40) = v47;
  *(v46 + 48) = v61;
  v75 = sub_1002D8A9C;
  v76 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v74 = &unk_1003B3778;
  v48 = _Block_copy(aBlock);
  v49 = v15;

  v50 = v60;
  static DispatchQoS.unspecified.getter();
  *&v77 = _swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v51 = v64;
  v52 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v70;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v48);

  (*(v65 + 8))(v51, v52);
  (*(v62 + 8))(v50, v63);
}

void sub_1002D7AC4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v61 = a7;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v55 = v18;
    v57 = v17;
    v59 = v13;
    v60 = v12;
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v56 = v15;
    v58 = a5;
    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA40);
    sub_100040738(a4, &aBlock);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = a6;
      v26 = v25;
      v68 = swift_slowAlloc();
      *v24 = 136315650;
      if (a3)
      {
        v27 = 0x656C756465686353;
      }

      else
      {
        v27 = 0x6E616D6544206E4FLL;
      }

      v28 = sub_10021145C(v27, 0xE900000000000064, &v68);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      sub_1000080F8(&aBlock, v65);
      swift_getDynamicType();
      v29 = _typeName(_:qualified:)();
      v31 = v30;
      sub_10000839C(&aBlock);
      v32 = sub_10021145C(v29, v31, &v68);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2112;
      v33 = _convertErrorToNSError(_:)();
      *(v24 + 24) = v33;
      *v26 = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s %s Post Install Activity failed with error %@", v24, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
      a6 = v54;

      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a4, a4[3]);
    DynamicType = swift_getDynamicType();
    v45 = a4[4];
    aBlock = DynamicType;
    v63 = v45;
    sub_100005814(&qword_1003E7CA8, &unk_100349CE0);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    v49 = swift_allocObject();
    v49[2] = a2;
    v49[3] = a6;
    v49[4] = v46;
    v49[5] = v48;
    v66 = sub_1002D8B60;
    v67 = v49;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_100031EF0;
    v65 = &unk_1003B3818;
    v50 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v51 = v56;
    v52 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v59 + 8))(v51, v52);
    (*(v55 + 8))(v20, v57);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA40);
    sub_100040738(a4, &aBlock);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v37 = 136315394;
      if (a3)
      {
        v38 = 0x656C756465686353;
      }

      else
      {
        v38 = 0x6E616D6544206E4FLL;
      }

      v39 = sub_10021145C(v38, 0xE900000000000064, &v68);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2080;
      sub_1000080F8(&aBlock, v65);
      swift_getDynamicType();
      v40 = _typeName(_:qualified:)();
      v42 = v41;
      sub_10000839C(&aBlock);
      v43 = sub_10021145C(v40, v42, &v68);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s %s Post Install Activity completed.", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v61);
}

uint64_t sub_1002D8204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _convertErrorToNSError(_:)();
  v9 = [v8 aa_partialErrorsByName];

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16))
  {

LABEL_7:
    swift_beginAccess();

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_1002CEFC4(a1, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v13;
    return swift_endAccess();
  }

  sub_100259C8C(v10, (a2 + 16), a3, a4);
}

uint64_t sub_1002D8378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2 & 1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  aBlock[4] = sub_1002D8B08;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B37C8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1002D8B74(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_1002D8650(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v8 = 136315394;
    if (a1)
    {
      v9 = 0x656C756465686353;
    }

    else
    {
      v9 = 0x6E616D6544206E4FLL;
    }

    v10 = sub_10021145C(v9, 0xE900000000000064, v17);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    swift_beginAccess();

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = sub_10021145C(v11, v13, v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Overall %s Post Install Activities finished with errors: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();

  a3(v15);
}

uint64_t sub_1002D88B4()
{

  v1 = OBJC_IVAR____TtC13appleaccountd27PostInstallActivityProvider__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallActivityProvider(uint64_t a1)
{
  result = qword_1003E7BC0;
  if (!qword_1003E7BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D89B8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002D89F0()
{
  sub_10000839C((v0 + 24));

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002D8A54()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002D8AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D8AC8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8B18()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D8BCC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002D8E30();
    type metadata accessor for PostInstallActivityProvider(0);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002D8C8C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallActivityScheduler(uint64_t a1)
{
  result = qword_1003E7CE8;
  if (!qword_1003E7CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D8D98(uint64_t a1)
{
  sub_100260880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1002D8E30()
{
  v0 = [objc_allocWithZone(AAFollowUpController) init];
  v1 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v18 = sub_1002D9044();
    v19 = &off_1003B1488;
    *&v17 = v0;
    v4 = type metadata accessor for RenewCredentialsActivity();
    v5 = swift_allocObject();
    sub_10003E950(&v17, v5 + 16);
    *(v5 + 56) = v1;
    *(v5 + 64) = v3;
    v18 = v4;
    v19 = &off_1003B3608;
    *&v17 = v5;
    v6 = sub_100305D58(0, 1, 1, _swiftEmptyArrayStorage);
    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100305D58((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = sub_10003E968(&v17, v4);
    __chkstk_darwin(v9);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v15 = v4;
    v16 = &off_1003B3608;
    *&v14 = v13;
    v6[2] = v8 + 1;
    sub_10003E950(&v14, &v6[5 * v8 + 4]);
    sub_10000839C(&v17);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002D9044()
{
  result = qword_1003E0360;
  if (!qword_1003E0360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0360);
  }

  return result;
}

void sub_1002D9090(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    swift_errorRetain();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v51 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_10021145C(a3, a4, &v51);
      *(v15 + 12) = 2112;
      v18 = _convertErrorToNSError(_:)();
      *(v15 + 14) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to verify arming for service %s with error: %@", v15, 0x16u);
      sub_100083380(v16);

      sub_10000839C(v17);
    }

    swift_errorRetain();
    a5(a2);

LABEL_7:

    return;
  }

  if (!a1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA40);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unknown error, no arming information located.", v38, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v39 = 3;
    (a5)();
    goto LABEL_7;
  }

  v50 = a1;
  v21 = [v50 webSessionIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == a7 && v24 == a8)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA40);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v51 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10021145C(a3, a4, &v51);
        sub_10000839C(v31);
      }

      sub_1002BC0A4();
      v32 = swift_allocError();
      v34 = 4;
      goto LABEL_38;
    }
  }

  if ([v50 isValid])
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAA40);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10021145C(a3, a4, &v51);
      _os_log_impl(&_mh_execute_header, v41, v42, "Service %s is armed!", v43, 0xCu);
      sub_10000839C(v44);
    }

    a5(0);
    goto LABEL_39;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100008D04(v45, qword_1003FAA40);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10021145C(a3, a4, &v51);
    _os_log_impl(&_mh_execute_header, v46, v47, "Arming context for service %s was invalid.", v48, 0xCu);
    sub_10000839C(v49);
  }

  sub_1002BC0A4();
  v32 = swift_allocError();
  v34 = 5;
LABEL_38:
  *v33 = v34;
  a5(v32);

LABEL_39:
}

uint64_t sub_1002D97C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D9820(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002D98F0()
{
  v0[30] = *sub_1000080F8((v0[33] + 16), *(v0[33] + 40));
  v1 = swift_task_alloc();
  v0[34] = v1;
  *(v1 + 16) = v0 + 30;
  v2 = swift_task_alloc();
  v0[35] = v2;
  v3 = sub_100005814(&qword_1003E7FD0, qword_100349F30);
  *v2 = v0;
  v2[1] = sub_1002D9A10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 31, 0, 0, 0xD000000000000014, 0x8000000100334160, sub_1002DC34C, v1, v3);
}

uint64_t sub_1002D9A10()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1002D9F84;
  }

  else
  {

    v2 = sub_1002D9B2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_1002D9B2C()
{
  v1 = v0[31];
  v33 = _swiftEmptyArrayStorage;
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_33:

    v27 = _swiftEmptyArrayStorage;
LABEL_34:
    v28 = v0[1];

    return v28(v27);
  }

LABEL_32:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = 0;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v32 = v1 & 0xC000000000000001;
  v30 = v2;
  v31 = v1;
  while (1)
  {
    if (v32)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v29 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v7 = [v4 appleID];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100305F30(0, *(v33 + 2) + 1, 1, v33);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_100305F30((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      v33 = v12;
      v2 = v30;
      v1 = v31;
    }

    result = [v5 dictionary];
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[20] = 0xD000000000000016;
    v0[21] = 0x80000001003340D0;
    AnyHashable.init<A>(_:)();
    if (*(v18 + 16) && (v19 = sub_10031B060((v0 + 2)), (v20 & 1) != 0))
    {
      sub_10000DB1C(*(v18 + 56) + 32 * v19, (v0 + 12));
      sub_1000526B0((v0 + 2));

      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      if (swift_dynamicCast())
      {
        sub_10028BBC0(v0[32]);
      }
    }

    else
    {

      sub_1000526B0((v0 + 2));
    }

    result = [v5 dictionary];
    if (!result)
    {
      goto LABEL_38;
    }

    v21 = result;
    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[22] = 0xD000000000000014;
    v0[23] = 0x80000001003340F0;
    AnyHashable.init<A>(_:)();
    if (*(v22 + 16) && (v23 = sub_10031B060((v0 + 7)), (v24 & 1) != 0))
    {
      sub_10000DB1C(*(v22 + 56) + 32 * v23, (v0 + 16));
      sub_1000526B0((v0 + 7));

      if (swift_dynamicCast())
      {
        v25 = v0[25];
        v0[26] = v0[24];
        v0[27] = v25;
        v0[28] = 44;
        v0[29] = 0xE100000000000000;
        sub_1000709A0();
        v26 = StringProtocol.components<A>(separatedBy:)();

        sub_10028BBC0(v26);
      }
    }

    else
    {

      sub_1000526B0((v0 + 7));
    }

    ++v3;
    if (v6 == v2)
    {

      v27 = v33;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1002D9F84()
{

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA40);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error occured when fetching all family members: %@", v4, 0xCu);
    sub_100083380(v5);
  }

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_1002DA11C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002DA254, 0, 0);
}

uint64_t sub_1002DA254()
{
  v32 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[22] = v0[10];
  v8 = kAAAnalyticsEventCustodianSetupFetchSuggestedContactsFromFamilyMembers;
  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v4, v5);
  v9 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v9 && (v10 = v9, v11 = [v9 aa_altDSID], v10, v11))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v8;

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {

    v16 = v8;

    v15 = 0;
    v13 = 0;
  }

  v0[23] = v13;
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 analyticsEventWithName:v8 altDSID:v15 flowID:v18];
  v0[24] = v19;

  if (v19)
  {
    sub_100245EF4();
    v20 = v19;
    v21 = NSString.init(stringLiteral:)();
    [v20 setObject:0 forKeyedSubscript:v21];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v0[25] = sub_100008D04(v22, qword_1003FAA40);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v31);
    _os_log_impl(&_mh_execute_header, v23, v24, "Performing: %s...", v25, 0xCu);
    sub_10000839C(v26);
  }

  sub_100257274(v8);
  v27 = swift_task_alloc();
  v0[26] = v27;
  v28 = sub_100005814(&qword_1003E55E0, &unk_100348188);
  *v27 = v0;
  v27[1] = sub_1002DA8FC;
  v29 = v0[15];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, 0, 0, 0xD000000000000029, 0x8000000100334130, sub_1002DC308, v29, v28);
}

uint64_t sub_1002DA8FC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002DAA10;
  }

  else
  {
    v2 = sub_1002DAC9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DAA10()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v14);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100083380(v4);

    sub_10000839C(v5);
  }

  v7 = v0[24];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v7)
  {
    v8 = v0[24];
    v9 = v8;
    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];

    swift_getObjectType();
    sub_100246FA8(v8);
  }

  else
  {
    swift_errorRetain();
  }

  v11 = v0[24];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_10000839C(v0 + 2);

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_1002DAC9C(uint64_t a1)
{
  v12 = v1;
  v2 = *(v1 + 96);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100334110, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v1 + 192);
  if (v7)
  {
    [*(v1 + 192) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v7;
    sub_100246FA8(v7);
  }

  swift_unknownObjectRelease();

  sub_10000839C((v1 + 16));

  v9 = *(v1 + 8);

  return v9(v2);
}

uint64_t sub_1002DAE5C(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v6 = a1;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_17;
    }

    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      do
      {
        v19 = a5;
        v10 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v21 = v11;
          v14 = sub_1002DAFA0(&v21, a3, a4);

          if (v14)
          {
            a5 = v19;
            a1 = 1;
            goto LABEL_19;
          }

          ++v10;
          if (v13 == v9)
          {
            a1 = 0;
            a5 = v19;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v15 = a5;
        v16 = a6;
        v17 = _CocoaArrayWrapper.endIndex.getter();
        a6 = v16;
        a5 = v15;
        v9 = v17;
      }

      while (v17);
    }

    a1 = 0;
LABEL_19:
    v7 = 0;
  }

  return (a5)(a1, v7, a3);
}

uint64_t sub_1002DAFA0(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CharacterSet();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 appleID];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == a2 && v15 == a3)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

LABEL_7:
  result = [v10 dictionary];
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0xD000000000000016;
  v36 = 0x80000001003340D0;
  AnyHashable.init<A>(_:)();
  if (*(v20 + 16) && (v21 = sub_10031B060(v37), (v22 & 1) != 0))
  {
    sub_10000DB1C(*(v20 + 56) + 32 * v21, v38);
    sub_1000526B0(v37);

    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    if (swift_dynamicCast())
    {
      v34 = v3;
      v23 = (v35 + 40);
      v24 = *(v35 + 16) + 1;
      while (--v24)
      {
        if (*(v23 - 1) != a2 || *v23 != a3)
        {
          v23 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

LABEL_18:

        return 1;
      }
    }
  }

  else
  {

    sub_1000526B0(v37);
  }

  result = [v10 dictionary];
  if (!result)
  {
    goto LABEL_39;
  }

  v26 = result;
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0xD000000000000014;
  v36 = 0x80000001003340F0;
  AnyHashable.init<A>(_:)();
  if (!*(v27 + 16) || (v28 = sub_10031B060(v37), (v29 & 1) == 0))
  {

    sub_1000526B0(v37);
    return 0;
  }

  sub_10000DB1C(*(v27 + 56) + 32 * v28, v38);
  sub_1000526B0(v37);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = v36;
  CharacterSet.init(charactersIn:)();
  sub_1000709A0();
  v30 = StringProtocol.components(separatedBy:)();
  (*(v39 + 8))(v9, v7);

  v31 = (v30 + 40);
  v32 = *(v30 + 16) + 1;
  while (--v32)
  {
    if (*(v31 - 1) != a2 || *v31 != a3)
    {
      v31 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1002DB400(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v3 = a1;
  if (a2)
  {
    return a3(a1, 1);
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_48:
    v38 = a3;
    v39 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v38;
    v6 = v39;
    v41 = v38;
    if (!v39)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = a3;
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v8 = v3 & 0xC000000000000001;
  v42 = v3 & 0xC000000000000001;
  v9 = &selRef_setPath_;
  v44 = v5;
  v45 = v3;
  v43 = v6;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v8)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_47;
        }

        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if ([v11 v9[221]])
      {
        goto LABEL_8;
      }

      v13 = [v12 dsid];
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = v13;
      v15 = [v12 appleID];
      if (v15)
      {
        break;
      }

LABEL_8:
LABEL_9:
      ++v10;
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    v47 = v15;
    v16 = [v12 firstName];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v46 = v14;
    v20 = [v12 lastName];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v12 fullName];
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v12 memberTypeDisplayString];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v12 isChildAccount];
    if (v19)
    {
      v33 = String._bridgeToObjectiveC()();

      if (v23)
      {
        goto LABEL_31;
      }

LABEL_35:
      v34 = 0;
      if (!v27)
      {
        goto LABEL_36;
      }

LABEL_32:
      v35 = String._bridgeToObjectiveC()();

      if (v31)
      {
        goto LABEL_33;
      }

LABEL_37:
      v36 = 0;
    }

    else
    {
      v33 = 0;
      if (!v23)
      {
        goto LABEL_35;
      }

LABEL_31:
      v34 = String._bridgeToObjectiveC()();

      if (v27)
      {
        goto LABEL_32;
      }

LABEL_36:
      v35 = 0;
      if (!v31)
      {
        goto LABEL_37;
      }

LABEL_33:
      v36 = String._bridgeToObjectiveC()();
    }

    LOBYTE(v40) = v32;
    v37 = [objc_allocWithZone(AALocalContactInfo) initWithFamilyDSID:v46 firstName:v33 lastName:v34 fullName:v35 appleID:v47 familyMemberType:v36 isChild:v40];

    v6 = v43;
    v5 = v44;
    v8 = v42;
    v9 = &selRef_setPath_;
    v3 = v45;
    if (!v37)
    {
      goto LABEL_9;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = &selRef_setPath_;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v7 != v43);
LABEL_49:
  v41(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_1002DB83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  (*(*a2 + 224))(sub_1002DC324, v9);
}

uint64_t sub_1002DB9A4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002DBA24()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonFamilyManager(uint64_t a1)
{
  result = qword_1003E7EA8;
  if (!qword_1003E7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DBB74(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002DBC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002DC63C;

  return sub_1002D98D0();
}

uint64_t sub_1002DBD50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002DBDF8;

  return sub_1002DA11C(a1, a2);
}

uint64_t sub_1002DBDF8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1002DBEF4(uint64_t a1, uint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching suggested family members.", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(FAFetchFamilyCircleRequest);

  v10 = [v9 init];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002DC2FC;
  *(v11 + 24) = v8;
  v13[4] = sub_1002DC62C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015858;
  v13[3] = &unk_1003B3950;
  v12 = _Block_copy(v13);

  [v10 startRequestWithCompletionHandler:v12];
  _Block_release(v12);
}

void sub_1002DC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(FAFetchFamilyCircleRequest);

  v10 = [v9 init];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002DC294;
  *(v11 + 24) = v8;
  v13[4] = sub_1002DC2DC;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015858;
  v13[3] = &unk_1003B38D8;
  v12 = _Block_copy(v13);

  [v10 startRequestWithCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1002DC254()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002DC2A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002DC2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002DC350(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7FD8, qword_100349ED0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002DC564;
  *(v9 + 24) = v7;
  aBlock[4] = sub_1002DC62C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B39F0;
  v10 = _Block_copy(aBlock);

  [v8 startRequestWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1002DC58C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(sub_100005814(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1002DC648(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003E7FD8, qword_100349ED0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003E7FD8, qword_100349ED0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1002DC6C8(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to fetch family circle: %@", v8, 0xCu);
      sub_100083380(v9);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else
  {
    if (a1)
    {
      v11 = [a1 members];
      sub_1002DCB28();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100005814(&qword_1003E8080, &qword_100349F28);
    v12 = Optional._bridgeToObjectiveC()();

    v22 = v12;
    sub_100005814(&qword_1003E7FD0, qword_100349F30);
    if (swift_dynamicCast())
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "All family members fetched.", v16, 2u);
      }

      a3(v21, 0);
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100008D04(v17, qword_1003FAA40);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "No family members returned.", v20, 2u);
      }

      type metadata accessor for AACustodianError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      a3(v22, 1);
    }
  }
}

unint64_t sub_1002DCB28()
{
  result = qword_1003E8088;
  if (!qword_1003E8088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E8088);
  }

  return result;
}

id sub_1002DCB74(uint64_t a1)
{
  v2 = [objc_allocWithZone(AAFTapToRadarRequest) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAlertTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setAlertDefaultButtonText:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setAlertCancelButtonText:v5];

  v6 = String._bridgeToObjectiveC()();
  [v2 setComponentName:v6];

  v7 = String._bridgeToObjectiveC()();
  [v2 setComponentVersion:v7];

  v8 = String._bridgeToObjectiveC()();
  [v2 setComponentID:v8];

  v9 = String._bridgeToObjectiveC()();
  [v2 setAlertMessage:v9];

  v10 = String._bridgeToObjectiveC()();
  [v2 setRadarTitle:v10];

  v11 = String._bridgeToObjectiveC()();
  [v2 setRadarDescription:v11];

  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setKeywordIDs:isa];

  [v2 setFullDiagnostic:*(a1 + 56)];
  return v2;
}

uint64_t sub_1002DCD58()
{

  v1 = OBJC_IVAR____TtC13appleaccountd27TapToRadarRequestController__helper;
  v2 = sub_100005814(&qword_1003E5498, &unk_1003480D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1002DCDFC()
{
  sub_1002DCD58();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRadarRequestController(uint64_t a1)
{
  result = qword_1003E80C0;
  if (!qword_1003E80C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DCEA8(uint64_t a1)
{
  sub_1002DCF50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002DCF50(uint64_t a1)
{
  if (!qword_1003E80D0)
  {
    sub_100016034(255, &qword_1003DF640, AAFTapToRadarHelper_ptr);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E80D0);
    }
  }
}

void *sub_1002DCFB8()
{
  v0[2] = 0xD000000000000021;
  v0[3] = 0x8000000100334270;
  v0[6] = 0x36323037383231;
  v0[7] = 0xE700000000000000;
  v0[4] = 0x6E4F6576694CLL;
  v0[5] = 0xE600000000000000;
  v0[8] = 0xD000000000000013;
  v0[9] = 0x80000001003342A0;
  v0[10] = 0x65756E69746E6F43;
  v0[11] = 0xE800000000000000;
  v0[12] = 0x6C65636E6143;
  v0[13] = 0xE600000000000000;
  v0[14] = 0x73412074276E6F44;
  v0[15] = 0xEF6E69616741206BLL;
  sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  Dependency.init(dependencyId:config:)();
  return v0;
}

__n128 sub_1002DD0BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002DD0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1002DD120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DD180(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA70);
  v11 = a3;
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v32 = a2;
    v33 = v7;
    v34 = v6;
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v15 = 136315394;
    [v12 scope];
    v16 = CKDatabaseScope.description.getter();
    v18 = sub_10021145C(v16, v17, &v37);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    if (a3)
    {
      v19 = [v11 data];
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_100166018(v20, v22);
      v30 = a3;
      v36 = v23;
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;
      sub_100012324(v20, v22);
      a3 = v30;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v7 = v33;
    v27 = sub_10021145C(v24, v26, &v37);

    *(v15 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Updated database change token. database: %s, token: %s", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v34;
    a2 = v32;
  }

  else
  {
  }

  sub_1002DD4BC(v35, a2);
  sub_1002DE040(a3, v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002DD4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  sub_1002DDBBC();
  v14[0] = a1;
  v14[1] = a2;

  v12._countAndFlagsBits = 0x6E656B6F742ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  URL.appendingPathComponent(_:)();

  return (v11)(v10, v4);
}

uint64_t sub_1002DD65C(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA70);
  v10 = a2;
  v11 = v2;
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v35 = v14;
    v36 = v6;
    v37 = v5;
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v15 = 136315650;
    [v11 scope];
    v16 = CKDatabaseScope.description.getter();
    v18 = sub_10021145C(v16, v17, &v40);

    *(v15 + 4) = v18;
    v38 = a2;
    *(v15 + 12) = 2080;
    v19 = [v12 zoneName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10021145C(v20, v22, &v40);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    a2 = v38;
    if (v38)
    {
      v24 = [v10 data];
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v39 = sub_100166018(v25, v27);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;
      v31 = v27;
      a2 = v38;
      sub_100012324(v25, v31);
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
    }

    v5 = v37;
    v32 = sub_10021145C(v28, v30, &v40);

    *(v15 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v13, v35, "Updated zone change token. database: %s, zoneID: %s, token: %s", v15, 0x20u);
    swift_arrayDestroy();

    v6 = v36;
  }

  else
  {
  }

  sub_1002DD9F0(v12);
  sub_1002DE040(a2, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002DD9F0(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v4 + 8))(v6, v3);
  sub_1002DDBBC();
  v7 = [a1 ownerName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  URL.appendPathComponent(_:)(v11);

  v12 = [a1 zoneName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v18._countAndFlagsBits = v13;
  v18._object = v15;
  v16._countAndFlagsBits = 0x6E656B6F742ELL;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  URL.appendPathComponent(_:)(v18);
}

void sub_1002DDBBC()
{
  v1 = [v0 scope];
  if (v1 == 3)
  {
    v2 = 0x646572616853;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 0x65746176697250;
LABEL_13:
    v3 = 0xE700000000000000;
    goto LABEL_14;
  }

  if (v1 != 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA58);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unknown CKDatabase.Scope!", v7, 2u);
    }

    v2 = 0x6E776F6E6B6E55;
    goto LABEL_13;
  }

  v2 = 0x63696C627550;
LABEL_7:
  v3 = 0xE600000000000000;
LABEL_14:
  URL.appendPathComponent(_:)(*&v2);
}

uint64_t sub_1002DDD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v22 = 0;
  LODWORD(v4) = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v22];

  v12 = v22;
  if (v4)
  {
    v13 = objc_opt_self();
    v22 = 0;
    v14 = v12;
    v15 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v22];
    v16 = v22;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100015D6C(v17, v19);
      sub_100255998(a2, 1, 0, 1, v17, v19);
      sub_100012324(v17, v19);
      return sub_100012324(v17, v19);
    }
  }

  else
  {
    v16 = v22;
  }

  v21 = v16;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1002DDF58()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1002DE040(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  if (a1)
  {
    v9 = a1;
    sub_1002DDD14(v9, a2);
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 fileExistsAtPath:v7];

    if (v8)
    {
      sub_1002DDF58();
    }
  }
}

uint64_t sub_1002DE5D0(uint64_t a1)
{
  v1 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  result = 0;
  if (v3)
  {
    v5 = Data.init(contentsOf:options:)();
    v7 = v6;
    sub_100016034(0, &qword_1003E1678, NSKeyedUnarchiver_ptr);
    sub_100005814(&unk_1003E1680, &qword_1003447F8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10033EB30;
    *(v8 + 32) = sub_100016034(0, &qword_1003E81C8, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_100012324(v5, v7);

    if (v9[3])
    {
      if (swift_dynamicCast())
      {
        return v9[4];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10000DC50(v9);
      return 0;
    }
  }

  return result;
}

void sub_1002DE8D4()
{
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [v0 setQualityOfService:25];
  }

  v1 = [v0 configuration];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 setAutomaticallyRetryNetworkFailures:0];

  v3 = [v0 configuration];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setDiscretionaryNetworkBehavior:0];
}

uint64_t sub_1002DE99C(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    return v4[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002DEA80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002DE99C(v5);
  if (v8)
  {
    v9 = v8;
    if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
    {
      v10 = sub_10030B6CC();

      if (v10)
      {
        swift_getErrorValue();
        v11 = sub_1002DEA80(v15[1], v15[2]);

        return v11;
      }
    }
  }

  (*(v4 + 16))(v7, v2, a1);
  v12 = _getErrorEmbeddedNSError<A>(_:)();
  if (v12)
  {
    v11 = v12;
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v11 = swift_allocError();
    (*(v4 + 32))(v13, v7, a1);
  }

  return v11;
}

BOOL sub_1002DEC1C(uint64_t a1, uint64_t a2)
{
  sub_1002DEA80(a1, a2);
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = sub_1002DECD0(v4, 0xE);
  }

  else
  {

    return 0;
  }

  return v2;
}

BOOL sub_1002DECD0(void *a1, void *a2)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  _BridgedStoredNSError.code.getter();

  v3 = sub_1002DF114(v6, a1);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

uint64_t sub_1002DED90(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = result;

    return v4;
  }

  return result;
}

_BYTE *sub_1002DEE74(void *a1)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v10[0];
  _BridgedStoredNSError.code.getter();

  result = sub_1002DF114(v11, a1);
  if (result)
  {
    v3 = result;
    v12 = result;
    v4 = _BridgedStoredNSError.userInfo.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v4 + 16))
    {
      v7 = sub_1003084DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_10000DB1C(*(v4 + 56) + 32 * v7, v10);

        sub_1002DF62C();
        if (swift_dynamicCast())
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002DEFEC(uint64_t a1)
{
  type metadata accessor for CKError(0);
  sub_1002DF38C();
  v1 = _BridgedStoredNSError.userInfo.getter();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  v4 = sub_1003084DC(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_10000DB1C(*(v1 + 56) + 32 * v4, v9);

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002DF114(void *a1, void *a2)
{
  v2 = a2;
  *&v28[0] = a2;
  type metadata accessor for CKError(0);
  sub_1002DF38C();
  _BridgedStoredNSError.code.getter();
  v22 = a1;
  if (*&v26[0] == a1)
  {
    v4 = v2;
    return v2;
  }

  *&v28[0] = v2;
  _BridgedStoredNSError.code.getter();
  if (*&v26[0] != 2)
  {
    return 0;
  }

  result = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (!result)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  v8 = result + 64;
  v9 = 1 << result[32];
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 8);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = v7;
LABEL_20:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v13 << 6);
    sub_1000D1064(*(v6 + 6) + 40 * v17, v26);
    v18 = *(*(v6 + 7) + 8 * v17);
    v23 = v26[0];
    v24 = v26[1];
    v19 = v27;
    swift_errorRetain();
    v20 = v23;
    v21 = v24;
LABEL_21:
    v28[0] = v20;
    v28[1] = v21;
    v29 = v19;
    v30 = v18;
    if (!*(&v21 + 1))
    {

      return 0;
    }

    *&v26[0] = v18;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    if (swift_dynamicCast())
    {
      v2 = v25;
      *&v26[0] = v25;
      _BridgedStoredNSError.code.getter();

      if (v25 == v22)
      {

        sub_1000526B0(v28);
        return v2;
      }
    }

    else
    {
    }

    result = sub_1000526B0(v28);
  }

  if (v12 <= v7 + 1)
  {
    v14 = v7 + 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      v19 = 0;
      v18 = 0;
      v11 = 0;
      v20 = 0uLL;
      v7 = v15;
      v21 = 0uLL;
      goto LABEL_21;
    }

    v11 = *&v8[8 * v13];
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002DF38C()
{
  result = qword_1003DA8D0;
  if (!qword_1003DA8D0)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA8D0);
  }

  return result;
}

void *sub_1002DF3E4(void *a1)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v20 = v18[0];
  _BridgedStoredNSError.code.getter();

  v2 = sub_1002DF114(v19, a1);
  if (v2)
  {
    v3 = v2;
    v20 = v2;
    v4 = _BridgedStoredNSError.userInfo.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v4 + 16))
    {
      v7 = sub_1003084DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_10000DB1C(*(v4 + 56) + 32 * v7, v18);

        sub_1002DF62C();
        if (swift_dynamicCast())
        {
          v10 = v19;
        }

        else
        {
          v10 = 0;
        }

LABEL_10:
        v20 = v3;
        v11 = _BridgedStoredNSError.userInfo.getter();
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v11 + 16))
        {
          v14 = sub_1003084DC(v12, v13);
          v16 = v15;

          if (v16)
          {
            sub_10000DB1C(*(v11 + 56) + 32 * v14, v18);

            sub_1002DF62C();
            swift_dynamicCast();
            return v10;
          }
        }

        else
        {
        }

        return v10;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1002DF62C()
{
  result = qword_1003E0E18;
  if (!qword_1003E0E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0E18);
  }

  return result;
}

uint64_t sub_1002DF678(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1002FAEE0(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DF794(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1002FAEE0(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CKRecord.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SQLInterpolation();
  __chkstk_darwin(v2 - 8);
  v96 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SQL();
  v5 = *(v4 - 8);
  v98 = v4;
  v99 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v82 - v9;
  if (![objc_opt_self() isInternalBuild])
  {
    return 0x657463616465723CLL;
  }

  v95 = v8;
  v100._countAndFlagsBits = 30768;
  v100._object = 0xE200000000000000;
  v101 = v0;
  sub_1002E01D0();
  v11._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v11);

  object = v100._object;
  countAndFlagsBits = v100._countAndFlagsBits;
  v13 = [v0 recordID];
  v14 = [v13 zoneID];

  v15 = [v0 recordID];
  v16 = [v15 recordName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v100._countAndFlagsBits = v17;
  v100._object = v19;
  v20._countAndFlagsBits = 10298;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21 = [v14 zoneName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 58;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27 = [v14 ownerName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v88 = v100;
  v33 = [v1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  v34 = [v33 changedKeys];
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = sub_1002E225C(v35);

  v97 = v33;
  v37 = [v33 allKeys];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v100._countAndFlagsBits = v38;

  sub_1002E1058(&v100);

  v39 = v100._countAndFlagsBits;
  v40 = [v1 recordChangeTag];
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v39 = v41;
    v100._countAndFlagsBits = 0x3D676174202CLL;
    v100._object = 0xE600000000000000;
    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v48 = v100._countAndFlagsBits;
    v47 = v100._object;
    v49 = *(v41 + 16);
    if (v49)
    {
LABEL_4:
      v83 = v48;
      v84 = v47;
      v85 = object;
      v86 = v14;
      v87 = v10;
      v101 = _swiftEmptyArrayStorage;
      v93 = v49;
      sub_1002E0560(0, v49, 0);
      v50 = 0;
      v51 = v101;
      v82[1] = v39;
      v52 = v36 + 56;
      v91 = v99 + 32;
      v92 = v39 + 32;
      v90 = v36;
      while (1)
      {
        v53 = (v92 + 16 * v50);
        v55 = *v53;
        v54 = v53[1];
        if (*(v36 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v56 = Hasher._finalize()();
          v57 = -1 << *(v36 + 32);
          v58 = v56 & ~v57;
          if ((*(v52 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
          {
            v59 = ~v57;
            while (1)
            {
              v60 = (*(v36 + 48) + 16 * v58);
              v61 = *v60 == v55 && v60[1] == v54;
              if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v58 = (v58 + 1) & v59;
              if (((*(v52 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v100._countAndFlagsBits = v55;
            v100._object = v54;

            v64._countAndFlagsBits = 42;
            v64._object = 0xE100000000000000;
            String.append(_:)(v64);
            v62 = v100._countAndFlagsBits;
            v63 = v100._object;
            goto LABEL_18;
          }
        }

        else
        {
        }

LABEL_16:

        v62 = v55;
        v63 = v54;
LABEL_18:
        SQLInterpolation.init(literalCapacity:interpolationCount:)();
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        SQLInterpolation.appendLiteral(_:)(v65);
        v100._countAndFlagsBits = v62;
        v100._object = v63;
        sub_1000709A0();
        SQLInterpolation.appendInterpolation<A>(_:)();

        v66._countAndFlagsBits = 2112800;
        v66._object = 0xE300000000000000;
        SQLInterpolation.appendLiteral(_:)(v66);
        CKRecordKeyValueSetting.subscript.getter();
        v67 = v100._countAndFlagsBits;
        if (v100._object)
        {
          v68 = v100._object;
        }

        else
        {
          v67 = 0;
          v68 = 0xE000000000000000;
        }

        v100._countAndFlagsBits = v67;
        v100._object = v68;
        SQLInterpolation.appendInterpolation<A>(_:)();

        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        SQLInterpolation.appendLiteral(_:)(v69);
        v70 = v95;
        SQL.init(stringInterpolation:)();

        v101 = v51;
        v72 = v51[2];
        v71 = v51[3];
        if (v72 >= v71 >> 1)
        {
          sub_1002E0560((v71 > 1), v72 + 1, 1);
          v51 = v101;
        }

        ++v50;
        v51[2] = v72 + 1;
        (*(v99 + 32))(v51 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v72, v70, v98);
        v36 = v90;
        if (v50 == v93)
        {

          v10 = v87;
          v14 = v86;
          object = v85;
          v47 = v84;
          v48 = v83;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v48 = 0;
    v47 = 0xE000000000000000;
    v49 = *(v39 + 16);
    if (v49)
    {
      goto LABEL_4;
    }
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_28:
  v100._countAndFlagsBits = v51;
  sub_100005814(&qword_1003E81D8, &qword_10034A048);
  sub_1002E22F4();
  Collection<>.joined(separator:)();

  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v74._countAndFlagsBits = 0x726F6365524B433CLL;
  v74._object = 0xEB00000000203A64;
  String.append(_:)(v74);
  v75._countAndFlagsBits = countAndFlagsBits;
  v75._object = object;
  String.append(_:)(v75);

  v76._countAndFlagsBits = 0x64726F636572203BLL;
  v76._object = 0xEB000000003D6449;
  String.append(_:)(v76);
  String.append(_:)(v88);

  v77._countAndFlagsBits = v48;
  v77._object = v47;
  String.append(_:)(v77);

  v78._countAndFlagsBits = 31520;
  v78._object = 0xE200000000000000;
  String.append(_:)(v78);
  v79 = v98;
  _print_unlocked<A, B>(_:_:)();
  v80._countAndFlagsBits = 15997;
  v80._object = 0xE200000000000000;
  String.append(_:)(v80);
  swift_unknownObjectRelease();

  v73 = v100._countAndFlagsBits;
  (*(v99 + 8))(v10, v79);
  return v73;
}

unint64_t sub_1002E01D0()
{
  result = qword_1003E81D0;
  if (!qword_1003E81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E81D0);
  }

  return result;
}

char *sub_1002E0224(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E05A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E0244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E81F8, &qword_10034A060, type metadata accessor for CustodianshipInfoRecord);
  *v3 = result;
  return result;
}

void *sub_1002E0288(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8238, &qword_10034A0A0, type metadata accessor for CustodianRecord);
  *v3 = result;
  return result;
}

void *sub_1002E02CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E06B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E02EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0C20(a1, a2, a3, *v3, &qword_1003E81E8, &qword_10034A050, &qword_1003E12A8, &qword_100344710);
  *v3 = result;
  return result;
}

void *sub_1002E032C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8260, &qword_10034A0C8, type metadata accessor for KeyRepairContext);
  *v3 = result;
  return result;
}

void *sub_1002E0370(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8258, &qword_10034A0C0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_1002E03B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E07E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002E03D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E03F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E81F0, &qword_10034A058, type metadata accessor for InheritanceInvitationRecord);
  *v3 = result;
  return result;
}

void *sub_1002E0438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8230, &qword_10034A098, type metadata accessor for BeneficiaryInfoRecord);
  *v3 = result;
  return result;
}

void *sub_1002E047C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8200, &qword_10034A068, type metadata accessor for BenefactorInfoRecord);
  *v3 = result;
  return result;
}

char *sub_1002E04C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0A28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002E04E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E0500(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0C20(a1, a2, a3, *v3, &qword_1003E8218, &qword_10034A080, &unk_1003DABD0, &qword_10033E720);
  *v3 = result;
  return result;
}

char *sub_1002E0540(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E0560(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8268, &qword_10034A0D0, &type metadata accessor for SQL);
  *v3 = result;
  return result;
}

char *sub_1002E05A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E3908, &qword_100346C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002E06B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8240, &qword_10034A0A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(&qword_1003E8248, &qword_10034A0B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002E07E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8250, &qword_10034A0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002E0918(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8228, &qword_10034A090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002E0A28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8208, &qword_10034A070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1002E0B2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8210, &qword_10034A078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1002E0C20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100005814(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1002E0D54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&qword_1003E8220, &qword_10034A088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002E0E7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005814(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_1002E1058(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002E1C34(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002E10C4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1002E10C4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002E128C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002E11BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002E11BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E128C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002E1B1C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1002E1868((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002E1B30(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1002E1B30((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1002E1868((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002E1B1C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1002E1A90(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1002E1868(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1002E1A90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002E1B1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}