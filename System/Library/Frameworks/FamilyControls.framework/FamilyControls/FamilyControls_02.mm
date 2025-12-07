uint64_t sub_100034F38(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100036020(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100035088(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_10000DA30(a2, a3);
    sub_1000361A0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_10000DA30(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_10000DA30(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_10000DA30(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_10003467C(v32, a2, v44, v50);
    sub_100007644(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_10000DA30(v18, v17);
LABEL_60:
  sub_10003467C(v50, a2, a3, &v49);
  sub_100007644(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_100007644(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_10000DA30(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_100035510(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100035748(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100035B98(v20 + 1);
    }

    v18 = v8;
    sub_100007698(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100036618(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100035748(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003720(&qword_10006B9C8, &qword_100056688);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100035B98(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100035938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006C298, &qword_1000570F0);
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
      String.hash(into:)();
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

Swift::Int sub_100035B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006B9C8, &qword_100056688);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100035DC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006C240, &qword_1000570D0);
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

void sub_100036020(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100035938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100036788();
      goto LABEL_16;
    }

    sub_100036B90(v8 + 1);
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

Swift::Int sub_1000361A0(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100035DC0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000368E4();
        goto LABEL_68;
      }

      sub_100036DC8(v8 + 1);
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
              sub_10000DA30(v20, v19);
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
            sub_10000DA30(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_10000DA30(v20, v19);
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
              sub_10003467C(v34, v41, v42, v50);
              result = sub_100007644(v20, v19);
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
            sub_10000DA30(v20, v19);
            v13 = v46;
          }

          sub_10003467C(v50, v7, a2, &v49);
          result = sub_100007644(v20, v19);
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

void sub_100036618(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100035B98(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100036A40();
      goto LABEL_12;
    }

    sub_100037004(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
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

void sub_100036788()
{
  v1 = v0;
  sub_100003720(&qword_10006C298, &qword_1000570F0);
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

void *sub_1000368E4()
{
  v1 = v0;
  sub_100003720(&qword_10006C240, &qword_1000570D0);
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
        result = sub_10000DA30(v18, *(&v18 + 1));
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

id sub_100036A40()
{
  v1 = v0;
  sub_100003720(&qword_10006B9C8, &qword_100056688);
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

Swift::Int sub_100036B90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006C298, &qword_1000570F0);
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

Swift::Int sub_100036DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006C240, &qword_1000570D0);
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
      sub_10000DA30(v18, v19);
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

Swift::Int sub_100037004(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003720(&qword_10006B9C8, &qword_100056688);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_100037218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_10003467C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1000372D0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000DA30(a3, a4);
          return sub_1000348AC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100037438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003720(&qword_10006C248, &unk_100057A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for CKSyncEngine.State.Serialization();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_10001DD64(a1, v8, &qword_10006C248, &unk_100057A00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000D5C4(v8, &qword_10006C248, &unk_100057A00);
    URL.path(percentEncoded:)(1);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 fileExistsAtPath:v14];

    if (v15)
    {
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v55 = 0;
      v19 = [v13 removeItemAtURL:v17 error:&v55];

      if (v19)
      {
        v20 = v55;
      }

      else
      {
        v43 = v55;
        v44 = _convertNSErrorToError(_:)();

        v54 = v44;
        swift_willThrow();
      }
    }
  }

  else
  {
    v49 = a2;
    v50 = v13;
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    sub_100003720(&qword_10006C250, &qword_1000570D8);
    v21 = (sub_100003720(&qword_10006C258, &qword_100057550) - 8);
    v22 = v12;
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100056C30;
    v25 = (v24 + v23);
    v26 = v21[14];
    *v25 = 0xD000000000000014;
    *(v25 + 1) = 0x80000001000589F0;
    (*(v10 + 16))(&v25[v26], v22, v9);
    v27 = sub_1000419E0(v24);
    swift_setDeallocating();
    sub_10000D5C4(v25, &qword_10006C258, &qword_100057550);
    swift_deallocClassInstance();
    v55 = v27;
    sub_100003720(&qword_10006C260, &qword_1000570E0);
    sub_100037F44();
    v28 = v54;
    v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v54 = v28;
    if (!v28)
    {
      v31 = v29;
      v47 = v30;
      v48 = v22;

      URL.path(percentEncoded:)(1);
      v32 = String._bridgeToObjectiveC()();

      v33 = v50;
      v34 = [v50 fileExistsAtPath:v32];

      if ((v34 & 1) == 0)
      {
        v35 = v51;
        URL.deletingLastPathComponent()();
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        (*(v52 + 8))(v35, v53);
        v55 = 0;
        LODWORD(v35) = [v33 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v55];

        if (!v35)
        {
          v45 = v55;
          v46 = _convertNSErrorToError(_:)();

          v54 = v46;
          swift_willThrow();
          sub_100007644(v31, v47);

          (*(v10 + 8))(v48, v9);
          return;
        }

        v39 = v55;
      }

      v40 = v31;
      v41 = v47;
      v42 = v54;
      Data.write(to:options:)();
      v54 = v42;
      (*(v10 + 8))(v48, v9);
      sub_100007644(v40, v41);

      return;
    }

    (*(v10 + 8))(v22, v9);
  }
}

void sub_100037A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 zoneID];
  static Logger.syncEngine.getter();
  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    v15 = v9;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v4;
    v19 = v18;

    v20 = sub_100002CB4(v17, v19, &v25);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Saved zone: %{public}s", v13, 0xCu);
    sub_1000032BC(v14);

    (*(v24 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = [objc_opt_self() defaultCenter];
  if (qword_10006B7C0 != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:qword_10006C998 object:v9];
}

uint64_t sub_100037D04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = v8;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100002CB4(v16, v18, &v22);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Will fetch changes for %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    return (*(v5 + 8))(v7, v21);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100037EFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DA30(result, a2);
  }

  return result;
}

uint64_t sub_100037F10(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007644(result, a2);
  }

  return result;
}

unint64_t sub_100037F44()
{
  result = qword_10006C268;
  if (!qword_10006C268)
  {
    sub_1000075FC(&qword_10006C260, &qword_1000570E0);
    sub_1000380BC(&qword_10006C270, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C268);
  }

  return result;
}

unint64_t sub_100038000()
{
  result = qword_10006C288;
  if (!qword_10006C288)
  {
    sub_1000075FC(&qword_10006C260, &qword_1000570E0);
    sub_1000380BC(&qword_10006C290, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C288);
  }

  return result;
}

uint64_t sub_1000380BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *), uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v66 = &v62 - v17;
  v18 = __chkstk_darwin(v16);
  v65 = &v62 - v19;
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  v22 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v22 - 8);
  v72 = &v62 - v23;
  v24 = swift_projectBox();
  v25 = v24;
  if (!a1)
  {
    v33 = a5;
    if (a2)
    {
      v70 = v11;
      swift_errorRetain();
      static Logger.permissions.getter();
      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v71 = v25;
        v37 = v36;
        v67 = swift_slowAlloc();
        v73[0] = v67;
        *v37 = 136315138;
        swift_getErrorValue();
        LODWORD(v66) = v35;
        v38 = Error.localizedDescription.getter();
        v40 = sub_100002CB4(v38, v39, v73);

        *(v37 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v66, "Failed to fetch Family Circle with error: %s", v37, 0xCu);
        sub_1000032BC(v67);

        v25 = v71;

        (*(v12 + 8))(v15, v70);
LABEL_31:
        v33 = a5;
        goto LABEL_32;
      }

      (*(v12 + 8))(v15, v70);
    }

LABEL_32:
    swift_beginAccess();
    v59 = *(a3 + 16);
    swift_beginAccess();
    v60 = v72;
    sub_10003AC08(v25, v72);
    v33(v59, v60);
    return sub_10003AB6C(v60);
  }

  v63 = v21;
  v71 = v24;
  v26 = a1;
  v27 = [v26 members];
  sub_10003AC78();
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = a6;
  v69 = a5;
  v70 = v11;
  v67 = v26;
  if (v28 >> 62)
  {
LABEL_35:
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v12;
  if (!v29)
  {
LABEL_14:

    v33 = v69;
    v25 = v71;
    goto LABEL_32;
  }

  v30 = 0;
  while (1)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v32 = v31;
    v12 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v31 isMe])
    {
      break;
    }

    ++v30;
    if (v12 == v29)
    {
      goto LABEL_14;
    }
  }

  v41 = [v32 memberType];
  if ((v41 - 1) < 2)
  {

    swift_beginAccess();
    *(a3 + 16) = 1;
    v42 = type metadata accessor for FamilyControlsError();
    v43 = v72;
    (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
    v25 = v71;
    swift_beginAccess();
    sub_10003ACC4(v43, v25);
    v44 = v63;
    static Logger.permissions.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    a5 = v69;
    v48 = v64;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Family Controls permissions requirement is satisfied", v49, 2u);
      v25 = v71;
    }

    (*(v48 + 8))(v44, v70);
    goto LABEL_31;
  }

  a5 = v69;
  v50 = v64;
  v25 = v71;
  if (v41 == -1)
  {

    v51 = v66;
    static Logger.permissions.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Family Controls permissions requirement is not satisfied (account is type unknown)", v54, 2u);
    }

    (*(v50 + 8))(v51, v70);
    goto LABEL_31;
  }

  if (!v41)
  {

    v55 = v65;
    static Logger.permissions.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Family Controls permissions requirement is not satisfied (account is type adult)", v58, 2u);
      v25 = v71;
    }

    (*(v50 + 8))(v55, v70);
    goto LABEL_31;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000388EC(void *a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v2);
  v4 = aBlock - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a1;
  if (sub_10000E710(0, v11, v12))
  {
    static Logger.permissions.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Family Controls permission requirement for a child account type is satisfied by override", v15, 2u);
    }

    (*(v6 + 8))(v8, v5);
    v16 = type metadata accessor for FamilyControlsError();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_100023090(1, v4, v10);
    sub_10003AB6C(v4);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocBox();
    v20 = v19;
    v21 = enum case for FamilyControlsError.invalidAccountType(_:);
    v22 = type metadata accessor for FamilyControlsError();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v20, v21, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
    v24 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v24 setCachePolicy:1];
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = sub_10003AE6C;
    v25[5] = v9;
    aBlock[4] = sub_10003AEC4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_1000671A0;
    v26 = _Block_copy(aBlock);

    [v24 startRequestWithCompletionHandler:v26];
    _Block_release(v26);
  }
}

void sub_100038CE4(void *a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v12 sharedConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 installedMDMProfileIdentifier];

    if (v16)
    {

      if ((sub_10000E710(1, v17, v18) & 1) == 0)
      {
        static Logger.permissions.getter();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v25, 2u);
        }

        (*(v6 + 8))(v9, v5);
        v26 = enum case for FamilyControlsError.restricted(_:);
        v27 = type metadata accessor for FamilyControlsError();
        v28 = *(v27 - 8);
        (*(v28 + 104))(v4, v26, v27);
        (*(v28 + 56))(v4, 0, 1, v27);
        sub_100023090(0, v4, v13);
        sub_10003AB6C(v4);
        goto LABEL_11;
      }

      static Logger.permissions.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Family Controls permission requirement for no MDM management is satisfied by override", v21, 2u);
      }

      (*(v6 + 8))(v11, v5);
    }

    v22 = v13;
    sub_1000388EC(v22);

LABEL_11:
    return;
  }

  __break(1u);
}

void sub_100039044(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for AuthorizationStatus();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v14;
  v15 = type metadata accessor for AuthorizationRecord();
  v77 = *(v15 - 8);
  v78 = v15;
  __chkstk_darwin(v15);
  v79 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v80 = a1;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v22 = a5;

  v23 = a4;
  if ((sub_10000E710(0, v24, v25) & 1) == 0)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    sub_100003720(&qword_10006C0E8, &qword_100056F48);
    v38 = swift_allocBox();
    v40 = v39;
    v41 = enum case for FamilyControlsError.invalidAccountType(_:);
    v42 = type metadata accessor for FamilyControlsError();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v40, v41, v42);
    (*(v43 + 56))(v40, 0, 1, v42);
    v44 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v44 setCachePolicy:1];
    v45 = swift_allocObject();
    v45[2] = v37;
    v45[3] = v38;
    v45[4] = sub_10003ADC8;
    v45[5] = v21;
    v84 = sub_10003AEC4;
    v85 = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    v83 = &unk_1000670D8;
    v46 = _Block_copy(aBlock);

    [v44 startRequestWithCompletionHandler:v46];
    _Block_release(v46);

    return;
  }

  v71 = v23;
  v72 = a2;
  v73 = a3;
  static Logger.permissions.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Family Controls permission requirement for a child account type is satisfied by override", v28, 2u);
  }

  (*(v18 + 8))(v20, v17);
  FamilyControlsMember.rawValue.getter();
  FamilyControlsMember.rawValue.getter();
  if (a5)
  {
    v29 = *&v71[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
    v30 = v22;
    v29(aBlock);
    v31 = sub_100007504(aBlock, v83);
    v32 = v31[2];
    if (v32)
    {
      v33 = v31[1];
      v34 = sub_100007504(aBlock, v83);
      v35 = v34[4];
      if (v35)
      {
        v36 = v34[3];

        sub_10003BCF4(v33, v32, v36, v35, v79);

        v70 = v30;

        sub_1000032BC(aBlock);
        v52 = v74;
        AuthorizationRecord.status.getter();
        v53 = enum case for AuthorizationStatus.approved(_:);
        v55 = v75;
        v54 = v76;
        v69 = *(v75 + 104);
        v69(v13, enum case for AuthorizationStatus.approved(_:), v76);
        sub_10003AD34(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v56 = *(v55 + 8);
        v56(v13, v54);
        v56(v52, v54);
        if (aBlock[0] == v81)
        {
          v69(v52, v53, v54);
          v57 = AuthorizationStatus.rawValue.getter();
          v56(v52, v54);
          v58 = [objc_allocWithZone(NSNumber) initWithInteger:v57];
          v72(v58, 0);

          (*(v77 + 8))(v79, v78);
        }

        else
        {
          (*(v77 + 8))(v79, v78);
          v59 = v72;
          v60 = v73;
          if (qword_10006B7F0 != -1)
          {
            swift_once();
          }

          v61 = qword_10006C9C8;
          v62 = swift_allocObject();
          v63 = v71;
          v64 = v80;
          v62[2] = v71;
          v62[3] = v64;
          v62[4] = a5;
          v62[5] = v61;
          v62[6] = v59;
          v62[7] = v60;
          v65 = swift_allocObject();
          v65[2] = v61;
          v65[3] = sub_10003AEC8;
          v65[4] = v62;
          swift_retain_n();

          v66 = v63;
          v67 = v70;

          sub_100044BE4(1, 0, sub_10002B8A4, v65);
        }

        goto LABEL_12;
      }
    }

    v47 = type metadata accessor for FamilyControlsError();
    sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v48 = swift_allocError();
    (*(*(v47 - 8) + 104))(v49, enum case for FamilyControlsError.invalidArgument(_:), v47);
    swift_willThrow();

    sub_1000032BC(aBlock);
  }

  else
  {
    v50 = type metadata accessor for FamilyControlsError();
    sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v48 = swift_allocError();
    (*(*(v50 - 8) + 104))(v51, enum case for FamilyControlsError.invalidArgument(_:), v50);
    swift_willThrow();
  }

  swift_errorRetain();
  v72(0, v48);

LABEL_12:
}

void sub_1000399B4(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v89 = a2;
  v90 = a1;
  v8 = type metadata accessor for AuthorizationStatus();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = __chkstk_darwin(v8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v79 - v11;
  v12 = type metadata accessor for AuthorizationRecord();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v79 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v79 - v24;
  v26 = objc_opt_self();
  v91 = a5;

  v92 = a4;
  v27 = [v26 sharedConnection];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 installedMDMProfileIdentifier];

    if (!v29)
    {
LABEL_7:

      v35 = v92;
      v36 = v91;
      sub_100039044(v90, v89, a3, v35, a5);

      return;
    }

    if (sub_10000E710(1, v30, v31))
    {
      static Logger.permissions.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Family Controls permission requirement for no MDM management is satisfied by override", v34, 2u);
      }

      (*(v20 + 8))(v25, v19);
      goto LABEL_7;
    }

    static Logger.permissions.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v39, 2u);
    }

    (*(v20 + 8))(v23, v19);
    v40 = enum case for FamilyControlsError.restricted(_:);
    v41 = type metadata accessor for FamilyControlsError();
    v42 = *(v41 - 8);
    v43 = *(v42 + 104);
    v44 = v88;
    v43(v88, v40, v41);
    (*(v42 + 56))(v44, 0, 1, v41);
    v45 = FamilyControlsMember.rawValue.getter();
    if (v45 == FamilyControlsMember.rawValue.getter())
    {
      sub_10003AC08(v44, v17);
      if ((*(v42 + 48))(v17, 1, v41) == 1)
      {
        sub_10003AB6C(v17);
        v46 = 0;
      }

      else
      {
        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v46 = swift_allocError();
        (*(v42 + 32))(v54, v17, v41);
      }

      v89(0, v46);
    }

    else
    {
      if (a5)
      {
        v47 = *&v92[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
        v80 = v91;
        v47(v94);
        v48 = sub_100007504(v94, v95);
        v49 = v48[2];
        if (v49)
        {
          v50 = v48[1];
          v51 = sub_100007504(v94, v95);
          if (v51[4])
          {
            v52 = v51[4];
            v53 = v51[3];

            sub_10003BCF4(v50, v49, v53, v52, v87);

            sub_1000032BC(v94);
            v59 = v82;
            AuthorizationRecord.status.getter();
            v60 = enum case for AuthorizationStatus.approved(_:);
            v62 = v83;
            v61 = v84;
            v63 = v81;
            v79 = *(v83 + 104);
            v79(v81, enum case for AuthorizationStatus.approved(_:), v84);
            sub_10003AD34(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v64 = v59;
            v65 = *(v62 + 8);
            v65(v63, v61);
            v65(v59, v61);
            v44 = v88;
            if (v94[0] == v93)
            {
              v79(v64, v60, v61);
              v66 = v64;
              v67 = AuthorizationStatus.rawValue.getter();
              v65(v66, v61);
              v68 = [objc_allocWithZone(NSNumber) initWithInteger:v67];
              v89(v68, 0);

              (*(v85 + 8))(v87, v86);
              sub_10003AB6C(v44);
              v58 = v80;
              goto LABEL_24;
            }

            (*(v85 + 8))(v87, v86);
            if (qword_10006B7F0 != -1)
            {
              swift_once();
            }

            v69 = qword_10006C9C8;
            v70 = swift_allocObject();
            v71 = v92;
            v72 = v89;
            v73 = v90;
            v70[2] = v92;
            v70[3] = v73;
            v70[4] = a5;
            v70[5] = v69;
            v70[6] = v72;
            v70[7] = a3;
            v74 = swift_allocObject();
            v74[2] = v69;
            v74[3] = sub_10003AD7C;
            v74[4] = v70;
            swift_retain_n();

            v75 = v71;
            v76 = v80;

            sub_100044BE4(1, 0, sub_100028990, v74);

LABEL_23:
            sub_10003AB6C(v44);
            v58 = v91;
LABEL_24:

            return;
          }
        }

        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v55 = swift_allocError();
        v43(v56, enum case for FamilyControlsError.invalidArgument(_:), v41);
        swift_willThrow();

        sub_1000032BC(v94);
        v44 = v88;
      }

      else
      {
        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v55 = swift_allocError();
        v43(v57, enum case for FamilyControlsError.invalidArgument(_:), v41);
        swift_willThrow();
      }

      swift_errorRetain();
      v89(0, v55);
    }

    goto LABEL_23;
  }

  v77 = v91;

  v78 = v92;

  __break(1u);
}

void sub_10003A460(void (*a1)(uint64_t, char *), uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000E710(0, v11, v12))
  {
    static Logger.permissions.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Family Controls permission requirement for a child account type is satisfied by override", v15, 2u);
    }

    (*(v8 + 8))(v10, v7);
    v16 = type metadata accessor for FamilyControlsError();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    a1(1, v6);
    sub_10003AB6C(v6);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocBox();
    v20 = v19;
    v21 = enum case for FamilyControlsError.invalidAccountType(_:);
    v22 = type metadata accessor for FamilyControlsError();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v20, v21, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
    v24 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v24 setCachePolicy:1];
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = a1;
    v25[5] = a2;
    aBlock[4] = sub_10003ABE4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_100067010;
    v26 = _Block_copy(aBlock);

    [v24 startRequestWithCompletionHandler:v26];
    _Block_release(v26);
  }
}

void sub_10003A81C(void (*a1)(uint64_t, char *), uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = [objc_opt_self() sharedConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 installedMDMProfileIdentifier];

    if (!v16)
    {
LABEL_7:
      sub_10003A460(a1, a2);
      return;
    }

    if (sub_10000E710(1, v17, v18))
    {
      static Logger.permissions.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Family Controls permission requirement for no MDM management is satisfied by override", v21, 2u);
      }

      (*(v8 + 8))(v11, v7);
      goto LABEL_7;
    }

    static Logger.permissions.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v24, 2u);
    }

    (*(v8 + 8))(v13, v7);
    v25 = enum case for FamilyControlsError.restricted(_:);
    v26 = type metadata accessor for FamilyControlsError();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v6, v25, v26);
    (*(v27 + 56))(v6, 0, 1, v26);
    a1(0, v6);
    sub_10003AB6C(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003AB6C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003ABF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003AC78()
{
  result = qword_10006C2A0;
  if (!qword_10006C2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C2A0);
  }

  return result;
}

uint64_t sub_10003ACC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AD34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003AD80()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ADE0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003AE34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AE74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AEE4(uint64_t a1)
{
  v37 = a1;
  v3 = type metadata accessor for AuthorizationRecord();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007504(v1, v1[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v9 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v34 = v6;
    v12 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (*(v38 + 8))(v8, v34);
    }

    v17 = v12;
    v18 = v13;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0, &protocol conformance descriptor for AuthorizationRecord, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100007644(v17, v18);

    v14 = v39;
    v6 = v34;
  }

  else
  {

    v14 = &_swiftEmptyArrayStorage;
  }

  v41 = v14;

  v15 = sub_10003C9A4(v37, v14);

  if (v15 == NSNotFound.getter())
  {

    return (*(v38 + 8))(v8, v6);
  }

  sub_10003CE90(v15, v5);
  (*(v35 + 8))(v5, v36);
  sub_10003CB70(v41, v8);
  if (v2)
  {
    (*(v38 + 8))(v8, v6);
  }

  v19 = AuthorizationRecord.bundleIdentifier.getter();
  v21 = v20;
  v22 = AuthorizationRecord.teamIdentifier.getter();
  v23 = v6;
  v25 = v24;
  v39 = 45;
  v40 = 0xE100000000000000;
  v26._countAndFlagsBits = v19;
  v26._object = v21;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 45;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = v22;
  v28._object = v25;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v39;
  v30 = v40;
  v39 = 0xD000000000000026;
  v40 = 0x80000001000585F0;
  v29._object = v30;
  String.append(_:)(v29);

  v31 = String.utf8CString.getter();

  notify_post((v31 + 32));

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = String.utf8CString.getter();

  notify_post((v32 + 32));
  (*(v38 + 8))(v8, v23);
}

size_t sub_10003B3DC(uint64_t a1)
{
  v37 = a1;
  v38 = type metadata accessor for AuthorizationRecord();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007504(v1, v1[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v8 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v35 = v5;
    v11 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (*(v41 + 8))(v7, v35);
    }

    v33 = v11;
    v34 = v12;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0, &protocol conformance descriptor for AuthorizationRecord, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100007644(v33, v34);

    v13 = v39;
    v5 = v35;
  }

  else
  {

    v13 = &_swiftEmptyArrayStorage;
  }

  v14 = v37;
  v15 = sub_10003C9A4(v37, v13);

  if (v15 == NSNotFound.getter())
  {
    (*(v3 + 16))(v36, v14, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10001CA3C(0, v13[2] + 1, 1, v13);
    }

    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_10001CA3C((v16 > 1), v17 + 1, 1, v13);
    }

    v13[2] = v17 + 1;
    (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v36, v38);
    goto LABEL_15;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_10001D024(v13);
  v13 = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (v15 < v13[2])
  {
    (*(v3 + 24))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v14, v38);
LABEL_15:
    sub_10003CB70(v13, v7);
    if (v2)
    {
      (*(v41 + 8))(v7, v5);
    }

    v19 = AuthorizationRecord.bundleIdentifier.getter();
    v21 = v20;
    v22 = AuthorizationRecord.teamIdentifier.getter();
    v23 = v5;
    v25 = v24;
    v39 = 45;
    v40 = 0xE100000000000000;
    v26._countAndFlagsBits = v19;
    v26._object = v21;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 45;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28._countAndFlagsBits = v22;
    v28._object = v25;
    String.append(_:)(v28);
    v29._countAndFlagsBits = v39;
    v30 = v40;
    v39 = 0xD000000000000026;
    v40 = 0x80000001000585F0;
    v29._object = v30;
    String.append(_:)(v29);

    v31 = String.utf8CString.getter();

    notify_post((v31 + 32));

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String.utf8CString.getter();

    notify_post((v32 + 32));
    (*(v41 + 8))(v7, v23);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003B998(uint64_t a1)
{
  v15[1] = a1;
  v19 = type metadata accessor for URL();
  v18 = *(v19 - 8);
  __chkstk_darwin(v19);
  v16 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = type metadata accessor for AuthorizationStatus();
  v2 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AuthorizationRecord();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v2 + 104))(v4, enum case for AuthorizationStatus.approved(_:), v15[0]);
  v10 = v6;
  AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
  sub_100003720(&qword_10006C030, &qword_100056D48);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100056C30;
  (*(v7 + 16))(v12 + v11, v9, v10);
  sub_100007504(v17, v17[3]);
  v13 = v16;
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  sub_10003CB70(v12, v13);

  (*(v18 + 8))(v13, v19);
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_10003BCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a2;
  v62 = a3;
  v63 = a1;
  v54 = a5;
  v6 = type metadata accessor for AuthorizationStatus();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthorizationRecord();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v19 = __chkstk_darwin(v18 - 8);
  v55 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = *(v11 + 56);
  v56 = &v46 - v22;
  v59 = v10;
  v48 = v21;
  v49 = v11 + 56;
  v21();
  sub_100007504(v5, v5[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v23 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    v58 = v14;
    v26 = v57;
    v27 = Data.init(contentsOf:options:)();
    if (v26)
    {

      (*(v15 + 8))(v17, v58);
      return sub_10003D064(v56);
    }

    v47 = v27;
    v42 = v28;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0, &protocol conformance descriptor for AuthorizationRecord, &protocol conformance descriptor for <A> [A]);
    v46 = v42;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v57 = 0;
    (*(v15 + 8))(v17, v58);
    sub_100007644(v47, v46);

    v30 = v64;
  }

  else
  {
    (*(v15 + 8))(v17, v14);

    v30 = &_swiftEmptyArrayStorage;
  }

  v31 = v30[2];
  v32 = v59;
  if (v31)
  {
    v33 = 0;
    v34 = v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v58 = v11;
    v35 = (v11 + 8);
    while (1)
    {
      if (v33 >= v30[2])
      {
        __break(1u);
        return result;
      }

      (*(v58 + 16))(v13, &v34[*(v58 + 72) * v33], v32);
      if (AuthorizationRecord.bundleIdentifier.getter() == v63 && v37 == v61)
      {
        break;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_14;
      }

LABEL_8:
      ++v33;
      v32 = v59;
      result = (*v35)(v13, v59);
      if (v31 == v33)
      {

        v41 = v54;
        v40 = v56;
        v11 = v58;
        goto LABEL_21;
      }
    }

LABEL_14:
    if (AuthorizationRecord.teamIdentifier.getter() == v62 && v39 == v60)
    {

LABEL_17:
      v40 = v56;
      sub_10003D064(v56);

      v11 = v58;
      v32 = v59;
      (*(v58 + 32))(v40, v13, v59);
      (v48)(v40, 0, 1, v32);
      v41 = v54;
      goto LABEL_21;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v40 = v56;
  v41 = v54;
LABEL_21:
  v43 = v55;
  sub_10003D0CC(v40, v55);
  v44 = *(v11 + 48);
  if (v44(v43, 1, v32) == 1)
  {

    UUID.init()();
    (*(v52 + 104))(v51, enum case for AuthorizationStatus.notDetermined(_:), v53);
    v45 = v55;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003D064(v40);
    result = v44(v45, 1, v32);
    if (result != 1)
    {
      return sub_10003D064(v45);
    }
  }

  else
  {
    sub_10003D064(v40);
    return (*(v11 + 32))(v41, v43, v32);
  }

  return result;
}

uint64_t sub_10003C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v44 = type metadata accessor for UUID();
  v37 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AuthorizationRecord();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v7;
  v13 = v7[7];
  v39 = v7 + 7;
  v40 = a2;
  v38 = v13;
  v13(a2, 1, 1, v6);
  v14 = v12;
  sub_100007504(v2, v2[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v15 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v15 fileExistsAtPath:v16];

  if (a2)
  {
    v17 = Data.init(contentsOf:options:)();
    if (v3)
    {

      (*(v10 + 8))(v14, v9);
      return sub_10003D064(v40);
    }

    v35 = v18;
    v31 = v17;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0, &protocol conformance descriptor for AuthorizationRecord, &protocol conformance descriptor for <A> [A]);
    v41 = v31;
    v32 = v35;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v10 + 8))(v14, v9);
    sub_100007644(v41, v32);

    v19 = v46;
  }

  else
  {
    (*(v10 + 8))(v14, v9);

    v19 = &_swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  v21 = v36;
  if (v20)
  {
    v34 = v19;
    v35 = v3;
    v22 = (v42 + 2);
    v23 = v42[2];
    v24 = v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v41 = v42[9];
    v42 = v23;
    v25 = v37 + 1;
    v37 = (v22 - 8);
    v26 = (v22 + 16);
    (v23)(v36, v24, v6);
    while (1)
    {
      v28 = v6;
      v29 = v43;
      AuthorizationRecord.recordIdentifier.getter();
      v30 = static UUID.== infix(_:_:)();
      (*v25)(v29, v44);
      if (v30)
      {
        v27 = v40;
        sub_10003D064(v40);
        (*v26)(v27, v21, v28);
        v38(v27, 0, 1, v28);
      }

      else
      {
        (*v37)(v21, v28);
      }

      v6 = v28;
      v24 += v41;
      if (!--v20)
      {
        break;
      }

      (v42)(v21, v24, v28);
    }
  }
}

uint64_t sub_10003C9A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  AuthorizationRecord.recordIdentifier.getter();
  v10 = NSNotFound.getter();
  v11 = 0;
  v12 = *(a2 + 16);
  v13 = (v4 + 8);
  v19[0] = v10;
  v19[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v12 != v11)
  {
    v14 = v11 + 1;
    type metadata accessor for AuthorizationRecord();
    AuthorizationRecord.recordIdentifier.getter();
    v15 = static UUID.== infix(_:_:)();
    v16 = *v13;
    (*v13)(v7, v3);
    ++v11;
    if (v15)
    {
      v17 = v14 - 1;
      goto LABEL_6;
    }
  }

  v16 = *v13;
  v17 = v19[0];
LABEL_6:
  v16(v9, v3);
  return v17;
}

uint64_t sub_10003CB70(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v33 = a1;
  sub_100003720(&qword_10006B990, &qword_100056680);
  sub_10003CF98(&qword_10006C2A8, &unk_10006C2B0, &protocol conformance descriptor for AuthorizationRecord, &protocol conformance descriptor for <A> [A]);
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    v30 = v5;
    v31 = v9;
    v32 = v10;
    URL.path.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v8 fileExistsAtPath:v11];

    if (a1[2])
    {
      if (v12)
      {
LABEL_6:
        v19 = v31;
        v20 = v32;
        Data.write(to:options:)();
        v21 = v19;
        v22 = v20;
LABEL_12:
        sub_100007644(v21, v22);
        goto LABEL_13;
      }

      URL.deletingLastPathComponent()();
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      (*(v30 + 8))(v7, v4);
      v33 = 0;
      v16 = [v8 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v33];

      v17 = v33;
      if (v16)
      {
        v18 = v33;
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v12)
    {
      URL._bridgeToObjectiveC()(0);
      v24 = v23;
      v33 = 0;
      v25 = [v8 removeItemAtURL:v23 error:&v33];

      v17 = v33;
      if (!v25)
      {
LABEL_10:
        v27 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_11;
      }

      v26 = v33;
    }

LABEL_11:
    v21 = v31;
    v22 = v32;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_10003CE90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001D024(v5);
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
    v9 = type metadata accessor for AuthorizationRecord();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10003CF98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(&qword_10006B990, &qword_100056680);
    sub_10003D020(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D020(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AuthorizationRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D064(uint64_t a1)
{
  v2 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003D0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10003D13C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003D150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003D198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *FamilyControlsService.remoteInterface.unsafeMutableAddressor()
{
  if (qword_10006B7D0 != -1)
  {
    swift_once();
  }

  return &static FamilyControlsService.remoteInterface;
}

id sub_10003D240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003D260(a1, a2, a3);
  static FamilyControlsService.remoteInterface = result;
  return result;
}

id sub_10003D260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FamilyControlsAgent25FamilyControlsAgentRemote_];
  sub_1000112B4(0, &unk_10006C2C0, NSSet_ptr);
  sub_100003720(&qword_10006C278, &qword_1000570E8);
  v8 = swift_allocObject();
  v24 = xmmword_100056C30;
  *(v8 + 16) = xmmword_100056C30;
  v9 = sub_1000112B4(0, &qword_10006C2D0, UISSlotStyle_ptr);
  *(v8 + 56) = sub_100003720(&qword_10006C2D8, &qword_100057168);
  *(v8 + 32) = v9;
  v10 = NSSet.init(objects:)();
  v25 = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  if (v25)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v24;
    v12 = sub_1000112B4(0, &qword_10006C2E0, UISSlotTag_ptr);
    *(v11 + 56) = sub_100003720(&qword_10006C2E8, &qword_100057170);
    *(v11 + 32) = v12;
    v13 = NSSet.init(objects:)();
    v25 = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v25)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v24;
      v15 = sub_1000112B4(0, &qword_10006C2F0, UISSlotRemoteContent_ptr);
      *(v14 + 56) = sub_100003720(&qword_10006C2F8, qword_100057178);
      *(v14 + 32) = v15;
      v16 = NSSet.init(objects:)();
      v25 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v25)
      {
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v7 setClasses:isa forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:1 ofReply:0];

        v18 = Set._bridgeToObjectiveC()().super.isa;

        [v7 setClasses:v18 forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:2 ofReply:0];

        v19 = Set._bridgeToObjectiveC()().super.isa;

        [v7 setClasses:v19 forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:0 ofReply:1];

        return v7;
      }
    }
  }

  static Logger.agent.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to set allowed classes", v22, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return v7;
}

id static FamilyControlsService.remoteInterface.getter()
{
  if (qword_10006B7D0 != -1)
  {
    swift_once();
  }

  v1 = static FamilyControlsService.remoteInterface;

  return v1;
}

uint64_t sub_10003D6F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003D768(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 6448503;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10003D854()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003D8E8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10003D968(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003D9F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100040060(*a1);
  *a2 = result;
  return result;
}

void sub_10003DA28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003DA78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10003DB14(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10003DB84(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_10004015C(a5, a6, a1);
  a2();
}

uint64_t sub_10003DBE0(uint64_t a1)
{
  if (qword_10006B7D8 != -1)
  {
    swift_once();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_11:
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = sub_100013058(v11, v12, &_swiftEmptyArrayStorage);

    return v10;
  }

  v8 = [objc_opt_self() localizedNameForIdentifier:a1];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_10003DD20()
{

  v1 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v2 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__localizedName;
  v4 = sub_100003720(&qword_10006C5B0, &qword_100057510);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isDisplayable;
  v6 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__requiresRemoteIconFetch, v6);
  v7(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch, v6);
  v7(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityItem(uint64_t a1)
{
  result = qword_10006C358;
  if (!qword_10006C358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003DF24(uint64_t a1)
{
  sub_10003E100(319);
  if (v1 <= 0x3F)
  {
    sub_10003E164(319, &qword_10006C370, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10003E164(319, &unk_10006C378, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_10003E060()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003E100(uint64_t a1)
{
  if (!qword_10006C368)
  {
    sub_1000075FC(&qword_10006BE08, &qword_100056988);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10006C368);
    }
  }
}

void sub_10003E164(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10003E1D0()
{
  result = qword_10006C598;
  if (!qword_10006C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C598);
  }

  return result;
}

uint64_t sub_10003E230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003DB80();
  *a1 = result;
  return result;
}

uint64_t sub_10003E280(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10003E31C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003E3C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityItem(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

NSString sub_10003E458()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C9B0 = result;
  return result;
}

uint64_t sub_10003E490@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_10003E510(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003E594()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003E610(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10001DD64(a1, &v10 - v7, &qword_10006BE08, &qword_100056988);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001DD64(v8, v6, &qword_10006BE08, &qword_100056988);

  static Published.subscript.setter();
  return sub_10000D5C4(v8, &qword_10006BE08, &qword_100056988);
}

uint64_t sub_10003E768@<X0>(_BYTE *a5@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a5 = v7;
  return result;
}

uint64_t sub_10003E7E4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003E854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v3 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 7368801;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  if (*(a2 + 16) != 1)
  {
    v9 = 6448503;
    v8 = 0xE300000000000000;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 7368801;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

UIImage sub_10003E9A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006B7D8 != -1)
  {
    swift_once();
  }

  v8 = 0x737070416C6C41;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    v15 = 0xE700000000000000;
    goto LABEL_22;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    v15 = 0xEA00000000007974;
    v8 = 0x6976697461657243;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v18 != v19)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_22;
      }

      v8 = 0x6F69746163756445;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
      {

        v15 = 0xE90000000000006ELL;
        goto LABEL_22;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = 0xE90000000000006ELL;
      if (v26)
      {
        goto LABEL_22;
      }

      v15 = 0xED0000746E656D6ELL;
      v8 = 0x6961747265746E45;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      if (v27 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v29 != v30)
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
          goto LABEL_22;
        }

        v8 = 0x73656D6147;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
        {

          v15 = 0xE500000000000000;
          goto LABEL_22;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          v15 = 0xE500000000000000;
          goto LABEL_22;
        }

        v15 = 0xED00007373656E74;
        v8 = 0x694668746C616548;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        if (v39 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v41 != v42)
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v43)
          {
            goto LABEL_22;
          }

          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
          if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
          {

LABEL_36:
            v15 = 0x8000000100058BF0;
            v8 = 0xD000000000000014;
            goto LABEL_22;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v48)
          {
            goto LABEL_36;
          }

          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
          if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
          {

LABEL_41:
            v15 = 0xE500000000000000;
            v8 = 0x726568744FLL;
            goto LABEL_22;
          }

          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v53)
          {
            goto LABEL_41;
          }

          v15 = 0xEC00000079746976;
          v8 = 0x69746375646F7250;
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
          if (v54 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v56 != v57)
          {
            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v58)
            {
              goto LABEL_22;
            }

            v15 = 0xEF646F6F46646E41;
            v8 = 0x676E6970706F6853;
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;
            if (v59 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v61 != v62)
            {
              v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v63)
              {
                goto LABEL_22;
              }

              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;
              if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
              {
              }

              else
              {
                v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v68 & 1) == 0)
                {
                  v8 = 0x6C6576617254;
                  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v71 = v70;
                  if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
                  {

                    v15 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v73)
                  {
                    v15 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v8 = 0x656974696C697455;
                  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v76 = v75;
                  if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
                  {

                    v15 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v78)
                  {
                    v15 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  static Logger.activityPicker.getter();
                  v79 = a1;
                  v80 = Logger.logObject.getter();
                  v81 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = swift_slowAlloc();
                    v83 = swift_slowAlloc();
                    v88 = v83;
                    *v82 = 136315138;
                    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v86 = sub_100002CB4(v84, v85, &v88);

                    *(v82 + 4) = v86;
                    _os_log_impl(&_mh_execute_header, v80, v81, "Failed to resolve icon for category identifier: %s", v82, 0xCu);
                    sub_1000032BC(v83);
                  }

                  (*(v5 + 8))(v7, v4);
                  goto LABEL_41;
                }
              }

              v8 = 0xD000000000000010;
              v15 = 0x8000000100058BD0;
              goto LABEL_22;
            }
          }
        }
      }
    }

    goto LABEL_22;
  }

  v15 = 0xE700000000000000;
LABEL_22:
  sub_100041168();
  v31._countAndFlagsBits = v8;
  v31._object = v15;
  return UIImage.init(imageLiteralResourceName:)(v31);
}

uint64_t sub_10003F2CC(uint64_t a1, unint64_t a2)
{
  v74 = a1;
  v3 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v64 - v4;
  v5 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v64 - v7;
  v76 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v8 = __chkstk_darwin(v76);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v72 = &v64 - v12;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_10003DBE0(v19);
  v75 = a2;
  v73 = v10;
  if (v21)
  {
    v66 = v21;
    v67 = v20;
  }

  else
  {
    v64 = v14;
    static Logger.activityPicker.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v67 = v6;
      v25 = v19;
      v26 = v24;
      v27 = swift_slowAlloc();
      v79[0] = v27;
      *v26 = 136315138;
      v28 = v74;
      *(v26 + 4) = sub_100002CB4(v74, v75, v79);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to resolve localized name for category identifier: %s", v26, 0xCu);
      sub_1000032BC(v27);
      a2 = v75;

      v19 = v25;
      v6 = v67;

      (*(v16 + 8))(v18, v15);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
      v28 = v74;
    }

    v66 = a2;
    v67 = v28;
    v14 = v64;
    v10 = v73;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v19;
  if (v29 == v32 && v31 == v33)
  {
    goto LABEL_9;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_12:

    goto LABEL_13;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v54 != v55)
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v19;
      v59 = v57;
      v61 = v60;

      if (v59 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v61 != v62)
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LODWORD(v64) = v63 ^ 1;
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:

LABEL_10:

LABEL_13:
  LODWORD(v64) = 0;
LABEL_14:
  v35 = type metadata accessor for URL();
  v36 = *(*(v35 - 8) + 56);
  v36(v14, 1, 1, v35);
  type metadata accessor for ActivityItem(0);
  v37 = swift_allocObject();
  v38 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v39 = v72;
  v36(v72, 1, 1, v35);
  sub_10001DD64(v39, v10, &qword_10006BE08, &qword_100056988);
  v40 = v68;
  Published.init(initialValue:)();
  sub_10000D5C4(v39, &qword_10006BE08, &qword_100056988);
  v41 = v6;
  (*(v6 + 32))(v37 + v38, v40, v5);
  v42 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  LOBYTE(v79[0]) = 0;
  v43 = v69;
  Published.init(initialValue:)();
  v68 = v5;
  v44 = v41;
  v45 = v14;
  v46 = v71;
  v47 = *(v70 + 32);
  v47(v37 + v42, v43, v71);
  v48 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  LOBYTE(v79[0]) = 0;
  Published.init(initialValue:)();
  v47(v37 + v48, v43, v46);
  *(v37 + 16) = 1;
  v49 = v75;
  *(v37 + 24) = v74;
  *(v37 + 32) = v49;
  swift_beginAccess();
  v77 = v67;
  v78 = v66;

  Published.init(initialValue:)();
  swift_endAccess();
  sub_10001DD64(v45, v39, &qword_10006BE08, &qword_100056988);
  v50 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v44 + 8))(v37 + v50, v68);
  sub_10001DD64(v39, v73, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v39, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v77) = v64 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v77) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v79[0]) = 0;

  static Published.subscript.setter();

  sub_10000D5C4(v45, &qword_10006BE08, &qword_100056988);
  return v37;
}

uint64_t sub_10003FB5C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - v3;
  v31 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v38 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - v5;
  v32 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v7 = __chkstk_darwin(v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v33 = &v30 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  type metadata accessor for ActivityItem(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v16(v12, 1, 1, v15);
  sub_10001DD64(v12, v9, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v12, &qword_10006BE08, &qword_100056988);
  v19 = v17 + v18;
  v20 = v31;
  (*(v38 + 32))(v19, v6, v31);
  v21 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  v41 = 0;
  Published.init(initialValue:)();
  v22 = v35;
  v23 = *(v34 + 32);
  v23(v17 + v21, v4, v35);
  v24 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  v41 = 0;
  Published.init(initialValue:)();
  v23(v17 + v24, v4, v22);
  *(v17 + 16) = 2;
  v26 = v36;
  v25 = v37;
  *(v17 + 24) = v36;
  *(v17 + 32) = v25;
  swift_beginAccess();
  v39 = v26;
  v40 = v25;
  swift_bridgeObjectRetain_n();
  Published.init(initialValue:)();
  swift_endAccess();
  v27 = v33;
  sub_10001DD64(v33, v12, &qword_10006BE08, &qword_100056988);
  v28 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v38 + 8))(v17 + v28, v20);
  sub_10001DD64(v12, v9, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v12, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v39) = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v39) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = 0;

  static Published.subscript.setter();
  sub_10000D5C4(v27, &qword_10006BE08, &qword_100056988);
  return v17;
}

unint64_t sub_100040060(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100065C50, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004015C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v109 = a2;
  v5 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin(v5);
  v93 = &v86 - v6;
  v106 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v96 = *(v106 - 8);
  __chkstk_darwin(v106);
  v92 = &v86 - v7;
  v97 = sub_100003720(&qword_10006C5C0, &qword_100057520);
  __chkstk_darwin(v97);
  v89 = &v86 - v8;
  v9 = sub_100003720(&qword_10006C5C8, &qword_100057528);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v86 - v14;
  __chkstk_darwin(v13);
  v99 = &v86 - v16;
  v90 = type metadata accessor for Logger();
  v17 = *(v90 - 1);
  __chkstk_darwin(v90);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppInfoSource();
  v100 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v87 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = &v86 - v23;
  v102 = type metadata accessor for URL();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v26 = __chkstk_darwin(v104);
  v103 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v91 = &v86 - v29;
  v30 = __chkstk_darwin(v28);
  v105 = &v86 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v86 - v33;
  __chkstk_darwin(v32);
  v108 = &v86 - v35;
  v101 = a1;
  if (!a3)
  {
LABEL_9:
    v98 = v12;
    v39 = a3;
    static Logger.activityPicker.getter();
    v40 = v109;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v112[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100002CB4(v101, v109, v112);
      _os_log_impl(&_mh_execute_header, v41, v42, "Could not initially resolve app info for bundle identifier: %s", v43, 0xCu);
      sub_1000032BC(v44);
      v40 = v109;
    }

    (*(v17 + 8))(v19, v90);
    v45 = v99;
    v46 = v20;
    v47 = v107 + 56;
    v48 = 1;
    v90 = *(v107 + 56);
    v90(v108, 1, 1, v102);
    if (v39)
    {
      dispatch thunk of AppInfo.source.getter();
      v48 = 0;
    }

    v107 = v47 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v49 = v100;
    v50 = *(v100 + 56);
    v50(v45, v48, 1, v20);
    (*(v49 + 104))(v15, enum case for AppInfoSource.unknown(_:), v20);
    v50(v15, 0, 1, v20);
    v51 = *(v97 + 48);
    v52 = v89;
    sub_10001DD64(v45, v89, &qword_10006C5C8, &qword_100057528);
    sub_10001DD64(v15, v52 + v51, &qword_10006C5C8, &qword_100057528);
    v53 = v45;
    v54 = *(v49 + 48);
    if (v54(v52, 1, v46) == 1)
    {
      sub_10000D5C4(v15, &qword_10006C5C8, &qword_100057528);
      sub_10000D5C4(v53, &qword_10006C5C8, &qword_100057528);
      if (v54(v52 + v51, 1, v46) == 1)
      {
        sub_10000D5C4(v52, &qword_10006C5C8, &qword_100057528);
        LODWORD(v97) = 1;
LABEL_19:
        v56 = v101;
        v57 = v102;
LABEL_21:

        LODWORD(v100) = 0;
        v98 = v56;
        v99 = v40;
        v61 = v90;
        goto LABEL_22;
      }
    }

    else
    {
      v55 = v98;
      sub_10001DD64(v52, v98, &qword_10006C5C8, &qword_100057528);
      if (v54(v52 + v51, 1, v46) != 1)
      {
        v58 = v100;
        v59 = v88;
        (*(v100 + 32))(v88, v52 + v51, v46);
        sub_100041120(&qword_10006C5D0, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
        LODWORD(v97) = dispatch thunk of static Equatable.== infix(_:_:)();
        v60 = *(v58 + 8);
        v60(v59, v46);
        sub_10000D5C4(v15, &qword_10006C5C8, &qword_100057528);
        sub_10000D5C4(v99, &qword_10006C5C8, &qword_100057528);
        v60(v55, v46);
        sub_10000D5C4(v52, &qword_10006C5C8, &qword_100057528);
        v56 = v101;
        v57 = v102;
        goto LABEL_21;
      }

      sub_10000D5C4(v15, &qword_10006C5C8, &qword_100057528);
      sub_10000D5C4(v99, &qword_10006C5C8, &qword_100057528);
      (*(v100 + 8))(v55, v46);
    }

    sub_10000D5C4(v52, &qword_10006C5C0, &qword_100057520);
    LODWORD(v97) = 0;
    goto LABEL_19;
  }

  v36 = dispatch thunk of AppInfo.displayName.getter();
  if (!v37)
  {

    goto LABEL_9;
  }

  if (v36 == a1 && v37 == v109 || (v98 = v36, v38 = v37, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    goto LABEL_9;
  }

  v99 = v38;
  dispatch thunk of AppInfo.artworkURL.getter();
  v75 = v107;
  v57 = v102;
  if ((*(v107 + 48))(v34, 1, v102) == 1)
  {
    sub_10000D5C4(v34, &qword_10006BE08, &qword_100056988);
    v61 = *(v75 + 56);
    v61(v108, 1, 1, v57);
    v76 = v88;
    dispatch thunk of AppInfo.source.getter();
    v77 = v100;
    v78 = v87;
    (*(v100 + 104))(v87, enum case for AppInfoSource.unknown(_:), v20);
    sub_100041120(&qword_10006C5D8, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();

    v79 = *(v77 + 8);
    v79(v78, v20);
    v79(v76, v20);
    LODWORD(v100) = 0;
    LODWORD(v97) = v112[0] == v110;
  }

  else
  {
    (*(v75 + 32))(v25, v34, v57);
    v80 = v108;
    (*(v75 + 16))(v108, v25, v57);
    v90 = *(v75 + 56);
    v89 = (v75 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v90(v80, 0, 1, v57);
    v81 = v88;
    dispatch thunk of AppInfo.source.getter();
    v82 = v100;
    v83 = v87;
    (*(v100 + 104))(v87, enum case for AppInfoSource.appStore(_:), v20);
    sub_100041120(&qword_10006C5D8, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();

    v84 = *(v82 + 8);
    v84(v83, v20);
    v84(v81, v20);
    v85 = v25;
    v61 = v90;
    (*(v75 + 8))(v85, v57);
    LODWORD(v97) = 0;
    LODWORD(v100) = v112[0] == v110;
  }

  v56 = v101;
LABEL_22:
  sub_10001DD64(v108, v105, &qword_10006BE08, &qword_100056988);
  type metadata accessor for ActivityItem(0);
  v62 = swift_allocObject();
  v63 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v64 = v91;
  v61(v91, 1, 1, v57);
  sub_10001DD64(v64, v103, &qword_10006BE08, &qword_100056988);
  v65 = v92;
  Published.init(initialValue:)();
  sub_10000D5C4(v64, &qword_10006BE08, &qword_100056988);
  v66 = v96;
  (*(v96 + 32))(v62 + v63, v65, v106);
  v67 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  LOBYTE(v112[0]) = 0;
  v68 = v93;
  Published.init(initialValue:)();
  v69 = v95;
  v70 = *(v94 + 32);
  v70(v62 + v67, v68, v95);
  v71 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  LOBYTE(v112[0]) = 0;
  Published.init(initialValue:)();
  v70(v62 + v71, v68, v69);
  *(v62 + 16) = 0;
  *(v62 + 24) = v56;
  *(v62 + 32) = v109;
  swift_beginAccess();
  v110 = v98;
  v111 = v99;

  Published.init(initialValue:)();
  swift_endAccess();
  v72 = v105;
  sub_10001DD64(v105, v64, &qword_10006BE08, &qword_100056988);
  v73 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v66 + 8))(v62 + v73, v106);
  sub_10001DD64(v64, v103, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v64, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v110) = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v110) = v100;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112[0]) = v97 & 1;

  static Published.subscript.setter();
  sub_10000D5C4(v72, &qword_10006BE08, &qword_100056988);
  sub_10000D5C4(v108, &qword_10006BE08, &qword_100056988);
  return v62;
}

uint64_t sub_100041120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100041168()
{
  result = qword_10006C5E0;
  if (!qword_10006C5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C5E0);
  }

  return result;
}

Swift::Int sub_1000411C4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100041230(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100041270(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000414E4(a1, a2, v4);
}

unint64_t sub_1000412E8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100041914(a1, v4, &qword_10006BE90, CKRecordZoneID_ptr);
}

unint64_t sub_100041338(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004159C(a1, v4);
}

unint64_t sub_10004137C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100041664(a1, v2);
}

unint64_t sub_100041410(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100042DD4(&qword_10006C008, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100041768(a1, v2);
}

unint64_t sub_100041494(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100041914(a1, v4, &qword_10006BF40, NSString_ptr);
}

unint64_t sub_1000414E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004159C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001D79C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100042D80(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100041664(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100041768(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100042DD4(&qword_10006C658, &protocol conformance descriptor for URL);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100041914(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000112B4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000419E0(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C258, &qword_100057550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003720(&qword_10006C630, &qword_100057558);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001DD64(v9, v5, &qword_10006C258, &qword_100057550);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100041270(*v5, v12);
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
      v18 = type metadata accessor for CKSyncEngine.State.Serialization();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100041BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C648, &unk_100057580);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1000412E8(v6);
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

unint64_t sub_100041CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C638, &unk_100057560);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, &v13, &unk_10006BC60, &unk_100056CE0);
      v5 = v13;
      v6 = v14;
      result = sub_100041270(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DE0C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100041DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C660, qword_100057598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, &v11, &unk_10006BE18, &unk_100056A70);
      v5 = v11;
      result = sub_10004137C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001DE0C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100041F1C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BFF8, &qword_100056D38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003720(&qword_10006C650, &qword_100057590);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001DD64(v9, v5, &qword_10006BFF8, &qword_100056D38);
      result = sub_100041410(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for URL();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100042104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006BF98, &qword_100057570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, v13, &qword_10006C640, &qword_100057578);
      result = sub_100041338(v13);
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
      result = sub_10001DE0C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100042240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C628, &qword_100057548);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10000DA30(v7, v8);
      result = sub_100041270(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100042358(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_100003720(&qword_10006C608, &qword_100057538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056C30;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_10000DA30(a1, a2);
  v15 = sub_100042240(inited);
  swift_setDeallocating();
  sub_100042C40(inited + 32);
  v34 = v15;
  sub_100003720(&qword_10006C5E8, &qword_100057530);
  sub_100042CA8(&qword_10006C618, sub_100042D2C, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;

  if (v3)
  {
  }

  v31 = v18;
  sub_100007504(a3, a3[3]);
  dispatch thunk of Locatable.familyControlsKeyData.getter();
  v19 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = v32;
  v24 = *(v33 + 8);
  v33 += 8;
  v24(v11, v32);
  v34 = 0;
  v25 = [v19 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v34];

  if (v25)
  {
    v26 = v34;
    v27 = v31;
    Data.write(to:options:)();
    v24(v13, v23);
    sub_100007644(v16, v27);
  }

  v29 = v34;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100007644(v16, v31);

  return (v24)(v13, v23);
}

uint64_t sub_1000426F0(void *a1)
{
  v2 = type metadata accessor for KeyGenerator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  sub_100007504(a1, a1[3]);
  dispatch thunk of Locatable.familyControlsKeyData.getter();
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  v29 = v9;
  v11 = [v9 fileExistsAtPath:v10];

  if (!v11)
  {
    KeyGenerator.init()();
    v12 = v5;
    v17 = v28;
    v18 = KeyGenerator.generateKeyData()();
    if (!v17)
    {
      v12 = v18;
      v23 = v19;
      (*(v3 + 8))(v5, v2);
      sub_100042358(v12, v23, a1);
      (*(v30 + 8))(v8, v31);

      goto LABEL_8;
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_6;
  }

  type metadata accessor for PropertyListDecoder();
  v12 = swift_allocObject();
  v13 = PropertyListDecoder.init()();
  v14 = v28;
  v15 = Data.init(contentsOf:options:)();
  if (!v14)
  {
    v20 = v15;
    v21 = v16;
    sub_100003720(&qword_10006C5E8, &qword_100057530);
    sub_100042CA8(&qword_10006C5F0, sub_100042B98, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    v12 = v13;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v24 = v32;
    if (*(v32 + 16))
    {
      v12 = v32;
      v25 = sub_100041270(1635017060, 0xE400000000000000);
      if (v26)
      {
        v27 = *(v24 + 56) + 16 * v25;
        v12 = *v27;
        sub_10000DA30(*v27, *(v27 + 8));
        sub_100007644(v20, v21);

        (*(v30 + 8))(v8, v31);
        goto LABEL_8;
      }
    }

    sub_100042BEC();
    swift_allocError();
    swift_willThrow();
    sub_100007644(v20, v21);

LABEL_6:
    (*(v30 + 8))(v8, v31);
    goto LABEL_8;
  }

  (*(v30 + 8))(v8, v31);

LABEL_8:
  sub_1000032BC(a1);
  return v12;
}

unint64_t sub_100042B98()
{
  result = qword_10006C5F8;
  if (!qword_10006C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5F8);
  }

  return result;
}

unint64_t sub_100042BEC()
{
  result = qword_10006C600;
  if (!qword_10006C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C600);
  }

  return result;
}

uint64_t sub_100042C40(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C610, &qword_100057540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042CA8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(&qword_10006C5E8, &qword_100057530);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100042D2C()
{
  result = qword_10006C620;
  if (!qword_10006C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C620);
  }

  return result;
}

uint64_t sub_100042DD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationKeyError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AuthorizationKeyError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100042F04()
{
  result = qword_10006C668;
  if (!qword_10006C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C668);
  }

  return result;
}

id sub_100042FC4()
{
  v1 = [*v0 recordID];

  return v1;
}

void sub_100042FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    isa = 0;
    goto LABEL_5;
  }

  v9 = sub_1000431D0(a1);

  if (v9)
  {
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_5:
    [v3 setRecordsToSave:isa];
    v10 = isa;

    return;
  }

  static Logger.syncEngine.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "New value does not contain CKRecords", v13, 2u);
  }

  (*(v6 + 8))(v8, v5);
}

void *sub_1000431D0(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10001D958(i, v5);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1000432FC(uint64_t result, void *a2, char a3, void (*a4)(uint64_t, void *))
{
  v5 = result;
  if (a3)
  {
    if (!a4)
    {
      return result;
    }

    v8[0] = a2;
    v9 = 1;
    swift_errorRetain();
  }

  else
  {
    if (!a4)
    {
      return result;
    }

    v8[3] = sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    v8[4] = &off_100067398;
    v8[0] = a2;
    v9 = 0;
    v7 = a2;
  }

  a4(v5, v8);
  return sub_1000441B0(v8);
}

uint64_t sub_1000433A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100011230(a1, a2);
  CKModifyRecordsOperation.perRecordSaveBlock.setter();

  return sub_100011140(a1, a2);
}

void sub_100043470(uint64_t a1, SEL *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001D958(a1, v15);
  sub_100003720(&qword_10006BF90, &unk_100056CD0);
  sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  if (swift_dynamicCast())
  {
    v10 = v14;
    [v3 *a2];
  }

  else
  {
    static Logger.syncEngine.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Participant is not a CKShare.Participant", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void *sub_100043628()
{
  v1 = [*v0 participants];
  sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100016D98(v2);

  return v3;
}

uint64_t sub_1000436A4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_100043748(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecordZoneID:a1];

  *a2 = v4;
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    aBlock[4] = sub_10004415C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100043AA4;
    aBlock[3] = &unk_100067560;
    v11 = _Block_copy(aBlock);
    sub_100011230(a1, a2);

    [v3 setShareParticipantFetchedBlock:v11];
    sub_100011140(a1, a2);
    _Block_release(v11);
  }

  else
  {
    static Logger.syncEngine.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "New value is not of type ((CKShare.Participant) -> Void)?", v15, 2u);

      sub_100011140(0, a2);
    }

    else
    {
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100043A2C(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  v6[4] = &off_100067470;
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1000032BC(v6);
}

void sub_100043AA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100043B0C(void *a2@<X8>)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000112B4(0, &qword_10006C6C0, CKUserIdentityLookupInfo_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithUserIdentityLookupInfos:isa];

  *a2 = v5;
}

void sub_100043BBC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100012D58;
    v5[3] = &unk_100067510;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setFetchShareParticipantsCompletionBlock:v4];
  _Block_release(v4);
}

id sub_100043C78()
{
  v1 = [*v0 invitationToken];

  return v1;
}

uint64_t sub_100043CE4@<X0>(void *a1@<X8>)
{
  v3 = [*v1 userIdentity];
  result = sub_1000112B4(0, &qword_10006C6B8, CKUserIdentity_ptr);
  a1[3] = result;
  a1[4] = &off_1000674D8;
  *a1 = v3;
  return result;
}

void sub_100043D64(uint64_t a1, unint64_t *a2, void *a3, const char *a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001D958(a1, v18);
  sub_100003720(&qword_10006C6A8, &qword_1000578F8);
  sub_1000112B4(0, a2, a3);
  if (swift_dynamicCast())
  {
    v13 = v17;
    [v4 addOperation:v17];
  }

  else
  {
    static Logger.syncEngine.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a4, v16, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100043F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000DF48;
  v8[3] = &unk_1000674E8;
  v6 = _Block_copy(v8);

  [v5 saveRecordZone:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100044028(uint64_t a1)
{
  sub_1000440C8(&qword_10006B860, &unk_10005618C);
  _BridgedStoredNSError.code.getter();
  return v2;
}

uint64_t sub_100044084(uint64_t a1)
{
  result = sub_1000440C8(&qword_10006B820, &unk_10005629C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000440C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004410C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100044124()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044164()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000441B0(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BF70, &qword_100056CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044230(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_1000442DC()
{
  v1 = [v0 bundleIdentifier];
  if (!v1)
  {
    return;
  }

  v2 = [v0 bundleIdentifier];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._object = 0x8000000100058E00;
  v4._countAndFlagsBits = 0xD000000000000010;
  LOBYTE(v3) = String.hasPrefix(_:)(v4);

  if (v3)
  {
    return;
  }

  v5 = [v0 compatibilityObject];
  v6 = [v5 applicationType];

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return;
  }

  v12 = [v0 compatibilityObject];
  v13 = [v12 applicationType];

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_7:

    return;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v19 = [v0 appTags];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24[0] = 0x6E6564646968;
    v24[1] = 0xE600000000000000;
    __chkstk_darwin(v21);
    v23[2] = v24;
    LOBYTE(v19) = sub_100044230(sub_100053198, v23, v20);

    if ((v19 & 1) == 0 && ([v0 isLaunchProhibited] & 1) == 0)
    {
      v22 = [v0 applicationState];
      [v22 isRestricted];
    }
  }
}

void sub_1000445E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  if (*(v2 + 152) == 1)
  {
    v52 = v2;
    v53 = a1;
    v54 = a2;
    static Logger.syncEngine.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating installed applications", v18, 2u);
    }

    v51 = v6;

    (*(v10 + 8))(v15, v9);
    v50 = [objc_opt_self() enumeratorWithOptions:0];
    NSEnumerator.makeIterator()();
    v19 = sub_1000535B4(&qword_10006C8B0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v61)
    {
      v20 = &_swiftEmptyArrayStorage;
      v21 = &unk_10006C8B8;
      v22 = &type metadata for Any;
      v23 = LSApplicationRecord_ptr;
      v55 = v19;
      while (1)
      {
        sub_10001DE0C(&aBlock, v58);
        sub_1000036C4(v58, v57);
        sub_1000112B4(0, v21, v23);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v24 = v56;
        sub_1000442DC();
        v26 = v25;

        if (v26)
        {
          v27 = [v24 bundleIdentifier];
          if (v27)
          {
            v28 = v27;
            v29 = v8;
            v30 = v5;
            v31 = v23;
            v32 = v22;
            v33 = v21;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            sub_1000032BC(v58);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_10001C90C(0, *(v20 + 2) + 1, 1, v20);
            }

            v38 = *(v20 + 2);
            v37 = *(v20 + 3);
            if (v38 >= v37 >> 1)
            {
              v20 = sub_10001C90C((v37 > 1), v38 + 1, 1, v20);
            }

            *(v20 + 2) = v38 + 1;
            v39 = &v20[16 * v38];
            *(v39 + 4) = v34;
            *(v39 + 5) = v36;
            v21 = v33;
            v22 = v32;
            v23 = v31;
            v5 = v30;
            v8 = v29;
          }

          else
          {

            sub_1000032BC(v58);
          }
        }

        else
        {
          sub_1000032BC(v58);
        }

        dispatch thunk of IteratorProtocol.next()();
        if (!v61)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v20 = &_swiftEmptyArrayStorage;
LABEL_21:
      (*(v51 + 8))(v8, v5);
      v43 = [objc_opt_self() sharedCategories];
      isa = Array._bridgeToObjectiveC()().super.isa;
      v45 = CTOSPlatformCurrent;
      v46 = swift_allocObject();
      v46[2] = v20;
      v47 = v53;
      v46[3] = v52;
      v46[4] = v47;
      v48 = v54;
      v46[5] = v54;
      v62 = sub_10005318C;
      v63 = v46;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v60 = sub_10004E32C;
      v61 = &unk_100067808;
      v49 = _Block_copy(&aBlock);

      sub_100011230(v47, v48);

      [v43 categoriesForBundleIDs:isa platform:v45 completionHandler:v49];
      _Block_release(v49);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Skipping installed application update because we haven't started collecting activity", v42, 2u);
    }

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_100044BE4(char a1, char a2, NSObject *a3, uint64_t a4)
{
  v8 = *v4;
  v28 = a3;
  v29 = v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = [objc_opt_self() fetchAllRecordZonesOperation];
  [v16 setQualityOfService:25];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v15;
  *(v17 + 32) = v4;
  *(v17 + 40) = a2;
  v18 = v15;

  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
  v19 = swift_allocObject();
  v20 = v28;
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a4;
  v28 = v18;

  CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v16;
  *(v22 + 24) = v23;
  aBlock[4] = sub_1000532CC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000678A8;
  v24 = _Block_copy(aBlock);
  v25 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v32 + 8))(v11, v9);
  return (*(v30 + 8))(v14, v31);
}

uint64_t sub_100044FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  if (*(v3 + 152) == 1)
  {
    v50 = v5;
    v51 = v4;
    static Logger.syncEngine.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating all activity", v21, 2u);
    }

    (*(v13 + 8))(v18, v12);
    v22 = *(v3 + 176);
    v23 = String._bridgeToObjectiveC()();
    LOBYTE(v22) = [v22 BOOLForKey:v23];

    if ((v22 & 1) == 0)
    {

      CKSyncEngine.state.getter();

      sub_100003720(&qword_10006C888, &qword_1000579E8);
      v24 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100056C30;
      if (qword_10006B790 != -1)
      {
        swift_once();
      }

      v28 = qword_10006C968;
      *(v27 + v26) = qword_10006C968;
      (*(v25 + 104))(v27 + v26, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v24);
      v29 = v28;
      CKSyncEngine.State.add(pendingDatabaseChanges:)(v27);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = dispatch_group_create();
    dispatch_group_enter(v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;

    v33 = v31;
    sub_1000445E4(sub_100052E94, v32);

    dispatch_group_enter(v33);
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = v33;

    v35 = v33;
    sub_10004CBA8(sub_100052EBC, v34, v36);

    sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v37 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v38 = swift_allocObject();
    v40 = v52;
    v39 = v53;
    v38[2] = v30;
    v38[3] = v40;
    v38[4] = v39;
    aBlock[4] = sub_100052F2C;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017E50;
    aBlock[3] = &unk_100067768;
    v41 = _Block_copy(aBlock);

    sub_100011230(v40, v39);
    v42 = v54;
    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003720(&qword_10006C0E0, &unk_100056C80);
    sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
    v43 = v56;
    v44 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v41);

    (*(v50 + 8))(v43, v44);
    (*(v55 + 8))(v42, v57);
  }

  else
  {
    static Logger.syncEngine.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Skipping activity update because we haven't started collecting activity", v48, 2u);
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1000457E0(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v26[4] = a2;
  v28 = a1;
  v27 = type metadata accessor for URL();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v26[2] = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  static Logger.syncEngine.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing all activity", v15, 2u);
  }

  v16 = *(v8 + 8);
  v26[3] = v7;
  v26[1] = v16;
  v16(v12, v7);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006C888, &qword_1000579E8);
  v17 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100056C30;
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v21 = qword_10006C960;
  *(v20 + v19) = qword_10006C960;
  (*(v18 + 104))(v20 + v19, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v17);
  v22 = v21;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v20);

  v23 = *(v3 + 176);
  v24 = String._bridgeToObjectiveC()();
  [v23 removeObjectForKey:v24];

  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  UsageStore.removeAll()();

  static UsageStore.shared.getter();
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  (*(v4 + 8))(v6, v27);

  if (v28)
  {
    return v28(0, 0);
  }

  return result;
}

double sub_100045D54()
{
  result = XPC_ACTIVITY_INTERVAL_1_HOUR;
  *&qword_10006C9B8 = XPC_ACTIVITY_INTERVAL_1_HOUR;
  return result;
}

double sub_100045D70()
{
  result = XPC_ACTIVITY_INTERVAL_1_DAY;
  *&qword_10006C9C0 = XPC_ACTIVITY_INTERVAL_1_DAY;
  return result;
}

uint64_t sub_100045D8C()
{
  v0 = sub_1000112B4(0, &qword_10006C8E8, USUsageReporter_ptr);
  type metadata accessor for FamilySyncEngine(0);
  swift_allocObject();
  result = sub_100046090(v0, &off_1000663C8, v1);
  qword_10006C9C8 = result;
  return result;
}

void sub_100045DF4()
{
  v0 = objc_allocWithZone(CKContainerID);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithContainerIdentifier:v1 environment:1];

  qword_10006C9D0 = v2;
}

void sub_100045E68()
{
  v0 = [objc_allocWithZone(CKContainerOptions) init];
  [v0 setUseZoneWidePCS:1];
  if (qword_10006B7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_10006C9D0;
  v2 = objc_allocWithZone(CKContainer);
  v3 = v0;
  v4 = [v2 initWithContainerID:v1 options:v3];

  qword_10006C9D8 = v4;
}

void *sub_100045F34()
{
  v0 = dispatch thunk of FamilyCircle.guardians.getter();
  v1 = dispatch thunk of FamilyCircle.children.getter();
  v13 = v0;
  sub_10004BD00(v1);
  dispatch thunk of FamilyCircle.currentMember.getter();
  v2 = v12;
  if (v12)
  {
    sub_100007504(v11, v12);
    v3 = dispatch thunk of FamilyMemberable.altDSID.getter();
    v2 = v4;
    sub_1000032BC(v11);
  }

  else
  {
    sub_10000D5C4(v11, &qword_10006C0C8, &qword_100056F40);
    v3 = 0;
  }

  v5 = sub_100052AE0(&v13, v3, v2);

  v7 = v13;
  v8 = v13[2];
  if (v5 > v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v8, v5 - v8))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > v7[3] >> 1)
  {
    if (v8 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v8;
    }

    v7 = sub_10001CA18(isUniquelyReferenced_nonNull_native, v10, 1, v7);
    v13 = v7;
  }

  sub_10001DD2C(v5, v8, 0);

  return v7;
}

uint64_t sub_100046090(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v152 = a1;
  v153 = a2;
  v5 = type metadata accessor for Logger();
  v127 = *(v5 - 8);
  v128 = v5;
  __chkstk_darwin(v5);
  v126 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v126 - v8;
  v156 = sub_100003720(&qword_10006C8F0, &unk_100057A10);
  v10 = __chkstk_darwin(v156);
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v154 = &v126 - v14;
  __chkstk_darwin(v13);
  v157 = &v126 - v15;
  v16 = type metadata accessor for Locations();
  v150 = *(v16 - 8);
  __chkstk_darwin(v16);
  v149 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v147 = *(v18 - 1);
  v148 = v18;
  __chkstk_darwin(v18);
  v146 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v141 = *(v20 - 8);
  v142 = v20;
  __chkstk_darwin(v20);
  v140 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v138);
  v139 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v144 = *(v23 - 8);
  v145 = v23;
  __chkstk_darwin(v23);
  v143 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AuthorizationAuthenticator(0);
  v26 = [objc_allocWithZone(v25) init];
  v176 = v25;
  v177 = &off_1000661B8;
  v175[0] = v26;
  v151 = v16;
  v173 = v16;
  v174 = &protocol witness table for Locations;
  sub_10001C8A8(v172);
  Locations.init(useExplicitLocations:)();
  v27 = [objc_allocWithZone(MOLocalSettingsStore) init];
  v170 = &type metadata for AuthorizationManagedSettings;
  v171 = &off_100066F80;
  v169[0] = v27;
  *(&v167 + 1) = sub_100004080;
  v168 = 0;
  sub_10001D958(v175, &v163);
  sub_10001D958(v172, v165 + 8);
  sub_10001D958(v169, v166);
  v28 = objc_opt_self();
  v29 = [v28 standardUserDefaults];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 BOOLForKey:v30];

  if ((v31 & 1) == 0)
  {
    if (sub_100003A18(v32, v33, v34))
    {
      v35 = sub_100007504(v169, v170);
      sub_10002B9C4(0, *v35, v36);
    }

    v37 = String._bridgeToObjectiveC()();
    [v29 setBool:1 forKey:v37];

    v29 = v37;
  }

  v155 = v9;
  v158 = v12;

  sub_1000032BC(v172);
  sub_1000032BC(v175);
  v38 = v167;
  *(v4 + 112) = v166[1];
  *(v4 + 128) = v38;
  *(v4 + 144) = v168;
  v39 = v165[1];
  *(v4 + 48) = v165[0];
  *(v4 + 64) = v39;
  v40 = v166[0];
  *(v4 + 80) = v165[2];
  *(v4 + 96) = v40;
  v41 = v164;
  *(v4 + 16) = v163;
  *(v4 + 32) = v41;
  sub_1000032BC(v169);
  *(v4 + 152) = 0;
  v42 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 initWithIdentifier:v43];

  *(v4 + 160) = v44;
  *(v4 + 176) = [v28 standardUserDefaults];
  type metadata accessor for FamilyCircle();
  swift_allocObject();
  *(v4 + 184) = FamilyCircle.init()();
  v136 = v4 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  Locations.init(useExplicitLocations:)();
  v45 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing;
  v46 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v47 = String._bridgeToObjectiveC()();
  v48 = [v46 initWithIdentifier:v47];

  *(v4 + v45) = v48;
  v135 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator;
  v134 = sub_1000112B4(0, &qword_10006C8F8, CKShare_ptr);
  v137 = v4;
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v49 = qword_10006C9D8;
  v176 = sub_1000112B4(0, &qword_10006C900, CKContainer_ptr);
  v177 = &off_100067368;
  v175[0] = v49;
  v50 = [v49 privateCloudDatabase];
  v173 = sub_1000112B4(0, &qword_10006C908, CKDatabase_ptr);
  v174 = &off_1000674B0;
  v172[0] = v50;
  static FamilyControlsService.nameIDS.getter();
  v51 = objc_allocWithZone(IDSInvitationManager);
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 initWithServiceIdentifier:v52];
  v133 = v53;

  v170 = sub_1000112B4(0, &qword_10006C910, IDSInvitationManager_ptr);
  v171 = &off_1000660E0;
  v169[0] = v53;
  v132 = sub_1000112B4(0, &qword_10006C918, CKModifyRecordsOperation_ptr);
  v131 = sub_1000112B4(0, &qword_10006C920, CKFetchShareParticipantsOperation_ptr);
  v130 = sub_1000112B4(0, &qword_10006C928, IDSIDQueryController_ptr);
  v129 = _s18SharingCoordinatorCMa();
  v54 = objc_allocWithZone(v129);
  v55 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v56 = v143;
  static DispatchQoS.unspecified.getter();
  *&v163 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_10002B4A4(&qword_10006BC80, &qword_10006BC78, qword_1000568C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v141 + 104))(v140, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v142);
  *&v54[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v57 = &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing];
  *v57 = v134;
  v57[1] = &off_1000673F0;
  sub_10001D958(v175, &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container]);
  sub_10001D958(v172, &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database]);
  sub_10001D958(v169, &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager]);
  v58 = &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying];
  v59 = v131;
  *v58 = v132;
  v58[1] = &off_1000673A8;
  v60 = &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching];
  *v60 = v59;
  v60[1] = &off_100067428;
  v61 = &v54[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  *v61 = v130;
  v61[1] = &off_10006BAD8;
  v162.receiver = v54;
  v162.super_class = v129;
  v62 = objc_msgSendSuper2(&v162, "init");
  v63 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  v64 = *&v62[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue];
  v65 = v62;
  [v133 setDelegate:v65 queue:v64];
  v66 = *&v62[v63];
  sub_10001D958(v169, v161);
  v67 = swift_allocObject();
  sub_10001D888(v161, v67 + 16);
  *(v67 + 56) = v65;
  *&v165[0] = sub_10005363C;
  *(&v165[0] + 1) = v67;
  *&v163 = _NSConcreteStackBlock;
  *(&v163 + 1) = 1107296256;
  *&v164 = sub_100017E50;
  *(&v164 + 1) = &unk_100067B28;
  v68 = _Block_copy(&v163);
  v69 = v66;
  static DispatchQoS.unspecified.getter();
  v160 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v70 = v146;
  v71 = v148;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v68);

  (v147)[1](v70, v71);
  (*(v144 + 8))(v56, v145);
  sub_1000032BC(v172);
  sub_1000032BC(v175);

  sub_1000032BC(v169);
  v72 = v136;
  v73 = v137;
  *(v137 + v135) = v65;
  v74 = (v73 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
  v75 = v153;
  *v74 = v152;
  v74[1] = v75;
  v77 = v149;
  v76 = v150;
  v78 = v150[2];
  v79 = v151;
  v78(v149, v72, v151);
  v80 = _s10DataSourceCMa(0);
  v81 = objc_allocWithZone(v80);
  *&v81[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord] = 0;
  v81[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity] = 0;
  v78(&v81[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations], v77, v79);
  v159.receiver = v81;
  v159.super_class = v80;
  v82 = objc_msgSendSuper2(&v159, "init");
  (v76[1])(v77, v79);
  *(v73 + 168) = v82;
  v84 = v156;
  v83 = v157;
  v85 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  Locations.familyControlsPrivateSyncMetadata.getter();
  v153 = v85;
  Locations.familyControlsPrivateSyncSerialization.getter();
  v86 = v73;
  if (qword_10006B778 != -1)
  {
    swift_once();
  }

  v147 = *(v73 + 168);
  v148 = qword_10006C950;
  v87 = v154;
  sub_10001DD64(v83, v154, &qword_10006C8F0, &unk_100057A10);
  v152 = *(v84 + 48);
  v88 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  v89 = *(v88 + 48);
  v90 = type metadata accessor for URL();
  v91 = *(v90 - 8);
  v92 = *(v91 + 32);
  v93 = v91 + 32;
  v94 = v155;
  (v92)(v155, v87, v90);
  v95 = &v152[v87];
  v151 = v93;
  v152 = v92;
  (v92)(v94 + v89, v95, v90);
  v96 = *(v88 - 8);
  v97 = *(v96 + 56);
  v149 = (v96 + 56);
  v150 = v97;
  (v97)(v94, 0, 1, v88);
  v98 = sub_100051BC8(v148, v147, v94);
  sub_10000D5C4(v94, &qword_10006C8D0, &qword_1000579F0);
  *(v86 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v98;
  v99 = v158;
  Locations.familyControlsSharedSyncMetadata.getter();
  v100 = v86;
  Locations.familyControlsSharedSyncSerialization.getter();
  if (qword_10006B780 != -1)
  {
    swift_once();
  }

  v153 = qword_10006C958;
  v148 = *(v86 + 168);
  sub_10001DD64(v99, v87, &qword_10006C8F0, &unk_100057A10);
  v101 = *(v156 + 48);
  v102 = *(v88 + 48);
  v103 = v152;
  (v152)(v94, v87, v90);
  v103(v94 + v102, v87 + v101, v90);
  (v150)(v94, 0, 1, v88);
  v104 = sub_100051BC8(v153, v148, v94);
  sub_10000D5C4(v94, &qword_10006C8D0, &qword_1000579F0);
  *(v100 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharedEngine) = v104;
  v105 = *(v100 + 176);
  v106 = String._bridgeToObjectiveC()();
  v107 = [v105 BOOLForKey:v106];

  v108 = v100;
  if ((v107 & 1) == 0)
  {
    v109 = v126;
    static Logger.syncEngine.getter();
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "Migrating CloudKit record names to UUIDs", v112, 2u);
    }

    (*(v127 + 8))(v109, v128);
    if (qword_10006B788 != -1)
    {
      swift_once();
    }

    sub_100047460(qword_10006C960, v113, v114);
    v115 = *(v100 + 176);
    v116 = String._bridgeToObjectiveC()();
    [v115 setBool:1 forKey:v116];
  }

  [*(v100 + 160) setRepeats:1];
  v117 = qword_10006B7E8;
  v118 = *(v100 + 160);
  if (v117 != -1)
  {
    swift_once();
  }

  [v118 setInterval:*&qword_10006C9C0];

  v119 = [objc_opt_self() defaultCenter];
  v120 = qword_10006B7C0;

  v121 = v158;
  if (v120 != -1)
  {
    swift_once();
  }

  [v119 addObserver:v100 selector:"recordZoneWasSavedWithNotification:" name:qword_10006C998 object:0];

  v122 = qword_10006B7B8;

  if (v122 != -1)
  {
    swift_once();
  }

  [v119 addObserver:v108 selector:"recordZoneWasDeletedWithNotification:" name:qword_10006C990 object:0];

  v123 = qword_10006B7C8;

  if (v123 != -1)
  {
    swift_once();
  }

  [v119 addObserver:v108 selector:"privateAuthorizationKeyNeedsUpdateWithNotification:" name:qword_10006C9A0 object:0];

  v124 = qword_10006B7B0;

  if (v124 != -1)
  {
    swift_once();
  }

  [v119 addObserver:v108 selector:"retrySharingWithNotification:" name:qword_10006C988 object:0];

  sub_10000D5C4(v121, &qword_10006C8F0, &unk_100057A10);
  sub_10000D5C4(v157, &qword_10006C8F0, &unk_100057A10);
  return v108;
}

uint64_t sub_100047460(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v50[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004AE4(v8, v11, v12);
  v14 = [a1 zoneName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = v15 == 0x7974697669746341 && v17 == 0xE800000000000000;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v19 = *(v4 + 176);
    v20 = String._bridgeToObjectiveC()();
    [v19 removeObjectForKey:v20];

    sub_1000457E0(0, 0);
    if (v13)
    {
      sub_100044FEC(0, 0);
    }

    dispatch thunk of FamilyCircle.currentMember.getter();
    if (!v51)
    {
      return sub_10000D5C4(v50, &qword_10006C0C8, &qword_100056F40);
    }

    sub_100007504(v50, v51);
    v21 = dispatch thunk of FamilyMemberable.isParent.getter();
    result = sub_1000032BC(v50);
    if (v21)
    {
      return sub_100044BE4(0, 1, sub_100049B28, 0);
    }

    return result;
  }

  if (v15 == 0x7A69726F68747541 && v17 == 0xED00006E6F697461)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      static Logger.syncEngine.getter();
      v25 = a1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *&v49 = swift_slowAlloc();
        v50[0] = v49;
        *v28 = 136446210;
        v29 = v25;
        v30 = [v29 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_100002CB4(v31, v33, v50);

        *(v28 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Unknown zone was deleted %{public}s", v28, 0xCu);
        sub_1000032BC(v49);
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  v35 = *(v4 + 176);
  v36 = String._bridgeToObjectiveC()();
  [v35 removeObjectForKey:v36];

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006C888, &qword_1000579E8);
  v37 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  v49 = xmmword_100056C30;
  *(v40 + 16) = xmmword_100056C30;
  if (qword_10006B7A0 != -1)
  {
    swift_once();
  }

  v41 = qword_10006C978;
  *(v40 + v39) = qword_10006C978;
  (*(v38 + 104))(v40 + v39, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v37);
  v42 = v41;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v40);

  if (v13)
  {

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006BFD8, &qword_1000579E0);
    v43 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v49;
    if (qword_10006B7A8 != -1)
    {
      swift_once();
    }

    v47 = qword_10006C980;
    *(v46 + v45) = qword_10006C980;
    (*(v44 + 104))(v46 + v45, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v43);
    v48 = v47;
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v46);
  }

  return result;
}

void sub_100047AE4(int a1, int a2)
{
  v3 = v2;
  v70 = a1;
  v71 = a2;
  v4 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v70 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  static Logger.syncEngine.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting up the sync engine, updating all activity data, and scheduling a background web sync", v16, 2u);
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  v18 = *(sub_10000423C() + 2);

  if (v18 || !sub_1000046B0(v19, v20, v21))
  {
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();
    [v34 setBool:0 forKey:v35];

    *(v3 + 152) = 1;
    v36 = *(v3 + 168);
    v36[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity] = 1;
    if (v70)
    {
      if (qword_10006B778 != -1)
      {
        swift_once();
      }

      v37 = qword_10006C950;
      v38 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = sub_100051BC8(v37, v36, v6);
      sub_10000D5C4(v6, &qword_10006C8D0, &qword_1000579F0);
      *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v39;
    }

    sub_100044FEC(0, 0);
    sub_100048430("Scheduling a background activity to sync web usage data", sub_100053560, &unk_100067A88);
    if (v71)
    {
      v40 = sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
      v43 = sub_100003A18(v40, v41, v42);
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      if (v43)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100056900;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v45 = qword_10006C960;
        *(inited + 32) = qword_10006C960;
        v46 = v45;
        *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v47 = qword_10006C970;
        *(inited + 48) = qword_10006C970;
        v48 = v47;
        *(inited + 56) = sub_100045F34();
        v49 = sub_100041BCC(inited);
        swift_setDeallocating();
        sub_100003720(&qword_10006C880, &unk_1000579D0);
        swift_arrayDestroy();
      }

      else
      {
        v53 = swift_initStackObject();
        *(v53 + 16) = xmmword_100056C30;
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v54 = qword_10006C970;
        *(v53 + 32) = qword_10006C970;
        v55 = v54;
        *(v53 + 40) = sub_100045F34();
        v49 = sub_100041BCC(v53);
        swift_setDeallocating();
        sub_10000D5C4(v53 + 32, &qword_10006C880, &unk_1000579D0);
      }

      sub_100015DB0(v49, 0, 0);
    }

    else
    {
      v50 = *(v3 + 176);
      v51 = String._bridgeToObjectiveC()();
      v52 = [v50 objectForKey:v51];

      if (v52)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
      }

      v75[0] = v73;
      v75[1] = v74;
      if (!*(&v74 + 1))
      {
        sub_10000D5C4(v75, &qword_10006BE28, qword_100056F60);
        return;
      }

      v56 = swift_dynamicCast();
      if ((v56 & 1) == 0)
      {
        return;
      }

      v59 = v72;
      v60 = sub_100003A18(v56, v57, v58);
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      if (v60)
      {
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_100056900;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v62 = qword_10006C960;
        *(v61 + 32) = qword_10006C960;
        v63 = v62;
        *(v61 + 40) = dispatch thunk of FamilyCircle.guardians.getter();
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v64 = qword_10006C970;
        *(v61 + 48) = qword_10006C970;
        v65 = v64;
        *(v61 + 56) = sub_100045F34();
        v66 = sub_100041BCC(v61);
        swift_setDeallocating();
        sub_100003720(&qword_10006C880, &unk_1000579D0);
        swift_arrayDestroy();
      }

      else
      {
        v67 = swift_initStackObject();
        *(v67 + 16) = xmmword_100056C30;
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v68 = qword_10006C970;
        *(v67 + 32) = qword_10006C970;
        v69 = v68;
        *(v67 + 40) = sub_100045F34();
        v66 = sub_100041BCC(v67);
        swift_setDeallocating();
        sub_10000D5C4(v67 + 32, &qword_10006C880, &unk_1000579D0);
      }

      sub_10004881C(v66, v59);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Only the internal ScreenTime client is authorized, skipping sync", v24, 2u);
    }

    v17(v11, v7);
    v25 = objc_opt_self();
    v26 = [v25 standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 BOOLForKey:v27];

    if ((v28 & 1) == 0)
    {
      sub_100048C54(v29, v30, v31);
      v32 = [v25 standardUserDefaults];
      v33 = String._bridgeToObjectiveC()();
      [v32 setBool:1 forKey:v33];
    }
  }
}

uint64_t sub_100048430(const char *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = v10;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v22, v17, 2u);
    v10 = v21;
  }

  (*(v12 + 8))(v14, v11);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  aBlock[4] = v23;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v25);
}

uint64_t sub_10004881C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = v11;
    *v18 = 134349056;
    *(v18 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v16, v17, "Scheduling a background activity to retry sharing in %{public}f seconds", v18, 0xCu);
    v11 = v23;
  }

  (*(v13 + 8))(v15, v12);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a2;
  *(v20 + 32) = a1;
  aBlock[4] = sub_100052D7C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_100067600;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v8, v6);
  return (*(v24 + 8))(v11, v25);
}

uint64_t sub_100048C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopping the sync engine, removing all activity data, and invalidating the background web sync", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  *(v4 + 152) = 0;
  *(*(v4 + 168) + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) = 0;
  sub_1000457E0(0, 0);
  sub_100048430("Invalidating daily web sync activity", sub_1000534E8, &unk_100067A60);
  sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v16)
  {
    return sub_10000D5C4(v15, &qword_10006C0C8, &qword_100056F40);
  }

  sub_100007504(v15, v16);
  v12 = dispatch thunk of FamilyMemberable.isParent.getter();
  result = sub_1000032BC(v15);
  if (v12)
  {
    return sub_100044BE4(1, 1, sub_100048E98, 0);
  }

  return result;
}

id *sub_100048EA4()
{
  sub_10002B4F8((v0 + 2));

  v1 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v2 = type metadata accessor for Locations();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100048F6C()
{
  sub_100048EA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySyncEngine(uint64_t a1)
{
  result = qword_10006C728;
  if (!qword_10006C728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049018(uint64_t a1)
{
  result = type metadata accessor for Locations();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1000490F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  Notification.object.getter();
  if (!v46[3])
  {
    sub_10000D5C4(v46, &qword_10006BE28, qword_100056F60);
    goto LABEL_9;
  }

  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static Logger.syncEngine.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get zone ID from zone saved notification", v27, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return;
  }

  v12 = v45;
  v13 = [v45 zoneName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0x7974697669746341 && v16 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = *(v4 + 176);
    v18 = String._bridgeToObjectiveC()();
    [v17 setBool:1 forKey:v18];

    if (sub_100003A18(v19, v20, v21))
    {
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100056C30;
      *(inited + 32) = v12;
      v23 = v12;
      *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
      v24 = sub_100041BCC(inited);
      swift_setDeallocating();
      sub_10000D5C4(inited + 32, &qword_10006C880, &unk_1000579D0);
      sub_100015DB0(v24, 0, 0);
    }

    else
    {
    }

    return;
  }

  if (v14 == 0x7A69726F68747541 && v16 == 0xED00006E6F697461)
  {

LABEL_18:
    v29 = *(v4 + 176);
    v30 = String._bridgeToObjectiveC()();
    [v29 setBool:1 forKey:v30];

    sub_100003720(&qword_10006C878, &qword_1000579C8);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100056C30;
    *(v31 + 32) = v12;
    v32 = v12;
    *(v31 + 40) = sub_100045F34();
    v33 = sub_100041BCC(v31);
    swift_setDeallocating();
    sub_10000D5C4(v31 + 32, &qword_10006C880, &unk_1000579D0);
    sub_100015DB0(v33, 0, 0);

    return;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_18;
  }

  static Logger.syncEngine.getter();
  v34 = v12;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46[0] = v44;
    *v37 = 136315138;
    v38 = v34;
    v39 = [v38 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_100002CB4(v40, v42, v46);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unknown zone was saved %s", v37, 0xCu);
    sub_1000032BC(v44);
  }

  else
  {
  }

  (*(v6 + 8))(v11, v5);
}

void sub_1000496C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v16)
  {
    sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
    if (swift_dynamicCast())
    {
      v9 = v14;
      sub_100047460(v14, v7, v8);

      return;
    }
  }

  else
  {
    sub_10000D5C4(v15, &qword_10006BE28, qword_100056F60);
  }

  static Logger.syncEngine.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to get zone ID from zone deletion notification", v12, 2u);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_100049898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating private authorization key", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006BFD8, &qword_1000579E0);
  v10 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100056C30;
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v14 = qword_10006C980;
  *(v13 + v12) = qword_10006C980;
  (*(v11 + 104))(v13 + v12, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v10);
  v15 = v14;
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v13);
}

uint64_t sub_100049B34(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  if (v4)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = a1;
      v25 = v16;
      *v15 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v17 = String.init<A>(describing:)();
      v19 = sub_100002CB4(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to fetch all shared zones: %{public}s", v15, 0xCu);
      sub_1000032BC(v16);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    static Logger.syncEngine.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, a3, v23, 2u);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

void sub_100049DB8(uint64_t a1, void *a2, uint64_t a3, char a4, NSObject *a5, uint64_t a6, char a7)
{
  v11 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  if (v11)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = a2;
      v54 = v23;
      *v22 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v24 = String.init<A>(describing:)();
      v26 = sub_100002CB4(v24, v25, &v54);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch shared zones: %{public}s", v22, 0xCu);
      sub_1000032BC(v23);
    }

    (*(v14 + 8))(v17, v13);
    return;
  }

  v50 = v13;
  v51 = a6;
  v52 = [a2 zoneID];
  v27 = [v52 zoneName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v28 == 0x7A69726F68747541 && v30 == 0xED00006E6F697461;
  if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (a4)
    {
      dispatch_group_enter(a5);
      v32 = swift_allocObject();
      *(v32 + 16) = a5;
      v33 = a5;
      sub_10004A2B8(0, v52, sub_1000533D4, v32);
LABEL_13:
    }
  }

  else
  {
    if (v28 == 0x7974697669746341 && v30 == 0xE800000000000000)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        static Logger.syncEngine.getter();
        v37 = v52;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v54 = v41;
          *v40 = 136446210;
          v42 = [v37 zoneName];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = sub_100002CB4(v43, v45, &v54);

          *(v40 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v38, v39, "Unknown record zone: %{public}s", v40, 0xCu);
          sub_1000032BC(v41);
        }

        else
        {
        }

        (*(v14 + 8))(v19, v50);
        return;
      }
    }

    if (a7)
    {
      dispatch_group_enter(a5);
      v47 = swift_allocObject();
      *(v47 + 16) = a5;
      v48 = a5;
      sub_10004ABB4(0, v52, sub_1000533A4, v47);
      goto LABEL_13;
    }
  }

  v34 = v52;
}

uint64_t sub_10004A2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = *v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  __chkstk_darwin(v13);
  v63 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v59 = *(v16 - 8);
  v60 = v16;
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v58 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v61 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = v23;
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v23 = 136446210;
    v24 = v19;
    v25 = [v24 description];
    v54 = v20;
    v26 = a1;
    v27 = a4;
    v28 = v25;
    v29 = a3;
    v30 = v5;
    v31 = v11;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v10;
    v34 = v33;

    a4 = v27;
    a1 = v26;
    v35 = v32;
    v11 = v31;
    v5 = v30;
    a3 = v29;
    v36 = sub_100002CB4(v35, v34, aBlock);
    v10 = v57;

    v37 = v55;
    *(v55 + 1) = v36;
    v38 = v54;
    _os_log_impl(&_mh_execute_header, v54, v58, "Fetching authorization key for zone: %{public}s", v37, 0xCu);
    sub_1000032BC(v56);
  }

  else
  {
  }

  (*(v59 + 8))(v18, v60);
  if (a1)
  {
    v39 = [objc_allocWithZone(CKQueryOperation) initWithCursor:a1];
  }

  else
  {
    sub_1000112B4(0, &qword_10006C8C8, CKQuery_ptr);
    v40 = [objc_opt_self() predicateWithValue:1];
    v41._object = 0x80000001000581B0;
    v41._countAndFlagsBits = 0xD000000000000010;
    isa = CKQuery.init(recordType:predicate:)(v41, v40).super.isa;
    v39 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
  }

  v43 = v39;
  v44 = v61;
  [v43 setZoneID:v61];
  [v43 setQualityOfService:25];

  CKQueryOperation.recordMatchedBlock.setter();
  v45 = swift_allocObject();
  v45[2] = v5;
  v45[3] = v44;
  v45[4] = a3;
  v45[5] = a4;
  v46 = v44;

  CKQueryOperation.queryResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v47 = static OS_dispatch_queue.main.getter();
  v48 = swift_allocObject();
  v49 = v62;
  *(v48 + 16) = v43;
  *(v48 + 24) = v49;
  aBlock[4] = sub_100053918;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000679C0;
  v50 = _Block_copy(aBlock);

  v51 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v52 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v11 + 8))(v52, v10);
  return (*(v65 + 8))(v51, v64);
}

void sub_10004A91C(uint64_t a1, uint64_t a2, NSObject *a3, const char *a4, const char *a5)
{
  v8 = a2;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (v8)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = a3;
      v30 = a1;
      v21 = v20;
      v31 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100002CB4(v22, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, a5, v19, 0xCu);
      sub_1000032BC(v21);
      a3 = v29;
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    static Logger.syncEngine.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, a4, v27, 2u);
    }

    (*(v11 + 8))(v16, v10);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_10004ABB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a3;
  v63 = *v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  __chkstk_darwin(v12);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v61 = *(v15 - 8);
  v62 = v15;
  __chkstk_darwin(v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v59 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v68 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v56 = v22;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v22 = 136446210;
    v23 = v18;
    v24 = [v23 description];
    v55 = v19;
    v25 = a1;
    v26 = a4;
    v27 = v24;
    v28 = v5;
    v29 = v10;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v9;
    v32 = v31;

    a4 = v26;
    a1 = v25;
    v33 = v30;
    v10 = v29;
    v5 = v28;
    v18 = v68;
    v34 = sub_100002CB4(v33, v32, aBlock);
    v9 = v58;

    v36 = v55;
    v35 = v56;
    *(v56 + 1) = v34;
    _os_log_impl(&_mh_execute_header, v36, v59, "Fetching all shared activity from %{public}s", v35, 0xCu);
    sub_1000032BC(v57);
  }

  else
  {
  }

  (*(v61 + 8))(v17, v62);
  sub_100037D04(v18, v37, v38);
  if (a1)
  {
    v39 = [objc_allocWithZone(CKQueryOperation) initWithCursor:a1];
  }

  else
  {
    sub_1000112B4(0, &qword_10006C8C8, CKQuery_ptr);
    v40 = [objc_opt_self() predicateWithValue:1];
    v41._countAndFlagsBits = 0x7974697669746361;
    v41._object = 0xE800000000000000;
    isa = CKQuery.init(recordType:predicate:)(v41, v40).super.isa;
    v39 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
  }

  v43 = v39;
  v44 = v68;
  [v43 setZoneID:v68];
  [v43 setQualityOfService:25];

  CKQueryOperation.recordMatchedBlock.setter();
  v45 = swift_allocObject();
  v45[2] = v5;
  v45[3] = v44;
  v45[4] = v60;
  v45[5] = a4;
  v46 = v44;

  CKQueryOperation.queryResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v47 = static OS_dispatch_queue.main.getter();
  v48 = swift_allocObject();
  v49 = v63;
  *(v48 + 16) = v43;
  *(v48 + 24) = v49;
  aBlock[4] = sub_100053918;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_100067A38;
  v50 = _Block_copy(aBlock);

  v51 = v64;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v52 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v10 + 8))(v52, v9);
  return (*(v66 + 8))(v51, v65);
}

uint64_t sub_10004B218(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(a3);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2 & 1;
  aBlock[4] = sub_10005332C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000678F8;
  v18 = _Block_copy(aBlock);

  sub_100053360(a1, a2 & 1);
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v12, v10);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_10004B52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  Notification.object.getter();
  if (!v63[3])
  {
    sub_10000D5C4(v63, &qword_10006BE28, qword_100056F60);
    goto LABEL_10;
  }

  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
LABEL_10:
    static Logger.syncEngine.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get retry urgency from notification", v26, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }

  v15 = v64;
  LOBYTE(v16) = v65;
  v17 = sub_100003A18(v12, v13, v14);
  sub_100003720(&qword_10006C878, &qword_1000579C8);
  if (v17)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100056900;
    if (qword_10006B788 != -1)
    {
LABEL_43:
      swift_once();
    }

    v19 = qword_10006C960;
    *(inited + 32) = qword_10006C960;
    v20 = v19;
    *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
    if (qword_10006B798 != -1)
    {
      swift_once();
    }

    v21 = qword_10006C970;
    *(inited + 48) = qword_10006C970;
    v22 = v21;
    *(inited + 56) = sub_100045F34();
    v23 = sub_100041BCC(inited);
    swift_setDeallocating();
    sub_100003720(&qword_10006C880, &unk_1000579D0);
    swift_arrayDestroy();
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_100056C30;
    if (qword_10006B798 != -1)
    {
      swift_once();
    }

    v29 = qword_10006C970;
    *(v28 + 32) = qword_10006C970;
    v30 = v29;
    *(v28 + 40) = sub_100045F34();
    v23 = sub_100041BCC(v28);
    swift_setDeallocating();
    sub_10000D5C4(v28 + 32, &qword_10006C880, &unk_1000579D0);
    if ((v16 & 1) == 0)
    {
LABEL_8:
      sub_10004881C(v23, *&v15);
    }
  }

  v31 = *(v4 + 176);

  v58 = "or";
  v32 = String._bridgeToObjectiveC()();
  v59 = v31;
  v33 = [v31 stringArrayForKey:v32];

  v62 = v4;
  if (v33)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v64 = v16;
  v34 = *(v16 + 16);
  if (!v34)
  {
LABEL_36:

    sub_10004BE08(v15);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v53 = String._bridgeToObjectiveC()();
    [v59 setObject:isa forKey:v53];

    sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
    sub_100015DB0(v23, 0, 0);
    sub_100052D10(v15, 1);
  }

  v4 = 0;
  v61 = v16 + 32;
  inited = v15 + 56;
  v56 = v11;
  v60 = v23;
  v57 = v34;
  while (1)
  {
    if (v4 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*(v15 + 16))
    {
      break;
    }

LABEL_22:
    if (++v4 == v34)
    {
      goto LABEL_36;
    }
  }

  v35 = (v61 + 16 * v4);
  v37 = *v35;
  v36 = v35[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v38 = Hasher._finalize()();
  v39 = -1 << *(v15 + 32);
  v40 = v38 & ~v39;
  if (((*(inited + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
  {
LABEL_21:

    v23 = v60;
    v34 = v57;
    goto LABEL_22;
  }

  v11 = ~v39;
  while (1)
  {
    v41 = (*(v15 + 48) + 16 * v40);
    v42 = *v41 == v37 && v41[1] == v36;
    if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v40 = (v40 + 1) & v11;
    if (((*(inited + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  swift_bridgeObjectRelease_n();
  v43 = v56;
  static Logger.syncEngine.getter();
  sub_100052D04(v15, 1);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  sub_100052D10(v15, 1);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v63[0] = v47;
    *v46 = 136446210;
    v48 = Set.description.getter();
    v50 = v49;
    sub_100052D10(v15, 1);
    v51 = sub_100002CB4(v48, v50, v63);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s has already accepted their verification invitation to bootstrap their CloudKit container. Skipping high urgency attempt to retry sharing.", v46, 0xCu);
    sub_1000032BC(v47);
  }

  else
  {
    sub_100052D10(v15, 1);
  }

  (*(v6 + 8))(v43, v5);
  v54 = v60;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  sub_10004881C(v54, *&qword_10006C9B8);
  sub_100052D10(v15, 1);
}

void *sub_10004BD00(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10001CA18(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100003720(&qword_10006BF18, &unk_100056F90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10004BE08(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10001C90C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_10001D9BC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_10001C90C((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_10001D648(result);
  *v1 = v4;
  return result;
}

uint64_t sub_10004C0DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_10004C1D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 176);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  aBlock = v27;
  v24 = v28;
  if (!*(&v28 + 1))
  {
    sub_10000D5C4(&aBlock, &qword_10006BE28, qword_100056F60);
LABEL_11:
    v17 = String._bridgeToObjectiveC()();
    [v11 setDouble:v17 forKey:a4];

    v18 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing);
    [v18 setInterval:a4];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a2;
    v25 = sub_100052E04;
    v26 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v24 = sub_10004C724;
    *(&v24 + 1) = &unk_100067678;
    v21 = _Block_copy(&aBlock);

    [v18 scheduleWithBlock:v21];
    _Block_release(v21);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v22[1] >= a4)
  {
    goto LABEL_11;
  }

  static Logger.syncEngine.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Background activity to retry sharing has already been scheduled.", v16, 2u);
  }

  (*(v8 + 8))(v10, v7);
}