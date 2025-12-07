uint64_t sub_100030B40(uint64_t result)
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

        sub_1000311DC(v12, v13);

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

void *sub_100030C6C(uint64_t a1, void *a2)
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
    sub_1000CB5C0();

    sub_1000CAD90();
    v23 = sub_1000CB5F0();
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
    if (v26 || (sub_1000CB530() & 1) != 0)
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
        v5 = sub_10003091C(v58, v54, v56, v5);
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
            sub_1000CB5C0();

            sub_1000CAD90();
            v41 = sub_1000CB5F0();
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
            while ((sub_1000CB530() & 1) == 0)
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
  v52 = sub_100031318(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100031714(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000311DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1000CB5C0();
  sub_1000CAD90();
  v6 = sub_1000CB5F0();
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
    if (v11 || (sub_1000CB530() & 1) != 0)
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
    sub_100044770();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100031550(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_100031318(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_10003091C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1000CB5C0();

        sub_1000CAD90();
        v19 = sub_1000CB5F0();
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
        while ((sub_1000CB530() & 1) == 0)
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

unint64_t sub_100031550(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000CB210();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1000CB5C0();

        sub_1000CAD90();
        v10 = sub_1000CB5F0();

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

uint64_t sub_10003171C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031778(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&unk_10011E860, &qword_1000D46A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031844(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100019558(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000318F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100031938(uint64_t a1, uint64_t a2)
{
  v5 = PrefetchLog(a1);
  v6 = sub_1000CB030();
  sub_1000C9BE0("pruning asset store", 19, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

  sub_100019558(&unk_10011E870, &unk_1000D46B0);
  sub_1000C9A20();
  *(swift_allocObject() + 16) = v2;
  v7 = v2;
  v8 = sub_1000C9990();
  sub_1000C99B0();

  v9 = sub_1000C9990();
  sub_1000C99C0();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1000C9990();
  sub_1000C99E0();
}

uint64_t sub_100031AF8()
{
  sub_10001E2E4((*(v0 + 16) + OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_infoService), *(*(v0 + 16) + OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_infoService + 24));
  sub_1000CAAA0();
  return sub_1000AF7D0();
}

uint64_t sub_100031B70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t *sub_100031C2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v35 = result;
  v36 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v37 = a3 + 56;
  while (v10)
  {
    v19 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_13:
    v39 = v19 | (v6 << 6);
    v43 = *(*(v5 + 48) + 16 * v39 + 8);
    sub_100019558(&qword_10011E830, &qword_1000D4678);
    v22 = swift_allocObject();
    v23 = v22;
    v42 = *(a4 + 24);
    v24 = v42;
    *(v22 + 16) = xmmword_1000D45E0;
    *(v22 + 32) = v24;
    if (*a4)
    {
      v25 = *(a4 + 8);
      ObjectType = swift_getObjectType();
      v27 = v11;
      v28 = a4;
      v29 = *(v25 + 16);

      sub_1000317E8(&v42, v41);
      v30 = v25;
      v5 = a3;
      v31 = v29(ObjectType, v30);
      a4 = v28;
      v11 = v27;
      v7 = v37;
      v23[6] = v31;
      v23[7] = v32;
    }

    else
    {
      *(v22 + 48) = 7104878;
      *(v22 + 56) = 0xE300000000000000;

      sub_1000317E8(&v42, v41);
    }

    v12 = CHSWidgetFamilyDescription();
    v13 = sub_1000CAD00();
    v15 = v14;

    v23[8] = v13;
    v23[9] = v15;
    v41[0] = v23;
    sub_100019558(&qword_10011E838, &qword_1000D4680);
    sub_1000307BC();
    v16 = sub_1000CAC50();
    v18 = v17;

    v44._countAndFlagsBits = v16;
    v44._object = v18;
    LOBYTE(v16) = sub_1000CAE30(v44);

    v10 = v40;
    if (v16)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_18:

        return sub_10003091C(v35, a2, v36, v5);
      }
    }
  }

  v20 = v6;
  while (1)
  {
    v6 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v21 = *(v7 + 8 * v6);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100031EF4(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v54 = *a2;
  v48 = a2;
  v52 = *(a2 + 24);
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  sub_100031778(&v54, v53);
  for (i = sub_1000317E8(&v52, v53); ; i = )
  {
    v42[1] = v42;
    __chkstk_darwin(i);
    v43 = v42 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v5);
    v44 = 0;
    v4 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v47 = xmmword_1000D45E0;
    v45 = v2 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v22 = v19 | (v4 << 6);
      v23 = *(v2 + 48);
      v46 = v22;
      v24 = (v23 + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v50 = v26;
      v51 = v25;
      sub_100019558(&qword_10011E830, &qword_1000D4678);
      v27 = swift_allocObject();
      v28 = v27;
      v29 = v52;
      *(v27 + 16) = v47;
      *(v27 + 32) = v29;
      if (v54)
      {
        v49 = v10;
        v30 = *(&v54 + 1);
        ObjectType = swift_getObjectType();
        v32 = v11;
        v33 = v2;
        v34 = *(v30 + 16);
        sub_1000317E8(&v52, v53);

        v35 = v30;
        v10 = v49;
        v36 = v34(ObjectType, v35);
        v2 = v33;
        v11 = v32;
        v7 = v45;
        v28[6] = v36;
        v28[7] = v37;
      }

      else
      {
        *(v27 + 48) = 7104878;
        *(v27 + 56) = 0xE300000000000000;
        sub_1000317E8(&v52, v53);
      }

      v12 = CHSWidgetFamilyDescription();
      v13 = sub_1000CAD00();
      v15 = v14;

      v28[8] = v13;
      v28[9] = v15;
      v53[0] = v28;
      sub_100019558(&qword_10011E838, &qword_1000D4680);
      sub_1000307BC();
      v16 = sub_1000CAC50();
      v18 = v17;

      v55._countAndFlagsBits = v16;
      v55._object = v18;
      v5 = sub_1000CAE30(v55);

      if (v5)
      {
        *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_20:
          v39 = sub_10003091C(v43, v42[2], v44, v2);
          goto LABEL_21;
        }
      }
    }

    v20 = v4;
    while (1)
    {
      v4 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        goto LABEL_20;
      }

      v21 = *(v7 + 8 * v4);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    sub_100031778(&v54, v53);
    sub_1000317E8(&v52, v53);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  sub_100031778(&v54, v53);
  sub_1000317E8(&v52, v53);
  v39 = sub_100030828(v41, v4, v2, v48);

LABEL_21:
  sub_100031844(&v54, &unk_10011E860, &qword_1000D46A0);
  sub_1000318A4(&v52);
  return v39;
}

uint64_t sub_100032354(uint64_t *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v55 = a5;
  v58 = sub_1000C95A0();
  v9 = *(v58 - 8);
  v10 = __chkstk_darwin(v58);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v48 - v12;
  v13 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 4;
  v15 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 4;
  v52 = a4;
  if (v14 >= v15 >> 4)
  {
    v17 = a4;
    v32 = a2;
    if (a4 != a2 || &a2[2 * v16] <= a4)
    {
      memmove(a4, a2, 16 * v16);
      v17 = v52;
    }

    v59 = &v17[2 * v16];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v50 = (v9 + 8);
      v54 = a1;
LABEL_27:
      v49 = v32 - 2;
      v33 = a3 - 16;
      v34 = v59;
      v51 = v32;
      do
      {
        v35 = v33;
        v36 = v33 + 16;
        v38 = *(v34 - 2);
        v37 = *(v34 - 1);
        v34 -= 2;
        v40 = *(v32 - 2);
        v39 = *(v32 - 1);

        v41 = v56;
        sub_10002F528(v38, v37, v56);
        v42 = v57;
        sub_10002F528(v40, v39, v57);
        LODWORD(v53) = sub_1000C9510();
        v43 = *v50;
        v44 = v42;
        v45 = v58;
        (*v50)(v44, v58);
        v43(v41, v45);

        if (v53)
        {
          v17 = v52;
          a3 = v35;
          v46 = v49;
          if (v36 != v51)
          {
            *v35 = *v49;
          }

          if (v59 <= v17 || (v32 = v46, v46 <= v54))
          {
            v32 = v46;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v17 = v52;
        if (v36 != v59)
        {
          *v35 = *v34;
        }

        v33 = v35 - 16;
        v59 = v34;
        v32 = v51;
      }

      while (v34 > v17);
      v59 = v34;
    }
  }

  else
  {
    v17 = a4;
    if (a4 != a1 || &a1[2 * v14] <= a4)
    {
      memmove(a4, a1, 16 * v14);
      v17 = v52;
    }

    v59 = &v17[2 * v14];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v18 = a2;
      v52 = (v9 + 8);
      v53 = a3;
      while (1)
      {
        v54 = a1;
        v20 = *v18;
        v19 = v18[1];
        v22 = *v17;
        v21 = v17[1];
        v23 = v17;

        v24 = v56;
        sub_10002F528(v20, v19, v56);
        v25 = v57;
        sub_10002F528(v22, v21, v57);
        LOBYTE(v22) = sub_1000C9510();
        v26 = *v52;
        v27 = v25;
        v28 = v58;
        (*v52)(v27, v58);
        v26(v24, v28);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v29 = v18;
        v30 = v54;
        v31 = v54 == v18;
        v18 += 2;
        v17 = v23;
        if (!v31)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v30 + 2;
        if (v17 >= v59 || v18 >= v53)
        {
          goto LABEL_20;
        }
      }

      v29 = v23;
      v17 = v23 + 2;
      v30 = v54;
      if (v54 == v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v30 = *v29;
      goto LABEL_18;
    }

LABEL_20:
    v32 = a1;
  }

LABEL_38:
  if (v32 != v17 || v32 >= (v17 + ((v59 - v17 + (v59 - v17 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v32, v17, 16 * ((v59 - v17) / 16));
  }

  return 1;
}

void sub_1000327AC(char **a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10002A814(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 16 * *v10);
      v23 = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_100032354(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_10003294C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v129 = a4;
  v130 = a1;
  v142 = sub_1000C95A0();
  v8 = __chkstk_darwin(v142);
  v141 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v140 = &v127 - v11;
  v145 = _swiftEmptyArrayStorage;
  v134 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v139 = (v10 + 8);
    v127 = a5;
    v143 = a5;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v135 = v14;
      v15 = v13;
      v16 = v13 + 1;
      if (v16 >= v12)
      {
        v29 = v16;
        v37 = v129;
      }

      else
      {
        v137 = v12;
        v17 = *v134;
        v18 = (*v134 + 16 * v16);
        v19 = *v18;
        v5 = v18[1];
        v132 = 16 * v15;
        v20 = (v17 + 16 * v15);
        v21 = *v20;
        v23 = v20[1];
        v22 = (v20 + 5);

        v24 = v140;
        sub_10002F528(v19, v5, v140);
        v25 = v141;
        sub_10002F528(v21, v23, v141);
        LODWORD(v138) = sub_1000C9510();
        v26 = *v139;
        v27 = v142;
        (*v139)(v25, v142);
        v133 = v26;
        (v26)(v24, v27);

        v128 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v137;
          if (v137 == v28)
          {
            break;
          }

          v30 = *(v22 - 1);
          v5 = *v22;
          v32 = *(v22 - 3);
          v31 = *(v22 - 2);

          v33 = v140;
          sub_10002F528(v30, v5, v140);
          v34 = v141;
          sub_10002F528(v32, v31, v141);
          LOBYTE(v144) = sub_1000C9510() & 1;
          LODWORD(v144) = v144;
          v35 = v142;
          v36 = v133;
          (v133)(v34, v142);
          (v36)(v33, v35);

          ++v28;
          v22 += 2;
          if ((v138 & 1) != v144)
          {
            v29 = v28 - 1;
            break;
          }
        }

        v15 = v128;
        v37 = v129;
        v38 = v132;
        if (v138)
        {
          if (v29 < v128)
          {
            goto LABEL_117;
          }

          if (v128 < v29)
          {
            v39 = 0;
            v40 = 16 * v29;
            v41 = v128;
            do
            {
              if (v41 != v29 + v39 - 1)
              {
                v46 = *v134;
                if (!*v134)
                {
                  goto LABEL_122;
                }

                v42 = (v46 + v38);
                v43 = v46 + v40;
                v44 = *v42;
                v45 = v42[1];
                *v42 = *(v43 - 16);
                *(v43 - 16) = v44;
                *(v43 - 8) = v45;
              }

              ++v41;
              --v39;
              v40 -= 16;
              v38 += 16;
            }

            while (v41 < v29 + v39);
          }
        }
      }

      v47 = v134[1];
      if (v29 >= v47)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v29, v15))
      {
        goto LABEL_116;
      }

      if (v29 - v15 >= v37)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v15, v37))
      {
        goto LABEL_118;
      }

      if (v15 + v37 >= v47)
      {
        v48 = v134[1];
      }

      else
      {
        v48 = v15 + v37;
      }

      if (v48 < v15)
      {
LABEL_119:
        __break(1u);
LABEL_120:
        v123 = v143;

        __break(1u);
LABEL_121:
        v124 = v143;

        __break(1u);
LABEL_122:
        v125 = v143;

        __break(1u);
LABEL_123:
        v126 = v143;

        __break(1u);
        goto LABEL_124;
      }

      if (v29 == v48)
      {
LABEL_29:
        v49 = v29;
        if (v29 < v15)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v138 = *v134;
        v107 = (v138 + 16 * v29);
        v128 = v15;
        v108 = v15 - v29;
        v131 = v48;
        do
        {
          v137 = v29;
          v109 = (v138 + 16 * v29);
          v110 = *v109;
          v111 = v109[1];
          v132 = v108;
          v133 = v107;
          do
          {
            v112 = *(v107 - 2);
            v5 = *(v107 - 1);

            v113 = v140;
            sub_10002F528(v110, v111, v140);
            v114 = v141;
            sub_10002F528(v112, v5, v141);
            LODWORD(v144) = sub_1000C9510();
            v115 = *v139;
            v116 = v114;
            v117 = v142;
            (*v139)(v116, v142);
            v115(v113, v117);

            if ((v144 & 1) == 0)
            {
              break;
            }

            if (!v138)
            {
              goto LABEL_120;
            }

            v110 = *v107;
            v111 = v107[1];
            *v107 = *(v107 - 1);
            *(v107 - 1) = v111;
            *(v107 - 2) = v110;
            v107 -= 2;
          }

          while (!__CFADD__(v108++, 1));
          v29 = v137 + 1;
          v107 = v133 + 2;
          v108 = v132 - 1;
          v49 = v131;
        }

        while (v137 + 1 != v131);
        v15 = v128;
        if (v131 < v128)
        {
          goto LABEL_115;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v135 = sub_10002A928(0, *(v135 + 2) + 1, 1, v135);
      }

      v52 = *(v135 + 2);
      v51 = *(v135 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v135 = sub_10002A928((v51 > 1), v52 + 1, 1, v135);
      }

      v54 = v135;
      *(v135 + 2) = v53;
      v55 = v54 + 32;
      v56 = &v54[16 * v52 + 32];
      v57 = v131;
      *v56 = v15;
      *(v56 + 1) = v57;
      v144 = *v130;
      if (!v144)
      {
        goto LABEL_123;
      }

      if (v52)
      {
        v14 = v135;
        v138 = v55;
        while (1)
        {
          v58 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v59 = *(v14 + 4);
            v60 = *(v14 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_50:
            if (v62)
            {
              goto LABEL_105;
            }

            v75 = &v14[16 * v53];
            v77 = *v75;
            v76 = *(v75 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_107;
            }

            v81 = &v55[16 * v58];
            v83 = *v81;
            v82 = *(v81 + 1);
            v69 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v69)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v79, v84))
            {
              goto LABEL_112;
            }

            if (v79 + v84 >= v61)
            {
              if (v61 < v84)
              {
                v58 = v53 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v53 < 2)
          {
            goto LABEL_113;
          }

          v85 = &v14[16 * v53];
          v87 = *v85;
          v86 = *(v85 + 1);
          v69 = __OFSUB__(v86, v87);
          v79 = v86 - v87;
          v80 = v69;
LABEL_65:
          if (v80)
          {
            goto LABEL_109;
          }

          v88 = &v55[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v69 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v69)
          {
            goto LABEL_111;
          }

          if (v91 < v79)
          {
            goto LABEL_4;
          }

LABEL_72:
          if (v58 - 1 >= v53)
          {
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

          v96 = *v134;
          if (!*v134)
          {
            goto LABEL_121;
          }

          v97 = &v55[16 * v58 - 16];
          v98 = *v97;
          v99 = v58;
          v5 = &v55[16 * v58];
          v100 = *(v5 + 1);
          v101 = (v96 + 16 * *v97);
          v102 = (v96 + 16 * *v5);
          v103 = (v96 + 16 * v100);
          v104 = v143;
          v105 = v136;
          sub_100032354(v101, v102, v103, v144, v104);
          v136 = v105;
          if (v105)
          {

            v145 = v135;
            v5 = v127;
            goto LABEL_95;
          }

          v14 = v135;
          if (v100 < v98)
          {
            goto LABEL_100;
          }

          v106 = *(v135 + 2);
          if (v99 > v106)
          {
            goto LABEL_101;
          }

          *v97 = v98;
          *(v97 + 1) = v100;
          if (v99 >= v106)
          {
            goto LABEL_102;
          }

          v53 = v106 - 1;
          memmove(v5, v5 + 16, 16 * (v106 - 1 - v99));
          *(v14 + 2) = v106 - 1;
          v55 = v138;
          if (v106 <= 2)
          {
            goto LABEL_4;
          }
        }

        v63 = &v55[16 * v53];
        v64 = *(v63 - 8);
        v65 = *(v63 - 7);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_103;
        }

        v68 = *(v63 - 6);
        v67 = *(v63 - 5);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_104;
        }

        v70 = &v14[16 * v53];
        v72 = *v70;
        v71 = *(v70 + 1);
        v69 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v69)
        {
          goto LABEL_106;
        }

        v69 = __OFADD__(v61, v73);
        v74 = v61 + v73;
        if (v69)
        {
          goto LABEL_108;
        }

        if (v74 >= v66)
        {
          v92 = &v55[16 * v58];
          v94 = *v92;
          v93 = *(v92 + 1);
          v69 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v69)
          {
            goto LABEL_114;
          }

          if (v61 < v95)
          {
            v58 = v53 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

      v14 = v135;
LABEL_4:
      v12 = v134[1];
      v13 = v131;
      if (v131 >= v12)
      {
        v145 = v14;
        v5 = v127;
        goto LABEL_92;
      }
    }
  }

  v119 = a5;
  v5 = a5;
LABEL_92:
  v120 = *v130;
  v121 = v136;
  if (*v130)
  {
    v122 = v5;
    sub_1000327AC(&v145, v120, v134, v122);
    if (v121)
    {

LABEL_95:
    }

    else
    {
    }
  }

  else
  {
LABEL_124:

    __break(1u);
  }
}

uint64_t sub_1000331C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v34 = a5;
  v37 = sub_1000C95A0();
  v9 = __chkstk_darwin(v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v35 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v33 = (v12 + 8);
    v38 = v14;
    v15 = (v14 + 16 * a3);
    v16 = a1 - a3;
    v17 = v35;
LABEL_5:
    v31 = v15;
    v32 = a3;
    v18 = (v38 + 16 * a3);
    v19 = *v18;
    v20 = v18[1];
    v30 = v16;
    while (1)
    {
      v22 = *(v15 - 2);
      v21 = *(v15 - 1);

      sub_10002F528(v19, v20, v17);
      v23 = v36;
      sub_10002F528(v22, v21, v36);
      v39 = sub_1000C9510();
      v24 = *v33;
      v25 = v23;
      v26 = v37;
      (*v33)(v25, v37);
      v24(v17, v26);

      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v15 = v31 + 2;
        v16 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v19 = *v15;
      v20 = v15[1];
      *v15 = *(v15 - 1);
      *(v15 - 1) = v20;
      *(v15 - 2) = v19;
      v15 -= 2;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000333E8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1000CB510(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1000CAF20();
        v8[2] = v7;
      }

      v10[0] = v8 + 4;
      v10[1] = v7;
      v9 = v4;
      sub_10003294C(v10, v11, a1, v6, v9);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1000331C4(0, v3, 1, a1, v4);
  }
}

void sub_100033518(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002AAD4(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_1000333E8(v7, v6);

  *a1 = v3;
}

uint64_t sub_1000335B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100043C30(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_100033620(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000336E0(void *a1)
{
  v54 = sub_1000CA550();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_align = &stru_100118FE8.align;
  v51 = a1;
  v5 = [a1 colors];
  sub_10001F934(0, &qword_10011DD48, FCColor_ptr);
  v6 = sub_1000CAED0();

  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000CB3A0())
  {

    v8 = [v51 locations];
    v50 = sub_10001F934(0, &unk_100121850, NSNumber_ptr);
    v9 = sub_1000CAED0();

    v10 = v9 >> 62 ? sub_1000CB3A0() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v11 = [v51 *(p_align + 3184)];
    p_align = sub_1000CAED0();

    v12 = p_align;
    v52 = p_align;
    v13 = p_align >> 62;
    if (i != v10)
    {
      break;
    }

    if (v13)
    {
      v44 = sub_1000CB3A0();
      v12 = p_align;
      v14 = v44;
      if (!v44)
      {
LABEL_43:

        return sub_1000CA740();
      }
    }

    else
    {
      v14 = *((p_align & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_43;
      }
    }

    v49 = v12 & 0xC000000000000001;
    v48 = v12 & 0xFFFFFFFFFFFFFF8;
    v47 = enum case for Color.RGBColorSpace.sRGB(_:);
    v15 = (v2 + 104);
    v2 = _swiftEmptyArrayStorage;
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if (v49)
      {
        v18 = sub_1000CB2A0();
      }

      else
      {
        if (v17 >= *(v48 + 16))
        {
          goto LABEL_38;
        }

        v18 = *(v12 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 hex];
      if (!v21)
      {
        sub_1000CAD00();
        v21 = sub_1000CACD0();
      }

      v22 = [objc_opt_self() colorWithHexString:v21];

      [v22 red];
      [v22 green];
      [v22 blue];
      (*v15)(v53, v47, v54);
      sub_1000CA600();

      p_align = [v51 locations];
      v23 = sub_1000CAED0();

      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_1000CB2A0();
      }

      else
      {
        if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v24 = *(v23 + 8 * v16);
      }

      v25 = v24;

      sub_1000C9710();

      v26 = sub_1000CA730();
      v28 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10006DDB8(0, *(v2 + 2) + 1, 1, v2);
      }

      p_align = *(v2 + 2);
      v29 = *(v2 + 3);
      if (p_align >= v29 >> 1)
      {
        v2 = sub_10006DDB8((v29 > 1), p_align + 1, 1, v2);
      }

      *(v2 + 2) = p_align + 1;
      v30 = &v2[16 * p_align];
      *(v30 + 4) = v26;
      *(v30 + 5) = v28;
      ++v16;
      v12 = v52;
      if (v20 == v14)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  if (!v13)
  {
    v31 = *((p_align & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_28;
    }

LABEL_45:

    return sub_1000CA750();
  }

  v45 = sub_1000CB3A0();
  v12 = p_align;
  v31 = v45;
  if (!v45)
  {
    goto LABEL_45;
  }

LABEL_28:
  v32 = v12;
  v55 = _swiftEmptyArrayStorage;
  result = sub_1000CB310();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v34 = objc_opt_self();
    v35 = 0;
    v36 = v32;
    v37 = v32 & 0xC000000000000001;
    v38 = enum case for Color.RGBColorSpace.sRGB(_:);
    v39 = (v2 + 104);
    do
    {
      if (v37)
      {
        v41 = sub_1000CB2A0();
      }

      else
      {
        v41 = *(v36 + 8 * v35 + 32);
      }

      v42 = v41;
      v43 = [v41 hex];
      if (!v43)
      {
        sub_1000CAD00();
        v43 = sub_1000CACD0();
      }

      ++v35;
      v40 = [v34 colorWithHexString:v43];

      [v40 red];
      [v40 green];
      [v40 blue];
      (*v39)(v53, v38, v54);
      sub_1000CA600();

      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
      v36 = v52;
    }

    while (v31 != v35);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_100033D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v22 = a1;
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  sub_1000C9590();
  v21 = *(v3 + 32);
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v13, v10, v6);
  *(v15 + v14) = v4;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v20;
  v16[1] = a3;
  aBlock[4] = sub_100034334;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034144;
  aBlock[3] = &unk_10010D7E8;
  v17 = _Block_copy(aBlock);

  [v21 fetchLatestResultsWithOperationInfo:v22 completion:v17];
  _Block_release(v17);
  return (*(v7 + 8))(v12, v6);
}

void sub_100033FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *, uint64_t))
{
  v21 = a7;
  v11 = sub_1000C95A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9590();
  sub_1000C94E0();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    swift_unknownObjectRetain();
  }

  v18 = *(a6 + 16);
  if (v18)
  {
    v19 = *(a6 + 24);

    v18(a1, v17, a4, v16);
    sub_100034478(v18, v19);
  }

  v21(a1, a2, v17, a4);
}

uint64_t sub_100034144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1000C9480();
    sub_100034420();
    v7 = sub_1000CAC10();
  }

  v10 = a2;
  swift_unknownObjectRetain();
  v11 = a5;
  v9(a2, v7, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_100034220()
{
  sub_100034478(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100034284()
{
  v1 = sub_1000C95A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100034334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000C95A0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100033FAC(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t sub_100034408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100034420()
{
  result = qword_1001205F0;
  if (!qword_1001205F0)
  {
    sub_1000C9480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001205F0);
  }

  return result;
}

uint64_t sub_100034478(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100034488()
{
  sub_10001E37C(v0 + 2);
  sub_10001E37C(v0 + 7);
  sub_10001E37C(v0 + 12);

  return swift_deallocClassInstance();
}

void sub_1000344F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100019558(&unk_10011F9E0, &unk_1000D47A0);
      v7 = *(type metadata accessor for Session(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for Session(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_100034694(uint64_t *a1)
{
  v2 = *(type metadata accessor for Session(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002AB68(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10003473C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10003473C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000CB510(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Session(0);
        v6 = sub_1000CAF20();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Session(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100034C7C(v8, v9, a1, v4);
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
    return sub_100034868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100034868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v8 - 8);
  v52 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000C95A0();
  v10 = *(v51 - 8);
  v11 = __chkstk_darwin(v51);
  v53 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v37 - v13;
  v47 = type metadata accessor for Session(0);
  v14 = __chkstk_darwin(v47);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v56 = &v37 - v17;
  result = __chkstk_darwin(v16);
  v55 = &v37 - v20;
  v39 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v48 = (v10 + 8);
    v49 = (v10 + 32);
    v23 = v21 + v22 * (a3 - 1);
    v44 = -v22;
    v45 = v21;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v21 + v22 * a3;
LABEL_5:
    v42 = v23;
    v43 = a3;
    v40 = v25;
    v41 = v24;
    v54 = v24;
    while (1)
    {
      v26 = v55;
      sub_1000377E4(v25, v55, type metadata accessor for Session);
      v27 = v56;
      sub_1000377E4(v23, v56, type metadata accessor for Session);
      v28 = v52;
      sub_1000377E4(v26, v52, type metadata accessor for AppearanceEvent);
      v29 = v50;
      v30 = *v49;
      v31 = v51;
      (*v49)(v50, v28, v51);
      sub_1000377E4(v27, v28, type metadata accessor for AppearanceEvent);
      v32 = v53;
      v30(v53, v28, v31);
      v33 = sub_1000C9510();
      v34 = *v48;
      (*v48)(v32, v31);
      v34(v29, v31);
      sub_10003771C(v56, type metadata accessor for Session);
      result = sub_10003771C(v55, type metadata accessor for Session);
      if ((v33 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v23 = v42 + v38;
        v24 = v41 - 1;
        v25 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_10003777C(v25, v46, type metadata accessor for Session);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10003777C(v35, v23, type metadata accessor for Session);
      v23 += v44;
      v25 += v44;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100034C7C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v8 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v8 - 8);
  v149 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000C95A0();
  v10 = *(v148 - 8);
  v11 = __chkstk_darwin(v148);
  v150 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v147 = &v127 - v13;
  v144 = type metadata accessor for Session(0);
  v138 = *(v144 - 8);
  v14 = __chkstk_darwin(v144);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v143 = &v127 - v18;
  v19 = __chkstk_darwin(v17);
  v152 = &v127 - v20;
  result = __chkstk_darwin(v19);
  v153 = &v127 - v22;
  v23 = a3[1];
  v134 = a3;
  if (v23 < 1)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_93:
    a4 = *v130;
    if (!*v130)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10002A814(v25);
      v25 = result;
    }

    v154 = v25;
    v123 = *(v25 + 2);
    if (v123 >= 2)
    {
      while (1)
      {
        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_129;
        }

        a3 = *&v25[16 * v123];
        v125 = *&v25[16 * v123 + 24];
        sub_100035918((v124 + *(v138 + 72) * a3), (v124 + *(v138 + 72) * *&v25[16 * v123 + 16]), v124 + *(v138 + 72) * v125, a4);
        if (v5)
        {
        }

        if (v125 < a3)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10002A814(v25);
        }

        if (v123 - 2 >= *(v25 + 2))
        {
          goto LABEL_119;
        }

        v126 = &v25[16 * v123];
        *v126 = a3;
        *(v126 + 1) = v125;
        v154 = v25;
        result = sub_10002A788(v123 - 1);
        v25 = v154;
        v123 = *(v154 + 2);
        a3 = v134;
        if (v123 <= 1)
        {
        }
      }
    }
  }

  v127 = a4;
  v24 = 0;
  v145 = (v10 + 8);
  v146 = (v10 + 32);
  v25 = _swiftEmptyArrayStorage;
  v128 = v16;
  while (1)
  {
    v26 = v24;
    v139 = v25;
    if (v24 + 1 >= v23)
    {
      ++v24;
    }

    else
    {
      v140 = v23;
      v129 = v5;
      v27 = *a3;
      v28 = *a3 + *(v138 + 72) * (v24 + 1);
      v142 = *(v138 + 72);
      v29 = v142;
      v30 = v27;
      v151 = v27;
      v131 = v24;
      v31 = v28;
      v32 = v153;
      sub_1000377E4(v28, v153, type metadata accessor for Session);
      v33 = v30 + v29 * v24;
      v34 = v152;
      sub_1000377E4(v33, v152, type metadata accessor for Session);
      v35 = v32;
      v36 = v149;
      sub_1000377E4(v35, v149, type metadata accessor for AppearanceEvent);
      v37 = v147;
      v38 = *v146;
      v39 = v148;
      (*v146)(v147, v36, v148);
      sub_1000377E4(v34, v36, type metadata accessor for AppearanceEvent);
      v40 = v150;
      v137 = v38;
      v38(v150, v36, v39);
      LODWORD(v141) = sub_1000C9510();
      v41 = *v145;
      (*v145)(v40, v39);
      v136 = v41;
      v41(v37, v39);
      sub_10003771C(v152, type metadata accessor for Session);
      result = sub_10003771C(v153, type metadata accessor for Session);
      a4 = v131 + 2;
      v42 = v151 + v142 * (v131 + 2);
      while (1)
      {
        v24 = v140;
        if (v140 == a4)
        {
          break;
        }

        v43 = v153;
        sub_1000377E4(v42, v153, type metadata accessor for Session);
        v151 = v31;
        v44 = v31;
        v45 = v152;
        sub_1000377E4(v44, v152, type metadata accessor for Session);
        v46 = v149;
        sub_1000377E4(v43, v149, type metadata accessor for AppearanceEvent);
        v47 = v147;
        v48 = v148;
        v49 = v137;
        v137(v147, v46, v148);
        sub_1000377E4(v45, v46, type metadata accessor for AppearanceEvent);
        v50 = v150;
        v49(v150, v46, v48);
        v51 = sub_1000C9510() & 1;
        v52 = v136;
        v136(v50, v48);
        v52(v47, v48);
        sub_10003771C(v45, type metadata accessor for Session);
        result = sub_10003771C(v153, type metadata accessor for Session);
        ++a4;
        v42 += v142;
        v31 = v151 + v142;
        v53 = (v141 & 1) == v51;
        v25 = v139;
        if (!v53)
        {
          v24 = a4 - 1;
          break;
        }
      }

      v5 = v129;
      a3 = v134;
      v54 = v128;
      v26 = v131;
      if (v141)
      {
        if (v24 < v131)
        {
          goto LABEL_122;
        }

        if (v131 < v24)
        {
          a4 = v142 * (v24 - 1);
          v55 = v24 * v142;
          v56 = v24;
          v57 = v131 * v142;
          do
          {
            if (v26 != --v56)
            {
              v58 = *v134;
              if (!*v134)
              {
                goto LABEL_128;
              }

              sub_10003777C(v58 + v57, v54, type metadata accessor for Session);
              if (v57 < a4 || v58 + v57 >= (v58 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10003777C(v54, v58 + a4, type metadata accessor for Session);
              v25 = v139;
            }

            ++v26;
            a4 -= v142;
            v55 -= v142;
            v57 += v142;
          }

          while (v26 < v56);
          v5 = v129;
          a3 = v134;
          v26 = v131;
        }
      }
    }

    v59 = a3[1];
    if (v24 < v59)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_121;
      }

      if (v24 - v26 < v127)
      {
        if (__OFADD__(v26, v127))
        {
          goto LABEL_123;
        }

        if (v26 + v127 < v59)
        {
          v59 = v26 + v127;
        }

        if (v59 < v26)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v133 = v59;
        if (v24 != v59)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v24 < v26)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002A928(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v78 = *(v25 + 3);
    v79 = a4 + 1;
    if (a4 >= v78 >> 1)
    {
      result = sub_10002A928((v78 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v79;
    v80 = &v25[16 * a4];
    *(v80 + 4) = v26;
    *(v80 + 5) = v24;
    if (!*v130)
    {
      goto LABEL_130;
    }

    if (a4)
    {
      v81 = *v130;
      while (1)
      {
        v82 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v83 = *(v25 + 4);
          v84 = *(v25 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_62:
          if (v86)
          {
            goto LABEL_109;
          }

          v99 = &v25[16 * v79];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_112;
          }

          v105 = &v25[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_116;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v79 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v109 = &v25[16 * v79];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_76:
        if (v104)
        {
          goto LABEL_111;
        }

        v112 = &v25[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_114;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_83:
        a4 = v82 - 1;
        if (v82 - 1 >= v79)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v120 = *&v25[16 * a4 + 32];
        v121 = *&v25[16 * v82 + 40];
        sub_100035918((*a3 + *(v138 + 72) * v120), (*a3 + *(v138 + 72) * *&v25[16 * v82 + 32]), *a3 + *(v138 + 72) * v121, v81);
        if (v5)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10002A814(v25);
        }

        if (a4 >= *(v25 + 2))
        {
          goto LABEL_106;
        }

        v122 = &v25[16 * a4];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v154 = v25;
        result = sub_10002A788(v82);
        v25 = v154;
        v79 = *(v154 + 2);
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v25[16 * v79 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_107;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_108;
      }

      v94 = &v25[16 * v79];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_110;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_113;
      }

      if (v98 >= v90)
      {
        v116 = &v25[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_117;
        }

        if (v85 < v119)
        {
          v82 = v79 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v23 = a3[1];
    if (v24 >= v23)
    {
      goto LABEL_93;
    }
  }

  v129 = v5;
  v60 = *a3;
  v61 = *(v138 + 72);
  v62 = *a3 + v61 * (v24 - 1);
  v141 = -v61;
  v131 = v26;
  v63 = v26 - v24;
  v142 = v60;
  v132 = v61;
  v64 = v60 + v24 * v61;
LABEL_33:
  v140 = v24;
  v135 = v64;
  v136 = v63;
  a4 = v63;
  v137 = v62;
  v65 = v62;
  while (1)
  {
    v151 = a4;
    v66 = v153;
    sub_1000377E4(v64, v153, type metadata accessor for Session);
    v67 = v152;
    sub_1000377E4(v65, v152, type metadata accessor for Session);
    v68 = v149;
    sub_1000377E4(v66, v149, type metadata accessor for AppearanceEvent);
    v69 = v147;
    v70 = *v146;
    v71 = v148;
    (*v146)(v147, v68, v148);
    sub_1000377E4(v67, v68, type metadata accessor for AppearanceEvent);
    v72 = v150;
    v70(v150, v68, v71);
    v73 = sub_1000C9510();
    a4 = v145;
    v74 = *v145;
    (*v145)(v72, v71);
    v74(v69, v71);
    sub_10003771C(v152, type metadata accessor for Session);
    result = sub_10003771C(v153, type metadata accessor for Session);
    if ((v73 & 1) == 0)
    {
LABEL_32:
      v24 = v140 + 1;
      v62 = v137 + v132;
      v63 = v136 - 1;
      v64 = v135 + v132;
      if (v140 + 1 != v133)
      {
        goto LABEL_33;
      }

      v5 = v129;
      v24 = v133;
      a3 = v134;
      v25 = v139;
      v26 = v131;
      goto LABEL_41;
    }

    v75 = v151;
    if (!v142)
    {
      break;
    }

    v76 = v143;
    sub_10003777C(v64, v143, type metadata accessor for Session);
    swift_arrayInitWithTakeFrontToBack();
    sub_10003777C(v76, v65, type metadata accessor for Session);
    v65 += v141;
    v64 += v141;
    v77 = __CFADD__(v75, 1);
    a4 = v75 + 1;
    if (v77)
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_100035918(char *a1, char *a2, unint64_t a3, char *a4)
{
  v71 = a3;
  v7 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v7 - 8);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000C95A0();
  v9 = *(v66 - 8);
  v10 = __chkstk_darwin(v66);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v52 - v12;
  v62 = type metadata accessor for Session(0);
  v13 = __chkstk_darwin(v62);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v70 = &v52 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_59;
  }

  v19 = v71 - a2;
  if (v71 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = &a4[v22];
    if (v22 >= 1)
    {
      v38 = -v18;
      v55 = (v9 + 8);
      v56 = (v9 + 32);
      v39 = v37;
      v68 = a1;
      v69 = a4;
      v57 = -v18;
      do
      {
        v53 = v37;
        v40 = &a2[v38];
        v58 = a2;
        v59 = &a2[v38];
        while (1)
        {
          v41 = v71;
          if (a2 <= a1)
          {
            v74 = a2;
            v72 = v53;
            goto LABEL_57;
          }

          v54 = v37;
          v71 += v38;
          v60 = &v39[v38];
          v61 = v41;
          v42 = v70;
          sub_1000377E4(&v39[v38], v70, type metadata accessor for Session);
          v43 = v63;
          sub_1000377E4(v40, v63, type metadata accessor for Session);
          v44 = v67;
          sub_1000377E4(v42, v67, type metadata accessor for AppearanceEvent);
          v45 = *v56;
          v46 = v64;
          v47 = v66;
          (*v56)(v64, v44, v66);
          sub_1000377E4(v43, v44, type metadata accessor for AppearanceEvent);
          v48 = v65;
          v45(v65, v44, v47);
          v49 = sub_1000C9510();
          v50 = *v55;
          (*v55)(v48, v47);
          v50(v46, v47);
          sub_10003771C(v43, type metadata accessor for Session);
          sub_10003771C(v70, type metadata accessor for Session);
          if (v49)
          {
            break;
          }

          v51 = v60;
          v37 = v60;
          if (v61 < v39 || v71 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v59;
            a1 = v68;
            v38 = v57;
          }

          else
          {
            v40 = v59;
            a1 = v68;
            v38 = v57;
            if (v61 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v37;
          a2 = v58;
          if (v51 <= v69)
          {
            goto LABEL_55;
          }
        }

        if (v61 < v58 || v71 >= v58)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v68;
          v37 = v54;
          v38 = v57;
        }

        else
        {
          a2 = v59;
          a1 = v68;
          v37 = v54;
          v38 = v57;
          if (v61 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v69);
    }

LABEL_55:
    v74 = a2;
    v72 = v37;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || &a1[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < v71)
    {
      v58 = (v9 + 8);
      v59 = (v9 + 32);
      v60 = v18;
      do
      {
        v68 = a1;
        v69 = a4;
        v24 = v70;
        sub_1000377E4(a2, v70, type metadata accessor for Session);
        v25 = v63;
        sub_1000377E4(a4, v63, type metadata accessor for Session);
        v26 = v67;
        sub_1000377E4(v24, v67, type metadata accessor for AppearanceEvent);
        v27 = *v59;
        v28 = v64;
        v29 = v66;
        (*v59)(v64, v26, v66);
        sub_1000377E4(v25, v26, type metadata accessor for AppearanceEvent);
        v30 = a2;
        v31 = v65;
        v27(v65, v26, v29);
        v32 = sub_1000C9510();
        v33 = *v58;
        (*v58)(v31, v29);
        v33(v28, v29);
        a4 = v69;
        sub_10003771C(v25, type metadata accessor for Session);
        sub_10003771C(v70, type metadata accessor for Session);
        if (v32)
        {
          v34 = v60;
          v35 = v68;
          if (v68 < v30 || v68 >= &v30[v60])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = &v30[v34];
        }

        else
        {
          v34 = v60;
          v36 = &a4[v60];
          v35 = v68;
          if (v68 < a4 || v68 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v30;
          }

          else
          {
            a2 = v30;
            if (v68 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v73 = v36;
          a4 += v34;
        }

        a1 = &v35[v34];
        v74 = a1;
      }

      while (a4 < v61 && a2 < v71);
    }
  }

LABEL_57:
  sub_10002A828(&v74, &v73, &v72);
  return 1;
}

void *sub_1000360B4(void *a1)
{
  v2 = sub_100019558(&qword_10011EA08, &unk_1000D4790);
  v3 = __chkstk_darwin(v2 - 8);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v40 - v5;
  v58 = type metadata accessor for Session(0);
  v6 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v40 - v11;
  __chkstk_darwin(v10);
  v56 = &v40 - v12;
  v13 = a1[2];

  if (v13 < 5)
  {
    return a1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1 = sub_10002AAAC(a1);
  }

  v46 = v13;
  v47 = a1;
  v15 = a1[2];
  v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  if (v15)
  {
    v17 = 0;
    v45 = 0;
    v57 = *(v6 + 72);
    v43 = v16 + v57;
    v54 = v16;
    do
    {
      v18 = v57 * v17;
      v53 = v15;
      v19 = v57 * (v17 - v15);
      while (1)
      {
        v20 = v17;
        v21 = v16 + v18;
        v22 = v56;
        sub_1000377E4(v21, v56, type metadata accessor for Session);
        v23 = v55;
        sub_10002DFB4(v22 + *(v58 + 24), v55, &qword_10011EA08, &unk_1000D4790);
        v24 = type metadata accessor for EngagementEvent(0);
        v25 = *(*(v24 - 8) + 48);
        v26 = v25(v23, 1, v24);
        sub_100031844(v23, &qword_10011EA08, &unk_1000D4790);
        sub_10003771C(v22, type metadata accessor for Session);
        if (v26 == 1)
        {
          break;
        }

        v17 = v20 + 1;
        v18 += v57;
        v19 += v57;
        v16 = v54;
        if (v20 + 1 >= v53)
        {
          goto LABEL_22;
        }
      }

      v41 = v21;
      v42 = v18;
      v27 = 0;
      v48 = v54 + v57 * (v53 - 1);
      v49 = v25;
      v28 = v20;
      v15 = v53;
      do
      {
        if (v28 >= --v15)
        {
          v16 = v54;
          goto LABEL_22;
        }

        v29 = v50;
        sub_1000377E4(v48 + v27, v50, type metadata accessor for Session);
        v30 = v51;
        sub_10002DFB4(v29 + *(v58 + 24), v51, &qword_10011EA08, &unk_1000D4790);
        v52 = v49(v30, 1, v24);
        sub_100031844(v30, &qword_10011EA08, &unk_1000D4790);
        sub_10003771C(v29, type metadata accessor for Session);
        v19 += v57;
        v27 -= v57;
      }

      while (v52 == 1);
      v31 = v41;
      v32 = v44;
      sub_10003777C(v41, v44, type metadata accessor for Session);
      v33 = v57 * v53 + v27;
      if (v42 < v33 || v31 >= v43 + v27 + v57 * v53)
      {
        v16 = v54;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v16 = v54;
        if (v19)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      sub_10003777C(v32, v33 + v16, type metadata accessor for Session);
      v17 = v28 + 1;
    }

    while (v17 < v15);
  }

  else
  {
    v45 = 0;
  }

LABEL_22:
  if (v47[2] <= 5uLL)
  {
  }

  else
  {
    sub_1000344F4(v47, v16, 0, 0xBuLL);
  }

  v35 = v45;
  v59 = v34;

  sub_100034694(&v59);
  if (!v35)
  {
    swift_bridgeObjectRelease_n();
    a1 = v59;
    sub_100019558(&unk_10011E820, &unk_1000D5240);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000D3D20;
    *(v36 + 56) = &type metadata for Int;
    *(v36 + 64) = &protocol witness table for Int;
    *(v36 + 32) = v46;
    v37 = a1[2];
    *(v36 + 96) = &type metadata for Int;
    *(v36 + 104) = &protocol witness table for Int;
    *(v36 + 72) = v37;
    sub_100024CA4();
    v38 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0("event-processing sidecar task limited sessions from %ld to %ld", v40, v41);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100036674(char *a1, char *a2)
{
  v92 = a2;
  v85 = sub_100019558(&qword_10011E9D8, &qword_1000D4760);
  v3 = __chkstk_darwin(v85);
  v84 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v83 = &v82 - v5;
  v86 = sub_100019558(&qword_10011E9E0, &qword_1000D4768);
  v6 = __chkstk_darwin(v86);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v82 - v8;
  v9 = sub_1000C95A0();
  v96 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v95 = &v82 - v14;
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  v17 = sub_100019558(&qword_1001217F0, &qword_1000D4770);
  __chkstk_darwin(v17 - 8);
  v19 = &v82 - v18;
  v20 = type metadata accessor for NewsTimelineEntry(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v93 = &v82 - v25;
  v89 = v26;
  __chkstk_darwin(v24);
  v28 = &v82 - v27;
  v29 = *(type metadata accessor for TaskContext(0) + 20);
  v91 = a1;
  sub_10002DFB4(&a1[v29], v19, &qword_1001217F0, &qword_1000D4770);
  v88 = v21;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100031844(v19, &qword_1001217F0, &qword_1000D4770);
    sub_100024CA4();
    v30 = sub_1000CB160();
    v31 = sub_1000CB060();
    sub_1000C9BE0("event-processing sidecar task done, because there is no last entry", 66, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);

    sub_100019558(&unk_10011ED30, &qword_1000D4778);
    swift_allocObject();
    return sub_1000C99D0();
  }

  else
  {
    sub_10003777C(v19, v28, type metadata accessor for NewsTimelineEntry);
    sub_1000C9590();
    sub_1000376D8(&qword_10011E9E8, &protocol conformance descriptor for Date);
    v33 = v16;
    if (sub_1000CAC60())
    {
      v34 = v9;
      v35 = v93;
      sub_1000377E4(v28, v93, type metadata accessor for NewsTimelineEntry);
      sub_100024CA4();
      v36 = sub_1000CB160();
      v37 = sub_1000CB060();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v97 = v39;
        *v38 = 136315138;
        sub_1000376D8(&qword_10011EA00, &protocol conformance descriptor for Date);
        v40 = sub_1000CB520();
        v41 = v28;
        v43 = v42;
        sub_10003771C(v35, type metadata accessor for NewsTimelineEntry);
        v44 = sub_10009A0C0(v40, v43, &v97);
        v28 = v41;

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "event-processing sidecar task cannot query because the last entry dated %s is in the future", v38, 0xCu);
        sub_10001E37C(v39);
      }

      else
      {

        sub_10003771C(v35, type metadata accessor for NewsTimelineEntry);
      }

      v50 = v96;
      sub_100019558(&unk_10011ED30, &qword_1000D4778);
      swift_allocObject();
      v51 = sub_1000C99D0();
      (*(v50 + 1))(v33, v34);
      sub_10003771C(v28, type metadata accessor for NewsTimelineEntry);
      return v51;
    }

    else
    {
      sub_1000C9530();
      v45 = sub_1000CAC70();
      v46 = v96;
      v47 = v9;
      v82 = v28;
      if (v45)
      {
        v48 = v96;
        v49 = v95;
        (*(v96 + 4))(v95, v12, v47);
      }

      else
      {
        (*(v96 + 1))(v12, v9);
        v48 = v46;
        v52 = *(v46 + 2);
        v49 = v95;
        v52(v95, v28, v47);
      }

      result = sub_1000CAC80();
      if (result)
      {
        v53 = *(v48 + 2);
        v54 = v83;
        v53(v83, v49, v47);
        v55 = v85;
        v53((v54 + *(v85 + 48)), v33, v47);
        v93 = v33;
        v56 = v84;
        sub_10002DFB4(v54, v84, &qword_10011E9D8, &qword_1000D4760);
        v57 = *(v55 + 48);
        v58 = *(v48 + 4);
        v59 = v94;
        v58(v94, v56, v47);
        v60 = *(v48 + 1);
        v60(v56 + v57, v47);
        v61 = v54;
        v62 = v87;
        sub_100037204(v61, v56);
        v58((v59 + *(v86 + 36)), v56 + *(v55 + 48), v47);
        v96 = v60;
        v60(v56, v47);
        sub_10002DFB4(v59, v62, &qword_10011E9E0, &qword_1000D4768);
        sub_100024CA4();
        v63 = sub_1000CB160();
        v64 = sub_1000CB060();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 136446210;
          v97 = 0;
          v98 = 0xE000000000000000;
          v99 = v66;
          sub_1000CB340();
          v100._countAndFlagsBits = 3026478;
          v100._object = 0xE300000000000000;
          sub_1000CADD0(v100);
          sub_1000CB340();
          v67 = v97;
          v68 = v98;
          sub_100031844(v62, &qword_10011E9E0, &qword_1000D4768);
          v69 = sub_10009A0C0(v67, v68, &v99);

          *(v65 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "event-processing sidecar task will process events in range %{public}s", v65, 0xCu);
          sub_10001E37C(v66);
        }

        else
        {

          v70 = sub_100031844(v62, &qword_10011E9E0, &qword_1000D4768);
        }

        __chkstk_darwin(v70);
        v71 = v91;
        v72 = v92;
        v73 = v94;
        *(&v82 - 4) = v92;
        *(&v82 - 3) = v73;
        *(&v82 - 2) = v71;
        sub_100019558(&qword_10011E9F0, &qword_1000D4780);
        sub_1000C9A20();

        v74 = sub_1000C9990();
        sub_100019558(&qword_10011E9F8, &qword_1000D4788);
        sub_1000C99B0();

        v75 = v82;
        v76 = v90;
        sub_1000377E4(v82, v90, type metadata accessor for NewsTimelineEntry);
        v77 = (*(v88 + 80) + 24) & ~*(v88 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = v72;
        sub_10003777C(v76, v78 + v77, type metadata accessor for NewsTimelineEntry);

        v79 = sub_1000C9990();
        v80 = sub_1000C99A0();

        v81 = v96;
        v96(v95, v47);
        v81(v93, v47);
        sub_10003771C(v75, type metadata accessor for NewsTimelineEntry);
        sub_100031844(v73, &qword_10011E9E0, &qword_1000D4768);
        return v80;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100037204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011E9D8, &qword_1000D4760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000372A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100092C80(*a1);
  v4 = sub_1000360B4(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_1000372F0()
{
  v1 = (type metadata accessor for NewsTimelineEntry(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1000C95A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);

  v7 = type metadata accessor for TodayContent(0);
  v8 = v6 + *(v7 + 20);
  v9 = type metadata accessor for Banner(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v18 = v4;

    v10 = v9[7];
    v11 = sub_1000C9480();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v8[v10], 1, v11))
    {
      (*(v12 + 8))(&v8[v10], v11);
    }

    v13 = *&v8[v9[9]];
    if (v13 != 1)
    {
    }

    sub_1000375D8(*&v8[v9[10]], *&v8[v9[10] + 8]);
    v4 = v18;
  }

  swift_unknownObjectRelease();
  v14 = *(v7 + 36);
  v15 = sub_1000C9480();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000375D8(void *a1, void *a2)
{
}

uint64_t sub_100037610(uint64_t *a1)
{
  v3 = *(type metadata accessor for NewsTimelineEntry(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *a1;
  sub_10001E2E4((*(v1 + 16) + 96), *(*(v1 + 16) + 120));
  type metadata accessor for SessionReporter();
  return sub_10003D44C(v5, v1 + v4);
}

uint64_t sub_1000376D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C95A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003771C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003777C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000377E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10003784C()
{
  result = [objc_allocWithZone(type metadata accessor for TodayIntent()) init];
  qword_1001342F8 = result;
  unk_100134300 = &off_10010D850;
  return result;
}

id sub_10003788C()
{
  result = [objc_allocWithZone(NTPBTodayModuleContentRequest) init];
  if (result)
  {
    v1 = result;
    [result setModuleDescriptorType:0];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000378EC()
{
  if (qword_10011CDC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1001342F8;
  v1 = qword_1001342F8;
  return v0;
}

uint64_t sub_100037950@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() nss_NewsURLForForYou];
  if (v2)
  {
    v3 = v2;
    sub_1000C9440();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1000C9480();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

id sub_1000379FC()
{
  result = [objc_allocWithZone(NTPBTodayModuleContentRequest) init];
  if (result)
  {
    v2 = result;
    [result setModuleDescriptorType:1];
    v3 = [v0 tag];
    if (v3)
    {
      v4 = v3;
      v5 = [v4 identifier];
      v6 = v4;
      if (v5)
      {
        v7 = v5;
        [v2 setTagID:v5];

        v8 = [v4 displayString];
        if (!v8)
        {
          sub_1000CAD00();
          v8 = sub_1000CACD0();
        }

        [v2 setName:v8];

        v9 = [v4 nameColorLight];
        [v2 setNameColorLight:v9];

        v6 = [v4 nameColorDark];
        [v2 setNameColorDark:v6];
      }
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037B78@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 tag];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    sub_1000CAD00();

    v6 = objc_opt_self();
    v7 = sub_1000CACD0();

    v8 = [v6 nss_NewsURLForTagID:v7];

    sub_1000C9440();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1000C9480();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t sub_100037CAC()
{
  v1 = 1701736302;
  v2 = [v0 tag];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 identifier];

    if (v4)
    {
      v1 = sub_1000CAD00();
    }
  }

  return v1;
}

id sub_100037D3C()
{
  if (qword_10011CDD0 != -1)
  {
    swift_once();
  }

  v0 = qword_100134308;
  v1 = objc_allocWithZone(type metadata accessor for TagIntent());
  v2 = v0;
  v3 = [v1 init];
  [v3 setTag:v2];

  return v3;
}

void sub_100037DEC()
{

  v0 = NSSNewsTagWidgetPlaceholderName();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for Tag();
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v3 = sub_1000CACD0();

    v4 = [v2 initWithIdentifier:v3 displayString:v1];

    qword_100134308 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s10NewsToday29TagIntentC14equalInContent3lhs3rhsSbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 tag];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    v6 = sub_1000CAD00();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 tag];
  if (!v9 || (v10 = v9, v11 = [v9 identifier], v10, !v11))
  {
    v12 = 0;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v14)
    {
      if (v6 == v12 && v8 == v14)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1000CB530();
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v12 = sub_1000CAD00();
  v14 = v13;

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!v14)
  {
    v15 = 1;
    return v15 & 1;
  }

  v15 = 0;
LABEL_17:

  return v15 & 1;
}

__n128 sub_100037FFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100038010(uint64_t a1, int a2)
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

uint64_t sub_100038058(uint64_t result, int a2, int a3)
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

__n128 sub_1000380CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100019558(&qword_10011EA20, &qword_1000D48F8);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  sub_100019558(&qword_10011EA28, &qword_1000D4900);
  inited = swift_initStackObject();
  v21[0] = xmmword_1000D3410;
  *(inited + 16) = xmmword_1000D3410;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100019558(&qword_10011EA30, &qword_1000D4908);
  v6 = swift_initStackObject();
  *(v6 + 16) = v21[0];
  *(v6 + 32) = UIFontWeightTrait;
  *(v6 + 40) = UIFontWeightSemibold;
  v7 = UIFontDescriptorTraitsAttribute;
  v8 = UIFontWeightTrait;
  v9 = sub_1000509B8(v6);
  swift_setDeallocating();
  sub_100031844(v6 + 32, &qword_10011EA38, &qword_1000D4910);
  *(inited + 64) = sub_100019558(&qword_10011EA40, &qword_1000D4918);
  *(inited + 40) = v9;
  sub_100050AA8(inited);
  swift_setDeallocating();
  sub_100031844(inited + 32, &qword_10011F990, &qword_1000D4920);
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  type metadata accessor for AttributeName(0);
  sub_100038778();
  isa = sub_1000CAC00().super.isa;

  v12 = [v10 fontDescriptorByAddingAttributes:isa];

  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  sub_1000CA2F0();
  *v4 = sub_1000CA0D0();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v14 = sub_100019558(&qword_10011EA48, &qword_1000D4928);
  sub_10003841C(&v4[*(v14 + 44)]);
  sub_1000CA7A0();
  sub_1000C9DC0();

  sub_1000387D0(v4, a1);
  v15 = a1 + *(sub_100019558(&qword_10011EA50, &qword_1000D4930) + 36);
  result = *(&v21[11] + 8);
  v17 = *(&v21[13] + 8);
  v18 = *(&v21[14] + 8);
  *(v15 + 64) = *(&v21[12] + 8);
  *(v15 + 80) = v17;
  *(v15 + 96) = v18;
  v19 = *(&v21[9] + 8);
  v20 = *(&v21[10] + 8);
  *v15 = *(&v21[8] + 8);
  *(v15 + 16) = v19;
  *(v15 + 32) = v20;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10003841C@<X0>(void *a3@<X8>)
{
  v43 = a3;
  v42 = sub_100019558(&qword_10011EA58, &qword_1000D4938);
  v36 = *(v42 - 8);
  v3 = v36;
  v4 = __chkstk_darwin(v42);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_1000CA380();
  v10 = v9;
  v12 = v11;
  v13 = sub_1000CA340();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100025894(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v44 = v13;
  v45 = v15;
  v17 &= 1u;
  LOBYTE(v46) = v17;
  v47 = v19;
  v48 = KeyPath;
  LOBYTE(v49) = 1;
  sub_100019558(&qword_10011EA60, &qword_1000D4970);
  sub_100038894();
  v35 = v7;
  sub_1000CA470();
  sub_100025894(v13, v15, v17);

  sub_1000CA7A0();
  sub_1000C9CC0();
  v39 = v46;
  v40 = v44;
  v37 = v49;
  v38 = v48;
  v52 = 1;
  v51 = v45;
  v50 = v47;
  v21 = *(v3 + 16);
  v22 = v41;
  v23 = v7;
  v24 = v42;
  v21(v41, v23, v42);
  v25 = v52;
  LOBYTE(v15) = v51;
  LOBYTE(v3) = v50;
  v26 = v43;
  *v43 = 0;
  *(v26 + 8) = 1;
  v27 = sub_100019558(&qword_10011EA80, &unk_1000D4980);
  v28 = v24;
  v21(v26 + *(v27 + 48), v22, v24);
  v29 = v26 + *(v27 + 64);
  *v29 = 0;
  v29[8] = v25;
  v30 = v39;
  *(v29 + 2) = v40;
  v29[24] = v15;
  *(v29 + 4) = v30;
  v29[40] = v3;
  v31 = v37;
  *(v29 + 6) = v38;
  *(v29 + 7) = v31;
  v32 = *(v36 + 8);
  v32(v35, v28);
  return (v32)(v22, v28);
}

unint64_t sub_100038778()
{
  result = qword_10011D8E8;
  if (!qword_10011D8E8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D8E8);
  }

  return result;
}

uint64_t sub_1000387D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011EA20, &qword_1000D48F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C9ED0();
  *a1 = result;
  return result;
}

unint64_t sub_100038894()
{
  result = qword_10011EA68;
  if (!qword_10011EA68)
  {
    sub_1000195A0(&qword_10011EA60, &qword_1000D4970);
    sub_10001B1BC(&qword_10011EA70, &qword_10011EA78, &qword_1000D4978, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA68);
  }

  return result;
}

unint64_t sub_100038950()
{
  result = qword_10011EA88;
  if (!qword_10011EA88)
  {
    sub_1000195A0(&qword_10011EA50, &qword_1000D4930);
    sub_10001B1BC(&qword_10011EA90, &qword_10011EA20, &qword_1000D48F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA88);
  }

  return result;
}

unint64_t sub_100038A0C()
{
  result = qword_10011EAA8;
  if (!qword_10011EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAA8);
  }

  return result;
}

uint64_t sub_100038AC0()
{
  v0 = sub_100019558(&qword_10011EB58, &qword_1000D4EA8);
  sub_10001A5EC(v0, qword_100134310);
  sub_10001A5B4(v0, qword_100134310);
  sub_10003A008();
  return sub_1000C9170();
}

uint64_t sub_100038B44()
{
  v0 = sub_100019558(&qword_10011EAF0, &qword_1000D4B30);
  sub_10001A5EC(v0, qword_100134328);
  sub_10001A5B4(v0, qword_100134328);
  sub_10003A620();
  return sub_1000C90B0();
}

uint64_t sub_100038BC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100038D0C, 0, 0);
}

uint64_t sub_100038D0C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_10011EAB8, qword_1000D4990);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_10011EB60, &qword_10011EB68, &qword_1000D4EC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100038EC0()
{
  v0 = sub_100019558(&qword_10011D7C0, &qword_1000D4EA0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_100134340);
  sub_10001A5B4(v10, qword_100134340);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_10003919C()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134358);
  sub_10001A5B4(v0, qword_100134358);
  return sub_1000C9350();
}

uint64_t sub_100039200()
{
  v0 = sub_100019558(&qword_10011D820, &qword_1000D4F20);
  sub_10001A5EC(v0, qword_100134370);
  v1 = sub_10001A5B4(v0, qword_100134370);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000392C0()
{
  result = swift_getKeyPath();
  qword_100134388 = result;
  return result;
}

uint64_t sub_1000392E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10003930C, 0, 0);
}

uint64_t sub_10003930C(uint64_t a1)
{
  sub_1000C8EC0();
  v2 = *(v1 + 16);
  *(v1 + 24) = v2;
  *(v1 + 72) = v2;
  sub_1000C8EC0();
  *(v1 + 145) = *(v1 + 144);
  if (qword_10011CE00 != -1)
  {
    swift_once();
  }

  v3 = qword_100134388;
  *(v1 + 80) = qword_100134388;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v5 = sub_10001B1BC(&qword_10011EB60, &qword_10011EB68, &qword_1000D4EC8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 96) = v5;
  *v4 = v1;
  v4[1] = sub_100039470;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 145, v3, &type metadata for Bool, v5);
}

uint64_t sub_100039470()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_1000395C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000395C4(uint64_t a1)
{
  sub_1000C8EC0();
  v2 = v1[4];
  v1[5] = v2;
  v3 = qword_100134388;
  v1[14] = v2;
  v1[15] = v3;

  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100017DD4;
  v5 = v1[12];

  return AppEntity._value<A, B>(for:)(v1 + 146, v3, v5);
}

uint64_t (*sub_10003969C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_100039710(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_100039784()
{
  if (qword_10011CE00 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000397E4()
{
  result = qword_10011EAC0;
  if (!qword_10011EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAC0);
  }

  return result;
}

unint64_t sub_10003983C()
{
  result = qword_10011EAC8;
  if (!qword_10011EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAC8);
  }

  return result;
}

uint64_t sub_10003994C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CDF8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820, &qword_1000D4F20);
  v3 = sub_10001A5B4(v2, qword_100134370);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_1000399D0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_1000392E8(a1, v5, v4);
}

uint64_t sub_100039A7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003AD44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100039AC4()
{
  result = qword_10011EAD0;
  if (!qword_10011EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAD0);
  }

  return result;
}

unint64_t sub_100039B1C()
{
  result = qword_10011EAD8;
  if (!qword_10011EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAD8);
  }

  return result;
}

unint64_t sub_100039B74()
{
  result = qword_10011EAE0;
  if (!qword_10011EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAE0);
  }

  return result;
}

uint64_t sub_100039C2C()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 24) == 1 && (, , sub_1000C9680(), , , *(v0 + 24) == 1))
  {
    v1 = *(v0 + 16);

    sub_1000C9680();

    *v1 = *(v0 + 24);
    v2 = *(v0 + 8);
  }

  else
  {
    sub_10003A674();
    swift_allocError();
    swift_willThrow();
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_100039DD8()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 16) == 1 && (, , sub_1000C9680(), , , *(v0 + 16) == 1))
  {
    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();

    v1 = *(v0 + 8);
  }

  else
  {
    sub_10003A674();
    swift_allocError();
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_100039F54@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011EAF0, &qword_1000D4B30);
  v3 = sub_10001A5B4(v2, qword_100134328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10003A008()
{
  result = qword_10011EAF8;
  if (!qword_10011EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EAF8);
  }

  return result;
}

uint64_t sub_10003A0A4()
{
  v0 = qword_10011EA98;

  return v0;
}

unint64_t sub_10003A0E0()
{
  result = qword_10011EB08;
  if (!qword_10011EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB08);
  }

  return result;
}

uint64_t sub_10003A134@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CDD8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011EB58, &qword_1000D4EA8);
  v3 = sub_10001A5B4(v2, qword_100134310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10003A1EC()
{
  result = qword_10011EB10;
  if (!qword_10011EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB10);
  }

  return result;
}

unint64_t sub_10003A244()
{
  result = qword_10011EB18;
  if (!qword_10011EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB18);
  }

  return result;
}

unint64_t sub_10003A29C()
{
  result = qword_10011EB20;
  if (!qword_10011EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB20);
  }

  return result;
}

unint64_t sub_10003A2F4()
{
  result = qword_10011EB28;
  if (!qword_10011EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB28);
  }

  return result;
}

uint64_t sub_10003A348@<X0>(uint64_t *a2@<X8>)
{
  sub_10003A620();
  result = sub_1000C8EA0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003A388(uint64_t a1)
{
  sub_10003A5CC();
  v2 = sub_1000C9150();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10003A470(uint64_t a1)
{
  v2 = sub_10003A008();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003A4C0()
{
  result = qword_10011EB40;
  if (!qword_10011EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB40);
  }

  return result;
}

uint64_t sub_10003A51C(uint64_t a1)
{
  v2 = sub_10003A2F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003A5CC()
{
  result = qword_10011EB48;
  if (!qword_10011EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB48);
  }

  return result;
}

unint64_t sub_10003A620()
{
  result = qword_10011EB50;
  if (!qword_10011EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB50);
  }

  return result;
}

unint64_t sub_10003A674()
{
  result = qword_10011EB70;
  if (!qword_10011EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB70);
  }

  return result;
}

uint64_t sub_10003A6C8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8, &unk_1000D7580);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900, &unk_1000D2A30);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908, &unk_1000D7590);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "Feature not available.";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910, qword_1000D2A40);
  sub_10003A620();
  v12 = sub_1000195A0(&qword_10011D918, &unk_1000D75A0);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918, &unk_1000D75A0, &protocol conformance descriptor for Label<A, B>);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8, &unk_1000D7580, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_10003AB34()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918, &unk_1000D75A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918, &unk_1000D75A0, &protocol conformance descriptor for Label<A, B>);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10003AD44()
{
  v0 = sub_100019558(&qword_10011D7F8, &unk_1000D4ED0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800, &qword_1000D2300);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0, &qword_1000D4EA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_10011EB78, &unk_1000D4EE0);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10003A008();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810, &qword_1000D2310);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

unint64_t sub_10003B1F4()
{
  result = qword_10011EB80;
  if (!qword_10011EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB80);
  }

  return result;
}

unint64_t sub_10003B248()
{
  result = qword_10011D928;
  if (!qword_10011D928)
  {
    sub_1000CA100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D928);
  }

  return result;
}

uint64_t sub_10003B2A0()
{
  sub_1000195A0(&qword_10011D908, &unk_1000D7590);
  sub_1000195A0(&qword_10011D900, &unk_1000D2A30);
  sub_1000195A0(&qword_10011D8F8, &unk_1000D7580);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8, &unk_1000D7580, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003B3F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100019558(&qword_10011EB90, &qword_1000D5100);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v19[1] = a1;
  sub_1000CA420();
  if (qword_10011CF60 != -1)
  {
    swift_once();
  }

  v11 = [qword_100134750 imageWithRenderingMode:2];
  v12 = sub_1000CA620();
  v13 = sub_1000CA5B0();
  KeyPath = swift_getKeyPath();
  v15 = *(v5 + 16);
  v15(v8, v10, v4);
  v15(a2, v8, v4);
  v16 = &a2[*(sub_100019558(&qword_10011EB98, &qword_1000D5138) + 48)];
  *v16 = v12;
  *(v16 + 1) = KeyPath;
  *(v16 + 2) = v13;
  v17 = *(v5 + 8);

  v17(v10, v4);

  return (v17)(v8, v4);
}

uint64_t sub_10003B630@<X0>(char *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1000CA7A0();
  *(a2 + 1) = v5;
  v6 = sub_100019558(&qword_10011EB88, &qword_1000D50F8);
  return sub_10003B3F4(v4, &a2[*(v6 + 44)]);
}

unint64_t sub_10003B68C()
{
  result = qword_10011EBA0;
  if (!qword_10011EBA0)
  {
    sub_1000195A0(&qword_10011EBA8, &unk_1000D5140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EBA0);
  }

  return result;
}

uint64_t sub_10003B730@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_10003B780@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_10011EC80, &unk_1000D9FC0);
  result = sub_1000C9810();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SessionReporter();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_10010DAA0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10003B814(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_10011EC60, &unk_1000D51A8);
  result = sub_1000C9820();
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_10001E2E4(a1, a1[3]);
  sub_10003BF98();
  result = sub_1000C9810();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EC70, qword_1000D9080);
  result = sub_1000C9810();
  if (result)
  {
    v4 = result;
    v5 = sub_10003BFE4(v21, v22);
    __chkstk_darwin(v5);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for TelemetryEnablement();
    v20[3] = v10;
    v20[4] = &off_100110010;
    v20[0] = v9;
    type metadata accessor for TelemetryManager(0);
    v11 = swift_allocObject();
    v12 = sub_10003BFE4(v20, v10);
    __chkstk_darwin(v12);
    v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v19[3] = v10;
    v19[4] = &off_100110010;
    v19[0] = v16;
    _s10NewsToday216TelemetryManagerC13lastFlushDate33_F9D4AB4E0910E2715C8CD19E0D9BCB9510Foundation0G0Vvpfi_0();
    sub_10002DE48(v19, v11 + 16);
    *(v11 + 56) = v3;
    v17 = [objc_allocWithZone(NSSNewsAnalyticsTelemetryAnnotator) initWithUserIDProvider:v4];
    swift_unknownObjectRelease();
    sub_10001E37C(v19);
    *(v11 + 64) = v17;
    sub_10001E37C(v20);
    sub_10001E37C(v21);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10003BAFC()
{
  sub_100019558(&unk_10011EC60, &unk_1000D51A8);
  sub_1000C9910();
}

uint64_t sub_10003BB68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_100120F20, qword_1000D51B8);
  result = sub_1000C9810();
  if (result)
  {
    v5 = result;
    sub_10001E2E4(a1, a1[3]);
    sub_100019558(&qword_10011EC70, qword_1000D9080);
    result = sub_1000C9810();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for TelemetryEnablement();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_100110010;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003BC84()
{
  v0 = sub_1000C9980();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9870();
  sub_100019558(&qword_10011EC48, &unk_1000D5190);
  sub_1000C9910();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1000C9770();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1000C9870();
  sub_100019558(&qword_10011EC50, &qword_1000D90C0);
  sub_1000C9910();

  v5(v3, v4, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  sub_100019558(&qword_10011EC58, &qword_1000D51A0);
  sub_1000C9910();

  sub_1000C9870();
  type metadata accessor for TelemetryManager(0);
  sub_1000C9900();

  v5(v3, v4, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_1000C98F0();
}

unint64_t sub_10003BF98()
{
  result = qword_10011EC78;
  if (!qword_10011EC78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011EC78);
  }

  return result;
}

uint64_t sub_10003BFE4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10003C034()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10003C090(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  if (v13)
  {
    v14 = *(a6 + 16);
    v15 = *(type metadata accessor for Session(0) - 8);
    v16 = a5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);

    do
    {
      sub_10003C2A8(v16, a7);
      v16 += v17;
      --v13;
    }

    while (v13);
    sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
    v18 = sub_1000CB160();
    v19 = sub_1000CB060();
    sub_1000C9BE0("session reporter will submit, if needed", 39, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);

    v20 = swift_allocObject();
    *(v20 + 16) = sub_10003D500;
    *(v20 + 24) = v12;
    v23[4] = sub_10003D528;
    v23[5] = v20;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10003D408;
    v23[3] = &unk_10010DB00;
    v21 = _Block_copy(v23);

    [v14 submitEventsIfNeededWithCompletion:v21];
    _Block_release(v21);
  }

  else
  {

    a1(v22);
  }
}

void sub_10003C2A8(uint64_t a1, void *a2)
{
  v138 = a2;
  v3 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  __chkstk_darwin(v3 - 8);
  v137 = &v105 - v4;
  v113 = type metadata accessor for EngagementEvent(0);
  v115 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for VisibleRectChangedEvent(0);
  v122 = *(v119 - 8);
  __chkstk_darwin(v119);
  v133 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EA08, &unk_1000D4790);
  v8 = __chkstk_darwin(v7 - 8);
  v120 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v135 = &v105 - v10;
  v11 = type metadata accessor for DisappearanceEvent(0);
  __chkstk_darwin(v11 - 8);
  v114 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AppearanceEvent(0);
  v13 = __chkstk_darwin(v136);
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v105 - v15;
  v17 = sub_1000C95A0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = NTSharedLog();
  if (!v134)
  {
LABEL_74:
    __break(1u);
    return;
  }

  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000D45E0;
  v131 = type metadata accessor for AppearanceEvent;
  sub_10003EC48(a1, v16, type metadata accessor for AppearanceEvent);
  v128 = a1;
  v132 = *(v18 + 32);
  (v132)(v20, v16, v17);
  sub_10003ED10(&qword_10011EA00, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = sub_1000CB520();
  v24 = v23;
  v25 = *(v18 + 8);
  v25(v20, v17);
  *(v21 + 56) = &type metadata for String;
  v26 = sub_100024C50();
  *(v21 + 64) = v26;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v27 = type metadata accessor for Session(0);
  v107 = *(v27 + 28);
  v28 = v114;
  sub_10003EC48(v128 + v107, v114, type metadata accessor for DisappearanceEvent);
  (v132)(v20, v28, v17);
  v29 = v128;
  v30 = sub_1000CB520();
  v32 = v31;
  v121 = v17;
  v109 = v18 + 8;
  v108 = v25;
  v25(v20, v17);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v26;
  *(v21 + 72) = v30;
  *(v21 + 80) = v32;
  v132 = v27;
  v111 = *(v27 + 24);
  v33 = v135;
  sub_10002DFB4(v29 + v111, v135, &qword_10011EA08, &unk_1000D4790);
  v34 = v115 + 48;
  v110 = *(v115 + 48);
  v35 = v110(v33, 1, v113);
  sub_100031844(v33, &qword_10011EA08, &unk_1000D4790);
  v36 = 1702195828;
  if (v35 == 1)
  {
    v36 = 0x65736C6166;
  }

  v37 = 0xE400000000000000;
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v26;
  if (v35 == 1)
  {
    v37 = 0xE500000000000000;
  }

  *(v21 + 112) = v36;
  *(v21 + 120) = v37;
  v38 = sub_1000CB060();
  v39 = v134;
  sub_1000C9BE0("reporting widget session, appearedAt=%{public}@, disappearedAt=%{public}@, enagaged=%{public}@", 94, 2, &_mh_execute_header, v134, v38, v21);

  v40 = v138 + *(type metadata accessor for NewsTimelineEntry(0) + 20);
  v41 = *&v40[*(type metadata accessor for TodayContent(0) + 40)];
  v42 = *(v41 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  v43 = objc_autoreleasePoolPush();
  v44 = sub_1000A2024();
  objc_autoreleasePoolPop(v43);
  v45 = [v42 sections];
  v46 = [v45 array];

  v47 = sub_1000CAED0();
  v48 = sub_10007B71C(v47);

  v138 = sub_10003E814(v48, v44);
  v134 = 0;

  swift_bridgeObjectRelease_n();
  v49 = v125;
  sub_10003EC48(v29, v125, v131);
  memset(v143, 0, sizeof(v143));
  v144 = 1;
  v50 = *(v49 + *(v136 + 20));
  v51 = *(v49 + *(v136 + 24));
  v124 = *(v49 + *(v136 + 20));
  v123 = v51;
  v127 = v41;
  v52 = sub_10003D548(v143, v50, v51);
  v53 = v126;
  if ([v126 respondsToSelector:"widgetDidAppearAtDate:withTrackableWidgetState:"])
  {

    isa = sub_1000C94F0().super.isa;
    [v53 widgetDidAppearAtDate:isa withTrackableWidgetState:v52];
  }

  v112 = v52;
  v115 = v34;
  v55 = *(v29 + *(v132 + 20));
  v56 = &selRef_defaultConfiguration;
  v118 = *(v55 + 16);
  if (v118)
  {
    v57 = 0;
    v58 = 0;
    v117 = v55 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v59 = v137;
    v116 = v55;
    while (1)
    {
      v60 = v138;
      if (v58 >= *(v55 + 16))
      {
        break;
      }

      v129 = v57;
      v61 = v133;
      sub_10003EC48(v117 + *(v122 + 72) * v58, v133, type metadata accessor for VisibleRectChangedEvent);
      v62 = (v61 + *(v119 + 20));
      v63 = v62[1];
      v141[0] = *v62;
      v141[1] = v63;
      v142 = 0;
      v64 = sub_10003D548(v141, v124, v123);
      v65 = *(v64 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
      v66 = objc_autoreleasePoolPush();
      v67 = sub_1000A2024();
      objc_autoreleasePoolPop(v66);
      v68 = [v65 sections];
      v69 = [v68 array];

      v70 = sub_1000CAED0();
      v71 = sub_10007B71C(v70);

      v72 = v134;
      v73 = sub_10003E814(v71, v67);

      swift_bridgeObjectRelease_n();
      if (v60 >> 62)
      {
        v74 = sub_1000CB3A0();
      }

      else
      {
        v74 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v134 = v72;
      v130 = v64;
      v75 = v73 & 0xFFFFFFFFFFFFFF8;
      if (v73 >> 62)
      {
        v76 = sub_1000CB3A0();
      }

      else
      {
        v76 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = 0;
      v78 = 0;
      v131 = (v58 + 1);
      v136 = v60 & 0xC000000000000001;
      v135 = v60 & 0xFFFFFFFFFFFFFF8;
      v132 = v60;
      v79 = (v60 + 32);
      v138 = v73;
      v80 = v73 & 0xC000000000000001;
      while (1)
      {
        if (v78 == v74)
        {
          if (v76 == v77)
          {
            goto LABEL_48;
          }

          v81 = 0;
          v78 = v74;
        }

        else
        {
          if (v136)
          {
            v81 = sub_1000CB2A0();
            v82 = __OFADD__(v78++, 1);
            if (v82)
            {
              goto LABEL_71;
            }
          }

          else
          {
            if ((v78 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v78 >= *(v135 + 16))
            {
              goto LABEL_72;
            }

            v81 = v79[v78];
            swift_unknownObjectRetain();
            v82 = __OFADD__(v78++, 1);
            if (v82)
            {
              goto LABEL_71;
            }
          }

          if (v76 == v77)
          {
            if (!v81)
            {
LABEL_48:

              goto LABEL_49;
            }

            goto LABEL_43;
          }
        }

        if (v80)
        {
          v83 = sub_1000CB2A0();
          if (__OFADD__(v77, 1))
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v77 >= *(v75 + 16))
          {
            goto LABEL_69;
          }

          v83 = v138[v77 + 4];
          swift_unknownObjectRetain();
          if (__OFADD__(v77, 1))
          {
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }
        }

        if (!v81)
        {
          break;
        }

        if (!v83)
        {
          v59 = v137;
LABEL_43:
          swift_unknownObjectRelease();
LABEL_44:

          v53 = v126;
          v29 = v128;
          v49 = v125;
          v85 = v121;
LABEL_45:
          v86 = v120;
          v56 = &selRef_defaultConfiguration;
          goto LABEL_46;
        }

        v84 = [v81 isEqual:v83];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v77;
        v59 = v137;
        if ((v84 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      if (v83)
      {
        swift_unknownObjectRelease();
        v53 = v126;
        v29 = v128;
        v49 = v125;
        v85 = v121;
        v59 = v137;
        goto LABEL_45;
      }

LABEL_49:
      v53 = v126;
      v29 = v128;
      v49 = v125;
      v85 = v121;
      v59 = v137;
      v86 = v120;
      v56 = &selRef_defaultConfiguration;
      if (v129)
      {
LABEL_10:
        sub_10003ECB0(v133, type metadata accessor for VisibleRectChangedEvent);

        goto LABEL_11;
      }

LABEL_46:
      if (([v53 respondsToSelector:v56[483]] & 1) == 0)
      {
        goto LABEL_10;
      }

      v87 = v130;

      v88 = v133;
      v89 = sub_1000C94F0().super.isa;
      [v53 v56[483]];

      sub_10003ECB0(v88, type metadata accessor for VisibleRectChangedEvent);
LABEL_11:
      v58 = v131;
      v57 = 1;
      v55 = v116;
      if (v131 == v118)
      {
        goto LABEL_54;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v85 = v121;
  v59 = v137;
  v86 = v120;
LABEL_54:

  sub_10002DFB4(v29 + v111, v86, &qword_10011EA08, &unk_1000D4790);
  if (v110(v86, 1, v113) == 1)
  {
    sub_100031844(v86, &qword_10011EA08, &unk_1000D4790);
  }

  else
  {
    v90 = v106;
    sub_10003EB7C(v86, v106, type metadata accessor for EngagementEvent);
    if ([v53 respondsToSelector:"userEngagedWithWidgetAtDate:actionURL:trackableWidgetState:"])
    {
      v91 = *(v113 + 20);
      v92.super.isa = sub_1000C94F0().super.isa;
      sub_10002DFB4(v90 + v91, v59, &unk_10011E590, &unk_1000D5230);
      v93 = sub_1000C9480();
      v94 = *(v93 - 8);
      v96 = 0;
      if ((*(v94 + 48))(v59, 1, v93) != 1)
      {
        sub_1000C93F0(v95);
        v96 = v97;
        (*(v94 + 8))(v59, v93);
      }

      [v53 userEngagedWithWidgetAtDate:v92.super.isa actionURL:v96 trackableWidgetState:v127];

      v98 = v106;
    }

    else
    {
      v98 = v90;
    }

    sub_10003ECB0(v98, type metadata accessor for EngagementEvent);
    v29 = v128;
    v56 = &selRef_defaultConfiguration;
  }

  v140 = 0;
  memset(v139, 0, sizeof(v139));
  v99 = sub_10003D548(v139, v124, v123);
  v100 = [v53 respondsToSelector:v56[483]];
  v101 = v114;
  if (v100)
  {
    sub_10003EC48(v29 + v107, v114, type metadata accessor for DisappearanceEvent);

    v102 = sub_1000C94F0().super.isa;
    [v53 v56[483]];

    v101 = v114;
    v108(v114, v85);
  }

  if ([v53 respondsToSelector:"widgetDidDisappearAtDate:withTrackableWidgetState:"])
  {
    sub_10003EC48(v29 + v107, v101, type metadata accessor for DisappearanceEvent);
    v103 = v101;
    v104 = sub_1000C94F0().super.isa;
    [v53 widgetDidDisappearAtDate:v104 withTrackableWidgetState:v127];

    sub_10003ECB0(v49, type metadata accessor for AppearanceEvent);
    v108(v103, v85);
  }

  else
  {

    sub_10003ECB0(v49, type metadata accessor for AppearanceEvent);
  }
}

uint64_t sub_10003D378(uint64_t (*a1)(void))
{
  sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
  v2 = sub_1000CB160();
  v3 = sub_1000CB060();
  sub_1000C9BE0("session reporter did submit, if needed", 38, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  return a1();
}

uint64_t sub_10003D408(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10003D44C(uint64_t a1, uint64_t a2)
{
  sub_100019558(&unk_10011ED30, &qword_1000D4778);
  swift_allocObject();
  return sub_1000C9A00();
}

uint64_t sub_10003D4C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D530(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v5 = sub_1000C95A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LayoutContext(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID + 8);
  v30 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID);
  v13 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  v14 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo);
  sub_10003EC48(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext, v11, type metadata accessor for LayoutContext);
  v15 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
  v16 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID + 8);
  v28 = *(v4 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType);
  v29 = v15;
  v31 = v31;
  v32 = v32;

  v17 = v13;
  v18 = v14;
  sub_1000C9590();
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate, v8, v5);
  v20 = (v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID);
  *v20 = v30;
  v20[1] = v12;
  *(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) = v17;
  *(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo) = v18;
  sub_10003EB7C(v11, v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
  v21 = (v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
  v22 = v28;
  *v21 = v29;
  v21[1] = v16;
  *(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType) = v22;
  v23 = v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect;
  v24 = v33;
  *(v23 + 32) = *(v33 + 32);
  v25 = v24[1];
  *v23 = *v24;
  *(v23 + 16) = v25;
  v26 = v32;
  *(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackKind) = v31;
  *(v19 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackLocation) = v26;
  return v19;
}

unint64_t sub_10003D858(uint64_t a1)
{
  sub_1000CB360();
  v2 = sub_1000CAC20();

  return sub_10003DCEC(a1, v2);
}

unint64_t sub_10003D8BC(uint64_t a1, uint64_t a2)
{
  sub_1000CB5C0();
  sub_1000CAD90();
  v4 = sub_1000CB5F0();

  return sub_10003DE84(a1, a2, v4);
}

unint64_t sub_10003D938(uint64_t a1)
{
  sub_1000CAD00();
  sub_1000CB5C0();
  sub_1000CAD90();
  v2 = sub_1000CB5F0();

  return sub_10003DF3C(a1, v2);
}

unint64_t sub_10003D9C8(uint64_t a1)
{
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB5C0();
  sub_10003EC48(a1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000CB5D0(1uLL);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1000CB5D0(0);
    sub_10003ED10(&qword_1001205F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000CAC30();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1000CB5F0();
  return sub_10003E040(a1, v9);
}

unint64_t sub_10003DBCC(uint64_t a1)
{
  sub_1000C9480();
  sub_10003ED10(&qword_1001205F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_1000CAC20();

  return sub_10003E4B8(a1, v2);
}

unint64_t sub_10003DC64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CB220(*(v2 + 40));

  return sub_10003E678(a1, v4);
}

unint64_t sub_10003DCA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CB140(*(v2 + 40));

  return sub_10003E740(a1, v4);
}

unint64_t sub_10003DCEC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000CB360();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1000CAC90();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10003DE84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000CB530())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003DF3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000CAD00();
      v8 = v7;
      if (v6 == sub_1000CAD00() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000CB530();

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

unint64_t sub_10003E040(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v34 - v8;
  v43 = sub_100019558(&qword_10011ED60, &qword_1000D5260);
  __chkstk_darwin(v43);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ImageStore.Key(0) - 8;
  v12 = __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v34 - v16;
  v45 = v2;
  v18 = *(v2 + 32);
  v19 = v2 + 64;
  v20 = -1 << v18;
  v21 = a2 & ~v20;
  if ((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = *(v15 + 72);
    v41 = ~v20;
    v42 = v22;
    v23 = (v5 + 48);
    v36 = (v5 + 32);
    v37 = v19;
    v24 = (v5 + 8);
    v38 = v14;
    v35 = v24;
    while (1)
    {
      sub_10003EC48(*(v45 + 48) + v42 * v21, v17, type metadata accessor for ImageStore.Key);
      v25 = *(v43 + 48);
      sub_10003EC48(v17, v10, type metadata accessor for ImageStore.Key);
      sub_10003EC48(v44, &v10[v25], type metadata accessor for ImageStore.Key);
      v26 = *v23;
      if ((*v23)(v10, 1, v4) == 1)
      {
        break;
      }

      sub_10003EC48(v10, v14, type metadata accessor for ImageStore.Key);
      if (v26(&v10[v25], 1, v4) == 1)
      {
        sub_10003ECB0(v17, type metadata accessor for ImageStore.Key);
        (*v24)(v14, v4);
LABEL_4:
        sub_100031844(v10, &qword_10011ED60, &qword_1000D5260);
        goto LABEL_5;
      }

      v27 = *v36;
      v28 = v39;
      (*v36)(v39, v14, v4);
      v29 = v40;
      v27(v40, &v10[v25], v4);
      v24 = v35;
      LOBYTE(v27) = sub_1000C9430();
      v30 = *v24;
      v31 = v29;
      v14 = v38;
      (*v24)(v31, v4);
      v32 = v28;
      v19 = v37;
      v30(v32, v4);
      sub_10003ECB0(v17, type metadata accessor for ImageStore.Key);
      sub_10003ECB0(v10, type metadata accessor for ImageStore.Key);
      if (v27)
      {
        return v21;
      }

LABEL_5:
      v21 = (v21 + 1) & v41;
      if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return v21;
      }
    }

    sub_10003ECB0(v17, type metadata accessor for ImageStore.Key);
    if (v26(&v10[v25], 1, v4) == 1)
    {
      sub_10003ECB0(v10, type metadata accessor for ImageStore.Key);
      return v21;
    }

    goto LABEL_4;
  }

  return v21;
}

unint64_t sub_10003E4B8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000C9480();
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
      sub_10003ED10(&qword_1001214A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = sub_1000CAC90();
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

unint64_t sub_10003E678(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003ED58(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000CB230();
      sub_10003EDB4(v8);
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

unint64_t sub_10003E740(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10001F934(0, &qword_10011ED50, NTSection_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000CB150();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_10003E814(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = v3;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000CB2A0();
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      if (*(a2 + 16) && (v8 = sub_10003DCA8(isUniquelyReferenced_nonNull_bridgeObject), (v9 & 1) != 0))
      {
        v10 = *(*(a2 + 56) + 8 * v8);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        v12 = sub_1000CB3A0();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000CB3A0();
        v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1000CB3A0();
        goto LABEL_25;
      }

      if (v13)
      {
        goto LABEL_24;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = v5;
        goto LABEL_26;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1000CB2B0();
      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000CB3A0();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_47;
          }

          v20 = v15 + 8 * v16 + 32;
          v31 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            sub_10003EBE4();
            for (i = 0; i != v18; ++i)
            {
              sub_100019558(&qword_10011ED40, &qword_1000D5258);
              v22 = sub_1000508B0(v35, i, v10);
              v24 = *v23;
              swift_unknownObjectRetain();
              (v22)(v35, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            sub_100019558(&unk_10011E710, &qword_1000D5250);
            swift_arrayInitWithCopy();
          }

          a2 = v29;
          v3 = v30;
          v5 = v36;
          if (v12 >= 1)
          {
            v25 = *(v31 + 16);
            v7 = __OFADD__(v25, v12);
            v26 = v25 + v12;
            if (v7)
            {
              goto LABEL_48;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      v5 = v36;
      if (v12 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_1000CB3A0();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003EB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003EBE4()
{
  result = qword_10011ED48;
  if (!qword_10011ED48)
  {
    sub_1000195A0(&qword_10011ED40, &qword_1000D5258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ED48);
  }

  return result;
}

uint64_t sub_10003EC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003ECB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003ED10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003EEEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SourceView(uint64_t a1)
{
  result = qword_10011EDC8;
  if (!qword_10011EDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003EFE4(uint64_t a1)
{
  sub_10003F080();
  if (v1 <= 0x3F)
  {
    sub_10003F0D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003F080()
{
  if (!qword_10011EDD8)
  {
    v0 = sub_1000C9C60();
    if (!v1)
    {
      atomic_store(v0, &qword_10011EDD8);
    }
  }
}

void sub_10003F0D0(uint64_t a1)
{
  if (!qword_10011EDE0)
  {
    sub_1000CA9F0();
    v1 = sub_1000C9C60();
    if (!v2)
    {
      atomic_store(v1, &qword_10011EDE0);
    }
  }
}

uint64_t sub_10003F170@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SourceView(0);
  sub_10003FC38(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CA9F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003F360()
{
  v1 = sub_1000CA9F0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1000C9FA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000CB050();
    v14 = sub_1000CA220();
    v20 = v0;
    v15 = v2;
    v16 = v14;
    sub_1000C9BF0();

    v2 = v15;
    sub_1000C9F90();
    swift_getAtKeyPath();
    sub_10003FC2C(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10003F170(v7);
    sub_1000CA9E0();
    v17 = sub_1000CA9D0();
    v18 = *(v2 + 8);
    v18(v5, v1);
    v18(v7, v1);
    v13 = v17 ^ 1;
    return v13 & 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

void sub_10003F5C0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1000CA640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SourceView(0);
  v8 = v2 + *(v7 + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16))
  {
    sub_10003FA04(v10, v9, 1);
    v11 = v10;
    sub_1000CA620();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v12 = sub_1000CA6A0();

    (*(v4 + 8))(v6, v3);
    sub_10003F360();
    sub_1000CA7A0();
    sub_1000C9CC0();
    *&v40[38] = v44;
    *&v40[6] = v42;
    *&v40[22] = v43;
    *v38 = *v40;
    v41 = 1;
    v35 = v12;
    v36 = 0;
    v37 = 1;
    *&v38[16] = *&v40[16];
    *v39 = *&v40[32];
    *&v39[14] = *(&v44 + 1);
    sub_100019558(&qword_10011EE18, &unk_1000D66F0);
    sub_10003FA14();
    v13 = sub_1000CA700();
    sub_10003FB24(v10, v9, 1);
    *v34 = v13;
  }

  else
  {
    v35 = *v8;
    v36 = v9;
    sub_100027B64();
    *&v42 = sub_1000CB1A0();
    *(&v42 + 1) = v14;
    v15 = sub_1000CA410();
    v17 = v16;
    v19 = v18;
    v20 = [objc_opt_self() systemFontOfSize:*(v2 + *(v7 + 28) + 8) weight:UIFontWeightBlack];
    sub_1000CA2F0();
    v21 = sub_1000CA380();
    v23 = v22;
    v25 = v24;

    sub_100025894(v15, v17, v19 & 1);

    v26 = sub_1000CA3A0();
    v28 = v27;
    LOBYTE(v15) = v29;
    v31 = v30;
    sub_100025894(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v35 = v26;
    v36 = v28;
    LOBYTE(v37) = v15 & 1;
    *&v38[6] = v31;
    *&v38[14] = KeyPath;
    *&v38[22] = 1;
    v38[30] = 0;
    sub_100019558(&qword_10011EE38, &unk_1000D6930);
    sub_10003FB3C();
    *v34 = sub_1000CA700();
  }
}

id sub_10003FA04(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_10003FA14()
{
  result = qword_10011EE20;
  if (!qword_10011EE20)
  {
    sub_1000195A0(&qword_10011EE18, &unk_1000D66F0);
    sub_10003FAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE20);
  }

  return result;
}

unint64_t sub_10003FAA0()
{
  result = qword_10011EE28;
  if (!qword_10011EE28)
  {
    sub_1000195A0(&qword_10011EE30, &qword_1000D5370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE28);
  }

  return result;
}

void sub_10003FB24(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10003FB3C()
{
  result = qword_10011EE40;
  if (!qword_10011EE40)
  {
    sub_1000195A0(&qword_10011EE38, &unk_1000D6930);
    sub_10003FBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE40);
  }

  return result;
}

unint64_t sub_10003FBC8()
{
  result = qword_10011EE48;
  if (!qword_10011EE48)
  {
    sub_1000195A0(&qword_10011EE50, &qword_1000D6B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE48);
  }

  return result;
}

uint64_t sub_10003FC2C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10003FC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003FCB8()
{
  result = qword_10011EE70;
  if (!qword_10011EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE70);
  }

  return result;
}

uint64_t sub_10003FD50()
{
  v0 = sub_100019558(&qword_10011EEB8, &qword_1000D5550);
  sub_10001A5EC(v0, qword_100134390);
  sub_10001A5B4(v0, qword_100134390);
  sub_10004186C();
  return sub_1000C90B0();
}

uint64_t sub_10003FDD4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003FF18, 0, 0);
}

uint64_t sub_10003FF18()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_10011EE80, qword_1000D53B0);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_10011EF28, &qword_10011EF30, &qword_1000D58D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000400CC()
{
  v0 = sub_100019558(&qword_10011D7C0, &qword_1000D4EA0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_1001343A8);
  sub_10001A5B4(v10, qword_1001343A8);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_1000403A8()
{
  v0 = sub_100019558(&qword_10011EF20, &qword_1000D58B8);
  sub_10001A5EC(v0, qword_1001343C0);
  sub_10001A5B4(v0, qword_1001343C0);
  sub_100041298();
  return sub_1000C9170();
}

uint64_t sub_10004042C()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_1001343D8);
  sub_10001A5B4(v0, qword_1001343D8);
  return sub_1000C9350();
}

uint64_t sub_100040490()
{
  v0 = sub_100019558(&qword_10011D820, &qword_1000D4F20);
  sub_10001A5EC(v0, qword_1001343F0);
  v1 = sub_10001A5B4(v0, qword_1001343F0);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100040550()
{
  result = swift_getKeyPath();
  qword_100134408 = result;
  return result;
}

uint64_t sub_100040578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10004059C, 0, 0);
}

uint64_t sub_10004059C(uint64_t a1)
{
  sub_1000C8EC0();
  v2 = *(v1 + 16);
  *(v1 + 24) = v2;
  *(v1 + 72) = v2;
  sub_1000C8EC0();
  *(v1 + 145) = *(v1 + 144);
  if (qword_10011CE30 != -1)
  {
    swift_once();
  }

  v3 = qword_100134408;
  *(v1 + 80) = qword_100134408;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v5 = sub_10001B1BC(&qword_10011EF28, &qword_10011EF30, &qword_1000D58D8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 96) = v5;
  *v4 = v1;
  v4[1] = sub_100040700;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 145, v3, &type metadata for Bool, v5);
}

uint64_t sub_100040700()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_100040854;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040854(uint64_t a1)
{
  sub_1000C8EC0();
  v2 = v1[4];
  v1[5] = v2;
  v3 = qword_100134408;
  v1[14] = v2;
  v1[15] = v3;

  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100017DD4;
  v5 = v1[12];

  return AppEntity._value<A, B>(for:)(v1 + 146, v3, v5);
}

uint64_t (*sub_10004092C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_1000409A0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_100040A14()
{
  if (qword_10011CE30 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100040A74()
{
  result = qword_10011EE88;
  if (!qword_10011EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE88);
  }

  return result;
}

unint64_t sub_100040ACC()
{
  result = qword_10011EE90;
  if (!qword_10011EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE90);
  }

  return result;
}

uint64_t sub_100040BDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE28 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820, &qword_1000D4F20);
  v3 = sub_10001A5B4(v2, qword_1001343F0);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_100040C60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_100040578(a1, v5, v4);
}

uint64_t sub_100040D0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041F90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100040D54()
{
  result = qword_10011EE98;
  if (!qword_10011EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE98);
  }

  return result;
}

unint64_t sub_100040DAC()
{
  result = qword_10011EEA0;
  if (!qword_10011EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEA0);
  }

  return result;
}

unint64_t sub_100040E04()
{
  result = qword_10011EEA8;
  if (!qword_10011EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEA8);
  }

  return result;
}

uint64_t sub_100040EBC()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 24) == 1 && (, , sub_1000C9680(), , , *(v0 + 24) == 1))
  {
    v1 = *(v0 + 16);

    sub_1000C9680();

    *v1 = *(v0 + 24);
    v2 = *(v0 + 8);
  }

  else
  {
    sub_1000418C0();
    swift_allocError();
    swift_willThrow();
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_100041068()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 16) == 1 && (, , sub_1000C9680(), , , *(v0 + 16) == 1))
  {
    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();

    v1 = *(v0 + 8);
  }

  else
  {
    sub_1000418C0();
    swift_allocError();
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1000411E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE08 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011EEB8, &qword_1000D5550);
  v3 = sub_10001A5B4(v2, qword_100134390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100041298()
{
  result = qword_10011EEC0;
  if (!qword_10011EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEC0);
  }

  return result;
}

uint64_t sub_100041334()
{
  v0 = qword_10011EE60;

  return v0;
}

unint64_t sub_100041370()
{
  result = qword_10011EED0;
  if (!qword_10011EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EED0);
  }

  return result;
}

uint64_t sub_1000413C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE18 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011EF20, &qword_1000D58B8);
  v3 = sub_10001A5B4(v2, qword_1001343C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10004147C()
{
  result = qword_10011EED8;
  if (!qword_10011EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EED8);
  }

  return result;
}

unint64_t sub_1000414D4()
{
  result = qword_10011EEE0;
  if (!qword_10011EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEE0);
  }

  return result;
}

unint64_t sub_10004152C()
{
  result = qword_10011EEE8;
  if (!qword_10011EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEE8);
  }

  return result;
}

unint64_t sub_100041584()
{
  result = qword_10011EEF0;
  if (!qword_10011EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEF0);
  }

  return result;
}

uint64_t sub_1000415D8@<X0>(uint64_t *a2@<X8>)
{
  sub_10004186C();
  result = sub_1000C8EA0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100041618(uint64_t a1)
{
  sub_100041818();
  v2 = sub_1000C9150();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100041700(uint64_t a1)
{
  v2 = sub_100041298();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100041750()
{
  result = qword_10011EF08;
  if (!qword_10011EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF08);
  }

  return result;
}

uint64_t sub_1000417AC(uint64_t a1)
{
  v2 = sub_100041584();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100041818()
{
  result = qword_10011EF10;
  if (!qword_10011EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF10);
  }

  return result;
}

unint64_t sub_10004186C()
{
  result = qword_10011EF18;
  if (!qword_10011EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF18);
  }

  return result;
}

unint64_t sub_1000418C0()
{
  result = qword_10011EF38;
  if (!qword_10011EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF38);
  }

  return result;
}

uint64_t sub_100041914@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8, &unk_1000D7580);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900, &unk_1000D2A30);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908, &unk_1000D7590);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "ally Download Puzzles";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910, qword_1000D2A40);
  sub_10004186C();
  v12 = sub_1000195A0(&qword_10011D918, &unk_1000D75A0);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918, &unk_1000D75A0, &protocol conformance descriptor for Label<A, B>);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8, &unk_1000D7580, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_100041D80()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918, &unk_1000D75A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918, &unk_1000D75A0, &protocol conformance descriptor for Label<A, B>);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100041F90()
{
  v0 = sub_100019558(&qword_10011D7F8, &unk_1000D4ED0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800, &qword_1000D2300);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0, &qword_1000D4EA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_10011EF40, &unk_1000D58E0);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100041298();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810, &qword_1000D2310);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

unint64_t sub_100042440()
{
  result = qword_10011EF48;
  if (!qword_10011EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF48);
  }

  return result;
}

void *sub_1000424A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F050, &qword_1000D5B18);
  result = sub_1000C9820();
  if (!v51)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011F040, off_100109BF8);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F028, &unk_1000D5B00);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &unk_10011F070, off_100109BF0);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F060, &qword_1000D5B20);
  result = sub_1000C9820();
  if (!v49)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v40 = v7;
  v41 = v6;
  v42 = v5;
  v43 = a2;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011F030, off_100109C08);
  result = sub_1000C97F0();
  if (result)
  {
    v8 = result;
    v38 = [result nonVideoContentEventTracker];

    v9 = sub_10003BFE4(v50, v51);
    v39 = &v37;
    __chkstk_darwin(v9);
    v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10003BFE4(v48, v49);
    v37 = &v37;
    __chkstk_darwin(v13);
    v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v11;
    v18 = *v15;
    v19 = type metadata accessor for NTTodayContextResultsService();
    v47[3] = v19;
    v47[4] = &off_10010D7A0;
    v47[0] = v17;
    v20 = type metadata accessor for WidgetAssetStore(0);
    v45 = v20;
    v46 = &off_10010D700;
    v44[0] = v18;
    v21 = type metadata accessor for ContentService();
    v22 = swift_allocObject();
    v23 = sub_10003BFE4(v47, v19);
    __chkstk_darwin(v23);
    v25 = (&v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_10003BFE4(v44, v45);
    __chkstk_darwin(v27);
    v29 = (&v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v25;
    v32 = *v29;
    v22[7] = v19;
    v22[3] = 0;
    v22[4] = v31;
    v22[15] = v20;
    v22[16] = &off_10010D700;
    v22[2] = 0;
    v33 = v42;
    v22[8] = &off_10010D7A0;
    v22[9] = v33;
    v34 = v41;
    v22[12] = v32;
    v35 = v40;
    v22[10] = v34;
    v22[11] = v35;
    v22[17] = v38;
    sub_10001E37C(v44);
    sub_10001E37C(v47);
    sub_10001E37C(v48);
    result = sub_10001E37C(v50);
    v36 = v43;
    v43[3] = v21;
    v36[4] = &off_10010E760;
    *v36 = v22;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_100042A68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EFE8, qword_1000D5AB0);
  result = sub_1000C9820();
  if (v19)
  {
    v4 = sub_10003BFE4(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for ContentService();
    v17[3] = v9;
    v17[4] = &off_10010E760;
    v17[0] = v8;
    v10 = type metadata accessor for EntryService();
    v11 = swift_allocObject();
    v12 = sub_10003BFE4(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_10010E760;
    v11[2] = v16;
    sub_10001E37C(v17);
    result = sub_10001E37C(v18);
    a2[3] = v10;
    a2[4] = &off_10010F130;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042C8C(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  type metadata accessor for FeedPersonalizerFactory();
  result = sub_1000C9810();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100042CE0()
{
  v0 = [objc_opt_self() widgetEventTrackerWithMaxRowCount:10];

  return v0;
}

id sub_100042D2C()
{
  v0 = objc_allocWithZone(FTNewsAnalyticsUserIDWidgetEventTracker);

  return [v0 init];
}

id sub_100042D64(void *a1)
{
  sub_100019558(&unk_10011F0B0, &unk_1000D3400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D3390;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011F038, &off_100109C18);
  result = sub_1000C9810();
  if (result)
  {
    *(v2 + 32) = result;
    v4 = objc_allocWithZone(FTAggregateWidgetEventTracker);
    sub_100019558(&unk_10011F0C0, &qword_1000D5B50);
    isa = sub_1000CAEC0().super.isa;

    v6 = [v4 initWithEventTrackers:isa];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042E74(void *a1, unint64_t *a2, void *a3)
{
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, a2, a3);
  result = sub_1000C9810();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100042EE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F060, &qword_1000D5B20);
  result = sub_1000C9820();
  if (v19)
  {
    v4 = sub_10003BFE4(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WidgetAssetStore(0);
    v17[3] = v9;
    v17[4] = &off_10010D700;
    v17[0] = v8;
    v10 = type metadata accessor for EntryStore();
    v11 = swift_allocObject();
    v12 = sub_10003BFE4(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_10010D700;
    v11[2] = v16;
    v11[7] = 0x7972746E65;
    v11[8] = 0xE500000000000000;
    sub_10001E37C(v17);
    result = sub_10001E37C(v18);
    a2[3] = v10;
    a2[4] = &off_10010D278;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10004311C(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F010, &unk_1000D5AE0);
  result = sub_1000C9820();
  if (v9 == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10001E2E4(a1, a1[3]);
    type metadata accessor for FCFeedPersonalizationConfigurationSet(0);
    result = sub_1000C9820();
    if ((v8 & 1) == 0)
    {
      v3 = v7;
      v4 = type metadata accessor for FeedPersonalizerFactory();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC10NewsToday223FeedPersonalizerFactory_translationProvider] = v9;
      *&v5[OBJC_IVAR____TtC10NewsToday223FeedPersonalizerFactory_configurationSet] = v3;
      v6.receiver = v5;
      v6.super_class = v4;
      return objc_msgSendSuper2(&v6, "init");
    }
  }

  __break(1u);
  return result;
}

void *sub_100043218@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F018, &unk_1000D5AF0);
  result = sub_1000C9810();
  if (result)
  {
    v4 = [result possiblyUnfetchedTranslationProvider];
    result = swift_unknownObjectRelease();
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000432DC()
{
  type metadata accessor for ImageJoeColorAnalyzer();

  return swift_allocObject();
}

id sub_100043334(void *a1, uint64_t *a2, uint64_t *a3, Class *a4, SEL *a5)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(a2, a3);
  result = sub_1000C9810();
  if (result)
  {
    v10 = [objc_allocWithZone(*a4) *a5];
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000433D8(void *a1)
{
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F048, &qword_1000D5B10);
  result = sub_1000C9810();
  if (result)
  {
    v7 = result;
    result = FCURLForContainerizedUserAccountDocumentDirectory();
    if (result)
    {
      v8 = result;
      sub_1000C9440();

      v9 = objc_allocWithZone(FTSeenHeadlineWidgetEventTracker);
      sub_1000C93F0(v10);
      v12 = v11;
      v13 = [v9 initWithTodayEventTracker:v7 documentsDirectory:v11];
      swift_unknownObjectRelease();

      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100043550(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011F058, FCNewsAvailabilityMonitor_ptr);
  result = sub_1000C9810();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(FTEngagementURLProvider) initWithAvailabilityMonitor:result];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000435F4(void *a1, void *a2)
{
  sub_10001E2E4(a2, a2[3]);
  sub_100019558(&qword_10011F098, &unk_1000D5B38);
  result = sub_1000C9810();
  if (result)
  {
    v4 = result;
    v5 = sub_10001E2E4(a1, a1[3]);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = *v5;
    v9 = *(*v5 + 16);
    v8 = *(*v5 + 24);
    *(v7 + 16) = sub_100046358;
    *(v7 + 24) = v6;

    return sub_100034478(v9, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000436B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  if (a3)
  {
    v8 = a5;
    v9 = sub_1000C9330();
    a5 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a4 widgetPerformedUpdateWithTodayResults:a1 fetchInfo:a2 error:a5 updateFetchDuration:?];
}

void sub_100043748(void *a1)
{
  v3[4] = TodayIntentResponseCode.rawValue.getter;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000437F0;
  v3[3] = &unk_10010DD90;
  v2 = _Block_copy(v3);
  [a1 fetchTranslationProvider:v2];
  _Block_release(v2);
}

uint64_t sub_1000437F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_100043870()
{
  v0 = objc_allocWithZone(FCNewsAvailabilityMonitor);

  return [v0 initWithProcessVariant:0];
}

void sub_1000438AC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000C9480();
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011F068, &unk_1000D5B28);
  sub_1000C9820();
  if (v26)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 bundleIdentifier];

    v9 = FCURLForWidgetReferralItems();
    if (v9)
    {
      sub_1000C9440();

      v10 = sub_10003BFE4(v25, v26);
      __chkstk_darwin(v10);
      v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v23 = sub_1000CAAA0();
      v24 = &off_10010F970;
      v22[0] = v14;
      v15 = type metadata accessor for WidgetAssetStore(0);
      v16 = objc_allocWithZone(v15);
      v17 = sub_10003BFE4(v22, v23);
      __chkstk_darwin(v17);
      v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19);
      v21 = sub_100044EA8(*v19, v6, v16);
      sub_10001E37C(v22);
      sub_10001E37C(v25);
      a2[3] = v15;
      a2[4] = &off_10010D700;
      *a2 = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100043B90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000CAAA0();
  result = sub_1000CAA90();
  a1[3] = v2;
  a1[4] = &off_10010F970;
  *a1 = result;
  return result;
}

id sub_100043BD0()
{
  v0 = objc_allocWithZone(FTContentPrefetchManager);

  return [v0 init];
}

uint64_t sub_100043C30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000CB5C0();
  sub_1000CAD90();
  v8 = sub_1000CB5F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000CB530() & 1) != 0)
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

    sub_100044408(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100043D80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1000CAD00();
  sub_1000CB5C0();
  sub_1000CAD90();
  v7 = sub_1000CB5F0();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1000CAD00();
      v13 = v12;
      if (v11 == sub_1000CAD00() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1000CB530();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100044588(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100043F2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100019558(&qword_10011F090, &qword_1000D46A8);
  result = sub_1000CB250();
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
      sub_1000CB5C0();
      sub_1000CAD90();
      result = sub_1000CB5F0();
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

uint64_t sub_10004418C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100019558(&unk_10011F0D0, &qword_1000D5B58);
  result = sub_1000CB250();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      sub_1000CAD00();
      sub_1000CB5C0();
      sub_1000CAD90();
      v18 = sub_1000CB5F0();

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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100044408(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100043F2C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100044770();
      goto LABEL_16;
    }

    sub_100044A1C(v8 + 1);
  }

  v10 = *v4;
  sub_1000CB5C0();
  sub_1000CAD90();
  result = sub_1000CB5F0();
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

      result = sub_1000CB530();
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
  result = sub_1000CB550();
  __break(1u);
  return result;
}

uint64_t sub_100044588(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10004418C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000448CC();
      goto LABEL_16;
    }

    sub_100044C54(v7 + 1);
  }

  v9 = *v3;
  sub_1000CAD00();
  sub_1000CB5C0();
  sub_1000CAD90();
  v10 = sub_1000CB5F0();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1000CAD00();
      v15 = v14;
      if (v13 == sub_1000CAD00() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1000CB530();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1000CB550();
  __break(1u);
  return result;
}

void *sub_100044770()
{
  v1 = v0;
  sub_100019558(&qword_10011F090, &qword_1000D46A8);
  v2 = *v0;
  v3 = sub_1000CB240();
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

id sub_1000448CC()
{
  v1 = v0;
  sub_100019558(&unk_10011F0D0, &qword_1000D5B58);
  v2 = *v0;
  v3 = sub_1000CB240();
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

uint64_t sub_100044A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100019558(&qword_10011F090, &qword_1000D46A8);
  result = sub_1000CB250();
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
      sub_1000CB5C0();

      sub_1000CAD90();
      result = sub_1000CB5F0();
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

uint64_t sub_100044C54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100019558(&unk_10011F0D0, &qword_1000D5B58);
  result = sub_1000CB250();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000CAD00();
      sub_1000CB5C0();
      v18 = v17;
      sub_1000CAD90();
      v19 = sub_1000CB5F0();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

id sub_100044EA8(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000C9790();
  __chkstk_darwin(v6 - 8);
  v47[3] = sub_1000CAAA0();
  v47[4] = &off_10010F970;
  v47[0] = a1;
  *&a3[OBJC_IVAR____TtC10NewsToday216WidgetAssetStore____lazy_storage___pruneThrottler] = 0;
  v7 = OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_lock;
  sub_1000C9780();
  sub_1000C97B0();
  swift_allocObject();
  *&a3[v7] = sub_1000C97A0();
  sub_10002DE48(v47, &a3[OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_infoService]);
  v8 = OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_directoryUrl;
  v9 = sub_1000C9480();
  v43 = *(v9 - 8);
  (*(v43 + 16))(&a3[v8], a2, v9);
  v10 = [objc_opt_self() defaultManager];
  sub_1000C93F0(v11);
  v13 = v12;
  v46[0] = 0;
  v14 = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v46];

  if (v14)
  {
    v15 = v46[0];
  }

  else
  {
    v16 = v46[0];
    sub_1000C9340();

    swift_willThrow();
    v17 = sub_1000C9330();
    v18 = [v17 code];

    if (v18 == 516)
    {
    }

    else
    {
      v20 = PrefetchLog(v19);
      v21 = sub_1000CB040();
      sub_100019558(&unk_10011E820, &unk_1000D5240);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000D3410;
      sub_100046360(&qword_10011F080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = sub_1000CB520();
      v25 = v24;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100024C50();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      sub_1000C9BE0("error creating asset store directory at %{public}@", 50, 2, &_mh_execute_header, v20, v21, v22);
    }
  }

  v26 = sub_10002E8F4();
  v27 = sub_10004543C(v26);

  *&a3[OBJC_IVAR____TtC10NewsToday216WidgetAssetStore_keysOfInterest] = v27;
  v29 = PrefetchLog(v28);
  v42 = sub_1000CB030();
  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000D3D20;
  sub_100046360(&qword_10011F080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v31 = sub_1000CB520();
  v32 = v9;
  v33 = a2;
  v35 = v34;
  *(v30 + 56) = &type metadata for String;
  v36 = sub_100024C50();
  *(v30 + 64) = v36;
  *(v30 + 32) = v31;
  *(v30 + 40) = v35;
  swift_beginAccess();

  v37 = sub_1000CAFF0();
  v39 = v38;

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v36;
  *(v30 + 72) = v37;
  *(v30 + 80) = v39;
  sub_1000C9BE0("set up asset store at %@ with keys %@", 37, 2, &_mh_execute_header, v29, v42, v30);

  v45.receiver = a3;
  v45.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v45, "init");
  (*(v43 + 8))(v33, v32);
  sub_10001E37C(v47);
  return v40;
}

uint64_t sub_100045380(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100046360(&qword_10011D8B0, type metadata accessor for URLResourceKey, &unk_1000D29A0);
  result = sub_1000CB000();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100043D80(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10004543C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000CB000();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100043C30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000454D4(uint64_t a1)
{
  v37 = sub_1000C9840();
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C9980();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9870();
  sub_100019558(&qword_10011EFE8, qword_1000D5AB0);
  sub_1000C9910();

  sub_1000C9870();
  sub_100019558(&qword_10011EFF0, &unk_1000D6ED0);
  sub_1000C9910();

  v7 = enum case for Scope.singleton(_:);
  v8 = *(v4 + 104);
  v40 = enum case for Scope.singleton(_:);
  v8(v6, enum case for Scope.singleton(_:), v3);
  sub_1000C9770();

  v9 = *(v4 + 8);
  v9(v6, v3);
  v38 = v9;
  v42 = v4 + 8;
  sub_1000C9870();
  sub_100019558(&unk_10011EFF8, &unk_1000D90A0);
  sub_1000C9900();

  v8(v6, v7, v3);
  v10 = v8;
  v39 = v8;
  sub_1000C9770();

  v9(v6, v3);
  sub_1000C9870();
  sub_100019558(&unk_10011EC80, &unk_1000D9FC0);
  sub_1000C9900();

  sub_1000C9870();
  sub_10001F934(0, &unk_100120F90, off_100109C00);
  sub_1000C9900();

  v11 = v40;
  v10(v6, v40, v3);
  v12 = v4 + 104;
  sub_1000C9770();

  v13 = v3;
  v14 = v38;
  v38(v6, v3);
  sub_1000C9870();
  sub_1000C9900();

  sub_1000C9870();
  sub_100019558(&qword_10011EC70, qword_1000D9080);
  sub_1000C9900();

  v15 = v11;
  v16 = v11;
  v17 = v39;
  v39(v6, v16, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9870();
  sub_100019558(&qword_10011F008, &unk_1000D5AD0);
  sub_1000C9910();

  v17(v6, v15, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  type metadata accessor for FeedPersonalizerFactory();
  sub_1000C9900();

  sub_1000C9880();
  sub_100019558(&qword_10011F010, &unk_1000D5AE0);
  sub_1000C9910();

  v17(v6, v15, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  v35 = sub_100019558(&qword_10011F018, &unk_1000D5AF0);
  sub_1000C9900();

  v18 = v40;
  v17(v6, v40, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  sub_10001F934(0, &qword_10011F020, FCTranslationManager_ptr);
  sub_1000C9900();

  v17(v6, v18, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  sub_100019558(&qword_10011F028, &unk_1000D5B00);
  sub_1000C9900();

  v17(v6, v18, v13);
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  sub_10001F934(0, &qword_10011F030, off_100109C08);
  sub_1000C9900();

  v17(v6, v18, v13);
  v34 = v12;
  sub_1000C9770();

  v14(v6, v13);
  sub_1000C9880();
  sub_10001F934(0, &qword_10011F038, &off_100109C18);
  sub_1000C9900();

  sub_1000C9880();
  sub_10001F934(0, &qword_10011F040, off_100109BF8);
  sub_1000C9900();

  v33 = v13;
  v17(v6, v18, v13);
  sub_1000C9770();

  v14(v6, v13);
  v32 = a1;
  sub_1000C9880();
  sub_100019558(&qword_10011F048, &qword_1000D5B10);
  sub_1000C9900();

  sub_1000C9890();
  sub_10001E2E4(v43, v44);
  sub_100019558(&qword_10011F050, &qword_1000D5B18);
  v19 = enum case for CallbackScope.any(_:);
  v20 = v41;
  v31 = *(v41 + 104);
  v21 = v36;
  v22 = v37;
  v31(v36, enum case for CallbackScope.any(_:), v37);
  sub_1000C9930();
  v23 = v20 + 8;
  v24 = *(v20 + 8);
  v41 = v23;
  v24(v21, v22);
  sub_10001E37C(v43);
  sub_1000C9890();
  sub_10001E2E4(v43, v44);
  v31(v21, v19, v22);
  sub_1000C9920();
  v24(v21, v22);
  sub_10001E37C(v43);
  sub_1000C9880();
  sub_10001F934(0, &qword_10011F058, FCNewsAvailabilityMonitor_ptr);
  sub_1000C9900();

  v25 = v40;
  v26 = v33;
  v27 = v39;
  v39(v6, v40, v33);
  sub_1000C9770();

  v28 = v38;
  v38(v6, v26);
  sub_1000C9880();
  sub_100019558(&qword_10011F060, &qword_1000D5B20);
  sub_1000C9910();

  v27(v6, v25, v26);
  sub_1000C9770();

  v28(v6, v26);
  sub_1000C9880();
  sub_100019558(&qword_10011F068, &unk_1000D5B28);
  sub_1000C9910();

  v27(v6, v25, v26);
  sub_1000C9770();

  v28(v6, v26);
  sub_1000C9880();
  sub_10001F934(0, &unk_10011F070, off_100109BF0);
  sub_1000C9900();

  v27(v6, v25, v26);
  sub_1000C9770();

  return (v28)(v6, v26);
}

uint64_t sub_100046308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000463BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Banner(0);
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
      v13 = sub_100019558(&qword_10011F0E0, &qword_1000D5B60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100046500(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Banner(0);
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
      v13 = sub_100019558(&qword_10011F0E0, &qword_1000D5B60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for BannerView(uint64_t a1)
{
  result = qword_10011F140;
  if (!qword_10011F140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004667C(uint64_t a1)
{
  type metadata accessor for Banner(319);
  if (v1 <= 0x3F)
  {
    sub_100046710(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100046710(uint64_t a1)
{
  if (!qword_10011F150)
  {
    sub_10004676C();
    v1 = sub_1000C9CA0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011F150);
    }
  }
}