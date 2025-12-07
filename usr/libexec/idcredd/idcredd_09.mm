Swift::Int sub_10010436C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203600, &qword_1001ADE58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1001045CC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - v4;
  v5 = *v1;
  sub_100004E70(&qword_100203458, &qword_1001ADD08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100104938(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100103120(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100105B74();
      goto LABEL_12;
    }

    sub_100106804(v10 + 1);
  }

  v12 = *v3;
  sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100112C20(&qword_100203688, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100104BDC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10010347C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100105DAC();
      goto LABEL_16;
    }

    sub_100106B20(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100104D5C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001036DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100105F08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100106D58(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100104E7C(unint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100103900(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100106048();
      goto LABEL_12;
    }

    sub_100106F48(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  sub_10010C3E4(v19, result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100004E70(&qword_100201548, &qword_1001AB908);

      v13 = sub_1000FD5F4(v12, result);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100105008(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100103CB0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100106198();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001072E0(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100105154(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_100103F00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001062D8();
      goto LABEL_25;
    }

    sub_100107500(v6 + 1);
  }

  v8 = *result;
  v9 = result[1];
  v10 = result[2];
  v11 = result[3];
  v13 = result[4];
  v12 = result[5];
  v14 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v38 = v11;
  v39 = v10;
  String.hash(into:)();
  v36 = v13;
  sub_10010B61C(v40, v13, sub_10010B8E0);
  v35 = v12;
  sub_10010B61C(v40, v12, sub_10010B784);
  v15 = Hasher._finalize()();
  v16 = v14 + 56;
  v37 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    do
    {
      v19 = (*(v37 + 48) + 48 * a2);
      v20 = v19[2];
      v21 = v19[3];
      v23 = v19[4];
      v22 = v19[5];
      v24 = *v19 == v8 && v19[1] == v9;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = v20 == v39 && v21 == v38;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (sub_1000FFD38(v23, v36, sub_10010BCD4))
          {
            v26 = sub_1000FFD38(v22, v35, sub_10010BB1C);

            if (v26)
            {
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }

          else
          {
          }
        }
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v27 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = (*(v27 + 48) + 48 * a2);
  v29 = *(result + 1);
  *v28 = *result;
  v28[1] = v29;
  v28[2] = *(result + 2);
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }
}

Swift::Int sub_10010543C(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10010436C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100106468();
        goto LABEL_68;
      }

      sub_100107960(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_100009708(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_100009708(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_100009708(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v41;
              a2 = v42;
              sub_100100058(v34, v41, v42, v50);
              result = sub_1000092BC(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_100009708(v20, v19);
            v13 = v46;
          }

          sub_100100058(v50, v7, a2, &v49);
          result = sub_1000092BC(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

uint64_t sub_1001058B4(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v6 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v7;
  v28 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001045CC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001065C4();
      goto LABEL_12;
    }

    sub_100107B9C(v10 + 1);
  }

  v12 = *v3;
  sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v29 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = v7 + 16;
    v18 = *(v7 + 16);
    v19 = *(v17 + 56);
    do
    {
      v18(v9, *(v29 + 48) + v19 * a2, v6);
      sub_1001126D8(&qword_100203470, &qword_100203478, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v6);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = v27;
  v22 = *v28;
  *(v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v21 + 32))(*(v22 + 48) + *(v21 + 72) * a2, v30, v6);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100105B74()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_100203690, &qword_1001ADED8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void sub_100105DAC()
{
  v1 = v0;
  sub_100004E70(&qword_100203430, &qword_1001ADCE0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

void *sub_100105F08()
{
  v1 = v0;
  sub_100004E70(&qword_100203620, &qword_1001ADE78);
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

void sub_100106048()
{
  v1 = v0;
  sub_100004E70(&qword_100203590, &qword_1001ADDF8);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_100106198()
{
  v1 = v0;
  sub_100004E70(&qword_100203558, &qword_1001ADDC8);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void sub_1001062D8()
{
  v1 = v0;
  sub_100004E70(&qword_1002034B0, &qword_1001ADD30);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
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

void *sub_100106468()
{
  v1 = v0;
  sub_100004E70(&qword_100203600, &qword_1001ADE58);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100009708(v18, *(&v18 + 1));
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

void *sub_1001065C4()
{
  v1 = v0;
  v2 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  sub_100004E70(&qword_100203458, &qword_1001ADD08);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100106804(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for CocoaError.Code();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100004E70(&qword_100203690, &qword_1001ADED8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100106B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203430, &qword_1001ADCE0);
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100106D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203620, &qword_1001ADE78);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

void sub_100106F48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203590, &qword_1001ADDF8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_38:
    *v2 = v5;
    return;
  }

  v32 = v2;
  v33 = v3;
  v6 = 0;
  v7 = v3 + 56;
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
  v12 = v4 + 56;
  v34 = v4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
    Hasher.init(_seed:)();
    if (v17 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      Hasher._combine(_:)(v23);
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      Hasher._combine(_:)(*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_41;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {

      v19 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ++v19;
        type metadata accessor for SecCertificate(0);
        sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
        _CFObject.hash(into:)();
        swift_unknownObjectRelease();
      }

      while (v18 != v19);
    }

    else
    {
      v20 = (v17 + 32);

      type metadata accessor for SecCertificate(0);
      sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
      do
      {
        v21 = *v20++;
        v22 = v21;
        _CFObject.hash(into:)();

        --v18;
      }

      while (v18);
    }

LABEL_27:
    v24 = Hasher._finalize()();
    v5 = v34;
    v25 = -1 << *(v34 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v12 + 8 * v27);
        if (v31 != -1)
        {
          v13 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_40;
    }

    v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v34 + 48) + 8 * v13) = v17;
    ++*(v34 + 16);
    v3 = v33;
    v10 = v35;
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v32;
      goto LABEL_38;
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v35 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

Swift::Int sub_1001072E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203558, &qword_1001ADDC8);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_100107500(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_1002034B0, &qword_1001ADD30);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v39 = v1;
    v40 = v3 + 56;
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
    v41 = v4 + 56;
    v42 = v10;
    v43 = v4;
    v44 = v3;
LABEL_7:
    if (v9)
    {
      v13 = __clz(__rbit64(v9));
      v47 = (v9 - 1) & v9;
LABEL_14:
      v16 = (*(v3 + 48) + 48 * (v13 | (v6 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v21 = v16[4];
      v22 = v16[5];
      Hasher.init(_seed:)();

      v48 = v22;

      v46 = v18;
      String.hash(into:)();
      v45 = v20;
      String.hash(into:)();
      v23 = 1 << *(v21 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v21 + 64);
      v26 = (v23 + 63) >> 6;

      v27 = 0;
      v28 = 0;
      if (v25)
      {
        while (1)
        {
          v29 = v28;
LABEL_23:
          v30 = *(*(v21 + 56) + 8 * (__clz(__rbit64(v25)) | (v29 << 6)));
          v25 &= v25 - 1;
          v51 = v56;
          v52 = v57;
          v53 = v58;
          v49 = v54;
          v50 = v55;

          String.hash(into:)();

          sub_10010B8E0(&v49, v30);

          v27 ^= Hasher._finalize()();
          if (!v25)
          {
            goto LABEL_19;
          }
        }
      }

      while (1)
      {
LABEL_19:
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v29 >= v26)
        {
          break;
        }

        v25 = *(v21 + 64 + 8 * v29);
        ++v28;
        if (v25)
        {
          v28 = v29;
          goto LABEL_23;
        }
      }

      Hasher._combine(_:)(v27);
      v31 = 1 << *(v48 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v48 + 64);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      for (i = 0; v33; v35 ^= Hasher._finalize()())
      {
        v37 = i;
LABEL_34:
        v38 = *(*(v48 + 56) + 8 * (__clz(__rbit64(v33)) | (v37 << 6)));
        v33 &= v33 - 1;
        v51 = v56;
        v52 = v57;
        v53 = v58;
        v49 = v54;
        v50 = v55;

        String.hash(into:)();

        sub_10010B784(&v49, v38);
      }

      while (1)
      {
        v37 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v37 >= v34)
        {

          Hasher._combine(_:)(v35);
          Hasher._finalize()();
          v5 = v43;
          v11 = _HashTable.nextHole(atOrAfter:)();
          *(v41 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          v12 = (*(v43 + 48) + 48 * v11);
          *v12 = v17;
          v12[1] = v46;
          v12[2] = v19;
          v12[3] = v45;
          v12[4] = v21;
          v12[5] = v48;
          ++*(v43 + 16);
          v3 = v44;
          v10 = v42;
          v9 = v47;
          goto LABEL_7;
        }

        v33 = *(v48 + 64 + 8 * v37);
        ++i;
        if (v33)
        {
          i = v37;
          goto LABEL_34;
        }
      }

LABEL_40:
      __break(1u);
    }

    else
    {
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

          v2 = v39;
          goto LABEL_38;
        }

        v15 = *(v40 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v47 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_38:
    *v2 = v5;
  }
}

Swift::Int sub_100107960(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203600, &qword_1001ADE58);
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      sub_100009708(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100107B9C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_100004E70(&qword_100203458, &qword_1001ADD08);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100107EC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004E70(&qword_1002034E0, &qword_1001ADD60);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
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
      if (v33)
      {
        sub_100009268(v24, v34);
      }

      else
      {
        sub_10000B558(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100009268(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100108180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004E70(&qword_100203500, &qword_1001ADD70);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100108440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004E70(&qword_100203640, &qword_1001ADE98);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100009708(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100108710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - v6;
  v7 = *v2;
  sub_100004E70(&qword_100203518, &qword_1001ADD88);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100108AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PresentmentProposal(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004E70(&qword_1002035D8, &qword_1001ADE38);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
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
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100112A2C(v28, v41);
      }

      else
      {
        sub_100112914(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100112A2C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100108DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for AnyCodable();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004E70(&qword_100203530, &qword_1001ADDA0);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_10010917C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100004E70(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
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
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_10010941C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004E70(&qword_100203630, &qword_1001ADE88);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100032EBC(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1001096D8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100009268(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100109748(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void sub_100109790()
{
  v1 = v0;
  sub_100004E70(&qword_1002034E0, &qword_1001ADD60);
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
        sub_10000B558(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100009268(v25, (*(v4 + 56) + v22));
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

void sub_100109934()
{
  v1 = v0;
  sub_100004E70(&qword_100203500, &qword_1001ADD70);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_100109AD8()
{
  v1 = v0;
  sub_100004E70(&qword_100203640, &qword_1001ADE98);
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

        result = sub_100009708(v22, *(&v22 + 1));
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

void sub_100109C70()
{
  v1 = v0;
  v35 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - v2;
  sub_100004E70(&qword_100203518, &qword_1001ADD88);
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

void sub_100109F0C()
{
  v1 = v0;
  v2 = type metadata accessor for PresentmentProposal(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_1002035D8, &qword_1001ADE38);
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
        sub_100112914(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100112A2C(v25, *(v27 + 56) + v26);
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

void sub_10010A13C()
{
  v1 = v0;
  v35 = type metadata accessor for AnyCodable();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_100203530, &qword_1001ADDA0);
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

void sub_10010A3D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100004E70(a1, a2);
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

void *sub_10010A530()
{
  v1 = v0;
  sub_100004E70(&qword_100203630, &qword_1001ADE88);
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

        result = sub_100032EBC(v22, *(&v22 + 1));
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

char *sub_10010A6B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010AA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10010A6D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_1002035A8, &qword_1001ADE08, &type metadata accessor for ISO18013KnownDocTypes);
  *v3 = result;
  return result;
}

char *sub_10010A718(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010AB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10010A738(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010AC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10010A758(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010ADA8(a1, a2, a3, *v3, &qword_100203410, &qword_1001ADCC0, &qword_1002004D8, &qword_1001ACBF0);
  *v3 = result;
  return result;
}

void *sub_10010A798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035B8, &qword_1001ADE18, &qword_100201548, &qword_1001AB908);
  *v3 = result;
  return result;
}

void *sub_10010A7D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010ADA8(a1, a2, a3, *v3, &qword_1002035A0, &qword_1001ADE00, &qword_1002014F8, &qword_1001AB880);
  *v3 = result;
  return result;
}

void *sub_10010A818(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035B0, &qword_1001ADE10, &qword_100201580, &qword_1001AB980);
  *v3 = result;
  return result;
}

void *sub_10010A858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_1002035C8, &qword_1001ADE28, &qword_1002035D0, &qword_1001ADE30);
  *v3 = result;
  return result;
}

void *sub_10010A898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100203650, &qword_1001ADEA8, &qword_1002018D0, &qword_1001AAEA0);
  *v3 = result;
  return result;
}

void *sub_10010A8D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100201EC0, &qword_1001ACC48, &qword_100203570, &qword_1001ADDE0);
  *v3 = result;
  return result;
}

void *sub_10010A918(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100201EB0, &qword_1001ACC38, &type metadata accessor for DocumentRequest);
  *v3 = result;
  return result;
}

void *sub_10010A95C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100201EB8, &qword_1001ACC40, &type metadata accessor for CredentialPresentmentRequest.UseCase);
  *v3 = result;
  return result;
}

void *sub_10010A9A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010AF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10010A9C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_1002035C0, &qword_1001ADE20, &type metadata accessor for Certificate);
  *v3 = result;
  return result;
}

void *sub_10010AA04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B0C4(a1, a2, a3, *v3, &qword_100203610, &qword_1001ADE68, &qword_100203618, &qword_1001ADE70);
  *v3 = result;
  return result;
}

void *sub_10010AA44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010B1F8(a1, a2, a3, *v3, &qword_100203608, &qword_1001ADE60, &type metadata accessor for DocumentRequest.DataElement);
  *v3 = result;
  return result;
}

char *sub_10010AA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
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

char *sub_10010AB94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203678, &qword_1001ADED0);
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

char *sub_10010AC98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
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

void *sub_10010ADA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004E70(a5, a6);
  v16 = *(sub_100004E70(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100004E70(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10010AF90(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(&qword_100200468, &qword_1001AAE98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10010B0C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100004E70(a5, a6);
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
    sub_100004E70(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10010B1F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100004E70(a5, a6);
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

uint64_t sub_10010B3D4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t sub_10010B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for PresentmentProposal(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

  if (v17 < 1)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

  result = sub_100112914(a4, v15);
  if (v12 >= v17)
  {
    return sub_10000A0D4(a4, &qword_1002024B8, &qword_1001ACFB0);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_10010B61C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  for (i = 0; v8; v10 ^= Hasher._finalize()())
  {
    v12 = i;
LABEL_9:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v8 &= v8 - 1;
    v14 = *(a1 + 48);
    v17[2] = *(a1 + 32);
    v17[3] = v14;
    v18 = *(a1 + 64);
    v15 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v15;

    String.hash(into:)();

    a3(v17, v13);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      Hasher._combine(_:)(v10);
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10010B784(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_10010B8E0(__int128 *a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      Hasher._combine(_:)(v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10010BB1C(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010BCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1001126D8(&qword_100203470, &qword_100203478, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
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
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C0A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000464D0(&qword_100201550, &qword_100201548, &qword_1001AB908);
          for (i = 0; i != v6; ++i)
          {
            sub_100004E70(&qword_100201548, &qword_1001AB908);
            v9 = sub_10011EC60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecCertificate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C230(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = type metadata accessor for ISO18013Package.Document();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10010C304(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10010C3E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v8);
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      ++v4;
      type metadata accessor for SecCertificate(0);
      sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
      _CFObject.hash(into:)();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for SecCertificate(0);
    sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
    do
    {
      v6 = *v5++;
      v7 = v6;
      _CFObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10010C574@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10010C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100100058(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_10010C6F8(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004E70(&qword_100201078, &qword_1001AB528);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v9, v5, &unk_100201890, &unk_1001AA550);
      result = sub_100101AB4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10001AA08(&v5[v8], v7[7] + 40 * v13);
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

uint64_t sub_10010C8E8(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100101F34(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

unint64_t sub_10010CA84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_1002034E0, &qword_1001ADD60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100046360(v4, &v13, &qword_100200490, &unk_1001AAEE0);
      v5 = v13;
      v6 = v14;
      result = sub_100099644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100009268(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10010CBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203560, &qword_1001ADDD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
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

unint64_t sub_10010CCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203640, &qword_1001ADE98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100009708(v7, v8);
      result = sub_100099644(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_10010CDF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203668, &qword_1001ADEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_10010CEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203520, &qword_1001ADD90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100046360(v4, v13, &qword_100203528, &qword_1001ADD98);
      result = sub_100101B4C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009268(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10010D068(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002035E0, &qword_1001ADE40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004E70(&qword_1002035D8, &qword_1001ADE38);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v9, v5, &qword_1002035E0, &qword_1001ADE40);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100099644(*v5, v12);
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
      v18 = type metadata accessor for PresentmentProposal(0);
      result = sub_100112A2C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
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

unint64_t sub_10010D23C(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203548, &qword_1001ADDB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004E70(&qword_100203530, &qword_1001ADDA0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100046360(v9, v5, &qword_100203548, &qword_1001ADDB8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100099644(*v5, v12);
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
      v18 = type metadata accessor for AnyCodable();
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

unint64_t sub_10010D43C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004E70(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100099644(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *sub_10010D538(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004E70(&qword_100203658, &qword_1001ADEB0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100101BD4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
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

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100101BD4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010D640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100102214(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10010D6D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100004E70(&qword_100201548, &qword_1001AB908);
  sub_100112978();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100102444(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10010D774(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001127AC();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v12[0] = *(v4 - 5);
      v12[1] = v5;
      v12[2] = v6;
      v12[3] = v7;
      v12[4] = v8;
      v12[5] = v9;

      sub_10010267C(&v10, v12);

      v4 += 6;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10010D848(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100112A90();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100009708(v6, *v4);
      sub_10010299C(v7, v6, v5);
      sub_1000092BC(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10010D8E4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10010D938(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100004E70(&qword_1002034E8, &qword_1001ADD68);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100112C20(&qword_1002034F0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100112C20(&qword_1002034F8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10010DC58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

Swift::Int sub_10010DD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203558, &qword_1001ADDC8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10010DE54(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100004E70(&qword_100203458, &qword_1001ADD08);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1001126D8(&qword_100203470, &qword_100203478, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10010E190(void *a1, void (**a2)(char *, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, __n128), unint64_t a8)
{
  v215 = a8;
  v214 = a7;
  v207 = a3;
  v206 = a2;
  v213 = a1;
  v11 = sub_100004E70(&qword_1002033E8, &qword_1001ADC98);
  __chkstk_darwin(v11 - 8);
  v203 = &v166 - v12;
  v202 = type metadata accessor for IDCSAnalytics.ElementFallbackAlgorithm();
  v167 = *(v202 - 8);
  __chkstk_darwin(v202);
  v201 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004E70(&qword_1002033F0, &qword_1001ADCA0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v166 - v18;
  v212 = sub_100004E70(&qword_1002033F8, &qword_1001ADCA8);
  v204 = *(v212 - 8);
  v20 = __chkstk_darwin(v212);
  v194 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v174 = &v166 - v22;
  v192 = type metadata accessor for ISO18013IssuerSignedItem();
  v23 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for IDCSAnalytics.NamespaceElement();
  v168 = *(v211 - 8);
  v25 = __chkstk_darwin(v211);
  v200 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v176 = &v166 - v28;
  v29 = __chkstk_darwin(v27);
  v175 = &v166 - v30;
  v31 = __chkstk_darwin(v29);
  v173 = &v166 - v32;
  __chkstk_darwin(v31);
  v172 = &v166 - v33;
  v178 = type metadata accessor for Logger();
  v34 = *(v178 - 8);
  v35 = __chkstk_darwin(v178);
  v37 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v166 - v38;
  v40 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  __chkstk_darwin(v40 - 8);
  v177 = &v166 - v41;
  v208 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  __chkstk_darwin(v208);
  v199 = &v166 - v43;
  if (*(a4 + 16) && (v193 = v42, v44 = sub_100099644(a5, a6), v45 = v193, (v46 & 1) != 0))
  {
    v47 = a5;
    v195 = v19;
    v196 = v17;
    v48 = *(a4 + 56);
    v49 = *(v193 + 16);
    v187 = *(v193 + 72);
    v189 = v193 + 16;
    v188 = v49;
    v49(v199, (v48 + v187 * v44), v208);
    v190 = v213[2];
    if (v190)
    {
      v50 = 0;
      v51 = a4 + 64;
      v186 = v213 + 4;
      v171 = (v45 + 56);
      v170 = (v34 + 8);
      v169 = "s from ISO18013 package";
      v181 = v45 + 8;
      v180 = (v23 + 8);
      v179 = (v168 + 32);
      v52 = _swiftEmptyArrayStorage;
      *(&v53 + 1) = 2;
      v205 = xmmword_1001AA160;
      *&v53 = 136315138;
      v166 = v53;
      v209 = _swiftEmptyArrayStorage;
      v185 = v47;
      v184 = a6;
      v182 = a4;
      v183 = v39;
LABEL_8:
      v213 = v52;
      v56 = &v186[2 * v50];
      v57 = v56[1];
      v210 = *v56;
      v198 = v50 + 1;
      v58 = 1 << *(a4 + 32);
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v60 = v59 & *(a4 + 64);
      v61 = (v58 + 63) >> 6;

      v62 = a4;

      v63 = 0;
      v64 = _swiftEmptyArrayStorage;
      while (1)
      {
        v65 = v63;
        if (!v60)
        {
          break;
        }

LABEL_16:
        v66 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v67 = (*(v62 + 48) + ((v63 << 10) | (16 * v66)));
        v69 = *v67;
        v68 = v67[1];

        (v214)(v69, v68);
        if (v70)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100100418(0, *(v64 + 2) + 1, 1, v64);
          }

          v72 = *(v64 + 2);
          v71 = *(v64 + 3);
          v73 = (v72 + 1);
          if (v72 >= v71 >> 1)
          {
            v197 = (v72 + 1);
            v75 = sub_100100418((v71 > 1), v72 + 1, 1, v64);
            v73 = v197;
            v64 = v75;
          }

          *(v64 + 2) = v73;
          v74 = &v64[16 * v72];
          *(v74 + 4) = v69;
          *(v74 + 5) = v68;
        }
      }

      while (1)
      {
        v63 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v63 >= v61)
        {
          a4 = v62;

          v217 = v64;
          sub_100004E70(&qword_100201580, &qword_1001AB980);
          sub_1000464D0(&qword_100202448, &qword_100201580, &qword_1001AB980);
          Collection.nilIfEmpty.getter();

          if (v216)
          {
            sub_100004E70(&qword_100203420, &qword_1001ADCD0);
            inited = swift_initStackObject();
            *(inited + 16) = v205;
            *(inited + 32) = v206;
            *(inited + 40) = v207;

            v78 = sub_10010D640(v77);

            *(inited + 48) = v78;
            v197 = sub_10010D43C(inited, &qword_100203480, &qword_1001ADD10);
            swift_setDeallocating();
            sub_10000A0D4(inited + 32, &qword_100203428, &qword_1001ADCD8);
          }

          else
          {
            v197 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
          }

          v79 = v184;
          v80 = v183;
          v81 = v210;
          (v214)(v210, v57);
          v82 = v185;
          if (v83)
          {
LABEL_30:
            if (v81 == v82 && v57 == v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_100004E70(&qword_100203408, &qword_1001ADCB8);
              v88 = swift_initStackObject();
              *(v88 + 16) = v205;
              *(v88 + 32) = v206;
              *(v88 + 40) = v207;
              sub_100004E70(&qword_100203410, &qword_1001ADCC0);
              v89 = v193;
              v90 = (*(v193 + 80) + 32) & ~*(v193 + 80);
              v91 = swift_allocObject();
              *(v91 + 16) = v205;
              v92 = v208;
              v188(v91 + v90, v199, v208);

              v93 = sub_10010DE54(v91);
              swift_setDeallocating();
              (*(v89 + 8))(v91 + v90, v92);
              swift_deallocClassInstance();
              *(v88 + 48) = v93;
              v94 = sub_10010D43C(v88, &qword_100203450, &qword_1001ADD00);
              swift_setDeallocating();
              sub_10000A0D4(v88 + 32, &qword_100203418, &qword_1001ADCC8);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v95 = v209;
              }

              else
              {
                v95 = sub_100100900(0, *(v209 + 2) + 1, 1, v209);
              }

              v97 = *(v95 + 2);
              v96 = *(v95 + 3);
              a4 = v182;
              v98 = v210;
              if (v97 >= v96 >> 1)
              {
                v95 = sub_100100900((v96 > 1), v97 + 1, 1, v95);
              }

              *(v95 + 2) = v97 + 1;
              v209 = v95;
              v99 = &v95[48 * v97];
              v100 = v207;
              *(v99 + 4) = v206;
              *(v99 + 5) = v100;
              *(v99 + 6) = v98;
              *(v99 + 7) = v57;
              v101 = v197;
              *(v99 + 8) = v94;
              *(v99 + 9) = v101;

              v102 = v175;
              IDCSAnalytics.NamespaceElement.init(namespace:element:)();

              v103 = v191;
              CBOREncodedCBOR.value.getter();
              ISO18013IssuerSignedItem.elementIdentifier.getter();
              (*v180)(v103, v192);
              v104 = v176;
              IDCSAnalytics.NamespaceElement.init(namespace:element:)();
              v105 = *(v212 + 48);
              v106 = *v179;
              v107 = v194;
              v108 = v211;
              (*v179)(v194, v102, v211);
              v106(&v107[v105], v104, v108);
              v52 = v213;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = sub_100100CC0(0, v52[2] + 1, 1, v52, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
              }

              v110 = v52[2];
              v109 = v52[3];
              if (v110 >= v109 >> 1)
              {
                v52 = sub_100100CC0((v109 > 1), v110 + 1, 1, v52, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
              }

              v52[2] = v110 + 1;
              v54 = v52 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v110;
              v55 = v194;
              goto LABEL_6;
            }

            v52 = v213;
          }

          else
          {
            if (*(a4 + 16))
            {
              v84 = sub_100099644(v81, v57);
              if (v85)
              {
                v86 = v177;
                v87 = v208;
                v188(v177, (*(a4 + 56) + v84 * v187), v208);
                (*v171)(v86, 0, 1, v87);
                sub_10000A0D4(v86, &qword_100203400, &qword_1001ADCB0);
                goto LABEL_30;
              }
            }

            v111 = v177;
            (*v171)(v177, 1, 1, v208);
            sub_10000A0D4(v111, &qword_100203400, &qword_1001ADCB0);
            defaultLogger()();

            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v116 = v81;
              v117 = v115;
              v217 = v115;
              *v114 = v166;
              *(v114 + 4) = sub_10010150C(v116, v57, &v217);
              _os_log_impl(&_mh_execute_header, v112, v113, "Falling back from %s to age_in_years", v114, 0xCu);
              sub_100005090(v117);
            }

            (*v170)(v80, v178);
            v118._object = (v169 | 0x8000000000000000);
            v119._countAndFlagsBits = 0x3738336362613536;
            v119._object = 0xE800000000000000;
            v118._countAndFlagsBits = 0xD000000000000020;
            logMilestone(tag:description:)(v119, v118);
            sub_100004E70(&qword_100203408, &qword_1001ADCB8);
            v120 = swift_initStackObject();
            *(v120 + 16) = v205;
            *(v120 + 32) = v206;
            *(v120 + 40) = v207;
            sub_100004E70(&qword_100203410, &qword_1001ADCC0);
            v121 = v193;
            v122 = (*(v193 + 80) + 32) & ~*(v193 + 80);
            v123 = swift_allocObject();
            *(v123 + 16) = v205;
            v124 = v208;
            v188(v123 + v122, v199, v208);

            v125 = sub_10010DE54(v123);
            swift_setDeallocating();
            (*(v121 + 8))(v123 + v122, v124);
            swift_deallocClassInstance();
            *(v120 + 48) = v125;
            v126 = sub_10010D43C(v120, &qword_100203450, &qword_1001ADD00);
            swift_setDeallocating();
            sub_10000A0D4(v120 + 32, &qword_100203418, &qword_1001ADCC8);

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v127 = v174;
              v128 = v209;
            }

            else
            {
              v128 = sub_100100900(0, *(v209 + 2) + 1, 1, v209);
              v127 = v174;
            }

            v129 = v210;
            v130 = v197;
            v132 = *(v128 + 2);
            v131 = *(v128 + 3);
            a4 = v182;
            if (v132 >= v131 >> 1)
            {
              v128 = sub_100100900((v131 > 1), v132 + 1, 1, v128);
            }

            *(v128 + 2) = v132 + 1;
            v209 = v128;
            v133 = &v128[48 * v132];
            v134 = v207;
            *(v133 + 4) = v206;
            *(v133 + 5) = v134;
            *(v133 + 6) = v129;
            *(v133 + 7) = v57;
            *(v133 + 8) = v126;
            *(v133 + 9) = v130;

            v135 = v172;
            IDCSAnalytics.NamespaceElement.init(namespace:element:)();

            v136 = v191;
            CBOREncodedCBOR.value.getter();
            ISO18013IssuerSignedItem.elementIdentifier.getter();
            (*v180)(v136, v192);
            v137 = v173;
            IDCSAnalytics.NamespaceElement.init(namespace:element:)();
            v138 = *(v212 + 48);
            v139 = *v179;
            v140 = v211;
            (*v179)(v127, v135, v211);
            v139(&v127[v138], v137, v140);
            v52 = v213;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_100100CC0(0, v52[2] + 1, 1, v52, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
            }

            v142 = v52[2];
            v141 = v52[3];
            if (v142 >= v141 >> 1)
            {
              v52 = sub_100100CC0((v141 > 1), v142 + 1, 1, v52, &qword_100203440, &qword_1001ADCF0, &qword_1002033F8, &qword_1001ADCA8);
            }

            v52[2] = v142 + 1;
            v54 = v52 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v142;
            v55 = v127;
LABEL_6:
            sub_100046524(v55, v54, &qword_1002033F8, &qword_1001ADCA8);
          }

          v50 = v198;
          if (v198 == v190)
          {
            goto LABEL_59;
          }

          goto LABEL_8;
        }

        v60 = *(v51 + 8 * v63);
        ++v65;
        if (v60)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    else
    {
      v52 = _swiftEmptyArrayStorage;
      v209 = _swiftEmptyArrayStorage;
LABEL_59:
      v146 = 0;
      v214 = (v204 + 56);
      v210 = (v204 + 48);
      v147 = v52[2];
      v207 = v168 + 32;
      v206 = (v167 + 104);
      LODWORD(v205) = enum case for IDCSAnalytics.ElementFallbackAlgorithm.ageOverToAgeInYears(_:);
      v198 = (v168 + 56);
      v197 = (v167 + 8);
      v194 = (v168 + 8);
      v213 = v52;
      v148 = (v168 + 32);
      for (i = v211; ; (*v194)(v165, i))
      {
        v150 = v196;
        if (v146 == v147)
        {
          v151 = 1;
          v152 = v147;
          v153 = v195;
          v154 = v212;
        }

        else
        {
          if ((v146 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v153 = v195;
          v154 = v212;
          if (v146 >= v52[2])
          {
            goto LABEL_70;
          }

          sub_100046360(v52 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v146, v196, &qword_1002033F8, &qword_1001ADCA8);
          v151 = 0;
          v152 = v146 + 1;
        }

        (*v214)(v150, v151, 1, v154);
        sub_100046524(v150, v153, &qword_1002033F0, &qword_1001ADCA0);
        if ((*v210)(v153, 1, v154) == 1)
        {
          break;
        }

        v155 = *(v154 + 48);
        v156 = *v148;
        v157 = v200;
        (*v148)(v200, v153, i);
        type metadata accessor for IDCSAnalytics();
        v158 = *v206;
        v159 = v201;
        v215 = v152;
        v160 = v147;
        v161 = v202;
        v158(v201, v205, v202);
        v162 = v153 + v155;
        v163 = v203;
        v156(v203, v162, i);
        (*v198)(v163, 0, 1, i);
        static IDCSAnalytics.sendElementFallbackTriggeredEvent(algorithm:from:to:)();
        sub_10000A0D4(v163, &qword_1002033E8, &qword_1001ADC98);
        v164 = v161;
        v147 = v160;
        v146 = v215;
        (*v197)(v159, v164);
        v165 = v157;
        v52 = v213;
      }

      (*(v193 + 8))(v199, v208);
    }
  }

  else
  {
    defaultLogger()();
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v143, v144, "Not checking age over fallbacks because payload does not contain age in years element", v145, 2u);
    }

    (*(v34 + 8))(v37, v178);
  }
}

uint64_t sub_10010F9B0(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100203498, &qword_1001ADD28);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  sub_1000FC35C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = &qword_100203498;
    v20 = &qword_1001ADD28;
    v21 = v11;
LABEL_5:
    sub_10000A0D4(v21, v19, v20);
    return 1;
  }

  sub_100046524(v11, v18, &qword_1002034A0, &unk_1001AE060);
  sub_100046360(v18, v16, &qword_1002034A0, &unk_1001AE060);

  v22 = *(v12 + 48);
  v23 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  (*(*(v23 - 8) + 8))(&v16[v22], v23);
  if (ISO18013IssuerSignedItem.digestID.getter())
  {
LABEL_4:
    (*(v6 + 8))(v8, v5);
    v19 = &qword_1002034A0;
    v20 = &unk_1001AE060;
    v21 = v18;
    goto LABEL_5;
  }

  result = ISO18013IssuerSignedItem.random.getter();
  v26 = v25 >> 62;
  if (v25 >> 62 != 3)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v27 = HIDWORD(result) - result;
          goto LABEL_18;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v29 = *(result + 16);
      v28 = *(result + 24);
      v27 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v27 = BYTE6(v25);
    }

LABEL_18:
    sub_1000092BC(result, v25);
    if (v27)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (!result && v25 == 0xC000000000000000)
  {
    result = 0;
    v25 = 0xC000000000000000;
  }

  sub_1000092BC(result, v25);
LABEL_19:
  ISO18013IssuerSignedItem.elementValue.getter();
  if (qword_1001FFFD8 != -1)
  {
    swift_once();
  }

  v30 = v33;
  sub_1000FC128(v33, qword_100205D38);
  v31 = static AnyCodable.== infix(_:_:)();
  (*(v32 + 8))(v4, v30);
  (*(v6 + 8))(v8, v5);
  sub_10000A0D4(v18, &qword_1002034A0, &unk_1001AE060);
  return (v31 & 1) == 0;
}

void sub_10010FE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t, uint64_t, __n128), uint64_t a7)
{
  v84 = a6;
  v81 = a5;
  v64 = a4;
  v61 = a3;
  v60 = a2;
  v79 = type metadata accessor for Logger();
  v9 = *(v79 - 8);
  v10 = __chkstk_darwin(v79);
  v59 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v59 - v12;
  v77 = type metadata accessor for ISO18013IssuerSignedItem();
  v13 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v15 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v59 - v16;
  v72 = type metadata accessor for AnyCodable();
  __chkstk_darwin(v72);
  v71 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v74 = v15;
  v68 = v15 + 8;
  v69 = v15 + 16;
  v66 = (v17 + 8);
  v67 = (v13 + 8);
  v78 = (v9 + 8);

  v24 = 0;
  v62 = 0;
  v25 = _swiftEmptyArrayStorage;
  *&v26 = 136315394;
  v63 = v26;
  v65 = a7;
  v82 = a1;
  v70 = a1 + 64;
  while (v22)
  {
    v83 = v25;
LABEL_10:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = (*(a1 + 48) + ((v24 << 10) | (16 * v28)));
    v30 = *v29;
    v31 = v29[1];

    (v84)(v30, v31);
    if (v32)
    {
      goto LABEL_30;
    }

    if (!*(a1 + 16) || (v33 = sub_100099644(v30, v31), (v34 & 1) == 0))
    {
      v62 = 1;
LABEL_30:
      v25 = v83;
      goto LABEL_31;
    }

    v35 = v23;
    v36 = v73;
    v37 = v74;
    v38 = v75;
    (*(v74 + 16))(v73, *(a1 + 56) + *(v74 + 72) * v33, v75);
    v39 = v76;
    CBOREncodedCBOR.value.getter();
    (*(v37 + 8))(v36, v38);
    v40 = v71;
    ISO18013IssuerSignedItem.elementValue.getter();
    (*v67)(v39, v77);
    v41 = AnyCodable.BOOLValue.getter();
    (*v66)(v40, v72);
    if (v41 == 2)
    {
      v62 = 1;
      a1 = v82;
      v23 = v35;
      v19 = v70;
      goto LABEL_30;
    }

    v42 = v80;
    defaultLogger()();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v85 = v46;
      *v45 = v63;
      *(v45 + 4) = sub_10010150C(v30, v31, &v85);
      *(v45 + 12) = 1024;
      *(v45 + 14) = v41 & 1;
      _os_log_impl(&_mh_execute_header, v43, v44, "Considering %s : %{BOOL}d", v45, 0x12u);
      sub_100005090(v46);

      (*v78)(v80, v79);
    }

    else
    {

      (*v78)(v42, v79);
    }

    v23 = v35;
    v19 = v70;
    if ((v41 ^ v81))
    {
      a1 = v82;
      goto LABEL_30;
    }

    v47 = (v84)(v30, v31);
    a1 = v82;
    if (v48)
    {
      goto LABEL_30;
    }

    v49 = v47 <= v64;
    if (v81)
    {
      v49 = v47 >= v64;
    }

    v25 = v83;
    if (v49)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10010A6B4(0, v25[2] + 1, 1);
        v25 = v86;
      }

      v52 = v25[2];
      v51 = v25[3];
      if (v52 >= v51 >> 1)
      {
        sub_10010A6B4((v51 > 1), v52 + 1, 1);
        v25 = v86;
      }

      v25[2] = v52 + 1;
      v53 = &v25[2 * v52];
      v53[4] = v30;
      v53[5] = v31;
      a1 = v82;
    }

    else
    {
LABEL_31:
    }
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v27);
    ++v24;
    if (v22)
    {
      v83 = v25;
      v24 = v27;
      goto LABEL_10;
    }
  }

  if (v62)
  {

    v54 = v59;
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Encrypted fallbacks found in payload, passing fallback responsibility to response builder", v57, 2u);
    }

    (*v78)(v54, v79);
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1001AA160;
    *(v58 + 32) = v60;
    *(v58 + 40) = v61;
  }
}

void *sub_1001105C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int64_t a8, uint64_t a9, uint64_t *a10)
{
  v114 = a8;
  v125 = a7;
  v135 = a6;
  v112 = a5;
  v111 = a4;
  v117 = a2;
  v116 = a1;
  v137 = a10;
  *&v138 = a9;
  v120 = type metadata accessor for AnyCodable();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = (&v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for ISO18013IssuerSignedItem();
  __chkstk_darwin(v122);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v123 = &v109 - v13;
  v130 = type metadata accessor for Logger();
  v129 = *(v130 - 8);
  v14 = __chkstk_darwin(v130);
  v113 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v115 = &v109 - v17;
  v18 = __chkstk_darwin(v16);
  v126 = &v109 - v19;
  __chkstk_darwin(v18);
  v124 = &v109 - v20;
  v21 = a3 + 8;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & a3[8];
  v25 = (v22 + 63) >> 6;
  v26 = a3;

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    v29 = v27;
    if (!v24)
    {
      break;
    }

LABEL_8:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = (v26[6] + ((v27 << 10) | (16 * v30)));
    v33 = *v31;
    v32 = v31[1];

    a3 = v137;
    (v138)(v33, v32);
    if (v34)
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = &v139;
        sub_10010A6B4(0, v28[2] + 1, 1);
        v28 = v139;
      }

      v37 = v28[2];
      v36 = v28[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        a3 = &v139;
        v40 = v37 + 1;
        v136 = v37;
        sub_10010A6B4((v36 > 1), v37 + 1, 1);
        v38 = v40;
        v37 = v136;
        v28 = v139;
      }

      v28[2] = v38;
      v39 = &v28[2 * v37];
      v39[4] = v33;
      v39[5] = v32;
    }
  }

  while (1)
  {
    v27 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = v21[v27];
    v29 = (v29 + 1);
    if (v24)
    {
      goto LABEL_8;
    }
  }

  v136 = v28[2];
  if (!v136)
  {

    v50 = swift_allocObject();
    *(v50 + 16) = _swiftEmptyArrayStorage;
    v54 = v124;
    goto LABEL_47;
  }

  v131 = 0;
  v24 = 0;
  v127 = 0;
  v132 = 0;
  v27 = 0;
  v26 = 0;
  v41 = 0;
  v42 = (v28 + 5);
  v133 = 1;
  v134 = 1;
  do
  {
    if (v41 >= v28[2])
    {
      goto LABEL_68;
    }

    v43 = *(v42 - 1);
    v44 = *v42;

    a3 = v137;
    v45 = (v138)(v43, v44);
    if (v46)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (v45 == v135)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v45 < v135)
    {
      if (v134)
      {
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v24 < v45)
      {
LABEL_25:
        v24 = v45;

        v134 = 0;
        v27 = v43;
        v26 = v44;
        goto LABEL_18;
      }
    }

    if (v45 <= v135)
    {
      goto LABEL_17;
    }

    if (v133)
    {
      if (v45 == 0x7FFFFFFFFFFFFFFFLL)
      {

        v133 = 1;
        goto LABEL_18;
      }

LABEL_32:
      a3 = v27;
      v47 = v28;
      v48 = v26;
      v49 = v45;

      v133 = 0;
      v131 = v49;
      v26 = v48;
      v28 = v47;
      v27 = a3;
      v127 = v43;
      v132 = v44;
      goto LABEL_18;
    }

    if (v45 < v131)
    {
      goto LABEL_32;
    }

    v133 = 0;
LABEL_18:
    ++v41;
    v42 += 2;
  }

  while (v136 != v41);

  v50 = swift_allocObject();
  v51 = _swiftEmptyArrayStorage;
  *(v50 + 16) = _swiftEmptyArrayStorage;
  if (!v26)
  {
    v54 = v124;
    v55 = v132;
    if (!v132)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v51 = sub_100100418(0, 1, 1, _swiftEmptyArrayStorage);
  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  v54 = v124;
  if (v53 >= v52 >> 1)
  {
    v51 = sub_100100418((v52 > 1), v53 + 1, 1, v51);
  }

  v55 = v132;
  *(v51 + 2) = v53 + 1;
  v56 = &v51[16 * v53];
  *(v56 + 4) = v27;
  *(v56 + 5) = v26;
  *(v50 + 16) = v51;
  if (v55)
  {
LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_100100418(0, *(v51 + 2) + 1, 1, v51);
    }

    v59 = *(v51 + 2);
    v58 = *(v51 + 3);
    if (v59 >= v58 >> 1)
    {
      v51 = sub_100100418((v58 > 1), v59 + 1, 1, v51);
    }

    *(v51 + 2) = v59 + 1;
    v60 = &v51[16 * v59];
    *(v60 + 4) = v127;
    *(v60 + 5) = v55;
    *(v50 + 16) = v51;
  }

LABEL_47:
  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v139 = v64;
    *v63 = 136315138;
    swift_beginAccess();

    v65 = v50;
    v66 = v54;
    v67 = Array.description.getter();
    v69 = v68;

    v70 = sub_10010150C(v67, v69, &v139);

    *(v63 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Discovered closest possible fallbacks are %s", v63, 0xCu);
    sub_100005090(v64);

    v71 = *(v129 + 8);
    v72 = v66;
    v50 = v65;
    v71(v72, v130);
  }

  else
  {

    v71 = *(v129 + 8);
    v71(v54, v130);
  }

  v27 = v128;
  v73 = v125;
  v74 = v126;
  swift_beginAccess();
  v75 = *(v50 + 16);
  v76 = v75[2];
  if (v76)
  {
    if (v76 == 1)
    {
      v77 = v75[4];
      v78 = v75[5];

      defaultLogger()();

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v140 = v82;
        *v81 = 136315138;
        *(v81 + 4) = sub_10010150C(v77, v78, &v140);
        _os_log_impl(&_mh_execute_header, v79, v80, "Encountered one possible fallback, falling back to %s", v81, 0xCu);
        sub_100005090(v82);

        v83 = v126;
      }

      else
      {

        v83 = v74;
      }

      v71(v83, v130);
      v24 = v120;
      a3 = v119;
      v26 = v118;
    }

    else
    {
      v88 = v115;
      defaultLogger()();
      v89 = v114;

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v140 = v93;
        *v92 = 136315138;
        *(v92 + 4) = sub_10010150C(v73, v89, &v140);
        _os_log_impl(&_mh_execute_header, v90, v91, "Encountered multiple possible fallback, falling back to %s", v92, 0xCu);
        sub_100005090(v93);

        v94 = v115;
      }

      else
      {

        v94 = v88;
      }

      v71(v94, v130);
      a3 = v119;
      v26 = v118;

      v24 = v120;
    }

    if (qword_1001FFFD8 == -1)
    {
LABEL_64:
      v95 = sub_1000FC128(v24, qword_100205D38);
      (a3[2])(v26, v95, v24);
      ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)();
      type metadata accessor for CBOREncoder();
      swift_allocObject();
      CBOREncoder.init()();
      sub_100112C20(&qword_100202430, &type metadata accessor for ISO18013IssuerSignedItem, &protocol conformance descriptor for ISO18013IssuerSignedItem);
      sub_100112C20(&qword_100202438, &type metadata accessor for ISO18013IssuerSignedItem, &protocol conformance descriptor for ISO18013IssuerSignedItem);
      v96 = v123;
      CBOREncodedCBOR.init(value:tag:encoder:)();
      if (v27)
      {
      }

      sub_100004E70(&qword_100203408, &qword_1001ADCB8);
      inited = swift_initStackObject();
      v138 = xmmword_1001AA160;
      *(inited + 16) = xmmword_1001AA160;
      *(inited + 32) = v116;
      v128 = 0;
      *(inited + 40) = v117;
      sub_100004E70(&qword_100203410, &qword_1001ADCC0);
      v98 = v109;
      v99 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = v138;
      v101 = v96;
      v102 = v110;
      (*(v98 + 16))(v100 + v99, v101, v110);

      v103 = sub_10010DE54(v100);
      swift_setDeallocating();
      v104 = *(v98 + 8);
      v104(v100 + v99, v102);
      swift_deallocClassInstance();
      *(inited + 48) = v103;
      v105 = sub_10010D43C(inited, &qword_100203450, &qword_1001ADD00);
      swift_setDeallocating();
      sub_10000A0D4(inited + 32, &qword_100203418, &qword_1001ADCC8);
      v106 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
      sub_100004E70(&qword_100203448, &qword_1001ADCF8);
      v107 = swift_allocObject();
      *(v107 + 16) = v138;
      *(v107 + 32) = v116;
      v108 = v111;
      *(v107 + 40) = v117;
      *(v107 + 48) = v108;
      *(v107 + 56) = v112;
      *(v107 + 64) = v105;
      *(v107 + 72) = v106;

      v104(v123, v102);

      return v107;
    }

LABEL_69:
    swift_once();
    goto LABEL_64;
  }

  v84 = v113;
  defaultLogger()();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "No possible fallbacks, not falling back", v87, 2u);
  }

  v71(v84, v130);

  return _swiftEmptyArrayStorage;
}

char *sub_1001114FC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v119 = a4;
  v7 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  __chkstk_darwin(v7 - 8);
  v116 = &v110 - v8;
  v9 = a2 + 64;
  v10 = 1 << a2[32];
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 8);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v120 = a3;
  v118 = a1;
  v111 = a2 + 64;
  v112 = a2;
  v110 = v13;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v16 >= v13)
        {
          break;
        }

        v12 = v9[v16];
        ++v14;
        if (v12)
        {
          v14 = v16;
          goto LABEL_11;
        }
      }

      v39 = v15[2];
      if (v39)
      {
        v40 = 0;
        v115 = v15[2];
        v112 = (v39 - 1);
        v113 = v15 + 7;
        v114 = _swiftEmptyArrayStorage;
        v117 = v15;
LABEL_32:
        v41 = &v113[4 * v40];
        v42 = v40;
        while (v42 < v15[2])
        {
          v43 = *(v41 - 3);
          v44 = *(v41 - 2);
          v45 = *(v41 - 1);
          v46 = *v41;
          v40 = v42 + 1;
          v47 = *(a3 + 16);

          if (!v47)
          {
            goto LABEL_41;
          }

          v48 = sub_100099644(v43, v44);
          if ((v49 & 1) == 0)
          {
            goto LABEL_41;
          }

          v50 = *(*(a3 + 56) + 8 * v48);
          if (!*(v50 + 16))
          {
            goto LABEL_41;
          }

          v51 = sub_100099644(v45, v46);
          if ((v52 & 1) == 0)
          {

LABEL_41:
            v59 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
            v60 = v116;
            (*(*(v59 - 8) + 56))(v116, 1, 1, v59);
            sub_10000A0D4(v60, &qword_100203400, &qword_1001ADCB0);
            v61 = v114;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v122 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10010A9A0(0, v61[2] + 1, 1);
              v61 = v122;
            }

            v64 = v61[2];
            v63 = v61[3];
            if (v64 >= v63 >> 1)
            {
              sub_10010A9A0((v63 > 1), v64 + 1, 1);
              v61 = v122;
            }

            v61[2] = v64 + 1;
            v114 = v61;
            v65 = &v61[4 * v64];
            v65[4] = v43;
            v65[5] = v44;
            v65[6] = v45;
            v65[7] = v46;
            v15 = v117;
            a1 = v118;
            if (v112 != v42)
            {
              goto LABEL_32;
            }

            goto LABEL_48;
          }

          v53 = v51;
          v54 = *(v50 + 56);
          v55 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
          v56 = *(v55 - 8);
          v57 = v54 + *(v56 + 72) * v53;
          a3 = v120;
          v58 = v116;
          (*(v56 + 16))(v116, v57, v55);

          (*(v56 + 56))(v58, 0, 1, v55);
          sub_10000A0D4(v58, &qword_100203400, &qword_1001ADCB0);

          v41 += 4;
          v42 = v40;
          v15 = v117;
          a1 = v118;
          if (v115 == v40)
          {
            goto LABEL_48;
          }
        }

LABEL_94:
        __break(1u);
      }

      else
      {
        v114 = _swiftEmptyArrayStorage;
LABEL_48:

        v66 = v114;
        v67 = *(v114 + 16);
        if (!v67)
        {
          v70 = _swiftEmptyArrayStorage;
LABEL_69:

          v118 = v70[2];
          if (!v118)
          {
            v115 = _swiftEmptyArrayStorage;
LABEL_92:

            return v115;
          }

          v87 = 0;
          v116 = (v70 + 4);
          v115 = _swiftEmptyArrayStorage;
          v117 = v70;
LABEL_71:
          v88 = v119;
          while (v87 < v70[2])
          {
            v89 = &v116[40 * v87];
            v91 = *v89;
            v90 = v89[1];
            v93 = v89[2];
            v92 = v89[3];
            v94 = v89[4];
            v95 = *(v94 + 16);
            v96 = v94 + 32;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            if (v95)
            {
              v97 = 0;
              while (1)
              {
                v121 = *(v96 + 8 * v97);

                sub_1000FF0B4(&v121, v119, v91, v90, v93, v92, v120, &v122);

                v98 = v123;
                sub_100112800(v122, v123, v124, v125, v126, v127);
                if (v98)
                {
                  break;
                }

                if (v95 == ++v97)
                {
                  goto LABEL_79;
                }
              }

              v95 = v97;
LABEL_79:
              v88 = v119;
            }

            ++v87;
            v99 = *(v94 + 16);
            if (v95 != v99)
            {
              if (v95 >= v99)
              {
                goto LABEL_101;
              }

              v121 = *(v96 + 8 * v95);

              sub_1000FF0B4(&v121, v88, v91, v90, v93, v92, v120, &v122);

              v100 = v123;
              if (!v123)
              {
                goto LABEL_102;
              }

              v101 = v125;
              v113 = v122;
              v114 = v124;
              v102 = v126;
              v103 = v127;

              v112 = v100;
              sub_100112800(v113, v100, v114, v101, v102, v103);

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = sub_100100900(0, *(v115 + 2) + 1, 1, v115);
              }

              v70 = v117;
              v105 = *(v115 + 2);
              v104 = *(v115 + 3);
              if (v105 >= v104 >> 1)
              {
                v115 = sub_100100900((v104 > 1), v105 + 1, 1, v115);
              }

              v106 = v115;
              *(v115 + 2) = v105 + 1;
              v107 = &v106[48 * v105];
              v108 = v112;
              *(v107 + 4) = v113;
              *(v107 + 5) = v108;
              *(v107 + 6) = v114;
              *(v107 + 7) = v101;
              *(v107 + 8) = v102;
              *(v107 + 9) = v103;
              if (v87 != v118)
              {
                goto LABEL_71;
              }

              goto LABEL_92;
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            v70 = v117;
            if (v87 == v118)
            {
              goto LABEL_92;
            }
          }

LABEL_96:
          __break(1u);
          break;
        }

        v68 = 0;
        v69 = (v114 + 56);
        v115 = v67 - 1;
        v70 = _swiftEmptyArrayStorage;
        v116 = (v114 + 56);
LABEL_50:
        v117 = v70;
        v71 = &v69[32 * v68];
        v72 = v68;
        while (v72 < *(v66 + 16))
        {
          if (*(a1 + 16))
          {
            v74 = *(v71 - 3);
            v73 = *(v71 - 2);
            v76 = *(v71 - 1);
            v75 = *v71;

            v77 = sub_100099644(v74, v73);
            if (v78)
            {
              v79 = *(*(a1 + 56) + 8 * v77);
              if (*(v79 + 16))
              {

                v80 = sub_100099644(v76, v75);
                if (v81)
                {
                  v82 = *(*(v79 + 56) + 8 * v80);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v117 = sub_100100A20(0, v117[2] + 1, 1, v117);
                  }

                  v84 = v117[2];
                  v83 = v117[3];
                  if (v84 >= v83 >> 1)
                  {
                    v117 = sub_100100A20((v83 > 1), v84 + 1, 1, v117);
                  }

                  v68 = v72 + 1;
                  v85 = v117;
                  v117[2] = v84 + 1;
                  v86 = &v85[5 * v84];
                  v86[4] = v74;
                  v86[5] = v73;
                  v86[6] = v76;
                  v86[7] = v75;
                  v86[8] = v82;
                  v66 = v114;
                  v70 = v85;
                  a1 = v118;
                  v69 = v116;
                  if (v115 != v72)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
              }

              a1 = v118;
              v66 = v114;
            }

            else
            {
            }
          }

          ++v72;
          v71 += 4;
          if (v67 == v72)
          {
            v70 = v117;
            goto LABEL_69;
          }
        }
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_11:
    v114 = v12;
    v115 = v14;
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(a2 + 6) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a2 + 7) + 8 * v17);
    v21 = v20[2];
    v113 = v20;
    if (v21)
    {
      v117 = v15;
      v22 = *v18;
      v122 = _swiftEmptyArrayStorage;

      sub_10010A9A0(0, v21, 0);
      v23 = v122;
      v24 = v20 + 5;
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v122 = v23;
        v28 = v23[2];
        v27 = v23[3];
        v29 = v28 + 1;

        if (v28 >= v27 >> 1)
        {
          sub_10010A9A0((v27 > 1), v28 + 1, 1);
          v23 = v122;
        }

        v23[2] = v29;
        v30 = &v23[4 * v28];
        v30[4] = v22;
        v30[5] = v19;
        v30[6] = v25;
        v30[7] = v26;
        v24 += 2;
        --v21;
      }

      while (v21);
      v15 = v117;
      v9 = v111;
      a2 = v112;
      v13 = v110;
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
      v29 = _swiftEmptyArrayStorage[2];
    }

    v31 = v15[2];
    v32 = v31 + v29;
    if (__OFADD__(v31, v29))
    {
      break;
    }

    v33 = swift_isUniquelyReferenced_nonNull_native();
    if (!v33 || (v34 = v15[3] >> 1, v34 < v32))
    {
      if (v31 <= v32)
      {
        v35 = v31 + v29;
      }

      else
      {
        v35 = v31;
      }

      v15 = sub_100100B68(v33, v35, 1, v15);
      v34 = v15[3] >> 1;
    }

    a3 = v120;
    if (v23[2])
    {
      if (v34 - v15[2] < v29)
      {
        goto LABEL_99;
      }

      sub_100004E70(&qword_100200468, &qword_1001AAE98);
      swift_arrayInitWithCopy();

      if (v29)
      {
        v36 = v15[2];
        v37 = __OFADD__(v36, v29);
        v38 = v36 + v29;
        if (v37)
        {
          goto LABEL_100;
        }

        v15[2] = v38;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_98;
      }
    }

    v12 = (v114 - 1) & v114;

    a1 = v118;
    v14 = v115;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:

  __break(1u);
  return result;
}

void *sub_100111F78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a4;
  v53 = a6;
  v58 = a5;
  v59 = a1;
  v6 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013KnownNamespaces();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;

  ISO18013KnownDocTypes.init(rawValue:)();
  v21 = type metadata accessor for ISO18013KnownDocTypes();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v20, v18, &qword_100201578, &qword_1001AD1E0);
  v24 = (*(v22 + 88))(v18, v21);
  if (v24 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    (*(v12 + 104))(v14, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v11);
    v25 = ISO18013KnownNamespaces.rawValue.getter();
    v27 = v26;
    (*(v12 + 8))(v14, v11);
    v28 = v57;
    (*(v57 + 104))(v10, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v8);

    v52 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
    v30 = v29;
    (*(v28 + 8))(v10, v8);
    v31 = sub_1000FD8B0;
  }

  else
  {
    if (v24 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) && v24 != enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      (*(v22 + 8))(v18, v21);
LABEL_2:
      sub_10000A0D4(v20, &qword_100201578, &qword_1001AD1E0);
      return &_swiftEmptySetSingleton;
    }

    (*(v12 + 104))(v14, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v11);
    v25 = ISO18013KnownNamespaces.rawValue.getter();
    v27 = v32;
    (*(v12 + 8))(v14, v11);
    v33 = v54;
    v34 = v55;
    v35 = v56;
    (*(v55 + 104))(v54, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v56);

    v52 = ISO23220_1_ElementIdentifier.rawValue.getter();
    v30 = v36;
    (*(v34 + 8))(v33, v35);
    v31 = sub_100112C6C;
  }

  v37 = v31;
  sub_10000A0D4(v20, &qword_100201578, &qword_1001AD1E0);
  v39 = v59;
  v38 = v60;
  v40 = v61;
  if (!*(v59 + 2))
  {
    swift_bridgeObjectRelease_n();
LABEL_19:

    v49 = _swiftEmptyArrayStorage;
LABEL_20:
    v50 = sub_1001114FC(v58, v39, v38, v49);

    v62 = v49;
    sub_1000FD078(v50);
    v51 = sub_10010D774(v62);

    return v51;
  }

  v41 = sub_100099644(v25, v27);
  v43 = v42;

  if ((v43 & 1) == 0 || !*(v38 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  v44 = *(*(v39 + 7) + 8 * v41);

  v45 = sub_100099644(v25, v27);
  if ((v46 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v47 = *(*(v38 + 56) + 8 * v45);
  if (v53 != 2)
  {
    if (v53 == 1)
    {

      sub_10010E190(v44, v25, v27, v47, v52, v30, v37, 0);
LABEL_23:
      v49 = v48;

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v48 = sub_1000FD8E8(v44, v25, v27, v47, v52, v30, v37, 0);
  if (!v40)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1001126D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_1002004D8, &qword_1001ACBF0);
    sub_100112C20(a2, &type metadata accessor for ISO18013IssuerSignedItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100112774()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001127AC()
{
  result = qword_1002034A8;
  if (!qword_1002034A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002034A8);
  }

  return result;
}

void sub_100112800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100112914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100112978()
{
  result = qword_100203588;
  if (!qword_100203588)
  {
    sub_100021ED0(&qword_100201548, &qword_1001AB908);
    sub_100112C20(&qword_100200320, type metadata accessor for SecCertificate, &unk_1001AAE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203588);
  }

  return result;
}

uint64_t sub_100112A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100112A90()
{
  result = qword_1002035F8;
  if (!qword_1002035F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002035F8);
  }

  return result;
}

Swift::Int sub_100112AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100203648, &qword_1001ADEA0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100112C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100112C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_100099644(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t sub_100112CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ISO18013CodingKeyFormat();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013Package();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100203918, &qword_1001AE0B0);
  v12 = __chkstk_darwin(v11 - 8);
  v24 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
  swift_beginAccess();
  sub_100046360(v2 + v16, v15, &qword_100203918, &qword_1001AE0B0);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_10000A0D4(v15, &qword_100203918, &qword_1001AE0B0);
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v28);
    CBORDecoder.codingKeyFormat.setter();
    v17 = *(v2 + 112);
    v18 = *(v2 + 120);
    sub_100009708(v17, v18);
    sub_100120B50(&qword_100203920, &type metadata accessor for ISO18013Package, &protocol conformance descriptor for ISO18013Package);
    v19 = v29;
    v20 = v31;
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (v20)
    {
      sub_1000092BC(v17, v18);

      (*(v25 + 104))(v27, enum case for DIPError.Code.idcsInvalidPayload(_:), v26);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    sub_1000092BC(v17, v18);

    v22 = v24;
    (*(v9 + 16))(v24, v19, v8);
    (*(v9 + 56))(v22, 0, 1, v8);
    swift_beginAccess();
    sub_100120B98(v22, v2 + v16);
    swift_endAccess();
  }

  else
  {
    v19 = v15;
  }

  return (*(v9 + 32))(v30, v19, v8);
}

uint64_t sub_100113200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v695 = a1;
  v621 = a2;
  v4 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v5 = __chkstk_darwin(v4 - 8);
  v602 = &v585 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v605 = &v585 - v7;
  v8 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  __chkstk_darwin(v8 - 8);
  v620 = &v585 - v9;
  v10 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  __chkstk_darwin(v10 - 8);
  v628 = &v585 - v11;
  v694 = type metadata accessor for IDCSAnalytics.PayloadValidationReason();
  v693 = *(v694 - 8);
  v12 = __chkstk_darwin(v694);
  v690 = &v585 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v619 = &v585 - v14;
  v636 = type metadata accessor for ISO18013KnownDocTypes();
  v635 = *(v636 - 8);
  __chkstk_darwin(v636);
  v611 = &v585 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v17 = __chkstk_darwin(v16 - 8);
  v624 = &v585 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v637 = &v585 - v19;
  v607 = type metadata accessor for COSESignatureValidator();
  v606 = *(v607 - 8);
  __chkstk_darwin(v607);
  v614 = &v585 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004E70(&qword_100201528, &qword_1001AB900);
  __chkstk_darwin(v21 - 8);
  v631 = &v585 - v22;
  v633 = type metadata accessor for PublicKeyAlgorithm();
  v632 = *(v633 - 8);
  __chkstk_darwin(v633);
  v625 = &v585 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v705 = type metadata accessor for DIPError.Code();
  v704 = *(v705 - 8);
  v24 = __chkstk_darwin(v705);
  v610 = &v585 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v609 = &v585 - v27;
  v28 = __chkstk_darwin(v26);
  v608 = &v585 - v29;
  __chkstk_darwin(v28);
  v703 = &v585 - v30;
  v659 = type metadata accessor for ISO18013IssuerSignedItem();
  v644 = *(v659 - 8);
  __chkstk_darwin(v659);
  v674 = &v585 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v662 = *(v663 - 8);
  v32 = __chkstk_darwin(v663);
  v673 = &v585 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v656 = &v585 - v34;
  v35 = sub_100004E70(&qword_100203498, &qword_1001ADD28);
  v36 = __chkstk_darwin(v35 - 8);
  v660 = (&v585 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v661 = (&v585 - v38);
  v652 = type metadata accessor for COSEKey();
  v651 = *(v652 - 1);
  __chkstk_darwin(v652);
  v650 = (&v585 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v649 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v648 = *(v649 - 1);
  __chkstk_darwin(v649);
  v647 = &v585 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v658 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo();
  v668 = *(v658 - 8);
  v41 = __chkstk_darwin(v658);
  v618 = &v585 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v617 = &v585 - v44;
  v45 = __chkstk_darwin(v43);
  v616 = &v585 - v46;
  __chkstk_darwin(v45);
  v657 = &v585 - v47;
  v669 = type metadata accessor for Date();
  v664 = *(v669 - 8);
  v48 = __chkstk_darwin(v669);
  v627 = &v585 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v626 = &v585 - v51;
  v52 = __chkstk_darwin(v50);
  v643 = &v585 - v53;
  v54 = __chkstk_darwin(v52);
  v646 = &v585 - v55;
  v56 = __chkstk_darwin(v54);
  v665 = &v585 - v57;
  v58 = __chkstk_darwin(v56);
  v666 = &v585 - v59;
  __chkstk_darwin(v58);
  v667 = &v585 - v60;
  v61 = sub_100004E70(&qword_1002038A0, &qword_1001AE050);
  __chkstk_darwin(v61 - 8);
  v670 = &v585 - v62;
  v675 = type metadata accessor for ISO18013DigestAlgorithm();
  v672 = *(v675 - 8);
  __chkstk_darwin(v675);
  v671 = &v585 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  object = sub_100004E70(&qword_1002038A8, &qword_1001AE058);
  countAndFlagsBits = *(object - 8);
  __chkstk_darwin(object);
  v680 = (&v585 - v64);
  v676 = type metadata accessor for ISO18013MobileSecurityObject();
  v677 = *(v676 - 8);
  __chkstk_darwin(v676);
  v679 = &v585 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = type metadata accessor for COSE_Sign1();
  v683 = *(v682 - 8);
  __chkstk_darwin(v682);
  v684 = &v585 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100004E70(&qword_100203890, &qword_1001AE038);
  __chkstk_darwin(v67 - 8);
  v698 = &v585 - v68;
  v685 = type metadata accessor for ISO18013Package.Document();
  v686 = *(v685 - 8);
  __chkstk_darwin(v685);
  v687 = &v585 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v699 = type metadata accessor for ISO18013Version();
  v702 = *(v699 - 1);
  __chkstk_darwin(v699);
  v71 = &v585 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v688 = type metadata accessor for ISO18013Package();
  v689 = *(v688 - 8);
  __chkstk_darwin(v688);
  v706 = &v585 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v697 = type metadata accessor for ISO18013CodingKeyFormat();
  v696 = *(v697 - 1);
  v73 = __chkstk_darwin(v697);
  v640 = &v585 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v76 = &v585 - v75;
  v77 = type metadata accessor for Logger();
  v78 = *(v77 - 8);
  v79 = __chkstk_darwin(v77);
  v615 = &v585 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v604 = &v585 - v82;
  v83 = __chkstk_darwin(v81);
  v612 = &v585 - v84;
  v85 = __chkstk_darwin(v83);
  v622 = &v585 - v86;
  v87 = __chkstk_darwin(v85);
  v613 = &v585 - v88;
  v89 = __chkstk_darwin(v87);
  v629 = &v585 - v90;
  v91 = __chkstk_darwin(v89);
  v623 = &v585 - v92;
  v93 = __chkstk_darwin(v91);
  v634 = &v585 - v94;
  v95 = __chkstk_darwin(v93);
  v630 = &v585 - v96;
  v97 = __chkstk_darwin(v95);
  v641 = &v585 - v98;
  v99 = __chkstk_darwin(v97);
  v638 = &v585 - v100;
  v101 = __chkstk_darwin(v99);
  v639 = &v585 - v102;
  v103 = __chkstk_darwin(v101);
  v642 = &v585 - v104;
  v105 = __chkstk_darwin(v103);
  v645 = &v585 - v106;
  __chkstk_darwin(v105);
  v108 = &v585 - v107;
  v109 = type metadata accessor for IDCSAnalytics.PayloadValidationResult();
  v110 = __chkstk_darwin(v109);
  v691 = &v585 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v110);
  v708 = v112;
  v113 = *(v112 + 104);
  v711 = &v585 - v114;
  v692 = enum case for IDCSAnalytics.PayloadValidationResult.valid(_:);
  v700 = v115;
  v710 = v112 + 104;
  v709 = v113;
  v113();
  defaultLogger()();
  Logger.sensitive(_:)();
  v116 = *(v78 + 8);
  v603 = v108;
  v655 = v77;
  v654 = v78 + 8;
  v653 = v116;
  v116(v108, v77);
  v117 = objc_opt_self();
  v118 = [v117 standardUserDefaults];
  v119._countAndFlagsBits = 0xD000000000000025;
  v119._object = 0x80000001001BAB90;
  LOBYTE(v77) = NSUserDefaults.internalBool(forKey:)(v119);

  if (v77)
  {
    v120 = *(v3 + 112);
    v121 = *(v3 + 120);
    sub_100009708(v120, v121);
    sub_10019F170(v120, v121);
    sub_1000092BC(v120, v121);
  }

  type metadata accessor for CBORDecoder();
  swift_allocObject();
  v122 = CBORDecoder.init()();
  v123 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v124 = v696 + 16;
  v125 = *(v696 + 16);
  v125(v76, v3 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v697);
  CBORDecoder.codingKeyFormat.setter();
  v126 = v707;
  sub_100112CC4(v706);
  v707 = v126;
  if (v126)
  {

    v698 = 0;
    v699 = 0;
    v701 = 0;
    v702 = 0;
    v127 = v694;
    v128 = v700;
    v129 = v711;
    goto LABEL_5;
  }

  v597 = v123;
  v598 = v125;
  v599 = v124;
  v600 = v3;
  v601 = v122;
  ISO18013Package.version.getter();
  v131 = ISO18013Version.major.getter();
  v133 = v702 + 8;
  v132 = *(v702 + 8);
  v134 = v699;
  v132(v71, v699);
  if (v131 != 1)
  {
    v147 = v711;
    v148 = v700;
    (*(v708 + 8))(v711, v700);
    (v709)(v147, enum case for IDCSAnalytics.PayloadValidationResult.unknownPackageVersion(_:), v148);
    v712[0] = 0;
    v712[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v712[0] = 0xD00000000000001CLL;
    v712[1] = 0x80000001001BABF0;
    ISO18013Package.version.getter();
    sub_100120B50(&qword_1002014C8, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
    v149._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v149);

    v132(v71, v134);
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v150 = swift_allocError();
    v129 = v147;
    v130 = v709;
    v128 = v148;
LABEL_13:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v150;
    swift_willThrow();

    (*(v689 + 8))(v706, v688);
    v698 = 0;
    v699 = 0;
    v701 = 0;
    v702 = 0;
    v127 = v694;
    goto LABEL_33;
  }

  v135 = *(ISO18013Package.documents.getter() + 16);

  if (v135 != 1)
  {
    v151 = v711;
    v152 = v700;
    (*(v708 + 8))(v711, v700);
    v153 = v709;
    (v709)(v151, enum case for IDCSAnalytics.PayloadValidationResult.invalidDocumentCount(_:), v152);
    v707 = " have any documents";
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v129 = v151;
    v150 = swift_allocError();
    v128 = v152;
    v130 = v153;
    goto LABEL_13;
  }

  v136 = ISO18013Package.documents.getter();
  v137 = v698;
  sub_1000FC1A8(v136, v698);

  v138 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
  if ((*(*(v138 - 8) + 48))(v137, 1, v138) == 1)
  {
    goto LABEL_317;
  }

  v139 = v137[1];
  v701 = *v137;
  v702 = v139;
  (*(v686 + 32))(v687, v137 + *(v138 + 48), v685);
  v140 = v684;
  ISO18013Package.Document.issuerAuth.getter();
  v596 = COSE_Sign1.isTagged.getter();
  v141 = COSE_Sign1.payload.getter();
  if (v142 >> 60 == 15)
  {
    v143 = v711;
    v128 = v700;
    (*(v708 + 8))(v711, v700);
    v144 = v709;
    (v709)(v143, enum case for IDCSAnalytics.PayloadValidationResult.missingMSO(_:), v128);
    v707 = "unsupported package version ";
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    v699 = "agePayloadProcessor.swift";
    v698 = 0x80000001001BA260;
    sub_10002688C(_swiftEmptyArrayStorage);
    v145 = v686;
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v129 = v143;
    v146 = swift_allocError();
    v130 = v144;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v146;
    swift_willThrow();

    (*(v683 + 8))(v140, v682);
    (*(v145 + 8))(v687, v685);
LABEL_31:
    (*(v689 + 8))(v706, v688);
    v698 = 0;
    v699 = 0;
LABEL_32:
    v127 = v694;
    goto LABEL_33;
  }

  v154 = v142;
  v155 = v141;
  sub_100120AEC();
  v156 = v680;
  v157 = object;
  v595 = v154;
  v158 = v707;
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v158)
  {
    v159 = v711;
    v128 = v700;
    (*(v708 + 8))(v711, v700);
    v160 = v709;
    (v709)(v159, enum case for IDCSAnalytics.PayloadValidationResult.invalidMSO(_:), v128);
    v699 = "ontain an MSO payload";
    v707 = "agePayloadProcessor.swift";
    v698 = 0x80000001001BA260;
    (*(v704 + 104))(v703, enum case for DIPError.Code.internalError(_:), v705);
    swift_errorRetain();
    v697 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v129 = v159;
    v161 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v161;
    swift_willThrow();
    sub_10001C120(v155, v595);
    v130 = v160;

LABEL_30:
    (*(v683 + 8))(v684, v682);
    (*(v686 + 8))(v687, v685);
    goto LABEL_31;
  }

  v593 = 0;
  v594 = v155;
  CBOREncodedCBOR.value.getter();
  (*(countAndFlagsBits + 8))(v156, v157);
  ISO18013MobileSecurityObject.version.getter();
  v162 = ISO18013Version.major.getter();
  v132(v71, v134);
  if (v162 != 1)
  {
    v168 = v711;
    v169 = v700;
    (*(v708 + 8))(v711, v700);
    (v709)(v168, enum case for IDCSAnalytics.PayloadValidationResult.unknownMSOVersion(_:), v169);
    v712[0] = 0;
    v712[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v712[0] = 0xD000000000000018;
    v712[1] = 0x80000001001BAC80;
    ISO18013MobileSecurityObject.version.getter();
    sub_100120B50(&qword_1002014C8, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
    v170._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v170);

    v132(v71, v134);
    v707 = v712[0];
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v171 = swift_allocError();
    v129 = v168;
    v128 = v169;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v171;
    v130 = v709;
LABEL_28:
    swift_willThrow();
    sub_10001C120(v594, v595);

LABEL_29:
    (*(v677 + 8))(v679, v676);
    goto LABEL_30;
  }

  v707 = v117;
  v163 = ISO18013MobileSecurityObject.docType.getter();
  v128 = v700;
  if (v163 == v701 && v164 == v702)
  {

    v165 = v708;
    v166 = v675;
    v167 = v670;
  }

  else
  {
    v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v165 = v708;
    v166 = v675;
    v167 = v670;
    if ((v172 & 1) == 0)
    {
      v198 = v711;
      (*(v708 + 8))(v711, v128);
      v199 = v709;
      (v709)(v198, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentDocType(_:), v128);
      v707 = "unsupported MSO version ";
      (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v129 = v198;
      v200 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v707 = v200;
      v130 = v199;
      goto LABEL_28;
    }
  }

  ISO18013MobileSecurityObject.digestAlgorithm.getter();
  ISO18013DigestAlgorithm.init(rawValue:)();
  v173 = v672;
  if ((*(v672 + 48))(v167, 1, v166) == 1)
  {
    v174 = *(v165 + 8);
    v175 = v711;
    v174(v711, v128);
    sub_10000A0D4(v167, &qword_1002038A0, &qword_1001AE050);
    (v709)(v175, enum case for IDCSAnalytics.PayloadValidationResult.unknownDigestAlgorithm(_:), v128);
    v712[0] = 0;
    v712[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v712[0] = 0xD00000000000001DLL;
    v712[1] = 0x80000001001BACE0;
    v176._countAndFlagsBits = ISO18013MobileSecurityObject.digestAlgorithm.getter();
    String.append(_:)(v176);

    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v177 = swift_allocError();
    v129 = v711;
    v130 = v709;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v177;
    goto LABEL_28;
  }

  (*(v173 + 32))(v671, v167, v166);
  Date.init()();
  v178 = v657;
  ISO18013MobileSecurityObject.validityInfo.getter();
  v179 = v666;
  ISO18013MobileSecurityObject.ValidityInfo.validFrom.getter();
  v181 = v668 + 8;
  v180 = *(v668 + 8);
  v182 = v658;
  v180(v178, v658);
  ISO18013MobileSecurityObject.validityInfo.getter();
  v183 = v665;
  ISO18013MobileSecurityObject.ValidityInfo.validUntil.getter();
  v184 = v179;
  v668 = v181;
  v592 = v180;
  v180(v178, v182);
  if (static Date.< infix(_:_:)())
  {
    v185 = v645;
    defaultLogger()();
    v186 = v664;
    v187 = v646;
    v188 = v669;
    (*(v664 + 16))(v646, v184, v669);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v712[0] = v192;
      *v191 = 136315138;
      sub_100120B50(&qword_100200500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v193 = dispatch thunk of CustomStringConvertible.description.getter();
      v194 = v187;
      v196 = v195;
      (*(v186 + 8))(v194, v669);
      v197 = sub_10010150C(v193, v196, v712);

      *(v191 + 4) = v197;
      _os_log_impl(&_mh_execute_header, v189, v190, "MSO is not yet valid. Valid from = %s", v191, 0xCu);
      sub_100005090(v192);
    }

    else
    {

      (*(v186 + 8))(v187, v188);
    }

    v653(v185, v655);
    v222 = v711;
    v224 = v700;
    (*(v708 + 8))(v711, v700);
    v225 = &enum case for IDCSAnalytics.PayloadValidationResult.notYetValidMSO(_:);
LABEL_48:
    (v709)(v222, *v225, v224);
    goto LABEL_49;
  }

  if (static Date.> infix(_:_:)())
  {
    v207 = v642;
    defaultLogger()();
    v208 = v664;
    v209 = v643;
    v210 = v183;
    v211 = v669;
    (*(v664 + 16))(v643, v210, v669);
    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v712[0] = v215;
      *v214 = 136315138;
      sub_100120B50(&qword_100200500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v216 = dispatch thunk of CustomStringConvertible.description.getter();
      v217 = v208;
      v218 = v216;
      v220 = v219;
      (*(v217 + 8))(v209, v211);
      v221 = sub_10010150C(v218, v220, v712);

      *(v214 + 4) = v221;
      _os_log_impl(&_mh_execute_header, v212, v213, "MSO is expired. Valid until = %s", v214, 0xCu);
      sub_100005090(v215);
      v222 = v711;

      v653(v207, v655);
      v223 = *(v708 + 8);
    }

    else
    {

      (*(v208 + 8))(v209, v211);
      v653(v207, v655);
      v223 = *(v708 + 8);
      v222 = v711;
    }

    v224 = v700;
    v223(v222, v700);
    v225 = &enum case for IDCSAnalytics.PayloadValidationResult.expiredMSO(_:);
    goto LABEL_48;
  }

LABEL_49:
  v226 = v687;
  v227 = ISO18013Package.Document.namespaces.getter();
  v228 = *(ISO18013MobileSecurityObject.valueDigests.getter() + 16);

  if (v228 != *(v227 + 16))
  {
    v242 = v711;
    v243 = v700;
    (*(v708 + 8))(v711, v700);

    v244 = v669;
    v245 = v709;
    (v709)(v242, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentNamespaceCount(_:), v243);
    v707 = "unsupported digest algorithm ";
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v246 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v246;
    swift_willThrow();
    sub_10001C120(v594, v595);

    v247 = *(v664 + 8);
    v247(v665, v244);
    v247(v666, v244);
    v248 = v244;
    v128 = v700;
    v247(v667, v248);
    v130 = v245;
    v129 = v711;
    (*(v672 + 8))(v671, v675);
    (*(v677 + 8))(v679, v676);
    (*(v683 + 8))(v684, v682);
    (*(v686 + 8))(v226, v685);
    goto LABEL_31;
  }

  v229 = v647;
  ISO18013MobileSecurityObject.deviceKeyInfo.getter();
  v230 = v650;
  ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
  (*(v648 + 8))(v229, v649);
  v231 = COSEKey.publicKeyIdentifier.getter();
  v233 = v232;
  (*(v651 + 8))(v230, v652);
  v234 = v701;
  if (v233 >> 60 == 15)
  {
    v235 = v711;
    v236 = v700;
    (*(v708 + 8))(v711, v700);

    v237 = v669;
    v238 = v709;
    (v709)(v235, enum case for IDCSAnalytics.PayloadValidationResult.missingDeviceKeyIdentifier(_:), v236);
    v707 = "ween mso and document";
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v239 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v239;
    swift_willThrow();
    sub_10001C120(v594, v595);

    v240 = *(v664 + 8);
    v240(v665, v237);
    v240(v666, v237);
    v241 = v237;
    v128 = v700;
    v240(v667, v241);
    v130 = v238;
    v129 = v235;
    (*(v672 + 8))(v671, v675);
    goto LABEL_29;
  }

  v642 = v231;
  v643 = v233;
  v249 = sub_10011C568(v701, v702, v227);
  v698 = v249;
  v699 = v250;
  if (!v250)
  {
    v249 = sub_10011ECE8(v234, v702);
    v698 = v249;
    v699 = v250;
  }

  v251 = v663;
  v252 = 0;
  v253 = v227 + 64;
  v254 = 1 << *(v227 + 32);
  if (v254 < 64)
  {
    v255 = ~(-1 << v254);
  }

  else
  {
    v255 = -1;
  }

  v256 = v255 & *(v227 + 64);
  v257 = (v254 + 63) >> 6;
  v647 = (v662 + 16);
  v680 = (v662 + 32);
  v649 = (v644 + 8);
  v650 = (v662 + 8);
  v590 = v227 + 64;
  v589 = v257;
  if (v256)
  {
    goto LABEL_59;
  }

  do
  {
LABEL_60:
    v258 = v252 + 1;
    if (__OFADD__(v252, 1))
    {
      __break(1u);
LABEL_295:
      sub_1000092BC(v249, v250);
      sub_10001C120(v674, v673);
      sub_1000092BC(v680, object);

      (*(v606 + 8))(v614, v607);
      (*(v632 + 8))(v625, v633);
      goto LABEL_161;
    }

    if (v258 >= v257)
    {

      v345 = COSE_Sign1.x509Chain.getter();
      if (v345)
      {
        if (v345[2])
        {
          v347 = v345[4];
          v346 = v345[5];
          sub_100009708(v347, v346);

          v680 = v347;
          object = v346;
          v348 = v593;
          v349 = decodeCertificate(fromDER:)();
          if (v348)
          {
            v341 = v711;
            v350 = v700;
            (*(v708 + 8))(v711, v700);
            v351 = v709;
            (v709)(v341, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerCertificate(_:), v350);
            v707 = "egion-for-photo-id-presentment";
            (*(v704 + 104))(v703, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v705);
            v697 = "agePayloadProcessor.swift";
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            v352 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v707 = v352;
            swift_willThrow();
            sub_10001C120(v642, v643);
            sub_10001C120(v594, v595);

            sub_1000092BC(v680, object);

            v353 = *(v664 + 8);
            v354 = v669;
            v353(v665, v669);
            v353(v666, v354);
            v355 = v354;
            v128 = v350;
            v353(v667, v355);
            v130 = v351;
LABEL_156:
            v129 = v341;
            (*(v672 + 8))(v671, v675);
            (*(v677 + 8))(v679, v676);
            (*(v683 + 8))(v684, v682);
            (*(v686 + 8))(v687, v685);
            (*(v689 + 8))(v706, v688);
            goto LABEL_32;
          }

          v436 = v349;
          v437 = v631;
          SecCertificateRef.publicKeyAlgorithm()();
          countAndFlagsBits = v436;

          if ((*(v632 + 48))(v437, 1, v633) == 1)
          {
            v341 = v711;
            v438 = v700;
            (*(v708 + 8))(v711, v700);
            sub_10000A0D4(v631, &qword_100201528, &qword_1001AB900);
            v439 = v709;
            (v709)(v341, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerAuthPublicKey(_:), v438);
            v707 = " issuer certificate data";
            (*(v704 + 104))(v703, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v705);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            v440 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v707 = v440;
            swift_willThrow();
            sub_10001C120(v642, v643);
            sub_10001C120(v594, v595);

            sub_1000092BC(v680, object);

LABEL_227:
            v472 = *(v664 + 8);
            v473 = v669;
            v472(v665, v669);
            v472(v666, v473);
            v474 = v473;
            v128 = v700;
            v472(v667, v474);
            v130 = v439;
            goto LABEL_156;
          }

          (*(v632 + 32))(v625, v631, v633);
          v674 = SecCertificateRef.rawECPublicKeyData()();
          v673 = v469;
          if (v469 >> 60 == 15)
          {
            v341 = v711;
            v470 = v700;
            (*(v708 + 8))(v711, v700);
            v439 = v709;
            (v709)(v341, enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerAuthPublicKey(_:), v470);
            v707 = "y algorithm is not available";
            (*(v704 + 104))(v703, enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:), v705);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            v471 = swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v707 = v471;
            swift_willThrow();
            sub_10001C120(v642, v643);
            sub_10001C120(v594, v595);

            sub_1000092BC(v680, object);

            (*(v632 + 8))(v625, v633);
            goto LABEL_227;
          }

          v496 = *(v704 + 104);
          LODWORD(v663) = enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:);
          v496(v703);
          LODWORD(v670) = enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:);
          v496(v608);
          LODWORD(v662) = enum case for DIPError.Code.idcsMisformattedIssuerAuthSignature(_:);
          v496(v609);
          LODWORD(v661) = enum case for DIPError.Code.idcsInvalidIssuerAuthSignature(_:);
          v496(v610);
          COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
          v497 = COSE_Sign1.signature.getter();
          v499 = v498;
          COSE_Sign1.algorithmIdentifier.getter();
          COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
          v593 = 0;
          v249 = v497;
          v250 = v499;
          goto LABEL_295;
        }
      }

      v392 = v638;
      defaultLogger()();
      v393 = Logger.logObject.getter();
      v394 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v393, v394))
      {
        v395 = swift_slowAlloc();
        *v395 = 0;
        _os_log_impl(&_mh_execute_header, v393, v394, "Package does not include an issuer certificate; skipping signature validation", v395, 2u);
      }

      v653(v392, v655);
LABEL_161:
      if (v695)
      {
        goto LABEL_168;
      }

      v396 = v637;
      ISO18013KnownDocTypes.init(rawValue:)();
      if ((*(v635 + 48))(v396, 1, v636) != 1)
      {
        v397 = v624;
        sub_100046360(v637, v624, &qword_100201578, &qword_1001AD1E0);
        v398 = (*(v635 + 88))(v397, v636);
        if (v398 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:) || v398 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) || v398 == enum case for ISO18013KnownDocTypes.photoID(_:))
        {
LABEL_229:
          sub_10000A0D4(v637, &qword_100201578, &qword_1001AD1E0);
          v475 = sub_10000C480();
          v476 = v593;
          v477 = sub_10011B9DC(v475);
          v593 = v476;
          if (v476)
          {

            defaultLogger()();
            swift_errorRetain();
            v478 = Logger.logObject.getter();
            v479 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v478, v479))
            {
              v480 = swift_slowAlloc();
              v481 = swift_slowAlloc();
              *v480 = 138412290;
              swift_errorRetain();
              v482 = _swift_stdlib_bridgeErrorToNSError();
              *(v480 + 4) = v482;
              *v481 = v482;
              _os_log_impl(&_mh_execute_header, v478, v479, "Failed to get elements to evaluate age consistency: %@", v480, 0xCu);
              sub_10000A0D4(v481, &qword_1002003B8, &unk_1001AB850);
            }

            else
            {
            }

            v653(v615, v655);
            v593 = 0;
          }

          else
          {
            v526 = v477;

            v527 = sub_10000C5DC(v526);

            (*(v708 + 8))(v711, v700);
            if (v527)
            {
              if (v527 == 1)
              {
                v528 = &enum case for IDCSAnalytics.PayloadValidationResult.inconsistentAgeOver(_:);
              }

              else
              {
                v528 = &enum case for IDCSAnalytics.PayloadValidationResult.inconsistentAgeBirthDate(_:);
              }

              v578 = *v528;
              v577 = v711;
            }

            else
            {
              v577 = v711;
              v578 = v692;
            }

            (v709)(v577, v578, v700);
          }

LABEL_168:
          v399 = v640;
          v400 = v697;
          v598(v640, v600 + v597, v697);
          v401 = (*(v696 + 88))(v399, v400);
          if (v401 != enum case for ISO18013CodingKeyFormat.standard(_:))
          {
            if (v401 == enum case for ISO18013CodingKeyFormat.ACWG(_:))
            {
              v696 = 4;
              goto LABEL_173;
            }

            (*(v696 + 8))(v640, v697);
          }

          v696 = 0;
LABEL_173:
          v402 = COSE_Sign1.x509Chain.getter();
          if (v402)
          {
            v403 = v402;
          }

          else
          {
            v403 = _swiftEmptyArrayStorage;
          }

          v404 = v403[2];
          if (v404)
          {
            v712[0] = _swiftEmptyArrayStorage;
            LODWORD(v312) = specialized ContiguousArray.reserveCapacity(_:)();
            v133 = 0;
            v405 = v403 + 5;
            while (v133 < v403[2])
            {
              v406 = *(v405 - 1);
              v407 = *v405;
              sub_100009708(v406, *v405);
              v408 = v593;
              decodeCertificate(fromDER:)();
              v593 = v408;
              if (v408)
              {
                sub_10001C120(v642, v643);
                sub_10001C120(v594, v595);

                sub_1000092BC(v406, v407);
                v434 = *(v664 + 8);
                v435 = v669;
                v434(v665, v669);
                v434(v666, v435);
                v434(v667, v435);
                (*(v672 + 8))(v671, v675);
                (*(v677 + 8))(v679, v676);
                (*(v683 + 8))(v684, v682);
                (*(v686 + 8))(v687, v685);
                (*(v689 + 8))(v706, v688);

                goto LABEL_238;
              }

              ++v133;
              sub_1000092BC(v406, v407);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              LODWORD(v312) = specialized ContiguousArray._endMutation()();
              v405 += 2;
              if (v404 == v133)
              {

                v409 = v712[0];
                goto LABEL_183;
              }
            }

            __break(1u);
            if (v312 != v663)
            {
              goto LABEL_306;
            }

            v579 = v711;
            v580 = v700;
            (*(v708 + 8))(v711, v700);
            v581 = &enum case for IDCSAnalytics.PayloadValidationResult.unknownIssuerAuthAlgorithm(_:);
LABEL_313:
            (v709)(v579, *v581, v580);
            goto LABEL_314;
          }

          v409 = _swiftEmptyArrayStorage;
LABEL_183:
          if (v409 >> 62)
          {
            v410 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v410 = *((v409 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v411 = 0;
          v697 = _swiftEmptyArrayStorage;
          while (v410 != v411)
          {
            if ((v409 & 0xC000000000000001) != 0)
            {
              v412 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v411 >= *((v409 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_301;
              }

              v412 = *(v409 + 8 * v411 + 32);
            }

            v413 = v412;
            v414 = v411 + 1;
            if (__OFADD__(v411, 1))
            {
              __break(1u);
LABEL_301:
              __break(1u);
            }

            v415 = SecCertificateRef.authorityKeyIdentifier.getter();
            v417 = v416;

            ++v411;
            if (v417 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v697 = sub_100100EA8(0, *(v697 + 2) + 1, 1, v697);
              }

              v419 = *(v697 + 2);
              v418 = *(v697 + 3);
              if (v419 >= v418 >> 1)
              {
                v697 = sub_100100EA8((v418 > 1), v419 + 1, 1, v697);
              }

              v420 = v697;
              *(v697 + 2) = v419 + 1;
              v421 = &v420[16 * v419];
              *(v421 + 4) = v415;
              *(v421 + 5) = v417;
              v411 = v414;
            }
          }

          defaultLogger()();
          v422 = v697;

          v423 = Logger.logObject.getter();
          v424 = static os_log_type_t.debug.getter();

          LODWORD(object) = v424;
          if (os_log_type_enabled(v423, v424))
          {
            v425 = swift_slowAlloc();
            v680 = swift_slowAlloc();
            v712[0] = v680;
            *v425 = 136315138;
            v426 = *(v422 + 2);
            if (v426)
            {
              v717[0] = _swiftEmptyArrayStorage;
              sub_10010A6B4(0, v426, 0);
              v427 = v717[0];
              v428 = (v697 + 40);
              do
              {
                v430 = *(v428 - 1);
                v429 = *v428;
                sub_100009708(v430, *v428);
                v431 = Data.base16EncodedString()();
                sub_1000092BC(v430, v429);
                v717[0] = v427;
                v433 = *(v427 + 16);
                v432 = *(v427 + 24);
                if (v433 >= v432 >> 1)
                {
                  sub_10010A6B4((v432 > 1), v433 + 1, 1);
                  v427 = v717[0];
                }

                v428 += 2;
                *(v427 + 16) = v433 + 1;
                *(v427 + 16 * v433 + 32) = v431;
                --v426;
              }

              while (v426);
            }

            v448 = Array.description.getter();
            v450 = v449;

            v451 = sub_10010150C(v448, v450, v712);

            *(v425 + 4) = v451;
            _os_log_impl(&_mh_execute_header, v423, object, "ISO18013PackagePayloadProcessor: authorityKeyIdentifiers: %s", v425, 0xCu);
            sub_100005090(v680);
          }

          else
          {
          }

          v653(v641, v655);
          v452 = v702;
          sub_10011DA70(v712);
          if (v713)
          {
            sub_10001A940(v712, &v716);
            sub_100120AB4(v712);
            sub_10001AA08(&v716, v717);
            v453 = v718;
            v454 = v719;
            v455 = sub_100009278(v717, v718);
            v456 = v593;
            v680 = sub_10011D00C(v701, v452, v455, v453, v454);
            v697 = v457;
            v593 = v456;
            if (v456)
            {
              sub_10001C120(v642, v643);
              sub_10001C120(v594, v595);

LABEL_237:
              v488 = *(v664 + 8);
              v489 = v669;
              v488(v665, v669);
              v488(v666, v489);
              v488(v667, v489);
              (*(v672 + 8))(v671, v675);
              (*(v677 + 8))(v679, v676);
              (*(v683 + 8))(v684, v682);
              (*(v686 + 8))(v687, v685);
              (*(v689 + 8))(v706, v688);
              sub_100005090(v717);
LABEL_238:
              v707 = v593;
              goto LABEL_239;
            }

            defaultLogger()();

            v462 = Logger.logObject.getter();
            v463 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v462, v463))
            {
              v464 = swift_slowAlloc();
              v465 = swift_slowAlloc();
              v712[0] = v465;
              *v464 = 136315138;
              if (v697)
              {
                v466 = v680;
              }

              else
              {
                v466 = 0;
              }

              if (v697)
              {
                v467 = v697;
              }

              else
              {
                v467 = 0xE000000000000000;
              }

              v468 = sub_10010150C(v466, v467, v712);

              *(v464 + 4) = v468;
              _os_log_impl(&_mh_execute_header, v462, v463, "ISO18013PackagePayloadProcessor: Issuing Authority %s", v464, 0xCu);
              sub_100005090(v465);
            }

            else
            {
            }

            v653(v630, v655);
            sub_100005090(v717);
          }

          else
          {
            sub_10000A0D4(v712, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v458 = Logger.logObject.getter();
            v459 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v458, v459))
            {
              v460 = swift_slowAlloc();
              v461 = swift_slowAlloc();
              v712[0] = v461;
              *v460 = 136315138;
              *(v460 + 4) = sub_10010150C(v701, v702, v712);
              _os_log_impl(&_mh_execute_header, v458, v459, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing authority element identifier", v460, 0xCu);
              sub_100005090(v461);
            }

            v653(v634, v655);
            v680 = 0;
            v697 = 0;
          }

          sub_10011DA70(v712);
          if (v713)
          {
            sub_10001A940(v714, &v716);
            sub_100120AB4(v712);
            sub_10001AA08(&v716, v717);
            v483 = v718;
            v484 = v719;
            v485 = sub_100009278(v717, v718);
            v486 = v593;
            sub_10011D00C(v701, v702, v485, v483, v484);
            v593 = v486;
            if (v486)
            {
              sub_10001C120(v642, v643);
              sub_10001C120(v594, v595);

              goto LABEL_237;
            }

            if (v487)
            {
              v495 = String.uppercased()();
              countAndFlagsBits = v495._countAndFlagsBits;
              object = v495._object;
            }

            else
            {
              countAndFlagsBits = 0;
              object = 0;
            }

            defaultLogger()();
            v500 = Logger.logObject.getter();
            v501 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v500, v501))
            {
              v502 = swift_slowAlloc();
              v503 = swift_slowAlloc();
              v712[0] = v503;
              *v502 = 136315138;
              if (object)
              {
                v504 = countAndFlagsBits;
              }

              else
              {
                v504 = 0;
              }

              if (object)
              {
                v505 = object;
              }

              else
              {
                v505 = 0xE000000000000000;
              }

              v506 = sub_10010150C(v504, v505, v712);

              *(v502 + 4) = v506;
              _os_log_impl(&_mh_execute_header, v500, v501, "ISO18013PackagePayloadProcessor: region: %s", v502, 0xCu);
              sub_100005090(v503);
            }

            v653(v623, v655);
            sub_100005090(v717);
          }

          else
          {
            sub_10000A0D4(v712, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v490 = Logger.logObject.getter();
            v491 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v490, v491))
            {
              v492 = swift_slowAlloc();
              v493 = swift_slowAlloc();
              v712[0] = v493;
              *v492 = 136315138;
              *(v492 + 4) = sub_10010150C(v701, v702, v712);
              _os_log_impl(&_mh_execute_header, v490, v491, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing country element identifier", v492, 0xCu);
              sub_100005090(v493);
            }

            v653(v629, v655);
            countAndFlagsBits = sub_10011ECE8(v701, v702);
            object = v494;
          }

          sub_10011DA70(v712);
          if (v713)
          {
            sub_10001A940(v715, &v716);
            sub_100120AB4(v712);
            sub_10001AA08(&v716, v717);
            v507 = v718;
            v508 = v719;
            v509 = sub_100009278(v717, v718);
            v510 = v593;
            v674 = sub_10011D00C(v701, v702, v509, v507, v508);
            v593 = v510;
            if (v510)
            {
              sub_10001C120(v642, v643);
              sub_10001C120(v594, v595);

              v512 = *(v664 + 8);
              v513 = v669;
              v512(v665, v669);
              v512(v666, v513);
              v512(v667, v513);
              (*(v672 + 8))(v671, v675);
              (*(v677 + 8))(v679, v676);
              (*(v683 + 8))(v684, v682);
              (*(v686 + 8))(v687, v685);
              (*(v689 + 8))(v706, v688);
              sub_100005090(v717);

              goto LABEL_238;
            }

            v518 = v511;

            defaultLogger()();

            v519 = Logger.logObject.getter();
            v520 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v519, v520))
            {
              v521 = swift_slowAlloc();
              v522 = swift_slowAlloc();
              v712[0] = v522;
              *v521 = 136315138;
              if (v518)
              {
                v523 = v674;
              }

              else
              {
                v523 = 0;
              }

              if (v518)
              {
                v524 = v518;
              }

              else
              {
                v524 = 0xE000000000000000;
              }

              v525 = sub_10010150C(v523, v524, v712);

              *(v521 + 4) = v525;
              _os_log_impl(&_mh_execute_header, v519, v520, "ISO18013PackagePayloadProcessor: Issuing Jurisdiction %s", v521, 0xCu);
              sub_100005090(v522);
            }

            else
            {
            }

            v653(v613, v655);
            sub_100005090(v717);
          }

          else
          {
            sub_10000A0D4(v712, &qword_100203888, &qword_1001AE030);
            defaultLogger()();

            v514 = Logger.logObject.getter();
            v515 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v514, v515))
            {
              v516 = swift_slowAlloc();
              v517 = swift_slowAlloc();
              v712[0] = v517;
              *v516 = 136315138;
              *(v516 + 4) = sub_10010150C(v701, v702, v712);
              _os_log_impl(&_mh_execute_header, v514, v515, "ISO18013PackagePayloadProcessor: docType: %s doesnt have issuing jurisdiction element identifier", v516, 0xCu);
              sub_100005090(v517);
            }

            v653(v622, v655);
            v674 = 0;
            v518 = 0;
          }

          v529 = [v707 standardUserDefaults];
          v530._countAndFlagsBits = 0xD00000000000002ELL;
          v530._object = 0x80000001001BAE10;
          v531 = NSUserDefaults.internalBool(forKey:)(v530);

          if (v531)
          {
            v532 = v635;
            v533 = v611;
            v534 = v636;
            (*(v635 + 104))(v611, enum case for ISO18013KnownDocTypes.photoID(_:), v636);
            v535 = ISO18013KnownDocTypes.rawValue.getter();
            v537 = v536;
            (*(v532 + 8))(v533, v534);
            if (v701 == v535 && v702 == v537)
            {

LABEL_282:
              defaultLogger()();

              v539 = Logger.logObject.getter();
              v540 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v539, v540))
              {
                v541 = swift_slowAlloc();
                v712[0] = swift_slowAlloc();
                *v541 = 136315394;
                *(v541 + 4) = sub_10010150C(v701, v702, v712);
                *(v541 + 12) = 2080;
                if (object)
                {
                  v542 = countAndFlagsBits;
                }

                else
                {
                  v542 = 0x3E6C696E3CLL;
                }

                if (object)
                {
                  v543 = object;
                }

                else
                {
                  v543 = 0xE500000000000000;
                }

                v544 = sub_10010150C(v542, v543, v712);

                *(v541 + 14) = v544;
                _os_log_impl(&_mh_execute_header, v539, v540, "ISO18013PackagePayloadProcessor update region to US for docType: %s region: %s", v541, 0x16u);
                swift_arrayDestroy();
              }

              v653(v612, v655);

              object = 0xE200000000000000;
              countAndFlagsBits = 21333;
              goto LABEL_291;
            }

            v538 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v538)
            {
              goto LABEL_282;
            }
          }

LABEL_291:
          v545 = v693;
          v546 = v619;
          v547 = v694;
          (*(v693 + 104))(v619, **(&off_1001F7C28 + v695), v694);
          type metadata accessor for IDCSAnalytics();

          v548 = v702;

          v710 = v518;
          static IDCSAnalytics.sendPayloadValidationEvent(reason:docType:issuer:result:region:issuingJurisdiction:hasTaggedIssuerAuth:)();

          (*(v545 + 8))(v546, v547);
          v549 = v679;
          sub_10011E040(v628);
          v550 = *(v600 + 120);
          v709 = *(v600 + 112);
          v707 = v550;
          sub_100009708(v709, v550);
          v551 = v616;
          ISO18013MobileSecurityObject.validityInfo.getter();
          ISO18013MobileSecurityObject.ValidityInfo.validFrom.getter();
          v552 = v551;
          v553 = v658;
          v554 = v592;
          v592(v552, v658);
          v555 = v617;
          ISO18013MobileSecurityObject.validityInfo.getter();
          ISO18013MobileSecurityObject.ValidityInfo.validUntil.getter();
          v554(v555, v553);
          v556 = v618;
          ISO18013MobileSecurityObject.validityInfo.getter();
          v557 = v620;
          ISO18013MobileSecurityObject.ValidityInfo.signed.getter();
          v554(v556, v553);
          v558 = v664;
          v559 = v669;
          (*(v664 + 56))(v557, 0, 1, v669);
          v560 = v684;
          v561 = COSE_Sign1.x509Chain.getter();
          sub_10001C120(v594, v595);

          v562 = *(v558 + 8);
          v562(v665, v559);
          v563 = _swiftEmptyArrayStorage;
          if (v561)
          {
            v563 = v561;
          }

          v705 = v563;
          v562(v666, v559);
          v562(v667, v559);
          (*(v672 + 8))(v671, v675);
          (*(v677 + 8))(v549, v676);
          (*(v683 + 8))(v560, v682);
          (*(v686 + 8))(v687, v685);
          (*(v689 + 8))(v706, v688);
          (*(v708 + 8))(v711, v700);
          v564 = v621;
          *v621 = v701;
          *(v564 + 1) = v548;
          v565 = v709;
          *(v564 + 2) = v696;
          *(v564 + 3) = v565;
          v566 = v642;
          *(v564 + 4) = v707;
          *(v564 + 5) = v566;
          *(v564 + 6) = v643;
          v567 = type metadata accessor for PayloadMetadata(0);
          v568 = *(v558 + 32);
          v568(&v564[v567[8]], v626, v559);
          v568(&v564[v567[9]], v627, v559);
          sub_100046524(v557, &v564[v567[10]], &qword_1002004D0, &unk_1001AE1C0);
          v569 = &v564[v567[11]];
          v570 = v699;
          *v569 = v698;
          *(v569 + 1) = v570;
          *&v564[v567[12]] = v705;
          v571 = &v564[v567[13]];
          v572 = object;
          *v571 = countAndFlagsBits;
          v571[1] = v572;
          v573 = &v564[v567[14]];
          v574 = v710;
          *v573 = v674;
          *(v573 + 1) = v574;
          v575 = &v564[v567[15]];
          v576 = v697;
          *v575 = v680;
          *(v575 + 1) = v576;
          return sub_100046524(v628, &v564[v567[16]], &qword_100203870, &qword_1001AE008);
        }

        (*(v635 + 8))(v624, v636);
      }

      sub_10000A0D4(v637, &qword_100201578, &qword_1001AD1E0);
      goto LABEL_168;
    }

    v256 = *(v253 + 8 * v258);
    ++v252;
  }

  while (!v256);
  while (1)
  {
    v588 = v258;
    v259 = __clz(__rbit64(v256)) | (v258 << 6);
    v591 = v227;
    v260 = (*(v227 + 48) + 16 * v259);
    v262 = *v260;
    v261 = v260[1];
    v263 = *(*(v227 + 56) + 8 * v259);

    v264 = ISO18013MobileSecurityObject.valueDigests.getter();
    v648 = v262;
    v652 = v261;
    sub_100112C74(v262, v261, v264);
    v266 = v265;

    v657 = v266;
    if (!v266)
    {
      v441 = v711;
      v442 = v700;
      (*(v708 + 8))(v711, v700);

      v443 = v442;
      v444 = v709;
      (v709)(v441, enum case for IDCSAnalytics.PayloadValidationResult.missingNamespaceInMSO(_:), v443);
      v712[0] = 0;
      v712[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v712[0] = 0xD000000000000012;
      v712[1] = 0x80000001001BAD70;
      v445._countAndFlagsBits = v648;
      v445._object = v652;
      String.append(_:)(v445);

      v446._countAndFlagsBits = 0x6F736D206E6920;
      v446._object = 0xE700000000000000;
      String.append(_:)(v446);
      v707 = v712[0];
      v697 = v712[1];
      (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v447 = swift_allocError();
      v341 = v441;
      v388 = v444;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v707 = v447;
      swift_willThrow();

      sub_10001C120(v642, v643);
      sub_10001C120(v594, v595);

LABEL_155:
      v389 = *(v664 + 8);
      v390 = v669;
      v389(v665, v669);
      v389(v666, v390);
      v391 = v390;
      v128 = v700;
      v389(v667, v391);
      v130 = v388;
      goto LABEL_156;
    }

    v267 = 0;
    v587 = (v256 - 1) & v256;
    v651 = v263;
    v268 = (v263 + 64);
    v269 = 1 << *(v263 + 32);
    v270 = v269 < 64 ? ~(-1 << v269) : -1;
    v271 = v270 & *(v263 + 64);
    v272 = (v269 + 63) >> 6;
    v273 = v593;
    v274 = v661;
    v646 = v268;
    v645 = v272;
LABEL_70:
    if (!v271)
    {
      if (v272 <= v267 + 1)
      {
        v278 = v267 + 1;
      }

      else
      {
        v278 = v272;
      }

      v279 = v278 - 1;
      while (1)
      {
        v277 = v267 + 1;
        if (__OFADD__(v267, 1))
        {
          break;
        }

        if (v277 >= v272)
        {
          v593 = v273;
          v320 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
          v289 = v660;
          (*(*(v320 - 8) + 56))(v660, 1, 1, v320);
          v271 = 0;
          v267 = v279;
          goto LABEL_81;
        }

        v271 = *&v268[8 * v277];
        ++v267;
        if (v271)
        {
          v276 = v251;
          v593 = v273;
          v267 = v277;
          goto LABEL_80;
        }
      }

      __break(1u);
      goto LABEL_229;
    }

    v276 = v251;
    v593 = v273;
    v277 = v267;
LABEL_80:
    v280 = __clz(__rbit64(v271));
    v271 &= v271 - 1;
    v281 = v280 | (v277 << 6);
    v282 = *(v651 + 56);
    v283 = (*(v651 + 48) + 16 * v281);
    v284 = v283[1];
    object = *v283;
    v285 = v662;
    v286 = v656;
    (*(v662 + 16))(v656, v282 + *(v662 + 72) * v281, v276);
    v287 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
    v288 = *(v287 + 48);
    v289 = v660;
    *v660 = object;
    *(v289 + 8) = v284;
    v290 = *(v285 + 32);
    v251 = v276;
    v290(v289 + v288, v286, v276);
    (*(*(v287 - 8) + 56))(v289, 0, 1, v287);

    v274 = v661;
LABEL_81:
    sub_100046524(v289, v274, &qword_100203498, &qword_1001ADD28);
    v291 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
    if ((*(*(v291 - 8) + 48))(v274, 1, v291) != 1)
    {
      break;
    }

    v252 = v588;
    v227 = v591;
    v253 = v590;
    v257 = v589;
    v256 = v587;
    if (!v587)
    {
      goto LABEL_60;
    }

LABEL_59:
    v258 = v252;
  }

  v293 = *v274;
  v292 = v274[1];
  (*v680)(v673, v274 + *(v291 + 48), v251);
  CBOREncodedCBOR.value.getter();
  v294 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  countAndFlagsBits = v292;
  if (v293 == v294 && v292 == v295)
  {
  }

  else
  {
    v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v296 & 1) == 0)
    {
      v368 = v711;
      v384 = v700;
      (*(v708 + 8))(v711, v700);

      v385 = v384;
      v371 = v709;
      (v709)(v368, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentElementIdentifier(_:), v385);
      v712[0] = 0;
      v712[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v386._countAndFlagsBits = 0xD000000000000037;
      v386._object = 0x80000001001BAD90;
      String.append(_:)(v386);
      v387._countAndFlagsBits = v293;
      v387._object = countAndFlagsBits;
      String.append(_:)(v387);

      v707 = v712[0];
      v697 = v712[1];
      (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v374 = swift_allocError();
      goto LABEL_154;
    }
  }

  v297 = ISO18013IssuerSignedItem.digestID.getter();
  if (v297 < 0)
  {
    v368 = v711;
    v369 = v700;
    (*(v708 + 8))(v711, v700);

    v370 = v369;
    v371 = v709;
    (v709)(v368, enum case for IDCSAnalytics.PayloadValidationResult.invalidDigestID(_:), v370);
    v712[0] = 0;
    v712[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    strcpy(v712, "digest ID for ");
    HIBYTE(v712[1]) = -18;
    v372._countAndFlagsBits = v293;
    v372._object = countAndFlagsBits;
    String.append(_:)(v372);

    v373._countAndFlagsBits = 0xD00000000000001BLL;
    v373._object = 0x80000001001BADF0;
    String.append(_:)(v373);
    v707 = v712[0];
    v697 = v712[1];
    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v374 = swift_allocError();
LABEL_154:
    v341 = v368;
    v388 = v371;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v374;
    swift_willThrow();

    sub_10001C120(v642, v643);
    sub_10001C120(v594, v595);

    (*v649)(v674, v659);
    (*v650)(v673, v663);
    goto LABEL_155;
  }

  v298 = v657;
  v299 = v700;
  if (!*(v657 + 2) || (v300 = sub_100101B90(v297), (v301 & 1) == 0))
  {

    v334 = v711;
    (*(v708 + 8))(v711, v299);
    (v709)(v334, enum case for IDCSAnalytics.PayloadValidationResult.missingDigestID(_:), v299);
    v712[0] = 0;
    v712[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v712[0] = 0x20676E697373696DLL;
    v712[1] = 0xEF20747365676964;
    v717[0] = ISO18013IssuerSignedItem.digestID.getter();
    v335._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v335);

    v336._countAndFlagsBits = 0x656C6520726F6620;
    v336._object = 0xED000020746E656DLL;
    String.append(_:)(v336);
    v337._countAndFlagsBits = v293;
    v337._object = countAndFlagsBits;
    String.append(_:)(v337);

    v338._countAndFlagsBits = 0x656D616E206E6920;
    v338._object = 0xEE00206563617073;
    String.append(_:)(v338);
    v339._countAndFlagsBits = v648;
    v339._object = v652;
    String.append(_:)(v339);

    (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v340 = swift_allocError();
    v341 = v334;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v707 = v340;
    swift_willThrow();

    sub_10001C120(v642, v643);
    sub_10001C120(v594, v595);

    (*v649)(v674, v659);
    (*v650)(v673, v663);
    v342 = *(v664 + 8);
    v343 = v669;
    v342(v665, v669);
    v342(v666, v343);
    v344 = v343;
    v128 = v700;
    v342(v667, v344);
    v130 = v709;
    goto LABEL_156;
  }

  v644 = v293;
  v302 = (*(v298 + 7) + 16 * v300);
  v303 = v302[1];
  v670 = *v302;
  sub_100009708(v670, v303);
  v304 = CBOREncodedCBOR.dataValue.getter();
  v306 = v305;
  v307 = v593;
  v308 = computeISO18013Digest(algorithm:data:)();
  if (v307)
  {
    sub_1000092BC(v304, v306);

    sub_10001C120(v642, v643);
    sub_10001C120(v594, v595);

    sub_1000092BC(v670, v303);

    (*v649)(v674, v659);
    (*v650)(v673, v663);
    v375 = *(v664 + 8);
    v376 = v669;
    v375(v665, v669);
    v375(v666, v376);
    v375(v667, v376);
    (*(v672 + 8))(v671, v675);
    (*(v677 + 8))(v679, v676);
    (*(v683 + 8))(v684, v682);
    (*(v686 + 8))(v687, v685);
    (*(v689 + 8))(v706, v688);
    v707 = v307;
    goto LABEL_239;
  }

  v310 = v308;
  v311 = v309;
  LODWORD(v312) = sub_1000092BC(v304, v306);
  v313 = v303 >> 62;
  object = v311;
  v314 = v311 >> 62;
  if (v303 >> 62 == 3)
  {
    v315 = 0;
    v273 = 0;
    v316 = v670;
    v133 = v310;
    if (!v670 && v303 == 0xC000000000000000 && v314 >= 3)
    {
      v315 = 0;
      if (!v310 && object == 0xC000000000000000)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v273 = 0;
    v316 = v670;
    v133 = v310;
    if (v313 > 1)
    {
      if (v313 == 2)
      {
        v318 = *(v670 + 16);
        v317 = *(v670 + 24);
        v319 = __OFSUB__(v317, v318);
        v315 = v317 - v318;
        if (v319)
        {
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
          goto LABEL_311;
        }
      }

      else
      {
        v315 = 0;
      }
    }

    else if (v313)
    {
      LODWORD(v315) = HIDWORD(v670) - v670;
      if (__OFSUB__(HIDWORD(v670), v670))
      {
        goto LABEL_308;
      }

      v315 = v315;
    }

    else
    {
      v315 = BYTE6(v303);
    }
  }

  if (v314 > 1)
  {
    if (v314 != 2)
    {
      if (v315)
      {
        goto LABEL_147;
      }

      goto LABEL_69;
    }

    v323 = *(v133 + 16);
    v322 = *(v133 + 24);
    v319 = __OFSUB__(v322, v323);
    v321 = v322 - v323;
    if (v319)
    {
      goto LABEL_305;
    }
  }

  else
  {
    if (!v314)
    {
      v321 = BYTE6(object);
      goto LABEL_117;
    }

    LODWORD(v321) = HIDWORD(v133) - v133;
    if (__OFSUB__(HIDWORD(v133), v133))
    {
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      if (v312 == v662)
      {
        v579 = v711;
        v580 = v700;
        (*(v708 + 8))(v711, v700);
        v581 = &enum case for IDCSAnalytics.PayloadValidationResult.misformattedIssuerSignature(_:);
        goto LABEL_313;
      }

LABEL_311:
      if (v312 != v661)
      {
        goto LABEL_318;
      }

      v579 = v711;
      v580 = v700;
      (*(v708 + 8))(v711, v700);
      v581 = &enum case for IDCSAnalytics.PayloadValidationResult.invalidIssuerSignature(_:);
      goto LABEL_313;
    }

    v321 = v321;
  }

LABEL_117:
  if (v315 != v321)
  {
    goto LABEL_147;
  }

  if (v315 < 1)
  {
    goto LABEL_69;
  }

  if (v313 <= 1)
  {
    if (!v313)
    {
      v712[0] = v316;
      LOWORD(v712[1]) = v303;
      BYTE2(v712[1]) = BYTE2(v303);
      BYTE3(v712[1]) = BYTE3(v303);
      BYTE4(v712[1]) = BYTE4(v303);
      BYTE5(v712[1]) = BYTE5(v303);
      v324 = v133;
      v325 = v133;
      v326 = object;
      sub_100009708(v324, object);
      sub_100100058(v712, v325, v326, v717);
      v273 = 0;
      sub_1000092BC(v325, v326);
      v133 = v325;
      if ((v717[0] & 1) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_69;
    }

    if (v316 >> 32 < v316)
    {
      goto LABEL_309;
    }

    sub_100009708(v133, object);
    v593 = __DataStorage._bytes.getter();
    if (v593)
    {
      v329 = __DataStorage._offset.getter();
      if (__OFSUB__(v316, v329))
      {
        goto LABEL_316;
      }

      v330 = &v593[v316 - v329];
    }

    else
    {
      v330 = 0;
    }

    __DataStorage._length.getter();
    v332 = v330;
    goto LABEL_138;
  }

  if (v313 != 2)
  {
    *(v712 + 6) = 0;
    v712[0] = 0;
    v331 = object;
    sub_100009708(v133, object);
    sub_100100058(v712, v133, v331, v717);
    v273 = 0;
    sub_1000092BC(v133, v331);
    if ((v717[0] & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_69;
  }

  v327 = *(v316 + 16);
  v593 = *(v316 + 24);
  sub_100009708(v133, object);
  v312 = __DataStorage._bytes.getter();
  if (!v312)
  {
    v586 = 0;
    goto LABEL_134;
  }

  v328 = v312;
  v312 = __DataStorage._offset.getter();
  if (!__OFSUB__(v327, v312))
  {
    v586 = v327 - v312 + v328;
LABEL_134:
    if (__OFSUB__(v593, v327))
    {
      goto LABEL_310;
    }

    __DataStorage._length.getter();
    v332 = v586;
LABEL_138:
    v333 = object;
    sub_100100058(v332, v133, object, v712);
    v273 = 0;
    sub_1000092BC(v133, v333);
    v316 = v670;
    if ((v712[0] & 1) == 0)
    {
LABEL_147:

      v356 = v639;
      defaultLogger()();
      sub_100009708(v316, v303);
      v357 = object;
      sub_100009708(v133, object);

      v358 = Logger.logObject.getter();
      v359 = static os_log_type_t.debug.getter();

      sub_1000092BC(v133, v357);
      sub_1000092BC(v316, v303);
      LODWORD(v707) = v359;
      v360 = v358;
      if (os_log_type_enabled(v358, v359))
      {
        v361 = swift_slowAlloc();
        v697 = swift_slowAlloc();
        v712[0] = v697;
        *v361 = 136315650;
        *(v361 + 4) = sub_10010150C(v644, countAndFlagsBits, v712);
        *(v361 + 12) = 2080;
        v362 = Data.base16EncodedString()();
        v363 = sub_10010150C(v362._countAndFlagsBits, v362._object, v712);

        *(v361 + 14) = v363;
        *(v361 + 22) = 2080;
        v364 = Data.base16EncodedString()();
        v365 = sub_10010150C(v364._countAndFlagsBits, v364._object, v712);

        *(v361 + 24) = v365;
        _os_log_impl(&_mh_execute_header, v360, v707, "Digests for element %s are inconsistent; computed %s, mso contains %s", v361, 0x20u);
        swift_arrayDestroy();

        v366 = v700;

        v653(v356, v655);
        v367 = v711;
        (*(v708 + 8))(v711, v366);
      }

      else
      {

        v653(v356, v655);
        v367 = v711;
        v366 = v700;
        (*(v708 + 8))(v711, v700);
      }

      v377 = v366;
      v378 = v709;
      (v709)(v367, enum case for IDCSAnalytics.PayloadValidationResult.inconsistentDigest(_:), v377);
      v712[0] = 0;
      v712[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v712[0] = 0xD000000000000018;
      v712[1] = 0x80000001001BADD0;
      v379._countAndFlagsBits = v644;
      v379._object = countAndFlagsBits;
      String.append(_:)(v379);

      v707 = v712[0];
      v697 = v712[1];
      (*(v704 + 104))(v703, enum case for DIPError.Code.idcsInvalidPayload(_:), v705);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v380 = swift_allocError();
      v381 = v711;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v707 = v380;
      swift_willThrow();

      sub_10001C120(v642, v643);
      sub_10001C120(v594, v595);

      sub_1000092BC(v670, v303);
      sub_1000092BC(v133, object);
      (*v649)(v674, v659);
      (*v650)(v673, v663);
      v382 = *(v664 + 8);
      v383 = v669;
      v382(v665, v669);
      v382(v666, v383);
      v382(v667, v383);
      v130 = v378;
      v129 = v381;
      (*(v672 + 8))(v671, v675);
      (*(v677 + 8))(v679, v676);
      (*(v683 + 8))(v684, v682);
      (*(v686 + 8))(v687, v685);
      (*(v689 + 8))(v706, v688);
      v127 = v694;
      v201 = v691;
      v128 = v700;
      goto LABEL_34;
    }

LABEL_69:

    v275 = v674;
    sub_10011EFAC(v674, v701, v702, v648, v652, v698, v699);
    sub_1000092BC(v316, v303);
    sub_1000092BC(v133, object);
    (*v649)(v275, v659);
    v251 = v663;
    (*v650)(v673, v663);
    v268 = v646;
    v272 = v645;
    goto LABEL_70;
  }

  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  (*(v704 + 8))(v602, v705);
LABEL_314:
  sub_10000A0D4(v605, &qword_100201488, &qword_1001ACFD0);
  (v133)(v703, enum case for DIPError.Code.internalError(_:), v705);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v582 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v707 = v582;
  swift_willThrow();
  sub_10001C120(v642, v643);
  sub_10001C120(v594, v595);

  sub_10001C120(v674, v673);
  sub_1000092BC(v680, object);

  (*(v606 + 8))(v614, v607);
  (*(v632 + 8))(v625, v633);
  v583 = *(v664 + 8);
  v584 = v669;
  v583(v665, v669);
  v583(v666, v584);
  v583(v667, v584);
  (*(v672 + 8))(v671, v675);
  (*(v677 + 8))(v679, v676);
  (*(v683 + 8))(v684, v682);
  (*(v686 + 8))(v687, v685);
  (*(v689 + 8))(v706, v688);
LABEL_239:
  v127 = v694;
  v128 = v700;
  v129 = v711;
LABEL_5:
  v130 = v709;
LABEL_33:
  v201 = v691;
LABEL_34:
  (v130)(v201, v692, v128);
  sub_100120B50(&qword_1002038B0, &type metadata accessor for IDCSAnalytics.PayloadValidationResult, &protocol conformance descriptor for IDCSAnalytics.PayloadValidationResult);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v202 = v128;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v712[0] == v717[0] && v712[1] == v717[1])
  {
    v203 = 1;
  }

  else
  {
    v203 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v708 = *(v708 + 8);
  (v708)(v201, v202);

  if (v203)
  {
    (v708)(v129, v202);
    (v709)(v129, enum case for IDCSAnalytics.PayloadValidationResult.invalid(_:), v202);
  }

  v204 = v693;
  v205 = v690;
  (*(v693 + 104))(v690, **(&off_1001F7C28 + v695), v127);
  type metadata accessor for IDCSAnalytics();
  static IDCSAnalytics.sendPayloadValidationEvent(reason:docType:issuer:result:region:issuingJurisdiction:hasTaggedIssuerAuth:)();

  (*(v204 + 8))(v205, v127);
  (*(v704 + 104))(v703, enum case for DIPError.Code.internalError(_:), v705);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100120B50(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (v708)(v711, v202);
}