uint64_t sub_10007683C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  sub_100078668(a3);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_35:
    v7 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  std::string::reserve(a3, v7);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v6 = 15;
  while (4 * v8 != v6 >> 14)
  {
    v11 = v6 & 0xC;
    v12 = v6;
    if (v11 == v10)
    {
      v12 = sub_1000876A8(v6, a1, a2);
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v8)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignSubscript(position:)();
      if (v11 != v10)
      {
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v17[0] = a1;
      v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(v17 + v13);
      if (v11 != v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *(v14 + v13);
      if (v11 != v10)
      {
LABEL_24:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    v6 = sub_1000876A8(v6, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_11:
      v6 = (v6 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_12;
    }

LABEL_25:
    if (v8 <= v6 >> 16)
    {
      goto LABEL_34;
    }

    v6 = String.UTF8View._foreignIndex(after:)();
LABEL_12:
    std::string::push_back(a3, v15);
  }
}

uint64_t sub_100076A20(uint64_t *a1)
{
  if (*a1 == 42 && a1[1] == 0xE100000000000000)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

unint64_t sub_100076AA8()
{
  result = qword_10016B960;
  if (!qword_10016B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B960);
  }

  return result;
}

unint64_t *sub_100076AFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000780B4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_100076B8C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100077ED4(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100078634(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

void sub_100076D2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void *sub_100076D38(unint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
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
        goto LABEL_57;
      }

      if (v17 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        goto LABEL_11;
      }
    }

    v47 = v5;
    goto LABEL_54;
  }

LABEL_11:
  while (1)
  {
    v18 = *(v5 + 48);
    v60 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
    v21 = *v19;
    v20 = v19[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v22 = Hasher._finalize()();
    v11 &= v11 - 1;
    v23 = -1 << *(v4 + 32);
    v2 = v22 & ~v23;
    v5 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v5 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v24 = ~v23;
  while (1)
  {
    v25 = (v4[6] + 16 * v2);
    v26 = *v25 == v21 && v25[1] == v20;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v24;
    v5 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v4 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v5) & ~v3;
    v32 = v4[2];
    v58 = v2;
    *(v2 + 8 * v5) = v31;
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
        v4 = sub_100077CB0(v58, v54, v56, v4);
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
            v37 = *(v8 + 48);
            v60 = v27;
            v38 = (v37 + ((v27 << 10) | (16 * __clz(__rbit64(v11)))));
            v39 = *v38;
            v3 = v38[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v40 = Hasher._finalize()();
            v11 &= v11 - 1;
            v41 = -1 << *(v4 + 32);
            v5 = v40 & ~v41;
            v2 = v5 >> 6;
            v42 = 1 << v5;
            if (((1 << v5) & v61[v5 >> 6]) != 0)
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

          v43 = (v4[6] + 16 * v5);
          if (*v43 != v39 || v43[1] != v3)
          {
            v45 = ~v41;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v5 = (v5 + 1) & v45;
              v2 = v5 >> 6;
              v42 = 1 << v5;
              if (((1 << v5) & v61[v5 >> 6]) == 0)
              {
                v8 = v59;
                goto LABEL_45;
              }

              v46 = (v4[6] + 16 * v5);
              if (*v46 == v39 && v46[1] == v3)
              {
                break;
              }
            }
          }

          v8 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v42;
          v26 = (v34 & v42) == 0;
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

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
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
  v52 = sub_100077894(v50, v54, v4, v2, v62);

  if (!v51)
  {

    v8 = v62[0];
    v57 = v63;
    v4 = v52;
LABEL_51:
    v47 = v8;
LABEL_54:
    sub_100042570(v47);
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1000772B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_1000772BC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v56[0] = a1;
  v4 = *(a1 + 16);

  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = 0;
  v48 = 0;
  v6 = a1 + 32;
  v54 = a1;
  v55 = v2 + 7;
  v53 = a1 + 32;
  while (1)
  {
    v7 = v5;
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = v7 + 1;
    v13 = -1 << *(v2 + 32);
    v14 = v11 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v55[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_5:

    v5 = v12;
    v6 = v53;
    if (v12 == v4)
    {
      goto LABEL_40;
    }
  }

  v17 = (v2[6] + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v55[v14 >> 6]) == 0)
      {
        goto LABEL_5;
      }

      v20 = (v2[6] + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v21 = v12;
  v56[1] = v12;

  v23 = *(v2 + 32);
  v49 = ((1 << v23) + 63) >> 6;
  v24 = 8 * v49;
  v25 = v54;
  if ((v23 & 0x3Fu) <= 0xD)
  {
    goto LABEL_17;
  }

LABEL_44:
  v43 = v24;

  v44 = v43;
  if (swift_stdlib_isStackAllocationSafe())
  {

    v21 = v12;
LABEL_17:
    v50 = &v48;
    __chkstk_darwin(v22);
    v14 = &v48 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v14, v55, v26);
    v27 = v2[2];
    v28 = *(v14 + 8 * v15) & ~v16;
    v52 = v14;
    *(v14 + 8 * v15) = v28;
    v29 = v27 - 1;
    v30 = *(v25 + 16);
    while (1)
    {
      v51 = v29;
      if (v21 == v30)
      {
LABEL_39:
        v2 = sub_100077CB0(v52, v49, v51, v2);
LABEL_40:

        return v2;
      }

      v12 = v21;
      while (1)
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v12 >= *(v25 + 16))
        {
          goto LABEL_43;
        }

        v15 = v21;
        v32 = (v53 + 16 * v12);
        v33 = *v32;
        v16 = v32[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v34 = Hasher._finalize()();
        ++v12;
        v35 = -1 << *(v2 + 32);
        v36 = v34 & ~v35;
        v14 = v36 >> 6;
        v37 = 1 << v36;
        if (((1 << v36) & v55[v36 >> 6]) != 0)
        {
          break;
        }

LABEL_35:

LABEL_21:
        v25 = v54;
        v21 = v15;
        if (v12 == v30)
        {
          goto LABEL_39;
        }
      }

      v38 = (v2[6] + 16 * v36);
      if (*v38 != v33 || v38[1] != v16)
      {
        v40 = ~v35;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v36 = (v36 + 1) & v40;
          v14 = v36 >> 6;
          v37 = 1 << v36;
          if (((1 << v36) & v55[v36 >> 6]) == 0)
          {
            goto LABEL_35;
          }

          v41 = (v2[6] + 16 * v36);
          if (*v41 == v33 && v41[1] == v16)
          {
            break;
          }
        }
      }

      v31 = v52[v14];
      v52[v14] = v31 & ~v37;
      if ((v31 & v37) == 0)
      {
        goto LABEL_21;
      }

      v29 = v51 - 1;
      v25 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v21 = v12;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_40;
      }
    }
  }

  v45 = swift_slowAlloc();
  memcpy(v45, v55, v44);
  v46 = v48;
  v47 = sub_100077ACC(v45, v49, v2, v14, v56);

  if (!v46)
  {

    return v47;
  }

  __break(1u);
  return result;
}

void sub_10007775C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100077768(uint64_t result)
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

        sub_1000A3548(v12, v13);

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

unint64_t *sub_100077894(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_100077CB0(v31, a2, v30, a3);
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

unint64_t *sub_100077ACC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100077CB0(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_100077CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100026F94(&qword_10016B560, &qword_1001311D0);
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

unint64_t *sub_100077ED4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_100077CB0(v25, a2, v24, a4);
}

unint64_t *sub_1000780B4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100077CB0(v21, a2, v22, v19);
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078228(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B8A8);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_100078504()
{
  result = qword_10016B970;
  if (!qword_10016B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B970);
  }

  return result;
}

void **sub_100078558(void **a1)
{
  v3 = a1;
  sub_100078674(&v3, sub_10001F244);
  return a1;
}

void **sub_1000785A4(void **a1)
{
  v3 = a1;
  sub_100078674(&v3, sub_10002BE98);
  return a1;
}

uint64_t sub_1000785F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_100078634@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  result = sub_100077ED4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_100078668(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_100078674(void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000786CC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B980);
  sub_10002FD14(v0, qword_10016B980);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100078788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100026F94(&qword_10016BA48, &unk_100131630);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for RateLimitInfo(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for MonotonicTime();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100078960, v3, 0);
}

uint64_t sub_100078960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = v3;
  if (qword_10016A4B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B980);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[2];
    v7 = v3[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v21);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "checkRateLimits", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[18];
  v13 = v3[15];
  v14 = v3[16];
  v15 = v3[5];
  (*(v14 + 16))(v3[17], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  static MonotonicTime.now.getter();
  sub_100026F50((v15 + 112), *(v15 + 136));
  v16 = swift_task_alloc();
  v3[20] = v16;
  *v16 = v3;
  v16[1] = sub_100078BD0;
  v17 = v3[6];
  v18 = v3[2];
  v19 = v3[3];

  return sub_10003A070(v17, v18, v19);
}

uint64_t sub_100078BD0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100079270;
  }

  else
  {
    v4 = sub_100078CFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100078CFC()
{
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[5];
    sub_10007A8A8(v1);
    sub_100026F50((v2 + 112), *(v2 + 136));
    MonotonicTime.timeInterval.getter();
    v4 = v3;
    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v6 = sub_10007A284;
LABEL_5:
    v5[1] = v6;
    v9 = v0[2];
    v8 = v0[3];

    return sub_10003B500(v9, v8, v4);
  }

  sub_10007A910(v1, v0[9]);
  RateLimit.window.getter();
  static MonotonicTime.+ infix(_:_:)();
  if (static MonotonicTime.< infix(_:_:)())
  {
    sub_100026F50((v0[5] + 112), *(v0[5] + 136));
    MonotonicTime.timeInterval.getter();
    v4 = v7;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v6 = sub_100079370;
    goto LABEL_5;
  }

  if (*(v0[9] + *(v0[7] + 24)) <= 0.0)
  {
    result = static MonotonicTime.< infix(_:_:)();
    if (result)
    {
      sub_100026F50((v0[5] + 112), *(v0[5] + 136));
      MonotonicTime.timeInterval.getter();
      v4 = v17;
      v5 = swift_task_alloc();
      v0[28] = v5;
      *v5 = v0;
      v6 = sub_100079A2C;
      goto LABEL_5;
    }

    v24 = *(v0[9] + *(v0[7] + 20));
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
    }

    else
    {
      v26 = v0[5];
      v27 = RateLimit.capacity.getter();
      sub_100026F50((v26 + 112), *(v26 + 136));
      if (v25 < 1 || v27 >= v25)
      {
        v29 = swift_task_alloc();
        v0[32] = v29;
        *v29 = v0;
        v29[1] = sub_10007A030;
        v31 = v0[2];
        v30 = v0[3];

        return sub_10003BF08(v31, v30);
      }

      else
      {
        RateLimit.delay.getter();
        v33 = v32;
        v34 = swift_task_alloc();
        v0[30] = v34;
        *v34 = v0;
        v34[1] = sub_100079C80;
        v36 = v0[2];
        v35 = v0[3];

        return sub_10003C7D0(v36, v35, v33);
      }
    }
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    static MonotonicTime.+ infix(_:_:)();
    sub_10007AA24();
    v14 = dispatch thunk of static Comparable.> infix(_:_:)();
    v15 = *(v12 + 8);
    v0[24] = v15;
    v0[25] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v13);
    if (v14)
    {
      sub_100026F50((v0[5] + 112), *(v0[5] + 136));
      MonotonicTime.timeInterval.getter();
      v4 = v16;
      v5 = swift_task_alloc();
      v0[26] = v5;
      *v5 = v0;
      v6 = sub_1000796E8;
      goto LABEL_5;
    }

    v18 = v0[13];
    v20 = v0[9];
    v19 = v0[10];
    sub_10007A9D0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v15(v18, v19);
    sub_10007A974(v20);
    v22 = v0[19];
    v15(v0[14], v0[10]);
    sub_10007A5CC("checkRateLimits", 15, 2, v22);

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_100079270()
{
  v1 = v0[19];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100079370()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1000795C0;
  }

  else
  {
    v4 = sub_10007949C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007949C()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[19];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000795C0()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[19];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000796E8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10007991C;
  }

  else
  {
    v4 = sub_100079814;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100079814()
{
  v1 = *(v0 + 72);
  (*(v0 + 192))(*(v0 + 104), *(v0 + 80));
  sub_10007A974(v1);
  v2 = *(v0 + 152);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 80));
  sub_10007A5CC("checkRateLimits", 15, 2, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10007991C()
{
  v1 = *(v0 + 72);
  (*(v0 + 192))(*(v0 + 104), *(v0 + 80));
  sub_10007A974(v1);
  v2 = *(v0 + 152);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 80));
  sub_10007A5CC("checkRateLimits", 15, 2, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100079A2C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100079B58;
  }

  else
  {
    v4 = sub_10007949C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100079B58()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[19];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100079C80()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100079F08;
  }

  else
  {
    v4 = sub_100079DAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100079DAC(uint64_t a1)
{
  v2 = v1[13];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  sub_10007A9D0();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();
  v7 = *(v3 + 8);
  v7(v2, v4);
  sub_10007A974(v5);
  v8 = v1[19];
  v7(v1[14], v1[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100079F08()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[19];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007A030()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10007A15C;
  }

  else
  {
    v4 = sub_10007AA7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007A15C()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[19];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007A284()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10007A4A8;
  }

  else
  {
    v4 = sub_10007A3B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007A3B0()
{
  v1 = v0[19];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007A4A8()
{
  v1 = v0[19];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007A5CC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B980);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007A8A8(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BA48, &unk_100131630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A974(uint64_t a1)
{
  v2 = type metadata accessor for RateLimitInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007A9D0()
{
  result = qword_10016BA50;
  if (!qword_10016BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA50);
  }

  return result;
}

unint64_t sub_10007AA24()
{
  result = qword_10016BA58;
  if (!qword_10016BA58)
  {
    type metadata accessor for MonotonicTime();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA58);
  }

  return result;
}

uint64_t sub_10007AA90(uint64_t a1, void *a2)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return static AccessType.delete.getter();
      }

      goto LABEL_8;
    }

    return static AccessType.update.getter();
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 3)
      {
        return static AccessType.insert.getter();
      }

LABEL_8:
      v3 = a1;
      _StringGuts.grow(_:)(26);

      v5._countAndFlagsBits = hsql.StatementType.description.getter(v3);
      String.append(_:)(v5);

      sub_100076AA8();
      result = swift_willThrowTypedImpl();
      *a2 = 0xD000000000000018;
      a2[1] = 0x800000010013B360;
      return result;
    }

    return static AccessType.select.getter();
  }
}

void *sub_10007AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A648 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_10007ABF0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_100173640);
  v1 = sub_10002FD14(v0, qword_100173640);
  if (qword_10016A548 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007ACB8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v20 = a3;
  v26 = type metadata accessor for OSSignpostID();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10002FD14(v6, qword_100173640);
  (*(v7 + 16))(v9, v10, v6);
  static OSSignpostID.exclusive.getter();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  v14 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v14, "SQLAnalyzer.analyze", "", v11, 2u);
  v15 = v22;
  sub_10007AFBC(a1, v21, v24);
  if (v15)
  {
  }

  else
  {
    v16 = static os_signpost_type_t.end.getter();
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v16, v17, "SQLAnalyzer.analyze", "", v11, 2u);

    sub_10002ABE8(v25, v24);
    sub_10002AAE4(v24);

    sub_10002ABE8(v20, v25);
    sub_10002AAE4(v25);
  }

  (*(v23 + 8))(v5, v26);
  return (*(v7 + 8))(v9, v6);
}

void **sub_10007AFBC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  sub_10007B2E4(a3);
  memset(&__str, 0, sizeof(__str));
  sub_100078668(&__str);
  memset(v20, 0, sizeof(v20));
  sub_10001050C(v20);

  sub_10007683C(a1, a2, &v18);
  v7 = sub_10001093C(v20, &v18, a3, &__str);
  std::string::~string(&v18);
  if (v7)
  {
    if (qword_10016A4B8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_100173618, qword_100173630);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x800000010013B3A0;
    v9._countAndFlagsBits = 0xD00000000000002BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v10 = sub_10001E078(a3);
    v19 = &type metadata for Int64;
    v18.__r_.__value_.__r.__words[0] = v10;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v18);
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_10001062C(v20);
    return sub_10007B304(&__str);
  }

  else
  {
    v13 = std::string::basic_string(v8, &__str);
    sub_10002EFB0(v13);
    sub_10002EFC4(&v18);
    v14 = static String._fromUTF8Repairing(_:)();
    v16 = v15;
    std::string::~string(&v18);
    sub_100076AA8();
    swift_allocError();
    *v17 = v14;
    v17[1] = v16;
    swift_willThrow();
    sub_10001062C(v20);
    sub_10007B304(&__str);
    return sub_10002AAE4(a3);
  }
}

double sub_10007B2E4(uint64_t a1)
{
  *(a1 + 4) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10007B304(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10007B338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10007B380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007B3CC()
{
  v0 = type metadata accessor for ErrorCode.SQL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ErrorCode.SQL.analyzer(_:), v0);
  v4 = ErrorCode.SQL.errorCode.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10007B4B8(uint64_t *a1, void *a2)
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

unint64_t sub_10007B4E8()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD000000000000014;
}

uint64_t sub_10007B570(uint64_t a1)
{
  v2 = sub_10007B704();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10007B5AC(uint64_t a1)
{
  v2 = sub_10007B704();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_10007B5F0()
{
  result = qword_10016BA60;
  if (!qword_10016BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA60);
  }

  return result;
}

unint64_t sub_10007B648()
{
  result = qword_10016BA68;
  if (!qword_10016BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA68);
  }

  return result;
}

unint64_t sub_10007B6A0()
{
  result = qword_10016BA70;
  if (!qword_10016BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA70);
  }

  return result;
}

unint64_t sub_10007B704()
{
  result = qword_10016BA78;
  if (!qword_10016BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA78);
  }

  return result;
}

uint64_t sub_10007B758@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-1] - v3;
  Connection.currentClientContext.getter();
  if (v14)
  {
    sub_100026F94(&qword_10016BAD0, &qword_100131818);
    v5 = type metadata accessor for RequestContext(0);
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    v8 = *(v7 + 56);
    v8(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      sub_10007BEF4(v4, a1);
      return (v8)(a1, 0, 1, v5);
    }
  }

  else
  {
    sub_10002BA6C(v13, &qword_10016BAC8, &unk_100131808);
    v10 = type metadata accessor for RequestContext(0);
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  sub_10002BA6C(v4, &qword_10016BAC0, &qword_100131800);
  if ((static Utils.isUnderTest.getter() & 1) == 0)
  {
    if (qword_10016A648 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100026F50(v13, v14);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100026FDC(v13);
  }

  v11 = type metadata accessor for RequestContext(0);
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t type metadata accessor for RequestContext(uint64_t a1)
{
  result = qword_10016BB30;
  if (!qword_10016BB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007BAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, qword_10016BA80);
}

uint64_t sub_10007BB50()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016BAA8);
  v1 = sub_10002FD14(v0, qword_10016BAA8);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007BC18(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016BAA8);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007BEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessCredential();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007C02C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessCredential();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007C0D0(uint64_t a1)
{
  result = type metadata accessor for AccessCredential();
  if (v2 <= 0x3F)
  {
    result = sub_10007C1A4(319, &qword_10016BB40, &protocol descriptor for ConnectionDelegate, 0);
    if (v3 <= 0x3F)
    {
      result = sub_10007C1A4(319, &unk_10016BB48, &protocol descriptor for DatabaseConnectionManager, 1);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10007C1A4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007C200(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = *(a4 + 16);
    if (v6)
    {
      sub_10007E9EC(0, v6, 0);
      v8 = (a4 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        v11._countAndFlagsBits = v9;
        v11._object = v10;
        String.append(_:)(v11);
        v12._countAndFlagsBits = a1;
        v12._object = a2;
        String.append(_:)(v12);

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10007E9EC((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        v15[4] = a1;
        v15[5] = a2;
        v8 += 2;
        --v6;
      }

      while (v6);
    }

    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
    v17 = BidirectionalCollection<>.joined(separator:)();

    return v17;
  }

  else
  {
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
    return BidirectionalCollection<>.joined(separator:)();
  }
}

uint64_t sub_10007C3FC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10007C420, 0, 0);
}

uint64_t sub_10007C420()
{
  sub_100026F50(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_10004FB7C(v1, &off_100164E30))
  {
    v5 = *(v0 + 8);

    return v5(v2);
  }

  else
  {
    sub_100026F50(*(v0 + 40), *(*(v0 + 40) + 24));
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_10007C554;

    return sub_10008512C();
  }
}

uint64_t sub_10007C554(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;

    return _swift_task_switch(sub_10007C6B4, 0, 0);
  }
}

uint64_t sub_10007C6B4()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v2 = Connection.key<A>(_:db:)();
  v3 = sub_1000822A0(*(v0 + 16), *(v0 + 24));
  v4 = *(v0 + 8);
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_10007C770()
{
  if (Connection.isServiceConnection.getter())
  {
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A>(_:deterministic:_:)();
    Connection.createFunction<A>(_:deterministic:_:)();

    if (!v1)
    {

      swift_allocObject();
      swift_weakInit();
      default argument 1 of Connection.createFunction<A>(_:deterministic:_:)();
      Connection.createFunction<A>(_:deterministic:_:)();

      v0 = sub_100081E3C();
      swift_allocObject();
      swift_weakInit();

      default argument 1 of Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
      Connection.createFunction<A, B, C, D>(_:deterministic:_:)();

      swift_allocObject();
      swift_weakInit();
      default argument 1 of Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
      Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
    }
  }

  return v0;
}

uint64_t sub_10007CACC(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10007CB04@<X0>(void *a2@<X8>)
{
  v3 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_10007B758(v5);

  v7 = type metadata accessor for RequestContext(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    result = sub_10002BA6C(v5, &qword_10016BAC0, &qword_100131800);
LABEL_4:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  sub_10004F224(v5, v10);
  sub_100082184(v5);
  v9 = v10[0];
  v8 = v10[1];

  result = sub_100042AFC(v10);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t sub_10007CC50@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for AccessCredential();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_10007B758(v9);

  v11 = type metadata accessor for RequestContext(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    result = sub_10002BA6C(v9, &qword_10016BAC0, &qword_100131800);
LABEL_4:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  (*(v4 + 16))(v6, &v9[*(v11 + 20)], v3);
  sub_100082184(v9);
  v12 = AccessCredential.requestId.getter();
  v14 = v13;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_10007CE4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10007B758(v11);
    v18 = type metadata accessor for RequestContext(0);
    if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
    {

      result = sub_10002BA6C(v11, &qword_10016BAC0, &qword_100131800);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_100082184(v11);
      a4(v17, v12, v13, v14, v15);
      swift_unknownObjectRelease();
    }
  }

  *a5 = 1;
  return result;
}

uint64_t sub_10007CFE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BOOL8 *a5@<X8>)
{
  v25 = a5;
  v8 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RequestContext(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_5;
  }

  sub_10007B758(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    result = sub_10002BA6C(v10, &qword_10016BAC0, &qword_100131800);
    v24 = 0;
    goto LABEL_6;
  }

  sub_10007BEF4(v10, v14);
  v20 = *(v11 + 20);
  v21 = sub_100026F50(&v14[*(v11 + 28)], *&v14[*(v11 + 28) + 24]);
  v22 = sub_100080B08(v15, v16, v17, v18, v19, v14, *v21, &v14[v20]);
  result = sub_100082184(v14);
  v24 = v22;
LABEL_6:
  *v25 = v24;
  return result;
}

uint64_t sub_10007D1FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char **a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for RequestContext(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = a1[1];
  v21 = *a2;
  v20 = a2[1];
  v56 = v18;
  v57 = v21;
  v58 = v20;
  v22 = *a3;
  v23 = a3[1];
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_16:
    result = sub_10002BA6C(v13, &qword_10016BAC0, &qword_100131800);
    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_27:
    *a5 = v39;
    a5[1] = v40;
    return result;
  }

  sub_10007B758(v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_16;
  }

  sub_10007BEF4(v13, v17);
  v54 = v17;
  v24 = AccessCredential.ownershipList.getter();
  v63 = v22;
  v64 = v23;
  v60 = 47;
  v61 = 0xE100000000000000;
  sub_10002C5B0();
  v25 = StringProtocol.components<A>(separatedBy:)();
  v26 = 0;
  v53 = 0;
  v27 = *(v25 + 16);
  v28 = _swiftEmptyArrayStorage;
  v55 = v19;
LABEL_4:
  v29 = (v25 + 40 + 16 * v26);
  while (v27 != v26)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
LABEL_25:
      TaskLocal.get()();
      sub_100026F50(&v63, v65);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v47._object = 0x800000010013B4A0;
      v47._countAndFlagsBits = 0xD00000000000001FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      v62 = &type metadata for String;
      v60 = v56;
      v61 = v19;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v60, &qword_10016AB10, &unk_100130B10);
      v48._countAndFlagsBits = 0x65686373206E6920;
      v48._object = 0xEB0000000020616DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      v62 = &type metadata for String;
      v60 = v57;
      v61 = v58;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v60, &qword_10016AB10, &unk_100130B10);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100026FDC(&v63);
      v44 = v54;
      v50 = *v54;
      v63 = 47;
      v64 = 0xE100000000000000;
      String.append(_:)(v50);
      v51._countAndFlagsBits = 47;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v39 = v63;
      v40 = v64;
      goto LABEL_26;
    }

    ++v26;
    v30 = *(v29 - 1);
    v31 = *v29;
    v29 += 2;
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v52 = v24;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v28;
      v34 = a5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10007E9EC(0, *(v28 + 2) + 1, 1);
        v28 = v63;
      }

      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      if (v36 >= v35 >> 1)
      {
        sub_10007E9EC((v35 > 1), v36 + 1, 1);
        v28 = v63;
      }

      *(v28 + 2) = v36 + 1;
      v37 = &v28[16 * v36];
      *(v37 + 4) = v30;
      *(v37 + 5) = v31;
      a5 = v34;
      v19 = v55;
      v24 = v52;
      goto LABEL_4;
    }
  }

  v63 = v24;
  sub_10007FDCC(v28);
  v41 = sub_1000817CC(v63);

  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = sub_10007E850(*(v41 + 16), 0, &qword_10016AB20, &unk_100130B30);
    v19 = sub_100080804(&v63, v43 + 4, v42, v41);
    sub_100042570(v63);
    v44 = v54;
    if (v19 != v42)
    {
      goto LABEL_29;
    }

    v19 = v55;
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
    v44 = v54;
  }

  v63 = v43;

  v45 = v53;
  sub_10007F2F4(&v63);
  if (!v45)
  {

    if (!*(v63 + 16))
    {

      if (qword_10016A648 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v39 = sub_10007C200(47, 0xE100000000000000, 1, v63);
    v40 = v46;

LABEL_26:
    result = sub_100082184(v44);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007D888(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  _StringGuts.grow(_:)(18);

  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 656419879;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 2108455;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a5;
  v16._object = a6;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(literal:)();
}

uint64_t sub_10007D9F0()
{
  sub_100026F94(&qword_10016BBC8, &unk_1001318B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100131220;
  v1 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v24 = v1;
  v2 = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
  v25 = v2;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.creationTime.getter();
  v3 = static Date.declaredDatatype.getter();
  v5 = v4;
  v6 = type metadata accessor for Date();
  v21 = v6;
  v7 = sub_100082558(&qword_10016BBE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v7;
  sub_100042BAC(&v20);
  static Date.now.getter();
  sub_10002C604(&v23, v0 + 32);
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_1000825A0;
  *(v0 + 104) = 0;
  sub_10002C604(&v20, v0 + 112);
  v24 = v1;
  v25 = v2;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.modificationTime.getter();
  v8 = static Date.declaredDatatype.getter();
  v10 = v9;
  v21 = v6;
  v22 = v7;
  sub_100042BAC(&v20);
  static Date.now.getter();
  sub_10002C604(&v23, v0 + 152);
  *(v0 + 192) = v8;
  *(v0 + 200) = v10;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_1000825A0;
  *(v0 + 224) = 0;
  sub_10002C604(&v20, v0 + 232);
  v11 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v24 = v11;
  v12 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v25 = v12;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.bundleIds.getter();
  v13 = static String.declaredDatatype.getter();
  v15 = v14;
  *(v0 + 376) = &type metadata for String;
  *(v0 + 384) = &protocol witness table for String;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  sub_10002C604(&v23, v0 + 272);
  *(v0 + 312) = v13;
  *(v0 + 320) = v15;
  *(v0 + 328) = 0;
  *(v0 + 336) = sub_10007DD88;
  *(v0 + 344) = 0;
  v24 = v11;
  v25 = v12;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.requestIds.getter();
  v16 = static String.declaredDatatype.getter();
  v18 = v17;
  *(v0 + 496) = &type metadata for String;
  *(v0 + 504) = &protocol witness table for String;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0xE000000000000000;
  result = sub_10002C604(&v23, v0 + 392);
  *(v0 + 432) = v16;
  *(v0 + 440) = v18;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_10007DE44;
  *(v0 + 464) = 0;
  qword_100173658 = v0;
  return result;
}

uint64_t sub_10007DCC8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  a1[4] = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
  sub_100042BAC(a1);
  sub_10002B95C(&qword_10016BBE8, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
  return static ExpressionType<>.currentTimestamp.getter();
}

uint64_t sub_10007DD88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  a5[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  sub_100042BAC(a5);
  return sub_10007D888(a1, a2, a3, a4, 10023, 0xE200000000000000);
}

uint64_t sub_10007DE44@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  a1[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  sub_100042BAC(a1);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(literal:)();
}

char *sub_10007DF24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BB80, &unk_100131840);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10007E054(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
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

void *sub_10007E18C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100026F94(a5, a6);
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

void *sub_10007E36C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBF8, &unk_1001318E0);
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
    sub_100026F94(&qword_10016B728, &unk_1001313B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007E4A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBA0, &unk_100131870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007E5C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016A948, &unk_100131880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007E714(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100026F94(&qword_10016BC00, &qword_100131948);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 80);
  return v4;
}

void *sub_10007E7A4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100026F94(&qword_10016BC08, &unk_100131950);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 + 31;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 6);
  return v4;
}

void *sub_10007E850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100026F94(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v8 = v7 - 32;
  if (v7 < 32)
  {
    v8 = v7 - 17;
  }

  v6[2] = a1;
  v6[3] = 2 * (v8 >> 4);
  return v6;
}

void *sub_10007E8CC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100026F94(&qword_10016BB88, &qword_100131858);
  v4 = *(type metadata accessor for ForwardDeletionRules() - 8);
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

char *sub_10007E9CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007EAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007E9EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007EBB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007ECC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007EDFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007EA4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007EF48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007F070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007F1A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007EAAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBB8, &qword_1001318A8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10007EBB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
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

void *sub_10007ECC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BB90, &qword_100131860);
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
    sub_100026F94(&qword_10016BB98, &qword_100131868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007EDFC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBA8, &qword_100131890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016BBB0, &qword_100131898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007EF48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBC8, &unk_1001318B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007F070(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBF0, &unk_1001318D0);
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
    sub_100026F94(&qword_10016B730, &qword_1001321B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007F1A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016A948, &unk_100131880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10007F2F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10007F360(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10007F360(uint64_t *a1)
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
      sub_10007F528(v7, v8, a1, v4);
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
    return sub_10007F458(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007F458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

uint64_t sub_10007F528(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_10007FDB8(v8);
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
        sub_10007FB04((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
      result = sub_10007DF24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10007DF24((v39 > 1), v40 + 1, 1, v8);
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
        sub_10007FB04((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10007FDB8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10007FD2C(v44);
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

uint64_t sub_10007FB04(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_10007FD2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007FDB8(v3);
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

char *sub_10007FDCC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10007E054(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007FEC0(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10007E36C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = (v9 - v11);
  result = sub_10008095C(&v49, &v4[4 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
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
LABEL_49:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v52 = v23;
          v53 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v49;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = v4[2];
  v13 = v50;
  v14 = v51;
  v2 = v52;
  v48 = v50;
  v45 = v51;
  if (!v53)
  {
    goto LABEL_19;
  }

  v19 = (v53 - 1) & v53;
  v20 = __clz(__rbit64(v53)) | (v52 << 6);
  v21 = (v51 + 64) >> 6;
LABEL_27:
  v26 = 16 * v20;
  v47 = result;
  v27 = (result[6] + 16 * v20);
  v29 = *v27;
  v28 = v27[1];
  v30 = (result[7] + v26);
  v32 = *v30;
  v31 = v30[1];

  v33 = v48;
LABEL_29:
  while (1)
  {
    v34 = v4[3];
    v35 = v34 >> 1;
    if ((v34 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v35)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v6;
  }

  v43 = sub_10007E36C((v34 > 1), v6 + 1, 1, v4);
  v33 = v48;
  v4 = v43;
  v35 = v43[3] >> 1;
  if (v6 >= v35)
  {
    goto LABEL_28;
  }

LABEL_31:
  v46 = v35;
  while (1)
  {
    v36 = &v4[4 * v6 + 4];
    *v36 = v29;
    v36[1] = v28;
    v36[2] = v32;
    v36[3] = v31;
    ++v6;
    if (!v19)
    {
      break;
    }

    result = v47;
LABEL_39:
    v39 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v40 = (v2 << 10) | (16 * v39);
    v41 = (result[6] + v40);
    v29 = *v41;
    v28 = v41[1];
    v42 = (result[7] + v40);
    v32 = *v42;
    v31 = v42[1];

    v33 = v48;
    if (v6 == v46)
    {
      v6 = v46;
      v4[2] = v46;
      goto LABEL_29;
    }
  }

  v37 = v2;
  result = v47;
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v38 >= v21)
    {
      break;
    }

    v19 = *(v33 + 8 * v38);
    ++v37;
    if (v19)
    {
      v2 = v38;
      goto LABEL_39;
    }
  }

  if (v21 <= v2 + 1)
  {
    v44 = v2 + 1;
  }

  else
  {
    v44 = v21;
  }

  v51 = v45;
  v52 = v44 - 1;
  v53 = 0;
  v4[2] = v6;
LABEL_13:
  result = sub_100042570(result);
  *v1 = v4;
  return result;
}

void *sub_1000801B0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(0);
  sub_100082558(&qword_10016A8B8, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__, &unk_1001308B0);
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v9 = v17;
    v7 = v18;
LABEL_12:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v18;
    v8 = 1;
    while (1)
    {
      v9 = v17;
      v12 = v7;
      v13 = v17;
      if (sub_10002A2A4(&v13, &v12))
      {
        break;
      }

      v13 = v9;
      v10 = sub_10002A1D0(&v13);
      sub_10002A33C(__dst, v10);
      v13 = v9;
      sub_10002A428(&v13);
      v17 = v13;
      sub_10002A694(v15, __dst);
      sub_10001B428(__dst);
      sub_10002A694(a2, v15);
      sub_10001B428(v15);
      if (a3 == v8)
      {
        goto LABEL_11;
      }

      a2 += 80;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10008030C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__(0);
  sub_100082558(&qword_10016A828, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__, &unk_1001301B8);
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v9 = v17;
    v7 = v18;
LABEL_12:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v18;
    v8 = 1;
    while (1)
    {
      v9 = v17;
      v12 = v7;
      v13 = v17;
      if (sub_10002A2A4(&v13, &v12))
      {
        break;
      }

      v13 = v9;
      v10 = sub_10002A1D0(&v13);
      sub_10002A1F8(v14, v10);
      v13 = v9;
      sub_10002A294(&v13);
      v17 = v13;
      sub_10002B9C8(v15, v14);
      sub_10001BBEC(v14);
      sub_10002B9C8(a2, v15);
      sub_10001BBEC(v15);
      if (a3 == v8)
      {
        goto LABEL_11;
      }

      a2 += 64;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_100080460(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100080560(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for ForwardDeletionRules();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100080804(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10008095C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_100080B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v56 = a6;
  v46 = a5;
  v57 = a4;
  v58 = a3;
  v53 = a1;
  v54 = a2;
  v48 = type metadata accessor for AccessCredential.Error();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DataSpecification();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DataSpecification.Namespace.Table();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSSignpostID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v63 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v64 = &off_100164E98;
  v62[0] = a7;
  v23 = qword_10016A4D0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  sub_10002FD14(v24, qword_10016BAA8);
  static OSSignpostID.exclusive.getter();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "shouldEvictRow", "", v27, 2u);
  }

  (*(v17 + 16))(v20, v22, v16);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v17 + 8))(v22, v16);
  v30 = *sub_100026F50(v62, v63);
  os_unfair_lock_lock((v30 + 120));
  v31 = *(v30 + 128);
  sub_100026F50((v30 + 136), *(v30 + 160));
  v32 = type metadata accessor for ConfigurationStoreImplementation();
  v33 = sub_10004FD58(v32);
  os_unfair_lock_unlock((v30 + 120));
  if (v31 >= v33)
  {
    if (qword_10016A4C8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016BA80, qword_10016BA98);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    v35 = 1;
  }

  else
  {
    sub_100026F50(v62, v63);
    v34 = v57;
    if (sub_100052C98(v58, v57, v56))
    {
      if (qword_10016A4C8 != -1)
      {
        swift_once();
      }

      sub_100026F50(qword_10016BA80, qword_10016BA98);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      v35 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._object = 0x800000010013B560;
      v36._countAndFlagsBits = 0xD000000000000028;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      v61 = &type metadata for String;
      v59 = v58;
      v60 = v34;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v59, &qword_10016AB10, &unk_100130B10);
      v37._countAndFlagsBits = 0xD00000000000002DLL;
      v37._object = 0x800000010013B590;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      LogMessage.init(stringInterpolation:)();
      Logger.warning(_:)();
    }

    else
    {
      AccessCredential.dataSpecification.getter();
      _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
      (*(v50 + 8))(v11, v52);
      v38 = DataSpecification.Namespace.Table.rowLimit.getter();
      (*(v44 + 8))(v13, v45);
      v35 = v38 <= v46;
      if (v38 <= v46)
      {
        v56 = v29;
        if (qword_10016A4C8 != -1)
        {
          swift_once();
        }

        sub_100026F50(qword_10016BA80, qword_10016BA98);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_10012FA10;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v39._countAndFlagsBits = 0xD000000000000015;
        v39._object = 0x800000010013B510;
        LogMessage.StringInterpolation.appendLiteral(_:)(v39);
        v61 = &type metadata for Int;
        v59 = v38;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v59, &qword_10016AB10, &unk_100130B10);
        v40._countAndFlagsBits = 0x62617420726F6620;
        v40._object = 0xEC000000203A656CLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v40);
        v61 = &type metadata for String;
        v59 = v53;
        v60 = v54;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v59, &qword_10016AB10, &unk_100130B10);
        v41._countAndFlagsBits = 0x65686373206E6920;
        v41._object = 0xEC000000203A616DLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v41);
        v61 = &type metadata for String;
        v59 = v58;
        v60 = v57;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v59, &qword_10016AB10, &unk_100130B10);
        v42._object = 0x800000010013B530;
        v42._countAndFlagsBits = 0xD000000000000028;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        LogMessage.init(stringInterpolation:)();
        Logger.debug(_:)();

        v35 = 1;
        v29 = v56;
      }
    }
  }

  sub_10007BC18("shouldEvictRow", 14, 2, v29);

  sub_100026FDC(v62);
  return v35;
}

uint64_t sub_100081580(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _NSRange(0);
  sub_100082558(&qword_10016BBC0, type metadata accessor for _NSRange, &protocol conformance descriptor for _NSRange);
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_100054AD4(v5, *(v4 - 1), *v4);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100081630(uint64_t a1)
{
  v2 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100082558(&qword_10016B570, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
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
      sub_100054D40(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000817CC(uint64_t a1)
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

      sub_100054BF0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100081864(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100082558(&qword_10016A768, type metadata accessor for URLResourceKey, &unk_10012FF48);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100055028(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100081920(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0 && (Connection.isServiceConnection.getter() & 1) == 0)
  {
    Connection.busyTimeout.getter();
    Connection.setBusyTimeout(_:)(v7);
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(149);
    v8._object = 0x800000010013B640;
    v8._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v8);
    sub_100026F50(a1, a1[3]);
    v9 = type metadata accessor for ConfigurationStoreImplementation();
    LODWORD(v27[0]) = sub_10004FEF0(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD00000000000001ALL;
    v11._object = 0x800000010013B660;
    String.append(_:)(v11);
    sub_100026F50(a1, a1[3]);
    LODWORD(v27[0]) = sub_10004FFBC(v9);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v13._object = 0x800000010013B680;
    String.append(_:)(v13);
    sub_100026F50(a1, a1[3]);
    v14._countAndFlagsBits = sub_100050154(v9);
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = 0x800000010013B6A0;
    String.append(_:)(v15);
    sub_100026F50(a1, a1[3]);
    v16._countAndFlagsBits = sub_100050238(v9);
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0xD000000000000022;
    v17._object = 0x800000010013B6C0;
    String.append(_:)(v17);
    sub_100026F50(a1, a1[3]);
    LODWORD(v27[0]) = sub_100050318(v9);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 59;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    Connection.execute(_:)(v20);
    if (v21)
    {

      if (qword_10016A648 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100026F50(v28, v28[3]);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0xD000000000000036;
      v22._object = 0x800000010013B6F0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      swift_getErrorValue();
      v27[3] = v26;
      v23 = sub_100042BAC(v27);
      (*(*(v26 - 8) + 16))(v23);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v27, &qword_10016AB10, &unk_100130B10);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100026FDC(v28);
      swift_willThrow();
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_100081E3C()
{
  swift_allocObject();
  swift_weakInit();
  default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
  Connection.createFunction<A, B, C>(_:deterministic:_:)();

  if (!v1)
  {

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();
  }

  return v0;
}

uint64_t sub_100082184(uint64_t a1)
{
  v2 = type metadata accessor for RequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000822A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000822F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v18 = a5;
  if (qword_10016A4D8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = qword_100173658;
    v8 = *(qword_100173658 + 16);
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = qword_100173658 + 104;
    while (v9 < *(v7 + 16))
    {
      sub_100026EEC(v10 - 72, v17);
      v11 = *(v10 - 8);

      v11(v16, a2, a3, a4, v18);

      TableBuilder.column(_:datatype:isPrimaryKey:isUnique:isNullable:defaultValue:)();

      if (v6)
      {
        sub_10002BA6C(v16, &qword_10016B708, &unk_100133390);
        return sub_100026FDC(v17);
      }

      ++v9;
      sub_10002BA6C(v16, &qword_10016B708, &unk_100133390);
      result = sub_100026FDC(v17);
      v10 += 120;
      if (v8 == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    result = swift_once();
  }

  return result;
}

__n128 sub_100082478(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000824A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1000824EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000825A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100082B2C(&qword_10016BCB8, v11, type metadata accessor for DispatchQueueExecutor, &unk_1001319C0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v1;
  v13[4] = v12;
  aBlock[4] = sub_100082B08;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008287C;
  aBlock[3] = &unk_1001651F0;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_100082B2C(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_100082B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10008287C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100082914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_100082B2C(&qword_10016BCB0, a2, type metadata accessor for DispatchQueueExecutor, &unk_100131988);

  return a4(a1, v6, v7);
}

uint64_t sub_100082B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082B2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100082B74()
{
  result = qword_10016BCD0;
  if (!qword_10016BCD0)
  {
    sub_10002AD94(&qword_10016BCC8, &unk_100131A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BCD0);
  }

  return result;
}

uint64_t FileManagerWrapper.directorySize(at:)(uint64_t a1)
{
  v45 = a1;
  v1 = sub_100026F94(&qword_10016BD80, &qword_100131A58);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for URLResourceValues();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016BD88, &qword_100131A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for URL();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NSFastEnumerationIterator();
  v33 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100026F94(&qword_10016BD90, &qword_100131A68);
  inited = swift_initStackObject();
  v42 = xmmword_100130B20;
  *(inited + 16) = xmmword_100130B20;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLIsDirectoryKey;
  v14 = NSURLFileSizeKey;
  v15 = NSURLIsDirectoryKey;
  v41 = v14;
  v16 = v15;
  v17 = sub_100081864(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v18 = swift_allocObject();
  *(v18 + 16) = v42;
  *(v18 + 32) = v41;
  *(v18 + 40) = v16;
  v19 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v19)
  {

    return 0;
  }

  v44 = v17;
  v32 = v19;
  NSEnumerator.makeIterator()();
  v20 = sub_100083360();
  v21 = v38;
  v45 = v20;
  dispatch thunk of IteratorProtocol.next()();
  v22 = v12;
  if (!v49)
  {
    v39 = 0;
LABEL_17:

    (*(v33 + 8))(v22, v21);
    return v39;
  }

  v39 = 0;
  v23 = (v35 + 7);
  v43 = v35 + 4;
  *&v42 = v37 + 56;
  v41 = (v35 + 1);
  v35 = (v37 + 32);
  v34 = (v37 + 8);
  v24 = v36;
  while (1)
  {
    sub_100070144(&v48, v47);
    sub_10002FE08(v47, v46);
    v25 = swift_dynamicCast();
    v26 = *v23;
    if (!v25)
    {
      v26(v8, 1, 1, v9);
      sub_100026FDC(v47);
      sub_10002BA6C(v8, &qword_10016BD88, &qword_100131A60);
      goto LABEL_5;
    }

    v26(v8, 0, 1, v9);
    (*v43)(v24, v8, v9);
    URL.resourceValues(forKeys:)();
    (*v42)(v3, 0, 1, v4);
    (*v35)(v40, v3, v4);
    v27 = URLResourceValues.isDirectory.getter();
    if (v27 != 2 && (v27 & 1) != 0)
    {
      (*v34)(v40, v4);
      (*v41)(v24, v9);
      sub_100026FDC(v47);
      goto LABEL_5;
    }

    v28 = v40;
    v38 = URLResourceValues.fileSize.getter();
    LODWORD(v37) = v29;
    (*v34)(v28, v4);
    (*v41)(v24, v9);
    result = sub_100026FDC(v47);
    v31 = v38;
    if (v37)
    {
      v31 = 0;
    }

    if (v31 < 0)
    {
      break;
    }

    if (__CFADD__(v39, v31))
    {
      goto LABEL_20;
    }

    v39 += v31;
    v24 = v36;
LABEL_5:
    dispatch thunk of IteratorProtocol.next()();
    if (!v49)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100083360()
{
  result = qword_10016BD98;
  if (!qword_10016BD98)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BD98);
  }

  return result;
}

uint64_t sub_1000833B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100026F94(&qword_10016BDA0, &unk_100131A70);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(a1 - 8);
  __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  inserted = type metadata accessor for InsertRequest();
  v12 = *(inserted - 8);
  __chkstk_darwin(inserted);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, a1);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v7, 0, 1, inserted);
    (*(v12 + 32))(v14, v7, inserted);
    v17 = BatchedRequest.isFirstInBatch.getter();
    (*(v12 + 8))(v14, inserted);
  }

  else
  {
    v17 = 1;
    v16(v7, 1, 1, inserted);
    sub_100083604(v7);
  }

  return v17 & 1;
}

uint64_t sub_100083604(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BDA0, &unk_100131A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v3 = &enum case for StatementType.update(_:);
      goto LABEL_11;
    }

    if (a1 == 5)
    {
      v3 = &enum case for StatementType.delete(_:);
      goto LABEL_11;
    }

LABEL_8:
    v4 = a1;
    v5 = type metadata accessor for DaemonError();
    sub_100074354();
    swift_allocError();
    v7 = v6;
    *v6 = hsql.StatementType.description.getter(v4);
    v7[1] = v8;
    (*(*(v5 - 8) + 104))(v7, enum case for DaemonError.unsupportedStatementType(_:), v5);
    return swift_willThrow();
  }

  if (a1 == 1)
  {
    v3 = &enum case for StatementType.select(_:);
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    goto LABEL_8;
  }

  v3 = &enum case for StatementType.insert(_:);
LABEL_11:
  v10 = *v3;
  v11 = type metadata accessor for StatementType();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t sub_1000837B8()
{
  *v11.val = XPCReceivedMessage.auditToken.getter();
  *&v11.val[2] = v0;
  v11.val[4] = v1;
  v11.val[5] = v2;
  v11.val[6] = v3;
  v11.val[7] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v11);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = SecTaskCopySigningIdentifier(v5, 0);
  if (!v7)
  {
    v7 = v6;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_8;
  }

  *v11.val = 0;
  *&v11.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (*&v11.val[2])
  {
    return *v11.val;
  }

LABEL_9:
  v9 = type metadata accessor for DaemonError();
  sub_100074354();
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, enum case for DaemonError.noBundleId(_:), v9);
  return swift_willThrow();
}

uint64_t sub_1000838FC()
{
  sub_10001E05C(v18, v0);
  *&v16 = sub_10002BFD0(v18);
  v17 = sub_10002BF74(v18);
  v1 = sub_10002A1D8(&v16, &v17);
  if (!v1)
  {
    sub_10002A8A8(v18);
    v4 = _swiftEmptyArrayStorage;
LABEL_10:
    v9 = sub_100081580(v4);

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = sub_10007E828(*(v9 + 16), 0);
      v12 = sub_100080460(&v16, v11 + 2, v10, v9);
      sub_100042570(v16);
      if (v12 == v10)
      {
LABEL_14:
        *&v16 = v11;

        sub_100083F94(&v16);

        return v16;
      }

      __break(1u);
    }

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v2 = v1;
  v17 = _swiftEmptyArrayStorage;
  sub_10007E9CC(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v17;
    while (1)
    {
      v5 = sub_10002C034(v18, v3);
      sub_10002A1F8(&v16, v5);
      v14 = v16;
      sub_10001BBEC(&v16);
      v17 = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_10007E9CC((v6 > 1), v7 + 1, 1);
        v4 = v17;
      }

      v4[2] = v7 + 1;
      *&v4[2 * v7 + 4] = v14;
      v8 = sub_10002BFD0(v18);
      v15 = sub_10002BF74(v18);
      *&v16 = v8;
      if (v3 >= sub_10002A1D8(&v16, &v15))
      {
        break;
      }

      if (v2 == ++v3)
      {
        sub_10002A8A8(v18);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t hsql.StatementType.description.getter(int a1)
{
  result = 0x524F525245;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x5443454C4553;
      break;
    case 2:
      result = 0x54524F504D49;
      break;
    case 3:
      result = 0x545245534E49;
      break;
    case 4:
      result = 0x455441445055;
      break;
    case 5:
      result = 0x4554454C4544;
      break;
    case 6:
      result = 0x455441455243;
      break;
    case 7:
      result = 1347375684;
      break;
    case 8:
      result = 0x45524150455250;
      break;
    case 9:
      result = 0x45545543455845;
      break;
    case 10:
      result = 0x54524F505845;
      break;
    case 11:
      result = 0x454D414E4552;
      break;
    case 12:
      result = 0x5452454C41;
      break;
    case 13:
      result = 1464813651;
      break;
    case 14:
      result = 0x544341534E415254;
      break;
    default:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0x204E574F4E4B4E55;
      break;
  }

  return result;
}

uint64_t sub_100083D2C@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100083E20(a1, a2, v10);
  if (v11 == 2)
  {
    sub_100084858(v10);
    *&v10[0] = 0;
    *(&v10[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v10[0] = 0xD00000000000002BLL;
    *(&v10[0] + 1) = 0x800000010013B800;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7 = v10[0];
    sub_100076AA8();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  else
  {
    sub_10002A694(a3, v10);
    return sub_10001B428(v10);
  }
}

void **sub_100083E20@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_10007683C(a1, a2, &__dst);
  sub_10001DD08(v3, &__dst, v17);
  std::string::~string(&__dst);
  sub_10002A468(&__dst, v17);
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(0);
  sub_1000848C0();
  dispatch thunk of Sequence.makeIterator()();
  v7 = v16;
  while (1)
  {
    v8 = v15;
    *&v11[0] = v15;
    v13 = v7;
    if (sub_10002BFC0(v11, &v13))
    {

      result = sub_10002A4B8(v17);
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = 2;
      return result;
    }

    *&v11[0] = v8;
    v9 = sub_10002A1D0(v11);
    sub_10002A33C(&__dst, v9);
    *&v11[0] = v8;
    sub_10002A428(v11);
    v15 = *&v11[0];
    sub_10002A694(v11, &__dst);
    sub_10001B428(&__dst);
    if (v12)
    {
      break;
    }

    sub_10001B428(v11);
  }

  sub_10002A4B8(v17);
  sub_10002A694(a3, v11);
  return sub_10001B428(v11);
}

Swift::Int sub_100083F94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AE0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for _NSRange(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000840DC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000840DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10007FDB8(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_100084654((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10007DF24(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_10007DF24((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_100084654((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100084654(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_100084858(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BDA8, &qword_100131AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000848C0()
{
  result = qword_10016A8B8;
  if (!qword_10016A8B8)
  {
    type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8B8);
  }

  return result;
}

uint64_t sub_100084918()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016BDB0);
  sub_10002FD14(v0, qword_10016BDB0);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_1000849DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A650 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173800, qword_10016BDC8);
}

void sub_100084A40(uint64_t a1)
{
  v3 = static Utils.daemonBundleId.getter();
  v4 = v1;
  v2._countAndFlagsBits = 0x7972616D6972702ELL;
  v2._object = 0xEC00000079656B2DLL;
  String.append(_:)(v2);
  qword_10016BDF0 = v3;
  *algn_10016BDF8 = v4;
}

void sub_100084AA0()
{
  _StringGuts.grow(_:)(16);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x72656D656870652ELL;
  v3._object = 0xEE0079656B2D6C61;
  String.append(_:)(v3);
  qword_10016BE00 = v0;
  *algn_10016BE08 = v2;
}

void sub_100084B34()
{
  _StringGuts.grow(_:)(17);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x7274656D6D79732ELL;
  v3._object = 0xEF79656B2D736369;
  String.append(_:)(v3);
  qword_10016BE10 = v0;
  *algn_10016BE18 = v2;
}

uint64_t sub_100084BC8(uint64_t a1)
{
  v1 = static Utils.daemonBundleId.getter();
  result = sub_100084BF0(v1, v2);
  qword_10016BE20 = result;
  *algn_10016BE28 = v4;
  return result;
}

uint64_t sub_100084BF0(uint64_t a1, unint64_t a2)
{
  v37[0] = a1;
  v37[1] = a2;
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100026F94(&qword_10016BEF8, &qword_100131B60);
  if (swift_dynamicCast())
  {
    sub_10002C604(__src, &v41);
    sub_100026F50(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100026FDC(&v41);
    goto LABEL_64;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10002BA6C(__src, &qword_10016BF00, &qword_100131B68);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_100087724(&v41, __src, HIBYTE(a2) & 0xF);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter();
    }

    sub_100087724(&v41, v4, v5);
  }

  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_64;
  }

  v33 = *(&v41 + 1);
  v34 = v41;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_13:
  *&__src[0] = sub_100089134(v6);
  *(&__src[0] + 1) = v7;
  __chkstk_darwin(*&__src[0]);
  v32[2] = v37;
  v8 = sub_1000877EC(sub_1000891D4, v32);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&__src[0] + 16);
      v16 = *(*&__src[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_71;
      }

      if (v11 != v19)
      {
        goto LABEL_24;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_61;
    }
  }

  else if (v15)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_72;
    }

    if (v11 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_24:
      if (v15 == 2)
      {
        v20 = *(*&__src[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&__src[0] >> 32;
      }

      else
      {
        v20 = BYTE14(__src[0]);
      }

LABEL_61:
      if (v20 >= v11)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_63:

        goto LABEL_64;
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }

  else if (v11 != BYTE14(__src[0]))
  {
    goto LABEL_24;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v21 == v10 >> 14)
  {
    goto LABEL_58;
  }

  LOBYTE(v22) = 0;
  v23 = (v8 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v23) = 1;
  }

  v24 = 4 << v23;
  v35 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v36 = v9 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v25 = v14 & 0xC;
    v26 = v14;
    if (v25 == v24)
    {
      v26 = sub_1000876A8(v14, v12, v13);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v21)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v6 = String.UTF8View._foreignCount()();
      v34 = 0;
      v33 = 0xF000000000000000;
      goto LABEL_13;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else if ((v13 & 0x2000000000000000) != 0)
    {
      *&v41 = v12;
      *(&v41 + 1) = v36;
      v29 = *(&v41 + v27);
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v28 = v35;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
      if (v25 != v24)
      {
LABEL_47:
        if ((v13 & 0x1000000000000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }
    }

    v14 = sub_1000876A8(v14, v12, v13);
    if ((v13 & 0x1000000000000000) == 0)
    {
LABEL_48:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_53;
    }

LABEL_51:
    if (v21 <= v14 >> 16)
    {
      goto LABEL_67;
    }

    v14 = String.UTF8View._foreignIndex(after:)();
LABEL_53:
    *(&v40 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_66;
    }

    if (v22 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  while (4 * v21 != v14 >> 14);
  if (v22)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10008923C(v34, v33);
    goto LABEL_63;
  }

LABEL_58:

  sub_10008923C(v34, v33);
LABEL_64:
  v30 = __src[0];
  sub_100087600(*&__src[0], *(&__src[0] + 1));

  sub_1000822A0(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_10008512C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for OSSignposter();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100085270, v0, 0);
}

uint64_t sub_100085270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = v3;
  if (qword_10016A4E0 != -1)
  {
    swift_once();
  }

  v5 = v3[8];
  v4 = v3[9];
  v6 = v3[7];
  v7 = v3[2];
  v8 = sub_10002FD14(v6, qword_10016BDB0);
  (*(v5 + 16))(v4, v8, v6);
  static OSSignpostID.exclusive.getter();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = OSSignposter.logHandle.getter();
  v11 = static os_signpost_type_t.begin.getter();
  v12 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v12, "databaseEncryptionKey", "", v9, 2u);
  sub_100085500(v7, &v24);
  v14 = v3[8];
  v13 = v3[9];
  v15 = v3[6];
  v16 = v3[7];
  v17 = v3[4];
  v18 = v3[5];
  v19 = static os_signpost_type_t.end.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v19, v20, "databaseEncryptionKey", "", v9, 2u);

  v21 = v24;

  (*(v18 + 8))(v15, v17);
  (*(v14 + 8))(v13, v16);

  v22 = v3[1];

  return v22(v21, *(&v21 + 1));
}

uint64_t sub_100085500@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (static SecureEnclave.isAvailable.getter() & 1) != 0 && (sub_100026F50((a1 + 112), *(a1 + 136)), v22 = v12, v13 = type metadata accessor for ConfigurationStoreImplementation(), v14 = sub_10004FBA0(v13, &off_100164E30), v3 = v2, v12 = v22, (v14))
  {
    sub_100085CEC(v10);
    if (!v2)
    {
LABEL_6:
      (*(v7 + 32))(v12, v10, v6);
      sub_100089E20(&qword_10016BEE0, &type metadata accessor for SymmetricKey, &protocol conformance descriptor for SymmetricKey);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      result = (*(v7 + 8))(v12, v6);
      *v23 = v26;
      return result;
    }
  }

  else
  {
    sub_1000860FC(v10);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if (qword_10016A4E8 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016BDC8, qword_10016BDE0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  swift_getErrorValue();
  v17 = v24;
  v18 = v25;
  v27 = v25;
  v19 = sub_100042BAC(&v26);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v26, &qword_10016AB10, &unk_100130B10);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return swift_willThrow();
}

void *sub_100085944(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089E20(&qword_10016BF38, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v8 = dispatch thunk of Sequence.underestimatedCount.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10007E9EC(0, v8 & ~(v8 >> 63), 0);
  v9 = v38;
  (*(v5 + 16))(v7, a1, v4);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v37;
    if (v8)
    {
      v33 = v1;
      v12 = v36;
      *&v35 = *(v36 + 16);
      v34 = xmmword_10012FA10;
      v13 = v37;
      while (v35 != v13)
      {
        if (v11 < 0)
        {
          goto LABEL_21;
        }

        if (v13 >= *(v12 + 16))
        {
          goto LABEL_22;
        }

        v14 = *(v12 + 32 + v13);
        sub_100026F94(&qword_10016BF40, &qword_100131BA0);
        v15 = swift_allocObject();
        *(v15 + 16) = v34;
        *(v15 + 56) = &type metadata for UInt8;
        *(v15 + 64) = &protocol witness table for UInt8;
        *(v15 + 32) = v14;
        result = String.init(format:_:)();
        v38 = v9;
        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          v32 = result;
          v20 = v16;
          sub_10007E9EC((v17 > 1), v18 + 1, 1);
          v16 = v20;
          result = v32;
          v9 = v38;
        }

        v9[2] = v18 + 1;
        v19 = &v9[2 * v18];
        v19[4] = result;
        v19[5] = v16;
        ++v13;
        if (!--v8)
        {
          v37 = v13;
          v2 = v33;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v13 = v37;
LABEL_12:
      v21 = v36;
      v22 = *(v36 + 16);
      if (v13 == v22)
      {
LABEL_13:

        return v9;
      }

      v35 = xmmword_10012FA10;
      while (v13 < v22)
      {
        v23 = v13 + 1;
        v24 = *(v21 + 32 + v13);
        v37 = v23;
        sub_100026F94(&qword_10016BF40, &qword_100131BA0);
        v25 = swift_allocObject();
        *(v25 + 16) = v35;
        *(v25 + 56) = &type metadata for UInt8;
        *(v25 + 64) = &protocol witness table for UInt8;
        *(v25 + 32) = v24;
        result = String.init(format:_:)();
        v38 = v9;
        v28 = v9[2];
        v27 = v9[3];
        if (v28 >= v27 >> 1)
        {
          *&v34 = result;
          v30 = v2;
          v31 = v26;
          sub_10007E9EC((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v2 = v30;
          result = v34;
          v9 = v38;
        }

        v9[2] = v28 + 1;
        v29 = &v9[2 * v28];
        v29[4] = result;
        v29[5] = v26;
        v22 = *(v21 + 16);
        v13 = v37;
        if (v37 == v22)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

SecAccessControlRef sub_100085CEC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedSecret();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  if (qword_10016A4F0 != -1)
  {
    swift_once();
  }

  result = sub_100086578(qword_10016BDF0, *algn_10016BDF8, v14);
  if (!v1)
  {
    if (qword_10016A4F8 != -1)
    {
      swift_once();
    }

    sub_100086578(qword_10016BE00, *algn_10016BE08, v12);
    SecureEnclave.P256.KeyAgreement.PrivateKey.publicKey.getter();
    SecureEnclave.P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v17 = 0;
    (*(v24 + 8))(v4, v2);
    type metadata accessor for SHA256();
    if (qword_10016A508 != -1)
    {
      swift_once();
    }

    v22 = qword_10016BE20;
    v23 = *algn_10016BE28;
    v21 = xmmword_100131AC0;
    sub_100087600(qword_10016BE20, *algn_10016BE28);
    sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_100087654();
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_1000822A0(v21, *(&v21 + 1));
    sub_1000822A0(v22, v23);
    (*(v18 + 8))(v7, v19);
    v16 = *(v9 + 8);
    v16(v12, v8);
    return (v16)(v14, v8);
  }

  return result;
}

uint64_t sub_1000860FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for SymmetricKey();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100026F94(&qword_10016BF30, &unk_100131B90);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  if (qword_10016A500 != -1)
  {
    swift_once();
  }

  v11 = qword_10016BE10;
  v12 = *algn_10016BE18;
  sub_100087120(qword_10016BE10, *algn_10016BE18, &v27, v10);
  if (v1)
  {
    v13 = v27;
    sub_100089370();
    result = swift_allocError();
    *v15 = v13;
    return result;
  }

  v25 = 0;
  if ((*(v28 + 48))(v10, 1, v4) == 1)
  {
    v24[0] = a1;
    sub_10002BA6C(v10, &qword_10016BF30, &unk_100131B90);
    if (qword_10016A4E8 != -1)
    {
      swift_once();
    }

    v24[2] = unk_10016BDE8;
    v24[1] = sub_100026F50(qword_10016BDC8, qword_10016BDE0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x800000010013B9A0;
    v16._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v26[3] = &type metadata for String;
    v26[0] = v11;
    v26[1] = v12;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v26, &qword_10016AB10, &unk_100130B10);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    static SymmetricKeySize.bits256.getter();
    SymmetricKey.init(size:)();
    v18 = v25;
    v19 = sub_1000899F4(v6, v11, v12);
    if (v18)
    {
      v21 = v19;
      v22 = v20;
      sub_100089370();
      swift_allocError();
      *v23 = v21;
      v23[1] = v22;
      return (*(v28 + 8))(v6, v4);
    }

    v25 = 0;
    v10 = v6;
    a1 = v24[0];
  }

  return (*(v28 + 32))(a1, v10, v4);
}

SecAccessControlRef sub_100086578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100026F94(&qword_10016BF08, &qword_100131B70);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  sub_1000869A0(a1, a2, v27, &v22 - v13);
  if (v3)
  {
    v15 = v27[0];
    v16 = v27[1];
    sub_100089370();
    result = swift_allocError();
    *v18 = v15;
    v18[1] = v16;
    return result;
  }

  v28 = 0;
  if ((*(v8 + 48))(v14, 1, v7) != 1)
  {
    return (*(v8 + 32))(a3, v14, v7);
  }

  v23 = a3;
  sub_10002BA6C(v14, &qword_10016BF08, &qword_100131B70);
  if (qword_10016A4E8 != -1)
  {
    swift_once();
  }

  v25 = unk_10016BDE8;
  v24 = sub_100026F50(qword_10016BDC8, qword_10016BDE0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x800000010013B900;
  v19._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v26[3] = &type metadata for String;
  v26[0] = a1;
  v26[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v26, &qword_10016AB10, &unk_100130B10);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
  v21 = v28;
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = SecureEnclave.P256.KeyAgreement.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  a3 = v23;
  if (!v21)
  {
    sub_100089640(v10, a1, a2);
    v28 = 0;
    v14 = v10;
    return (*(v8 + 32))(a3, v14, v7);
  }

  return result;
}

uint64_t sub_1000869A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v5 = v4;
  v8 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  type metadata accessor for CFString(0);
  *(inited + 72) = v13;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v16;
  v17 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v18 = kSecClassGenericPassword;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_10016BFB0;
  v20 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v19;
  *(inited + 200) = v20;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v21;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v22;
  v23 = qword_10016A518;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_10016BFC0;
  v25 = *algn_10016BFC8;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v24;
  *(inited + 296) = v25;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v26;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v27;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = 0;

  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  v71 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = SecItemCopyMatching(isa, &v71);

  if (v29 == -25300)
  {
    goto LABEL_12;
  }

  if (v29)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v69 = 0xD000000000000016;
    v70 = 0x800000010013B950;
    v36 = SecCopyErrorMessageString(v29, 0);
    if (v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      *v68 = v29;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v40;
    }

    v41._countAndFlagsBits = v37;
    v41._object = v39;
    String.append(_:)(v41);

    v42 = v69;
    v43 = v70;
    sub_100089370();
    swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  if (!v71 || (*v68 = v71, swift_unknownObjectRetain(), !swift_dynamicCast()))
  {
LABEL_12:
    v33 = 1;
    v34 = v67;
LABEL_13:
    (*(v9 + 56))(v34, v33, 1, v8);
    return swift_unknownObjectRelease();
  }

  v30 = v70;
  v64 = v69;
  v31 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v31)
    {
      *v68 = v64;
      *&v68[8] = v70;
      *&v68[12] = WORD2(v70);
      v32 = v5;
      sub_10008A1EC(v68, &v68[BYTE6(v70)], &v69);
      goto LABEL_42;
    }

    v55 = v64;
    v56 = (v64 >> 32) - v64;
    if (v64 >> 32 >= v64)
    {

      v47 = __DataStorage._bytes.getter();
      if (!v47)
      {
LABEL_35:
        v58 = __DataStorage._length.getter();
        if (v58 >= v56)
        {
          v59 = v56;
        }

        else
        {
          v59 = v58;
        }

        v60 = &v47[v59];
        if (v47)
        {
          v54 = v60;
        }

        else
        {
          v54 = 0;
        }

LABEL_30:
        v32 = v5;
        sub_10008A1EC(v47, v54, &v69);
        goto LABEL_42;
      }

      v57 = __DataStorage._offset.getter();
      if (!__OFSUB__(v55, v57))
      {
        v47 += v55 - v57;
        goto LABEL_35;
      }

LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v31 == 2)
  {
    v45 = *(v64 + 16);
    v46 = *(v64 + 24);

    v47 = __DataStorage._bytes.getter();
    if (v47)
    {
      v48 = __DataStorage._offset.getter();
      if (__OFSUB__(v45, v48))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v47 += v45 - v48;
    }

    v49 = __OFSUB__(v46, v45);
    v50 = v46 - v45;
    if (!v49)
    {
      v51 = __DataStorage._length.getter();
      if (v51 >= v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      v53 = &v47[v52];
      if (v47)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      goto LABEL_30;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v68[6] = 0;
  *v68 = 0;
  v32 = v5;
  sub_10008A1EC(v68, v68, &v69);
LABEL_42:
  sub_1000822A0(v64, v30);
  SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)();
  if (!v32)
  {
    sub_1000822A0(v64, v30);
    v62 = v67;
    (*(v9 + 32))(v67, v65, v8);
    v34 = v62;
    v33 = 0;
    goto LABEL_13;
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v69 = 0xD00000000000002DLL;
  v70 = 0x800000010013B970;
  swift_getErrorValue();
  v61._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v61);

  v42 = v69;
  v43 = v70;
  sub_100089370();
  swift_willThrowTypedImpl();

  sub_1000822A0(v64, v30);
LABEL_18:
  result = swift_unknownObjectRelease();
  v44 = v66;
  *v66 = v42;
  v44[1] = v43;
  return result;
}

void sub_10008710C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100087114);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100087120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  type metadata accessor for CFString(0);
  *(inited + 72) = v10;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  v14 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v15 = kSecClassGenericPassword;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_10016BFB0;
  v17 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v18;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v19;
  v20 = qword_10016A518;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10016BFC0;
  v22 = *algn_10016BFC8;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v21;
  *(inited + 296) = v22;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v23;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v24;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = 0;

  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = SecItemCopyMatching(isa, &result);

  if (v26 == -25300)
  {
    goto LABEL_10;
  }

  if (!v26)
  {
    if (result)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        SymmetricKey.init<A>(data:)();
        v27 = 0;
LABEL_11:
        v28 = type metadata accessor for SymmetricKey();
        (*(*(v28 - 8) + 56))(a4, v27, 1, v28);
        return swift_unknownObjectRelease();
      }
    }

LABEL_10:
    v27 = 1;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(24);

  *&v36 = 0xD000000000000016;
  *(&v36 + 1) = 0x800000010013B950;
  v30 = SecCopyErrorMessageString(v26, 0);
  if (v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v34;
  }

  v35._countAndFlagsBits = v31;
  v35._object = v33;
  String.append(_:)(v35);

  sub_100089370();
  swift_willThrowTypedImpl();
  v29 = swift_unknownObjectRelease();
  *a3 = v36;
  return v29;
}

void sub_100087590(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100087598);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000875A4()
{
  sub_100026FDC((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100087600(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100087654()
{
  result = qword_10016BEF0;
  if (!qword_10016BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEF0);
  }

  return result;
}

unint64_t sub_1000876A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t *sub_100087724@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10008907C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1000877EC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000822A0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000822A0(v7, v6);
    *v4 = xmmword_100131AC0;
    sub_1000822A0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_100087C90(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000822A0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100131AC0;
    sub_1000822A0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100087C90(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_100087B90@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10008907C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100089250(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000892CC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}