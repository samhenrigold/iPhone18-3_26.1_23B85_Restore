uint64_t sub_1000BC8CC(void *a1)
{
  v2 = v1;
  v4 = sub_1000A6B10();
  if (sub_1000BCB4C(v4, v5))
  {
  }

  else
  {
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000A2468(v7, qword_100136A28);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136446210;

      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_1000B30D4(v12, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Applying blockedApplications settings: %{public}s", v10, 0xCu);
      sub_1000A24A0(v11);
    }

    sub_1000AD574((v2 + OBJC_IVAR____TtC8profiled9MCAdapter_mcInterface), *(v2 + OBJC_IVAR____TtC8profiled9MCAdapter_mcInterface + 24));
    sub_1000B4CAC(v19);
    v16 = v19[8];
    v17 = v19[9];

    sub_1000BF2DC(v19);
    v18 = sub_1000BC178(v4);
    sub_1000B4304(v16, v17, v18, a1, &type metadata for MCInterface, &off_10011DF60);
  }
}

uint64_t sub_1000BCB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000BCBDC(uint64_t result)
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

        sub_1000BD278(v12, v13);

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

void *sub_1000BCD08(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1000BD84C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1000BD614(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1000A74B8(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD278(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000BDA70();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000BDE04(v8);
  *v2 = v16;
  return v12;
}

Swift::Int sub_1000BD3B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

unint64_t *sub_1000BD614(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1000BD84C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_1000BD84C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1000BDA70()
{
  v1 = v0;
  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

  return result;
}

Swift::Int sub_1000BDBCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000A74C0(&qword_1001369A8, &qword_1000DD9F8);
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

unint64_t sub_1000BDE04(unint64_t result)
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
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

double sub_1000BDFC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000BB124(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BE690();
      v10 = v12;
    }

    sub_1000BB654((*(v10 + 56) + 32 * v8), a3);
    sub_1000BE324(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000BE06C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000A74C0(&qword_100136980, &qword_1000DD9A0);
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
        sub_1000BB654(v24, v34);
      }

      else
      {
        sub_1000B32AC(v24, v34);
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
      result = sub_1000BB654(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1000BE324(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1000BE4D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000BB124(a2, a3);
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
      sub_1000BE690();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000BE06C(v16, a4 & 1);
    v11 = sub_1000BB124(a2, a3);
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
    sub_1000A24A0(v22);

    return sub_1000BB654(a1, v22);
  }

  else
  {
    sub_1000BE624(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000BE624(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000BB654(a4, (a5[7] + 32 * a1));
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

void *sub_1000BE690()
{
  v1 = v0;
  sub_1000A74C0(&qword_100136980, &qword_1000DD9A0);
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
        sub_1000B32AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000BB654(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1000BE834(void *a1, uint64_t a2, uint64_t a3)
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

    sub_1000BE984(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000BE984(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000BD3B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000BDA70();
      goto LABEL_16;
    }

    sub_1000BDBCC(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BEB04(uint64_t a1)
{
  v2 = sub_1000A74C0(&qword_100136998, &qword_1000DD9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000BEB6C(void *a1)
{
  v2 = sub_1000A6D1C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppClips settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(&v9);

    sub_1000BF2DC(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BECD4(void *a1)
{
  v2 = sub_1000A6E80();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppInstallation settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BEE3C(void *a1)
{
  v2 = sub_1000A6FE4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAppRemoval settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BEFA4(void *a1)
{
  v2 = sub_1000A7148();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyBackgroundAppRefresh settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B4CAC(v9);

    sub_1000BF2DC(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000BF10C(uint64_t a1)
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

      sub_1000BE834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_1000BF1A4(void *a1, void *a2)
{
  if (a1[2] <= a2[2] >> 3)
  {

    sub_1000BCBDC(a1);
    v4 = a2;
  }

  else
  {

    v4 = sub_1000BCD08(a1, a2);
  }

  if (a2[2] <= a1[2] >> 3)
  {

    sub_1000BCBDC(a2);
  }

  else
  {

    sub_1000BCD08(a2, a1);
  }

  return v4;
}

uint64_t sub_1000BF26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A74C0(&qword_100136998, &qword_1000DD9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000BF330()
{
  v0 = objc_opt_self();
  [v0 gameCenterOtherPlayerTypesNone];
  [v0 gameCenterOtherPlayerTypesFriendsOnly];
  return [v0 gameCenterOtherPlayerTypesEveryone];
}

void sub_1000BF3B4(void *a1)
{
  v2 = sub_1000A9664();
  if (v2 != (v2 & 0xFF00) >> 8)
  {
    sub_1000BF330();
    v4 = v3;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2468(v5, qword_100136A28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying allowedOtherPlayerTypes settings: %{public}f", v8, 0xCu);
    }

    sub_1000B5108(v11);

    sub_1000C0424(v11);
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
    [a1 MCSetValueRestriction:v9 value:v10];
  }
}

void sub_1000BF53C(void *a1)
{
  v2 = sub_1000A97B4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyAddingFriends settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(&v9);

    sub_1000C0424(&v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF6A4(void *a1)
{
  v2 = sub_1000A9918();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyGameCenter settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF80C(void *a1)
{
  v2 = sub_1000A9A7C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyMultiplayerGaming settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BF974(void *a1)
{
  v2 = sub_1000A9BE0();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyNearbyMultiplayer settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFADC(void *a1)
{
  v2 = sub_1000A9D44();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyPrivateMessaging settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFC44(void *a1)
{
  v2 = sub_1000A9EA8();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockFriendsSharing settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFDAC(void *a1)
{
  v2 = sub_1000AA00C();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockProfile settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

void sub_1000BFF14(void *a1)
{
  v2 = sub_1000AA170();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying lockProfilePrivacy settings: %{BOOL,public}d", v7, 8u);
    }

    sub_1000B5108(v9);

    sub_1000C0424(v9);
    v8 = String._bridgeToObjectiveC()();

    [a1 MCSetBoolRestriction:v8 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000C007C()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000BF3B4(v0);
  sub_1000BF53C(v0);
  sub_1000BF6A4(v0);
  sub_1000BF80C(v0);
  sub_1000BF974(v0);
  sub_1000BFADC(v0);
  sub_1000BFC44(v0);
  sub_1000BFDAC(v0);
  sub_1000BFF14(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000C0190(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective GameCenter settings", v7, 2u);
  }

  v8 = sub_1000C007C();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

void sub_1000C0478(void *a1)
{
  v2 = sub_1000A90D4();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denyFaceTime settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = objc_opt_self();
    v9 = [v8 videoConferencingAllowed];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();

      v9 = v10;
    }

    v11 = v9;
    [a1 MCSetBoolRestriction:? value:?];
  }
}

void sub_1000C0638(void *a1)
{
  v2 = sub_1000A9238();
  if ((v2 & 1) != (v2 & 0x100) >> 8)
  {
    v3 = v2;
    if (qword_1001366C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2468(v4, qword_100136A28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Applying denySharePlay settings: %{BOOL,public}d", v7, 8u);
    }

    v8 = objc_opt_self();
    v9 = [v8 groupActivityAllowed];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [a1 MCSetBoolRestriction:v9 value:(v3 & 1) == 0];
  }
}

uint64_t sub_1000C07F4()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) init];
  sub_1000C0478(v0);
  sub_1000C0638(v0);
  v1 = v0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000C08D0(uint64_t a1, void *a2)
{
  if (qword_1001366C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2468(v4, qword_100136A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying effective FaceTime settings", v7, 2u);
  }

  v8 = sub_1000C07F4();
  if (*(v8 + 16))
  {
    sub_1000B3940(v8, a1, a2);
  }

  else
  {

    sub_1000B3940(0, a1, a2);
  }
}

uint64_t sub_1000C0B64()
{
  if (qword_100137088 != -1)
  {
    sub_1000C2EF0();
  }

  dispatch_sync(qword_100137090, &stru_10011E338);
  return dword_100137080;
}

void sub_1000C0BAC(id a1)
{
  if (!dword_100137080)
  {
    dword_100137080 = sub_1000C0C18("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_1000C0C18(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_1000C0D6C(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_1000C0DA4(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000C0DBC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_1000C0DE4(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_1000C0E74(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_1000C0EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

uint64_t sub_1000C0ED8()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_1000C0EF8(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

uint64_t sub_1000C0F54()
{

  return ccder_sizeof();
}

void *sub_1000C0F70()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_1000C0F88(size_t a1)
{

  return calloc(a1, 1uLL);
}

void sub_1000C0FC0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1048()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C10D0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1158()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C11E0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1268()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C12F0()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1378()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1400()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1488()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1510()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1598()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1620()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C16A8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1730()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C17B8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1840()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C18C8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1950()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C19D8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1A60()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1AE8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1B70()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1BF8()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1C80()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1D08(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MCProfileServiceServer.m" lineNumber:1903 description:@"mach_timebase_info not available"];
}

void sub_1000C1D74()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1DFC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1E84()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1F0C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C1F94(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSProxyPayloadHandler.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2010(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSProxyPayloadHandler.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

void sub_1000C208C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C2114()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C219C()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C2224()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C22AC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C2334()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C23BC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C2444()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C24CC()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C2554()
{
  sub_1000116FC();
  sub_1000116E8();
  sub_10001170C(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000C26CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCRelayPayloadHandler.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2748(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCRelayPayloadHandler.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

void sub_1000C2828(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCProfileServicer.m" lineNumber:216 description:@"Improper use. Entitlement required for call"];
}

void sub_1000C289C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCProfileServicer.m" lineNumber:253 description:@"Improper use. No array entitlement demanded from process."];
}

void sub_1000C2910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MCNewWiFiPayloadHandler.m" lineNumber:999 description:{@"MCNewWiFiPayloadHandler's new WiFi service %@ isn't in the new network set", a3}];
}

void sub_1000C2984(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2A40(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2B10(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2BCC(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2D14(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Caught exception %{public}@ while attempting to remove an account.", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1000C2DF8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSSettingsPayloadHandler.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"neProfileIngestionHandler"}];
}

void sub_1000C2E74(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCDNSSettingsPayloadHandler.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"payloadBase"}];
}

uint64_t sub_1000C2F04(int a1, uint64_t a2, int a3, int a4)
{
  v59 = 0;
  sub_1000C0D98();
  v57 = 0;
  __n = 0;
  v7 = sub_1000C0B64();
  if (v7)
  {
    v8 = v7;
    CFNumberGetTypeID();
    v9 = sub_1000C0D8C();
    if (!sub_1000C31F8(v9, v10, v11))
    {
      CFNumberGetTypeID();
      v12 = sub_1000C0D8C();
      if (!sub_1000C31F8(v12, v13, v14))
      {
        CFNumberGetTypeID();
        v15 = sub_1000C0D8C();
        if (!sub_1000C31F8(v15, v16, v17))
        {
          CFNumberGetTypeID();
          v18 = sub_1000C0D8C();
          if (!sub_1000C31F8(v18, @"EscrowPasscodePeriod", v19))
          {
            CFNumberGetTypeID();
            v20 = sub_1000C0D8C();
            if (!sub_1000C31F8(v20, @"EscrowTokenPeriod", v21))
            {
              CFDataGetTypeID();
              v22 = sub_1000C0D8C();
              if (!sub_1000C31F8(v22, v23, v24))
              {
                CFDataGetTypeID();
                v25 = sub_1000C0D8C();
                if (!sub_1000C31F8(v25, v26, v27))
                {
                  CFBooleanGetTypeID();
                  v28 = sub_1000C0D8C();
                  if (!sub_1000C31F8(v28, v29, v30))
                  {
                    CFBooleanGetTypeID();
                    v31 = sub_1000C0D8C();
                    if (!sub_1000C31F8(v31, v32, v33) && !sub_1000C0E64(&v57) && (!a2 || !sub_1000C34C4()) && !sub_1000C32F4(&v57, &v59, &__n))
                    {
                      sub_1000C0DBC(a1, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, __n);
                      v4 = sub_1000C0D6C(v8, 0x1Eu, v34, 3u, v35, v36, v37, v38, v43, v45);
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

  else
  {
    sub_1000C0D58();
    fprintf(v40, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v41, v46, v47, v48, v49, v50, v51, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_1000C0DE4(&v57);
  if (v59)
  {
    sub_1000C0DA4(v59, __n);
    free(v59);
  }

  return v4;
}

uint64_t sub_1000C31F8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_1000C0DD8();
        if (sub_1000C36D0(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_1000C0DD8();
        if (sub_1000C35A8())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_1000C0DD8();
        if (sub_1000C34C4())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000C32F4(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_1000C38D4);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1000C34C4()
{
  result = sub_1000C0FA0();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = sub_1000C0F54();
    if (sub_1000C0F88(v5))
    {
      sub_1000C0F1C();
      v6 = ccder_blob_encode_body();
      if (v6 && (sub_1000C0F48(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (sub_1000C0EA0(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), sub_1000C0E90(), sub_1000C0EF8(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), sub_1000C0E90(), v30 == v1) && (v31 = sub_1000C0F70()) != 0)
      {
        return sub_1000C0E74(v31);
      }

      else
      {
        sub_1000C0ED8();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000C35A8()
{
  result = sub_1000C0FA0();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = sub_1000C0F54();
    v4 = sub_1000C0F88(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_1000C0ECC(), sub_1000C0F30(), ccder_blob_encode_tl(), sub_1000C0ECC(), v6 == v5) && (v7 = sub_1000C0F70()) != 0)
      {
        return sub_1000C0E74(v7);
      }

      else
      {
        sub_1000C0ED8();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000C36D0(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(&v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_1000C0E90(), sub_1000C0F30(), ccder_blob_encode_tl(), sub_1000C0E90(), v16 == v14) && sub_1000C0F70())
      {
        result = sub_1000C0F3C();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_1000C38D4(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}