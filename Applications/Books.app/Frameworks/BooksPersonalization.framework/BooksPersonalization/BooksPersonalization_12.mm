uint64_t sub_C66B8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

void *sub_C68E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_C6BC8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_C6974(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
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

    v8 = sub_179B18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_C6A04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_C6BC8(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_C68E4(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_C6BC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      result = sub_1B57E4();
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_3D71C(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      result = sub_1B57E4();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

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
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_C6EA8(uint64_t a1, unint64_t a2)
{
  v33 = type metadata accessor for ScoredCollectionRecommendation(0);
  v4 = *(v33 - 8);
  result = __chkstk_darwin(v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8 == a2)
  {
    v10 = 0;
LABEL_3:
    v11 = v9[3];
    if (v11 < 2)
    {
      return v9;
    }

    v12 = v11 >> 1;
    v13 = __OFSUB__(v12, v10);
    v14 = v12 - v10;
    if (!v13)
    {
      v9[2] = v14;
      return v9;
    }
  }

  else
  {
    v10 = 0;
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = _swiftEmptyArrayStorage + v15;
    v36 = *(v4 + 80);
    v37 = v15;
    v38 = a1 + v15;
    v17 = _swiftEmptyArrayStorage;
    v34 = v8;
    v35 = v4;
    while (a2 < v8)
    {
      v18 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_36;
      }

      v19 = *(v4 + 72);
      result = sub_CB8C0(v38 + v19 * a2, v7, type metadata accessor for ScoredCollectionRecommendation);
      if (v10)
      {
        v9 = v17;
        v13 = __OFSUB__(v10--, 1);
        if (v13)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = v17[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v21 = v7;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_2B0C(&qword_2293F8, &unk_1C3A50);
        v24 = v37;
        v9 = swift_allocObject();
        result = j__malloc_size(v9);
        if (!v19)
        {
          goto LABEL_38;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v19 == -1)
        {
          goto LABEL_39;
        }

        v27 = v25 / v19;
        v9[2] = v23;
        v9[3] = 2 * (v25 / v19);
        v28 = v9 + v24;
        v29 = v17[3] >> 1;
        v30 = v29 * v19;
        if (v17[2])
        {
          if (v9 < v17 || v28 >= v17 + v37 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v16 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v7 = v21;
        v8 = v34;
        v4 = v35;
        v13 = __OFSUB__(v32, 1);
        v10 = v32 - 1;
        if (v13)
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      result = sub_CBA88(v7, v16, type metadata accessor for ScoredCollectionRecommendation);
      v16 += v19;
      ++a2;
      v17 = v9;
      if (v18 == v8)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_C7158(void *result, unint64_t a2)
{
  v2 = result[2];
  v3 = _swiftEmptyArrayStorage;
  if (v2 == a2)
  {
    v4 = 0;
LABEL_25:
    v23 = v3[3];
    if (v23 < 2)
    {
      return v3;
    }

    v24 = v23 >> 1;
    v12 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (!v12)
    {
      v3[2] = v25;
      return v3;
    }
  }

  else
  {
    v5 = a2;
    v4 = 0;
    v6 = &result[7 * a2 + 10];
    v7 = &_swiftEmptyArrayStorage[4];
    v26 = result[2];
    while (v5 < v2)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      result = *(v6 - 6);
      v28 = *(v6 - 40);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v27 = *v6;
      v29 = result;
      if (v4)
      {

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = v3[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_2B0C(&qword_229410, &qword_1BC4B0);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 56;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v3[3] >> 1;
        v20 = 7 * v19;
        v21 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        v7 = &v16[7 * v19 + 4];
        if (v3[2])
        {
          if (v16 != v3 || v18 >= &v3[v20 + 4])
          {
            memmove(v18, v3 + 4, v20 * 8);
          }

          v3[2] = 0;
        }

        else
        {
        }

        v3 = v16;
        v2 = v26;
        v12 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v12)
        {
          goto LABEL_31;
        }
      }

      *v7 = v29;
      *(v7 + 1) = v28;
      v7[3] = v9;
      v7[4] = v10;
      v7[5] = v11;
      *(v7 + 48) = v27;
      v7 += 7;
      ++v5;
      v6 += 56;
      if (v8 == v2)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_C73B4(uint64_t a1, uint64_t a2)
{
  CollectionRecommendation.collectionRecommendationType.getter(&v19);
  CollectionRecommendation.collectionRecommendationType.getter(&v18);
  v4 = CollectionRecommendationType.rawValue.getter();
  v6 = v5;
  if (v4 == CollectionRecommendationType.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1B5604();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = type metadata accessor for ScoredCollectionRecommendation(0);
  v10 = *(v9 + 20);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (!v11)
  {
    v14 = 0xE500000000000000;
    v13 = 0x6B6F6F6265;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v11 != 1)
  {
    v14 = 0xE500000000000000;
    v13 = 0x646578696DLL;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v12 == 1)
    {
      v15 = 0xE90000000000006BLL;
      if (v13 != 0x6F6F626F69647561)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v13 != 0x646578696DLL)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    if (v14 == v15)
    {

      return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
    }

    goto LABEL_19;
  }

  v13 = 0x6F6F626F69647561;
  v14 = 0xE90000000000006BLL;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_14:
  v15 = 0xE500000000000000;
  if (v13 == 0x6B6F6F6265)
  {
    goto LABEL_17;
  }

LABEL_19:
  v16 = sub_1B5604();

  if (v16)
  {
    return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
  }

  return 0;
}

uint64_t sub_C75A0(uint64_t result, char **a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 568)
    {
      memcpy(__dst, i, 0x231uLL);
      memcpy(__src, i, 0x231uLL);
      sub_4299C(__dst, v8);
      sub_BFFCC(__src, a2, a3);
      if (v3)
      {
        break;
      }

      memcpy(v8, __src, 0x231uLL);
      result = sub_2601C(v8);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v8, __src, 0x231uLL);
    return sub_2601C(v8);
  }

  return result;
}

uint64_t sub_C766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v99 = a3;
  v114 = type metadata accessor for CollectionRecommendation(0);
  v5 = __chkstk_darwin(v114);
  v107 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v106 = &v99 - v8;
  __chkstk_darwin(v7);
  v105 = &v99 - v9;
  v104 = type metadata accessor for ScoredCollectionRecommendation(0);
  v10 = *(v104 - 8);
  __chkstk_darwin(v104);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _swiftEmptySetSingleton;
  v13 = sub_130CFC(_swiftEmptyArrayStorage);
  v103 = *(a1 + 16);
  if (!v103)
  {

    v95 = 0;
    v94 = 0;
    v96 = _swiftEmptySetSingleton;
    v17 = _swiftEmptySetSingleton;
    v16 = _swiftEmptySetSingleton;
LABEL_68:
    sub_41C08(v95, 0);
    result = sub_41C08(v94, 0);
    v98 = v99;
    *v99 = a2;
    v98[1] = v16;
    v98[2] = v96;
    v98[3] = v17;
    v98[4] = v13;
    return result;
  }

  v14 = 0;
  v111 = 0;
  v15 = 0;
  v102 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v16 = _swiftEmptySetSingleton;
  v109 = xmmword_1BCA80;
  v17 = _swiftEmptySetSingleton;
  v112 = v12;
  v100 = v10;
  v101 = a1;
  while (v15 < *(a1 + 16))
  {
    v113 = v14;
    v18 = *(v10 + 72);
    v110 = v15;
    sub_CB8C0(v102 + v18 * v15, v12, type metadata accessor for ScoredCollectionRecommendation);
    v19 = CollectionRecommendation.booksIDs.getter();
    v20 = v19[2];
    v115 = v13;
    if (v20)
    {
      v21 = 0;
      v108 = v19;
      v22 = v19 + 4;
      v23 = a2 + 56;
      do
      {
        while (1)
        {
          v24 = v22[v21++];
          v25 = sub_1B57E4();
          v26 = -1 << *(a2 + 32);
          v27 = v25 & ~v26;
          if ((*(v23 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            break;
          }

LABEL_11:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116[0] = a2;
          sub_115EFC(v24, v27, isUniquelyReferenced_nonNull_native);
          a2 = v116[0];
          if (v21 == v20)
          {
            goto LABEL_13;
          }

          v23 = v116[0] + 56;
        }

        v28 = ~v26;
        while (*(*(a2 + 48) + 8 * v27) != v24)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v23 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      while (v21 != v20);
LABEL_13:

      v13 = v115;
      v12 = v112;
    }

    else
    {
    }

    v30 = v105;
    sub_CB8C0(v12, v105, type metadata accessor for CollectionRecommendation);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v31 = *(v30 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v32 = swift_allocObject();
      *(v32 + 1) = v109;
      v32[4] = v31;
      v33 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v33 - 8) + 8))(v30, v33);
      v34 = v32[2];
      if (!v34)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_25FBC(v30, type metadata accessor for CollectionRecommendation);
      v32 = _swiftEmptyArrayStorage;
      v34 = _swiftEmptyArrayStorage[2];
      if (!v34)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    v35 = 0;
    v108 = v32;
    v36 = v32 + 4;
    v37 = (v16 + 7);
    do
    {
      while (1)
      {
        v38 = v36[v35++];
        v39 = sub_1B57E4();
        v40 = -1 << *(v16 + 32);
        v41 = v39 & ~v40;
        if ((*(v37 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          break;
        }

LABEL_23:
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v16;
        sub_115EFC(v38, v41, v43);
        v16 = v116[0];
        if (v35 == v34)
        {
          goto LABEL_25;
        }

        v37 = v116[0] + 56;
      }

      v42 = ~v40;
      while (*(v16[6] + 8 * v41) != v38)
      {
        v41 = (v41 + 1) & v42;
        if (((*(v37 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (v35 != v34);
LABEL_25:

    v13 = v115;
    v12 = v112;
LABEL_28:
    v44 = v106;
    sub_CB8C0(v12, v106, type metadata accessor for CollectionRecommendation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = v107;
    if (EnumCaseMultiPayload == 2)
    {
      v47 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v116, (v44 + *(v47 + 48)), 0x231uLL);

      sub_2B0C(&qword_229218, &unk_1C0210);
      v48 = swift_allocObject();
      *(v48 + 1) = v109;
      memcpy(v48 + 4, v116, 0x231uLL);
      v49 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v49 - 8) + 8))(v44, v49);
    }

    else
    {
      sub_25FBC(v44, type metadata accessor for CollectionRecommendation);
      v48 = _swiftEmptyArrayStorage;
    }

    sub_5E05C(v48);

    sub_CB8C0(v12, v46, type metadata accessor for CollectionRecommendation);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v50 = *(v46 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v51 = swift_allocObject();
      *(v51 + 1) = v109;
      v51[4] = v50;
      v52 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v52 - 8) + 8))(v46, v52);
      v53 = v51[2];
      if (!v53)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_25FBC(v46, type metadata accessor for CollectionRecommendation);
      v51 = _swiftEmptyArrayStorage;
      v53 = _swiftEmptyArrayStorage[2];
      if (!v53)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    v54 = 0;
    v108 = v51;
    v55 = v51 + 4;
    v56 = (v17 + 7);
    do
    {
      while (1)
      {
        v57 = v55[v54++];
        v58 = sub_1B57E4();
        v59 = -1 << *(v17 + 32);
        v60 = v58 & ~v59;
        if ((*(v56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          break;
        }

LABEL_39:
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v17;
        sub_115EFC(v57, v60, v62);
        v17 = v116[0];
        if (v54 == v53)
        {
          goto LABEL_41;
        }

        v56 = v116[0] + 56;
      }

      v61 = ~v59;
      while (*(v17[6] + 8 * v60) != v57)
      {
        v60 = (v60 + 1) & v61;
        if (((*(v56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    while (v54 != v53);
LABEL_41:

    v13 = v115;
    v12 = v112;
LABEL_44:
    CollectionRecommendation.collectionRecommendationType.getter(v116);
    sub_41C08(v113, 0);
    v63 = v116[0];
    LODWORD(v113) = v12[*(v104 + 20)];
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = v13;
    v66 = sub_3AA80(v63);
    v67 = v13[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_70;
    }

    v70 = v65;
    if (v13[3] >= v69)
    {
      if (v64)
      {
        if (v65)
        {
          goto LABEL_53;
        }
      }

      else
      {
        sub_186D60();
        v13 = v116[0];
        if (v70)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_180C74(v69, v64);
      v13 = v116[0];
      v71 = sub_3AA80(v63);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_76;
      }

      v66 = v71;
      if (v70)
      {
        goto LABEL_53;
      }
    }

    v73 = sub_130C10(_swiftEmptyArrayStorage);
    v13[(v66 >> 6) + 8] |= 1 << v66;
    *(v13[6] + v66) = v63;
    *(v13[7] + 8 * v66) = v73;
    v74 = v13[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_73;
    }

    v13[2] = v76;
LABEL_53:
    v115 = v13;
    v77 = v13[7];
    sub_41C08(v111, 0);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *(v77 + 8 * v66);
    v79 = v116[0];
    *(v77 + 8 * v66) = 0x8000000000000000;
    v81 = sub_3AF28(v113);
    v82 = *(v79 + 16);
    v83 = (v80 & 1) == 0;
    v84 = v82 + v83;
    if (__OFADD__(v82, v83))
    {
      goto LABEL_71;
    }

    v85 = v80;
    if (*(v79 + 24) >= v84)
    {
      if ((v78 & 1) == 0)
      {
        sub_186C14();
        v79 = v116[0];
      }
    }

    else
    {
      sub_1809A4(v84, v78);
      v79 = v116[0];
      v86 = sub_3AF28(v113);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_75;
      }

      v81 = v86;
    }

    a1 = v101;
    *(v77 + 8 * v66) = v79;

    v88 = *(v77 + 8 * v66);
    v13 = v115;
    v12 = v112;
    if ((v85 & 1) == 0)
    {
      v88[(v81 >> 6) + 8] |= 1 << v81;
      *(v88[6] + v81) = v113;
      *(v88[7] + 8 * v81) = 0;
      v89 = v88[2];
      v75 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v75)
      {
        goto LABEL_74;
      }

      v88[2] = v90;
    }

    v91 = v88[7];
    v92 = *(v91 + 8 * v81);
    v75 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v75)
    {
      goto LABEL_72;
    }

    v15 = v110 + 1;
    *(v91 + 8 * v81) = v93;
    sub_25FBC(v12, type metadata accessor for ScoredCollectionRecommendation);
    v111 = sub_CC290;
    v14 = sub_C551C;
    v10 = v100;
    if (v15 == v103)
    {

      v94 = sub_CC290;
      v95 = sub_C551C;
      v96 = v117;
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1B5784();
  __break(1u);
LABEL_76:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_C8158(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v77 = a3;
  v75 = type metadata accessor for ScoredCollectionRecommendation(0);
  __chkstk_darwin(v75);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v73);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  __chkstk_darwin(v12 - 8);
  v81 = &v73 - v13;
  v14 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v74 = &v73 - v15;
  v87 = *a1;
  v16 = *(a4 + 104);
  v17 = *(a4 + 128);
  v84 = *(a4 + 120);
  v85 = v17;
  v18 = *(a4 + 136);
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a2 + 56;
    v86 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v20 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v22 = v16 + 32 + 136 * v20;
      v89 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v25 = *(v22 + 64);
      v92 = *(v22 + 48);
      v93 = v25;
      v90 = v23;
      v91 = v24;
      v26 = *(v22 + 80);
      v27 = *(v22 + 96);
      v28 = *(v22 + 112);
      v97 = *(v22 + 128);
      v95 = v27;
      v96 = v28;
      v94 = v26;
      ++v20;
      a4 = BYTE8(v89);
      if (*(a2 + 16))
      {
        v6 = v89;
        v29 = sub_1B57E4();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if ((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (*(*(a2 + 48) + 8 * v31) != v6)
          {
            v31 = (v31 + 1) & v32;
            if (((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_11:
      if (v87)
      {
        if (v87 != 1)
        {
          sub_429F8(&v89, v88);
LABEL_21:
          a4 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = a4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37574(0, *(a4 + 16) + 1, 1);
            a4 = v98;
          }

          v6 = *(a4 + 16);
          v34 = *(a4 + 24);
          v35 = (v6 + 1);
          if (v6 >= v34 >> 1)
          {
            v86 = (v6 + 1);
            sub_37574((v34 > 1), v6 + 1, 1);
            v35 = v86;
            a4 = v98;
          }

          *(a4 + 16) = v35;
          v86 = a4;
          v36 = a4 + 136 * v6;
          *(v36 + 32) = v89;
          v37 = v90;
          v38 = v91;
          v39 = v93;
          *(v36 + 80) = v92;
          *(v36 + 96) = v39;
          *(v36 + 48) = v37;
          *(v36 + 64) = v38;
          v40 = v94;
          v41 = v95;
          v42 = v96;
          *(v36 + 160) = v97;
          *(v36 + 128) = v41;
          *(v36 + 144) = v42;
          *(v36 + 112) = v40;
          goto LABEL_4;
        }

        if (a4)
        {
          goto LABEL_20;
        }

        v6 = sub_1B5604();
        sub_429F8(&v89, v88);

        if (v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((a4 & 1) == 0)
        {
LABEL_20:
          sub_429F8(&v89, v88);

          goto LABEL_21;
        }

        v6 = sub_1B5604();
        sub_429F8(&v89, v88);

        if (v6)
        {
          goto LABEL_21;
        }
      }

      sub_5C740(&v89);
LABEL_4:
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_27:
  a4 = sub_43174();
  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = v45;
  v16 = v44;
  v19 = v43;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = _swiftEmptyArrayStorage;
  }

  v49 = v48[2];

  if (__OFSUB__(v6 >> 1, v16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v49 != (v6 >> 1) - v16)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v45 = v6;
    v44 = v16;
    v43 = v19;
LABEL_28:
    sub_5136C(a4, v43, v44, v45);
    v47 = v46;
    goto LABEL_35;
  }

  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = _swiftEmptyArrayStorage;
  }

LABEL_35:
  swift_unknownObjectRelease();
  v50 = v47[2];
  if (v50)
  {
    v98 = _swiftEmptyArrayStorage;
    sub_375F8(0, v50, 0);
    v51 = v98;
    v52 = v50 - 1;
    for (i = 4; ; i += 17)
    {
      v54 = *&v47[i];
      v55 = *&v47[i + 2];
      v56 = *&v47[i + 6];
      v91 = *&v47[i + 4];
      v92 = v56;
      v89 = v54;
      v90 = v55;
      sub_42BA4(&v89, v88);
      v98 = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_375F8((v57 > 1), v58 + 1, 1);
        v51 = v98;
      }

      v51[2] = v58 + 1;
      v59 = &v51[8 * v58];
      v60 = v89;
      v61 = v90;
      v62 = v92;
      v59[4] = v91;
      v59[5] = v62;
      v59[2] = v60;
      v59[3] = v61;
      if (!v52)
      {
        break;
      }

      --v52;
    }
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  if (v51[2] < v84)
  {
  }

  *&v89 = v51;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
  v64 = v81;
  sub_1B43C4();
  v65 = v82;
  v66 = v83;
  if ((*(v82 + 48))(v64, 1, v83) == 1)
  {
    return sub_42F48(v64, &qword_2296F0, &unk_1C3A10);
  }

  v67 = v74;
  (*(v65 + 32))(v74, v64, v66);
  v68 = v76;
  (*(v65 + 16))(v76, v67, v66);
  swift_storeEnumTagMultiPayload();
  v69 = sub_1AB914(v18);
  v70 = v78;
  sub_CB8C0(v68, v78, type metadata accessor for CollectionRecommendation);
  v71 = v75;
  *(v70 + *(v75 + 20)) = v87;
  *(v70 + *(v71 + 24)) = v77 & 1;
  *(v70 + *(v71 + 28)) = v69;
  v72 = *(v79 + 208);
  swift_beginAccess();
  sub_BE058(v70, v72);
  swift_endAccess();
  sub_25FBC(v70, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v68, type metadata accessor for CollectionRecommendation);
  return (*(v65 + 8))(v67, v66);
}

uint64_t sub_C8964(unsigned __int8 *a1, void *a2, int a3, double *a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v91 = a5;
  v88 = a3;
  v86 = type metadata accessor for ScoredCollectionRecommendation(0);
  __chkstk_darwin(v86);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v84);
  v87 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  __chkstk_darwin(v12 - 8);
  v92 = &v84 - v13;
  v14 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v93 = *(v14 - 8);
  v94 = v14;
  __chkstk_darwin(v14);
  v85 = &v84 - v15;
  v98 = *a1;
  v16 = *(a4 + 13);
  v17 = *(a4 + 16);
  v95 = *(a4 + 15);
  v96 = v17;
  v18 = a4[17];
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = *(a4 + 7);
    v22 = v16 + 32;
    v99 = v21;
    v100 = a2;
    v23 = (a2 + 7);
    v97 = _swiftEmptyArrayStorage;
    while (1)
    {
      while (1)
      {
        if (v20 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v24 = v22 + 136 * v20;
        v102 = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 64);
        v105 = *(v24 + 48);
        v106 = v27;
        v103 = v25;
        v104 = v26;
        v28 = *(v24 + 80);
        v29 = *(v24 + 96);
        v30 = *(v24 + 112);
        v110 = *(v24 + 128);
        v108 = v29;
        v109 = v30;
        v107 = v28;
        ++v20;
        v6 = v27;
        sub_429F8(&v102, v101);
        if ((sub_C4788(v6, v21) & 1) == 0)
        {
          break;
        }

        sub_5C740(&v102);
LABEL_4:
        if (v20 == v19)
        {
          goto LABEL_27;
        }
      }

      v31 = v22;
      v32 = BYTE8(v102);
      if (v100[2])
      {
        v6 = v102;
        v33 = v16;
        v34 = v19;
        v35 = v100;
        v36 = sub_1B57E4();
        v37 = *(v35 + 32);
        v19 = v34;
        v16 = v33;
        v38 = -1 << v37;
        v39 = v36 & ~(-1 << v37);
        if ((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          while (*(v100[6] + 8 * v39) != v6)
          {
            v39 = (v39 + 1) & v40;
            if (((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

LABEL_18:
          sub_5C740(&v102);
          v22 = v31;
          v21 = v99;
          goto LABEL_4;
        }
      }

LABEL_12:
      if (v98)
      {
        if (v98 != 1)
        {
          goto LABEL_20;
        }

        if (v32)
        {
          goto LABEL_19;
        }
      }

      else if ((v32 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v6 = sub_1B5604();

      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_20:
      v41 = v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v41;
      v111 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_37574(0, v41[2] + 1, 1);
        v43 = v111;
      }

      v22 = v31;
      v6 = v43[2];
      v44 = v43[3];
      v45 = (v6 + 1);
      if (v6 >= v44 >> 1)
      {
        v97 = (v6 + 1);
        sub_37574((v44 > 1), v6 + 1, 1);
        v45 = v97;
        v22 = v31;
        v43 = v111;
      }

      v43[2] = v45;
      v97 = v43;
      v46 = &v43[17 * v6];
      *(v46 + 2) = v102;
      v47 = v103;
      v48 = v104;
      v49 = v106;
      *(v46 + 5) = v105;
      *(v46 + 6) = v49;
      *(v46 + 3) = v47;
      *(v46 + 4) = v48;
      v50 = v107;
      v51 = v108;
      v52 = v109;
      *(v46 + 160) = v110;
      *(v46 + 8) = v51;
      *(v46 + 9) = v52;
      *(v46 + 7) = v50;
      v21 = v99;
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }
  }

  v97 = _swiftEmptyArrayStorage;
LABEL_27:
  v22 = sub_43174();
  if ((v55 & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v55;
  v6 = v54;
  v16 = v53;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    swift_unknownObjectRelease();
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];

  if (__OFSUB__(v23 >> 1, v6))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v59 != (v23 >> 1) - v6)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v55 = v23;
    v54 = v6;
    v53 = v16;
LABEL_28:
    sub_5136C(v22, v53, v54, v55);
    v57 = v56;
    goto LABEL_35;
  }

  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    swift_unknownObjectRelease();
    v57 = _swiftEmptyArrayStorage;
  }

LABEL_35:
  swift_unknownObjectRelease();
  v60 = v57[2];
  if (v60)
  {
    v111 = _swiftEmptyArrayStorage;
    sub_375F8(0, v60, 0);
    v61 = v111;
    v62 = v60 - 1;
    for (i = 4; ; i += 17)
    {
      v64 = *&v57[i];
      v65 = *&v57[i + 2];
      v66 = *&v57[i + 6];
      v104 = *&v57[i + 4];
      v105 = v66;
      v102 = v64;
      v103 = v65;
      sub_42BA4(&v102, v101);
      v111 = v61;
      v68 = v61[2];
      v67 = v61[3];
      if (v68 >= v67 >> 1)
      {
        sub_375F8((v67 > 1), v68 + 1, 1);
        v61 = v111;
      }

      v61[2] = v68 + 1;
      v69 = &v61[8 * v68];
      v70 = v102;
      v71 = v103;
      v72 = v105;
      v69[4] = v104;
      v69[5] = v72;
      v69[2] = v70;
      v69[3] = v71;
      if (!v62)
      {
        break;
      }

      --v62;
    }
  }

  else
  {

    v61 = _swiftEmptyArrayStorage;
  }

  if (v61[2] < v95)
  {
  }

  *&v102 = v61;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
  v74 = v92;
  sub_1B43C4();
  v76 = v93;
  v75 = v94;
  if ((*(v93 + 48))(v74, 1, v94) == 1)
  {
    return sub_42F48(v74, &qword_2296F0, &unk_1C3A10);
  }

  v77 = v85;
  (*(v76 + 32))(v85, v74, v75);
  v78 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
  v79 = v87;
  (*(v76 + 16))(v87, v77, v75);
  *(v79 + v78) = 2;
  swift_storeEnumTagMultiPayload();
  v80 = sub_1AB914(v18);
  v81 = v89;
  sub_CB8C0(v79, v89, type metadata accessor for CollectionRecommendation);
  v82 = v86;
  *(v81 + *(v86 + 20)) = v98;
  *(v81 + *(v82 + 24)) = v88 & 1;
  *(v81 + *(v82 + 28)) = v80;
  v83 = *(v90 + 208);
  swift_beginAccess();
  sub_BE058(v81, v83);
  swift_endAccess();
  sub_25FBC(v81, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v79, type metadata accessor for CollectionRecommendation);
  return (*(v76 + 8))(v77, v75);
}

uint64_t sub_C91B4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, unint64_t a12, uint64_t a13, int64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v347 = a7;
  v348 = a8;
  LODWORD(v372) = a5;
  v374 = a4;
  v375 = a2;
  v354 = a3;
  v24 = type metadata accessor for CollectionRecommendation(0);
  v341 = *(v24 - 8);
  __chkstk_darwin(v24 - 8);
  v342 = &v340 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ScoredCollectionRecommendation(0);
  v359 = *(v26 - 8);
  v27 = __chkstk_darwin(v26 - 8);
  v368 = &v340 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v357 = &v340 - v29;
  v30 = *a1;
  v345 = a1[1];
  v346 = v30;
  v31 = a1[2];
  v376 = a1[3];
  v32 = a1[5];
  v353 = a1[4];
  v355 = v32;
  v356 = v31;
  v33 = a1[6];
  KeyPath = swift_getKeyPath();
  v443[0] = a6;

  sub_191A64(v443, KeyPath);

  v361 = 0;
  v35 = a12;

  v36 = v443[0];
  v363 = sub_13096C(_swiftEmptyArrayStorage);
  v367 = sub_13096C(_swiftEmptyArrayStorage);
  v350 = v33;

  v343 = a12;

  v351 = a14;

  *&v352 = a15;

  v349 = a16;

  v344 = a17;

  *(&v352 + 1) = a18;

  v37 = v376;

  v382 = sub_130A80(_swiftEmptyArrayStorage);
  v38 = sub_130AA4(_swiftEmptyArrayStorage);
  v39 = *(v36 + 16);
  v370 = v36;
  v358 = v39;
  if (!v39)
  {

    v362 = 0.0;
    v366 = 0;
    goto LABEL_128;
  }

  v362 = 0.0;
  v40 = 0;
  v360 = v36 + 32;
  v42 = v374;
  v41 = v375;
  v43 = v374 + 56;
  *&v379 = v374 + 56;
  v369 = v37 + 56;
  v365 = v375 + 56;
  v366 = 0;
LABEL_5:
  if (v40 >= *(v36 + 16))
  {
    goto LABEL_296;
  }

  v373 = v38;
  v44 = v360 + 136 * v40;
  v444 = *v44;
  v45 = *(v44 + 16);
  v46 = *(v44 + 32);
  v47 = *(v44 + 48);
  v448 = *(v44 + 64);
  v447 = v47;
  v446 = v46;
  v445 = v45;
  v48 = *(v44 + 80);
  v49 = *(v44 + 96);
  v50 = *(v44 + 112);
  v452 = *(v44 + 128);
  v451 = v50;
  v450 = v49;
  v449 = v48;
  v364 = (v40 + 1);
  v51 = *(&v448 + 1) + 56;
  v52 = 1 << *(*(&v448 + 1) + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(*(&v448 + 1) + 56);
  v55 = (v52 + 63) >> 6;
  v378 = *(&v448 + 1);

  v36 = 0;
LABEL_10:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v54)
          {
            goto LABEL_15;
          }

          do
          {
            v56 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_169;
            }

            if (v56 >= v55)
            {
              v99 = v448;
              sub_429F8(&v444, &v393);

              v100 = v99 + 56;
              v101 = 1 << *(v99 + 32);
              if (v101 < 64)
              {
                v102 = ~(-1 << v101);
              }

              else
              {
                v102 = -1;
              }

              v103 = v102 & *(v99 + 56);
              v104 = (v101 + 63) >> 6;
              v377 = v99;

              v105 = v103;
              v35 = 0;
              v106 = v365;
LABEL_52:
              while (v105)
              {
                v107 = v105;
LABEL_58:
                v105 = (v107 - 1) & v107;
                if (*(v41 + 16))
                {
                  v36 = *(*(v377 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v107)))));
                  v378 = (v107 - 1) & v107;
                  v109 = sub_1B57E4();
                  v105 = v378;
                  v110 = -1 << *(v41 + 32);
                  v111 = v109 & ~v110;
                  if ((*(v106 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
                  {
                    v112 = ~v110;
                    while (*(*(v41 + 48) + 8 * v111) != v36)
                    {
                      v111 = (v111 + 1) & v112;
                      if (((*(v106 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
                      {
                        goto LABEL_52;
                      }
                    }

                    sub_41C08(v366, 0);
                    v41 = v367;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v393 = v41;
                    v115 = sub_43124(v36);
                    v116 = *(v41 + 16);
                    v117 = (v114 & 1) == 0;
                    v118 = v116 + v117;
                    if (__OFADD__(v116, v117))
                    {
                      goto LABEL_298;
                    }

                    v119 = v114;
                    if (*(v41 + 24) >= v118)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_1856BC();
                      }
                    }

                    else
                    {
                      sub_17DB60(v118, isUniquelyReferenced_nonNull_native);
                      v120 = sub_43124(v36);
                      if ((v119 & 1) != (v121 & 1))
                      {
                        goto LABEL_307;
                      }

                      v115 = v120;
                    }

                    v43 = v379;
                    v122 = v393;
                    if ((v119 & 1) == 0)
                    {
                      sub_15C8E0();
                    }

                    v367 = v122;
                    v123 = v122[7];
                    v124 = *(v123 + 8 * v115);
                    v125 = swift_isUniquelyReferenced_nonNull_native();
                    *(v123 + 8 * v115) = v124;
                    if ((v125 & 1) == 0)
                    {
                      v124 = sub_33358(0, *(v124 + 2) + 1, 1, v124);
                      *(v123 + 8 * v115) = v124;
                    }

                    v127 = *(v124 + 2);
                    v126 = *(v124 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v124 = sub_33358((v126 > 1), v127 + 1, 1, v124);
                      *(v123 + 8 * v115) = v124;
                    }

                    v106 = v365;
                    *(v124 + 2) = v127 + 1;
                    v128 = &v124[136 * v127];
                    *(v128 + 2) = v444;
                    v129 = v445;
                    v130 = v446;
                    v131 = v448;
                    *(v128 + 5) = v447;
                    *(v128 + 6) = v131;
                    *(v128 + 3) = v129;
                    *(v128 + 4) = v130;
                    v132 = v449;
                    v133 = v450;
                    v134 = v451;
                    v128[160] = v452;
                    *(v128 + 8) = v133;
                    *(v128 + 9) = v134;
                    *(v128 + 7) = v132;
                    sub_429F8(&v444, &v393);
                    v366 = sub_CC28C;
                    v41 = v375;
                    v37 = v376;
                    v42 = v374;
                    v105 = v378;
                  }
                }
              }

              while (1)
              {
                v108 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_170;
                }

                if (v108 >= v104)
                {
                  break;
                }

                v107 = *(v100 + 8 * v108);
                ++v35;
                if (v107)
                {
                  v35 = v108;
                  goto LABEL_58;
                }
              }

              v135 = v447;
              if (v447)
              {
                v136 = 1 << *(v447 + 32);
                if (v136 < 64)
                {
                  v137 = ~(-1 << v136);
                }

                else
                {
                  v137 = -1;
                }

                v138 = v137 & *(v447 + 64);
                v36 = (v136 + 63) >> 6;
                swift_bridgeObjectRetain_n();
                v139 = v135 + 64;
                v37 = 0;
                v140 = _swiftEmptyArrayStorage;
                v38 = v373;
                v377 = v135;
                v378 = v135 + 64;
                while (v138)
                {
LABEL_88:
                  v35 = *(*(v135 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v138)))));
                  v41 = *(v35 + 16);
                  v142 = *(v140 + 2);
                  v143 = v142 + v41;
                  if (__OFADD__(v142, v41))
                  {
                    goto LABEL_291;
                  }

                  v144 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v144 || v143 > *(v140 + 3) >> 1)
                  {
                    if (v142 <= v143)
                    {
                      v145 = v142 + v41;
                    }

                    else
                    {
                      v145 = v142;
                    }

                    v140 = sub_33128(v144, v145, 1, v140);
                  }

                  v43 = v379;
                  v135 = v377;
                  v138 &= v138 - 1;
                  if (*(v35 + 16))
                  {
                    if ((*(v140 + 3) >> 1) - *(v140 + 2) < v41)
                    {
                      goto LABEL_295;
                    }

                    swift_arrayInitWithCopy();

                    v139 = v378;
                    if (v41)
                    {
                      v146 = *(v140 + 2);
                      v82 = __OFADD__(v146, v41);
                      v147 = v146 + v41;
                      if (v82)
                      {
                        goto LABEL_297;
                      }

                      *(v140 + 2) = v147;
                    }
                  }

                  else
                  {

                    v139 = v378;
                    if (v41)
                    {
                      goto LABEL_292;
                    }
                  }
                }

                while (1)
                {
                  v141 = v37 + 1;
                  if (__OFADD__(v37, 1))
                  {
                    goto LABEL_172;
                  }

                  if (v141 >= v36)
                  {
                    break;
                  }

                  v138 = *(v139 + 8 * v141);
                  ++v37;
                  if (v138)
                  {
                    v37 = v141;
                    goto LABEL_88;
                  }
                }

                *&v393 = v140;
                sub_2B0C(&qword_22AA48, &qword_1CD280);
                sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280, &protocol conformance descriptor for [A]);
                v148 = v361;
                v149 = sub_1B4984();

                sub_429F8(&v444, &v393);
                sub_C75A0(v149, &v382, &v444);
                v361 = v148;
                sub_5C740(&v444);
                sub_5C740(&v444);

                v150 = 1 << *(v135 + 32);
                if (v150 < 64)
                {
                  v151 = ~(-1 << v150);
                }

                else
                {
                  v151 = -1;
                }

                v35 = v151 & *(v135 + 64);
                v371 = (v150 + 63) >> 6;

                v152 = 0;
LABEL_105:
                v41 = v375;
                v37 = v376;
                v42 = v374;
                if (v35)
                {
                  goto LABEL_110;
                }

                while (1)
                {
                  v153 = v152 + 1;
                  if (__OFADD__(v152, 1))
                  {
                    goto LABEL_173;
                  }

                  if (v153 >= v371)
                  {
                    break;
                  }

                  v35 = *(v378 + 8 * v153);
                  ++v152;
                  if (v35)
                  {
                    v152 = v153;
LABEL_110:
                    v154 = __clz(__rbit64(v35)) | (v152 << 6);
                    v155 = *(*(v135 + 48) + v154);
                    v37 = *(*(*(v135 + 56) + 8 * v154) + 16);

                    v373 = v156;
                    if (!v37)
                    {
LABEL_104:
                      v35 &= v35 - 1;

                      v43 = v379;
                      v135 = v377;
                      goto LABEL_105;
                    }

                    v157 = (v156 + 32);
                    while (2)
                    {
                      memcpy(v443, v157, 0x231uLL);
                      sub_4299C(v443, &v393);
                      sub_4299C(v443, &v393);
                      v158 = v38;
                      v159 = swift_isUniquelyReferenced_nonNull_native();
                      *&v393 = v158;
                      v161 = sub_3ABBC(v443);
                      v162 = v158[2];
                      v163 = (v160 & 1) == 0;
                      v164 = v162 + v163;
                      if (__OFADD__(v162, v163))
                      {
                        __break(1u);
LABEL_169:
                        __break(1u);
LABEL_170:
                        __break(1u);
LABEL_171:
                        __break(1u);
LABEL_172:
                        __break(1u);
LABEL_173:
                        __break(1u);
LABEL_174:
                        if (*(v35 + 16))
                        {
                          v197 = sub_3AA80(11);
                          if ((v205 & 1) == 0)
                          {
                            v202 = 0;
                            *&v203 = 0.0;
                            v204 = 0.0;
                            goto LABEL_178;
                          }

LABEL_167:
                          v201 = *(v356 + 56) + 24 * v197;
                          v202 = *v201;
                          v203 = *(v201 + 8);
                          v204 = *(v201 + 16);

                          goto LABEL_178;
                        }

                        goto LABEL_177;
                      }

                      v165 = v160;
                      if (v158[3] >= v164)
                      {
                        if (v159)
                        {
                          v38 = v393;
                          if ((v160 & 1) == 0)
                          {
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                          sub_186ED0();
                          v38 = v393;
                          if ((v165 & 1) == 0)
                          {
                            goto LABEL_121;
                          }
                        }
                      }

                      else
                      {
                        sub_1810E8(v164, v159);
                        v166 = sub_3ABBC(v443);
                        if ((v165 & 1) != (v167 & 1))
                        {
                          sub_1B5784();
                          __break(1u);
                          goto LABEL_307;
                        }

                        v161 = v166;
                        v38 = v393;
                        if ((v165 & 1) == 0)
                        {
LABEL_121:
                          v38[(v161 >> 6) + 8] |= 1 << v161;
                          memcpy((v38[6] + 568 * v161), v443, 0x231uLL);
                          *(v38[7] + 8 * v161) = _swiftEmptySetSingleton;
                          v168 = v38[2];
                          v82 = __OFADD__(v168, 1);
                          v169 = v168 + 1;
                          if (v82)
                          {
                            goto LABEL_171;
                          }

                          v38[2] = v169;
                          goto LABEL_113;
                        }
                      }

                      sub_2601C(v443);
LABEL_113:
                      sub_1122C4(&v393, v155);
                      sub_2601C(v443);
                      v157 += 568;
                      if (!--v37)
                      {
                        goto LABEL_104;
                      }

                      continue;
                    }
                  }
                }
              }

              else
              {
                sub_5C740(&v444);
                v38 = v373;
              }

              v40 = v364;
              v36 = v370;
              if (v364 != v358)
              {
                goto LABEL_5;
              }

LABEL_128:
              v36 = v363;
              v373 = v38;
              if (v353 < 1)
              {

                v174 = 0;
              }

              else
              {
                v170 = *(v349 + 16);
                v171 = (v349 + 32);
                v378 = 0x80000000001D4780;
                *&v379 = 0x80000000001D47A0;
                v377 = 0x80000000001D4760;

                while (2)
                {
                  v173 = v170-- != 0;
                  v174 = v173;
                  if (v173)
                  {
                    switch(*v171)
                    {
                      case 2:

                        v174 = 1;
                        break;
                      default:
                        v172 = sub_1B5604();

                        ++v171;
                        if ((v172 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }
                  }

                  break;
                }
              }

              v176 = v355;
              v175 = v356;
              v177 = v376;
              v178 = v350;
              v179 = v373;
              if (!*(v356 + 16))
              {
                goto LABEL_159;
              }

              sub_3AA80(2);
              if (v180)
              {

                goto LABEL_144;
              }

              if (*(v175 + 16))
              {
                sub_3AA80(5);
                v182 = v181;

                if ((v182 & 1) == 0 && ((v174 ^ 1) & 1) == 0)
                {
LABEL_144:
                  v183 = 1 << *(v36 + 32);
                  v184 = -1;
                  if (v183 < 64)
                  {
                    v184 = ~(-1 << v183);
                  }

                  v185 = v184 & *(v36 + 64);
                  v37 = (v183 + 63) >> 6;

                  v186 = 0;
                  v41 = v36;
LABEL_147:
                  if (v185)
                  {
                    goto LABEL_153;
                  }

                  v177 = v376;
                  while (1)
                  {
                    v187 = v186 + 1;
                    if (__OFADD__(v186, 1))
                    {
                      goto LABEL_293;
                    }

                    if (v187 >= v37)
                    {
                      break;
                    }

                    v185 = *(v36 + 64 + 8 * v187);
                    ++v186;
                    if (v185)
                    {
                      v186 = v187;
LABEL_153:
                      v188 = __clz(__rbit64(v185));
                      v185 &= v185 - 1;
                      v189 = *(*(v36 + 48) + ((v186 << 9) | (8 * v188)));

                      v191 = sub_C01C8(v190);

                      if (v191)
                      {
                        v192 = sub_43124(v189);
                        if (v193)
                        {
                          v194 = v192;
                          v195 = v363;
                          v196 = swift_isUniquelyReferenced_nonNull_native();
                          *&v393 = v195;
                          if (!v196)
                          {
                            sub_1856BC();
                            v195 = v393;
                          }

                          sub_535B8(v194, v195);
                          v363 = v195;
                          v41 = v195;
                        }
                      }

                      goto LABEL_147;
                    }
                  }

                  v176 = v355;
                  v178 = v350;
                  v179 = v373;
LABEL_161:
                  sub_41C08(*&v362, 0);
                  sub_41C08(v366, 0);
                  *&v393 = v346;
                  *(&v393 + 1) = v345;
                  *&v394 = v356;
                  *(&v394 + 1) = v177;
                  *&v395 = v353;
                  *(&v395 + 1) = v176;
                  *&v396 = v178;
                  v371 = a19;
                  *(&v396 + 1) = v375;
                  v37 = v354;
                  *&v397 = v354;
                  *(&v397 + 1) = v41;
                  *&v398 = v367;
                  *(&v398 + 1) = v382;
                  *&v399 = v179;
                  *(&v399 + 1) = v370;
                  *&v400 = a11;
                  *(&v400 + 1) = v347;
                  *&v401 = v348;
                  *(&v401 + 1) = a9;
                  *&v402 = a10;
                  *(&v402 + 1) = v343;
                  *&v403 = a13;
                  *(&v403 + 1) = v351;
                  *&v404 = v352;
                  *(&v404 + 1) = v349;
                  *&v405 = v344;
                  *(&v405 + 1) = *(&v352 + 1);
                  v406 = a19;
                  v381 = &off_213220;
                  if (*(v356 + 16))
                  {
                    v35 = v356;
                    v197 = sub_3AA80(0);
                    if (v198)
                    {
                      goto LABEL_167;
                    }

                    if (*(v35 + 16))
                    {
                      v197 = sub_3AA80(10);
                      if (v199)
                      {
                        goto LABEL_167;
                      }

                      if (*(v35 + 16))
                      {
                        v197 = sub_3AA80(9);
                        if ((v200 & 1) == 0)
                        {
                          goto LABEL_174;
                        }

                        goto LABEL_167;
                      }
                    }
                  }

LABEL_177:
                  v202 = 0;
                  *&v203 = 0.0;
                  v204 = 0.0;
LABEL_178:
                  v432 = v403;
                  v433 = v404;
                  v434 = v405;
                  v428 = v399;
                  v429 = v400;
                  v430 = v401;
                  v431 = v402;
                  v424 = v395;
                  v425 = v396;
                  v426 = v397;
                  v427 = v398;
                  v422 = v393;
                  v423 = v394;
                  v418 = v403;
                  v419 = v404;
                  v420 = v405;
                  v414 = v399;
                  v415 = v400;
                  v416 = v401;
                  v417 = v402;
                  v410 = v395;
                  v411 = v396;
                  v412 = v397;
                  v413 = v398;
                  v435 = v406;
                  v436 = v202;
                  v355 = v203;
                  v437 = *&v203;
                  v438 = v204;
                  v421 = v406;
                  v408 = v393;
                  v409 = v394;
                  v206 = sub_B9AD0();
                  v207 = sub_B9E78(&v436, v206);
                  v209 = v208;

                  v380 = v209;
                  v210 = *(v37 + 32);
                  v211 = v210 & 0x3F;
                  v41 = ((1 << v210) + 63) >> 6;
                  v36 = 8 * v41;

                  v362 = v204;
                  v356 = v202;
                  v364 = v207;
                  v360 = v209;
                  if (v211 <= 0xD)
                  {

                    goto LABEL_180;
                  }

                  goto LABEL_302;
                }
              }

              else
              {
LABEL_159:

                if (v174)
                {
                  goto LABEL_144;
                }
              }

              v41 = v36;
              goto LABEL_161;
            }

            v54 = *(v51 + 8 * v56);
            ++v36;
          }

          while (!v54);
          v36 = v56;
LABEL_15:
          v57 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          v35 = *(*(v378 + 48) + ((v36 << 9) | (8 * v57)));
          v58 = *(v42 + 16);
          if ((v372 & 1) == 0)
          {
            if (v58)
            {
              v67 = sub_1B57E4();
              v68 = -1 << *(v42 + 32);
              v69 = v67 & ~v68;
              if ((*(v43 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
              {
                v70 = ~v68;
                while (*(*(v42 + 48) + 8 * v69) != v35)
                {
                  v69 = (v69 + 1) & v70;
                  if (((*(v43 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                  {
                    goto LABEL_10;
                  }
                }

                goto LABEL_21;
              }
            }

            continue;
          }

          break;
        }

        if (v58)
        {
          v59 = sub_1B57E4();
          v60 = -1 << *(v42 + 32);
          v61 = v59 & ~v60;
          if ((*(v43 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v62 = ~v60;
            while (*(*(v42 + 48) + 8 * v61) != v35)
            {
              v61 = (v61 + 1) & v62;
              if (((*(v43 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            continue;
          }
        }

        break;
      }

LABEL_21:
      if (*(v37 + 16))
      {
        v63 = sub_1B57E4();
        v64 = -1 << *(v37 + 32);
        v65 = v63 & ~v64;
        if ((*(v369 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
        {
          v66 = ~v64;
          while (*(*(v37 + 48) + 8 * v65) != v35)
          {
            v65 = (v65 + 1) & v66;
            if (((*(v369 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          break;
        }

        continue;
      }

      break;
    }

    sub_429F8(&v444, &v393);
    sub_41C08(*&v362, 0);
    v41 = v363;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v393 = v41;
    v73 = sub_43124(v35);
    v74 = *(v41 + 16);
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_299;
    }

    v77 = v72;
    if (*(v41 + 24) >= v76)
    {
      if ((v71 & 1) == 0)
      {
        v41 = &v393;
        v37 = v73;
        sub_1856BC();
        v73 = v37;
      }
    }

    else
    {
      sub_17DB60(v76, v71);
      v41 = v393;
      v78 = sub_43124(v35);
      if ((v77 & 1) != (v79 & 1))
      {
LABEL_307:
        sub_1B5784();
        __break(1u);
LABEL_308:
        sub_1B5234();
        __break(1u);

        __break(1u);
        JUMPOUT(0xCB808);
      }

      v73 = v78;
    }

    v43 = v379;
    v80 = v393;
    if (v77)
    {
LABEL_42:
      v363 = v80;
      v84 = v80[7];
      v85 = *(v84 + 8 * v73);
      v86 = v73;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *(v84 + 8 * v86) = v85;
      if (v87)
      {
        v88 = v86;
      }

      else
      {
        v98 = sub_33358(0, *(v85 + 2) + 1, 1, v85);
        v88 = v86;
        v85 = v98;
        *(v84 + 8 * v86) = v98;
      }

      v90 = *(v85 + 2);
      v89 = *(v85 + 3);
      v35 = v90 + 1;
      if (v90 >= v89 >> 1)
      {
        v377 = v88;
        v85 = sub_33358((v89 > 1), v90 + 1, 1, v85);
        *(v84 + 8 * v377) = v85;
      }

      *(v85 + 2) = v35;
      v91 = &v85[136 * v90];
      *(v91 + 2) = v444;
      v92 = v445;
      v93 = v446;
      v94 = v448;
      *(v91 + 5) = v447;
      *(v91 + 6) = v94;
      *(v91 + 3) = v92;
      *(v91 + 4) = v93;
      v95 = v449;
      v96 = v450;
      v97 = v451;
      v91[160] = v452;
      *(v91 + 8) = v96;
      *(v91 + 9) = v97;
      *(v91 + 7) = v95;
      v362 = COERCE_DOUBLE(sub_CC28C);
      v41 = v375;
      v37 = v376;
      v42 = v374;
      continue;
    }

    break;
  }

  *(v393 + 8 * (v73 >> 6) + 64) |= 1 << v73;
  *(v80[6] + 8 * v73) = v35;
  *(v80[7] + 8 * v73) = _swiftEmptyArrayStorage;
  v81 = v80[2];
  v82 = __OFADD__(v81, 1);
  v83 = v81 + 1;
  if (!v82)
  {
    v80[2] = v83;
    goto LABEL_42;
  }

  while (1)
  {
    __break(1u);
LABEL_302:

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

LABEL_180:
    __chkstk_darwin(v212);
    bzero(&v340 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0), v36);
    v213 = 0;
    v214 = 0;
    v215 = 1 << *(v37 + 32);
    v216 = -1;
    if (v215 < 64)
    {
      v216 = ~(-1 << v215);
    }

    v217 = v216 & *(v37 + 56);
    while (v217)
    {
      v218 = __clz(__rbit64(v217));
      v217 &= v217 - 1;
      v219 = v218 | (v214 << 6);
LABEL_190:
      if (*(*(v37 + 48) + 40 * v219 + 16) == 1)
      {
        *(&v340 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v219;
        v82 = __OFADD__(v213++, 1);
        if (v82)
        {
          __break(1u);
LABEL_194:
          v41 = sub_3D908((&v340 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0)), v41, v213, v37);
          goto LABEL_195;
        }
      }
    }

    v220 = v214;
    while (1)
    {
      v214 = v220 + 1;
      if (__OFADD__(v220, 1))
      {
        break;
      }

      if (v214 >= ((v215 + 63) >> 6))
      {
        goto LABEL_194;
      }

      v221 = *(v37 + 56 + 8 * v214);
      ++v220;
      if (v221)
      {
        v217 = (v221 - 1) & v221;
        v219 = __clz(__rbit64(v221)) | (v214 << 6);
        goto LABEL_190;
      }
    }

    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
  }

  v338 = swift_slowAlloc();
  v339 = v361;
  v41 = sub_C6974(v338, v41, v37, sub_BA884);
  v361 = v339;

LABEL_195:
  *&v422 = _swiftEmptyArrayStorage;
  v222 = v41 + 56;
  v223 = 1 << *(v41 + 32);
  v224 = -1;
  if (v223 < 64)
  {
    v224 = ~(-1 << v223);
  }

  v225 = v224 & *(v41 + 56);
  v226 = (v223 + 63) >> 6;

  v227 = 0;
  v379 = xmmword_1BCA80;
  v378 = v41;
  while (v225)
  {
LABEL_204:
    v229 = *(v41 + 48) + 40 * (__clz(__rbit64(v225)) | (v227 << 6));
    v37 = *(v229 + 8);
    v230 = *(v229 + 24);
    v36 = *(v229 + 32);
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v231 = swift_allocObject();
    *(v231 + 16) = v379;
    *(v231 + 32) = v37;
    v232 = _swiftEmptyArrayStorage;
    if ((v36 & 1) == 0)
    {
      v232 = swift_allocObject();
      *(v232 + 1) = v379;
      v232[4] = v230;
    }

    v225 &= v225 - 1;
    *&v408 = v231;
    sub_5F33C(v232);
    sub_5F33C(v408);
    v41 = v378;
  }

  while (1)
  {
    v228 = v227 + 1;
    if (__OFADD__(v227, 1))
    {
      goto LABEL_286;
    }

    if (v228 >= v226)
    {
      break;
    }

    v225 = *(v222 + 8 * v228);
    ++v227;
    if (v225)
    {
      v227 = v228;
      goto LABEL_204;
    }
  }

  v41 = v422;
  v36 = sub_40854(v422);

  v233 = _swiftEmptyArrayStorage;
  v436 = _swiftEmptyArrayStorage;
  v234 = v370;
  v235 = *(v370 + 16);
  v367 = v36;
  if (v235)
  {
    v37 = 0;
    v236 = v370 + 32;
    v237 = v36 + 56;
    v238 = v36;
    *&v379 = v370 + 32;
    do
    {
      while (1)
      {
        if (v37 >= *(v234 + 16))
        {
          goto LABEL_294;
        }

        v239 = (v236 + 136 * v37);
        v422 = *v239;
        v240 = v239[1];
        v241 = v239[2];
        v242 = v239[3];
        v426 = v239[4];
        v425 = v242;
        v424 = v241;
        v423 = v240;
        v243 = v239[5];
        v244 = v239[6];
        v245 = v239[7];
        LOBYTE(v430) = *(v239 + 128);
        v429 = v245;
        v428 = v244;
        v427 = v243;
        ++v37;
        v246 = v245;
        if (v245 != 2)
        {
          break;
        }

LABEL_209:
        if (v37 == v235)
        {
          goto LABEL_231;
        }
      }

      v247 = v428;
      if (v238[2])
      {
        v36 = *(&v428 + 1);
        v41 = *(&v429 + 1);
        v248 = v430;
        v249 = sub_1B57E4();
        v238 = v367;
        v250 = -1 << *(v367 + 32);
        v251 = v249 & ~v250;
        if ((*(v237 + ((v251 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v251))
        {
          v252 = ~v250;
          while (*(v367[6] + 8 * v251) != v36)
          {
            v251 = (v251 + 1) & v252;
            if (((*(v237 + ((v251 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v251) & 1) == 0)
            {
              goto LABEL_217;
            }
          }

          goto LABEL_226;
        }

LABEL_217:
        if ((v248 & 1) == 0)
        {
          v253 = sub_1B57E4();
          v238 = v367;
          v254 = -1 << *(v367 + 32);
          v255 = v253 & ~v254;
          if ((*(v237 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255))
          {
            v256 = ~v254;
            v236 = v379;
            while (*(v367[6] + 8 * v255) != v41)
            {
              v255 = (v255 + 1) & v256;
              if (((*(v237 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255) & 1) == 0)
              {
                goto LABEL_224;
              }
            }

            goto LABEL_226;
          }
        }

        v236 = v379;
      }

LABEL_224:
      if (v247 == 1)
      {
        v234 = v370;
        goto LABEL_209;
      }

      v234 = v370;
      if ((v246 & 1) == 0)
      {
        goto LABEL_209;
      }

LABEL_226:
      sub_429F8(&v422, &v408);
      v257 = swift_isUniquelyReferenced_nonNull_native();
      v436 = v233;
      if ((v257 & 1) == 0)
      {
        v41 = &v436;
        sub_37574(0, v233[2] + 1, 1);
        v233 = v436;
      }

      v238 = v367;
      v259 = v233[2];
      v258 = v233[3];
      v36 = v259 + 1;
      if (v259 >= v258 >> 1)
      {
        v41 = &v436;
        sub_37574((v258 > 1), v259 + 1, 1);
        v238 = v367;
        v233 = v436;
      }

      v233[2] = v36;
      v260 = &v233[17 * v259];
      *(v260 + 2) = v422;
      v261 = v423;
      v262 = v424;
      v263 = v426;
      *(v260 + 5) = v425;
      *(v260 + 6) = v263;
      *(v260 + 3) = v261;
      *(v260 + 4) = v262;
      v264 = v427;
      v265 = v428;
      v266 = v429;
      *(v260 + 160) = v430;
      *(v260 + 8) = v265;
      *(v260 + 9) = v266;
      *(v260 + 7) = v264;
      v234 = v370;
      v236 = v379;
    }

    while (v37 != v235);
  }

LABEL_231:
  v36 = v233[2];
  if (v36)
  {
    v267 = v233 + 4;
    v268 = v364;
    do
    {
      v269 = *v267;
      v267 += 17;
      sub_111CE0(&v422, v269);
      --v36;
    }

    while (v36);
  }

  else
  {
    v268 = v364;
  }

  if (qword_2282C8 != -1)
  {
    swift_once();
  }

  v270 = sub_1B4644();
  v271 = sub_50E58(v270, qword_22B440);

  v358 = v271;
  v272 = sub_1B4624();
  v273 = sub_1B4DB4();

  if (os_log_type_enabled(v272, v273))
  {
    v36 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    *&v422 = v274;
    *v36 = 136315138;
    v275 = sub_BA88C(v268);
    v277 = sub_60FF4(v275, v276, &v422);

    *(v36 + 4) = v277;
    _os_log_impl(&dword_0, v272, v273, "highScoringItemRecommendations=%s", v36, 0xCu);
    sub_2BF8(v274);
  }

  v278 = v371;
  v408 = v268;
  *&v409 = a10;
  *(&v409 + 1) = v351;
  v410 = v352;
  LOBYTE(v411) = 0;

  sub_BAAD4(&v408);
  v41 = &off_213278;
  v37 = v381;
  v363 = (&stru_20 + 48);
LABEL_241:
  v279 = swift_allocObject();
  v366 = v279;
  *(v279 + 2) = &off_213278;
  v280 = v279 + 16;
  v281 = sub_BB45C(v37);
  *&v379 = *(v281 + 16);
  v365 = v37;
  if (v282 != v379)
  {
    v283 = v282;
    v377 = v281;
    v378 = v281 + 32;
    v37 = v282;
    v369 = v282;
    while (1)
    {
      if ((v283 & 0x8000000000000000) != 0)
      {
        goto LABEL_287;
      }

      if (v37 >= *(v281 + 16))
      {
        goto LABEL_288;
      }

      v284 = v378 + 56 * v37;
      v41 = *v284;
      v285 = *(v284 + 8);
      a10 = *(v284 + 16);
      v36 = *(v284 + 24);
      v286 = *(v284 + 32);
      v287 = *(v284 + 40);
      v288 = *(v284 + 48);
      if (v288)
      {
        break;
      }

      v432 = v403;
      v433 = v404;
      v434 = v405;
      v435 = v406;
      v428 = v399;
      v429 = v400;
      v430 = v401;
      v431 = v402;
      v424 = v395;
      v425 = v396;
      v426 = v397;
      v427 = v398;
      v422 = v393;
      v423 = v394;
      v291 = v286;

      v292 = sub_BB5BC(v41);
      v293 = *(v292 + 16);
      if (v293)
      {
        v375 = v36;
        v376 = v41;
        v436 = v41;
        v437 = v285;
        v438 = a10;
        v439 = v36;
        v373 = v287;
        v374 = v291;
        v440 = v291;
        v441 = v287;
        v442 = v288;
        v294 = *(v359 + 80);
        v372 = v292;
        v295 = v292 + ((v294 + 32) & ~v294);
        v296 = *(v359 + 72);
        v297 = v357;
        v36 = v371;
        do
        {
          sub_CB8C0(v295, v297, type metadata accessor for ScoredCollectionRecommendation);
          sub_BE2D8(v297, v383);
          sub_25FBC(v297, type metadata accessor for ScoredCollectionRecommendation);
          swift_beginAccess();
          v41 = v280;
          sub_BDF88(v383, v36);
          swift_endAccess();
          sub_CB928(v383);
          v295 += v296;
          --v293;
        }

        while (v293);

        v278 = v36;
        v281 = v377;
        v283 = v369;
        goto LABEL_246;
      }

      v391[0] = v41;
      *&v391[1] = v285;
      *&v391[2] = a10;
      v391[3] = v36;
      v391[4] = v291;
      v391[5] = v287;
      v392 = 1;
      sub_CB9F0(v391, &v422);

      swift_beginAccess();
      v278 = v371;
      v41 = v280;
      sub_BDF88(v391, v371);
      swift_endAccess();
      sub_CB928(v391);
      v283 = v369;
LABEL_245:
      v281 = v377;
LABEL_246:
      if (++v37 == v379)
      {

        v37 = v365;
        goto LABEL_263;
      }
    }

    v384 = *v284;
    v385 = v285;
    v386 = a10;
    v387 = v36;
    v388 = v286;
    v389 = v287;
    v390 = v288;

    sub_CB9F0(&v384, &v422);

    swift_beginAccess();
    v289 = *v280;
    v290 = *(*v280 + 16);
    if (v290 > v278)
    {
      if (!v290)
      {
        goto LABEL_300;
      }

      if (v290 == 1)
      {
        goto LABEL_308;
      }

      if (!*(v289 + 88))
      {
        __break(1u);
      }

      if (*(v289 + 96) >= v385)
      {
        goto LABEL_257;
      }

      sub_C5694();
    }

    v41 = v280;
    sub_BAAD4(&v384);
LABEL_257:
    swift_endAccess();
    sub_CB928(&v384);
    goto LABEL_245;
  }

LABEL_263:
  sub_2B0C(&qword_22B460, &qword_1C39F8);
  v41 = swift_allocObject();
  v298 = v366;
  *(v41 + 16) = sub_CB958;
  *(v41 + 24) = v298;
  swift_beginAccess();

  v300 = sub_BB45C(v299);
  v302 = v301;

  sub_2B0C(&qword_22B468, &unk_1C3A00);
  v36 = swift_allocObject();
  *(v36 + 16) = v300;
  *(v36 + 24) = v302;
  v303 = *(v300 + 16);
  v304 = &v363[7 * v302];
  while (v303 != v302)
  {
    if (v302 >= v303)
    {
      goto LABEL_289;
    }

    if (__OFADD__(v302, 1))
    {
      goto LABEL_290;
    }

    v305 = *(v304 + v300);
    *(v36 + 24) = ++v302;
    v304 += 7;
    if ((v305 & 1) == 0)
    {
      v306 = v366;

      swift_setDeallocating();
      swift_deallocClassInstance();

      swift_setDeallocating();
      swift_deallocClassInstance();

      v37 = *(v306 + 2);

      v381 = v37;
      v41 = &off_213278;
      goto LABEL_241;
    }
  }

  sub_CB928(&v408);

  swift_setDeallocating();
  swift_deallocClassInstance();

  swift_setDeallocating();
  swift_deallocClassInstance();

  v307 = sub_BB45C(v37);
  v309 = sub_C7158(v307, v308);

  sub_BEF94(v309, &v422);

  v310 = v422;
  if (v422)
  {
    v311 = *(&v424 + 1);
    v312 = v424;
    v313 = *(&v423 + 1);
    v314 = v423;
    v315 = *(&v422 + 1);

    sub_CB990(v316, v315, v314, v313, v312, v311);
  }

  else
  {
    v310 = _swiftEmptyArrayStorage;
  }

  v317 = v342;
  v318 = v362;
  v319 = v310[2];

  v320 = v364[2];

  if (v319 == v320)
  {

    v432 = v403;
    v433 = v404;
    v434 = v405;
    v435 = v406;
    v428 = v399;
    v429 = v400;
    v430 = v401;
    v431 = v402;
    v424 = v395;
    v425 = v396;
    v426 = v397;
    v427 = v398;
    v422 = v393;
    v423 = v394;
    v407[0] = v356;
    v407[1] = v355;
    *&v407[2] = v318;
    v310 = sub_B9E78(v407, v370);
  }

  v427 = v398;
  v426 = v397;
  v425 = v396;
  v424 = v395;
  v431 = v402;
  v430 = v401;
  v429 = v400;
  v428 = v399;
  v435 = v406;
  v434 = v405;
  v433 = v404;
  v432 = v403;
  v423 = v394;
  v422 = v393;
  v321 = v310[2];
  if (v321)
  {
    v407[0] = _swiftEmptyArrayStorage;
    sub_375B4(0, v321, 0);
    v322 = v407[0];
    v323 = v310 + ((*(v359 + 80) + 32) & ~*(v359 + 80));
    v324 = *(v359 + 72);
    v325 = v341;
    do
    {
      v326 = v368;
      sub_CB8C0(v323, v368, type metadata accessor for ScoredCollectionRecommendation);
      sub_CBA88(v326, v317, type metadata accessor for CollectionRecommendation);
      v407[0] = v322;
      v328 = v322[2];
      v327 = v322[3];
      if (v328 >= v327 >> 1)
      {
        sub_375B4((v327 > 1), v328 + 1, 1);
        v325 = v341;
        v322 = v407[0];
      }

      v322[2] = v328 + 1;
      sub_CBA88(v317, v322 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v328, type metadata accessor for CollectionRecommendation);
      v323 += v324;
      --v321;
    }

    while (v321);
  }

  else
  {

    v322 = _swiftEmptyArrayStorage;
  }

  v329 = sub_BF160(v322);

  sub_CB960(&v393);

  v330 = sub_1B4624();
  v331 = sub_1B4DB4();

  if (os_log_type_enabled(v330, v331))
  {
    v332 = swift_slowAlloc();
    v333 = swift_slowAlloc();
    *&v422 = v333;
    *v332 = 136315138;
    v334 = sub_1AB48C(v329);
    v336 = sub_60FF4(v334, v335, &v422);

    *(v332 + 4) = v336;
    _os_log_impl(&dword_0, v330, v331, "collectionRecommendations=%s", v332, 0xCu);
    sub_2BF8(v333);
  }

  return v329;
}

uint64_t type metadata accessor for ScoredCollectionRecommendation(uint64_t a1)
{
  result = qword_22B500;
  if (!qword_22B500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CB888()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CB8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CB990(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CBA28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CBA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_CBAF0()
{

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_CBBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_CBD44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    sub_43CE0(a3, a4);
  }
}

__n128 sub_CBDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_CBE10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_CBE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_CBEDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_CBEF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_CBF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_CBFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CollectionRecommendation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_CC094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CollectionRecommendation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_CC14C(uint64_t a1)
{
  result = type metadata accessor for CollectionRecommendation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_CC1D8()
{
  result = qword_22B540;
  if (!qword_22B540)
  {
    type metadata accessor for ScoredCollectionRecommendation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B540);
  }

  return result;
}

unint64_t sub_CC234()
{
  result = qword_22B548;
  if (!qword_22B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B548);
  }

  return result;
}

unint64_t sub_CC298(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B5154();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_3DBA4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_CC598(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_350C0(a1[2], 0);
  v4 = sub_3EB38(&v6, v3 + 4, v2, a1);
  sub_5EEEC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_CC628(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1B40C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_43050(v1, &v11 - v8, &qword_229528, &qword_1BC5A0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(v5 + 2, __src, 0x460uLL);
  v5[142] = 0;
  v12 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  v5[143] = v10;
  *v10 = v5;
  v10[1] = sub_CC964;

  return v12(v5 + 142, a1, a2, v5 + 2, a4, a5);
}

uint64_t sub_CC964(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_CCAA0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

Swift::Int sub_CCAB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56AF4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_22BB38, &qword_1C59F8);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_DF484(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_CCC14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_DF38C(v5);
  *a1 = v2;
  return result;
}

void *Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(uint64_t a1, const void *a2, void *a3)
{
  memcpy(__dst, a2, 0x16BuLL);
  if (a3[2] <= a1)
  {

    return a3;
  }

  sub_71C74(__dst, v15);
  v5 = sub_E0C5C(a3, __dst);
  sub_71DC0(__dst);
  v15[0] = v5;

  sub_CCAB8(v15);

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v15[0];
    if (*(v15[0] + 2) >= a1)
    {
      v7 = _swiftEmptyArrayStorage;
      if (a1)
      {
        v15[0] = _swiftEmptyArrayStorage;
        v8 = (v6 + 32);
        sub_3741C(0, a1, 0);
        v7 = v15[0];
        v9 = *(v15[0] + 2);
        do
        {
          v11 = *v8;
          v8 += 2;
          v10 = v11;
          v15[0] = v7;
          v12 = *(v7 + 3);
          if (v9 >= v12 >> 1)
          {
            sub_3741C((v12 > 1), v9 + 1, 1);
            v7 = v15[0];
          }

          *(v7 + 2) = v9 + 1;
          *&v7[8 * v9++ + 32] = v10;
          --a1;
        }

        while (a1);
      }

      v13 = sub_40854(v7);

      a3 = sub_E1080(a3, v13);

      swift_bridgeObjectRelease_n();
      return a3;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t BookHistory.CollectionAddition.debugDescription.getter()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[1];
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BCA80;
    *(v3 + 56) = &type metadata for Double;
    *(v3 + 64) = &protocol witness table for Double;
    *(v3 + 32) = v1;
    v7._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v7);

    v8._countAndFlagsBits = 0x20646E6120;
    v8._object = 0xE500000000000000;
    sub_1B48D4(v8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BCA80;
    *(v4 + 56) = &type metadata for Double;
    *(v4 + 64) = &protocol witness table for Double;
    *(v4 + 32) = v2;
    v9._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v9);

    return 538996329;
  }

  else
  {
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v1;
    return sub_1B47F4();
  }
}

uint64_t sub_CCFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5373646E6F636573 && a2 == 0xEC00000065636E69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_CD070(uint64_t a1)
{
  v2 = sub_E132C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD0AC(uint64_t a1)
{
  v2 = sub_E132C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CD0E8()
{
  if (*v0)
  {
    return 1868983913;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_CD11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_CD1F8(uint64_t a1)
{
  v2 = sub_E1284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD234(uint64_t a1)
{
  v2 = sub_E1284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CD270()
{
  if (*v0)
  {
    return 0x6E496465646461;
  }

  else
  {
    return 0x74416465646461;
  }
}

uint64_t sub_CD2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74416465646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E496465646461 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_CD380(uint64_t a1)
{
  v2 = sub_E1230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD3BC(uint64_t a1)
{
  v2 = sub_E1230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.CollectionAddition.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22B550, &qword_1C3CB0);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v22 - v4;
  v5 = sub_2B0C(&qword_22B558, &qword_1C3CB8);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v30 = sub_2B0C(&qword_22B560, &qword_1C3CC0);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v22 = v1[3];
  v23 = v13;
  v14 = *(v1 + 32);
  sub_2698(a1, a1[3]);
  sub_E1230();
  sub_1B5884();
  if (v14)
  {
    LOBYTE(v32) = 1;
    sub_E1284();
    v15 = v26;
    v16 = v30;
    sub_1B5454();
    v32 = v11;
    v33 = v12;
    v31 = 0;
    sub_2B0C(&qword_22B578, &qword_1C3CC8);
    sub_E1380(&qword_22B580, &protocol witness table for Double, &protocol conformance descriptor for <> ClosedRange<A>);
    v18 = v28;
    v17 = v29;
    sub_1B5544();
    if (!v17)
    {
      v32 = v23;
      v33 = v22;
      v31 = 1;
      sub_E12D8();
      sub_1B5544();
    }

    (*(v27 + 8))(v15, v18);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_E132C();
    v20 = v30;
    sub_1B5454();
    v21 = v25;
    sub_1B5514();
    (*(v24 + 8))(v7, v21);
    return (*(v8 + 8))(v10, v20);
  }
}

void BookHistory.CollectionAddition.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 8);
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v1;
    }

    sub_1B5834(*&v5);
    if (v4 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }

    sub_1B5834(*&v6);
    sub_1B5804(v3);
    sub_1B5804(v2);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = *&v1;
    }

    else
    {
      v7 = 0;
    }

    sub_1B5834(v7);
  }
}

Swift::Int BookHistory.CollectionAddition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  if (v5)
  {
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v1;
    }

    sub_1B5834(*&v6);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    sub_1B5804(v4);
    sub_1B5804(v3);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v1;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }

  return sub_1B5844();
}

uint64_t BookHistory.CollectionAddition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = sub_2B0C(&qword_22B598, &qword_1C3CD0);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31[-v3];
  v5 = sub_2B0C(&qword_22B5A0, &qword_1C3CD8);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31[-v6];
  v8 = sub_2B0C(&qword_22B5A8, &unk_1C3CE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-v10];
  v12 = a1[3];
  v38 = a1;
  sub_2698(a1, v12);
  sub_E1230();
  v13 = v37;
  sub_1B5864();
  if (!v13)
  {
    v14 = v36;
    v37 = v9;
    v15 = sub_1B5444();
    v16 = (2 * *(v15 + 16)) | 1;
    v43 = v15;
    v44 = v15 + 32;
    v45 = 0;
    v46 = v16;
    v17 = sub_A1170();
    if (v17 == 2 || v45 != v46 >> 1)
    {
      v21 = sub_1B5114();
      swift_allocError();
      v23 = v22;
      sub_2B0C(&qword_22ADB8, &qword_1C2520);
      *v23 = &type metadata for BookHistory.CollectionAddition;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v37 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = v17;
      if (v17)
      {
        LOBYTE(v41) = 1;
        sub_E1284();
        v18 = v4;
        sub_1B5304();
        v19 = v37;
        sub_2B0C(&qword_22B578, &qword_1C3CC8);
        LOBYTE(v40) = 0;
        sub_E1380(&qword_22B5B0, &protocol witness table for Double, &protocol conformance descriptor for <> ClosedRange<A>);
        v20 = v33;
        sub_1B5404();
        v26 = v41;
        v27 = v11;
        v28 = v42;
        v39 = 1;
        sub_E13EC();
        sub_1B5404();
        (*(v35 + 8))(v18, v20);
        (*(v19 + 8))(v27, v8);
        swift_unknownObjectRelease();
        v29 = v40;
        v14 = v36;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_E132C();
        sub_1B5304();
        v25 = v37;
        sub_1B53D4();
        v26 = v30;
        (*(v34 + 8))(v7, v5);
        (*(v25 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = 0uLL;
      }

      *v14 = v26;
      *(v14 + 8) = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v32 & 1;
    }
  }

  return sub_2BF8(v38);
}

Swift::Int sub_CDF54(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_1B57F4();
  if (v6)
  {
    sub_1B5804(1uLL);
    sub_E0444(v2, v3);
    sub_1B5804(v5);
    sub_1B5804(v4);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = *&v2;
    }

    else
    {
      v7 = 0;
    }

    sub_1B5834(v7);
  }

  return sub_1B5844();
}

uint64_t sub_CE034(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_2B0C(&qword_22BAC0, &qword_1C5998);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_2B0C(&qword_22BAC8, &qword_1C59A0);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_2B0C(&qword_22BAD0, &qword_1C59A8);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_2B0C(&qword_22BAD8, &qword_1C59B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_2698(a1, a1[3]);
  sub_E3D40();
  sub_1B5884();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_E3DE8();
      sub_1B5454();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_E3D94();
      v16 = v22;
      sub_1B5454();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_E3E3C();
    sub_1B5454();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_CE3B4(uint64_t a1)
{
  v2 = sub_E3DE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE3F0(uint64_t a1)
{
  v2 = sub_E3DE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE42C()
{
  v1 = 0x6974616D6F747561;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6C61756E616DLL;
  }
}

uint64_t sub_CE494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_E3E90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_CE4BC(uint64_t a1)
{
  v2 = sub_E3D40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE4F8(uint64_t a1)
{
  v2 = sub_E3D40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE534(uint64_t a1)
{
  v2 = sub_E3E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE570(uint64_t a1)
{
  v2 = sub_E3E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE5AC(uint64_t a1)
{
  v2 = sub_E3D94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE5E8(uint64_t a1)
{
  v2 = sub_E3D94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE624@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_E3FB0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_CE670()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x73696E616863656DLL;
  }
}

uint64_t sub_CE6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7380 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_CE7A0(uint64_t a1)
{
  v2 = sub_E1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE7DC(uint64_t a1)
{
  v2 = sub_E1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.MarkedFinishedInfo.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22B5C0, &qword_1C3CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v12 = v9;
  v16 = v1[40];
  sub_2698(a1, a1[3]);
  sub_E1440();
  sub_1B5884();
  LOBYTE(v13) = v8;
  v17 = 0;
  sub_E1494();
  sub_1B5544();
  if (!v2)
  {
    v14 = v11;
    v13 = v12;
    v15 = v16;
    v17 = 1;
    sub_E14E8();
    sub_1B5544();
  }

  return (*(v5 + 8))(v7, v4);
}

void BookHistory.MarkedFinishedInfo.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v3 = *(v0 + 4);
  v5 = v0[40];
  sub_1B5804(*v0);
  if (v5)
  {
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v1;
    }

    sub_1B5834(*&v6);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    sub_1B5804(v4);
    sub_1B5804(v3);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v1;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }
}

Swift::Int BookHistory.MarkedFinishedInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = v0[40];
  sub_1B57F4();
  sub_1B5804(v1);
  if (v6)
  {
    sub_1B5804(1uLL);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    if (v3 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v3;
    }

    sub_1B5834(*&v8);
    sub_1B5804(v5);
    sub_1B5804(v4);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = *&v2;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
  }

  return sub_1B5844();
}

uint64_t BookHistory.MarkedFinishedInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22B5E0, &qword_1C3CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_2698(a1, a1[3]);
  sub_E1440();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    sub_E153C();
    sub_1B5404();
    v9 = v14[0];
    v16 = 1;
    sub_E1590();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v11 = v14[0];
    v12 = v14[1];
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 40) = v10;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_CED64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = *(v1 + 3);
  v5 = *(v1 + 4);
  v7 = v1[40];
  sub_1B57F4();
  sub_1B5804(v2);
  if (v7)
  {
    sub_1B5804(1uLL);
    sub_E0444(v3, v4);
    sub_1B5804(v6);
    sub_1B5804(v5);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v3;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }

  return sub_1B5844();
}

unint64_t sub_CEE5C(char a1)
{
  result = 0x6E49776569766572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 11;
      goto LABEL_16;
    case 3:
      return result;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000002BLL;
      break;
    case 10:
    case 13:
      v3 = 9;
LABEL_16:
      result = v3 | 0xD000000000000014;
      break;
    case 11:
    case 17:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_CF0BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_E4520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_CF0F0(uint64_t a1)
{
  v2 = sub_E15E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF12C(uint64_t a1)
{
  v2 = sub_E15E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF168(uint64_t a1)
{
  v2 = sub_E168C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF1A4(uint64_t a1)
{
  v2 = sub_E168C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF1E0(uint64_t a1)
{
  v2 = sub_E1638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF21C(uint64_t a1)
{
  v2 = sub_E1638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF258(uint64_t a1)
{
  v2 = sub_E16E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF294(uint64_t a1)
{
  v2 = sub_E16E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF2D0(uint64_t a1)
{
  v2 = sub_E1B78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF30C(uint64_t a1)
{
  v2 = sub_E1B78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF348(uint64_t a1)
{
  v2 = sub_E1BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF384(uint64_t a1)
{
  v2 = sub_E1BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF3C0(uint64_t a1)
{
  v2 = sub_E1AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF3FC(uint64_t a1)
{
  v2 = sub_E1AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF438(uint64_t a1)
{
  v2 = sub_E1B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF474(uint64_t a1)
{
  v2 = sub_E1B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF4B0(uint64_t a1)
{
  v2 = sub_E1884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF4EC(uint64_t a1)
{
  v2 = sub_E1884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF528(uint64_t a1)
{
  v2 = sub_E19D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF564(uint64_t a1)
{
  v2 = sub_E19D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF5A0(uint64_t a1)
{
  v2 = sub_E18D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF5DC(uint64_t a1)
{
  v2 = sub_E18D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF618(uint64_t a1)
{
  v2 = sub_E1734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF654(uint64_t a1)
{
  v2 = sub_E1734();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF690(uint64_t a1)
{
  v2 = sub_E1980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF6CC(uint64_t a1)
{
  v2 = sub_E1980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF708(uint64_t a1)
{
  v2 = sub_E1A28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF744(uint64_t a1)
{
  v2 = sub_E1A28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF780(uint64_t a1)
{
  v2 = sub_E1A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF7BC(uint64_t a1)
{
  v2 = sub_E1A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF7F8(uint64_t a1)
{
  v2 = sub_E1788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF834(uint64_t a1)
{
  v2 = sub_E1788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF870(uint64_t a1)
{
  v2 = sub_E192C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF8AC(uint64_t a1)
{
  v2 = sub_E192C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF8E8(uint64_t a1)
{
  v2 = sub_E1830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF924(uint64_t a1)
{
  v2 = sub_E1830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF960(uint64_t a1)
{
  v2 = sub_E17DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF99C(uint64_t a1)
{
  v2 = sub_E17DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.Feature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_22B5F8, &qword_1C3D00);
  v107 = *(v4 - 8);
  v108 = v4;
  __chkstk_darwin(v4);
  v106 = &v57 - v5;
  v6 = sub_2B0C(&qword_22B600, &qword_1C3D08);
  v104 = *(v6 - 8);
  v105 = v6;
  __chkstk_darwin(v6);
  v103 = &v57 - v7;
  v8 = sub_2B0C(&qword_22B608, &qword_1C3D10);
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v100 = &v57 - v9;
  v10 = sub_2B0C(&qword_22B610, &qword_1C3D18);
  v98 = *(v10 - 8);
  v99 = v10;
  __chkstk_darwin(v10);
  v97 = &v57 - v11;
  v12 = sub_2B0C(&qword_22B618, &qword_1C3D20);
  v95 = *(v12 - 8);
  v96 = v12;
  __chkstk_darwin(v12);
  v94 = &v57 - v13;
  v14 = sub_2B0C(&qword_22B620, &qword_1C3D28);
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v91 = &v57 - v15;
  v90 = sub_2B0C(&qword_22B628, &qword_1C3D30);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v57 - v16;
  v87 = sub_2B0C(&qword_22B630, &qword_1C3D38);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v57 - v17;
  v84 = sub_2B0C(&qword_22B638, &qword_1C3D40);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v57 - v18;
  v81 = sub_2B0C(&qword_22B640, &qword_1C3D48);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v57 - v19;
  v78 = sub_2B0C(&qword_22B648, &qword_1C3D50);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v57 - v20;
  v75 = sub_2B0C(&qword_22B650, &qword_1C3D58);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v57 - v21;
  v72 = sub_2B0C(&qword_22B658, &qword_1C3D60);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v57 - v22;
  v69 = sub_2B0C(&qword_22B660, &qword_1C3D68);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v57 - v23;
  v66 = sub_2B0C(&qword_22B668, &qword_1C3D70);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v57 - v24;
  v63 = sub_2B0C(&qword_22B670, &qword_1C3D78);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v57 - v25;
  v60 = sub_2B0C(&qword_22B678, &qword_1C3D80);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v27 = &v57 - v26;
  v28 = sub_2B0C(&qword_22B680, &qword_1C3D88);
  v58 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v57 - v29;
  v110 = sub_2B0C(&qword_22B688, &qword_1C3D90);
  v31 = *(v110 - 8);
  __chkstk_darwin(v110);
  v33 = &v57 - v32;
  v34 = *v2;
  sub_2698(a1, a1[3]);
  sub_E15E4();
  v109 = v33;
  sub_1B5884();
  v35 = (v31 + 8);
  switch(v34)
  {
    case 1:
      v112 = 1;
      sub_E1B78();
      v50 = v109;
      v51 = v110;
      sub_1B5454();
      (*(v59 + 8))(v27, v60);
      return (*v35)(v50, v51);
    case 2:
      v112 = 2;
      sub_E1B24();
      v47 = v61;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v62 + 8);
      v43 = v47;
      v44 = &v95;
      goto LABEL_21;
    case 3:
      v112 = 3;
      sub_E1AD0();
      v48 = v64;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v65 + 8);
      v43 = v48;
      v44 = &v98;
      goto LABEL_21;
    case 4:
      v112 = 4;
      sub_E1A7C();
      v45 = v67;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v68 + 8);
      v43 = v45;
      v44 = &v101;
      goto LABEL_21;
    case 5:
      v112 = 5;
      sub_E1A28();
      v53 = v70;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v71 + 8);
      v43 = v53;
      v44 = &v104;
      goto LABEL_21;
    case 6:
      v112 = 6;
      sub_E19D4();
      v54 = v73;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v74 + 8);
      v43 = v54;
      v44 = &v107;
      goto LABEL_21;
    case 7:
      v112 = 7;
      sub_E1980();
      v49 = v76;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v77 + 8);
      v43 = v49;
      v44 = &v110;
      goto LABEL_21;
    case 8:
      v112 = 8;
      sub_E192C();
      v56 = v79;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v80 + 8);
      v43 = v56;
      v44 = &v111;
      goto LABEL_21;
    case 9:
      v112 = 9;
      sub_E18D8();
      v46 = v82;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v83 + 8);
      v43 = v46;
      v44 = &v113;
      goto LABEL_21;
    case 10:
      v112 = 10;
      sub_E1884();
      v55 = v85;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v86 + 8);
      v43 = v55;
      v44 = &v114;
      goto LABEL_21;
    case 11:
      v112 = 11;
      sub_E1830();
      v41 = v88;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v42 = *(v89 + 8);
      v43 = v41;
      v44 = &v115;
LABEL_21:
      v42(v43, *(v44 - 32));
      return (*v35)(v37, v36);
    case 12:
      v112 = 12;
      sub_E17DC();
      v38 = v91;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v92;
      v39 = v93;
      goto LABEL_17;
    case 13:
      v112 = 13;
      sub_E1788();
      v38 = v94;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v95;
      v39 = v96;
      goto LABEL_17;
    case 14:
      v112 = 14;
      sub_E1734();
      v38 = v97;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v98;
      v39 = v99;
      goto LABEL_17;
    case 15:
      v112 = 15;
      sub_E16E0();
      v38 = v100;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v101;
      v39 = v102;
      goto LABEL_17;
    case 16:
      v112 = 16;
      sub_E168C();
      v38 = v103;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v104;
      v39 = v105;
      goto LABEL_17;
    case 17:
      v112 = 17;
      sub_E1638();
      v38 = v106;
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      v40 = v107;
      v39 = v108;
LABEL_17:
      (*(v40 + 8))(v38, v39);
      break;
    default:
      v112 = 0;
      sub_E1BCC();
      v37 = v109;
      v36 = v110;
      sub_1B5454();
      (*(v58 + 8))(v30, v28);
      break;
  }

  return (*v35)(v37, v36);
}

uint64_t BookHistory.Feature.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v135 = a2;
  v134 = sub_2B0C(&qword_22B728, &qword_1C3D98);
  v117 = *(v134 - 8);
  __chkstk_darwin(v134);
  v130 = v80 - v3;
  v116 = sub_2B0C(&qword_22B730, &qword_1C3DA0);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v129 = v80 - v4;
  v114 = sub_2B0C(&qword_22B738, &qword_1C3DA8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v128 = v80 - v5;
  v112 = sub_2B0C(&qword_22B740, &qword_1C3DB0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v127 = v80 - v6;
  v110 = sub_2B0C(&qword_22B748, &qword_1C3DB8);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v126 = v80 - v7;
  v108 = sub_2B0C(&qword_22B750, &qword_1C3DC0);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v125 = v80 - v8;
  v106 = sub_2B0C(&qword_22B758, &qword_1C3DC8);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v124 = v80 - v9;
  v104 = sub_2B0C(&qword_22B760, &qword_1C3DD0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v123 = v80 - v10;
  v102 = sub_2B0C(&qword_22B768, &qword_1C3DD8);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v122 = v80 - v11;
  v100 = sub_2B0C(&qword_22B770, &qword_1C3DE0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v121 = v80 - v12;
  v98 = sub_2B0C(&qword_22B778, &qword_1C3DE8);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v118 = v80 - v13;
  v95 = sub_2B0C(&qword_22B780, &qword_1C3DF0);
  v96 = *(v95 - 8);
  __chkstk_darwin(v95);
  v133 = v80 - v14;
  v94 = sub_2B0C(&qword_22B788, &qword_1C3DF8);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v132 = v80 - v15;
  v92 = sub_2B0C(&qword_22B790, &qword_1C3E00);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v120 = v80 - v16;
  v90 = sub_2B0C(&qword_22B798, &qword_1C3E08);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v119 = v80 - v17;
  v88 = sub_2B0C(&qword_22B7A0, &qword_1C3E10);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v131 = v80 - v18;
  v86 = sub_2B0C(&qword_22B7A8, &qword_1C3E18);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v20 = v80 - v19;
  v21 = sub_2B0C(&qword_22B7B0, &qword_1C3E20);
  v84 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v80 - v22;
  v24 = sub_2B0C(&qword_22B7B8, &qword_1C3E28);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v80 - v26;
  v28 = a1[3];
  v137 = a1;
  sub_2698(a1, v28);
  sub_E15E4();
  v29 = v136;
  sub_1B5864();
  if (v29)
  {
LABEL_8:
    v47 = v137;
    return sub_2BF8(v47);
  }

  v81 = v23;
  v80[1] = v21;
  v82 = v20;
  v30 = v131;
  v31 = v132;
  v32 = v133;
  v83 = 0;
  v34 = v134;
  v33 = v135;
  v136 = v25;
  v35 = sub_1B5444();
  v36 = (2 * *(v35 + 16)) | 1;
  v138[0] = v35;
  v138[1] = v35 + 32;
  v139 = 0;
  v140 = v36;
  v37 = sub_9CA80();
  if (v139 != v140 >> 1)
  {
LABEL_6:
    v44 = sub_1B5114();
    swift_allocError();
    v46 = v45;
    sub_2B0C(&qword_22ADB8, &qword_1C2520);
    *v46 = &type metadata for BookHistory.Feature;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
    swift_willThrow();
LABEL_7:
    (*(v136 + 8))(v27, v24);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v38 = v37;
  switch(v37)
  {
    case 0:
      v143 = 0;
      sub_E1BCC();
      v39 = v81;
      v40 = v83;
      sub_1B5304();
      if (v40)
      {
        goto LABEL_7;
      }

      v41 = *(v84 + 8);
      v42 = v39;
      v43 = &v112;
      goto LABEL_44;
    case 1:
      v143 = 1;
      sub_E1B78();
      v68 = v82;
      v69 = v83;
      sub_1B5304();
      if (v69)
      {
        goto LABEL_7;
      }

      v41 = *(v85 + 8);
      v42 = v68;
      v43 = &v118;
      goto LABEL_44;
    case 2:
      v143 = 2;
      sub_E1B24();
      v61 = v83;
      sub_1B5304();
      if (v61)
      {
        goto LABEL_7;
      }

      v41 = *(v87 + 8);
      v42 = v30;
      v43 = &v120;
      goto LABEL_44;
    case 3:
      v143 = 3;
      sub_E1AD0();
      v64 = v119;
      v65 = v83;
      sub_1B5304();
      if (v65)
      {
        goto LABEL_7;
      }

      v41 = *(v89 + 8);
      v42 = v64;
      v43 = &v122;
      goto LABEL_44;
    case 4:
      v143 = 4;
      sub_E1A7C();
      v55 = v120;
      v56 = v83;
      sub_1B5304();
      if (v56)
      {
        goto LABEL_7;
      }

      v41 = *(v91 + 8);
      v42 = v55;
      v43 = &v124;
      goto LABEL_44;
    case 5:
      v143 = 5;
      sub_E1A28();
      v72 = v83;
      sub_1B5304();
      if (v72)
      {
        goto LABEL_7;
      }

      v41 = *(v93 + 8);
      v42 = v31;
      v43 = &v126;
      goto LABEL_44;
    case 6:
      v143 = 6;
      sub_E19D4();
      v75 = v83;
      sub_1B5304();
      if (v75)
      {
        goto LABEL_7;
      }

      v41 = *(v96 + 8);
      v42 = v32;
      v43 = &v127;
      goto LABEL_44;
    case 7:
      v143 = 7;
      sub_E1980();
      v66 = v118;
      v67 = v83;
      sub_1B5304();
      if (v67)
      {
        goto LABEL_7;
      }

      v41 = *(v97 + 8);
      v42 = v66;
      v43 = &v130;
      goto LABEL_44;
    case 8:
      v143 = 8;
      sub_E192C();
      v78 = v121;
      v79 = v83;
      sub_1B5304();
      if (v79)
      {
        goto LABEL_7;
      }

      v41 = *(v99 + 8);
      v42 = v78;
      v43 = &v132;
      goto LABEL_44;
    case 9:
      v143 = 9;
      sub_E18D8();
      v59 = v122;
      v60 = v83;
      sub_1B5304();
      if (v60)
      {
        goto LABEL_7;
      }

      v41 = *(v101 + 8);
      v42 = v59;
      v43 = &v134;
      goto LABEL_44;
    case 10:
      v143 = 10;
      sub_E1884();
      v76 = v123;
      v77 = v83;
      sub_1B5304();
      if (v77)
      {
        goto LABEL_7;
      }

      v41 = *(v103 + 8);
      v42 = v76;
      v43 = &v136;
      goto LABEL_44;
    case 11:
      v143 = 11;
      sub_E1830();
      v53 = v124;
      v54 = v83;
      sub_1B5304();
      if (v54)
      {
        goto LABEL_7;
      }

      v41 = *(v105 + 8);
      v42 = v53;
      v43 = v138;
      goto LABEL_44;
    case 12:
      v143 = 12;
      sub_E17DC();
      v57 = v125;
      v58 = v83;
      sub_1B5304();
      if (v58)
      {
        goto LABEL_7;
      }

      v41 = *(v107 + 8);
      v42 = v57;
      v43 = &v139;
      goto LABEL_44;
    case 13:
      v143 = 13;
      sub_E1788();
      v73 = v126;
      v74 = v83;
      sub_1B5304();
      if (v74)
      {
        goto LABEL_7;
      }

      v41 = *(v109 + 8);
      v42 = v73;
      v43 = &v141;
      goto LABEL_44;
    case 14:
      v143 = 14;
      sub_E1734();
      v51 = v127;
      v52 = v83;
      sub_1B5304();
      if (v52)
      {
        goto LABEL_7;
      }

      v41 = *(v111 + 8);
      v42 = v51;
      v43 = &v142;
      goto LABEL_44;
    case 15:
      v143 = 15;
      sub_E16E0();
      v62 = v128;
      v63 = v83;
      sub_1B5304();
      if (v63)
      {
        goto LABEL_7;
      }

      v41 = *(v113 + 8);
      v42 = v62;
      v43 = &v144;
      goto LABEL_44;
    case 16:
      v143 = 16;
      sub_E168C();
      v49 = v129;
      v50 = v83;
      sub_1B5304();
      if (v50)
      {
        goto LABEL_7;
      }

      v41 = *(v115 + 8);
      v42 = v49;
      v43 = &v145;
LABEL_44:
      v41(v42, *(v43 - 32));
      break;
    case 17:
      v143 = 17;
      sub_E1638();
      v70 = v130;
      v71 = v83;
      sub_1B5304();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v117 + 8))(v70, v34);
      break;
    default:
      goto LABEL_6;
  }

  (*(v136 + 8))(v27, v24);
  swift_unknownObjectRelease();
  v47 = v137;
  *v33 = v38;
  return sub_2BF8(v47);
}

__n128 BookHistory.markedFinishedInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 BookHistory.reviewInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 88);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 BookHistory.addedToWantToRead.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  result = *(v1 + 208);
  v4 = *(v1 + 224);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 BookHistory.sampled.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  result = *(v1 + 264);
  v4 = *(v1 + 280);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t BookHistory.init(storeID:readFractionHighWaterMark:sampleReadFractionHighWaterMark:markedFinishedInfo:reviewInfo:secondsSinceMoreLikeThis:secondsSinceLessLikeThis:secondsSinceExplicitDecline:secondsSinceLastRead:secondsSincePurchased:secondsSinceFirstDownloadedViaFamilySharing:addedToWantToRead:secondsSinceRemovedFromWantToRead:sampled:secondsSinceProductPageViewed:secondsSinceFirstRecommended:daysRecommendedCount:consecutiveDaysNotRecommendedCount:daysRecommendationPassedOverCount:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, double a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, double a13, char a14, double a15, char a16, double a17, char a18, double a19, char a20, double *a21, double a22, char a23, double *a24, double a25, char a26, double a27, char a28, double a29, char a30, double a31, char a32, double a33, char a34)
{
  v34 = a8;
  v36 = *a6;
  v37 = *(a6 + 1);
  v38 = *(a6 + 3);
  v39 = *(a6 + 40);
  v40 = *a7;
  v41 = *a21;
  v42 = *(a21 + 1);
  v43 = *(a21 + 32);
  v44 = *a24;
  v45 = *(a24 + 1);
  v46 = *(a24 + 32);
  if ((a3 & 1) == 0)
  {
    v47 = 0;
    if (a2 < 0.0 || a2 > 1.0)
    {
      v34 = a2;
      goto LABEL_54;
    }
  }

  if ((a5 & 1) == 0)
  {
    v47 = 1;
    if (a4 < 0.0 || a4 > 1.0)
    {
      v34 = a4;
      goto LABEL_54;
    }
  }

  if (v39 != 255 && *&v37 < 0.0)
  {
    v34 = *(a6 + 1);
    v47 = 2;
LABEL_54:
    sub_E1C20();
    swift_allocError();
    *v49 = a1;
    *(v49 + 8) = v34;
    *(v49 + 16) = v47;
    return swift_willThrow();
  }

  v51 = *(a7 + 16);
  if ((a10 & 1) == 0 && a8 < 0.0)
  {
    v47 = 4;
    goto LABEL_54;
  }

  if ((a12 & 1) == 0 && a11 < 0.0)
  {
    v47 = 5;
    v34 = a11;
    goto LABEL_54;
  }

  if ((a14 & 1) == 0 && a13 < 0.0)
  {
    v47 = 6;
    v34 = a13;
    goto LABEL_54;
  }

  if ((a16 & 1) == 0 && a15 < 0.0)
  {
    v47 = 7;
    v34 = a15;
    goto LABEL_54;
  }

  if ((a18 & 1) == 0 && a17 < 0.0)
  {
    v47 = 8;
    v34 = a17;
    goto LABEL_54;
  }

  if ((a20 & 1) == 0 && a19 < 0.0)
  {
    v47 = 9;
    v34 = a19;
    goto LABEL_54;
  }

  if (v43 != 255 && *&v41 < 0.0)
  {
    v34 = *a21;
    v47 = 10;
    goto LABEL_54;
  }

  if ((a23 & 1) == 0 && a22 < 0.0)
  {
    v47 = 11;
    v34 = a22;
    goto LABEL_54;
  }

  if (v46 != 255 && *&v44 < 0.0)
  {
    v34 = *a24;
    v47 = 12;
    goto LABEL_54;
  }

  result = *&a25;
  if ((a26 & 1) == 0 && a25 < 0.0)
  {
    v47 = 13;
    v34 = a25;
    goto LABEL_54;
  }

  if ((a28 & 1) == 0 && a27 < 0.0)
  {
    v47 = 13;
    v34 = a27;
    goto LABEL_54;
  }

  if ((a30 & 1) == 0 && (*&a29 & 0x8000000000000000) != 0)
  {
    v47 = 15;
    v34 = a29;
    goto LABEL_54;
  }

  if ((a32 & 1) == 0 && (*&a31 & 0x8000000000000000) != 0)
  {
    v47 = 16;
    v34 = a31;
    goto LABEL_54;
  }

  if ((a34 & 1) == 0 && (*&a33 & 0x8000000000000000) != 0)
  {
    v47 = 17;
    v34 = a33;
    goto LABEL_54;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = v36;
  *(a9 + 80) = v39;
  *(a9 + 104) = v51;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10 & 1;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12 & 1;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14 & 1;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16 & 1;
  *(a9 + 176) = a17;
  *(a9 + 184) = a18 & 1;
  *(a9 + 192) = a19;
  *(a9 + 200) = a20 & 1;
  *(a9 + 240) = v43;
  *(a9 + 248) = a22;
  *(a9 + 256) = a23 & 1;
  *(a9 + 296) = v46;
  *(a9 + 304) = a25;
  *(a9 + 312) = a26 & 1;
  *(a9 + 320) = a27;
  *(a9 + 328) = a28 & 1;
  *(a9 + 336) = a29;
  *(a9 + 344) = a30 & 1;
  *(a9 + 352) = a31;
  *(a9 + 360) = a32 & 1;
  *(a9 + 368) = a33;
  *(a9 + 376) = a34 & 1;
  *(a9 + 48) = v37;
  *(a9 + 64) = v38;
  *(a9 + 88) = v40;
  *(a9 + 208) = v41;
  *(a9 + 224) = v42;
  v50 = (a9 + 264);
  *v50 = v44;
  v50[1] = v45;
  return result;
}

uint64_t BookHistory.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v34 = *(v0 + 40);
  v5 = *(v0 + 88);
  v35 = *(v0 + 80);
  v36 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 128);
  v37 = *(v0 + 120);
  v38 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = *(v0 + 184);
  v41 = *(v0 + 200);
  v42 = *(v0 + 240);
  v27 = *(v0 + 192);
  v28 = *(v0 + 248);
  v10 = *(v0 + 296);
  v43 = *(v0 + 256);
  v44 = *(v0 + 312);
  v29 = *(v0 + 304);
  v30 = *(v0 + 320);
  v45 = *(v0 + 328);
  v46 = *(v0 + 344);
  v31 = *(v0 + 336);
  v32 = *(v0 + 352);
  v33 = *(v0 + 368);
  v47 = *(v0 + 360);
  v48 = *(v0 + 376);
  sub_1B5084(22);

  v49._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v49);

  if ((v2 & 1) == 0)
  {
    sub_1B5084(29);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BCA80;
    *(v11 + 56) = &type metadata for Double;
    *(v11 + 64) = &protocol witness table for Double;
    *(v11 + 32) = v1;
    v50._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v50);

    v51._countAndFlagsBits = 0xD00000000000001BLL;
    v51._object = 0x80000000001D72D0;
    sub_1B48D4(v51);
  }

  if ((v4 & 1) == 0)
  {
    sub_1B5084(35);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BCA80;
    *(v12 + 56) = &type metadata for Double;
    *(v12 + 64) = &protocol witness table for Double;
    *(v12 + 32) = v3;
    v52._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v52);

    v53._countAndFlagsBits = 0xD000000000000021;
    v53._object = 0x80000000001D72A0;
    sub_1B48D4(v53);
  }

  if (v35 != 255)
  {
    v54._countAndFlagsBits = 0xD000000000000010;
    v54._object = 0x80000000001D7260;
    sub_1B48D4(v54);
    if (v34)
    {
      if (v34 == 1)
      {
        v13._countAndFlagsBits = 0x6974616D6F747561;
        v13._object = 0xED0000796C6C6163;
      }

      else
      {
        v13._countAndFlagsBits = 0x6E776F6E6B6E75;
        v13._object = 0xE700000000000000;
      }
    }

    else
    {
      v13._countAndFlagsBits = 0x796C6C61756E616DLL;
      v13._object = 0xE800000000000000;
    }

    sub_1B48D4(v13);
    sub_1B5084(31);

    v55._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v55);

    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v56._object = 0x80000000001D7280;
    sub_1B48D4(v56);
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B5084(17);
    v69._countAndFlagsBits = 0x4977656976657220;
    v69._object = 0xEC0000003D6F666ELL;
    sub_1B48D4(v69);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BCA80;
    *(v19 + 56) = &type metadata for Double;
    *(v19 + 64) = &protocol witness table for Double;
    *(v19 + 32) = v5;
    v70._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v70);

    v71._countAndFlagsBits = 44;
    v71._object = 0xE100000000000000;
    sub_1B48D4(v71);
    sub_1B4C94();
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_1B48D4(v72);

    if (v37)
    {
LABEL_14:
      if (v38)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  sub_1B5084(28);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BCA80;
  *(v20 + 56) = &type metadata for Double;
  *(v20 + 64) = &protocol witness table for Double;
  *(v20 + 32) = v6;
  v73._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v73);

  v74._countAndFlagsBits = 0xD00000000000001ALL;
  v74._object = 0x80000000001D7240;
  sub_1B48D4(v74);

  if (v38)
  {
LABEL_15:
    if (v39)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_1B5084(28);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BCA80;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 64) = &protocol witness table for Double;
  *(v21 + 32) = v7;
  v75._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v75);

  v76._countAndFlagsBits = 0xD00000000000001ALL;
  v76._object = 0x80000000001D7220;
  sub_1B48D4(v76);

  if (v39)
  {
LABEL_16:
    if (v40)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_1B5084(31);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BCA80;
  *(v22 + 56) = &type metadata for Double;
  *(v22 + 64) = &protocol witness table for Double;
  *(v22 + 32) = v8;
  v77._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v77);

  v78._countAndFlagsBits = 0xD00000000000001DLL;
  v78._object = 0x80000000001D7200;
  sub_1B48D4(v78);

  if (v40)
  {
LABEL_17:
    if (v41)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1B5084(25);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BCA80;
  *(v23 + 56) = &type metadata for Double;
  *(v23 + 64) = &protocol witness table for Double;
  *(v23 + 32) = v9;
  v79._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v79);

  v80._countAndFlagsBits = 0xD000000000000017;
  v80._object = 0x80000000001D71E0;
  sub_1B48D4(v80);

  if (v41)
  {
LABEL_18:
    if (v42 == 255)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_38:
  sub_1B5084(47);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BCA80;
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v27;
  v81._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v81);

  v82._countAndFlagsBits = 0xD00000000000002DLL;
  v82._object = 0x80000000001D71B0;
  sub_1B48D4(v82);

  if (v42 != 255)
  {
LABEL_19:
    sub_1B5084(33);

    v57._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v57);

    v58._countAndFlagsBits = 0xD00000000000001FLL;
    v58._object = 0x80000000001D7080;
    sub_1B48D4(v58);
  }

LABEL_20:
  if ((v43 & 1) == 0)
  {
    sub_1B5084(37);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BCA80;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v28;
    v59._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v59);

    v60._countAndFlagsBits = 0xD000000000000023;
    v60._object = 0x80000000001D7180;
    sub_1B48D4(v60);
  }

  if (v10 != 255)
  {
    sub_1B5084(23);

    v61._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v61);

    v62._countAndFlagsBits = 0xD000000000000015;
    v62._object = 0x80000000001D70A0;
    sub_1B48D4(v62);
  }

  if ((v44 & 1) == 0)
  {
    sub_1B5084(33);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BCA80;
    *(v15 + 56) = &type metadata for Double;
    *(v15 + 64) = &protocol witness table for Double;
    *(v15 + 32) = v29;
    v63._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v63);

    v64._countAndFlagsBits = 0xD00000000000001FLL;
    v64._object = 0x80000000001D7160;
    sub_1B48D4(v64);
  }

  if ((v45 & 1) == 0)
  {
    sub_1B5084(32);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BCA80;
    *(v16 + 56) = &type metadata for Double;
    *(v16 + 64) = &protocol witness table for Double;
    *(v16 + 32) = v30;
    v65._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v65);

    v66._countAndFlagsBits = 0xD00000000000001ELL;
    v66._object = 0x80000000001D7140;
    sub_1B48D4(v66);
  }

  if (v46)
  {
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_41:
    sub_1B5084(38);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BCA80;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v32;
    v85._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v85);

    v86._countAndFlagsBits = 0xD000000000000024;
    v86._object = 0x80000000001D70F0;
    sub_1B48D4(v86);

    if (v48)
    {
      return 0xD000000000000014;
    }

    goto LABEL_31;
  }

  sub_1B5084(24);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BCA80;
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v31;
  v83._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v83);

  v84._countAndFlagsBits = 0xD000000000000016;
  v84._object = 0x80000000001D7120;
  sub_1B48D4(v84);

  if ((v47 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  if ((v48 & 1) == 0)
  {
LABEL_31:
    sub_1B5084(37);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BCA80;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v33;
    v67._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v67);

    v68._countAndFlagsBits = 0xD000000000000023;
    v68._object = 0x80000000001D70C0;
    sub_1B48D4(v68);
  }

  return 0xD000000000000014;
}

unint64_t sub_D30D0(char a1)
{
  result = 0x444965726F7473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      v3 = 11;
      goto LABEL_9;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E49776569766572;
      break;
    case 5:
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD00000000000002BLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
    case 18:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0x64656C706D6173;
      break;
    case 14:
      v3 = 9;
LABEL_9:
      result = v3 | 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D3354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_E4AA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_D3388(uint64_t a1)
{
  v2 = sub_E1C74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D33C4(uint64_t a1)
{
  v2 = sub_E1C74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22B7C8, &qword_1C3E30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5;
  v7 = *v1;
  v53 = v1[1];
  v54 = v7;
  v60 = *(v1 + 16);
  v52 = v1[3];
  v51 = *(v1 + 32);
  v8 = *(v1 + 5);
  v46 = *(v1 + 7);
  v47 = v8;
  v50 = v1[9];
  v49 = *(v1 + 80);
  v9 = v1[12];
  *&v44 = v1[11];
  *(&v44 + 1) = v9;
  v45 = *(v1 + 104);
  v42 = v1[14];
  v43 = *(v1 + 120);
  v40 = v1[16];
  v41 = *(v1 + 136);
  v38 = v1[18];
  v39 = *(v1 + 152);
  v36 = v1[20];
  v37 = *(v1 + 168);
  v34 = v1[22];
  v35 = *(v1 + 184);
  v32 = v1[24];
  v33 = *(v1 + 200);
  v10 = *(v1 + 13);
  v30 = *(v1 + 14);
  v31 = v10;
  v29 = *(v1 + 240);
  v27 = v1[31];
  v28 = *(v1 + 256);
  v25 = *(v1 + 35);
  v26 = *(v1 + 33);
  v24 = *(v1 + 296);
  v22 = v1[38];
  v20 = v1[40];
  v18[2] = v1[42];
  v48 = v1[44];
  v18[1] = v1[46];
  v23 = *(v1 + 312);
  v21 = *(v1 + 328);
  v19 = *(v1 + 344);
  v11 = *(v1 + 360);
  v12 = *(v1 + 376);
  sub_2698(a1, a1[3]);
  sub_E1C74();
  sub_1B5884();
  LOBYTE(v56) = 0;
  v13 = v55;
  v14 = v6;
  sub_1B5574();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v49;
  v17 = v50;
  LODWORD(v55) = v11;
  LODWORD(v54) = v12;
  LOBYTE(v56) = 1;
  sub_1B5484();
  LOBYTE(v56) = 2;
  sub_1B5484();
  v57 = v46;
  v56 = v47;
  v58 = v17;
  v59 = v16;
  v61 = 3;
  sub_E1CC8();
  sub_1B54B4();
  v56 = v44;
  LOBYTE(v57) = v45;
  v61 = 4;
  sub_E1D1C();
  sub_1B54B4();
  LOBYTE(v56) = 5;
  sub_1B5484();
  LOBYTE(v56) = 6;
  sub_1B5484();
  LOBYTE(v56) = 7;
  sub_1B5484();
  LOBYTE(v56) = 8;
  sub_1B5484();
  LOBYTE(v56) = 9;
  sub_1B5484();
  LOBYTE(v56) = 10;
  sub_1B5484();
  v57 = v30;
  v56 = v31;
  LOBYTE(v58) = v29;
  v61 = 11;
  sub_E14E8();
  sub_1B54B4();
  LOBYTE(v56) = 12;
  sub_1B5484();
  v57 = v25;
  v56 = v26;
  LOBYTE(v58) = v24;
  v61 = 13;
  sub_1B54B4();
  LOBYTE(v56) = 14;
  sub_1B5484();
  LOBYTE(v56) = 15;
  sub_1B5484();
  LOBYTE(v56) = 16;
  sub_1B54A4();
  LOBYTE(v56) = 17;
  sub_1B54A4();
  LOBYTE(v56) = 18;
  sub_1B54A4();
  return (*(v4 + 8))(v14, v3);
}

void BookHistory.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v35 = *(v0 + 64);
  v36 = *(v0 + 72);
  v8 = *(v0 + 80);
  v41 = *(v0 + 88);
  v42 = *(v0 + 96);
  v57 = *(v0 + 104);
  v58 = *(v0 + 120);
  v43 = *(v0 + 112);
  v44 = *(v0 + 128);
  v59 = *(v0 + 136);
  v45 = *(v0 + 144);
  v60 = *(v0 + 152);
  v46 = *(v0 + 160);
  v61 = *(v0 + 168);
  v47 = *(v0 + 176);
  v62 = *(v0 + 184);
  v48 = *(v0 + 192);
  v63 = *(v0 + 200);
  v55 = *(v0 + 208);
  v9 = *(v0 + 216);
  v37 = *(v0 + 224);
  v38 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 272);
  v49 = *(v0 + 248);
  v64 = *(v0 + 256);
  v56 = *(v0 + 264);
  v39 = *(v0 + 280);
  v40 = *(v0 + 288);
  v12 = *(v0 + 296);
  v50 = *(v0 + 304);
  v65 = *(v0 + 312);
  v51 = *(v0 + 320);
  v66 = *(v0 + 328);
  v52 = *(v0 + 336);
  v67 = *(v0 + 344);
  v53 = *(v0 + 352);
  v68 = *(v0 + 360);
  v54 = *(v0 + 368);
  v69 = *(v0 + 376);
  sub_1B5834(*v0);
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    sub_1B5814(0);
    if (v8 != 255)
    {
      goto LABEL_7;
    }

LABEL_21:
    sub_1B5814(0);
    if (!v57)
    {
      goto LABEL_60;
    }

    goto LABEL_22;
  }

  sub_1B5814(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v1;
  }

  else
  {
    v16 = 0;
  }

  sub_1B5834(v16);
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  sub_1B5814(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  sub_1B5834(v13);
  if (v8 == 255)
  {
    goto LABEL_21;
  }

LABEL_7:
  sub_1B5814(1u);
  sub_1B5804(v5);
  if (v8)
  {
    sub_1B5804(1uLL);
    if (v6 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v6;
    }

    sub_1B5834(*&v14);
    if (v7 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v7;
    }

    sub_1B5834(*&v15);
    sub_1B5804(v35);
    sub_1B5804(v36);
    if (!v57)
    {
      goto LABEL_60;
    }

LABEL_22:
    sub_1B5814(0);
    if (v58)
    {
      goto LABEL_67;
    }

    goto LABEL_23;
  }

  sub_1B5804(0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = *&v6;
  }

  else
  {
    v25 = 0;
  }

  sub_1B5834(v25);
  if (v57)
  {
    goto LABEL_22;
  }

LABEL_60:
  sub_1B5814(1u);
  if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = v41;
  }

  else
  {
    v26 = 0;
  }

  sub_1B5834(v26);
  if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = v42;
  }

  else
  {
    v27 = 0;
  }

  sub_1B5834(v27);
  if (v58)
  {
LABEL_67:
    sub_1B5814(0);
    if (v59)
    {
      goto LABEL_68;
    }

    goto LABEL_27;
  }

LABEL_23:
  sub_1B5814(1u);
  if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v43;
  }

  else
  {
    v17 = 0;
  }

  sub_1B5834(v17);
  if (v59)
  {
LABEL_68:
    sub_1B5814(0);
    if (v60)
    {
      goto LABEL_69;
    }

    goto LABEL_31;
  }

LABEL_27:
  sub_1B5814(1u);
  if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = 0;
  }

  sub_1B5834(v18);
  if (v60)
  {
LABEL_69:
    sub_1B5814(0);
    if (v61)
    {
      goto LABEL_70;
    }

    goto LABEL_35;
  }

LABEL_31:
  sub_1B5814(1u);
  if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v45;
  }

  else
  {
    v19 = 0;
  }

  sub_1B5834(v19);
  if (v61)
  {
LABEL_70:
    sub_1B5814(0);
    if (v62)
    {
      goto LABEL_71;
    }

    goto LABEL_39;
  }

LABEL_35:
  sub_1B5814(1u);
  if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v46;
  }

  else
  {
    v20 = 0;
  }

  sub_1B5834(v20);
  if (v62)
  {
LABEL_71:
    sub_1B5814(0);
    if (v63)
    {
      goto LABEL_72;
    }

    goto LABEL_43;
  }

LABEL_39:
  sub_1B5814(1u);
  if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v47;
  }

  else
  {
    v21 = 0;
  }

  sub_1B5834(v21);
  if (v63)
  {
LABEL_72:
    sub_1B5814(0);
    if (v10 == 255)
    {
      goto LABEL_73;
    }

LABEL_47:
    sub_1B5814(1u);
    if (v10)
    {
      sub_1B5804(1uLL);
      if (v55 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v55;
      }

      sub_1B5834(*&v23);
      if (v9 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v9;
      }

      sub_1B5834(*&v24);
      sub_1B5804(v37);
      sub_1B5804(v38);
      if (!v64)
      {
        goto LABEL_88;
      }
    }

    else
    {
      sub_1B5804(0);
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = *&v55;
      }

      else
      {
        v30 = 0;
      }

      sub_1B5834(v30);
      if (!v64)
      {
        goto LABEL_88;
      }
    }

LABEL_74:
    sub_1B5814(0);
    if (v12 != 255)
    {
      goto LABEL_75;
    }

LABEL_92:
    sub_1B5814(0);
    if (!v65)
    {
      goto LABEL_105;
    }

    goto LABEL_93;
  }

LABEL_43:
  sub_1B5814(1u);
  if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = v48;
  }

  else
  {
    v22 = 0;
  }

  sub_1B5834(v22);
  if (v10 != 255)
  {
    goto LABEL_47;
  }

LABEL_73:
  sub_1B5814(0);
  if (v64)
  {
    goto LABEL_74;
  }

LABEL_88:
  sub_1B5814(1u);
  if ((v49 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = v49;
  }

  else
  {
    v31 = 0;
  }

  sub_1B5834(v31);
  if (v12 == 255)
  {
    goto LABEL_92;
  }

LABEL_75:
  sub_1B5814(1u);
  if (v12)
  {
    sub_1B5804(1uLL);
    if (v56 == 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v56;
    }

    sub_1B5834(*&v28);
    if (v11 == 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v11;
    }

    sub_1B5834(*&v29);
    sub_1B5804(v39);
    sub_1B5804(v40);
    if (!v65)
    {
      goto LABEL_105;
    }

LABEL_93:
    sub_1B5814(0);
    if (v66)
    {
      goto LABEL_109;
    }

    goto LABEL_94;
  }

  sub_1B5804(0);
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = *&v56;
  }

  else
  {
    v33 = 0;
  }

  sub_1B5834(v33);
  if (v65)
  {
    goto LABEL_93;
  }

LABEL_105:
  sub_1B5814(1u);
  if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v34 = v50;
  }

  else
  {
    v34 = 0;
  }

  sub_1B5834(v34);
  if (v66)
  {
LABEL_109:
    sub_1B5814(0);
    if (v67)
    {
      goto LABEL_110;
    }

LABEL_98:
    sub_1B5814(1u);
    sub_1B5804(v52);
    if (v68)
    {
      goto LABEL_111;
    }

    goto LABEL_99;
  }

LABEL_94:
  sub_1B5814(1u);
  if ((v51 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = v51;
  }

  else
  {
    v32 = 0;
  }

  sub_1B5834(v32);
  if (!v67)
  {
    goto LABEL_98;
  }

LABEL_110:
  sub_1B5814(0);
  if (v68)
  {
LABEL_111:
    sub_1B5814(0);
    if (v69)
    {
      goto LABEL_112;
    }

LABEL_100:
    sub_1B5814(1u);
    sub_1B5804(v54);
    return;
  }

LABEL_99:
  sub_1B5814(1u);
  sub_1B5804(v53);
  if (!v69)
  {
    goto LABEL_100;
  }

LABEL_112:
  sub_1B5814(0);
}

Swift::Int BookHistory.hashValue.getter()
{
  sub_1B57F4();
  BookHistory.hash(into:)();
  return sub_1B5844();
}

uint64_t BookHistory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22B7E8, &unk_1C3E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  sub_2698(a1, a1[3]);
  sub_E1C74();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v59) = 0;
    v9 = sub_1B5434();
    LOBYTE(v59) = 1;
    v58 = sub_1B5344();
    v77 = v11 & 1;
    LOBYTE(v59) = 2;
    v57 = sub_1B5344();
    v76 = v12 & 1;
    v78 = 3;
    sub_E1D70();
    sub_1B5374();
    v55 = v60;
    v56 = v59;
    v54 = v61;
    v13 = v62;
    v78 = 4;
    sub_E1DC4();
    sub_1B5374();
    v53 = v13;
    v14 = v59;
    v75 = v60;
    LOBYTE(v59) = 5;
    v52 = sub_1B5344();
    v74 = v15 & 1;
    LOBYTE(v59) = 6;
    v51 = sub_1B5344();
    v73 = v16 & 1;
    LOBYTE(v59) = 7;
    v17 = sub_1B5344();
    v49 = *(&v14 + 1);
    v50 = v17;
    v72 = v18 & 1;
    LOBYTE(v59) = 8;
    v48 = sub_1B5344();
    v71 = v19 & 1;
    LOBYTE(v59) = 9;
    v47 = sub_1B5344();
    v70 = v20 & 1;
    LOBYTE(v59) = 10;
    v46 = sub_1B5344();
    v69 = v21 & 1;
    v78 = 11;
    *&v45 = sub_E1590();
    sub_1B5374();
    v43 = v60;
    v44 = v59;
    v42 = v61;
    LOBYTE(v59) = 12;
    v41 = sub_1B5344();
    v68 = v22 & 1;
    v78 = 13;
    sub_1B5374();
    v40 = v60;
    v45 = v59;
    v39 = v61;
    LOBYTE(v59) = 14;
    v38 = sub_1B5344();
    v67 = v23 & 1;
    LOBYTE(v59) = 15;
    v37 = sub_1B5344();
    v66 = v24 & 1;
    LOBYTE(v59) = 16;
    v36 = sub_1B5364();
    v65 = v25 & 1;
    LOBYTE(v59) = 17;
    v35 = sub_1B5364();
    v64 = v26 & 1;
    LOBYTE(v59) = 18;
    v27 = sub_1B5364();
    HIDWORD(v34) = v28;
    v29 = v27;
    (*(v6 + 8))(v8, v5);
    v30 = v58;
    *a2 = v9;
    *(a2 + 8) = v30;
    *(a2 + 16) = v77;
    *(a2 + 24) = v57;
    *(a2 + 32) = v76;
    *(a2 + 72) = v54;
    *(a2 + 80) = v53;
    v31 = v49;
    *(a2 + 88) = v14;
    *(a2 + 96) = v31;
    *(a2 + 104) = v75;
    *(a2 + 112) = v52;
    *(a2 + 120) = v74;
    *(a2 + 128) = v51;
    *(a2 + 136) = v73;
    *(a2 + 144) = v50;
    *(a2 + 152) = v72;
    *(a2 + 160) = v48;
    *(a2 + 168) = v71;
    *(a2 + 176) = v47;
    *(a2 + 184) = v70;
    *(a2 + 192) = v46;
    *(a2 + 200) = v69;
    *(a2 + 240) = v42;
    *(a2 + 248) = v41;
    *(a2 + 256) = v68;
    *(a2 + 296) = v39;
    *(a2 + 304) = v38;
    *(a2 + 312) = v67;
    *(a2 + 320) = v37;
    *(a2 + 328) = v66;
    *(a2 + 336) = v36;
    *(a2 + 344) = v65;
    *(a2 + 352) = v35;
    *(a2 + 360) = v64;
    *(a2 + 368) = v29;
    v63 = BYTE4(v34) & 1;
    *(a2 + 376) = BYTE4(v34) & 1;
    *(a2 + 56) = v55;
    *(a2 + 40) = v56;
    v32 = v43;
    *(a2 + 208) = v44;
    *(a2 + 224) = v32;
    v33 = v40;
    *(a2 + 264) = v45;
    *(a2 + 280) = v33;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_D48A0(uint64_t a1)
{
  sub_1B57F4();
  BookHistory.hash(into:)();
  return sub_1B5844();
}

uint64_t sub_D48E8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C18 = result;
  return result;
}

uint64_t sub_D4954()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C20);
  sub_50E58(v0, qword_260C20);
  if (qword_2282D0 != -1)
  {
    swift_once();
  }

  v1 = qword_260C18;
  return sub_1B4654();
}

uint64_t sub_D49E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[253] = v4;
  v5[252] = a3;
  v5[251] = a2;
  v8 = type metadata accessor for StoreBookRating(0);
  v5[254] = v8;
  v5[255] = *(v8 - 8);
  v5[256] = swift_task_alloc();
  v5[257] = swift_task_alloc();
  sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v5[258] = swift_task_alloc();
  v9 = type metadata accessor for StoreBook.Origin(0);
  v5[259] = v9;
  v5[260] = *(v9 - 8);
  v5[261] = swift_task_alloc();
  v5[262] = swift_task_alloc();
  sub_2B0C(&qword_22BB28, &qword_1C59E8);
  v5[263] = swift_task_alloc();
  v5[264] = swift_task_alloc();
  v5[265] = swift_task_alloc();
  v5[266] = swift_task_alloc();
  v5[267] = swift_task_alloc();
  v5[268] = swift_task_alloc();
  v5[269] = swift_task_alloc();
  v5[270] = swift_task_alloc();
  v10 = sub_1B40C4();
  v5[271] = v10;
  v5[272] = *(v10 - 8);
  v5[273] = swift_task_alloc();
  v5[274] = swift_task_alloc();
  v5[275] = swift_task_alloc();
  v5[276] = swift_task_alloc();
  v5[277] = swift_task_alloc();
  sub_2B0C(&qword_229528, &qword_1BC5A0);
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v5[283] = swift_task_alloc();
  v5[284] = swift_task_alloc();
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v5[287] = swift_task_alloc();
  v5[288] = swift_task_alloc();
  v5[289] = swift_task_alloc();
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v5[292] = swift_task_alloc();
  v5[293] = swift_task_alloc();
  v11 = type metadata accessor for StoreBook(0);
  v5[294] = v11;
  v5[295] = *(v11 - 8);
  v5[296] = swift_task_alloc();
  v5[297] = swift_task_alloc();
  v5[298] = swift_task_alloc();
  v5[299] = *a1;
  memcpy(v5 + 98, (a4 + 88), 0x16BuLL);

  return _swift_task_switch(sub_D4DF4, 0, 0);
}

uint64_t sub_D4DF4()
{
  v1 = v0[253];
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v0[248] = 31;
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[300] = v4;
  *v4 = v0;
  v4[1] = sub_D4F2C;

  return v6(v0 + 248, v2, v3);
}

uint64_t sub_D4F2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2408) = a1;
  *(v3 + 2416) = v1;

  if (v1)
  {
    v4 = sub_D98A8;
  }

  else
  {
    v4 = sub_D5044;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D5044()
{
  v1 = *(v0 + 2024);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 2424) = v4;
  *v4 = v0;
  v4[1] = sub_D516C;

  return v6(v2, v3);
}

uint64_t sub_D516C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2432) = v1;

  if (v1)
  {
    v5 = sub_D9B1C;
  }

  else
  {
    *(v4 + 2440) = a1;
    v5 = sub_D5294;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D5294()
{
  v48 = v0;
  v1 = *(v0 + 2432);
  v2 = sub_7EC1C(*(v0 + 2440));

  v3 = sub_4025C(v2);
  *(v0 + 2448) = v3;

  if (*(v3 + 16))
  {
    if (qword_2282D8 != -1)
    {
LABEL_34:
      swift_once();
    }

    v4 = sub_1B4644();
    sub_50E58(v4, qword_260C20);

    v5 = sub_1B4624();
    v6 = sub_1B4DB4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v46 = v8;
      *v7 = 136315138;

      v47 = sub_CC598(v9);

      sub_CCC14(&v47);
      if (v1)
      {
      }

      v11 = sub_1B4AD4();
      v13 = v12;

      v1 = sub_60FF4(v11, v13, &v46);

      *(v7 + 4) = v1;
      _os_log_impl(&dword_0, v5, v6, "Excluding hidden purchases from book history %s", v7, 0xCu);
      sub_2BF8(v8);
    }
  }

  v14 = *(v0 + 2408);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v43 = *(v0 + 2360);
    v44 = *(v0 + 2384);
    v41 = v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v42 = *(*(v0 + 2352) + 20);
    v17 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v1 = *(v0 + 2384);
      v18 = *(v0 + 2376);
      v19 = *(v43 + 72);
      sub_E52A4(v41 + v19 * v16, v1, type metadata accessor for StoreBook);
      v20 = *(v44 + v42);
      sub_E52A4(v1, v18, type metadata accessor for StoreBook);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v17;
      v22 = sub_43124(v20);
      v24 = *(v17 + 2);
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_32;
      }

      v1 = v23;
      if (*(v17 + 3) >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v22;
          sub_185124();
          v22 = v33;
          v17 = v47;
        }
      }

      else
      {
        sub_17CDCC(v27, isUniquelyReferenced_nonNull_native);
        v17 = v47;
        v22 = sub_43124(v20);
        if ((v1 & 1) != (v28 & 1))
        {

          return sub_1B5784();
        }
      }

      v29 = *(v0 + 2384);
      v30 = *(v0 + 2376);
      if (v1)
      {
        sub_E5200(*(v0 + 2376), *(v17 + 7) + v22 * v19);
        sub_E530C(v29, type metadata accessor for StoreBook);
      }

      else
      {
        *&v17[8 * (v22 >> 6) + 64] |= 1 << v22;
        *(*(v17 + 6) + 8 * v22) = v20;
        sub_E5198(v30, *(v17 + 7) + v22 * v19, type metadata accessor for StoreBook);
        sub_E530C(v29, type metadata accessor for StoreBook);
        v31 = *(v17 + 2);
        v26 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v26)
        {
          goto LABEL_33;
        }

        *(v17 + 2) = v32;
      }

      if (v15 == ++v16)
      {
        goto LABEL_25;
      }
    }
  }

  v17 = _swiftEmptyDictionarySingleton;
LABEL_25:
  *(v0 + 2456) = v17;
  v34 = *(v0 + 2024);
  v35 = *(v0 + 2008);
  *(v0 + 2464) = *(v0 + 976);
  *(v0 + 2480) = sub_E0494(v35);
  v36 = *(v34 + 5);
  v37 = *(v34 + 6);
  sub_2698(v34 + 2, v36);
  v38 = sub_406DC(&off_20EA48);
  *(v0 + 2488) = v38;
  v39 = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  *(v0 + 2496) = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  v45 = (*(v37 + 40) + **(v37 + 40));
  v40 = swift_task_alloc();
  *(v0 + 2504) = v40;
  *v40 = v0;
  v40[1] = sub_D5828;

  return v45(v38, &v34[v39], v36, v37);
}

uint64_t sub_D5828(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2512) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_D5BC4, 0, 0);
  }
}

uint64_t sub_D5BC4()
{
  v1 = v0[312];
  v2 = v0[253];
  v3 = *(v2 + 5);
  v4 = *(v2 + 6);
  sub_2698(v2 + 2, v3);
  v5 = sub_406DC(&off_20EA70);
  v0[315] = v5;
  v8 = (*(v4 + 40) + **(v4 + 40));
  v6 = swift_task_alloc();
  v0[316] = v6;
  *v6 = v0;
  v6[1] = sub_D5D1C;

  return v8(v5, &v2[v1], v3, v4);
}

uint64_t sub_D5D1C(uint64_t a1)
{
  v3 = *v2;
  v3[317] = a1;
  v3[318] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_D60C4, 0, 0);
  }
}

uint64_t sub_D60C4()
{
  v28 = v0;
  v1 = v0[299];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v5 = *v3++;
        v0[249] = v5;
        v6 = sub_1B5594();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_3301C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_3301C((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        v11 = &v4[16 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v8;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v18 = v26[318];
    v27 = v4;

    sub_CCC14(&v27);
    if (v18)
    {
    }

    else
    {

      v26[322] = v27;
      v19 = v26[253];
      v20 = v19[5];
      v21 = v19[6];
      sub_2698(v19 + 2, v20);
      v25 = (*(v21 + 48) + **(v21 + 48));
      v22 = swift_task_alloc();
      v26[323] = v22;
      *v22 = v26;
      v22[1] = sub_D6B28;
      v23 = v26[293];

      return v25(v23, v20, v21);
    }
  }

  else
  {
    v12 = v0[253];
    v13 = v12[5];
    v14 = v12[6];
    sub_2698(v12 + 2, v13);
    v24 = (*(v14 + 8) + **(v14 + 8));
    v15 = swift_task_alloc();
    v0[319] = v15;
    *v15 = v0;
    v15[1] = sub_D6468;
    v16 = v0[310];

    return v24(v16, v13, v14);
  }
}

uint64_t sub_D6468(uint64_t a1)
{
  v3 = *v2;
  v3[320] = a1;
  v3[321] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_D6808, 0, 0);
  }
}

uint64_t sub_D6808()
{
  v30 = v0;
  v1 = v0[301];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[295];
    v27 = v0[294];
    v29 = _swiftEmptyArrayStorage;
    sub_3747C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[296];
      sub_E52A4(v5, v7, type metadata accessor for StoreBook);
      v0[250] = *(v7 + *(v27 + 20));
      v8 = sub_1B5594();
      v10 = v9;
      sub_E530C(v7, type metadata accessor for StoreBook);
      v29 = v3;
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_3747C((v11 > 1), v12 + 1, 1);
        v3 = v29;
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v14 = v0[320];
  v15 = v0[306];
  v16 = sub_4025C(v3);

  v17 = sub_1ABBA0(v16, v14);
  v18 = v0[306];
  if (*(v15 + 16) <= *(v17 + 16) >> 3)
  {
    v29 = v17;
    sub_DFCAC(v18);
    v19 = v29;
  }

  else
  {
    v19 = sub_3C0FC(v18, v17);
  }

  v20 = v0[321];
  v29 = sub_50E90(v19);
  sub_CCC14(&v29);
  if (v20)
  {
  }

  else
  {

    v0[322] = v29;
    v22 = v0[253];
    v23 = v22[5];
    v24 = v22[6];
    sub_2698(v22 + 2, v23);
    v28 = (*(v24 + 48) + **(v24 + 48));
    v25 = swift_task_alloc();
    v0[323] = v25;
    *v25 = v0;
    v25[1] = sub_D6B28;
    v26 = v0[293];

    return v28(v26, v23, v24);
  }
}

uint64_t sub_D6B28()
{
  *(*v1 + 2592) = v0;

  if (v0)
  {

    v2 = sub_D9D98;
  }

  else
  {
    v2 = sub_D6C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D6C84()
{
  v1 = v0[253];
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[325] = v4;
  *v4 = v0;
  v4[1] = sub_D6DB4;
  v5 = v0[292];

  return v7(v5, v2, v3);
}

uint64_t sub_D6DB4()
{
  *(*v1 + 2608) = v0;

  if (v0)
  {

    v2 = sub_DA00C;
  }

  else
  {
    v2 = sub_D6F10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D6F10()
{
  v66 = v0;
  v1 = v0[291];
  v2 = v0[290];
  v3 = v0[272];
  v4 = v0[271];
  sub_43050(v0[292], v1, &qword_229528, &qword_1BC5A0);
  sub_43050(v1, v2, &qword_229528, &qword_1BC5A0);
  v5 = *(v3 + 48);
  v0[327] = v5;
  v0[328] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v4);
  sub_42F48(v2, &qword_229528, &qword_1BC5A0);
  if (v1 == 1)
  {
    goto LABEL_2;
  }

  v6 = v0[291];
  v7 = v0[271];
  if (!v5(v6, 1, v7))
  {
    v8 = v0[293];
    v9 = v0[289];
    (*(v0[272] + 16))(v0[277], v6, v7);
    sub_43050(v8, v9, &qword_229528, &qword_1BC5A0);
    v10 = v5(v9, 1, v7);
    v11 = v0[289];
    if (v10 == 1)
    {
      v12 = v0[271];
      sub_1B3FE4();
      if (v5(v11, 1, v12) != 1)
      {
        sub_42F48(v0[289], &qword_229528, &qword_1BC5A0);
      }
    }

    else
    {
      (*(v0[272] + 32))(v0[276], v0[289], v0[271]);
    }

    v13 = v0[277];
    v14 = v0[276];
    v15 = v0[272];
    v16 = v0[271];
    v17 = sub_1B4094();
    v18 = *(v15 + 8);
    v18(v14, v16);
    v18(v13, v16);
    if (v17 == 1)
    {
LABEL_2:
      sub_E5064(v0[293], v0[291]);
    }
  }

  v19 = v0[288];
  v20 = v0[271];
  sub_43050(v0[291], v19, &qword_229528, &qword_1BC5A0);
  v21 = v5(v19, 1, v20);
  v22 = v0[288];
  if (v21 == 1)
  {
    v23 = v0[271];
    sub_1B40B4();
    if (v5(v22, 1, v23) != 1)
    {
      sub_42F48(v0[288], &qword_229528, &qword_1BC5A0);
    }
  }

  else
  {
    (*(v0[272] + 32))(v0[275], v0[288], v0[271]);
  }

  v24 = *(v0[322] + 16);
  v0[329] = v24;
  v25 = lround(ceil(v24 / 1000.0));
  v0[330] = v25;
  result = sub_1B40B4();
  if (v25 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v25)
  {
    v61 = v0[292];
    v62 = v0[293];
    v63 = v0[291];
    v53 = v0[275];
    v54 = v0[274];
    v55 = v0[272];
    v56 = v0[271];
    v57 = v0[252];

    memcpy(__dst, v0 + 98, 0x16BuLL);
    sub_71E28((v0 + 98), (v0 + 190));
    v58 = Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(v57, __dst, _swiftEmptyDictionarySingleton);

    memcpy(v0 + 144, __dst, 0x16BuLL);
    sub_71DC0((v0 + 144));
    v59 = *(v55 + 8);
    v59(v54, v56);
    v59(v53, v56);
    sub_42F48(v61, &qword_229528, &qword_1BC5A0);
    sub_42F48(v62, &qword_229528, &qword_1BC5A0);
    sub_42F48(v63, &qword_229528, &qword_1BC5A0);

    v60 = v0[1];

    return v60(v58);
  }

  v27 = v0[322];
  v0[333] = _swiftEmptyDictionarySingleton;
  v0[332] = 0;
  v0[331] = _swiftEmptyDictionarySingleton;
  v28 = v0[329];
  v29 = 1000;
  if (v28 < 1000)
  {
    v29 = v0[329];
  }

  if (v28 < 1)
  {
    goto LABEL_42;
  }

  if (*(v27 + 16) < v29)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v30 = sub_40790(v27 + 32, 0, (2 * v29) | 1);
  v31 = v30;
  v0[334] = v30;
  v32 = v30 + 56;
  v33 = -1;
  v34 = -1 << *(v30 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v30 + 56);
  v36 = (63 - v34) >> 6;

  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
  if (!v35)
  {
    goto LABEL_24;
  }

  do
  {
LABEL_22:
    while (1)
    {
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = (*(v31 + 48) + ((v37 << 10) | (16 * v39)));
      v41 = *v40;
      v42 = v40[1];

      result = sub_CC298(v41, v42);
      if ((v43 & 1) == 0)
      {
        break;
      }

      if (!v35)
      {
        goto LABEL_24;
      }
    }

    v45 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_33008(0, *(v38 + 2) + 1, 1, v38);
      v38 = result;
    }

    v47 = *(v38 + 2);
    v46 = *(v38 + 3);
    if (v47 >= v46 >> 1)
    {
      result = sub_33008((v46 > 1), v47 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v47 + 1;
    *&v38[8 * v47 + 32] = v45;
  }

  while (v35);
  while (1)
  {
LABEL_24:
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v44 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v44);
    ++v37;
    if (v35)
    {
      v37 = v44;
      goto LABEL_22;
    }
  }

  v48 = v0[253];

  v49 = sub_40854(v38);
  v0[335] = v49;

  v50 = v48[15];
  v51 = v48[16];
  sub_2698(v48 + 12, v50);
  v64 = (*(v51 + 8) + **(v51 + 8));
  v52 = swift_task_alloc();
  v0[336] = v52;
  *v52 = v0;
  v52[1] = sub_D7854;

  return v64(v49, v50, v51);
}

uint64_t sub_D7854(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2696) = a1;
  *(v3 + 2704) = v1;

  if (v1)
  {

    v4 = sub_DA298;
  }

  else
  {
    v4 = sub_D79E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D79E0()
{
  v1 = v0[335];
  v2 = v0[253];
  v3 = v2[20];
  v4 = v2[21];
  sub_2698(v2 + 17, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[339] = v5;
  *v5 = v0;
  v5[1] = sub_D7B1C;

  return v7(v1, v3, v4);
}

uint64_t sub_D7B1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2720) = a1;
  *(v3 + 2728) = v1;

  if (v1)
  {

    v4 = sub_DA590;
  }

  else
  {
    v4 = sub_D7CBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D7CBC()
{
  v1 = v0[253];
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v8 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[342] = v4;
  *v4 = v0;
  v4[1] = sub_D7DF0;
  v5 = v0[334];
  v6 = v0[310];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_D7DF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2744) = a1;
  *(v3 + 2752) = v1;

  if (v1)
  {

    v4 = sub_DA888;
  }

  else
  {
    v4 = sub_D7F88;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_D7F88()
{
  v234 = v0;
  v1 = 0;
  v2 = v0 + 1904;
  v3 = v0 + 1888;
  v4 = (v0 + 1912);
  v222 = *(v0 + 2744);
  v224 = *(v0 + 2720);
  v5 = *(v0 + 2672);
  v6 = -1;
  v7 = -1 << *(v5 + 32);
  v223 = *(v0 + 2696);
  v8 = *(v5 + 56);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v8;
  v10 = (63 - v7) >> 6;
  v230 = *(v0 + 2664);
  v225 = *(v0 + 2752);
  v229 = *(v0 + 2648);
  while (v9)
  {
    v11 = *(v0 + 2672);
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v11 + 48) + ((v1 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    v17 = sub_CC298(v16, v15);
    if (v18)
    {
    }

    else
    {
      v19 = v17;
      v212 = v2;
      v203 = v4;
      v204 = v3;
      if (*(*(v0 + 2456) + 16))
      {
        v20 = sub_43124(v17);
        if (v21)
        {
          sub_E52A4(*(*(v0 + 2456) + 56) + *(*(v0 + 2360) + 72) * v20, *(v0 + 2160), type metadata accessor for StoreBook);
        }
      }

      v218 = *(v0 + 2360);
      v213 = *(v0 + 2352);
      v205 = *(v0 + 2296);
      v209 = *(v0 + 2288);
      v22 = *(v0 + 2176);
      v23 = *(v0 + 2168);
      v194 = *(v0 + 2160);
      v197 = *(v0 + 2152);
      (*(v218 + 56))();
      v24 = *(v22 + 56);
      v24(v205, 1, 1, v23);
      v206 = v24;
      v24(v209, 1, 1, v23);
      sub_43050(v194, v197, &qword_22BB28, &qword_1C59E8);
      v25 = v213;
      v214 = *(v218 + 48);
      v26 = v214(v197, 1, v25);
      v27 = *(v0 + 2152);
      v28 = *(v0 + 2080);
      v29 = *(v0 + 2072);
      v30 = *(v0 + 2064);
      if (v26 == 1)
      {
        sub_42F48(v27, &qword_22BB28, &qword_1C59E8);
        (*(v28 + 56))(v30, 1, 1, v29);
LABEL_18:
        sub_42F48(*(v0 + 2064), &qword_22BB20, &qword_1C59E0);
        goto LABEL_19;
      }

      v198 = *(v0 + 2072);
      v31 = *(v0 + 2152);
      sub_43050(v27, v30, &qword_22BB20, &qword_1C59E0);
      sub_E530C(v31, type metadata accessor for StoreBook);
      if ((*(v28 + 48))(v30, 1, v198) == 1)
      {
        goto LABEL_18;
      }

      v37 = *(v0 + 2096);
      v38 = *(v0 + 2088);
      sub_E5198(*(v0 + 2064), v37, type metadata accessor for StoreBook.Origin);
      sub_E5198(v37, v38, type metadata accessor for StoreBook.Origin);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = *(v0 + 2288);
        v40 = *(v0 + 2088);
        sub_42F48(v39, &qword_229528, &qword_1BC5A0);
        sub_E50D4(v40, v39);
      }

      else
      {
        v131 = *(v0 + 2296);
        v132 = *(v0 + 2176);
        v133 = *(v0 + 2168);
        v202 = *(v0 + 2088);
        sub_42F48(v131, &qword_229528, &qword_1BC5A0);
        (*(v132 + 32))(v131, v202, v133);
        v206(v131, 0, 1, v133);
      }

LABEL_19:
      v32 = 0.0;
      if (!*(v223 + 16))
      {
        goto LABEL_27;
      }

      v33 = sub_43124(v19);
      if ((v34 & 1) == 0)
      {
        goto LABEL_27;
      }

      v35 = *(v0 + 2056);
      v36 = *(v0 + 2048);
      sub_E52A4(*(v223 + 56) + *(*(v0 + 2040) + 72) * v33, v36, type metadata accessor for StoreBookRating);
      sub_E5198(v36, v35, type metadata accessor for StoreBookRating);
      if (*(v35 + 16))
      {
        sub_E530C(*(v0 + 2056), type metadata accessor for StoreBookRating);
LABEL_27:
        v186 = 1;
        v48 = 0.0;
        goto LABEL_28;
      }

      v41 = *(v0 + 2616);
      v42 = *(v0 + 2280);
      v43 = *(v0 + 2168);
      v44 = *(v0 + 2056);
      v45 = *(v44 + 8);
      sub_43050(v44 + *(*(v0 + 2032) + 24), v42, &qword_229528, &qword_1BC5A0);
      v46 = v41(v42, 1, v43);
      v47 = *(v0 + 2280);
      if (v46 == 1)
      {
        sub_E530C(*(v0 + 2056), type metadata accessor for StoreBookRating);
        sub_42F48(v47, &qword_229528, &qword_1BC5A0);
        goto LABEL_27;
      }

      (*(*(v0 + 2176) + 32))(*(v0 + 2184), *(v0 + 2280), *(v0 + 2168));
      v32 = v45 + v45 + -1.0;
      sub_1B3FF4();
      v48 = v134;
      v135 = fabs(v32);
      if (v135 > 1.0)
      {
        goto LABEL_81;
      }

      if (v48 < 0.0)
      {
        v32 = v48;
LABEL_81:
        v136 = v135 <= 1.0;
        v221 = *(v0 + 2296);
        v217 = *(v0 + 2288);
        v137 = *(v0 + 2184);
        v138 = *(v0 + 2176);
        v139 = *(v0 + 2168);
        v228 = *(v0 + 2160);
        v211 = *(v0 + 2056);

        sub_E5144();
        swift_allocError();
        *v140 = v32;
        *(v140 + 8) = v136;
        swift_willThrow();
        (*(v138 + 8))(v137, v139);
        sub_E530C(v211, type metadata accessor for StoreBookRating);
        sub_42F48(v217, &qword_229528, &qword_1BC5A0);
        sub_42F48(v221, &qword_229528, &qword_1BC5A0);
        sub_42F48(v228, &qword_22BB28, &qword_1C59E8);
LABEL_68:
        if (qword_2282D8 != -1)
        {
          swift_once();
        }

        v117 = sub_1B4644();
        sub_50E58(v117, qword_260C20);
        swift_errorRetain();
        v118 = sub_1B4624();
        v119 = sub_1B4D94();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v120 = 138412290;
          swift_errorRetain();
          v122 = _swift_stdlib_bridgeErrorToNSError();
          *(v120 + 4) = v122;
          *v121 = v122;
          _os_log_impl(&dword_0, v118, v119, "Error creating book history: %@", v120, 0xCu);
          sub_42F48(v121, &qword_22B250, &qword_1C3850);
        }

        else
        {
        }

LABEL_75:
        v225 = 0;
        goto LABEL_76;
      }

      v141 = *(v0 + 2056);
      (*(*(v0 + 2176) + 8))(*(v0 + 2184), *(v0 + 2168));
      sub_E530C(v141, type metadata accessor for StoreBookRating);
      v186 = 0;
LABEL_28:
      v49 = *(v0 + 2352);
      v50 = *(v0 + 2160);
      v51 = *(v0 + 2144);
      v206(*(v0 + 2272), 1, 1, *(v0 + 2168));
      sub_43050(v50, v51, &qword_22BB28, &qword_1C59E8);
      if (v214(v51, 1, v49) == 1)
      {
        sub_42F48(*(v0 + 2144), &qword_22BB28, &qword_1C59E8);
      }

      else
      {
        v52 = *(v0 + 2144);
        v53 = *(v52 + *(*(v0 + 2352) + 32));
        sub_E530C(v52, type metadata accessor for StoreBook);
        if (v53 != -1.0)
        {
          v54 = *(v0 + 2272);
          v55 = *(v0 + 2264);
          v56 = *(v0 + 2168);
          sub_1B3FC4();
          sub_42F48(v54, &qword_229528, &qword_1BC5A0);
          v206(v55, 0, 1, v56);
          sub_E50D4(v55, v54);
        }
      }

      v206(*(v0 + 2256), 1, 1, *(v0 + 2168));
      if (v19 == 0x18067B1ECLL)
      {
        if (qword_228358 != -1)
        {
          swift_once();
        }

        v57 = sub_1B4644();
        sub_50E58(v57, qword_260C80);
        v58 = sub_1B4624();
        v59 = sub_1B4DB4();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_0, v58, v59, "6449246700 about to calculate finishedIntervalSinceReferenceDate", v60, 2u);
        }
      }

      v61 = *(v0 + 2352);
      v62 = *(v0 + 2136);
      sub_43050(*(v0 + 2160), v62, &qword_22BB28, &qword_1C59E8);
      if (v214(v62, 1, v61) == 1)
      {
        sub_42F48(*(v0 + 2136), &qword_22BB28, &qword_1C59E8);
      }

      else
      {
        v63 = *(v0 + 2136);
        v64 = *(v63 + *(*(v0 + 2352) + 36));
        sub_E530C(v63, type metadata accessor for StoreBook);
        if (v64 != -1.0)
        {
          v65 = *(v0 + 2264);
          v66 = *(v0 + 2256);
          v67 = *(v0 + 2168);
          sub_1B3FC4();
          sub_42F48(v66, &qword_229528, &qword_1BC5A0);
          v206(v65, 0, 1, v67);
          sub_E50D4(v65, v66);
        }
      }

      if (*(v224 + 16))
      {
        v68 = sub_43124(v19);
        if (v69)
        {
          v70 = *(*(v224 + 56) + 2 * v68);
        }

        else
        {
          v70 = 3;
        }

        v199 = v70;
        v71 = sub_43124(v19);
        if (v72)
        {
          v207 = *(*(v224 + 56) + 2 * v71 + 1);
        }

        else
        {
          v207 = 0;
        }
      }

      else
      {
        v207 = 0;
        v199 = 3;
      }

      if (*(v222 + 16))
      {
        sub_3A678(v16, v15);
        v74 = v73;

        v75 = _swiftEmptyArrayStorage;
        if (v74)
        {
        }
      }

      else
      {

        v75 = _swiftEmptyArrayStorage;
      }

      v210 = *&v75;
      v192 = *(v0 + 2288);
      v195 = *(v0 + 2352);
      v76 = *(v0 + 2272);
      v77 = *(v0 + 2240);
      v187 = *(v0 + 2232);
      v188 = *(v0 + 2256);
      v189 = *(v0 + 2224);
      v190 = *(v0 + 2160);
      v78 = *(v0 + 2128);
      sub_43050(*(v0 + 2296), *(v0 + 2248), &qword_229528, &qword_1BC5A0);
      sub_43050(v76, v77, &qword_229528, &qword_1BC5A0);
      sub_43050(v188, v187, &qword_229528, &qword_1BC5A0);
      sub_43050(v192, v189, &qword_229528, &qword_1BC5A0);
      sub_43050(v190, v78, &qword_22BB28, &qword_1C59E8);
      if (v214(v78, 1, v195) == 1)
      {
        sub_42F48(*(v0 + 2128), &qword_22BB28, &qword_1C59E8);
        v196 = 0.0;
        v193 = 1;
      }

      else
      {
        v79 = *(v0 + 2128);
        v80 = v79 + *(*(v0 + 2352) + 24);
        v196 = *v80;
        v193 = *(v80 + 8);
        sub_E530C(v79, type metadata accessor for StoreBook);
      }

      v81 = *(v0 + 2352);
      v82 = *(v0 + 2120);
      sub_43050(*(v0 + 2160), v82, &qword_22BB28, &qword_1C59E8);
      if (v214(v82, 1, v81) == 1)
      {
        sub_42F48(*(v0 + 2120), &qword_22BB28, &qword_1C59E8);
        v83 = 0uLL;
        v84 = 1;
      }

      else
      {
        v85 = *(v0 + 2120);
        v86 = v85 + *(*(v0 + 2352) + 28);
        v191 = *v86;
        v84 = *(v86 + 16);
        sub_E530C(v85, type metadata accessor for StoreBook);
        v83 = v191;
      }

      v87 = *(v0 + 2352);
      v88 = *(v0 + 2160);
      v89 = *(v0 + 2112);
      *(v0 + 1888) = v83;
      *v212 = v84;
      *(v0 + 1912) = v32;
      *(v0 + 1920) = v48;
      *(v212 + 24) = v186;
      *(v0 + 393) = v199;
      sub_43050(v88, v89, &qword_22BB28, &qword_1C59E8);
      if (v214(v89, 1, v87) == 1)
      {
        sub_42F48(*(v0 + 2112), &qword_22BB28, &qword_1C59E8);
        v90 = 0uLL;
        v91 = 1;
      }

      else
      {
        v92 = *(v0 + 2112);
        v93 = v92 + *(*(v0 + 2352) + 40);
        v200 = *v93;
        v91 = *(v93 + 16);
        sub_E530C(v92, type metadata accessor for StoreBook);
        v90 = v200;
      }

      v94 = *(v0 + 2352);
      v95 = *(v0 + 2160);
      v96 = *(v0 + 2104);
      *(v0 + 1936) = v90;
      *(v212 + 48) = v91;
      sub_43050(v95, v96, &qword_22BB28, &qword_1C59E8);
      if (v214(v96, 1, v94) == 1)
      {
        sub_42F48(*(v0 + 2104), &qword_22BB28, &qword_1C59E8);
        v97 = 0uLL;
        v98 = 1;
      }

      else
      {
        v99 = *(v0 + 2104);
        v100 = v99 + *(*(v0 + 2352) + 44);
        v219 = *v100;
        v98 = *(v100 + 16);
        sub_E530C(v99, type metadata accessor for StoreBook);
        v97 = v219;
      }

      v101 = *(v0 + 2536);
      v102 = *(v0 + 2512);
      v103 = *(v0 + 2472);
      v104 = *(v0 + 2464);
      v105 = *(v0 + 2344);
      v106 = *(v0 + 2248);
      v107 = *(v0 + 2240);
      v108 = *(v0 + 2232);
      v109 = *(v0 + 2224);
      v110 = *(v0 + 2200);
      v111 = *(v0 + 2192);
      v112 = *(v0 + 2008);
      *(v212 + 56) = v97;
      *(v212 + 72) = v98;
      sub_DAB80(v112, v19, v210, v111, v105, v110, v106, v107, (v0 + 400), v104, v103, v108, v109, v196, v193, v204, v203, (v0 + 393), v207, (v0 + 1936), (v0 + 1960), v102, v101);
      if (v225)
      {
        v226 = *(v0 + 2296);
        v215 = *(v0 + 2288);
        v208 = *(v0 + 2272);
        v201 = *(v0 + 2256);
        v113 = *(v0 + 2248);
        v114 = *(v0 + 2240);
        v115 = *(v0 + 2232);
        v116 = *(v0 + 2224);
        v220 = *(v0 + 2160);

        sub_42F48(v116, &qword_229528, &qword_1BC5A0);
        sub_42F48(v115, &qword_229528, &qword_1BC5A0);
        sub_42F48(v114, &qword_229528, &qword_1BC5A0);
        sub_42F48(v113, &qword_229528, &qword_1BC5A0);
        sub_42F48(v201, &qword_229528, &qword_1BC5A0);
        sub_42F48(v208, &qword_229528, &qword_1BC5A0);
        sub_42F48(v215, &qword_229528, &qword_1BC5A0);
        sub_42F48(v226, &qword_229528, &qword_1BC5A0);
        sub_42F48(v220, &qword_22BB28, &qword_1C59E8);
        goto LABEL_68;
      }

      v123 = *(v0 + 2248);
      v124 = *(v0 + 2240);
      v125 = *(v0 + 2232);
      v126 = *(v0 + 2224);

      sub_42F48(v126, &qword_229528, &qword_1BC5A0);
      sub_42F48(v125, &qword_229528, &qword_1BC5A0);
      sub_42F48(v124, &qword_229528, &qword_1BC5A0);
      sub_42F48(v123, &qword_229528, &qword_1BC5A0);
      memcpy((v0 + 16), (v0 + 400), 0x179uLL);
      memcpy(__dst, (v0 + 16), 0x179uLL);
      v127 = BookHistory.isEmpty.getter();
      v227 = *(v0 + 2296);
      v216 = *(v0 + 2288);
      v128 = *(v0 + 2272);
      v129 = *(v0 + 2256);
      v130 = *(v0 + 2160);
      if (v127)
      {
        sub_42F48(*(v0 + 2256), &qword_229528, &qword_1BC5A0);
        sub_42F48(v128, &qword_229528, &qword_1BC5A0);
        sub_42F48(v216, &qword_229528, &qword_1BC5A0);
        sub_42F48(v227, &qword_229528, &qword_1BC5A0);
        sub_42F48(v130, &qword_22BB28, &qword_1C59E8);
        goto LABEL_75;
      }

      v231 = *(v0 + 2160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v229;
      sub_53C58((v0 + 16), v19, isUniquelyReferenced_nonNull_native);
      sub_42F48(v129, &qword_229528, &qword_1BC5A0);
      sub_42F48(v128, &qword_229528, &qword_1BC5A0);
      sub_42F48(v216, &qword_229528, &qword_1BC5A0);
      sub_42F48(v227, &qword_229528, &qword_1BC5A0);
      sub_42F48(v231, &qword_22BB28, &qword_1C59E8);
      v230 = __dst[0];
      v225 = 0;
      v229 = __dst[0];
LABEL_76:
      v2 = v212;
      v4 = v203;
      v3 = v204;
    }
  }

  while (2)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_115;
    }

    if (v12 < v10)
    {
      v11 = *(v0 + 2672);
      v9 = *(v11 + 8 * v12 + 56);
      ++v1;
      if (v9)
      {
        v1 = v12;
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v143 = *(v0 + 2656);
  v144 = *(v0 + 2640);

  if (v143 + 1 != v144)
  {
    v153 = *(v0 + 2656);
    *(v0 + 2664) = v230;
    *(v0 + 2656) = v153 + 1;
    *(v0 + 2648) = v229;
    if (v153 == 0x20C49BA5E353F6)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      return;
    }

    v154 = 1000 * (v153 + 1);
    v155 = 1000 * v153 + 1999;
    if (v155 >= *(v0 + 2632) - 1)
    {
      v155 = *(v0 + 2632) - 1;
    }

    if (v155 < v154)
    {
      goto LABEL_117;
    }

    v156 = *(v0 + 2576);
    v157 = *(v156 + 16);
    if (v157 < v154 || v157 <= v155)
    {
      goto LABEL_118;
    }

    v159 = sub_40790(v156 + 32, v154, 2 * v155 + 3);
    v160 = v159;
    *(v0 + 2672) = v159;
    v161 = v159 + 56;
    v162 = -1;
    v163 = -1 << *(v159 + 32);
    if (-v163 < 64)
    {
      v162 = ~(-1 << -v163);
    }

    v164 = v162 & *(v159 + 56);
    v165 = (63 - v163) >> 6;

    v166 = 0;
    v167 = _swiftEmptyArrayStorage;
    if (!v164)
    {
      goto LABEL_101;
    }

    do
    {
LABEL_99:
      while (1)
      {
        v168 = __clz(__rbit64(v164));
        v164 &= v164 - 1;
        v169 = (*(v160 + 48) + ((v166 << 10) | (16 * v168)));
        v170 = *v169;
        v171 = v169[1];

        v172 = sub_CC298(v170, v171);
        if ((v173 & 1) == 0)
        {
          break;
        }

        if (!v164)
        {
          goto LABEL_101;
        }
      }

      v175 = v172;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v167 = sub_33008(0, *(v167 + 2) + 1, 1, v167);
      }

      v177 = *(v167 + 2);
      v176 = *(v167 + 3);
      if (v177 >= v176 >> 1)
      {
        v167 = sub_33008((v176 > 1), v177 + 1, 1, v167);
      }

      *(v167 + 2) = v177 + 1;
      *&v167[8 * v177 + 32] = v175;
    }

    while (v164);
LABEL_101:
    while (1)
    {
      v174 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        break;
      }

      if (v174 >= v165)
      {
        v178 = *(v0 + 2024);

        v179 = sub_40854(v167);
        *(v0 + 2680) = v179;

        v180 = v178[15];
        v181 = v178[16];
        sub_2698(v178 + 12, v180);
        v232 = (*(v181 + 8) + **(v181 + 8));
        v182 = swift_task_alloc();
        *(v0 + 2688) = v182;
        *v182 = v0;
        v182[1] = sub_D7854;

        v232(v179, v180, v181);
        return;
      }

      v164 = *(v161 + 8 * v174);
      ++v166;
      if (v164)
      {
        v166 = v174;
        goto LABEL_99;
      }
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v183 = *(v0 + 2336);
  v184 = *(v0 + 2344);
  v185 = *(v0 + 2328);
  v145 = *(v0 + 2200);
  v146 = *(v0 + 2192);
  v147 = *(v0 + 2176);
  v148 = *(v0 + 2168);
  v149 = *(v0 + 2016);

  memcpy(__dst, (v0 + 784), 0x16BuLL);
  sub_71E28(v0 + 784, v0 + 1520);
  v150 = Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(v149, __dst, v230);

  memcpy((v0 + 1152), __dst, 0x16BuLL);
  sub_71DC0(v0 + 1152);
  v151 = *(v147 + 8);
  v151(v146, v148);
  v151(v145, v148);
  sub_42F48(v183, &qword_229528, &qword_1BC5A0);
  sub_42F48(v184, &qword_229528, &qword_1BC5A0);
  sub_42F48(v185, &qword_229528, &qword_1BC5A0);

  v152 = *(v0 + 8);

  v152(v150);
}