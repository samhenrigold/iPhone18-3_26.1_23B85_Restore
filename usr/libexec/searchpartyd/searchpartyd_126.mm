void sub_100DFD698(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100DF46A4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E04B8C();
      goto LABEL_18;
    }

    sub_100E07EBC(v11 + 1);
  }

  v13 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  v14 = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      v20 = *(v19 + 16);
      v21 = *v19 == result && *(v19 + 8) == a2;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v20 ^ a3) & 1) == 0)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = result;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3 & 1;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_21:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100DFD854(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF4924(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BC1B0, &qword_1013E9ED8);
      goto LABEL_12;
    }

    sub_100E08114(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100DFDA50(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100DF4BC8(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100E04D08();
        goto LABEL_68;
      }

      sub_100E08390(v8 + 1);
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
              sub_100017D5C(v20, v19);
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
            sub_100017D5C(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_100017D5C(v20, v19);
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
              sub_100771A28(v34, v41, v42, v50);
              result = sub_100016590(v20, v19);
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
            sub_100017D5C(v20, v19);
            v13 = v46;
          }

          sub_100771A28(v50, v7, a2, &v49);
          result = sub_100016590(v20, v19);
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

void sub_100DFDEC8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100DFAED0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E058B0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100E0DF30(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100008BB8(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100DFE058(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100DF4E3C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E04E64();
      goto LABEL_18;
    }

    sub_100E085CC(v11 + 1);
  }

  v13 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v10);
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == v10)
      {
        v20 = *(v19 + 1) == a2 && *(v19 + 2) == a3;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

uint64_t sub_100DFE20C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8BF8(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_100E05A04(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_100E0BF84(v8 + 1, a4, a5);
  }

  v11 = *v6;
  result = static Hasher._hash(seed:_:)();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFE348(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for RawSearchResult(0);
  v26 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v3;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF50BC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_100E04984(type metadata accessor for RawSearchResult, &qword_1016A58C0, &qword_1013B32C8, type metadata accessor for RawSearchResult);
        goto LABEL_19;
      }

      sub_100E08824(v10 + 1);
    }

    v12 = *v3;
    Hasher.init(_seed:)();
    sub_100D15128(v27);
    v13 = Hasher._finalize()();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      v16 = *a1;
      v17 = *(v26 + 72);
      do
      {
        sub_100E0ED24(*(v12 + 48) + v17 * a2, v9, type metadata accessor for RawSearchResult);
        if (*v9 == v16 && (static Date.== infix(_:_:)() & 1) != 0 && *&v9[v7[6]] == *&a1[v7[6]] && *&v9[v7[7]] == *&a1[v7[7]] && *&v9[v7[8]] == *&a1[v7[8]])
        {
          v18 = static UUID.== infix(_:_:)();
          sub_100E0EC5C(v9, type metadata accessor for RawSearchResult);
          if (v18)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_100E0EC5C(v9, type metadata accessor for RawSearchResult);
        }

        a2 = (a2 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v19 + 48) + *(v26 + 72) * a2, type metadata accessor for RawSearchResult);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_22:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_100DFE644(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_100DF86E0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100E058B0(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_100E0BABC(v10 + 1, a4, a5);
  }

  v13 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100DFE850(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF5358(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100E0653C(&qword_1016A5A68, &qword_1013B3588);
        goto LABEL_87;
      }

      sub_100E08A8C(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_1012C5AB0(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xD000000000000015;
            v12 = 0x8000000101347FF0;
            break;
          case 2:
            v13 = 0xD000000000000016;
            v12 = 0x8000000101348010;
            break;
          case 3:
            v12 = 0xE600000000000000;
            v13 = 0x657461636F6CLL;
            break;
          case 4:
            v12 = 0xEC000000676E6972;
            v13 = 0x6168537472617473;
            break;
          case 5:
            v13 = 0x72616853706F7473;
            goto LABEL_25;
          case 6:
            v15 = 2036427888;
            goto LABEL_29;
          case 7:
            v15 = 1886352499;
LABEL_29:
            v13 = v15 | 0x6E756F5300000000;
            v12 = 0xE900000000000064;
            break;
          case 8:
            v13 = 0x61654C6E69676562;
            v12 = 0xED0000676E696873;
            break;
          case 9:
            v13 = 0x687361654C646E65;
LABEL_25:
            v12 = 0xEB00000000676E69;
            break;
          case 0xA:
            v13 = 0x4654426E69676562;
            v12 = 0xEE00676E69646E69;
            break;
          case 0xB:
            v13 = 0x6E69465442646E65;
            v14 = 1735289188;
            goto LABEL_36;
          case 0xC:
            v12 = 0xEC000000676E6967;
            v13 = 0x6E61526E69676562;
            break;
          case 0xD:
            v13 = 0x69676E6152646E65;
            v12 = 0xEA0000000000676ELL;
            break;
          case 0xE:
            v13 = 0x6F4C656C62616E65;
            v12 = 0xEE0065646F4D7473;
            break;
          case 0xF:
            v13 = 0x4C656C6261736964;
            v12 = 0xEF65646F4D74736FLL;
            break;
          case 0x10:
            v12 = 0xE600000000000000;
            v13 = 0x656D616E6572;
            break;
          case 0x11:
            v13 = 0x7463656E6E6F63;
            break;
          case 0x12:
            v12 = 0xEA00000000007463;
            v13 = 0x656E6E6F63736964;
            break;
          case 0x13:
            v13 = 0xD000000000000017;
            v12 = 0x80000001013480F0;
            break;
          case 0x14:
            v12 = 0xE600000000000000;
            v13 = 0x726961706E75;
            break;
          case 0x15:
            v13 = 0x65746167656C6564;
            v12 = 0xEE00657261685364;
            break;
          case 0x16:
            v13 = 0xD000000000000013;
            v12 = 0x8000000101348120;
            break;
          case 0x17:
            v13 = 0x6F69736963657270;
            v14 = 1481004654;
LABEL_36:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
        switch(v6)
        {
          case 1:
            v16 = 0x8000000101347FF0;
            if (v13 == 0xD000000000000015)
            {
              goto LABEL_80;
            }

            goto LABEL_81;
          case 2:
            v16 = 0x8000000101348010;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 3:
            v16 = 0xE600000000000000;
            if (v13 != 0x657461636F6CLL)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 4:
            v16 = 0xEC000000676E6972;
            if (v13 != 0x6168537472617473)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 5:
            v22 = 0x72616853706F7473;
            goto LABEL_61;
          case 6:
            v23 = 2036427888;
            goto LABEL_67;
          case 7:
            v23 = 1886352499;
LABEL_67:
            v16 = 0xE900000000000064;
            if (v13 != (v23 | 0x6E756F5300000000))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 8:
            v16 = 0xED0000676E696873;
            if (v13 != 0x61654C6E69676562)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 9:
            v22 = 0x687361654C646E65;
LABEL_61:
            v16 = 0xEB00000000676E69;
            if (v13 != v22)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 10:
            v18 = 0x4654426E69676562;
            v19 = 0x676E69646E69;
            goto LABEL_72;
          case 11:
            v20 = 0x6E69465442646E65;
            v21 = 1735289188;
            goto LABEL_85;
          case 12:
            v16 = 0xEC000000676E6967;
            if (v13 != 0x6E61526E69676562)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 13:
            v16 = 0xEA0000000000676ELL;
            if (v13 != 0x69676E6152646E65)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 14:
            v18 = 0x6F4C656C62616E65;
            v19 = 0x65646F4D7473;
            goto LABEL_72;
          case 15:
            v16 = 0xEF65646F4D74736FLL;
            if (v13 != 0x4C656C6261736964)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 16:
            v16 = 0xE600000000000000;
            if (v13 != 0x656D616E6572)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 17:
            if (v13 != 0x7463656E6E6F63)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 18:
            v16 = 0xEA00000000007463;
            if (v13 != 0x656E6E6F63736964)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 19:
            v17 = 0xD000000000000017;
            v16 = 0x80000001013480F0;
            goto LABEL_79;
          case 20:
            v16 = 0xE600000000000000;
            if (v13 != 0x726961706E75)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 21:
            v18 = 0x65746167656C6564;
            v19 = 0x657261685364;
LABEL_72:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != v18)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 22:
            v16 = 0x8000000101348120;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 23:
            v20 = 0x6F69736963657270;
            v21 = 1481004654;
LABEL_85:
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v20)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v13 != v17)
            {
              goto LABEL_81;
            }

LABEL_80:
            if (v12 == v16)
            {
              goto LABEL_90;
            }

LABEL_81:
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {
              goto LABEL_91;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_87:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v6;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_90:

LABEL_91:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v28;
  }

  return result;
}

Swift::Int sub_100DFF01C(Swift::Int result, unint64_t a2, char a3)
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
    sub_100DF58B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E05030();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E08FA8(v5 + 1);
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
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  v12 = (*(v11 + 48) + 4 * a2);
  *v12 = v4;
  v12[1] = BYTE1(v4) & 1;
  v12[2] = BYTE2(v4) & 1;
  v12[3] = HIBYTE(v4) & 1;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v11 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFF188(uint64_t *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for OwnerSharingCircle(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v64 = v8;
  v65 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF5B38(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_100E04984(type metadata accessor for OwnerSharingCircle, &qword_1016A5A18, &qword_1013B3538, type metadata accessor for OwnerSharingCircle);
        goto LABEL_74;
      }

      sub_100E091F8(v11 + 1);
    }

    v13 = *v3;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v14 = v7[5];
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v58 = v14;
    dispatch thunk of Hashable.hash(into:)();
    v66 = v7[6];
    dispatch thunk of Hashable.hash(into:)();
    v59 = *(a1 + v7[7]);
    Hasher._combine(_:)(v59);
    v55 = *(a1 + v7[8]);
    sub_100E1168C(v73, v55);
    v54 = *(a1 + v7[9]);
    Hasher._combine(_:)(v54);
    v15 = Hasher._finalize()();
    v16 = v13 + 56;
    v17 = -1 << *(v13 + 32);
    a2 = v15 & ~v17;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = v13;
      v19 = ~v17;
      v20 = *a1;
      v21 = a1[1];
      if (*a1)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21 == 0xC000000000000000;
      }

      v23 = !v22;
      v70 = v23;
      v71 = *(v8 + 72);
      v24 = v21 >> 62;
      v67 = 0;
      v68 = v20;
      v25 = HIDWORD(v20) - v20;
      v26 = __OFSUB__(HIDWORD(v20), v20);
      v63 = v26;
      v62 = v25;
      v60 = v21;
      v69 = BYTE6(v21);
      v57 = a1;
      v56 = v13;
      v61 = v19;
      while (1)
      {
        sub_100E0ED24(*(v18 + 48) + v71 * a2, v10, type metadata accessor for OwnerSharingCircle);
        v27 = *v10;
        v28 = v10[1];
        v29 = v28 >> 62;
        if (v28 >> 62 != 3)
        {
          break;
        }

        if (v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v28 == 0xC000000000000000;
        }

        v32 = !v30 || v24 < 3;
        if ((v32 | v70))
        {
          goto LABEL_43;
        }

LABEL_68:
        if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v10 + v7[7]) == v59 && (sub_100DE7CD8(*(v10 + v7[8]), v55, &unk_1016BC360, &qword_10139CBE0, &qword_1016BBEE0, &unk_10139CBF0) & 1) != 0 && *(v10 + v7[9]) == v54)
        {
          sub_100E0EC5C(v10, type metadata accessor for OwnerSharingCircle);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_74;
        }

LABEL_20:
        sub_100E0EC5C(v10, type metadata accessor for OwnerSharingCircle);
        a2 = (a2 + 1) & v19;
        if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v36)
          {
            goto LABEL_80;
          }

          if (v24 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
LABEL_43:
          v33 = 0;
          if (v24 > 1)
          {
LABEL_44:
            if (v24 != 2)
            {
              if (v33)
              {
                goto LABEL_20;
              }

              goto LABEL_68;
            }

            v39 = *(v68 + 16);
            v38 = *(v68 + 24);
            v36 = __OFSUB__(v38, v39);
            v37 = v38 - v39;
            if (v36)
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

LABEL_46:
            if (v33 != v37)
            {
              goto LABEL_20;
            }

            if (v33 < 1)
            {
              goto LABEL_68;
            }

            if (v29 > 1)
            {
              if (v29 != 2)
              {
                *&v73[6] = 0;
                *v73 = 0;
                goto LABEL_66;
              }

              v41 = *(v27 + 16);
              v40 = *(v27 + 24);
              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v43 = __DataStorage._offset.getter();
                if (__OFSUB__(v41, v43))
                {
                  goto LABEL_83;
                }

                v42 += v41 - v43;
              }

              if (__OFSUB__(v40, v41))
              {
                goto LABEL_82;
              }
            }

            else
            {
              if (!v29)
              {
                *v73 = *v10;
                *&v73[8] = v28;
                v73[10] = BYTE2(v28);
                v73[11] = BYTE3(v28);
                v73[12] = BYTE4(v28);
                v73[13] = BYTE5(v28);
LABEL_66:
                v48 = v67;
                sub_100771A28(v73, v68, v60, &v72);
                v67 = v48;
                v47 = v72;
LABEL_67:
                v19 = v61;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_68;
              }

              v44 = v27;
              if (v27 >> 32 < v27)
              {
                goto LABEL_81;
              }

              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v45 = __DataStorage._offset.getter();
                if (__OFSUB__(v44, v45))
                {
                  goto LABEL_84;
                }

                v42 += v44 - v45;
              }
            }

            __DataStorage._length.getter();
            v46 = v67;
            sub_100771A28(v42, v68, v60, v73);
            v67 = v46;
            v47 = v73[0];
            a1 = v57;
            v18 = v56;
            goto LABEL_67;
          }
        }
      }

      else if (v29)
      {
        LODWORD(v33) = HIDWORD(v27) - v27;
        if (__OFSUB__(HIDWORD(v27), v27))
        {
          goto LABEL_79;
        }

        v33 = v33;
        if (v24 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = BYTE6(v28);
        if (v24 > 1)
        {
          goto LABEL_44;
        }
      }

      v37 = v69;
      if (v24)
      {
        v37 = v62;
        if (v63)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_74:
  v49 = *v65;
  *(*v65 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v49 + 48) + *(v64 + 72) * a2, type metadata accessor for OwnerSharingCircle);
  v51 = *(v49 + 16);
  v36 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (v36)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  *(v49 + 16) = v52;
  return result;
}

Swift::Int sub_100DFF898(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF637C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100E0653C(&qword_1016B54C8, &qword_1013D6910);
        goto LABEL_70;
      }

      sub_100E099D8(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_10125403C(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE700000000000000;
        v13 = 0x7972616D697270;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE900000000000079;
            v13 = 0x7261646E6F636573;
            break;
          case 2:
            v13 = 0xD000000000000019;
            v12 = 0x8000000101348160;
            break;
          case 3:
            v13 = 0xD00000000000001BLL;
            v12 = 0x8000000101348180;
            break;
          case 4:
            v13 = 0x646E7542646C6977;
            v12 = 0xEA0000000000656CLL;
            break;
          case 5:
            v13 = 0x417972616D697270;
            v12 = 0xEE00737365726464;
            break;
          case 6:
            v13 = 0xD000000000000010;
            v12 = 0x80000001013481C0;
            break;
          case 7:
            v13 = 0xD000000000000012;
            v12 = 0x80000001013475D0;
            break;
          case 8:
            v13 = 0xD000000000000011;
            v12 = 0x80000001013475F0;
            break;
          case 9:
            v13 = 0x697463656E6E6F63;
            v12 = 0xED000079654B6E6FLL;
            break;
          case 0xA:
            v13 = 0x656E774F7261656ELL;
            v12 = 0xEC00000079654B72;
            break;
          case 0xB:
            v13 = 0x656B6F546E696F6ALL;
            v12 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v13 = 0xD000000000000015;
            v12 = 0x80000001013481F0;
            break;
          case 0xD:
            v13 = 0xD000000000000010;
            v12 = 0x8000000101348210;
            break;
          case 0xE:
            v13 = 0x7461636F4C626577;
            v12 = 0xEE0079654B6E6F69;
            break;
          case 0xF:
            v13 = 0x646174654D626577;
            v12 = 0xEB00000000617461;
            break;
          case 0x10:
            v13 = 0x6D65744974736F6CLL;
            v12 = 0xED00007365746144;
            break;
          case 0x11:
            v13 = 0xD000000000000014;
            v12 = 0x8000000101348240;
            break;
          case 0x12:
            v13 = 0xD000000000000016;
            v12 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v14 = 0xE700000000000000;
        v15 = 0x7972616D697270;
        switch(v6)
        {
          case 1:
            v14 = 0xE900000000000079;
            if (v13 == 0x7261646E6F636573)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          case 2:
            v14 = 0x8000000101348160;
            if (v13 != 0xD000000000000019)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 3:
            v14 = 0x8000000101348180;
            if (v13 != 0xD00000000000001BLL)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 4:
            v14 = 0xEA0000000000656CLL;
            if (v13 != 0x646E7542646C6977)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 5:
            v18 = 0x417972616D697270;
            v19 = 0x737365726464;
            goto LABEL_54;
          case 6:
            v14 = 0x80000001013481C0;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 7:
            v14 = 0x80000001013475D0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 8:
            v14 = 0x80000001013475F0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 9:
            v16 = 0x697463656E6E6F63;
            v17 = 0x79654B6E6FLL;
            goto LABEL_41;
          case 10:
            v15 = 0x656E774F7261656ELL;
            v14 = 0xEC00000079654B72;
            goto LABEL_63;
          case 11:
            v14 = 0xE90000000000006ELL;
            if (v13 != 0x656B6F546E696F6ALL)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 12:
            v14 = 0x80000001013481F0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 13:
            v14 = 0x8000000101348210;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 14:
            v18 = 0x7461636F4C626577;
            v19 = 0x79654B6E6F69;
LABEL_54:
            v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != v18)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 15:
            v14 = 0xEB00000000617461;
            if (v13 != 0x646174654D626577)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 16:
            v16 = 0x6D65744974736F6CLL;
            v17 = 0x7365746144;
LABEL_41:
            v14 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v13 != v16)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 17:
            v14 = 0x8000000101348240;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 18:
            v14 = 0x8000000101348260;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          default:
LABEL_63:
            if (v13 != v15)
            {
              goto LABEL_65;
            }

LABEL_64:
            if (v12 == v14)
            {
              goto LABEL_73;
            }

LABEL_65:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_74;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_70:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_73:

LABEL_74:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

uint64_t sub_100DFFF80(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MACAddress();
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
    sub_100DF6878(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E05650(&type metadata accessor for MACAddress, &qword_1016BC090, &qword_1013E9E78);
      goto LABEL_12;
    }

    sub_100E09EA4(v10 + 1);
  }

  v12 = *v3;
  sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
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
      sub_1000097BC(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
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

void sub_100E00248(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100DF6BD4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E051D0();
      goto LABEL_16;
    }

    sub_100E0A1C0(v8 + 1);
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

Swift::Int sub_100E003C8(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a4)
  {
    sub_100DF6E34(v9 + 1);
    goto LABEL_8;
  }

  if (v10 > v9)
  {
    result = sub_100E0532C();
LABEL_80:
    v42 = *v5;
    *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v43 = (*(v42 + 48) + 16 * a3);
    *v43 = v8;
    v43[1] = a2;
    v44 = *(v42 + 16);
    v33 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v33)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
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
LABEL_90:
      __break(1u);
    }

    *(v42 + 16) = v45;
    return result;
  }

  sub_100E0A3F8(v9 + 1);
LABEL_8:
  v11 = *v4;
  Hasher.init(_seed:)();
  v12 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_80;
  }

  v14 = ~v13;
  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v50 = v16;
  v17 = a2 >> 62;
  v18 = __OFSUB__(HIDWORD(v8), v8);
  v48 = v18;
  v47 = v5;
  v49 = v14;
  while (1)
  {
    v19 = (*(v11 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    if (v20 >> 60 == 15)
    {
      if (v12 > 0xE)
      {
        sub_10002E98C(v21, v20);
        sub_10002E98C(v8, a2);
        goto LABEL_94;
      }

      goto LABEL_26;
    }

    if (v12 <= 0xE)
    {
      break;
    }

LABEL_26:
    sub_10002E98C(v21, v20);
    sub_10002E98C(v8, a2);
    sub_100429EA8(v21, v20);
    v22 = v8;
    v23 = a2;
LABEL_27:
    result = sub_100429EA8(v22, v23);
LABEL_28:
    v17 = a2 >> 62;
    a3 = (a3 + 1) & v14;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v24 = v20 >> 62;
  if (v20 >> 62 == 3)
  {
    v25 = 0;
    v26 = 0xC000000000000000;
    if (v21)
    {
      v27 = 0;
    }

    else
    {
      v27 = v20 == 0xC000000000000000;
    }

    v29 = !v27 || v17 < 3;
    if (((v29 | v50) & 1) == 0)
    {
      a2 = 0xC000000000000000;
      v21 = 0;
      v8 = 0;
      goto LABEL_93;
    }
  }

  else if (v24 > 1)
  {
    if (v24 == 2)
    {
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      v33 = __OFSUB__(v34, v35);
      v25 = v34 - v35;
      if (v33)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else if (v24)
  {
    LODWORD(v25) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_86;
    }

    v25 = v25;
  }

  else
  {
    v25 = BYTE6(v20);
  }

  if (v17 <= 1)
  {
    v30 = BYTE6(a2);
    if (v17)
    {
      v30 = HIDWORD(v8) - v8;
      if (v48)
      {
        goto LABEL_83;
      }
    }

LABEL_50:
    if (v25 == v30)
    {
      if (v25 < 1)
      {
        goto LABEL_92;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *&v52[6] = 0;
          *v52 = 0;
          sub_10002E98C(v21, v20);
          sub_10002E98C(v21, v20);
          sub_10002E98C(v8, a2);
          goto LABEL_78;
        }

        v36 = *(v21 + 16);
        v46 = *(v21 + 24);
        sub_10002E98C(v21, v20);
        sub_10002E98C(v21, v20);
        sub_10002E98C(v8, a2);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v38 = __DataStorage._offset.getter();
          if (__OFSUB__(v36, v38))
          {
            goto LABEL_89;
          }

          v37 += v36 - v38;
        }

        if (__OFSUB__(v46, v36))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (!v24)
        {
          *v52 = v21;
          *&v52[8] = v20;
          v52[10] = BYTE2(v20);
          v52[11] = BYTE3(v20);
          v52[12] = BYTE4(v20);
          v52[13] = BYTE5(v20);
          sub_10002E98C(v21, v20);
          sub_10002E98C(v21, v20);
          sub_10002E98C(v8, a2);
LABEL_78:
          sub_100771A28(v52, v8, a2, &v51);
          sub_100429EA8(v21, v20);
          sub_100429EA8(v8, a2);
          v41 = v51;
          result = sub_100429EA8(v21, v20);
          if (v41)
          {
            goto LABEL_95;
          }

LABEL_79:
          v14 = v49;
          v12 = a2 >> 60;
          goto LABEL_28;
        }

        if (v21 >> 32 < v21)
        {
          goto LABEL_87;
        }

        sub_10002E98C(v21, v20);
        sub_10002E98C(v21, v20);
        sub_10002E98C(v8, a2);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v21, v39))
          {
            goto LABEL_90;
          }

          v37 += v21 - v39;
        }
      }

      __DataStorage._length.getter();
      sub_100771A28(v37, v8, a2, v52);
      sub_100429EA8(v21, v20);
      sub_100429EA8(v8, a2);
      v40 = v52[0];
      result = sub_100429EA8(v21, v20);
      v5 = v47;
      if (v40)
      {
        goto LABEL_95;
      }

      goto LABEL_79;
    }

LABEL_60:
    sub_10002E98C(v21, v20);
    sub_10002E98C(v8, a2);
    sub_100429EA8(v8, a2);
    v22 = v21;
    v23 = v20;
    goto LABEL_27;
  }

  if (v17 == 2)
  {
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    v33 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v33)
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v25)
  {
    goto LABEL_60;
  }

LABEL_92:
  v26 = v20;
LABEL_93:
  sub_10002E98C(v21, v26);
  sub_10002E98C(v8, a2);
  sub_100429EA8(v8, a2);
LABEL_94:
  sub_100429EA8(v21, v20);
LABEL_95:
  sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E00A04(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF70B8(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_100E04984(type metadata accessor for OwnedBeaconGroup, &qword_1016BBEB0, &qword_1013E9DC8, type metadata accessor for OwnedBeaconGroup);
        goto LABEL_82;
      }

      sub_100E0A658(v12 + 1);
    }

    v14 = *v4;
    Hasher.init(_seed:)();
    v65 = v8;
    v15 = *(v8 + 24);
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v66 = v15;
    dispatch thunk of Hashable.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = v14 + 56;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v71 = ~v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v72 = *(v9 + 72);
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20 == 0xC000000000000000;
      }

      v22 = !v21;
      v70 = v22;
      v23 = v20 >> 62;
      v67 = 0;
      v68 = v19;
      v24 = HIDWORD(v19) - v19;
      v25 = __OFSUB__(HIDWORD(v19), v19);
      v64 = v25;
      v63 = v24;
      v61 = v20;
      v69 = BYTE6(v20);
      v60 = v4;
      v59 = v9;
      v26 = v65;
      v62 = v14 + 56;
      while (1)
      {
        sub_100E0ED24(*(v14 + 48) + v72 * a2, v11, type metadata accessor for OwnedBeaconGroup);
        v27 = *v11;
        v28 = *(v11 + 1);
        v29 = v28 >> 62;
        if (v28 >> 62 != 3)
        {
          break;
        }

        if (v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v28 == 0xC000000000000000;
        }

        v32 = !v30 || v23 < 3;
        if ((v32 | v70))
        {
          goto LABEL_43;
        }

LABEL_68:
        v49 = *(a1 + 24);
        if (v11[24] == 1)
        {
          if ((*(a1 + 24) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (*(v11 + 2) != *(a1 + 16))
          {
            v49 = 1;
          }

          if (v49)
          {
            goto LABEL_20;
          }
        }

        if ((static UUID.== infix(_:_:)() & 1) != 0 && (static MACAddress.== infix(_:_:)() & 1) != 0 && v11[v26[8]] == *(a1 + v26[8]))
        {
          if (v50 = v26[9], v51 = *&v11[v50], v52 = *&v11[v50 + 8], v53 = (a1 + v50), v51 == *v53) && v52 == v53[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            if (sub_100DE8118(*&v11[v26[10]], *(a1 + v26[10])))
            {
              sub_100E0EC5C(v11, type metadata accessor for OwnedBeaconGroup);
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_82;
            }
          }
        }

LABEL_20:
        sub_100E0EC5C(v11, type metadata accessor for OwnedBeaconGroup);
        a2 = (a2 + 1) & v71;
        if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v36)
          {
            goto LABEL_88;
          }

          if (v23 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
LABEL_43:
          v33 = 0;
          if (v23 > 1)
          {
LABEL_44:
            if (v23 != 2)
            {
              if (v33)
              {
                goto LABEL_20;
              }

              goto LABEL_68;
            }

            v39 = *(v68 + 16);
            v38 = *(v68 + 24);
            v36 = __OFSUB__(v38, v39);
            v37 = v38 - v39;
            if (v36)
            {
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

LABEL_46:
            if (v33 != v37)
            {
              goto LABEL_20;
            }

            if (v33 < 1)
            {
              goto LABEL_68;
            }

            if (v29 > 1)
            {
              if (v29 != 2)
              {
                *&v74[6] = 0;
                *v74 = 0;
                goto LABEL_66;
              }

              v41 = *(v27 + 16);
              v40 = *(v27 + 24);
              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v43 = __DataStorage._offset.getter();
                if (__OFSUB__(v41, v43))
                {
                  goto LABEL_91;
                }

                v42 += v41 - v43;
              }

              if (__OFSUB__(v40, v41))
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (!v29)
              {
                *v74 = *v11;
                *&v74[8] = v28;
                v74[10] = BYTE2(v28);
                v74[11] = BYTE3(v28);
                v74[12] = BYTE4(v28);
                v74[13] = BYTE5(v28);
LABEL_66:
                v48 = v67;
                sub_100771A28(v74, v68, v61, &v73);
                v67 = v48;
                v47 = v73;
LABEL_67:
                v26 = v65;
                v17 = v62;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_68;
              }

              v44 = v27;
              if (v27 >> 32 < v27)
              {
                goto LABEL_89;
              }

              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v45 = __DataStorage._offset.getter();
                if (__OFSUB__(v44, v45))
                {
                  goto LABEL_92;
                }

                v42 += v44 - v45;
              }
            }

            __DataStorage._length.getter();
            v46 = v67;
            sub_100771A28(v42, v68, v61, v74);
            v67 = v46;
            v47 = v74[0];
            v4 = v60;
            v9 = v59;
            goto LABEL_67;
          }
        }
      }

      else if (v29)
      {
        LODWORD(v33) = HIDWORD(v27) - v27;
        if (__OFSUB__(HIDWORD(v27), v27))
        {
          goto LABEL_87;
        }

        v33 = v33;
        if (v23 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = BYTE6(v28);
        if (v23 > 1)
        {
          goto LABEL_44;
        }
      }

      v37 = v69;
      if (v23)
      {
        v37 = v63;
        if (v64)
        {
          goto LABEL_85;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_82:
  v54 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v54 + 48) + *(v9 + 72) * a2, type metadata accessor for OwnedBeaconGroup);
  v56 = *(v54 + 16);
  v36 = __OFADD__(v56, 1);
  v57 = v56 + 1;
  if (v36)
  {
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
  }

  *(v54 + 16) = v57;
  return result;
}

uint64_t sub_100E010C4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF7418(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC118, &qword_1013E9EB0);
      goto LABEL_12;
    }

    sub_100E0A988(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E012C0(double *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for WildModeTrackingLocation(0);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v30 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_100DF76D0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E04984(type metadata accessor for WildModeTrackingLocation, &qword_1016BBFA8, &qword_1013E9E28, type metadata accessor for WildModeTrackingLocation);
      goto LABEL_26;
    }

    sub_100E0AC04(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  v13 = *a1;
  if (*a1 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *a1;
  }

  Hasher._combine(_:)(*&v14);
  v15 = a1[1];
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a1[1];
  }

  Hasher._combine(_:)(*&v16);
  v17 = a1[2];
  if (v17 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a1[2];
  }

  Hasher._combine(_:)(*&v18);
  type metadata accessor for Date();
  sub_1000097BC(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v19 = Hasher._finalize()();
  v20 = -1 << *(v12 + 32);
  a2 = v19 & ~v20;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v31 + 72);
    do
    {
      sub_100E0ED24(*(v12 + 48) + v22 * a2, v9, type metadata accessor for WildModeTrackingLocation);
      if (*v9 == v13 && v9[1] == v15 && v9[2] == v17)
      {
        v23 = static Date.== infix(_:_:)();
        sub_100E0EC5C(v9, type metadata accessor for WildModeTrackingLocation);
        if (v23)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_100E0EC5C(v9, type metadata accessor for WildModeTrackingLocation);
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for WildModeTrackingLocation);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void sub_100E01620(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF78D8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100E0549C();
      goto LABEL_12;
    }

    sub_100E0ADD0(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  sub_1007766A4(v19, result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);

      v13 = sub_100775E74(v12, result);

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

uint64_t sub_100E017AC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Destination();
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
    sub_100DF7E6C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E05650(&type metadata accessor for Destination, &qword_1016BC010, &qword_1013E9E38);
      goto LABEL_12;
    }

    sub_100E0B2FC(v10 + 1);
  }

  v12 = *v3;
  sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
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
      sub_1000097BC(&qword_1016BC008, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
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

Swift::Int sub_100E01A74(Swift::Int result, unint64_t a2, char a3)
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
    sub_100DF81C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E0653C(&qword_1016AAA18, &qword_1013BD810);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E0B618(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = qword_1013E9EE8[v4];
  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (qword_1013E9EE8[*(*(v8 + 48) + a2)] != v9)
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
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E01BF0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8424(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BC190, &unk_101406290);
      goto LABEL_12;
    }

    sub_100E0B844(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000097BC(&qword_1016BC188, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E01DE8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8954(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC0E8, &unk_101406260);
      goto LABEL_12;
    }

    sub_100E0BD08(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E01FE4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for BeaconIdentifier(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100DF8E28(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E04984(type metadata accessor for BeaconIdentifier, &unk_1016BBE50, &unk_1013B34E0, type metadata accessor for BeaconIdentifier);
      goto LABEL_15;
    }

    sub_100E0C16C(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_100E0ED24(*(v12 + 48) + v16 * a2, v9, type metadata accessor for BeaconIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v17 = static UUID.== infix(_:_:)();
        sub_100E0EC5C(v9, type metadata accessor for BeaconIdentifier);
        if (v17)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_100E0EC5C(v9, type metadata accessor for BeaconIdentifier);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v18 + 48) + *(v25 + 72) * a2, type metadata accessor for BeaconIdentifier);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

Swift::Int sub_100E022F4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v39 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_100DF91A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E05B70();
      goto LABEL_49;
    }

    sub_100E0C4B8(v6 + 1);
  }

  v8 = *v3;
  v9 = *v5;
  v10 = *(v5 + 8);
  Hasher.init(_seed:)();
  v48 = v10;
  v49 = v9;
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  v47 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v46 = ~v11;
    v42 = *(v5 + 32);
    v43 = *(v5 + 24);
    v44 = *(v5 + 16);
    v40 = *(v5 + 64);
    v41 = *(v5 + 48);
    v34 = *(v5 + 72);
    v35 = *(v5 + 56);
    v36 = *(v5 + 80);
    v37 = *(v5 + 40);
    v45 = *(v8 + 48);
    do
    {
      v12 = v45 + 88 * a2;
      result = *v12;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      v15 = *(v12 + 32);
      v17 = *(v12 + 40);
      v16 = *(v12 + 48);
      v19 = *(v12 + 56);
      v18 = *(v12 + 64);
      v21 = *(v12 + 72);
      v20 = *(v12 + 80);
      if (*v12 != v49 || *(v12 + 8) != v48)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v14 != v44 || v13 != v43)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((v15 ^ v42))
      {
        goto LABEL_11;
      }

      if (v16)
      {
        if (!v41)
        {
          goto LABEL_11;
        }

        if (v17 != v37 || v16 != v41)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v41)
      {
        goto LABEL_11;
      }

      if (v18)
      {
        if (!v40)
        {
          goto LABEL_11;
        }

        if (v19 != v35 || v18 != v40)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v40)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (v36)
        {
          v26 = v21 == v34 && v20 == v36;
          if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_48:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!v36)
      {
        goto LABEL_48;
      }

LABEL_11:
      a2 = (a2 + 1) & v46;
    }

    while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v27 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 88 * a2;
  v29 = *(v39 + 16);
  *v28 = *v39;
  *(v28 + 16) = v29;
  *(v28 + 80) = *(v39 + 80);
  v30 = *(v39 + 64);
  *(v28 + 48) = *(v39 + 48);
  *(v28 + 64) = v30;
  *(v28 + 32) = *(v39 + 32);
  v31 = *(v27 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v33;
  }

  return result;
}

uint64_t sub_100E025F8(uint64_t a1, unint64_t a2, char a3)
{
  v55 = a1;
  v45 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v45);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v43 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v54 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v40 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v17;
      sub_100DF943C(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_100E05D0C();
        goto LABEL_21;
      }

      v39 = v17;
      sub_100E0C734(v20 + 1);
    }

    v53 = *v3;
    Hasher.init(_seed:)();
    sub_1000D2A70(v55, v19, &qword_1016980D0, &unk_10138F3B0);
    v51 = *(v9 + 48);
    v52 = v9 + 48;
    v22 = v51(v19, 1, v8);
    v23 = v45;
    if (v22 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v24 = v44;
      (*(v9 + 32))(v44, v19, v8);
      Hasher._combine(_:)(1u);
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v24, v8);
    }

    v25 = Hasher._finalize()();
    v26 = -1 << *(v53 + 32);
    a2 = v25 & ~v26;
    v50 = v53 + 56;
    if ((*(v53 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = ~v26;
      v41 = (v9 + 32);
      v27 = *(v43 + 72);
      v47 = (v9 + 8);
      v48 = v27;
      v42 = v16;
      do
      {
        sub_1000D2A70(*(v53 + 48) + v48 * a2, v16, &qword_1016980D0, &unk_10138F3B0);
        v31 = *(v23 + 48);
        sub_1000D2A70(v16, v7, &qword_1016980D0, &unk_10138F3B0);
        sub_1000D2A70(v55, &v7[v31], &qword_1016980D0, &unk_10138F3B0);
        v32 = v51;
        if (v51(v7, 1, v8) == 1)
        {
          sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
          if (v32(&v7[v31], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000D2A70(v7, v54, &qword_1016980D0, &unk_10138F3B0);
          if (v32(&v7[v31], 1, v8) != 1)
          {
            v28 = v54;
            v29 = v44;
            (*v41)(v44, &v7[v31], v8);
            sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v46 = dispatch thunk of static Equatable.== infix(_:_:)();
            v30 = *v47;
            v16 = v42;
            (*v47)(v29, v8);
            sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
            v30(v28, v8);
            v23 = v45;
            sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
            if (v46)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
          (*v47)(v54, v8);
        }

        sub_10000B3A8(v7, &qword_1016AF880, &unk_10138CE20);
LABEL_14:
        a2 = (a2 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000D2AD8(v55, *(v33 + 48) + *(v43 + 72) * a2, &qword_1016980D0, &unk_10138F3B0);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_24:
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

uint64_t sub_100E02C68(uint64_t result, unint64_t a2, char a3)
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
    sub_100DF9918(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E05F34();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E0CBB0(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v11 + 48) + 4 * a2) = v4;
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

Swift::Int sub_100E02D8C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9B40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E063FC(&unk_1016BC0C0, &qword_101406240);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100E0CDA4(v6 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = *(v5 + 32);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = result & ~v11;
    result = type metadata accessor for Service();
    a2 = v13;
    while (*(*(*(v9 + 48) + 8 * a2) + 32) != *(v5 + 32))
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E02F10(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9D9C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E063FC(&qword_1016BC0B8, &qword_1013E9E98);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100E0CFD8(v6 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = *(v5 + 40);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = result & ~v11;
    result = type metadata accessor for Characteristic();
    a2 = v13;
    while (*(*(*(v9 + 48) + 8 * a2) + 40) != *(v5 + 40))
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E03094(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9FF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC068, &unk_101406230);
      goto LABEL_12;
    }

    sub_100E0D20C(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

void sub_100E03290(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    sub_100DFA29C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100E06088();
      goto LABEL_35;
    }

    sub_100E0D488(v6 + 1);
  }

  v8 = *result;
  v9 = result[1];
  v10 = result[2];
  v11 = *v3;
  Hasher.init(_seed:)();
  v43 = v8;
  v12 = v9;
  String.hash(into:)();
  v42 = *(v10 + 16);
  Hasher._combine(_:)(v42);
  v38 = v10;
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + 40;
    do
    {

      String.hash(into:)();

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  v39 = result[4];
  v40 = result[3];
  String.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v11 + 32);
  a2 = v15 & ~v16;
  v41 = v11 + 56;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v11 + 48);
    v35 = (v10 + 40);
    do
    {
      v19 = (v18 + 40 * a2);
      v21 = v19[2];
      v20 = v19[3];
      v22 = v19[4];
      v23 = *v19 == v43 && v19[1] == v12;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v21 + 16) == v42)
      {
        if (v42 && v21 != v38)
        {
          v24 = *(v38 + 16);
          v25 = (v21 + 40);
          v26 = v35;
          v27 = v42;
          while (v24)
          {
            v28 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
            if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_14;
            }

            --v24;
            v25 += 2;
            v26 += 2;
            if (!--v27)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

LABEL_32:
        if (v20 == v40 && v22 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

LABEL_14:
      a2 = (a2 + 1) & v17;
    }

    while (((*(v41 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_35:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = *(v29 + 48) + 40 * a2;
  v31 = *(result + 1);
  *v30 = *result;
  *(v30 + 16) = v31;
  *(v30 + 32) = result[4];
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    goto LABEL_38;
  }

  *(v29 + 16) = v34;
}

uint64_t sub_100E03568(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFA598(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BBEF0, &qword_1014060B0);
      goto LABEL_12;
    }

    sub_100E0D768(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100E03764(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_100DFA83C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E06224();
      goto LABEL_46;
    }

    sub_100E0D9E4(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  sub_100E76BF0(v53);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v41 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v39 = ~v9;
    v51 = *(v5 + 8);
    v52 = *v5;
    v38 = *(v8 + 48);
    v32 = *(v5 + 131);
    v33 = *(v5 + 129);
    v30 = *(v5 + 152);
    v31 = *(v5 + 144);
    while (1)
    {
      v10 = v38 + 160 * a2;
      result = *v10;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
      v15 = *(v10 + 48);
      v16 = *(v10 + 56);
      v17 = *(v10 + 64);
      v18 = *(v10 + 72);
      v49 = *(v10 + 88);
      v50 = *(v10 + 80);
      v47 = *(v10 + 104);
      v48 = *(v10 + 96);
      v45 = *(v10 + 120);
      v46 = *(v10 + 112);
      v43 = *(v10 + 129);
      v44 = *(v10 + 128);
      v42 = *(v10 + 130);
      v40 = *(v10 + 131);
      v37 = *(v10 + 136);
      v19 = *v10 == v52 && *(v10 + 8) == v51;
      v35 = *(v10 + 152);
      v36 = *(v10 + 144);
      if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v11 == *(v5 + 16) && v12 == *(v5 + 24) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v13 == *(v5 + 32) && v14 == *(v5 + 40) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v15 == *(v5 + 48) && v16 == *(v5 + 56) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              if (v17 == *(v5 + 64) && v18 == *(v5 + 72) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                if (v50 == *(v5 + 80) && v49 == *(v5 + 88) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  if (v48 == *(v5 + 96) && v47 == *(v5 + 104) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                  {
                    if (v46 == *(v5 + 112) && v45 == *(v5 + 120) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                    {
                      if (v44 == (*(v5 + 128) & 1) && ((v43 ^ v33) & 1) == 0 && v42 == (*(v5 + 130) & 1) && ((v40 ^ v32) & 1) == 0 && v37 == *(v5 + 136))
                      {
                        if (v36 == v31 && v35 == v30)
                        {
                          break;
                        }

                        result = _stringCompareWithSmolCheck(_:_:expecting:)();
                        if (result)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v39;
      if (((*(v41 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_46:
  v20 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = (*(v20 + 48) + 160 * a2);
  v22 = *(v5 + 80);
  v21[4] = *(v5 + 64);
  v21[5] = v22;
  v23 = *(v5 + 48);
  v21[2] = *(v5 + 32);
  v21[3] = v23;
  v24 = *(v5 + 144);
  v21[8] = *(v5 + 128);
  v21[9] = v24;
  v25 = *(v5 + 112);
  v21[6] = *(v5 + 96);
  v21[7] = v25;
  v26 = *(v5 + 16);
  *v21 = *v5;
  v21[1] = v26;
  v27 = *(v20 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v29;
  }

  return result;
}

uint64_t sub_100E03B44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFAC18(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BBFE0, &unk_101406210);
      goto LABEL_12;
    }

    sub_100E0DCB4(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E03D40(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFB0F0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BBE08, &qword_1013E9D90);
      goto LABEL_12;
    }

    sub_100E0E13C(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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

unint64_t sub_100E03F3C(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100DFB5DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E0666C();
      a2 = v8;
      goto LABEL_15;
    }

    sub_100E0E5D0(v6 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v9 + 48) + 8 * a2);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == v4 && v13 == v5)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 8 * a2);
  *v17 = v4;
  v17[1] = v5;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E040B8(Swift::Int result, unint64_t a2, Swift::UInt32 a3, unint64_t a4, char a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v13 = result;
  v14 = *(*v9 + 16);
  v15 = *(*v9 + 24);
  if (v15 > v14 && (a5 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a5)
  {
    v55 = a8;
    sub_100DFB840(v14 + 1, a6, a7);
  }

  else
  {
    if (v15 > v14)
    {
      result = sub_100E067AC(a6, a7);
      goto LABEL_72;
    }

    v55 = a8;
    sub_100E0E7F8(v14 + 1, a6, a7);
  }

  v16 = *v9;
  Hasher.init(_seed:)();
  sub_100017D5C(v13, a2);
  Data.hash(into:)();
  sub_100016590(v13, a2);
  Hasher._combine(_:)(a3);
  result = Hasher._finalize()();
  v17 = v16 + 56;
  v18 = -1 << *(v16 + 32);
  a4 = result & ~v18;
  if ((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v19 = v16;
    v20 = 0;
    v21 = ~v18;
    if (v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = a2 == 0xC000000000000000;
    }

    v23 = !v22;
    v24 = a2 >> 62;
    v25 = __OFSUB__(HIDWORD(v13), v13);
    v66 = v25;
    v64 = v16 + 56;
    v65 = HIDWORD(v13) - v13;
    v26 = BYTE6(a2);
    v58 = a3;
    v57 = a2;
    v60 = v16;
    v61 = BYTE6(a2);
    v63 = ~v18;
    v62 = v23;
    v59 = v13;
    while (1)
    {
      v27 = *(v19 + 48) + 24 * a4;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = v29 >> 62;
      if (v29 >> 62 == 3)
      {
        break;
      }

      if (v31 > 1)
      {
        if (v31 != 2)
        {
          goto LABEL_43;
        }

        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        v38 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v38)
        {
          goto LABEL_78;
        }

        if (v24 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v31)
      {
        LODWORD(v35) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_77;
        }

        v35 = v35;
        if (v24 <= 1)
        {
LABEL_40:
          v39 = v26;
          if (v24)
          {
            v39 = v65;
            if (v66)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v35 = BYTE6(v29);
        if (v24 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v24 != 2)
      {
        if (v35)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v41 = *(v13 + 16);
      v40 = *(v13 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_46:
      if (v35 != v39)
      {
        goto LABEL_20;
      }

      if (v35 >= 1)
      {
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v56 = v20;
            v43 = *(v28 + 16);
            v42 = *(v28 + 24);
            sub_100017D5C(v13, a2);
            sub_100017D5C(v28, v29);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v45 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v45))
              {
                goto LABEL_81;
              }

              v44 += v43 - v45;
            }

            if (__OFSUB__(v42, v43))
            {
              goto LABEL_80;
            }

            __DataStorage._length.getter();
            v46 = v44;
            v47 = v13;
            v20 = v56;
            a2 = v57;
            goto LABEL_67;
          }

          *&v69[6] = 0;
          *v69 = 0;
          sub_100017D5C(v13, a2);
          sub_100017D5C(v28, v29);
LABEL_69:
          sub_100771A28(v69, v13, a2, &v68);
          sub_100016590(v13, a2);
          result = sub_100016590(v28, v29);
          v50 = v68;
        }

        else
        {
          if (!v31)
          {
            *v69 = v28;
            *&v69[8] = v29;
            v69[10] = BYTE2(v29);
            v69[11] = BYTE3(v29);
            v69[12] = BYTE4(v29);
            v69[13] = BYTE5(v29);
            sub_100017D5C(v13, a2);
            sub_100017D5C(v28, v29);
            v19 = v60;
            goto LABEL_69;
          }

          if (v28 >> 32 < v28)
          {
            goto LABEL_79;
          }

          sub_100017D5C(v59, a2);
          sub_100017D5C(v28, v29);
          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v49 = __DataStorage._offset.getter();
            if (__OFSUB__(v28, v49))
            {
              goto LABEL_82;
            }

            v48 += v28 - v49;
          }

          __DataStorage._length.getter();
          v46 = v48;
          v13 = v59;
          v47 = v59;
          a2 = v57;
LABEL_67:
          sub_100771A28(v46, v47, a2, v69);
          sub_100016590(v13, a2);
          result = sub_100016590(v28, v29);
          v50 = v69[0];
          a3 = v58;
          v19 = v60;
        }

        v21 = v63;
        v17 = v64;
        v23 = v62;
        v26 = v61;
        if (!v50)
        {
          goto LABEL_20;
        }
      }

LABEL_19:
      if (v30 == a3)
      {
        sub_1000BC4D4(v55, a9);
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_20:
      a4 = (a4 + 1) & v21;
      if (((*(v17 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    if (v28)
    {
      v32 = 0;
    }

    else
    {
      v32 = v29 == 0xC000000000000000;
    }

    v34 = !v32 || v24 < 3;
    if (((v34 | v23) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_43:
    v35 = 0;
    if (v24 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_72:
  v51 = *v67;
  *(*v67 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v52 = *(v51 + 48) + 24 * a4;
  *v52 = v13;
  *(v52 + 8) = a2;
  *(v52 + 16) = a3;
  v53 = *(v51 + 16);
  v38 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v38)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  *(v51 + 16) = v54;
  return result;
}

void sub_100E0467C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
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

void *sub_100E047D8()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
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
        result = sub_100017D5C(v18, *(&v18 + 1));
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

void *sub_100E04984(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  sub_1000BC4D4(a2, a3);
  v13 = *v4;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_100E0ED24(*(v13 + 48) + v28, v12, a4);
        result = sub_100E0ECBC(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void sub_100E04B8C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
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
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

void *sub_100E04D08()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
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
        result = sub_100017D5C(v18, *(&v18 + 1));
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

void sub_100E04E64()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
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
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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

void *sub_100E05030()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
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
    for (i = (v9 + 63) >> 6; v11; v22[3] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      LOBYTE(v18) = v18[3];
      v22 = (*(v4 + 48) + v17);
      *v22 = v19;
      v22[1] = v20;
      v22[2] = v21;
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

void sub_100E051D0()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
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

void *sub_100E0532C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
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
        result = sub_10002E98C(v18, *(&v18 + 1));
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

void sub_100E0549C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
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

void *sub_100E05650(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1000BC4D4(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_100E058B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_100E05A04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
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

  return result;
}

void *sub_100E05B70()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_100E0ED8C(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
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

      v15 = *(v2 + 56 + 8 * v8);
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

void *sub_100E05D0C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v22 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
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
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_1000D2A70(*(v5 + 48) + v20, v4, &qword_1016980D0, &unk_10138F3B0);
        result = sub_1000D2AD8(v4, *(v7 + 48) + v20, &qword_1016980D0, &unk_10138F3B0);
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

        v1 = v21;
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

  return result;
}

void *sub_100E05F34()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void sub_100E06088()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        v23[4] = v22;
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

void *sub_100E06224()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
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
        v17 = 160 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v27[4] = v18[4];
        v27[5] = v21;
        v27[3] = v20;
        v22 = v18[6];
        v23 = v18[7];
        v24 = v18[9];
        v27[8] = v18[8];
        v27[9] = v24;
        v27[6] = v22;
        v27[7] = v23;
        v25 = v18[1];
        v27[0] = *v18;
        v27[1] = v25;
        v27[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0xA0uLL);
        result = sub_10013CD18(v27, &v26);
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

void *sub_100E063FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_100E0653C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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

  return result;
}

void *sub_100E0666C()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
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

void *sub_100E067AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 24 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        LODWORD(v20) = *(v20 + 16);
        v23 = *(v6 + 48) + v19;
        *v23 = v21;
        *(v23 + 8) = v22;
        *(v23 + 16) = v20;
        result = sub_100017D5C(v21, v22);
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_100E06904(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
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
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

uint64_t sub_100E06C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
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

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

Swift::Int sub_100E06E9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC1C0, &qword_1013E9EE0);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100E07228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
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

Swift::Int sub_100E07460(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
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
      sub_100017D5C(v18, v19);
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

uint64_t sub_100E0769C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v21 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v23;
      v17 = *(v24 + 72);
      sub_100E0ED24(*(v5 + 48) + v17 * (v13 | (v8 << 6)), v23, type metadata accessor for SharedBeaconRecord);
      Hasher.init(_seed:)();
      sub_1011D8230(v25);
      Hasher._finalize()();
      v18 = i;
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v16, *(v7 + 48) + v19 * v17, type metadata accessor for SharedBeaconRecord);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v15 = *(v5 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100E07904(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBE28, &qword_1013E9DA0);
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
      result = static Hasher._hash(seed:bytes:count:)();
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

Swift::Int sub_100E07AF8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconNamingRecord(0);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BBF88, &qword_1013E9E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_100E0ED24(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for BeaconNamingRecord);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v21 = v33;
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*&v5[*(v21 + 28)]);
      String.hash(into:)();
      if (*&v5[*(v21 + 36) + 8])
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      v6 = v31;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v34, type metadata accessor for BeaconNamingRecord);
      ++*(v8 + 16);
      v13 = v35;
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

        v2 = v30;
        goto LABEL_29;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v8;
  }

  return result;
}

Swift::Int sub_100E07EBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E08114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
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

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

Swift::Int sub_100E08390(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
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
      sub_100017D5C(v18, v19);
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

Swift::Int sub_100E085CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E08824(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RawSearchResult(0);
  v24 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v21 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v23;
      v17 = *(v24 + 72);
      sub_100E0ED24(*(v5 + 48) + v17 * (v13 | (v8 << 6)), v23, type metadata accessor for RawSearchResult);
      Hasher.init(_seed:)();
      sub_100D15128(v25);
      Hasher._finalize()();
      v18 = i;
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v16, *(v7 + 48) + v19 * v17, type metadata accessor for RawSearchResult);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v15 = *(v5 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100E08A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100E08FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 4 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v30 = v18[3];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 4 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v30;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

void sub_100E091F8(uint64_t a1)
{
  v81 = type metadata accessor for UUID();
  v2 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v59 - v8;
  v10 = type metadata accessor for OwnerSharingCircle(0);
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v13 = *v1;
  sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
  v14 = static _SetStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = *(v13 + 56);
    v61 = v13 + 56;
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v60 = (v18 + 63) >> 6;
    v73 = v2 + 16;
    v21 = (v2 + 32);
    v77 = (v2 + 8);
    v63 = v14 + 56;
    v75 = v2;
    v79 = v7;
    v74 = v9;
    v72 = (v2 + 32);
    v67 = v10;
    v66 = v13;
    v65 = v12;
    v64 = v14;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v70 = (v20 - 1) & v20;
LABEL_14:
      v71 = v16;
      v27 = *(v13 + 48);
      v69 = *(v68 + 72);
      sub_100E0ED24(v27 + v69 * (v24 | (v16 << 6)), v12, type metadata accessor for OwnerSharingCircle);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v28 = sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v78 = v28;
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(v12[*(v10 + 28)]);
      v29 = *&v12[*(v10 + 32)];
      v32 = *(v29 + 64);
      v31 = v29 + 64;
      v30 = v32;
      v33 = 1 << *(*&v12[*(v10 + 32)] + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & v30;
      v36 = (v33 + 63) >> 6;
      v76 = *&v12[*(v10 + 32)];

      v37 = 0;
      v82 = 0;
      if (!v35)
      {
LABEL_19:
        if (v36 <= v37 + 1)
        {
          v39 = v37 + 1;
        }

        else
        {
          v39 = v36;
        }

        v40 = v39 - 1;
        v41 = v79;
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v36)
          {
            v58 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
            (*(*(v58 - 8) + 56))(v41, 1, 1, v58);
            v35 = 0;
            goto LABEL_27;
          }

          v35 = *(v31 + 8 * v38);
          ++v37;
          if (v35)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      while (1)
      {
        v38 = v37;
LABEL_26:
        v42 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v43 = v42 | (v38 << 6);
        v44 = v76;
        v45 = v75;
        v46 = v80;
        v47 = v81;
        (*(v75 + 16))(v80, *(v76 + 48) + *(v75 + 72) * v43, v81);
        LOBYTE(v44) = *(*(v44 + 56) + v43);
        v48 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v49 = *(v48 + 48);
        v50 = *(v45 + 32);
        v41 = v79;
        v51 = v46;
        v21 = v72;
        v50(v79, v51, v47);
        *(v41 + v49) = v44;
        (*(*(v48 - 8) + 56))(v41, 0, 1, v48);
        v40 = v38;
        v9 = v74;
LABEL_27:
        sub_1000D2AD8(v41, v9, &unk_1016BC360, &qword_10139CBE0);
        v52 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v52 - 8) + 48))(v9, 1, v52) == 1)
        {
          break;
        }

        v53 = *(v52 + 48);
        v54 = v80;
        v55 = v81;
        (*v21)(v80, v9, v81);
        v56 = v9[v53];
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v83 = v88;
        v84 = v89;
        dispatch thunk of Hashable.hash(into:)();
        (*v77)(v54, v55);
        Hasher._combine(_:)(v56);
        v57 = Hasher._finalize()();
        v37 = v40;
        v82 ^= v57;
        if (!v35)
        {
          goto LABEL_19;
        }
      }

      Hasher._combine(_:)(v82);
      v10 = v67;
      v12 = v65;
      Hasher._combine(_:)(v65[*(v67 + 36)]);
      Hasher._finalize()();
      v15 = v64;
      v22 = v63;
      v23 = _HashTable.nextHole(atOrAfter:)();
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_100E0ECBC(v12, *(v15 + 48) + v23 * v69, type metadata accessor for OwnerSharingCircle);
      ++*(v15 + 16);
      v13 = v66;
      v16 = v71;
      v20 = v70;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v60)
      {
        goto LABEL_31;
      }

      v26 = *(v61 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v70 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_31:

    *v62 = v15;
  }
}

Swift::Int sub_100E099D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100E09EA4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MACAddress();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BC090, &qword_1013E9E78);
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
      sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
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

Swift::Int sub_100E0A1C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
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

Swift::Int sub_100E0A3F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
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
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_100017D5C(v19, v18);
        Data.hash(into:)();
      }

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

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100E0A658(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BBEB0, &qword_1013E9DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_100E0ED24(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for OwnedBeaconGroup);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for OwnedBeaconGroup);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100E0A988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
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

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_100E0AC04(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WildModeTrackingLocation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  sub_1000BC4D4(&qword_1016BBFA8, &qword_1013E9E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1010F4144(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_100E0ED24(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for WildModeTrackingLocation);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

unint64_t sub_100E0ADD0(uint64_t a1)
{
  v2 = *v1;
  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      Hasher.init(_seed:)();

      sub_1007766A4(v15, v14);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100E0AF78(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BC030, &qword_1013E9E50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_100E0ED24(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for BeaconStatus);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      sub_1000097BC(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for BeaconStatus);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100E0B2FC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Destination();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BC010, &qword_1013E9E38);
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
      sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
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

Swift::Int sub_100E0B618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
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
      Hasher._combine(_:)(qword_1013E9EE8[v16]);
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