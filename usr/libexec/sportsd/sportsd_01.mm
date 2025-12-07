void *sub_100018F70(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

Swift::Int sub_100018FEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  sub_10001C418();
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_100019204(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;

  v17 = sub_10001BF24();
  sub_10001A000(v17, v18, v19, isUniquelyReferenced_nonNull_native);
  *v3 = v21;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_100019348(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for Sport();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_10001A168(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10001BA4C(&qword_1000DC4E8, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_100019618(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10001ACD8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_100019744()
{
  sub_10000AE68();
  v2 = v1;
  if (*(v1 + 16))
  {
    v41[0] = v0;
    v3 = *(v0 + 16);
    v39 = v0 + 32;
    v4 = v1 + 56;
    v5 = 0;

    v38 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v39 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v38;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v41[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v33 = swift_slowAlloc();
          sub_10001B220(v33, v19, (v2 + 56), v19, v2, v11, v41);
          sub_10001C1DC();

          sub_10000B008(v33);

          goto LABEL_35;
        }
      }

      v34[0] = v19;
      v34[1] = v34;
      __chkstk_darwin(v17);
      v21 = v34 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v36 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v40;
      v38 = *(v40 + 16);
      v19 = v16;
      while (1)
      {
        v35 = v23;
        v37 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v38)
          {
            sub_100018FEC(v36, v34[0], v35, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v39 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v25 = Hasher._finalize()();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v40;
              v16 = v37;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v36[v27];
          v36[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v40;
          v16 = v37;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v35 - 1;
        if (__OFSUB__(v35, 1))
        {
          break;
        }

        v16 = v19;
        if (v35 == 1)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {
  }

LABEL_35:
  sub_10000AE50();
}

char *sub_100019B28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100018FEC(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_10001B198(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_10001B8A0(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

unint64_t sub_10001A000(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001882C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10001A788(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10001A3FC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10001A168(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Sport();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100018A88(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10001A9BC(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10001BA4C(&qword_1000DC4E8, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_10001A554();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void *sub_10001A3FC()
{
  v1 = v0;
  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
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

  return result;
}

void *sub_10001A554()
{
  v1 = v0;
  v2 = type metadata accessor for Sport();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

Swift::Int sub_10001A788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
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

uint64_t sub_10001A9BC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Sport();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10001ACD8(uint64_t a1, uint64_t a2)
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
    sub_10001A3FC();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_10001B2A8(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_10001AE00(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_100018FEC(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_10001AFAC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100018FEC(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_10001B198(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10001AFAC(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_10001B220(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10001AE00(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_10001B2A8(unint64_t result)
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

uint64_t sub_10001B478(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001B4E4(uint64_t a1, void *a2, SEL *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

uint64_t sub_10001B558(void *a1)
{
  v2 = [a1 enabledTopics];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001B5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10001BDC0(0, &qword_1000DC438, PKPublicChannel_ptr);
  Array._bridgeToObjectiveC()();
  sub_10001C61C();

  sub_10001C400();
  v8 = String._bridgeToObjectiveC()();
  [a4 *a5];
}

void sub_10001B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 subscribeToChannel:a1 forTopic:v6];
}

void sub_10001B6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 unsubscribeFromChannel:a1 forTopic:v6];
}

void sub_10001B738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 getRegisteredChannelsForTopic:v6 withCompletion:a3];
}

uint64_t sub_10001B798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001B7F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10001C53C();
}

Swift::Int sub_10001B854@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100018DE4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_10001B8B4()
{
  swift_unknownObjectWeakDestroy();
  sub_10001C594();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001B8E8()
{
  v1 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10001B9AC()
{
  v0 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  sub_10001C3C4(v0);
  v1 = sub_10000AF64();

  return sub_100013840(v1, v2, v3);
}

uint64_t sub_10001BA34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001BA4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001BB44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003998(a2, a3);
  sub_10001C2AC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001BB9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BBE4()
{
  sub_10001C524();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100011504;
  sub_10001C2BC();
  sub_10001C74C();

  return sub_10001010C(v2, v3, v4, v5, v6);
}

uint64_t sub_10001BC94()
{
  sub_10001C594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001BCD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001BD10()
{
  sub_10001BF48();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011504;

  return sub_100010658(v3, v4, v5, v6);
}

uint64_t sub_10001BDC0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10001BE00(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_10001BE28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10001BFD4(unint64_t *a1)
{

  return sub_10000A6FC(a1, v2, v1, &protocol conformance descriptor for [A]);
}

uint64_t sub_10001C010()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10001C088(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10001C0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

char *sub_10001C10C(uint64_t a1)
{

  return sub_100017B68(0, a1 & ~(a1 >> 63), 0);
}

id sub_10001C144()
{
  v2 = *(v0 + 176);

  return objc_allocWithZone(v2);
}

uint64_t sub_10001C17C()
{
}

uint64_t sub_10001C198(int a1)
{
  sub_100008E2C(v1, a1 ^ 1u, 1, v2);

  return sub_10003F3A8(v1);
}

uint64_t sub_10001C1E8()
{
  *(v1 + 16) = v0;
}

void sub_10001C230()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_10001C268(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_100016F80(v2 + a2, v4, v3 + a2, a1);
}

void sub_10001C2CC(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  v5 = a1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

BOOL sub_10001C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_100019204(va, 5000257, 0xE300000000000000);
}

uint64_t sub_10001C3A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = result;
  return result;
}

void sub_10001C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  v19 = a15 + 16 * v18;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
}

char *sub_10001C430()
{
  v2 = *(v0 + 16) + 1;

  return sub_100017B68(0, v2, 1);
}

char *sub_10001C454@<X0>(unint64_t a1@<X8>)
{

  return sub_100017B68((a1 > 1), v1, 1);
}

uint64_t sub_10001C478()
{

  return swift_allocObject();
}

uint64_t sub_10001C490()
{

  return swift_slowAlloc();
}

uint64_t sub_10001C4AC()
{
}

uint64_t sub_10001C4D0()
{

  return swift_slowAlloc();
}

uint64_t sub_10001C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001C674(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = result;
  v4[4] = a2;
  return result;
}

void sub_10001C6D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_10001C6F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100016E48(v5, a2, a3, a4, v4);
}

uint64_t sub_10001C710(uint64_t a1)
{
  *(v1 + 96) = a1;
}

uint64_t sub_10001C728(uint64_t a1)
{
  *(v2 + 72) = a1;
}

void sub_10001C78C(uint64_t a1)
{
  sub_10001D884(319, &qword_1000DC708, type metadata accessor for ApiRequestMetrics);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URLRequest();
    if (v2 <= 0x3F)
    {
      sub_10001D884(319, &qword_1000DC710, sub_10001D4A0);
      if (v3 <= 0x3F)
      {
        sub_10000D988(319, &qword_1000DC720, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10001C8A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = type metadata accessor for Date();
  v3 = *(v48 - 8);
  v4 = *(v3 + 84);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  v47 = type metadata accessor for URL();
  v6 = *(v47 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v51 = v5;
  if (v5 > v8)
  {
    v8 = v5;
  }

  v49 = v8;
  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v50 = v8;
  v9 = v8 - 1;
  v10 = type metadata accessor for URLRequest();
  result = a2;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  if (v14 <= *(v16 + 84))
  {
    v17 = *(v16 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (v4)
  {
    v19 = *(v3 + 64);
  }

  else
  {
    v19 = *(v3 + 64) + 1;
  }

  v20 = *(v3 + 80);
  v21 = *(v6 + 80);
  if (v7)
  {
    v22 = *(v6 + 64);
  }

  else
  {
    v22 = *(v6 + 64) + 1;
  }

  v23 = *(v12 + 80);
  v24 = *(v16 + 80);
  v25 = *(v16 + 64);
  if (!a2)
  {
    return result;
  }

  v26 = v7;
  v27 = ((((((((((v19 + ((v19 + v20 + ((v19 + v20 + ((v22 + v20 + ((v19 + v21 + ((v20 + 24 + ((((v19 + v20 + ((v19 + v20 + ((v20 + 8 + ((((v19 + 7 + ((v19 + v20) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20) + v19) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v21)) & ~v20)) & ~v20)) & ~v20) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
  v28 = *(*(v10 - 8) + 64) + 7;
  v29 = v24 + 16;
  v30 = a1;
  if (a2 > v18)
  {
    v31 = (v29 + ((((v28 + (v27 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v32 = v31 + v25;
    v33 = 8 * (v31 + v25);
    if ((v31 + v25) > 3)
    {
      goto LABEL_28;
    }

    v35 = ((a2 - v18 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (v34)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v35 <= 0xFF)
      {
        if (v35 < 2)
        {
          goto LABEL_45;
        }

LABEL_28:
        v34 = *(a1 + v32);
        if (!*(a1 + v32))
        {
          goto LABEL_45;
        }

LABEL_35:
        v36 = (v34 - 1) << v33;
        if (v32 > 3)
        {
          v36 = 0;
        }

        if (v32)
        {
          if (v32 <= 3)
          {
            v37 = v32;
          }

          else
          {
            v37 = 4;
          }

          switch(v37)
          {
            case 2:
              v38 = *a1;
              break;
            case 3:
              v38 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v38 = *a1;
              break;
            default:
              v38 = *a1;
              break;
          }
        }

        else
        {
          v38 = 0;
        }

        return v18 + (v38 | v36) + 1;
      }

      v34 = *(a1 + v32);
      if (*(a1 + v32))
      {
        goto LABEL_35;
      }
    }
  }

LABEL_45:
  if (v9 == v18)
  {
    if (v51 == v50)
    {
      v39 = v4;
      if (v4 < 2)
      {
        return 0;
      }

      v40 = v48;
    }

    else
    {
      v42 = (((v19 + v20 + ((v19 + v20 + ((v20 + 8 + ((((v19 + 7 + ((a1 + v19 + v20) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v20) + v19) & 0xFFFFFFFFFFFFFFF8;
      if (v49 <= 0x7FFFFFFE)
      {
        v43 = *(v42 + 16);
        if (v43 >= 0xFFFFFFFF)
        {
          LODWORD(v43) = -1;
        }

        if ((v43 + 1) >= 2)
        {
LABEL_66:
          result = (v43 - 1);
          if (v43 > 1)
          {
            return result;
          }
        }

        return 0;
      }

      if (v26 < 2)
      {
        return 0;
      }

      v30 = ((v19 + v21 + ((v20 + 24 + v42) & ~v20)) & ~v21);
      v39 = v26;
      v40 = v47;
    }

    v46 = sub_100008B84(v30, v39, v40);
    if (v46 >= 2)
    {
      LODWORD(v43) = v46 - 1;
      goto LABEL_66;
    }

    return 0;
  }

  v41 = (a1 + v27) & ~v23;
  if (v13 == v18)
  {
    v15 = v10;
LABEL_69:

    return sub_100008B84(v41, v13, v15);
  }

  v44 = ((v28 + v41) & 0xFFFFFFFFFFFFFFF8);
  if (v17 > 0x7FFFFFFE)
  {
    v41 = (v29 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v13 = *(v16 + 84);
    goto LABEL_69;
  }

  v45 = *v44;
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_10001CDF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v50 = type metadata accessor for Date();
  v4 = *(v50 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v47 = type metadata accessor for URL();
  v7 = *(v47 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v6 > v9)
  {
    v9 = v6;
  }

  v49 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  v52 = v9;
  v10 = v9 - 1;
  v11 = type metadata accessor for URLRequest();
  v12 = 0;
  v51 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v48 = *(a4 + 16);
  v16 = *(v48 - 8);
  v17 = *(v16 + 84);
  if (v15 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v53 = v10;
  v20 = *(v4 + 64);
  if (!v5)
  {
    ++v20;
  }

  v21 = *(v4 + 80);
  v22 = v20 + v21;
  v23 = *(v7 + 80);
  if (v8)
  {
    v24 = *(v7 + 64);
  }

  else
  {
    v24 = *(v7 + 64) + 1;
  }

  v25 = ((v22 + ((v22 + ((v24 + v21 + ((v20 + v23 + ((v21 + 24 + ((((v20 + v21 + ((v20 + v21 + ((v21 + 8 + ((((v20 + 7 + ((v20 + v21) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v21)) & ~v21) + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v23)) & ~v21)) & ~v21)) & ~v21) + v20;
  v26 = *(v13 + 80);
  v27 = ((((((((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v26 + 16;
  v28 = *(v13 + 64) + 7;
  v29 = *(v16 + 80);
  v30 = v29 + 16;
  v31 = ((v29 + 16 + ((((v28 + (v27 & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(*(v48 - 8) + 64);
  v32 = 8 * v31;
  if (a3 > v19)
  {
    if (v31 <= 3)
    {
      v33 = ((a3 - v19 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v33))
      {
        v12 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v12 = v34;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  v35 = v12;
  v36 = a2;
  if (v19 < a2)
  {
    v37 = ~v19 + a2;
    if (v31 < 4)
    {
      v38 = (v37 >> v32) + 1;
      if (v31)
      {
        v41 = v37 & ~(-1 << v32);
        bzero(a1, v31);
        if (v31 == 3)
        {
          *a1 = v41;
          a1[2] = BYTE2(v41);
        }

        else if (v31 == 2)
        {
          *a1 = v41;
        }

        else
        {
          *a1 = v37;
        }
      }
    }

    else
    {
      bzero(a1, v31);
      *a1 = v37;
      v38 = 1;
    }

    switch(v35)
    {
      case 1:
        a1[v31] = v38;
        return;
      case 2:
        *&a1[v31] = v38;
        return;
      case 3:
        goto LABEL_78;
      case 4:
        *&a1[v31] = v38;
        return;
      default:
        return;
    }
  }

  v39 = ~v21;
  v40 = ~v29;
  switch(v35)
  {
    case 1:
      a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    case 2:
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x10001D414);
    case 4:
      *&a1[v31] = 0;
      goto LABEL_46;
    default:
LABEL_46:
      if (!a2)
      {
        return;
      }

LABEL_47:
      if (v53 != v19)
      {
        v42 = (&a1[v27] & ~v26);
        if (v14 == v19)
        {
          v43 = v51;
        }

        else
        {
          v45 = (&v42[v28] & 0xFFFFFFFFFFFFFFF8);
          if (v18 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v45 = 0;
              *v45 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v45 = a2;
            }

            return;
          }

          v42 = ((v30 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) & v40);
          v14 = v17;
          v43 = v48;
        }

        goto LABEL_71;
      }

      if (a2 < v52)
      {
        if (v6 == v52)
        {
          v36 = a2 + 2;
          v42 = a1;
          v14 = v5;
          v43 = v50;
        }

        else
        {
          v46 = (((v22 + ((v22 + ((v21 + 8 + ((((v20 + 7 + (&a1[v22] & v39)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v39)) & v39)) & v39) + v20) & 0xFFFFFFFFFFFFFFF8;
          if (v49 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFD)
            {
              *(v46 + 8) = 0;
              *(v46 + 16) = 0;
              *(v46 + 8) = a2 - 2147483646;
            }

            else
            {
              *(v46 + 16) = a2 + 1;
            }

            return;
          }

          if (v8 < 2)
          {
            return;
          }

          v42 = ((v20 + v23 + ((v21 + 24 + v46) & v39)) & ~v23);
          v36 = a2 + 2;
          v14 = v8;
          v43 = v47;
        }

LABEL_71:

        sub_100008E2C(v42, v36, v14, v43);
        return;
      }

      v44 = (((((((((v25 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8;
      if (v44 != -16)
      {
        bzero(a1, (v44 + 16));
        *a1 = a2 - v52;
      }

      return;
  }
}

uint64_t type metadata accessor for ApiRequestMetrics(uint64_t a1)
{
  result = qword_1000DC780;
  if (!qword_1000DC780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001D4A0()
{
  result = qword_1000DC718;
  if (!qword_1000DC718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC718);
  }

  return result;
}

uint64_t sub_10001D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_100008B84(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
    v8 = a1 + *(a3 + 56);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 48) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_10001D604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v9 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
    v10 = a1 + *(a4 + 56);
  }

  return sub_100008E2C(v10, a2, a2, v9);
}

uint64_t sub_10001D6EC(uint64_t a1)
{
  sub_10001D884(319, &qword_1000DC790, &type metadata accessor for Date);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10000D988(319, &qword_1000DC108, &type metadata for String);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_10001D884(319, &qword_1000DC798, &type metadata accessor for URL);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_10000D988(319, &qword_1000DC100, &type metadata for Int);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_10000D988(319, &unk_1000DC7A0, &type metadata for Bool);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10001D884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10001D8D8(uint64_t a1, void *a2)
{
  v2 = 0xD000000000000013;
  if (a2)
  {
    _StringGuts.grow(_:)(40);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    return 0xD000000000000026;
  }

  return v2;
}

uint64_t sub_10001D984(uint64_t a1, void *a2)
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v6 = 1;
  if (!a2)
  {
    v6 = 2;
  }

  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v6;
  *(inited + 72) = 24;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001000B13B0;
  *(inited + 112) = 25;
  v7 = sub_10001D8D8(a1, a2);
  v5[18] = &type metadata for String;
  v5[15] = v7;
  v5[16] = v8;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_10001DA90()
{
  result = qword_1000DD740;
  if (!qword_1000DD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD740);
  }

  return result;
}

__n128 sub_10001DAE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001DAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001DB94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10001DBAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10001DBDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v100 = a6;
  v89 = a5;
  v9 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v9 - 8);
  sub_10000ADA0();
  v96 = v11 - v10;
  sub_10001F268();
  type metadata accessor for URLError();
  sub_10000AC48();
  v97 = v13;
  v98 = v12;
  __chkstk_darwin(v12);
  sub_10000ADA0();
  v95 = v15 - v14;
  sub_10001F268();
  v16 = type metadata accessor for URLComponents();
  sub_10000AC48();
  v93 = v17;
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v92 = v20 - v19;
  v21 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v21 - 8);
  v99 = &v83 - v22;
  sub_10001F268();
  v23 = type metadata accessor for URL();
  sub_10000AC48();
  v91 = v24;
  __chkstk_darwin(v25);
  v88 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v90 = &v83 - v28;
  sub_10001F268();
  type metadata accessor for URLQueryItem();
  sub_10000AC48();
  v105 = v29;
  v106 = v30;
  __chkstk_darwin(v29);
  sub_10000ADA0();
  v33 = v32 - v31;
  v34 = sub_100003998(&qword_1000DC830, &qword_1000AB1F0);
  __chkstk_darwin(v34 - 8);
  v36 = &v83 - v35;
  URL.absoluteString.getter();
  URLComponents.init(string:)();

  if (!sub_100008B84(v36, 1, v16))
  {

    URLComponents.path.setter();
  }

  v37 = v36;
  if (!sub_100008B84(v36, 1, v16))
  {
    v87 = v16;
    if (a4)
    {
      v38 = *(a4 + 16);
      if (v38)
      {
        v84 = v36;
        v85 = v23;
        v86 = v6;
        v110 = _swiftEmptyArrayStorage;
        sub_100017B88(0, v38, 0);
        v39 = v110;
        v42 = sub_10001F0AC(a4);
        v43 = 0;
        v44 = a4 + 64;
        v103 = a4 + 64;
        v104 = v106 + 32;
        v101 = v40;
        v102 = v38;
        v94 = a4 + 72;
        while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(a4 + 32))
        {
          v45 = v42 >> 6;
          if ((*(v44 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
          {
            goto LABEL_41;
          }

          if (*(a4 + 36) != v40)
          {
            goto LABEL_42;
          }

          v108 = v43;
          v109 = v40;
          v107 = v41;

          URLQueryItem.init(name:value:)();

          v110 = v39;
          v47 = v39[2];
          v46 = v39[3];
          if (v47 >= v46 >> 1)
          {
            sub_100017B88(v46 > 1, v47 + 1, 1);
            v39 = v110;
          }

          v39[2] = v47 + 1;
          (*(v106 + 32))(v39 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v47, v33, v105);
          v48 = 1 << *(a4 + 32);
          if (v42 >= v48)
          {
            goto LABEL_43;
          }

          v44 = v103;
          v49 = *(v103 + 8 * v45);
          if ((v49 & (1 << v42)) == 0)
          {
            goto LABEL_44;
          }

          if (*(a4 + 36) != v109)
          {
            goto LABEL_45;
          }

          v50 = v49 & (-2 << (v42 & 0x3F));
          if (v50)
          {
            v48 = __clz(__rbit64(v50)) | v42 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v51 = v45 << 6;
            v52 = v45 + 1;
            v53 = (v94 + 8 * v45);
            while (v52 < (v48 + 63) >> 6)
            {
              v55 = *v53++;
              v54 = v55;
              v51 += 64;
              ++v52;
              if (v55)
              {
                sub_10001F0EC(v42, v109, v107 & 1);
                v48 = __clz(__rbit64(v54)) + v51;
                goto LABEL_23;
              }
            }

            sub_10001F0EC(v42, v109, v107 & 1);
          }

LABEL_23:
          v41 = 0;
          v43 = v108 + 1;
          v42 = v48;
          v40 = v101;
          if (v108 + 1 == v102)
          {
            v7 = v86;
            v23 = v85;
            v37 = v84;
            goto LABEL_25;
          }
        }

        goto LABEL_40;
      }
    }

LABEL_25:
    URLComponents.queryItems.setter();
    v16 = v87;
  }

  if (sub_100008B84(v37, 1, v16))
  {
    v56 = v99;
    sub_100008E2C(v99, 1, 1, v23);
LABEL_29:
    sub_10001EF70(v56, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_10001EF18();
    v61 = v95;
    v62 = v98;
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v97 + 8))(v61, v62);
    swift_willThrow();
    sub_10001EF70(v37, &qword_1000DC830, &qword_1000AB1F0);
    return;
  }

  v57 = v92;
  v58 = v93;
  (*(v93 + 16))(v92, v37, v16);
  v59 = v99;
  URLComponents.url.getter();
  v60 = v57;
  v56 = v59;
  (*(v58 + 8))(v60, v16);
  if (sub_100008B84(v59, 1, v23) == 1)
  {
    goto LABEL_29;
  }

  v64 = v90;
  v63 = v91;
  (*(v91 + 32))(v90, v56, v23);
  sub_10001EED4();
  v65 = *(v63 + 16);
  v66 = v88;
  v65(v88, v64, v23);
  v67 = sub_100005A5C(v66);
  [v67 setTimeoutInterval:10.0];
  v86 = v7;
  v85 = v23;
  v68 = String._bridgeToObjectiveC()();

  [v67 setHTTPMethod:v68];
  v109 = v67;

  v69 = v100 + 64;
  sub_10001F24C();
  v72 = v71 & v70;
  v74 = (v73 + 63) >> 6;

  v75 = 0;
  if (!v72)
  {
    goto LABEL_32;
  }

  do
  {
    v76 = v37;
    v77 = v75;
LABEL_36:
    v78 = __clz(__rbit64(v72));
    v72 &= v72 - 1;
    v79 = (*(v100 + 56) + ((v77 << 10) | (16 * v78)));
    v80 = *v79;
    v81 = v79[1];

    v82 = String._bridgeToObjectiveC()();
    sub_100008118(v80, v81, v82, v109);

    v37 = v76;
  }

  while (v72);
LABEL_32:
  while (1)
  {
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v77 >= v74)
    {

      (*(v91 + 8))(v90, v85);
      sub_10001EF70(v37, &qword_1000DC830, &qword_1000AB1F0);
      return;
    }

    v72 = *(v69 + 8 * v77);
    ++v75;
    if (v72)
    {
      v76 = v37;
      v75 = v77;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_10001E55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  sub_10000AC48();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ADA0();
  v10 = v9 - v8;
  sub_10001EED4();
  (*(v6 + 16))(v10, a1, v4);
  v11 = sub_100005A5C(v10);
  [v11 setTimeoutInterval:10.0];
  v12 = String._bridgeToObjectiveC()();
  [v11 setHTTPMethod:v12];
  v25 = v11;

  sub_10001F24C();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
    v19 = v18;
LABEL_7:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (*(a2 + 56) + ((v19 << 10) | (16 * v20)));
    v22 = *v21;
    v23 = v21[1];

    v24 = String._bridgeToObjectiveC()();
    sub_100008118(v22, v23, v24, v25);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v15 = *(a2 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_10001E778()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10001E7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_10000BC8C(a1, aBlock);
  sub_100003998(&qword_1000DC838, &qword_1000AB1F8);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v24;
    [v2 setAccount:v24];
  }

  __chkstk_darwin(v5);
  v7 = sub_10002F59C(sub_10001F0F8);
  v8 = v7;
  if (v9)
  {
    sub_10001F118(v7, 1);
    type metadata accessor for ApiAgentError(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = [objc_allocWithZone(AMSMutablePromise) init];
    v11 = sub_10001EFD0(v8);
    if (v12 >> 60 == 15)
    {
      v13 = [v2 requestByEncodingRequest:v8 parameters:0];
      [v10 finishWithPromise:v13];
    }

    else
    {
      v14 = v11;
      v15 = v12;
      type metadata accessor for MescalSignature();
      v16 = sub_1000836F0(v14, v15);
      v17 = swift_allocObject();
      v17[2] = v8;
      v17[3] = v10;
      v17[4] = v3;
      aBlock[4] = sub_10001F16C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001EE24;
      aBlock[3] = &unk_1000D0690;
      v18 = _Block_copy(aBlock);
      sub_10001F190(v8, 0);
      v19 = v10;
      v20 = v3;

      [v16 addFinishBlock:v18];
      _Block_release(v18);

      sub_10001F19C(v14, v15);
    }

    v21 = *(sub_100003998(&qword_1000DD780, &qword_1000AB208) + 48);
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001F118(v8, 0);
    *(a2 + v21) = v10;
  }

  sub_100003998(&qword_1000DC840, &qword_1000AB200);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001EAA0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_100008614(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = v8();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v11 = v9;

    *a3 = v11;
  }

  return result;
}

void sub_10001EB48(void *a1, uint64_t a2, id a3, void *a4, void *a5)
{
  v10 = [a3 mutableCopy];
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      v12 = a1;
      v13 = [v12 base64EncodedStringWithOptions:0];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = String._bridgeToObjectiveC()();
      sub_10001F034(v14, v16, v17, v11);

      v28 = [a5 requestByEncodingRequest:v11 parameters:0];
      [a4 finishWithPromise:v28];

      return;
    }
  }

  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100007DE8(v18, qword_1000E6D48);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_1000170D4(v23, v25, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to sign request, error = %s", v21, 0xCu);
    sub_100008A94(v22);
  }

  v27 = [a5 requestByEncodingRequest:a3 parameters:0];
  [a4 finishWithPromise:v27];
}

void sub_10001EE24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_10001EED4()
{
  result = qword_1000DC828;
  if (!qword_1000DC828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC828);
  }

  return result;
}

unint64_t sub_10001EF18()
{
  result = qword_1000DBCE8;
  if (!qword_1000DBCE8)
  {
    type metadata accessor for URLError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCE8);
  }

  return result;
}

uint64_t sub_10001EF70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001EFD0(void *a1)
{
  v1 = [a1 HTTPBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001F034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setValue:v6 forHTTPHeaderField:a3];
}

uint64_t sub_10001F0EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_10001F118(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001F124()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001F190(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10001F19C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008BAC(result, a2);
  }

  return result;
}

__n128 sub_10001F1B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001F1BC(uint64_t *a1, int a2)
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

uint64_t sub_10001F1FC(uint64_t result, int a2, int a3)
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

uint64_t sub_10001F27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_10001F2BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_10001F338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  sub_10000BD44();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000ADA0();
  v18 = v17 - v16;
  a5[3] = &type metadata for SubscriptionUnregisterOperation;
  a5[4] = &off_1000D12D0;
  v19 = swift_allocObject();
  *a5 = v19;
  sub_10000BC8C(v6, (v19 + 2));
  v20 = *(v6 + 40);
  sub_10000BC8C(v6 + 96, (v19 + 8));
  sub_10000BC8C(v6 + 136, (v19 + 13));
  v19[7] = v20;
  v19[18] = a1;
  v19[19] = a2;
  v19[20] = a3;
  v19[21] = a4;

  v21 = Date.init()();
  sub_10008C99C(v21);
  v23 = v22;
  (*(v14 + 8))(v18, v12);
  v19[22] = v23;
  v24 = type metadata accessor for ActivityAuthorization();
  v25 = [objc_allocWithZone(v24) init];
  sub_1000499E0();
  v31[3] = v24;
  v31[4] = &off_1000D1900;
  v31[0] = v25;
  type metadata accessor for ActivityCapUtility();
  v26 = swift_allocObject();
  sub_10000B90C(v31, v24);
  sub_10000BD44();
  __chkstk_darwin(v27);
  sub_10000ADA0();
  v29 = sub_10001FB6C(v28);
  v30(v29);
  sub_10001FB84();
  v19[23] = v26;
}

uint64_t sub_10001F57C()
{
  sub_100008A94(v0 + 2);

  sub_100008A94(v0 + 8);
  sub_100008A94(v0 + 13);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10001F5E4(char a1)
{
  if (a1)
  {
    if (sub_100066914())
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void sub_10001F65C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000BD44();
  v26 = v7;
  v27 = v6;
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  sub_10000ADA0();
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  sub_10000ADA0();
  v13 = *(v3 + 40);
  v14 = qword_1000DBA00;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1000E6D10;
  a3[3] = &type metadata for SubscriptionRefreshStaleActivitiesOperation;
  a3[4] = &off_1000D3DF0;
  v16 = swift_allocObject();
  *a3 = v16;
  v16[8] = type metadata accessor for LiveActivityManager();
  v16[9] = &off_1000D1920;
  v16[10] = &off_1000D1910;
  v16[5] = v15;
  v17 = *(v3 + 48);
  sub_10000BC8C(v3 + 96, (v16 + 12));
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v13;
  v16[11] = v17;
  sub_10001FA6C();

  static DispatchQoS.unspecified.getter();
  v28[0] = _swiftEmptyArrayStorage;
  sub_10001FAB0();
  sub_100003998(&qword_1000DC850, &qword_1000AB300);
  sub_10001FB08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v16[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16[18] = 0x4072C00000000000;
  v18 = type metadata accessor for ActivityAuthorization();
  v19 = [objc_allocWithZone(v18) init];
  sub_1000499E0();
  v28[3] = v18;
  v28[4] = &off_1000D1900;
  v28[0] = v19;
  type metadata accessor for ActivityCapUtility();
  v20 = swift_allocObject();
  sub_10000B90C(v28, v18);
  sub_10000BD44();
  __chkstk_darwin(v21);
  sub_10000ADA0();
  v23 = sub_10001FB6C(v22);
  v24(v23);
  sub_10001FB84();
  v16[19] = v20;
}

uint64_t sub_10001FA04()
{

  sub_100008A94((v0 + 40));

  sub_100008A94((v0 + 96));

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10001FA6C()
{
  result = qword_1000DC5D8;
  if (!qword_1000DC5D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC5D8);
  }

  return result;
}

unint64_t sub_10001FAB0()
{
  result = qword_1000DC848;
  if (!qword_1000DC848)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC848);
  }

  return result;
}

unint64_t sub_10001FB08()
{
  result = qword_1000DC858;
  if (!qword_1000DC858)
  {
    sub_1000089A8(&qword_1000DC850, &qword_1000AB300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC858);
  }

  return result;
}

void sub_10001FB84()
{
  v8 = *v5;
  v4[5] = v0;
  v4[6] = v6;
  v4[2] = v8;
  v4[7] = v2;
  v4[8] = v3;
  sub_100008A94((v7 - 120));
}

uint64_t sub_10001FBBC()
{
  result = sub_10001FBE0();
  static Secrets.tempoAPIKey = result;
  qword_1000E6C10 = v1;
  return result;
}

uint64_t sub_10001FBE0()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 64;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  v8 = v1;
  sub_10001FFEC(0xD000000000000016, 0x80000001000B1490, 0xD000000000000016, 0x80000001000B1490, &v8);
  sub_10002011C(&off_1000CEFD8, v8);
  v3 = v2;

  v8 = v3;
  static String.Encoding.utf8.getter();
  sub_100003998(&qword_1000DC860, &qword_1000AB318);
  sub_1000203D0();
  v4 = String.init<A>(bytes:encoding:)();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t static Secrets.read(key:salt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v5 = sub_100020454(v4);
  sub_10002047C(v5, v6);

  sub_10002011C(a1, v10);
  v8 = v7;

  return v8;
}

uint64_t *Secrets.tempoAPIKey.unsafeMutableAddressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434(&qword_1000DB968, a2, a3);
  }

  return &static Secrets.tempoAPIKey;
}

uint64_t static Secrets.tempoAPIKey.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434(&qword_1000DB968, a2, a3);
  }

  swift_beginAccess();
  v3 = static Secrets.tempoAPIKey;

  return v3;
}

uint64_t static Secrets.tempoAPIKey.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434(&qword_1000DB968, a2, a3);
  }

  swift_beginAccess();
  static Secrets.tempoAPIKey = a1;
  qword_1000E6C10 = a2;
}

uint64_t (*static Secrets.tempoAPIKey.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (qword_1000DB968 != -1)
  {
    sub_100020434(&qword_1000DB968, a2, a3);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unsigned __int8 *sub_10001FF54@<X0>(const void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 **a5@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    v10 = String.UTF8View._foreignCount()();
    if (v10 < 0)
    {
      __break(1u);
    }

    v8 = v10;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v8 = HIBYTE(a3) & 0xF;
      goto LABEL_7;
    }

    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (HIDWORD(v8))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  sub_100020244(0);
  result = CC_SHA512(a1, v8, (*a4 + 32));
  *a5 = result;
  return result;
}

unsigned __int8 *sub_10001FFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {

    return 0;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v12 = String.UTF8View._foreignCount()();
      if (v12 < 0)
      {
        __break(1u);
      }

      v10 = v12;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        goto LABEL_12;
      }

      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!HIDWORD(v10))
    {
LABEL_13:
      sub_100020244(0);
      a5 = CC_SHA512(v13, v10, (*a5 + 32));
LABEL_15:

      return a5;
    }

    __break(1u);
LABEL_12:
    v10 = HIBYTE(a4) & 0xF;
    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter();
  }

  sub_10001FF54(v9, a3, a4, a5, &v14);
  if (!v5)
  {
    a5 = v14;
    goto LABEL_15;
  }

  return a5;
}

void sub_10002011C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v2;
    bzero((v5 + 32), v2);
    if (v2 > *(a2 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = 32;
      do
      {
        *(v5 + v6) = *(a2 + v6) ^ *(a1 + v6);
        ++v6;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t static Secrets.generate(key:salt:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000202A8(a1, a2);

  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v6 = sub_100020454(v5);
  sub_10002047C(v6, v7);

  sub_10002011C(v4, v11);
  v9 = v8;

  return v9;
}

void sub_100020244(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_1000165F4();
    v3 = v4;
  }

  *v1 = v3;
}

void *sub_1000202A8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000173C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1000203D0()
{
  result = qword_1000DC868;
  if (!qword_1000DC868)
  {
    sub_1000089A8(&qword_1000DC860, &qword_1000AB318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC868);
  }

  return result;
}

uint64_t sub_100020434(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_100020454(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
}

unsigned __int8 *sub_10002047C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10001FFEC(v3, v2, v3, v2, va);
}

uint64_t sub_1000204A4()
{
  type metadata accessor for CharacterSet();
  sub_10002677C();
  __chkstk_darwin(v0);
  type metadata accessor for ContainerConstants();
  static ContainerConstants.defaultSuiteName.getter();
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_100026868();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 stringForKey:v4];

  if (!v5)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000E304();
  v6 = StringProtocol.trimmingCharacters(in:)();
  v8 = v7;

  v9 = sub_10000AF64();
  v10(v9);

  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v6;
}

uint64_t sub_10002065C()
{
  type metadata accessor for ContainerConstants();
  static ContainerConstants.tempoUrlUserDefaultKey.getter();
  v0 = String._bridgeToObjectiveC()();

  qword_1000E6C18 = v0;
  unk_1000E6C20 = 0xD00000000000001FLL;
  qword_1000E6C28 = 0x80000001000B16A0;
  return result;
}

NSString sub_1000206C4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C30 = result;
  unk_1000E6C38 = 0xD000000000000020;
  qword_1000E6C40 = 0x80000001000B1640;
  return result;
}

uint64_t sub_100020714()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100003998(&qword_1000DCA30, &qword_1000AB418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000AA5B0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x427363697274656DLL;
  *(v1 + 40) = 0xEB00000000657361;
  v2 = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 88) = sub_100003998(&qword_1000DC480, &unk_1000AB420);
  *(v1 + 64) = v2;
  sub_10001BDC0(0, &qword_1000DCA18, NSDictionary_ptr);
  result = NSDictionary.init(dictionaryLiteral:)();
  qword_1000E6C48 = v0;
  qword_1000E6C50 = result;
  return result;
}

NSString sub_10002081C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C58 = result;
  unk_1000E6C60 = 0x53552D6E65;
  qword_1000E6C68 = 0xE500000000000000;
  return result;
}

uint64_t sub_100020870()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100003998(&qword_1000DC9E0, &qword_1000AB3E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000AA5B0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x53552D6E65;
  *(v1 + 40) = 0xE500000000000000;
  sub_10001BDC0(0, &qword_1000DC9C0, NSArray_ptr);
  result = NSArray.init(arrayLiteral:)();
  qword_1000E6C70 = v0;
  *algn_1000E6C78 = result;
  return result;
}

NSString sub_100020930()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C80 = result;
  *algn_1000E6C88 = 5;
  return result;
}

NSString sub_100020970()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6C90 = result;
  *algn_1000E6C98 = 10;
  return result;
}

NSString sub_1000209B0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6CA0 = result;
  *algn_1000E6CA8 = 172800;
  return result;
}

NSString sub_1000209F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E6CB0 = result;
  byte_1000E6CB8 = 1;
  return result;
}

void *sub_100020A38(uint64_t a1)
{
  type metadata accessor for BagProvider();
  swift_allocObject();
  result = sub_100020B04();
  qword_1000E6CC0 = result;
  return result;
}

id sub_100020A74()
{
  v0 = String._bridgeToObjectiveC()();

  sub_10000AF64();
  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void *sub_100020B04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v84 - v4;
  v5 = sub_100003998(&qword_1000DC950, &qword_1000AB3A8);
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v85 = &v84 - v6;
  v7 = type metadata accessor for URL();
  __chkstk_darwin(v7);
  v84 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_1000DC958, &qword_1000AB3B0);
  v95 = *(v9 - 8);
  v96 = v9;
  __chkstk_darwin(v9);
  v94 = &v84 - v10;
  v11 = sub_100003998(&qword_1000DC960, &qword_1000AB3B8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  sub_10001BDC0(0, &qword_1000DC968, AMSBag_ptr);
  v15 = sub_100020A74();
  v0[2] = v15;
  if (qword_1000DB970 != -1)
  {
    swift_once();
    v15 = v0[2];
  }

  v16 = qword_1000E6C18;
  v17 = unk_1000E6C20;
  v18 = qword_1000E6C28;
  v19 = v15;
  v20 = sub_1000217AC(v16, v17, v18, v19);

  v101[0] = v20;
  v21 = sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  v93 = v2;
  v22 = v21;
  v98 = sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DC980, &qword_1000DC960, &qword_1000AB3B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v23 = Publisher.eraseToAnyPublisher()();
  v91 = v7;
  v24 = *(v12 + 8);
  v92 = v12 + 8;
  v24(v14, v11);
  v1[3] = v23;
  v25 = v11;
  if (qword_1000DB978 != -1)
  {
    swift_once();
  }

  v26 = qword_1000E6C30;
  v27 = unk_1000E6C38;
  v28 = qword_1000E6C40;
  v29 = v1;
  v30 = v1[2];
  v31 = sub_1000217AC(v26, v27, v28, v30);

  v101[0] = v31;
  v97 = v22;
  Publisher.map<A>(_:)();

  v32 = Publisher.eraseToAnyPublisher()();
  v24(v14, v25);
  v29[4] = v32;
  if (qword_1000DB980 != -1)
  {
    swift_once();
  }

  v33 = qword_1000E6C48;
  v34 = qword_1000E6C50;
  v35 = v29[2];
  v36 = sub_100021E70(v33, v34, v35);

  v101[0] = v36;
  sub_100003998(&qword_1000DC988, &qword_1000AB3C8);
  sub_10000A6FC(&qword_1000DC990, &qword_1000DC988, &qword_1000AB3C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v37 = v94;
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DC998, &qword_1000DC958, &qword_1000AB3B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v38 = v96;
  v39 = Publisher.eraseToAnyPublisher()();
  (*(v95 + 8))(v37, v38);
  v29[5] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v41 = objc_allocWithZone(LSApplicationRecord);
  v42 = sub_100058D5C(0xD000000000000010, 0x80000001000B03C0, 0);
  if (v42)
  {
    sub_10001BDC0(0, &qword_1000DC9B0, NSBundle_ptr);
    v43 = [v42 URL];
    v44 = v84;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = sub_100022430(v44);
    if (v45)
    {
      v46 = v45;
      v47 = [v45 preferredLocalizations];

      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v48 = 0;
    }

    if (qword_1000DB990 != -1)
    {
      swift_once();
    }

    v49 = qword_1000E6C70;
    v50 = *algn_1000E6C78;
    v51 = v29[2];
    v52 = sub_1000224CC(v49, v50, v51);
    v96 = v52;

    v101[0] = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = v40;
    *(v53 + 24) = v48;

    sub_100003998(&qword_1000DC9B8, &qword_1000AB3D8);
    sub_10001BDC0(0, &qword_1000DC9C0, NSArray_ptr);
    sub_10000A6FC(&qword_1000DC9C8, &qword_1000DC9B8, &qword_1000AB3D8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v54 = v85;
    Publisher.map<A>(_:)();

    (*(v86 + 8))(v54, v87);
  }

  swift_beginAccess();
  v55 = *(v40 + 24);
  if (v55)
  {
    v99 = *(v40 + 16);
    v100 = v55;

    v56 = v88;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0, &protocol conformance descriptor for Just<A>);
    v57 = v90;
    v58 = Publisher.eraseToAnyPublisher()();
    (*(v89 + 8))(v56, v57);
  }

  else
  {
    if (qword_1000DB988 != -1)
    {
      swift_once();
    }

    v59 = qword_1000E6C58;
    v60 = unk_1000E6C60;
    v61 = qword_1000E6C68;
    v62 = v29[2];
    v63 = sub_1000217AC(v59, v60, v61, v62);

    v99 = v63;
    v58 = Publisher.eraseToAnyPublisher()();
  }

  v29[6] = v58;
  if (qword_1000DB998 != -1)
  {
    swift_once();
  }

  v64 = qword_1000E6C80;
  v65 = *algn_1000E6C88;
  v66 = v29[2];
  v67 = sub_100022830(v64, v65, v66);

  v99 = v67;
  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_10000A6FC(&qword_1000DC9A8, &qword_1000DC9A0, &qword_1000AB3D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v68 = Publisher.eraseToAnyPublisher()();

  v29[7] = v68;
  if (qword_1000DB9A0 != -1)
  {
    swift_once();
  }

  v69 = qword_1000E6C90;
  v70 = *algn_1000E6C98;
  v71 = v29[2];
  v72 = sub_100022830(v69, v70, v71);

  v99 = v72;
  v73 = Publisher.eraseToAnyPublisher()();

  v29[8] = v73;
  if (qword_1000DB9A8 != -1)
  {
    swift_once();
  }

  v74 = qword_1000E6CA0;
  v75 = *algn_1000E6CA8;
  v76 = v29[2];
  v77 = sub_100022830(v74, v75, v76);

  v99 = v77;
  v78 = Publisher.eraseToAnyPublisher()();

  v29[9] = v78;
  if (qword_1000DB9B0 != -1)
  {
    swift_once();
  }

  v79 = qword_1000E6CB0;
  v80 = byte_1000E6CB8;
  v81 = v29[2];
  v82 = sub_100022CA4(v79, v80, v81);

  v29[10] = v82;

  return v29;
}

uint64_t sub_1000217AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a2;
  v37 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v38 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = &v35 - v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = sub_1000204A4();
  v16 = v15;

  if (v16)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100007DE8(v17, qword_1000E6D48);
    v18 = a1;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = sub_1000170D4(v22, v23, v41);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = v39;
      *(v21 + 14) = sub_1000170D4(v39, v16, v41);
      _os_log_impl(&_mh_execute_header, v19, v20, "BagProvider: Successfully resolved preferred AMSBag(%s) value: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v25 = v39;
    }

    v41[0] = v25;
    v41[1] = v16;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0, &protocol conformance descriptor for Just<A>);
    v33 = v38;
    v32 = Publisher.eraseToAnyPublisher()();
    (*(v40 + 8))(v14, v33);
  }

  else
  {
    Date.init()();
    (*(v7 + 16))(v9, v12, v6);
    v26 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v27 = swift_allocObject();
    v28 = v36;
    v29 = v37;
    *(v27 + 2) = v37;
    *(v27 + 3) = a1;
    *(v27 + 4) = v28;
    *(v27 + 5) = a3;
    (*(v7 + 32))(&v27[v26], v9, v6);
    sub_100003998(&qword_1000DCA38, &qword_1000AB430);
    swift_allocObject();
    v30 = a1;
    v31 = v29;

    v41[0] = Future.init(_:)();
    sub_10000A6FC(&qword_1000DCA40, &qword_1000DCA38, &qword_1000AB430, &protocol conformance descriptor for Future<A, B>);
    v32 = Publisher.eraseToAnyPublisher()();

    (*(v7 + 8))(v12, v6);
  }

  return v32;
}

uint64_t sub_100021CC4@<X0>(void *a2@<X1>, uint64_t a6@<X8>)
{
  v8 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v9 = sub_10001C3C4(v8);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  URL.init(string:)();
  v15 = type metadata accessor for URL();
  sub_1000268A0(v14);
  if (!v16)
  {
    return (*(*(v15 - 8) + 32))(a6, v14, v15);
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  URL.init(string:)();
  result = sub_1000268A0(v11);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    (*(*(v15 - 8) + 32))(a6, v11, v15);
    result = sub_1000268A0(v14);
    if (!v16)
    {
      return sub_1000261E8(v14, &unk_1000DD7B0, &qword_1000AC150);
    }
  }

  return result;
}

uint64_t sub_100021E70(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  Date.init()();
  (*(v7 + 16))(v9, v12, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], v9, v6);
  sub_100003998(&qword_1000DCA20, &qword_1000AB410);
  swift_allocObject();
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v20[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DCA28, &qword_1000DCA20, &qword_1000AB410, &protocol conformance descriptor for Future<A, B>);
  v18 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v18;
}

void sub_100022090(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  if (qword_1000DB980 != -1)
  {
    swift_once();
  }

  v5 = qword_1000E6C50;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_16;
  }

  sub_10001BDC0(0, &qword_1000DCA18, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_18;
  }

  v8 = v18;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v18 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {

LABEL_16:
    sub_1000261E8(&v22, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v11 = *(&v18 + 1);
  v12 = v18;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v4 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {

    sub_1000261E8(&v20, &qword_1000DBD08, &qword_1000AA690);
LABEL_27:
    v22 = 0u;
    v23 = 0u;
LABEL_28:
    sub_1000261E8(&v22, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v17 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v12 = v20;

    v11 = *(&v20 + 1);
  }

LABEL_18:
  *a3 = v12;
  a3[1] = v11;
}

id sub_100022430(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1000224CC(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  Date.init()();
  (*(v7 + 16))(v9, v12, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], v9, v6);
  sub_100003998(&qword_1000DC9D0, &qword_1000AB3E0);
  swift_allocObject();
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v20[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DC9D8, &qword_1000DC9D0, &qword_1000AB3E0, &protocol conformance descriptor for Future<A, B>);
  v18 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v18;
}

id sub_1000226EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = v4;

  return v4;
}

uint64_t sub_100022830(void *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_100003998(&qword_1000DC9F8, &qword_1000AB3F8);
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = sub_100023470();
  v16 = v15;

  if (v16)
  {
    Date.init()();
    (*(v6 + 16))(v8, v11, v5);
    v17 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a3;
    *(v18 + 3) = a1;
    *(v18 + 4) = v35;
    (*(v6 + 32))(&v18[v17], v8, v5);
    sub_100003998(&qword_1000DCA00, &unk_1000AB400);
    swift_allocObject();
    v19 = a1;
    v20 = a3;
    v39 = Future.init(_:)();
    sub_10000A6FC(&qword_1000DCA08, &qword_1000DCA00, &unk_1000AB400, &protocol conformance descriptor for Future<A, B>);
    v21 = Publisher.eraseToAnyPublisher()();

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100007DE8(v22, qword_1000E6D48);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315394;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = sub_1000170D4(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      v31 = v36;
      *(v26 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "BagProvider: Successfully resolved preferred AMSBag(%s) value: %ld", v26, 0x16u);
      sub_100008A94(v27);
    }

    else
    {

      v31 = v36;
    }

    v39 = v31;
    Just.init(_:)();
    sub_10000A6FC(&qword_1000DCA10, &qword_1000DC9F8, &qword_1000AB3F8, &protocol conformance descriptor for Just<A>);
    v32 = v38;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v37 + 8))(v14, v32);
  }

  return v21;
}

uint64_t sub_100022CA4(void *a1, char a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v19 - v11;
  Date.init()();
  (*(v7 + 16))(v9, v12, v6);
  v13 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  (*(v7 + 32))(v14 + v13, v9, v6);
  sub_100003998(&qword_1000DC9E8, &qword_1000AB3F0);
  swift_allocObject();
  v15 = a3;
  v16 = a1;
  v19[1] = Future.init(_:)();
  sub_10000A6FC(&qword_1000DC9F0, &qword_1000DC9E8, &qword_1000AB3F0, &protocol conformance descriptor for Future<A, B>);
  v17 = Publisher.eraseToAnyPublisher()();

  (*(v7 + 8))(v12, v6);
  return v17;
}

uint64_t sub_100022EC0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_100022F08);
}

uint64_t sub_100022F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB9B0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E6CB0;
  v5 = byte_1000E6CB8;
  v6 = *(*(v3 + 16) + 16);
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_100022FF0;

  return sub_1000230EC(v4, v5, v6);
}

uint64_t sub_100022FF0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000230EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 73) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = type metadata accessor for Date();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000231B0);
}

uint64_t sub_1000231B0(uint64_t a1)
{
  v2 = v1[3].i64[0];
  v3 = v1[4].i8[9];
  v7 = v1[1];
  Date.init()();
  v4 = swift_task_alloc();
  v1[3].i64[1] = v4;
  v4[1] = vextq_s8(v7, v7, 8uLL);
  v4[2].i8[0] = v3;
  v4[2].i64[1] = v2;
  v5 = swift_task_alloc();
  v1[4].i64[0] = v5;
  *v5 = v1;
  v5[1] = sub_1000232D4;

  return withCheckedContinuation<A>(isolation:function:_:)(&v1[4].u64[1], 0, 0, 0xD00000000000001FLL, 0x80000001000B16C0, sub_1000264E0, v4, &type metadata for Bool);
}

uint64_t sub_1000232D4()
{

  return _swift_task_switch(sub_1000233EC);
}

uint64_t sub_1000233EC()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100023470()
{
  sub_10002680C();
  type metadata accessor for ContainerConstants();
  static ContainerConstants.defaultSuiteName.getter();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100026868();
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1000261E8(&v8, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }

  v2 = v1;
  sub_10000AF64();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_1000235A0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v17 = [a3 stringForKey:a4];
  (*(v13 + 16))(v15, a7, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v18, v15, v12);
  v21 = (v20 + v19);
  v22 = v27;
  v23 = v28;
  *v21 = a4;
  v21[1] = v22;
  v21[2] = v23;
  v24 = (v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_100026368;
  v24[1] = v16;
  aBlock[4] = sub_100026448;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0BE0;
  v25 = _Block_copy(aBlock);
  v26 = a4;

  [v17 valueWithCompletion:v25];
  _Block_release(v25);
}

uint64_t sub_1000237F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v43 = a8;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v14 + 8))(v16, v13);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100007DE8(v20, qword_1000E6D48);
    v21 = v17;
    v22 = a5;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v25 = 136315650;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = sub_1000170D4(v26, v27, &v44);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v19;
      *(v25 + 22) = 2080;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = sub_1000170D4(v29, v30, &v44);

      *(v25 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43(v32);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007DE8(v34, qword_1000E6D48);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v39 = Error.localizedDescription.getter();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = sub_1000170D4(v39, v41, &v44);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v37, 0xCu);
      sub_100008A94(v38);
    }

    return (v43)(a6, a7, 0);
  }
}

void sub_100023C1C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 integerForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v26;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100025E24;
  v22[1] = v15;
  aBlock[4] = sub_100025EA8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0AA0;
  v23 = _Block_copy(aBlock);
  v24 = a4;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_100023E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(id, void))
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100007DE8(v19, qword_1000E6D48);
    v20 = v16;
    v21 = a5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315650;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = sub_1000170D4(v26, v27, &v40);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v18;
      *(v24 + 22) = 2048;
      v29 = [v20 integerValue];

      *(v24 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %ld", v24, 0x20u);
      sub_100008A94(v25);
    }

    else
    {
    }

    a7([v20 integerValue], 0);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100007DE8(v30, qword_1000E6D48);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0xE000000000000000;
      }

      v38 = sub_1000170D4(v35, v37, &v40);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v33, 0xCu);
      sub_100008A94(v34);
    }

    a7(a6, 0);
  }
}

void sub_100024260(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v27 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 dictionaryForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100026778;
  v22[1] = v15;
  aBlock[4] = sub_100026748;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0B40;
  v23 = _Block_copy(aBlock);
  v24 = a4;
  v25 = v21;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_1000244A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v27 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = [a3 arrayForKey:a4];
  (*(v12 + 16))(v14, a6, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = a4;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_100026778;
  v22[1] = v15;
  aBlock[4] = sub_100025AA4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0960;
  v23 = _Block_copy(aBlock);
  v24 = a4;
  v25 = v21;

  [v16 valueWithCompletion:v23];
  _Block_release(v23);
}

void sub_1000246F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void), uint64_t a8)
{
  v14 = type metadata accessor for Date();
  sub_10000AC48();
  v16 = v15;
  __chkstk_darwin(v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v24 = v23;
    (*(v16 + 8))(v21, v14);
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088(&qword_1000DBA20, v25, v26);
    }

    v27 = type metadata accessor for Logger();
    sub_100007DE8(v27, qword_1000E6D48);
    v28 = v22;
    v29 = a5;
    v30 = a6;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136315650;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = sub_1000170D4(v35, v36, &v57);
      v56 = a8;
      v38 = a7;
      v39 = v37;

      *(v33 + 4) = v39;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v24;
      *(v33 + 22) = 2080;
      v40 = [v28 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = v41;
      a7 = v38;
      v45 = sub_1000170D4(v44, v43, &v57);

      *(v33 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v31, v32, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v33, 0x20u);
      swift_arrayDestroy();
      sub_10000B008(v34);
      sub_10000B008(v33);
    }

    v46 = v28;
    a7(a1, 0);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088(&qword_1000DBA20, v18, v19);
    }

    v47 = type metadata accessor for Logger();
    sub_100007DE8(v47, qword_1000E6D48);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v52 = Error.localizedDescription.getter();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v55 = sub_1000170D4(v52, v54, &v57);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v50, 0xCu);
      sub_100008A94(v51);
      sub_10000B008(v51);
      sub_10000B008(v50);
    }

    a7(a6, 0);
  }
}

void sub_100024AF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_100024B84(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v23 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v15 = [a3 BOOLForKey:a4];
  (*(v12 + 16))(&v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a6, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  v18 = v17 + ((v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a4;
  *(v18 + 8) = v23;
  v19 = (v17 + ((v16 + v13 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_100025BE4;
  v19[1] = v14;
  aBlock[4] = sub_100025CB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0A00;
  v20 = _Block_copy(aBlock);
  v21 = a4;

  [v15 valueWithCompletion:v20];
  _Block_release(v20);
}

void sub_100024DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void (*a7)(id))
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (a1)
  {
    v16 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100007DE8(v19, qword_1000E6D48);
    v20 = v16;
    v21 = a5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v24 = 136315650;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = sub_1000170D4(v25, v26, v43);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v18;
      *(v24 + 22) = 2080;
      v28 = [v20 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_1000170D4(v29, v31, v43);

      *(v24 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    a7([v20 BOOLValue]);
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100007DE8(v33, qword_1000E6D48);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43[0] = v37;
      *v36 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v38 = Error.localizedDescription.getter();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v41 = sub_1000170D4(v38, v40, v43);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v36, 0xCu);
      sub_100008A94(v37);
    }

    a7((a6 & 1));
  }
}

void sub_1000251F4(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v30 = a4;
  v28 = a1;
  v7 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v25 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 BOOLForKey:{a3, __chkstk_darwin(v11).n128_f64[0]}];
  (*(v12 + 16))(v14, v27, v11);
  (*(v8 + 16))(v10, v28, v7);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 9) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  v19 = v18 + v16;
  v20 = v25;
  v21 = v26;
  *v19 = v26;
  *(v19 + 8) = v30;
  (*(v8 + 32))(v18 + v17, v10, v20);
  aBlock[4] = sub_10002663C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026744;
  aBlock[3] = &unk_1000D0C30;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  v24 = v29;
  [v29 valueWithCompletion:v22];
  _Block_release(v22);
}

void sub_1000254D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100007DE8(v17, qword_1000E6D48);
    v18 = v14;
    v19 = a5;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v22 = 136315650;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = sub_1000170D4(v23, v24, &v41);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v16;
      *(v22 + 22) = 2080;
      v26 = [v18 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_1000170D4(v27, v29, &v41);

      *(v22 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "BagProvider: Successfully resolved AMSBag(%s) value in %f seconds. Value: %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    LOBYTE(v41) = [v18 BOOLValue];
    sub_100003998(&qword_1000DCA48, qword_1000AB448);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100007DE8(v31, qword_1000E6D48);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v36 = Error.localizedDescription.getter();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0xE000000000000000;
      }

      v39 = sub_1000170D4(v36, v38, &v41);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "BagProvider: Unable to load bag. Using hardcoded default value. Error: %s", v34, 0xCu);
      sub_100008A94(v35);
    }

    LOBYTE(v41) = a6 & 1;
    sub_100003998(&qword_1000DCA48, qword_1000AB448);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002592C()
{

  return v0;
}

uint64_t sub_10002598C()
{
  sub_10002592C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1000259E4()
{

  v0 = sub_100026858();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100025A14()
{

  v0 = sub_100026858();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100025A70()
{

  v0 = sub_100026858();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025AC0()
{
  type metadata accessor for Date();
  sub_10002677C();

  v1 = sub_1000267FC();
  v2(v1);
  v3 = sub_1000267EC();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_100025B6C()
{
  sub_10002680C();
  v0 = type metadata accessor for Date();
  sub_10001C3C4(v0);
  v1 = sub_10000AF64();

  sub_100024B84(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100025BE4(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 0x1FF;
  return v2(&v4);
}

uint64_t sub_100025C24()
{
  type metadata accessor for Date();
  sub_100026794();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_100026888();
  v4 = sub_1000267DC();

  return _swift_deallocObject(v4, v5, v6);
}

void sub_100025CB8()
{
  v0 = sub_1000267BC();
  sub_10000AC84(v0);
  v1 = sub_1000267A8();

  sub_100024DCC(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100025D60()
{
  type metadata accessor for Date();
  sub_10002677C();

  v1 = sub_1000267FC();
  v2(v1);
  v3 = sub_1000267EC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100025E28()
{
  type metadata accessor for Date();
  sub_100026794();
  v2 = sub_10002681C();
  v3(v2);

  sub_100026888();
  v4 = sub_1000267DC();

  return _swift_deallocObject(v4, v5, v6);
}

void sub_100025EA8()
{
  v0 = sub_1000267BC();
  sub_10000AC84(v0);
  sub_100026838();
  sub_100026848();
  v1 = sub_1000267A8();

  sub_100023E60(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100025F3C()
{
  type metadata accessor for Date();
  sub_10002677C();

  v1 = sub_1000267FC();
  v2(v1);
  v3 = sub_1000267EC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100026008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_10002680C();
  v3 = type metadata accessor for Date();
  sub_10001C3C4(v3);
  v4 = sub_10000AF64();

  return a3(v4);
}

uint64_t sub_100026094(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1000260D4()
{
  type metadata accessor for Date();
  sub_100026794();
  v2 = sub_10002681C();
  v3(v2);
  v4 = (v0 + v1);

  sub_100026888();
  v5 = sub_1000267DC();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_100026160()
{
  v0 = sub_1000267BC();
  sub_10000AC84(v0);
  sub_100026838();
  sub_100026848();
  v1 = sub_1000267A8();
  sub_1000246F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000261E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003998(a2, a3);
  sub_100026794();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002623C()
{
  type metadata accessor for Date();
  sub_10002677C();

  v1 = sub_1000267FC();
  v2(v1);
  v3 = sub_1000267EC();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_1000262F0()
{
  sub_10002680C();
  v0 = type metadata accessor for Date();
  sub_10001C3C4(v0);
  v1 = sub_10000AF64();

  sub_1000235A0(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100026368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1000263A8()
{
  type metadata accessor for Date();
  sub_100026794();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  sub_100026888();
  v4 = sub_1000267DC();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100026448()
{
  v0 = sub_1000267BC();
  sub_10000AC84(v0);
  sub_100026838();
  sub_100026848();
  v1 = sub_1000267A8();
  return sub_1000237F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000264F0()
{
  type metadata accessor for Date();
  sub_10002677C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10000AC48();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 9) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v1 + v5, v0);

  (*(v10 + 8))(v1 + v14, v8);

  return _swift_deallocObject(v1, v14 + v15, v16 | 7);
}

void sub_10002663C()
{
  v4 = sub_1000267BC();
  sub_10000AC84(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v9);
  v10 = *(v1 + v8);
  v11 = *(v1 + v8 + 8);

  sub_1000254D0(v3, v2, v0, v1 + v6, v10, v11);
}

uint64_t sub_1000267BC()
{

  return type metadata accessor for Date();
}

id sub_100026868()
{

  return sub_100058E38(v0, v1);
}

uint64_t sub_100026888()
{
}

Swift::Int LiveActivityAppIntentServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100026934()
{
  Hasher.init(_seed:)();
  LiveActivityAppIntentServiceError.hash(into:)();
  return Hasher._finalize()();
}

sportsd::LiveActivityAppIntentService::NotificationType_optional __swiftcall LiveActivityAppIntentService.NotificationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = sportsd_LiveActivityAppIntentService_NotificationType_gameStart;
  }

  else
  {
    v1.value = sportsd_LiveActivityAppIntentService_NotificationType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

sportsd::LiveActivityAppIntentService::NotificationType_optional sub_1000269B4@<W0>(Swift::Int *a1@<X0>, sportsd::LiveActivityAppIntentService::NotificationType_optional *a2@<X8>)
{
  result.value = LiveActivityAppIntentService.NotificationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000269E0@<X0>(uint64_t *a1@<X8>)
{
  result = LiveActivityAppIntentService.NotificationType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *sub_100026A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t LiveActivityAppIntentService.supportsAppIntents()()
{
  sub_10001BEC4();
  v1[2] = v0;
  v2 = type metadata accessor for IntentsServices.MetadataError.Code();
  v1[3] = v2;
  sub_10000AC84(v2);
  v1[4] = v3;
  v1[5] = sub_100029D20();
  v4 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v4);
  v1[6] = sub_100029D20();
  v5 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v5);
  v1[7] = sub_100029D20();
  v6 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v6);
  v1[8] = sub_100029D20();
  v7 = type metadata accessor for AppIntentSpecification();
  v1[9] = v7;
  sub_10000AC84(v7);
  v1[10] = v8;
  v1[11] = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[12] = v9;
  sub_10000AC84(v9);
  v1[13] = v10;
  v1[14] = sub_100029D20();
  v11 = sub_100029C4C();

  return _swift_task_switch(v11);
}

uint64_t sub_100026BEC()
{
  sub_10001BEC4();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100026C7C;

  return sub_100022EC0();
}

uint64_t sub_100026C7C()
{
  sub_10001BEC4();
  sub_10001BF54();
  *(v1 + 144) = v0;

  v2 = sub_100029C4C();

  return _swift_task_switch(v2);
}

uint64_t sub_100026D6C()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 16);
    swift_getObjectType();
    sub_100027344(0, 0xE000000000000000, *(v1 + 16), *(v1 + 24));
    v2 = type metadata accessor for UTType();
    v3 = sub_100029C88(v2);
    v4 = sub_100029CEC(v3);
    sub_100029BFC(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21);
    v12 = type metadata accessor for AppIntentPerformOptions();
    sub_100029CCC(v12);
    swift_task_alloc();
    sub_100029D94();
    *(v0 + 128) = v13;
    *v13 = v14;
    v13[1] = sub_100026EF8;
    sub_100029C5C();

    return AppIntentDispatching.perform(_:options:delegate:)(v15);
  }

  else
  {
    sub_100029D38();

    v16 = sub_100029C3C();

    return v17(v16);
  }
}

uint64_t sub_100026EF8()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 136) = v0;

  sub_100027554(*(v3 + 64));
  if (!v0)
  {
    v9 = sub_100029D84();
    v10(v9);
  }

  v7 = sub_100029DA0();
  v8(v7);
  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v11);
}

uint64_t sub_100027050()
{
  sub_10001C524();
  sub_100029D38();

  sub_100029CC0();

  return v0(1);
}

uint64_t sub_1000270E4()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static IntentsServices.MetadataError.errorDomain.getter() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  v12 = [v1 code];
  v13 = *(v10 + 104);
  v13(v9, enum case for IntentsServices.MetadataError.Code.unknownAppIntent(_:), v11);
  v14 = IntentsServices.MetadataError.Code.rawValue.getter();
  v15 = *(v10 + 8);
  v16 = sub_100029DA0();
  v15(v16);
  if (v12 == v14 || (v17 = v0[5], v18 = v0[3], v19 = [v1 code], v13(v17, enum case for IntentsServices.MetadataError.Code.unknownApplication(_:), v18), v20 = IntentsServices.MetadataError.Code.rawValue.getter(), v21 = sub_100029DA0(), v15(v21), v19 == v20))
  {

    sub_100029D38();

    v22 = sub_100029C3C();
    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();

  sub_100029CC0();
  v22 = 0;
LABEL_12:

  return v23(v22);
}

uint64_t sub_100027344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v9 = type metadata accessor for AppIdentifier();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v8, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  type metadata accessor for NamedProperty();
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v12[0] = a1;
  v12[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t sub_100027554(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LiveActivityAppIntentService.startLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v4);
  v1[5] = sub_100029D20();
  v5 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v5);
  v1[6] = sub_100029D20();
  v6 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v6);
  v1[7] = sub_100029D20();
  v7 = type metadata accessor for AppIntentSpecification();
  v1[8] = v7;
  sub_10000AC84(v7);
  v1[9] = v8;
  v1[10] = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[11] = v9;
  sub_10000AC84(v9);
  v1[12] = v10;
  v1[13] = sub_100029D20();
  v11 = sub_100029C4C();

  return _swift_task_switch(v11);
}

uint64_t sub_100027814()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[15] = v0;

  sub_100027554(v6);
  v9 = sub_100029D84();
  v10(v9);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v11);
}

uint64_t sub_100027998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v9 = type metadata accessor for AppIdentifier();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v8, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  type metadata accessor for NamedProperty();
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v12[0] = a1;
  v12[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t LiveActivityAppIntentService.endLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v4);
  v1[5] = sub_100029D20();
  v5 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v5);
  v1[6] = sub_100029D20();
  v6 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v6);
  v1[7] = sub_100029D20();
  v7 = type metadata accessor for AppIntentSpecification();
  v1[8] = v7;
  sub_10000AC84(v7);
  v1[9] = v8;
  v1[10] = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[11] = v9;
  sub_10000AC84(v9);
  v1[12] = v10;
  v1[13] = sub_100029D20();
  v11 = sub_100029C4C();

  return _swift_task_switch(v11);
}

uint64_t sub_100027E00()
{
  sub_10001C50C();
  sub_10001C370();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[15] = v0;

  sub_100027554(v6);
  v9 = sub_100029D84();
  v10(v9);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_10001C740();
  sub_10001C358();

  return _swift_task_switch(v11);
}

uint64_t sub_100027F84()
{
  sub_100029DE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002800C()
{
  sub_100029DE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v9 = type metadata accessor for AppIdentifier();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v8, 1, 1, v10);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  type metadata accessor for NamedProperty();
  *(swift_allocObject() + 16) = xmmword_1000AA5B0;
  v12[0] = a1;
  v12[1] = a2;

  NamedProperty.init<A>(identifier:value:)();
  return AppIntentSpecification.init(app:actionIdentifier:parameters:)();
}

uint64_t LiveActivityAppIntentService.checkLiveActivity(canonicalID:)()
{
  sub_10001BEC4();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_100003998(&qword_1000DCA70, &qword_1000AB4B0);
  v1[10] = v4;
  sub_10000AC84(v4);
  v1[11] = v5;
  v1[12] = sub_100029D20();
  v6 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v6);
  v1[13] = sub_100029D20();
  v7 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v7);
  v1[14] = sub_100029D20();
  v8 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v8);
  v1[15] = sub_100029D20();
  v9 = type metadata accessor for AppIntentSpecification();
  v1[16] = v9;
  sub_10000AC84(v9);
  v1[17] = v10;
  v1[18] = sub_100029D20();
  v11 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  v1[19] = v11;
  sub_10000AC84(v11);
  v1[20] = v12;
  v1[21] = sub_100029D20();
  v13 = sub_100029C4C();

  return _swift_task_switch(v13);
}

uint64_t sub_100028574()
{
  sub_10001C524();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  v3[23] = v0;

  v5 = v2[18];
  v6 = v2[17];
  v7 = v2[16];
  sub_100027554(v2[15]);
  (*(v6 + 8))(v5, v7);
  sub_10001C740();

  return _swift_task_switch(v8);
}

uint64_t sub_1000286F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v12 = *(v10 + 88);
  v11 = *(v10 + 96);
  v13 = *(v10 + 80);
  AppIntentSuccessResult.output.getter();
  IntentOutput.value.getter();
  (*(v12 + 8))(v11, v13);
  v14 = *(v10 + 48);
  if (v14 && (v15 = [*(v10 + 48) value], v14, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
  {
    (*(*(v10 + 160) + 8))(*(v10 + 168), *(v10 + 152));

    sub_100029CC0();
  }

  else
  {
    v17 = *(v10 + 160);
    v16 = *(v10 + 168);
    v18 = *(v10 + 152);
    sub_100028980();
    swift_allocError();
    swift_willThrow();
    (*(v17 + 8))(v16, v18);

    sub_100029C3C();
  }

  sub_10001C358();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1000288E0()
{
  sub_10001C524();

  v0 = sub_100029C3C();

  return v1(v0);
}

unint64_t sub_100028980()
{
  result = qword_1000DCA78;
  if (!qword_1000DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA78);
  }

  return result;
}

uint64_t LiveActivityAppIntentService.shouldSuppressNotification(canonicalID:type:)()
{
  sub_10001BEC4();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 74) = v3;
  *(v1 + 88) = v4;
  v5 = sub_100003998(&qword_1000DCA70, &qword_1000AB4B0);
  *(v1 + 112) = v5;
  sub_10000AC84(v5);
  *(v1 + 120) = v6;
  *(v1 + 128) = sub_100029D20();
  v7 = sub_100003998(&qword_1000DCA50, &qword_1000AB478);
  sub_10001C3C4(v7);
  *(v1 + 136) = sub_100029D20();
  v8 = sub_100003998(&qword_1000DCA58, &qword_1000AB480);
  sub_10001C3C4(v8);
  *(v1 + 144) = sub_100029D20();
  v9 = sub_100003998(&qword_1000DCA60, &qword_1000AB488);
  sub_10001C3C4(v9);
  *(v1 + 152) = sub_100029D20();
  v10 = sub_100003998(&qword_1000DCA80, &qword_1000AB4C0);
  sub_10001C3C4(v10);
  *(v1 + 160) = sub_100029D20();
  v11 = type metadata accessor for AppIdentifier();
  sub_10001C3C4(v11);
  *(v1 + 168) = sub_100029D20();
  v12 = type metadata accessor for AppIntentSpecification();
  *(v1 + 176) = v12;
  sub_10000AC84(v12);
  *(v1 + 184) = v13;
  *(v1 + 192) = sub_100029D20();
  v14 = sub_100003998(&qword_1000DCA68, &qword_1000AB490);
  *(v1 + 200) = v14;
  sub_10000AC84(v14);
  *(v1 + 208) = v15;
  *(v1 + 216) = sub_100029D20();
  v16 = sub_100029C4C();

  return _swift_task_switch(v16);
}

uint64_t sub_100028C00()
{
  v1 = *(v0 + 160);
  v14 = *(v0 + 144);
  v15 = *(v0 + 136);
  v16 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 74);
  v4 = *(v0 + 88);
  swift_getObjectType();
  v5 = type metadata accessor for AppInstanceLocation();
  sub_100008E2C(v1, 1, 1, v5);

  AppIdentifier.init(bundleIdentifier:location:)();
  sub_100003998(&qword_1000DCA88, &qword_1000AB4C8);
  v6 = type metadata accessor for NamedProperty();
  sub_10000AC84(v6);
  *(swift_allocObject() + 16) = xmmword_1000AB460;
  *(v0 + 48) = v4;
  *(v0 + 56) = v2;

  NamedProperty.init<A>(identifier:value:)();
  *(v0 + 64) = v3 & 1;
  *(v0 + 72) = 0;
  NamedProperty.init<A>(identifier:value:)();
  AppIntentSpecification.init(app:actionIdentifier:parameters:)();
  v7 = type metadata accessor for UTType();
  sub_100008E2C(v14, 1, 1, v7);
  v8 = type metadata accessor for SnippetEnvironment();
  sub_100008E2C(v15, 1, 1, v8);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
  v9 = type metadata accessor for AppIntentPerformOptions();
  sub_100008E2C(v16, 0, 1, v9);
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 224) = v10;
  *v10 = v11;
  v10[1] = sub_100028F04;
  v12 = *(v0 + 216);

  return AppIntentDispatching.perform(_:options:delegate:)(v12);
}

uint64_t sub_100028F04()
{
  sub_10001C524();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  v3[29] = v0;

  v5 = v2[24];
  v6 = v2[23];
  v7 = v2[22];
  sub_100027554(v2[19]);
  (*(v6 + 8))(v5, v7);
  sub_10001C740();

  return _swift_task_switch(v8);
}

uint64_t sub_100029084()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  AppIntentSuccessResult.output.getter();
  IntentOutput.value.getter();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 80);
  if (v4 && (v5 = [*(v0 + 80) value], v4, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v6 = *(v0 + 73);

    sub_100029CC0();
    v8 = v6;
  }

  else
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);
    sub_100028980();
    swift_allocError();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v8 = sub_100029C3C();
  }

  return v7(v8);
}

uint64_t sub_1000292B4()
{
  sub_10001C370();

  v0 = sub_100029C3C();

  return v1(v0);
}

uint64_t LiveActivityAppIntentService.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t LiveActivityAppIntentService.__deallocating_deinit()
{
  LiveActivityAppIntentService.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_1000293D8()
{
  result = qword_1000DCA90;
  if (!qword_1000DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA90);
  }

  return result;
}

unint64_t sub_100029430()
{
  result = qword_1000DCA98;
  if (!qword_1000DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA98);
  }

  return result;
}

uint64_t sub_100029484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029BF8;

  return LiveActivityAppIntentService.supportsAppIntents()();
}

uint64_t sub_100029514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029BEC;

  return LiveActivityAppIntentService.startLiveActivity(canonicalID:)();
}

uint64_t sub_1000295BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029664;

  return LiveActivityAppIntentService.endLiveActivity(canonicalID:)();
}

uint64_t sub_100029664()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100029748()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000297F0;

  return LiveActivityAppIntentService.checkLiveActivity(canonicalID:)();
}

uint64_t sub_1000297F0()
{
  sub_10001BEC4();
  v3 = v2;
  sub_10001BF54();
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;

  sub_100029CC0();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1000298E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029BF8;

  return LiveActivityAppIntentService.shouldSuppressNotification(canonicalID:type:)();
}

uint64_t getEnumTagSinglePayload for LiveActivityAppIntentServiceError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for LiveActivityAppIntentServiceError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100029A84);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityAppIntentService.NotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100029BB4);
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

uint64_t sub_100029BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{

  return AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
}

uint64_t sub_100029C88(uint64_t a1)
{
  sub_100008E2C(v1, 1, 1, a1);

  return type metadata accessor for SnippetEnvironment();
}

uint64_t sub_100029CCC(uint64_t a1)
{

  return sub_100008E2C(v1, 0, 1, a1);
}

uint64_t sub_100029CEC(uint64_t a1)
{
  sub_100008E2C(v1, 1, 1, a1);

  return static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
}

uint64_t sub_100029D20()
{

  return swift_task_alloc();
}

uint64_t sub_100029D38()
{
}

uint64_t sub_100029D58()
{

  return swift_getObjectType();
}

uint64_t sub_100029DE4()
{
}

id sub_100029E04(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = objc_allocWithZone(NSError);
  return sub_100029EF8(0xD000000000000017, 0x80000001000B17E0, a1, v8);
}

id sub_100029EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100029FA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100008614((v3 + 40), *(v3 + 64));
  sub_10002A320();
  sub_10006E404(v8);
  if (v24)
  {
    return sub_10002A20C(v23);
  }

  v9 = [objc_opt_self() sharedScheduler];
  sub_10002A320();
  v10 = String._bridgeToObjectiveC()();
  [v9 deregisterTaskWithIdentifier:v10];

  sub_100008614((v3 + 40), *(v3 + 64));
  v11 = sub_10002A320();
  sub_10006E750(v11, v12, a1, a2);
  if (*(v3 + 16))
  {
    sub_10001BDC0(0, &qword_1000DCB68, BGRepeatingSystemTaskRequest_ptr);

    sub_10002A320();
    v13 = sub_10002A198();
    v14 = v4[3];
    result = [v13 setInterval:v14];
    v16 = v4[4];
    v17 = __OFSUB__(v14, v16);
    v18 = v14 - v16;
    if (!v17)
    {
      v19 = &selRef_setMinDurationBetweenInstances_;
LABEL_7:
      [v13 *v19];
      [v13 setShouldWakeDevice:a3 & 1];
      sub_100008614(v4 + 5, v4[8]);
      v22 = v13;
      sub_10006E4E8(v22);

      return sub_10002A20C(v23);
    }

    __break(1u);
  }

  else
  {
    sub_10001BDC0(0, &qword_1000DCB58, BGNonRepeatingSystemTaskRequest_ptr);

    sub_10002A320();
    v13 = sub_10002A198();
    v20 = v4[3];
    result = [v13 setScheduleAfter:v20];
    v21 = v4[4];
    v17 = __OFADD__(v20, v21);
    v18 = v20 + v21;
    if (!v17)
    {
      v19 = &selRef_setTrySchedulingBefore_;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_10002A198()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_10002A20C(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCB60, &qword_1000AB710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10002A2BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10002A32C(uint64_t a1)
{
  *(v1 + 200) = _swiftEmptyArrayStorage;
  sub_10000BC30(a1, v1 + 16);
  v8 = &type metadata for TaskRequestProvider;
  v9 = &off_1000D31D8;
  v5[0] = 0xD000000000000026;
  v5[1] = 0x80000001000B1850;
  v6 = 1;
  v7 = vdupq_n_s64(0x12CuLL);
  v3 = swift_allocObject();
  swift_weakInit();

  sub_100029FA8(sub_10002A8AC, v3, 1);

  sub_10000BCF0(a1);
  sub_10002A8B4(v5);

  return v1;
}

uint64_t sub_10002A42C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a1(1);
  }

  sub_10002A4B0(a1, a2);
}

uint64_t sub_10002A4B0(uint64_t a1, uint64_t a2)
{
  sub_10001F65C(j___s10Foundation4DateVACycfC, 0, v8);
  v4 = v9;
  v5 = v10;
  sub_100008614(v8, v9);
  (*(v5 + 8))(v4, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v8);
  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10002A690(void *a1, uint64_t (*a2)(uint64_t))
{
  if (*a1)
  {
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007DE8(v3, qword_1000E6D18);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "LiveActivityRefreshXPCServer: Error refreshing activities: %@", v6, 0xCu);
      sub_10002A948(v7);
    }

    else
    {
    }
  }

  return a2(1);
}

uint64_t sub_10002A810()
{
  sub_10000BCF0(v0 + 16);

  return _swift_deallocClassInstance(v0, 208, 7);
}

uint64_t sub_10002A874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A948(uint64_t a1)
{
  v2 = sub_100003998(&unk_1000DD790, &unk_1000AB7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A9B0()
{
  type metadata accessor for ServicesRepository();
  swift_allocObject();
  result = sub_10002A9EC();
  qword_1000E6CC8 = result;
  return result;
}

uint64_t sub_10002A9EC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  *(v0 + 288) = &_swiftEmptySetSingleton;
  type metadata accessor for ApsMessageProcessor();
  v3 = sub_1000A56B0();

  v5 = sub_10002BBDC(v4);
  v6 = type metadata accessor for ApsListener();
  *(v1 + 208) = v5;
  *(v1 + 232) = v6;
  *(v1 + 240) = &off_1000D0418;
  memset(v70, 0, 40);
  v67 = v3;
  if (sub_10002F240())
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v7 = 1;
  }

  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v8 = qword_1000E6CC0;
  v72 = type metadata accessor for BagProvider();
  v73 = &off_1000D0860;
  v65 = v72;
  *&v71 = v8;

  sub_100002C48(v70, 0, v7 & 1, &v71);
  if (qword_1000DBA60 != -1)
  {
    swift_once();
  }

  v9 = qword_1000E6DE8;
  sub_10000BC8C(v1 + 208, &v71);
  v10 = sub_10000B90C(&v71, v72);
  v11 = __chkstk_darwin(v10);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  sub_1000097A0(v74, v70);
  v15 = *v13;

  v68 = v9;

  v16 = sub_10002BCFC(0xD000000000000022, 0x80000001000B19A0, v15, v8, v70, v9);
  sub_100008A94(&v71);
  *(v1 + 16) = v16;
  v66 = sub_10002C19C();
  v17 = sub_10002B408();
  *(v1 + 280) = v17;
  [v17 setDelegate:*(v1 + 16)];
  [*(v1 + 280) resume];
  v18 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter();

  type metadata accessor for PlaysStore();
  swift_allocObject();
  v69 = PlaysStore.init(storeUrl:)();
  v19 = type metadata accessor for PersistentStore();
  v20 = PersistentStore.__allocating_init()();

  sub_10002B750(v70);
  v21 = sub_10000B90C(v70, v70[3]);
  v62 = &v62;
  v22 = __chkstk_darwin(v21);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v64 = v1 + 208;
  v72 = &type metadata for ImageDownloader;
  v73 = &off_1000D2880;
  v71 = *v24;
  type metadata accessor for LogoRepository();
  v26 = swift_allocObject();
  v27 = sub_10000B90C(&v71, &type metadata for ImageDownloader);
  v28 = __chkstk_darwin(v27);
  v30 = (&v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  *(v26 + 40) = &type metadata for ImageDownloader;
  *(v26 + 48) = &off_1000D2880;
  *(v26 + 16) = *v30;
  sub_100008A94(&v71);
  sub_100008A94(v70);
  type metadata accessor for DataRepository();
  v32 = swift_allocObject();
  v32[5] = v19;
  v32[6] = &protocol witness table for PersistentStore;
  v32[2] = v20;
  v32[7] = &_swiftEmptySetSingleton;
  v32[8] = v26;

  sub_10000BC8C(v1 + 208, v70);
  v70[10] = v65;
  v63 = v8;
  v70[7] = v8;
  v70[11] = &off_1000D0860;
  v70[15] = &type metadata for TempoApiAgent;
  v70[16] = &off_1000CFC28;
  v70[12] = swift_allocObject();
  sub_1000097A0(v74, v70[12] + 16);
  v70[20] = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v70[21] = &off_1000D38A0;
  v70[17] = v68;
  v70[5] = v32;
  v70[6] = v69;
  v33 = type metadata accessor for ActivityAuthorization();
  v34 = objc_allocWithZone(v33);

  v35 = [v34 init];
  v36 = sub_1000499E0();
  v38 = v37;
  v72 = v33;
  v73 = &off_1000D1900;
  *&v71 = v35;
  type metadata accessor for ActivityCapUtility();
  v39 = swift_allocObject();
  v40 = sub_10000B90C(&v71, v33);
  v41 = __chkstk_darwin(v40);
  v43 = (&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = *v43;
  v39[5] = v33;
  v39[6] = &off_1000D1900;
  v39[7] = v36;
  v39[2] = v45;
  v39[8] = v38;
  sub_100008A94(&v71);

  v70[22] = v39;
  memcpy((v1 + 24), v70, 0xB8uLL);
  sub_10000BC30(v1 + 24, v70);
  v46 = v67;
  swift_beginAccess();
  sub_10002C228(v70, (v46 + 17));
  swift_endAccess();
  sub_10000BC8C(v64, &v71);
  v47 = sub_10000B90C(&v71, v72);
  v48 = __chkstk_darwin(v47);
  v50 = (&v62 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  sub_1000097A0(v74, v70);
  v52 = *v50;
  v53 = v63;

  v54 = v68;

  v55 = sub_10002C298(0xD00000000000002ALL, 0x80000001000B19F0, v52, v53, v70, v54);
  sub_100008A94(&v71);
  *(v1 + 256) = v55;
  v56 = sub_10002B408();
  *(v1 + 264) = v56;
  [v56 setDelegate:*(v1 + 256)];
  [*(v1 + 264) resume];
  type metadata accessor for UnsubscribeRetryXPCServer();
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  sub_10000BC8C(qword_1000E6CD0 + 16, &v71);
  v57 = *(v1 + 16);
  sub_10000BC30(v1 + 24, v70);
  v58 = v57;
  v59 = sub_10002D840(&v71, v58, v70);

  sub_10000BCF0(v70);
  sub_100008A94(&v71);
  *(v1 + 248) = v59;
  sub_10000BC30(v1 + 24, v70);
  type metadata accessor for LiveActivityRefreshXPCServer();
  swift_allocObject();
  v60 = sub_10002A32C(v70);

  sub_10002C738(v74);
  *(v1 + 272) = v60;
  return v1;
}

id sub_10002B408()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_10002B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10001F338(a1, a2, a3, a4, v12);
  v8 = v13;
  v9 = v14;
  sub_100008614(v12, v13);
  (*(v9 + 8))(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10002C7CC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v12);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10002B5E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (!*a1)
  {
    return a2(0);
  }

  swift_errorRetain();
  a2(v3);
}

uint64_t sub_10002B658()
{
  sub_10000BCF0(v0 + 24);
  sub_100008A94((v0 + 208));

  return v0;
}

uint64_t sub_10002B6B8()
{
  sub_10002B658();

  return _swift_deallocClassInstance(v0, 296, 7);
}

uint64_t sub_10002B710()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002B750(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedSession];
  v3 = sub_1000499E0();
  v5 = v4;
  v6 = [objc_opt_self() defaultManager];
  v7 = [v2 configuration];
  sub_10002B81C(v3, v5, v7);

  a1[3] = &type metadata for ImageDownloader;
  a1[4] = &off_1000D2880;
  *a1 = v2;
  a1[1] = v6;
}

void sub_10002B81C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 set_sourceApplicationBundleIdentifier:v4];
}

char *sub_10002B880(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v20[3] = type metadata accessor for ApsMessageProcessor();
  v20[4] = &off_1000D4F38;
  v20[0] = a1;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection] = 0;
  v8 = &a2[OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_cancellables] = &_swiftEmptySetSingleton;
  v9 = OBJC_IVAR____TtC7sportsd11ApsListener_tokenPublisher;
  sub_100003998(&qword_1000DC560, &qword_1000AB830);
  swift_allocObject();
  *&a2[v9] = PassthroughSubject.init()();
  v10 = &a2[OBJC_IVAR____TtC7sportsd11ApsListener_pushToken];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor] = 0;
  *&a2[OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer] = 0;
  v11 = OBJC_IVAR____TtC7sportsd11ApsListener_connection;
  sub_100003998(&qword_1000DCD28, &unk_1000AB838);
  v12 = swift_allocObject();
  *(v12 + 28) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 2;
  *&a2[v11] = v12;
  sub_10000BC8C(v20, &a2[OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing]);
  v19.receiver = a2;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "init");
  type metadata accessor for ScoreboardSubscriptionMessageProcessor();
  swift_allocObject();
  v14 = v13;
  *&v14[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor] = sub_10003DBF0();

  type metadata accessor for SportsEnvironmentPublisher();
  swift_initStaticObject();
  v18 = sub_10000DD68();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100003998(&qword_1000DC240, &qword_1000AAC10);
  sub_10002C7CC(&qword_1000DC248, &qword_1000DC240, &qword_1000AAC10);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10000EA5C();
  v15 = type metadata accessor for TaskPriority();
  sub_100008E2C(v7, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_100032C10(0, 0, v7, &unk_1000AB848, v16);

  sub_100008A94(v20);
  return v14;
}

char *sub_10002BBDC(uint64_t *a1)
{
  v11 = *a1;
  v12 = &off_1000D4F38;
  v10[0] = a1;
  v1 = objc_allocWithZone(type metadata accessor for ApsListener());
  v2 = sub_10000B90C(v10, v11);
  v3 = __chkstk_darwin(v2);
  v5 = (&v10[-1] - v4);
  (*(v6 + 16))(&v10[-1] - v4, v3);
  v7 = sub_10002B880(*v5, v1);
  sub_100008A94(v10);
  return v7;
}

id sub_10002BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v42 = a1;
  v43 = a2;
  v10 = type metadata accessor for ApsListener();
  v58[3] = v10;
  v58[4] = &off_1000D0418;
  v58[0] = a3;
  v11 = type metadata accessor for BagProvider();
  v56 = v11;
  v57 = &off_1000D0860;
  v55[0] = a4;
  v53 = &type metadata for TempoApiAgent;
  v54 = &off_1000CFC28;
  v52[0] = swift_allocObject();
  memcpy((v52[0] + 16), a5, 0x60uLL);
  v12 = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v50 = v12;
  v51 = &off_1000D38A0;
  v49[0] = a6;
  v41 = type metadata accessor for SportsKitRequestXPCServer();
  v13 = objc_allocWithZone(v41);
  v14 = sub_10000B90C(v58, v10);
  v15 = __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10000B90C(v55, v56);
  v20 = __chkstk_darwin(v19);
  v22 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = sub_10000B90C(v52, v53);
  v25 = __chkstk_darwin(v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = sub_10000B90C(v49, v50);
  v30 = __chkstk_darwin(v29);
  v32 = (&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v17;
  v35 = *v22;
  v36 = *v32;
  v48[3] = v10;
  v48[4] = &off_1000D0418;
  v48[0] = v34;
  v47[3] = v11;
  v47[4] = &off_1000D0860;
  v47[0] = v35;
  v46[3] = &type metadata for TempoApiAgent;
  v46[4] = &off_1000CFC28;
  v46[0] = swift_allocObject();
  memcpy((v46[0] + 16), v27, 0x60uLL);
  v45[3] = v12;
  v45[4] = &off_1000D38A0;
  v45[0] = v36;
  v37 = &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement];
  v38 = v43;
  *v37 = v42;
  v37[1] = v38;
  sub_10000BC8C(v48, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_apsListening]);
  sub_10000BC8C(v47, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_metadataProvider]);
  sub_10000BC8C(v46, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_tempoApiProvider]);
  sub_10000BC8C(v45, &v13[OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_supressionManager]);
  v44.receiver = v13;
  v44.super_class = v41;
  v39 = objc_msgSendSuper2(&v44, "init");
  sub_100008A94(v45);
  sub_100008A94(v46);
  sub_100008A94(v47);
  sub_100008A94(v48);
  sub_100008A94(v49);
  sub_100008A94(v52);
  sub_100008A94(v55);
  sub_100008A94(v58);
  return v39;
}

unint64_t sub_10002C19C()
{
  result = qword_1000DCD18;
  if (!qword_1000DCD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DCD18);
  }

  return result;
}

uint64_t sub_10002C1E0()
{
  sub_100008A94((v0 + 16));

  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10002C228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCD20, &unk_1000AB820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10002C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v42 = a1;
  v43 = a2;
  v10 = type metadata accessor for ApsListener();
  v58[3] = v10;
  v58[4] = &off_1000D0418;
  v58[0] = a3;
  v11 = type metadata accessor for BagProvider();
  v56 = v11;
  v57 = &off_1000D0860;
  v55[0] = a4;
  v53 = &type metadata for TempoApiAgent;
  v54 = &off_1000CFC28;
  v52[0] = swift_allocObject();
  memcpy((v52[0] + 16), a5, 0x60uLL);
  v12 = type metadata accessor for WatchlistSuppressNotificationsXPCConnectionManager();
  v50 = v12;
  v51 = &off_1000D38A0;
  v49[0] = a6;
  v41 = type metadata accessor for DirectActivityRequestXPCServer();
  v13 = objc_allocWithZone(v41);
  v14 = sub_10000B90C(v58, v10);
  v15 = __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10000B90C(v55, v56);
  v20 = __chkstk_darwin(v19);
  v22 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = sub_10000B90C(v52, v53);
  v25 = __chkstk_darwin(v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = sub_10000B90C(v49, v50);
  v30 = __chkstk_darwin(v29);
  v32 = (&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v17;
  v35 = *v22;
  v36 = *v32;
  v48[3] = v10;
  v48[4] = &off_1000D0418;
  v48[0] = v34;
  v47[3] = v11;
  v47[4] = &off_1000D0860;
  v47[0] = v35;
  v46[3] = &type metadata for TempoApiAgent;
  v46[4] = &off_1000CFC28;
  v46[0] = swift_allocObject();
  memcpy((v46[0] + 16), v27, 0x60uLL);
  v45[3] = v12;
  v45[4] = &off_1000D38A0;
  v45[0] = v36;
  v37 = &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement];
  v38 = v43;
  *v37 = v42;
  v37[1] = v38;
  sub_10000BC8C(v48, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_apsListening]);
  sub_10000BC8C(v47, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_metadataProvider]);
  sub_10000BC8C(v46, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_tempoApiProvider]);
  sub_10000BC8C(v45, &v13[OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_supressionManager]);
  v44.receiver = v13;
  v44.super_class = v41;
  v39 = objc_msgSendSuper2(&v44, "init");
  sub_100008A94(v45);
  sub_100008A94(v46);
  sub_100008A94(v47);
  sub_100008A94(v48);
  sub_100008A94(v49);
  sub_100008A94(v52);
  sub_100008A94(v55);
  sub_100008A94(v58);
  return v39;
}

uint64_t sub_10002C78C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C7CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C820()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C858(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002C904;

  return sub_10000EC30(a1, v5, v4);
}

uint64_t sub_10002C904()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002C9F8()
{
  v1 = type metadata accessor for PersistentStore();
  v2 = PersistentStore.__allocating_init()();

  sub_10002B750(v17);
  sub_10000B90C(v17, v17[3]);
  sub_10000BD44();
  __chkstk_darwin(v3);
  v5 = sub_10002D80C(v4, v14);
  v6(v5);
  v15 = &type metadata for ImageDownloader;
  v16 = &off_1000D2880;
  v14 = *v0;
  type metadata accessor for LogoRepository();
  v7 = swift_allocObject();
  sub_10000B90C(&v14, &type metadata for ImageDownloader);
  sub_10000BD44();
  __chkstk_darwin(v8);
  v10 = sub_10002D80C(v9, v14);
  v11(v10);
  *(v7 + 40) = &type metadata for ImageDownloader;
  *(v7 + 48) = &off_1000D2880;
  *(v7 + 16) = *v0;
  sub_100008A94(&v14);
  sub_100008A94(v17);
  type metadata accessor for DataRepository();
  v12 = swift_allocObject();
  v12[5] = v1;
  v12[6] = &protocol witness table for PersistentStore;
  v12[2] = v2;
  v12[7] = &_swiftEmptySetSingleton;
  v12[8] = v7;

  qword_1000E6CD0 = v12;
  return result;
}

uint64_t sub_10002CBC8()
{
  sub_100008614((v0 + 16), *(v0 + 40));
  dispatch thunk of PersistentStorable.initializeStoreIfNeeded()();
  v6 = &type metadata for TaskRequestProvider;
  v7 = &off_1000D31D8;
  v3[0] = 0xD00000000000001FLL;
  v3[1] = 0x80000001000B1A90;
  v4 = 0;
  v5 = vdupq_n_s64(0x12CuLL);
  v1 = swift_allocObject();
  swift_weakInit();

  sub_100029FA8(sub_10002D734, v1, 1);

  sub_10002A8B4(v3);
}

uint64_t sub_10002CCC0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(1);
  }

  v6 = Strong;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_100003998(&qword_1000DC9A0, &qword_1000AB3D0);
  sub_10002D788();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10002CE38(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  sub_100008614(a2 + 2, a2[5]);
  dispatch thunk of PersistentStorable.cleanUpFileSystem(olderThan:)();
  return a3(1);
}

uint64_t sub_10002D264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), const char *a7, ...)
{
  v14 = v7[5];
  v15 = v7[6];
  sub_100008614(v7 + 2, v14);
  return a6(a1, a2, a3, a4, a5, v14, v15);
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v26 = a2;
  v6 = type metadata accessor for SportsLogoSize();
  sub_10000BD44();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[8];
  v13 = v4[5];
  v28 = v4[6];
  v29 = v12;
  sub_100008614(v4 + 2, v13);
  v14 = *(v8 + 104);
  v14(v11, enum case for SportsLogoSize.default(_:), v6);
  sub_10002D82C();
  v15 = dispatch thunk of PersistentStorable.pathForLogo(_:size:fileExtension:)();
  v27 = v16;
  v28 = v15;
  v17 = *(v8 + 8);
  v17(v11, v6);
  v18 = v4[5];
  v25[1] = v4[6];
  sub_100008614(v4 + 2, v18);
  v14(v11, enum case for SportsLogoSize.small(_:), v6);
  v19 = v26;
  sub_10002D82C();
  v20 = dispatch thunk of PersistentStorable.pathForLogo(_:size:fileExtension:)();
  v22 = v21;
  v17(v11, v6);
  v23 = sub_10009A5F8(a1, v19, v30, v31, v28, v27, v20, v22);

  return v23;
}

uint64_t sub_10002D674()
{
  sub_100008A94((v0 + 16));

  return v0;
}

uint64_t sub_10002D6A4()
{
  sub_10002D674();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10002D6FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D73C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002D788()
{
  result = qword_1000DC9A8;
  if (!qword_1000DC9A8)
  {
    sub_1000089A8(&qword_1000DC9A0, &qword_1000AB3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC9A8);
  }

  return result;
}

uint64_t sub_10002D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10002D840(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000BC8C(a1, v11);
  sub_10000BC30(a3, v10);
  v5 = swift_allocObject();
  sub_10002D8B8(v11, a2, v10);
  v6 = a2;
  sub_10002D910(v6, v7, v8);
  return v5;
}

void *sub_10002D8B8(__int128 *a1, uint64_t a2, const void *a3)
{
  v3[31] = &_swiftEmptySetSingleton;
  sub_10000A8F8(a1, (v3 + 2));
  v3[7] = a2;
  memcpy(v3 + 8, a3, 0xB8uLL);
  return v3;
}

void sub_10002D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1000DBA30 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v6 = sub_100007DE8(v5, qword_1000E6D78);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_10002F228();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking to see if we need to retry unsubscribe for subscriptions...", v9, 2u);
      sub_10002F1FC();
    }

    sub_100008614((v4 + 16), *(v4 + 40));
    v10 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      break;
    }

    v14 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v73[0] = v64;
    *v14 = 136315138;
    v15 = *(v10 + 16);
    if (!v15)
    {
LABEL_30:
      sub_100003998(&qword_1000DC5D0, &qword_1000AB010);
      v36 = Array.description.getter();
      v38 = v37;

      v39 = sub_1000170D4(v36, v38, v73);

      *(v14 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v11, v12, "Checking to see if we need to retry unsubscribe for subscriptions %s ...", v14, 0xCu);
      sub_100008A94(v64);
      sub_10002F1FC();

      sub_10002F1FC();

      break;
    }

    v58 = v14;
    HIDWORD(v59) = v12;
    v60 = v11;
    v61 = 0;
    v62 = v6;
    v63 = v4;
    sub_100017B48(0, v15, 0);
    v18 = sub_10001F0A8(v10);
    v4 = 0;
    v19 = v10 + 64;
    v65 = v10 + 72;
    v66 = v15;
    v67 = v10 + 64;
    if ((v18 & 0x8000000000000000) == 0)
    {
      while (v18 < 1 << *(v10 + 32))
      {
        v20 = v18 >> 6;
        if ((*(v19 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v10 + 36) != v16)
        {
          goto LABEL_39;
        }

        HIDWORD(v68) = v17;
        v69 = v4;
        v70 = v16;
        v21 = (*(v10 + 48) + 16 * v18);
        v22 = v21[1];
        oslog = *v21;
        v23 = *(*(v10 + 56) + 8 * v18);
        v4 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];

        if (v4 >= v24 >> 1)
        {
          sub_100017B48((v24 > 1), v4 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v4 + 1;
        v25 = &_swiftEmptyArrayStorage[3 * v4];
        v25[4] = oslog;
        v25[5] = v22;
        v25[6] = v23;
        v26 = 1 << *(v10 + 32);
        if (v18 >= v26)
        {
          goto LABEL_40;
        }

        v19 = v10 + 64;
        v27 = *(v67 + 8 * v20);
        if ((v27 & (1 << v18)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v10 + 36) != v70)
        {
          goto LABEL_42;
        }

        v28 = v27 & (-2 << (v18 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
          v29 = v66;
          v30 = v69;
        }

        else
        {
          v31 = v20 << 6;
          v32 = v20 + 1;
          v29 = v66;
          v33 = (v65 + 8 * v20);
          v30 = v69;
          while (v32 < (v26 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_10001F0EC(v18, v70, BYTE4(v68) & 1);
              v26 = __clz(__rbit64(v34)) + v31;
              goto LABEL_26;
            }
          }

          sub_10001F0EC(v18, v70, BYTE4(v68) & 1);
        }

LABEL_26:
        v4 = v30 + 1;
        if (v4 == v29)
        {
          LOBYTE(v12) = BYTE4(v59);
          v14 = v58;
          goto LABEL_30;
        }

        v17 = 0;
        v16 = *(v10 + 36);
        v18 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v40 = sub_10002EDE8(v10);

  v41 = v40[2];

  osloga = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(osloga, v42);
  if (v41)
  {
    if (v43)
    {
      *sub_10002F228() = 0;
      sub_10002F208(&_mh_execute_header, v44, v45, "Subscriptions found with empty consumers. Starting XPC task to retry unsubscribe", v46, v47, v48, v49, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, osloga);
      sub_10002F1FC();
    }

    v76 = &type metadata for TaskRequestProvider;
    v77 = &off_1000D31D8;
    v73[0] = 0xD00000000000002ALL;
    v73[1] = 0x80000001000B1B00;
    v74 = 1;
    v75 = xmmword_1000AB880;
    v50 = swift_allocObject();
    swift_weakInit();

    sub_100029FA8(sub_10002EDE0, v50, 1);

    sub_10002A8B4(v73);
  }

  else
  {
    if (v43)
    {
      *sub_10002F228() = 0;
      sub_10002F208(&_mh_execute_header, v51, v52, "No subscriptions with empty consumers found.", v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, osloga);
      sub_10002F1FC();
    }
  }
}

uint64_t sub_10002DF4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_10000BC8C(Strong + 16, v8);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
    }

    swift_weakInit();

    sub_10002E72C(a1, a2, &v7, v8);
    sub_10002F034(v8);
    return swift_weakDestroy();
  }

  return result;
}

uint64_t sub_10002E028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1000DBA30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D78);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000170D4(a1, a2, v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "UnsubscribeRetryXPCServer: Unsubscribing from event '%s' since it has no consumers.", v8, 0xCu);
    sub_100008A94(v9);
  }

  sub_10001F338(0, 0xE000000000000000, a1, a2, v16);
  v10 = v17;
  v11 = v18;
  sub_100008614(v16, v17);
  (*(v11 + 8))(v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10002F198();
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10002E2E8(void *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    swift_errorRetain();
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100007DE8(v5, qword_1000E6D78);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1000170D4(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_1000170D4(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error unsubscribing from %s with no consumers: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10002E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000BC8C(result + 16, v5);

    sub_100008614(v5, v5[3]);
    dispatch thunk of PersistentStorable.deleteSportingEventSubscription(canonicalId:isConventionalOrUnified:)();
    return sub_100008A94(v5);
  }

  return result;
}

uint64_t sub_10002E72C(uint64_t (*a1)(uint64_t), int64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000DBA30 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v8 = type metadata accessor for Logger();
      sub_100007DE8(v8, qword_1000E6D78);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Unsubscribe retry XPC task is starting", v11, 2u);
      }

      sub_10002F09C(a4, &v24);
      if (!v25)
      {
        sub_10002F034(&v24);
        sub_10002EB20(0, a1, a2);
      }

      sub_10000A8F8(&v24, v26);
      sub_100008614(v26, v26[3]);
      v12 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();
      a4 = sub_10002EDE8(v12);

      if (!a4[2])
      {
        break;
      }

      v23 = a2;
      swift_weakInit();
      v13 = 1 << *(a4 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & a4[8];

      swift_beginAccess();
      a2 = 0;
      v16 = (v13 + 63) >> 6;
      while (v15)
      {
LABEL_17:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (a4[6] + ((a2 << 10) | (16 * v18)));
        v20 = *v19;
        v21 = v19[1];
        if (swift_weakLoadStrong())
        {

          sub_10002E028(v20, v21, v22);
        }
      }

      while (1)
      {
        v17 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          swift_weakDestroy();

          a2 = v23;
          goto LABEL_21;
        }

        v15 = a4[v17 + 8];
        ++a2;
        if (v15)
        {
          a2 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

LABEL_21:
    sub_10002EB20(0, a1, a2);

    return sub_100008A94(v26);
  }

  return result;
}

uint64_t sub_10002EB20(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100007DE8(v4, qword_1000E6D78);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Unsubscribe retry XPC task ran and will now be cancelled. This should never occur as it means the cleanup task will not run again until next reboot.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);
    }
  }

  else
  {
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007DE8(v9, qword_1000E6D78);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Unsubscribe retry XPC task ran and will continue to run";
      goto LABEL_10;
    }
  }

  return a2(1);
}

uint64_t sub_10002ECA0()
{
  sub_100008A94((v0 + 16));

  sub_10000BCF0(v0 + 64);

  return v0;
}

uint64_t sub_10002ECD8()
{
  sub_10002ECA0();

  return _swift_deallocClassInstance(v0, 256, 7);
}

unint64_t *sub_10002ED30(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_10002EF48(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10002EDA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t *sub_10002EDE8(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_10002ED30(v8, v4, v2);
      sub_10002F1FC();

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10008BE9C(0, v4, v5);
  v6 = sub_10002EF48(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_10002EF48(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10008C330(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_10008C330(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F034(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCF18, &qword_1000AC470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCF18, &qword_1000AC470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F10C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F14C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002F198()
{
  result = qword_1000DCC20;
  if (!qword_1000DCC20)
  {
    sub_1000089A8(&qword_1000DCC18, &qword_1000AB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCC20);
  }

  return result;
}

void sub_10002F208(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_t log)
{

  _os_log_impl(a1, log, v24, a4, v23, 2u);
}

uint64_t sub_10002F228()
{

  return swift_slowAlloc();
}

uint64_t sub_10002F240()
{
  type metadata accessor for ContainerConstants();
  v0 = static ContainerConstants.defaultSuiteName.getter();
  v2 = v1;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_100058E38(v0, v2);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 dictionaryRepresentation];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16))
  {

LABEL_17:
    v22 = 0;
    return v22 & 1;
  }

  sub_100017538(0xD000000000000018, 0x80000001000B1B30);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v5 BOOLForKey:v10];

  v12 = v11 == 0;
  if (v11)
  {
    v13 = 0x6E456C616373656DLL;
  }

  else
  {
    v13 = 0x69446C616373656DLL;
  }

  if (v12)
  {
    v14 = 0xEE0064656C626173;
  }

  else
  {
    v14 = 0xED000064656C6261;
  }

  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007DE8(v15, qword_1000E6D30);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v20 = 0xE400000000000000;
      v21 = 1819047278;
    }

    else
    {

      v21 = v13;
      v20 = v14;
    }

    v24 = sub_1000170D4(v21, v20, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "authentication defaults value: %s", v18, 0xCu);
    sub_100008A94(v19);
  }

  v27._countAndFlagsBits = v13;
  v27._object = v14;
  v25 = sub_10002F548(v27);

  v22 = (v25 == 2) | v25;
  return v22 & 1;
}

uint64_t sub_10002F548(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CEF88, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t sub_10002F5FC()
{
  v1 = v0;
  sub_100003998(&qword_1000DCF30, &qword_1000AB8F8);
  sub_10000AC48();
  v52 = v3;
  v53 = v2;
  sub_10000ACFC();
  __chkstk_darwin(v4);
  v51 = &v49 - v5;
  v58 = sub_100003998(&qword_1000DCF38, &qword_1000AB900);
  sub_10000AC48();
  v56 = v6;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v54 = &v49 - v8;
  v9 = sub_100003998(&qword_1000DCF40, &qword_1000AB908);
  sub_10000AC48();
  v57 = v10;
  sub_10000ACFC();
  __chkstk_darwin(v11);
  v55 = &v49 - v12;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100007DE8(v13, qword_1000E6D48);
  sub_100032454(v0, v61);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    v17 = sub_10002FDB8() & 1;
    sub_10003248C(v61);
    *(v16 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v14, v15, "Tempo start /unregister for isLowCapLiveActivity=%{BOOL}d", v16, 8u);
    sub_10000B008(v16);
  }

  else
  {
    sub_10003248C(v61);
  }

  v18 = v1[5];
  sub_10002FDB8();
  sub_100008614((v18 + 16), *(v18 + 40));
  v19 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (v19)
  {
    v20 = v19;
    if (sub_10002FDB8())
    {
      v21 = SportingEventSubscription.byChangingConsumers(_:)();
    }

    else
    {
      SportingEventSubscription.consumers.getter();
      sub_100003998(&qword_1000DC430, &qword_1000AA610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AA5B0;
      v34 = v1[17];
      *(inited + 32) = v1[16];
      *(inited + 40) = v34;

      sub_100019744();
      swift_setDeallocating();
      sub_100086754();
      v21 = SportingEventSubscription.byChangingConsumers(_:)();
    }

    v35 = v21;
    v36 = sub_100030124(v20, v35);
  }

  else
  {
    sub_100032454(v1, v61);
    sub_100032454(v1, v60);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v50 = v9;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 136315394;
      v27 = v61[18];
      v28 = v61[19];

      sub_10003248C(v61);
      v29 = sub_1000170D4(v27, v28, &v59);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = v60[16];
      v31 = v60[17];

      sub_10003248C(v60);
      v32 = sub_1000170D4(v30, v31, &v59);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "Tempo /unregister canonicalId=%s, remove consumer=%s, though there are no subscription exists", v25, 0x16u);
      swift_arrayDestroy();
      sub_10000B008(v26);
      sub_10000B008(v25);
    }

    else
    {

      sub_10003248C(v60);
      sub_10003248C(v61);
    }

    sub_100008614(v1, v1[3]);
    v49 = sub_10000F1CC();
    v60[0] = v49;
    sub_100032454(v1, v61);
    v37 = swift_allocObject();
    memcpy((v37 + 16), v61, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_100003998(&qword_1000DCF48, &unk_1000AB910);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000A6FC(&qword_1000DCF50, &qword_1000DCF48, &unk_1000AB910, &protocol conformance descriptor for AnyPublisher<A, B>);
    v38 = v51;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    sub_10000AC94();
    sub_10000A6FC(v39, v40, v41, v42);
    v43 = v53;
    v44 = v54;
    Publisher.map<A>(_:)();
    (*(v52 + 8))(v38, v43);
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCF60, &qword_1000DCF38, &qword_1000AB900, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
    v45 = v55;
    v46 = v58;
    Publisher.catch<A>(_:)();
    (*(v56 + 8))(v44, v46);
    sub_10000A6FC(&qword_1000DCF68, &qword_1000DCF40, &qword_1000AB908, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v47 = v50;
    v36 = Publisher.eraseToAnyPublisher()();
    (*(v57 + 8))(v45, v47);
  }

  return v36;
}

uint64_t sub_10002FDB8()
{
  v1 = *(v0 + 128) == 0xD000000000000011 && 0x80000001000B0480 == *(v0 + 136);
  if (v1 || (v2 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (sub_100066914())
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v2 = 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_10002FE60@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_100008614(a2 + 6, a2[9]);
  v13 = a2[18];
  v14 = a2[19];

  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._object = 0x80000001000B0520;
  v8._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v8);
  v9 = sub_10002FF3C();
  sub_100003F50(v5, v6, v13, v14, v9);
  v11 = v10;

  *a3 = v11;
  return result;
}

uint64_t sub_10002FF3C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  v8 = v1[18];
  v7 = v1[19];
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = v7;
  *(inited + 72) = 8;

  v9 = Date.init()();
  sub_10008C99C(v9);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v11;
  *(inited + 112) = 9;
  v12 = v1[20];
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v12;
  *(inited + 152) = 44;
  v13 = sub_10002FDB8();
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = (v13 & 1) == 0;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 1;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v14 = Dictionary.init(dictionaryLiteral:)();
  v15 = sub_100031E48(v14);

  return v15;
}

uint64_t sub_100030124(void *a1, void *a2)
{
  v111 = a1;
  v3 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = &v96 - v4;
  v5 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v119 = *(v5 - 8);
  v120 = v5;
  __chkstk_darwin(v5);
  v115 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v96 - v8;
  v9 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v99 = *(v9 - 8);
  v100 = v9;
  __chkstk_darwin(v9);
  v98 = &v96 - v10;
  v11 = sub_100003998(&qword_1000DCF88, &qword_1000AB938);
  v102 = *(v11 - 8);
  v103 = v11;
  __chkstk_darwin(v11);
  v101 = &v96 - v12;
  v13 = sub_100003998(&qword_1000DCF90, &qword_1000AB940);
  v105 = *(v13 - 8);
  v106 = v13;
  __chkstk_darwin(v13);
  v121 = &v96 - v14;
  v15 = sub_100003998(&qword_1000DCF98, &qword_1000AB948);
  v107 = *(v15 - 8);
  v108 = v15;
  __chkstk_darwin(v15);
  v104 = &v96 - v16;
  v17 = sub_100003998(&qword_1000DCFA0, &qword_1000AB950);
  v109 = *(v17 - 8);
  v110 = v17;
  __chkstk_darwin(v17);
  v19 = &v96 - v18;
  v20 = sub_100003998(&qword_1000DCFA8, &qword_1000AB958);
  v112 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v96 - v21;
  v23 = sub_100003998(&qword_1000DCFB0, &qword_1000AB960);
  v113 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = (&v96 - v24);
  v26 = sub_100003998(&qword_1000DCFB8, &unk_1000AB968);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v96 - v28;
  v122 = a2;
  v30 = *(SportingEventSubscription.consumers.getter() + 16);

  if (v30)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100007DE8(v31, qword_1000E6D48);
    v32 = v123;
    sub_100032454(v123, v129);
    sub_100032454(v32, &v125);
    v33 = v122;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v36 = 136315650;
      v37 = v129[18];
      v38 = v129[19];

      sub_10003248C(v129);
      v39 = sub_1000170D4(v37, v38, &v124);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = v127;
      v41 = v128;

      sub_10003248C(&v125);
      v42 = sub_1000170D4(v40, v41, &v124);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2080;
      SportingEventSubscription.consumers.getter();
      v43 = Set.description.getter();
      v45 = v44;

      v46 = sub_1000170D4(v43, v45, &v124);

      *(v36 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Tempo skip /unregister canonicalId=%s, remove consumer=%s, active consumers=%s", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10003248C(&v125);
      sub_10003248C(v129);
    }

    LOBYTE(v129[0]) = 1;
    v59 = v114;
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v60 = v115;
    v61 = v117;
    Just.setFailureType<A>(to:)();
    v62 = v116[1](v59, v61);
    __chkstk_darwin(v62);
    v63 = v118;
    v64 = v120;
    Result.Publisher.tryMap<A>(_:)();
    v65 = *(v119 + 8);
    v65(v60, v64);
    sub_10000A6FC(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00, &protocol conformance descriptor for Result<A, B>.Publisher);
    v66 = Publisher.eraseToAnyPublisher()();
    v65(v63, v64);
  }

  else
  {
    v97 = v19;
    v114 = v22;
    v115 = v20;
    v116 = v25;
    v119 = v23;
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v117 = v29;
    v118 = v27;
    v120 = v26;
    v47 = type metadata accessor for Logger();
    sub_100007DE8(v47, qword_1000E6D48);
    v48 = v123;
    sub_100032454(v123, v129);
    sub_100032454(v48, &v125);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v51 = 136315394;
      v52 = v129[18];
      v53 = v129[19];

      sub_10003248C(v129);
      v54 = sub_1000170D4(v52, v53, &v124);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = v127;
      v56 = v128;

      sub_10003248C(&v125);
      v57 = sub_1000170D4(v55, v56, &v124);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Tempo start /unregister canonicalId=%s, remove consumer=%s, no consumers left", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10003248C(&v125);
      v58 = sub_10003248C(v129);
    }

    v67 = v100;
    v68 = v98;
    __chkstk_darwin(v58);
    v69 = v123;
    v70 = sub_10002F59C(sub_1000324E0);
    v125 = v70;
    v72 = v71 & 1;
    v126 = v71 & 1;
    sub_100003998(&qword_1000DCFC8, &qword_1000AB978);
    Result.publisher.getter();
    sub_100032500(v70, v72);
    sub_100032454(v69, v129);
    v73 = swift_allocObject();
    memcpy((v73 + 16), v129, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DCFD0, &unk_1000AB980);
    sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930, &protocol conformance descriptor for Result<A, B>.Publisher);
    sub_10000A6FC(&qword_1000DCFE0, &qword_1000DCFD0, &unk_1000AB980, &protocol conformance descriptor for Deferred<A>);
    v74 = v101;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v99 + 8))(v68, v67);
    sub_100032454(v69, v129);
    v75 = swift_allocObject();
    memcpy((v75 + 16), v129, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_10000A6FC(&qword_1000DCFE8, &qword_1000DCF88, &qword_1000AB938, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v122 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v76 = v103;
    Publisher.flatMap<A>(maxPublishers:_:)();

    (*(v102 + 8))(v74, v76);
    sub_100032454(v69, v129);
    v77 = swift_allocObject();
    memcpy((v77 + 16), v129, 0xB0uLL);
    v78 = v111;
    *(v77 + 192) = v111;
    v79 = v78;
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    sub_100003998(&qword_1000DCF48, &unk_1000AB910);
    sub_10000A6FC(&qword_1000DCFF0, &qword_1000DCF90, &qword_1000AB940, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    sub_10000A6FC(&qword_1000DCF50, &qword_1000DCF48, &unk_1000AB910, v122);
    v80 = v104;
    v81 = v106;
    v82 = v121;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v105 + 8))(v82, v81);
    sub_10000A6FC(&qword_1000DCFF8, &qword_1000DCF98, &qword_1000AB948, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v83 = v97;
    v84 = v108;
    Publisher.map<A>(_:)();
    (*(v107 + 8))(v80, v84);
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DD000, &qword_1000DCFA0, &qword_1000AB950, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, v122);
    v85 = v114;
    v86 = v110;
    Publisher.catch<A>(_:)();
    (*(v109 + 8))(v83, v86);
    v87 = v123;
    sub_100032454(v123, v129);
    v88 = swift_allocObject();
    memcpy((v88 + 16), v129, 0xB0uLL);
    sub_10000A6FC(&qword_1000DD008, &qword_1000DCFA8, &qword_1000AB958, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v89 = v115;
    v90 = v116;
    Publisher.tryMap<A>(_:)();

    (*(v112 + 8))(v85, v89);
    sub_100032454(v87, v129);
    v91 = swift_allocObject();
    memcpy((v91 + 16), v129, 0xB0uLL);
    sub_10000A6FC(&qword_1000DD010, &qword_1000DCFB0, &qword_1000AB960, &protocol conformance descriptor for Publishers.TryMap<A, B>);
    v92 = v119;
    v93 = v117;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v113 + 8))(v90, v92);
    sub_10000A6FC(&qword_1000DD018, &qword_1000DCFB8, &unk_1000AB968, &protocol conformance descriptor for Publishers.HandleEvents<A>);
    v94 = v120;
    v66 = Publisher.eraseToAnyPublisher()();
    (*(v118 + 1))(v93, v94);
  }

  return v66;
}