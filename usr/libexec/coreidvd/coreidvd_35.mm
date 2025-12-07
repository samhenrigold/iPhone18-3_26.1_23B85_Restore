uint64_t sub_1003BBE18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003BBEA4(v3);
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

uint64_t sub_1003BBECC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MobileDocumentType();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1003BBFC4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_100007224(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1003BC0AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842898, &qword_1006DF988);
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

void *sub_1003BC1B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003BC304(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1003BC45C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1003BC5B4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003BC70C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v38 = *(v41 - 8);
  v8 = __chkstk_darwin(v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = type metadata accessor for IQCType();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      a1 = v39;
      sub_1000B1FC8(v32, v39, &qword_10083C1C8, &qword_1006DA768);
      sub_1000B1FC8(a1, a2, &qword_10083C1C8, &qword_1006DA768);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003BC9B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for ISO18013KnownDocTypes();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
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
    v37 = a4 + 64;
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

uint64_t sub_1003BCC6C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003BCF14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v38 = *(v41 - 8);
  v8 = __chkstk_darwin(v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v13 - 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v37 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = type metadata accessor for MobileDocumentType();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      a1 = v39;
      sub_1000B1FC8(v32, v39, &qword_10083C0D0, &unk_1006DF880);
      sub_1000B1FC8(a1, a2, &qword_10083C0D0, &unk_1006DF880);
      a3 = v37;
      if (v20 == v37)
      {

        goto LABEL_23;
      }

      a2 += *(v38 + 72);

      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003BD24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003BD294()
{
  result = qword_100842878;
  if (!qword_100842878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842878);
  }

  return result;
}

void *sub_1003BD308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v121 = a8;
  v127 = a7;
  v137 = a6;
  v126 = a5;
  v150 = a3;
  v151 = a2;
  v118[1] = a9;
  v147 = type metadata accessor for AnyCodable();
  v11 = *(v147 - 8);
  v12 = __chkstk_darwin(v147);
  v136 = v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = v118 - v14;
  v138 = type metadata accessor for ISO18013IssuerSignedItem();
  v15 = *(v138 - 8);
  v16 = __chkstk_darwin(v138);
  v135 = v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v118 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v118 - v22;
  __chkstk_darwin(v21);
  v143 = v118 - v24;
  v148 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v119 = *(v148 - 8);
  __chkstk_darwin(v148);
  v26 = v118 - v25;
  v132 = type metadata accessor for Logger();
  v27 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a1;
  if (!a1)
  {

    return sub_10003FA1C(_swiftEmptyArrayStorage);
  }

  sub_1003C40F4(a4);
  v30 = v29;
  v31 = sub_10003FA1C(_swiftEmptyArrayStorage);
  v32 = v30;
  v125 = *(v30 + 16);
  if (!v125)
  {
    v152 = v31;
LABEL_76:

    return v152;
  }

  v33 = 0;
  v34 = *(v120 + 16);
  v124 = v30 + 32;
  v154 = (v15 + 8);
  v146 = (v11 + 8);
  v141 = (v119 + 8);
  v142 = v119 + 16;
  v130 = (v27 + 8);
  v35 = v138;
  v36 = v148;
  v123 = v32;
  v122 = v34;
  v133 = v23;
  v134 = v20;
  while (1)
  {
    if (v33 >= *(v32 + 16))
    {
      goto LABEL_80;
    }

    v152 = v31;
    v128 = v33;
    v139 = *(v124 + 8 * v33);
    if (v34)
    {
      break;
    }

    v37 = v20;
    v38 = v139;
LABEL_5:
    v20 = v37;
    v33 = v128 + 1;
    v39 = v131;
    v40 = defaultLogger()();
    __chkstk_darwin(v40);
    v118[-2] = v38;
    Logger.sensitive(_:)();
    (*v130)(v39, v132);
    v32 = v123;
    v34 = v122;
    v31 = v152;
    if (v33 == v125)
    {
      goto LABEL_76;
    }
  }

  v41 = v120 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
  v42 = *(v119 + 16);
  v144 = *(v119 + 72);
  v145 = v42;
  v43 = v34;
  v37 = v20;
  v38 = v139;
  while (1)
  {
    v153 = v43;
    v145(v26, v41, v36);
    v45 = v143;
    CBOREncodedCBOR.value.getter();
    v46 = ISO18013IssuerSignedItem.elementIdentifier.getter();
    v48 = v47;
    v49 = *v154;
    (*v154)(v45, v35);
    if (v46 == v151 && v48 == v150)
    {

      v36 = v148;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v148;
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    CBOREncodedCBOR.value.getter();
    v51 = v140;
    ISO18013IssuerSignedItem.elementValue.getter();
    v49(v23, v35);
    AnyCodable.value.getter();
    (*v146)(v51, v147);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_22:
    v149 = v41;
    CBOREncodedCBOR.value.getter();
    v63 = ISO18013IssuerSignedItem.elementIdentifier.getter();
    v65 = v64;
    v49(v37, v35);
    v66 = v137(v63, v65);
    LOBYTE(v63) = v67;

    if (v63)
    {
      (*v141)(v26, v36);
LABEL_36:
      v38 = v139;
LABEL_37:
      v44 = v153;
      v41 = v149;
      goto LABEL_12;
    }

    v68 = v135;
    CBOREncodedCBOR.value.getter();
    v69 = v136;
    ISO18013IssuerSignedItem.elementValue.getter();
    v49(v68, v35);
    AnyCodable.value.getter();
    (*v146)(v69, v147);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v141)(v26, v36);
      v35 = v138;
      v37 = v134;
      v23 = v133;
      goto LABEL_36;
    }

    v70 = v155;
    v38 = v139;
    if (v66 == v139)
    {
      v71 = v131;
      v72 = defaultLogger()();
      __chkstk_darwin(v72);
      v118[-2] = v38;
      Logger.sensitive(_:)();
      (*v130)(v71, v132);
      v73 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = v73;
      v76 = sub_10003AFE4(v38);
      v77 = v73[2];
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      v37 = v134;
      if (__OFADD__(v77, v78))
      {
        goto LABEL_79;
      }

      v80 = v75;
      v129 = v70;
      if (v73[3] >= v79)
      {
        v23 = v133;
        v36 = v148;
        v41 = v149;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100171DC0();
        }
      }

      else
      {
        sub_10016A93C(v79, isUniquelyReferenced_nonNull_native);
        v81 = sub_10003AFE4(v38);
        v23 = v133;
        v36 = v148;
        v41 = v149;
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_86;
        }

        v76 = v81;
      }

      v152 = v156;
      if ((v80 & 1) == 0)
      {
        v156[(v76 >> 6) + 8] |= 1 << v76;
        *(v152[6] + 8 * v76) = v38;
        *(v152[7] + v76) = v129;
        (*v141)(v26, v36);
        v84 = v152;
        v110 = v152[2];
        v59 = __OFADD__(v110, 1);
        v86 = v110 + 1;
        if (v59)
        {
          goto LABEL_82;
        }

LABEL_34:
        v84[2] = v86;
        goto LABEL_11;
      }

      *(v156[7] + v76) = v129;
    }

    else
    {
      v87 = v134;
      if (v66 >= v139 || (v155 & 1) != 0)
      {
        v23 = v133;
        if (v139 >= v66 || (v155 & 1) == 0)
        {
          v36 = v148;
          (*v141)(v26, v148);
          v35 = v138;
          v37 = v87;
          goto LABEL_37;
        }

        v99 = v131;
        v100 = defaultLogger()();
        __chkstk_darwin(v100);
        v118[-2] = v66;
        v118[-1] = v38;
        Logger.sensitive(_:)();
        (*v130)(v99, v132);
        v101 = v152;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v101;
        v103 = sub_10003AFE4(v38);
        v105 = v101[2];
        v106 = (v104 & 1) == 0;
        v59 = __OFADD__(v105, v106);
        v107 = v105 + v106;
        if (v59)
        {
          goto LABEL_84;
        }

        v108 = v104;
        if (v101[3] >= v107)
        {
          v36 = v148;
          v41 = v149;
          if ((v102 & 1) == 0)
          {
            v116 = v103;
            sub_100171DC0();
            v103 = v116;
          }
        }

        else
        {
          sub_10016A93C(v107, v102);
          v103 = sub_10003AFE4(v38);
          v36 = v148;
          v41 = v149;
          if ((v108 & 1) != (v109 & 1))
          {
            goto LABEL_86;
          }
        }

        v37 = v87;
        v152 = v156;
        if ((v108 & 1) == 0)
        {
          v156[(v103 >> 6) + 8] |= 1 << v103;
          *(v152[6] + 8 * v103) = v38;
          *(v152[7] + v103) = 1;
          (*v141)(v26, v36);
          v84 = v152;
          v112 = v152[2];
          v59 = __OFADD__(v112, 1);
          v86 = v112 + 1;
          if (v59)
          {
            goto LABEL_85;
          }

          goto LABEL_34;
        }

        *(v156[7] + v103) = 1;
      }

      else
      {
        v88 = v131;
        v89 = defaultLogger()();
        __chkstk_darwin(v89);
        v118[-2] = v66;
        v118[-1] = v38;
        Logger.sensitive(_:)();
        (*v130)(v88, v132);
        v90 = v152;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v90;
        v92 = sub_10003AFE4(v38);
        v94 = v90[2];
        v95 = (v93 & 1) == 0;
        v59 = __OFADD__(v94, v95);
        v96 = v94 + v95;
        v23 = v133;
        if (v59)
        {
          goto LABEL_81;
        }

        v97 = v93;
        if (v90[3] >= v96)
        {
          v36 = v148;
          v41 = v149;
          if ((v91 & 1) == 0)
          {
            v115 = v92;
            sub_100171DC0();
            v92 = v115;
          }
        }

        else
        {
          sub_10016A93C(v96, v91);
          v92 = sub_10003AFE4(v38);
          v36 = v148;
          v41 = v149;
          if ((v97 & 1) != (v98 & 1))
          {
            goto LABEL_86;
          }
        }

        v37 = v87;
        v152 = v156;
        if ((v97 & 1) == 0)
        {
          v156[(v92 >> 6) + 8] |= 1 << v92;
          *(v152[6] + 8 * v92) = v38;
          *(v152[7] + v92) = 0;
          (*v141)(v26, v36);
          v84 = v152;
          v111 = v152[2];
          v59 = __OFADD__(v111, 1);
          v86 = v111 + 1;
          if (v59)
          {
            goto LABEL_83;
          }

          goto LABEL_34;
        }

        *(v156[7] + v92) = 0;
      }
    }

LABEL_10:
    (*v141)(v26, v36);
LABEL_11:
    v35 = v138;
    v44 = v153;
LABEL_12:
    v41 += v144;
    v43 = v44 - 1;
    if (!v43)
    {
      goto LABEL_5;
    }
  }

  v52 = v155;
  v53 = v152;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v156 = v53;
  v55 = sub_10003AFE4(v38);
  v57 = v53[2];
  v58 = (v56 & 1) == 0;
  v59 = __OFADD__(v57, v58);
  v60 = v57 + v58;
  if (!v59)
  {
    v61 = v56;
    if (v53[3] >= v60)
    {
      if ((v54 & 1) == 0)
      {
        v113 = v37;
        v114 = v55;
        sub_100171DC0();
        v55 = v114;
        v37 = v113;
      }
    }

    else
    {
      sub_10016A93C(v60, v54);
      v55 = sub_10003AFE4(v38);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_86;
      }
    }

    v152 = v156;
    v83 = v52 >= v38;
    if ((v61 & 1) == 0)
    {
      v156[(v55 >> 6) + 8] |= 1 << v55;
      *(v152[6] + 8 * v55) = v38;
      *(v152[7] + v55) = v83;
      (*v141)(v26, v36);
      v84 = v152;
      v85 = v152[2];
      v59 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v59)
      {
        goto LABEL_78;
      }

      goto LABEL_34;
    }

    *(v156[7] + v55) = v83;
    goto LABEL_10;
  }

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
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1003BE17C()
{
  v0 = sub_100007224(&qword_1008428A8, &qword_1006DF990);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v51 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AnyCodable();
  v5 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v49 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v34 - v8;
  v9 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_1008428B0, &qword_1006DF998);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for AnyCodableArray();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:), v9);
  sub_100374A20(v12, v15);
  (*(v10 + 8))(v12, v9);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &qword_1008428B0, &qword_1006DF998);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v21 = AnyCodableArray.value.getter();
    v22 = *(v21 + 16);
    if (v22)
    {
      v35 = v19;
      v36 = v17;
      v37 = v16;
      v38 = v21;
      v23 = *(v5 + 16);
      v24 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v45 = *(v5 + 72);
      v46 = v23;
      v47 = v5 + 16;
      v25 = v41;
      v43 = (v40 + 48);
      v44 = (v5 + 8);
      v42 = (v40 + 32);
      v20 = _swiftEmptyArrayStorage;
      v39 = v2;
      do
      {
        v26 = v48;
        v27 = v50;
        v28 = v46;
        v46(v48, v24, v50);
        v29 = v49;
        v28(v49, v26, v27);
        sub_1003BE730(v29, v2);
        (*v44)(v26, v27);
        if ((*v43)(v2, 1, v25) == 1)
        {
          sub_10000BE18(v2, &qword_1008428A8, &qword_1006DF990);
        }

        else
        {
          v30 = *v42;
          (*v42)(v51, v2, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1003C6550(0, *(v20 + 2) + 1, 1, v20);
          }

          v32 = *(v20 + 2);
          v31 = *(v20 + 3);
          if (v32 >= v31 >> 1)
          {
            v20 = sub_1003C6550((v31 > 1), v32 + 1, 1, v20);
          }

          *(v20 + 2) = v32 + 1;
          v25 = v41;
          v30(&v20[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32], v51, v41);
          v2 = v39;
        }

        v24 += v45;
        --v22;
      }

      while (v22);

      v17 = v36;
      v16 = v37;
      v19 = v35;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_1003BE730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_100007224(&qword_1008428A8, &qword_1006DF990);
  __chkstk_darwin(v3 - 8);
  v85 = &v78 - v4;
  v5 = sub_100007224(&qword_1008428B8, &qword_1006DF9A0);
  v6 = __chkstk_darwin(v5 - 8);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v78 - v8;
  v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass();
  v88 = *(v9 - 8);
  v89 = v9;
  __chkstk_darwin(v9);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v11 = *(v93 - 8);
  __chkstk_darwin(v93);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  __chkstk_darwin(v14 - 8);
  v96 = (&v78 - v15);
  v16 = type metadata accessor for Logger();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = __chkstk_darwin(v16);
  v82 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v91 = &v78 - v20;
  __chkstk_darwin(v19);
  v22 = &v78 - v21;
  v23 = sub_100007224(&qword_1008428C8, &qword_1006DF9B0);
  v24 = __chkstk_darwin(v23 - 8);
  v92 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v78 - v26;
  v28 = type metadata accessor for AnyCodableDictionary();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v86 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v90 = &v78 - v33;
  __chkstk_darwin(v32);
  v35 = &v78 - v34;
  v97 = a1;
  AnyCodable.dictValue.getter();
  v36 = *(v29 + 48);
  if (v36(v27, 1, v28) == 1)
  {
    v37 = v98;
    sub_10000BE18(v27, &qword_1008428C8, &qword_1006DF9B0);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentReaderResponse AAMVADrivingPrivilege expected an AnyCodableDictionary representation, returning nil.", v40, 2u);
    }

    v41 = type metadata accessor for AnyCodable();
    (*(*(v41 - 8) + 8))(v97, v41);
    (*(v94 + 8))(v22, v95);
    goto LABEL_11;
  }

  v79 = *(v29 + 32);
  v80 = v29 + 32;
  v79(v35, v27, v28);
  v42 = v93;
  (*(v11 + 104))(v13, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleClass(_:), v93);
  v43 = v96;
  v81 = v35;
  sub_1003BF250(v96);
  (*(v11 + 8))(v13, v42);
  v44 = type metadata accessor for AnyCodable();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_10000BE18(v96, &qword_1008428C0, &qword_1006DF9A8);
    v46 = v92;
    (*(v29 + 56))(v92, 1, 1, v28);
    v47 = v28;
LABEL_8:
    v49 = v44;
    sub_10000BE18(v46, &qword_1008428C8, &qword_1006DF9B0);
    v50 = v91;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v37 = v98;
    if (v53)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentReaderResponse AAMVADrivingPrivilege missing domestic_vehicle_class, returning nil.", v54, 2u);
    }

    (*(v45 + 8))(v97, v49);
    (*(v94 + 8))(v50, v95);
    (*(v29 + 8))(v81, v47);
    goto LABEL_11;
  }

  v46 = v92;
  v48 = v96;
  AnyCodable.dictValue.getter();
  v96 = *(v45 + 8);
  (v96)(v48, v44);
  v47 = v28;
  if (v36(v46, 1, v28) == 1)
  {
    goto LABEL_8;
  }

  v93 = v44;
  v57 = v46;
  v58 = v90;
  v79(v90, v57, v28);
  v59 = v86;
  (*(v29 + 16))(v86, v58, v28);
  v60 = v87;
  sub_1003BF3D4(v59, v87);
  v62 = v88;
  v61 = v89;
  if ((*(v88 + 48))(v60, 1, v89) == 1)
  {
    sub_10000BE18(v60, &qword_1008428B8, &qword_1006DF9A0);
    v63 = v82;
    defaultLogger()();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    v66 = os_log_type_enabled(v64, v65);
    v37 = v98;
    v67 = v81;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "MobileDocumentReaderResponse AAMVADrivingPrivilege missing domestic_vehicle_class, returning nil.", v68, 2u);
    }

    (v96)(v97, v93);
    (*(v94 + 8))(v63, v95);
    v69 = *(v29 + 8);
    v69(v58, v47);
    v69(v67, v47);
    goto LABEL_11;
  }

  v70 = v83;
  (*(v62 + 32))(v83, v60, v61);
  v71 = v84;
  (*(v62 + 16))(v84, v70, v61);
  (*(v62 + 56))(v71, 0, 1, v61);
  v72 = v81;
  sub_1003C0044();
  sub_1003C06CC();
  v73 = v85;
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.init(vehicleClass:vehicleRestrictions:vehicleEndorsements:)();
  (v96)(v97, v93);
  (*(v62 + 8))(v70, v61);
  v74 = *(v29 + 8);
  v74(v90, v47);
  v74(v72, v47);
  v75 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v73, 1, v75);
  v37 = v98;
  if (v77)
  {
    sub_10000BE18(v73, &qword_1008428A8, &qword_1006DF990);
LABEL_11:
    v55 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege();
    return (*(*(v55 - 8) + 56))(v37, 1, 1, v55);
  }

  (*(v76 + 32))(v98, v73, v75);
  return (*(v76 + 56))(v37, 0, 1, v75);
}

uint64_t sub_1003BF250@<X0>(uint64_t a1@<X8>)
{
  v2 = AnyCodableDictionary.value.getter();
  v3 = ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter();
  if (*(v2 + 16))
  {
    v5 = sub_10003ADCC(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = *(v2 + 56);
      v9 = type metadata accessor for AnyCodable();
      v16 = *(v9 - 8);
      (*(v16 + 16))(a1, v8 + *(v16 + 72) * v5, v9);

      v10 = *(v16 + 56);
      v11 = a1;
      v12 = 0;
      v13 = v9;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = type metadata accessor for AnyCodable();
  v10 = *(*(v14 - 8) + 56);
  v13 = v14;
  v11 = a1;
  v12 = 1;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_1003BF3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v4 = __chkstk_darwin(v3 - 8);
  v103 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v93 - v6;
  v7 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v8 = __chkstk_darwin(v7 - 8);
  v105 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v104 = &v93 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v93 - v13;
  __chkstk_darwin(v12);
  v106 = &v93 - v15;
  v16 = type metadata accessor for Logger();
  v112 = *(v16 - 8);
  v113 = v16;
  v17 = __chkstk_darwin(v16);
  v107 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v21 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v101 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v99 = &v93 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v93 - v28;
  __chkstk_darwin(v27);
  v31 = &v93 - v30;
  v32 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  v33 = __chkstk_darwin(v32 - 8);
  v100 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v98 = &v93 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v93 - v38;
  __chkstk_darwin(v37);
  v41 = &v93 - v40;
  v110 = *(v22 + 104);
  v110(v31, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleClassCode(_:), v21);
  v114 = a1;
  sub_1003BF250(v41);
  v43 = *(v22 + 8);
  v42 = v22 + 8;
  v111 = v21;
  v109 = v43;
  v43(v31, v21);
  v44 = type metadata accessor for AnyCodable();
  v45 = *(v44 - 8);
  v108 = *(v45 + 48);
  if (v108(v41, 1, v44) != 1)
  {
    v97 = v42;
    v94 = v14;
    v46 = v44;
    v47 = v45;
    v48 = AnyCodable.stringValue.getter();
    v50 = v49;
    v51 = *(v47 + 8);
    v52 = v41;
    v53 = v46;
    v96 = v47 + 8;
    v95 = v51;
    v51(v52, v46);
    if (!v50)
    {
      goto LABEL_7;
    }

    v118 = v48;
    v119 = v50;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v54 = v117;
    if (!v117)
    {
      goto LABEL_7;
    }

    v93 = v116;
    v55 = v111;
    v110(v29, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleClassDescription(_:), v111);
    v56 = v114;
    sub_1003BF250(v39);
    v109(v29, v55);
    if (v108(v39, 1, v53) == 1)
    {

      sub_10000BE18(v39, &qword_1008428C0, &qword_1006DF9A8);
LABEL_18:
      v60 = v107;
      defaultLogger()();
      v57 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      v76 = os_log_type_enabled(v57, v75);
      v61 = v115;
      if (!v76)
      {
        goto LABEL_11;
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v57, v75, "MobileDocumentReaderResponse AAMVADrivingPrivilege missing domestic_vehicle_class_description, returning nil.", v77, 2u);
      goto LABEL_9;
    }

    v66 = AnyCodable.stringValue.getter();
    v68 = v67;
    v95(v39, v53);
    if (!v68 || (v118 = v66, v119 = v68, Collection.nilIfEmpty.getter(), , !v117))
    {

      goto LABEL_18;
    }

    v112 = v117;
    v113 = v54;
    v107 = v116;
    v69 = v99;
    v70 = v111;
    v110(v99, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.issueDate(_:), v111);
    v71 = v98;
    sub_1003BF250(v98);
    v109(v69, v70);
    if (v108(v71, 1, v53) == 1)
    {
      sub_10000BE18(v71, &qword_1008428C0, &qword_1006DF9A8);
      v72 = type metadata accessor for Date();
      v73 = v102;
      (*(*(v72 - 8) + 56))(v102, 1, 1, v72);
      v74 = v106;
    }

    else
    {
      v78 = v102;
      AnyCodable.dateValue.getter();
      v73 = v78;
      v95(v71, v53);
      v79 = type metadata accessor for Date();
      v80 = *(v79 - 8);
      v81 = (*(v80 + 48))(v73, 1, v79);
      v74 = v106;
      if (v81 != 1)
      {
        Date.utcDayRepresentation.getter();
        (*(v80 + 8))(v73, v79);
LABEL_23:
        v83 = v103;
        v84 = v101;
        v85 = v111;
        v110(v101, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.expiryDate(_:), v111);
        v86 = v100;
        sub_1003BF250(v100);
        v109(v84, v85);
        if (v108(v86, 1, v53) == 1)
        {
          sub_10000BE18(v86, &qword_1008428C0, &qword_1006DF9A8);
          v87 = type metadata accessor for Date();
          (*(*(v87 - 8) + 56))(v83, 1, 1, v87);
        }

        else
        {
          AnyCodable.dateValue.getter();
          v95(v86, v53);
          v88 = type metadata accessor for Date();
          v89 = *(v88 - 8);
          if ((*(v89 + 48))(v83, 1, v88) != 1)
          {
            v91 = v94;
            Date.utcDayRepresentation.getter();
            (*(v89 + 8))(v83, v88);
            goto LABEL_28;
          }
        }

        sub_10000BE18(v83, &unk_100849400, &unk_1006BFBB0);
        v90 = type metadata accessor for DateComponents();
        v91 = v94;
        (*(*(v90 - 8) + 56))(v94, 1, 1, v90);
LABEL_28:
        sub_1003C1D1C(v74, v104);
        sub_1003C1D1C(v91, v105);
        v61 = v115;
        MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.init(code:description:issueDate:expirationDate:)();
        v92 = type metadata accessor for AnyCodableDictionary();
        (*(*(v92 - 8) + 8))(v56, v92);
        sub_10000BE18(v91, &qword_100842848, &qword_1006DF950);
        sub_10000BE18(v74, &qword_100842848, &qword_1006DF950);
        v63 = 0;
        goto LABEL_12;
      }
    }

    sub_10000BE18(v73, &unk_100849400, &unk_1006BFBB0);
    v82 = type metadata accessor for DateComponents();
    (*(*(v82 - 8) + 56))(v74, 1, 1, v82);
    goto LABEL_23;
  }

  sub_10000BE18(v41, &qword_1008428C0, &qword_1006DF9A8);
LABEL_7:
  defaultLogger()();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v57, v58))
  {
    v60 = v20;
    v56 = v114;
    v61 = v115;
    goto LABEL_11;
  }

  v59 = swift_slowAlloc();
  *v59 = 0;
  _os_log_impl(&_mh_execute_header, v57, v58, "MobileDocumentReaderResponse AAMVADrivingPrivilege missing domestic_vehicle_class_code, returning nil.", v59, 2u);
  v60 = v20;
  v56 = v114;
  v61 = v115;
LABEL_9:

LABEL_11:

  v62 = type metadata accessor for AnyCodableDictionary();
  (*(*(v62 - 8) + 8))(v56, v62);
  (*(v112 + 8))(v60, v113);
  v63 = 1;
LABEL_12:
  v64 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass();
  return (*(*(v64 - 8) + 56))(v61, v63, 1, v64);
}

char *sub_1003C0044()
{
  v0 = sub_100007224(&qword_1008428D8, &qword_1006DF9C0);
  __chkstk_darwin(v0 - 8);
  v47 = &v40 - v1;
  v2 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleRestriction();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v57 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyCodable();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v55 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v40 - v8;
  v9 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100007224(&qword_1008428B0, &qword_1006DF998);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for AnyCodableArray();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleRestrictions(_:), v9);
  sub_1003BF250(v15);
  v22 = v12;
  v23 = v4;
  (*(v10 + 8))(v22, v9);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_10000BE18(v15, &qword_1008428C0, &qword_1006DF9A8);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_10000BE18(v18, &qword_1008428B0, &qword_1006DF998);
    return _swiftEmptyArrayStorage;
  }

  AnyCodable.arrayValue.getter();
  v53 = *(v5 + 8);
  v54 = v5 + 8;
  v53(v15, v4);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  (*(v20 + 32))(v43, v18, v19);
  v25 = AnyCodableArray.value.getter();
  v26 = *(v25 + 16);
  if (v26)
  {
    v40 = v20;
    v41 = v19;
    v27 = *(v5 + 16);
    v51 = v5 + 16;
    v52 = v27;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v42 = v25;
    v29 = v25 + v28;
    v30 = *(v5 + 72);
    v31 = v46;
    v49 = (v45 + 48);
    v50 = v30;
    v48 = (v45 + 32);
    v24 = _swiftEmptyArrayStorage;
    v32 = v47;
    v44 = v4;
    v33 = v56;
    do
    {
      v34 = v52;
      v52(v33, v29, v23);
      v35 = v55;
      v34(v55, v33, v23);
      sub_1003C0D54(v35, v32);
      v53(v33, v23);
      if ((*v49)(v32, 1, v31) == 1)
      {
        sub_10000BE18(v32, &qword_1008428D8, &qword_1006DF9C0);
      }

      else
      {
        v36 = *v48;
        (*v48)(v57, v32, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1003C6578(0, *(v24 + 2) + 1, 1, v24);
        }

        v38 = *(v24 + 2);
        v37 = *(v24 + 3);
        if (v38 >= v37 >> 1)
        {
          v24 = sub_1003C6578((v37 > 1), v38 + 1, 1, v24);
        }

        *(v24 + 2) = v38 + 1;
        v31 = v46;
        v36(&v24[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38], v57, v46);
        v32 = v47;
        v23 = v44;
      }

      v29 += v50;
      --v26;
    }

    while (v26);

    v20 = v40;
    v19 = v41;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  (*(v20 + 8))(v43, v19);
  return v24;
}

char *sub_1003C06CC()
{
  v0 = sub_100007224(&qword_1008428D0, &qword_1006DF9B8);
  __chkstk_darwin(v0 - 8);
  v47 = &v40 - v1;
  v2 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v57 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyCodable();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v55 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v40 - v8;
  v9 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100007224(&qword_1008428B0, &qword_1006DF998);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for AnyCodableArray();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleEndorsements(_:), v9);
  sub_1003BF250(v15);
  v22 = v12;
  v23 = v4;
  (*(v10 + 8))(v22, v9);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_10000BE18(v15, &qword_1008428C0, &qword_1006DF9A8);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_10000BE18(v18, &qword_1008428B0, &qword_1006DF998);
    return _swiftEmptyArrayStorage;
  }

  AnyCodable.arrayValue.getter();
  v53 = *(v5 + 8);
  v54 = v5 + 8;
  v53(v15, v4);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  (*(v20 + 32))(v43, v18, v19);
  v25 = AnyCodableArray.value.getter();
  v26 = *(v25 + 16);
  if (v26)
  {
    v40 = v20;
    v41 = v19;
    v27 = *(v5 + 16);
    v51 = v5 + 16;
    v52 = v27;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v42 = v25;
    v29 = v25 + v28;
    v30 = *(v5 + 72);
    v31 = v46;
    v49 = (v45 + 48);
    v50 = v30;
    v48 = (v45 + 32);
    v24 = _swiftEmptyArrayStorage;
    v32 = v47;
    v44 = v4;
    v33 = v56;
    do
    {
      v34 = v52;
      v52(v33, v29, v23);
      v35 = v55;
      v34(v55, v33, v23);
      sub_1003C1538(v35, v32);
      v53(v33, v23);
      if ((*v49)(v32, 1, v31) == 1)
      {
        sub_10000BE18(v32, &qword_1008428D0, &qword_1006DF9B8);
      }

      else
      {
        v36 = *v48;
        (*v48)(v57, v32, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1003C65A0(0, *(v24 + 2) + 1, 1, v24);
        }

        v38 = *(v24 + 2);
        v37 = *(v24 + 3);
        if (v38 >= v37 >> 1)
        {
          v24 = sub_1003C65A0((v37 > 1), v38 + 1, 1, v24);
        }

        *(v24 + 2) = v38 + 1;
        v31 = v46;
        v36(&v24[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38], v57, v46);
        v32 = v47;
        v23 = v44;
      }

      v29 += v50;
      --v26;
    }

    while (v26);

    v20 = v40;
    v19 = v41;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  (*(v20 + 8))(v43, v19);
  return v24;
}

uint64_t sub_1003C0D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for Logger();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = __chkstk_darwin(v14);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = sub_100007224(&qword_1008428C8, &qword_1006DF9B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for AnyCodableDictionary();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  AnyCodable.dictValue.getter();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = v69;
    sub_10000BE18(v21, &qword_1008428C8, &qword_1006DF9B0);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "MobileDocumentReaderResponse AAMVADrivingPrivilege VehicleRestriction expected an AnyCodableDictionary representation, returning nil.", v29, 2u);
    }

    v30 = type metadata accessor for AnyCodable();
    (*(*(v30 - 8) + 8))(v68, v30);
    (*(v66 + 8))(v18, v67);
LABEL_19:
    v49 = 1;
    goto LABEL_20;
  }

  v31 = *(v23 + 32);
  v61 = v22;
  v31(v25, v21, v22);
  v58 = *(v4 + 104);
  v58(v8, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleRestrictionCode(_:), v3);
  v62 = v25;
  sub_1003BF250(v13);
  v57 = *(v4 + 8);
  v57(v8, v3);
  v32 = type metadata accessor for AnyCodable();
  v33 = *(v32 - 8);
  v56 = *(v33 + 48);
  v34 = v56(v13, 1, v32);
  v59 = v23;
  v60 = v33;
  if (v34 == 1)
  {
    v35 = v32;
    sub_10000BE18(v13, &qword_1008428C0, &qword_1006DF9A8);
    v36 = 0;
    v37 = v65;
  }

  else
  {
    v38 = AnyCodable.stringValue.getter();
    v40 = v39;
    v35 = v32;
    (*(v33 + 8))(v13, v32);
    v37 = v65;
    if (v40)
    {
      v72 = v38;
      v73 = v40;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v36 = v70;
    }

    else
    {
      v36 = 0;
    }
  }

  v41 = v64;
  v58(v64, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleRestrictionDescription(_:), v3);
  v42 = v62;
  sub_1003BF250(v37);
  v57(v41, v3);
  if (v56(v37, 1, v35) == 1)
  {

    sub_10000BE18(v37, &qword_1008428C0, &qword_1006DF9A8);
    v26 = v69;
    v44 = v59;
    v43 = v60;
LABEL_16:
    v50 = v63;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentReaderResponse AAMVADrivingPrivilege VehicleRestriction missing domestic_vehicle_restriction_description, returning nil.", v53, 2u);
    }

    (*(v43 + 8))(v68, v35);
    (*(v66 + 8))(v50, v67);
    (*(v44 + 8))(v42, v61);
    goto LABEL_19;
  }

  v65 = v36;
  v44 = v59;
  v45 = AnyCodable.stringValue.getter();
  v47 = v46;
  v43 = v60;
  v48 = *(v60 + 8);
  v48(v37, v35);
  v26 = v69;
  if (!v47 || (v72 = v45, v73 = v47, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , !v71))
  {

    v42 = v62;
    goto LABEL_16;
  }

  MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleRestriction.init(code:description:)();
  v48(v68, v35);
  (*(v44 + 8))(v62, v61);
  v49 = 0;
LABEL_20:
  v54 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleRestriction();
  return (*(*(v54 - 8) + 56))(v26, v49, 1, v54);
}

uint64_t sub_1003C1538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for Logger();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = __chkstk_darwin(v14);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = sub_100007224(&qword_1008428C8, &qword_1006DF9B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for AnyCodableDictionary();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  AnyCodable.dictValue.getter();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = v69;
    sub_10000BE18(v21, &qword_1008428C8, &qword_1006DF9B0);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "MobileDocumentReaderResponse AAMVADrivingPrivilege VehicleEndorsement expected an AnyCodableDictionary representation, returning nil.", v29, 2u);
    }

    v30 = type metadata accessor for AnyCodable();
    (*(*(v30 - 8) + 8))(v68, v30);
    (*(v66 + 8))(v18, v67);
LABEL_19:
    v49 = 1;
    goto LABEL_20;
  }

  v31 = *(v23 + 32);
  v61 = v22;
  v31(v25, v21, v22);
  v58 = *(v4 + 104);
  v58(v8, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleEndorsementCode(_:), v3);
  v62 = v25;
  sub_1003BF250(v13);
  v57 = *(v4 + 8);
  v57(v8, v3);
  v32 = type metadata accessor for AnyCodable();
  v33 = *(v32 - 8);
  v56 = *(v33 + 48);
  v34 = v56(v13, 1, v32);
  v59 = v23;
  v60 = v33;
  if (v34 == 1)
  {
    v35 = v32;
    sub_10000BE18(v13, &qword_1008428C0, &qword_1006DF9A8);
    v36 = 0;
    v37 = v65;
  }

  else
  {
    v38 = AnyCodable.stringValue.getter();
    v40 = v39;
    v35 = v32;
    (*(v33 + 8))(v13, v32);
    v37 = v65;
    if (v40)
    {
      v72 = v38;
      v73 = v40;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v36 = v70;
    }

    else
    {
      v36 = 0;
    }
  }

  v41 = v64;
  v58(v64, enum case for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.domesticVehicleEndorsementDescription(_:), v3);
  v42 = v62;
  sub_1003BF250(v37);
  v57(v41, v3);
  if (v56(v37, 1, v35) == 1)
  {

    sub_10000BE18(v37, &qword_1008428C0, &qword_1006DF9A8);
    v26 = v69;
    v44 = v59;
    v43 = v60;
LABEL_16:
    v50 = v63;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentReaderResponse AAMVADrivingPrivilege VehicleEndorsement missing domestic_vehicle_endorsement_description, returning nil.", v53, 2u);
    }

    (*(v43 + 8))(v68, v35);
    (*(v66 + 8))(v50, v67);
    (*(v44 + 8))(v42, v61);
    goto LABEL_19;
  }

  v65 = v36;
  v44 = v59;
  v45 = AnyCodable.stringValue.getter();
  v47 = v46;
  v43 = v60;
  v48 = *(v60 + 8);
  v48(v37, v35);
  v26 = v69;
  if (!v47 || (v72 = v45, v73 = v47, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , !v71))
  {

    v42 = v62;
    goto LABEL_16;
  }

  MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.init(code:description:)();
  v48(v68, v35);
  (*(v44 + 8))(v62, v61);
  v49 = 0;
LABEL_20:
  v54 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement();
  return (*(*(v54 - 8) + 56))(v26, v49, 1, v54);
}

uint64_t sub_1003C1D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100842848, &qword_1006DF950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1003C1D8C()
{
  v0 = sub_100007224(&qword_1008428E0, &qword_1006DF9C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v51 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AnyCodable();
  v5 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v49 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v34 - v8;
  v9 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_1008428B0, &qword_1006DF998);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for AnyCodableArray();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:), v9);
  sub_1003749F4(v12, v15);
  (*(v10 + 8))(v12, v9);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &qword_1008428B0, &qword_1006DF998);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v21 = AnyCodableArray.value.getter();
    v22 = *(v21 + 16);
    if (v22)
    {
      v35 = v19;
      v36 = v17;
      v37 = v16;
      v38 = v21;
      v23 = *(v5 + 16);
      v24 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v45 = *(v5 + 72);
      v46 = v23;
      v47 = v5 + 16;
      v25 = v41;
      v43 = (v40 + 48);
      v44 = (v5 + 8);
      v42 = (v40 + 32);
      v20 = _swiftEmptyArrayStorage;
      v39 = v2;
      do
      {
        v26 = v48;
        v27 = v50;
        v28 = v46;
        v46(v48, v24, v50);
        v29 = v49;
        v28(v49, v26, v27);
        sub_1003C2340(v29, v2);
        (*v44)(v26, v27);
        if ((*v43)(v2, 1, v25) == 1)
        {
          sub_10000BE18(v2, &qword_1008428E0, &qword_1006DF9C8);
        }

        else
        {
          v30 = *v42;
          (*v42)(v51, v2, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1003C6528(0, *(v20 + 2) + 1, 1, v20);
          }

          v32 = *(v20 + 2);
          v31 = *(v20 + 3);
          if (v32 >= v31 >> 1)
          {
            v20 = sub_1003C6528((v31 > 1), v32 + 1, 1, v20);
          }

          *(v20 + 2) = v32 + 1;
          v25 = v41;
          v30(&v20[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32], v51, v41);
          v2 = v39;
        }

        v24 += v45;
        --v22;
      }

      while (v22);

      v17 = v36;
      v16 = v37;
      v19 = v35;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_1003C2340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v4 = __chkstk_darwin(v3 - 8);
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v87 - v6;
  v7 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v8 = __chkstk_darwin(v7 - 8);
  v103 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v101 = &v87 - v11;
  v12 = __chkstk_darwin(v10);
  v102 = &v87 - v13;
  __chkstk_darwin(v12);
  v104 = &v87 - v14;
  v15 = type metadata accessor for ISO18013_5_1_DrivingPrivilegeIdentifier();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v96 = &v87 - v20;
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  v23 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  v24 = __chkstk_darwin(v23 - 8);
  v97 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v95 = &v87 - v27;
  __chkstk_darwin(v26);
  v29 = &v87 - v28;
  v30 = type metadata accessor for Logger();
  v106 = *(v30 - 8);
  v107 = v30;
  v31 = __chkstk_darwin(v30);
  v105 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v87 - v33;
  v35 = sub_100007224(&qword_1008428C8, &qword_1006DF9B0);
  __chkstk_darwin(v35 - 8);
  v37 = &v87 - v36;
  v38 = type metadata accessor for AnyCodableDictionary();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  AnyCodable.dictValue.getter();
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v42 = v109;
    sub_10000BE18(v37, &qword_1008428C8, &qword_1006DF9B0);
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "MobileDocumentReaderResponse DrivingPrivilege expected an AnyCodableDictionary representation, returning nil.", v45, 2u);
    }

    v46 = type metadata accessor for AnyCodable();
    (*(*(v46 - 8) + 8))(v108, v46);
    (*(v106 + 8))(v34, v107);
    v47 = 1;
    v48 = v42;
    goto LABEL_14;
  }

  v93 = v39;
  v94 = v38;
  (*(v39 + 32))(v41, v37, v38);
  v49 = *(v16 + 104);
  v49(v22, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.vehicleCategoryCode(_:), v15);
  sub_1003C2FDC(v29);
  v50 = *(v16 + 8);
  v92 = v15;
  v50(v22, v15);
  v51 = type metadata accessor for AnyCodable();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v29, 1, v51) != 1)
  {
    v88 = v50;
    v89 = v49;
    v54 = AnyCodable.stringValue.getter();
    v56 = v55;
    v57 = *(v52 + 8);
    v91 = v52 + 8;
    v90 = v57;
    v57(v29, v51);
    if (!v56)
    {
      goto LABEL_11;
    }

    v112 = v54;
    v113 = v56;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    if (!v111)
    {
      goto LABEL_11;
    }

    v106 = v111;
    v105 = v110;
    v58 = v96;
    v59 = v92;
    v89(v96, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.issueDate(_:), v92);
    v60 = v95;
    sub_1003C2FDC(v95);
    v88(v58, v59);
    v61 = v53(v60, 1, v51);
    v107 = v51;
    if (v61 == 1)
    {
      sub_10000BE18(v60, &qword_1008428C0, &qword_1006DF9A8);
      v62 = type metadata accessor for Date();
      v63 = v99;
      (*(*(v62 - 8) + 56))(v99, 1, 1, v62);
      v64 = v104;
    }

    else
    {
      v71 = v99;
      AnyCodable.dateValue.getter();
      v63 = v71;
      v90(v60, v51);
      v72 = type metadata accessor for Date();
      v73 = *(v72 - 8);
      v74 = (*(v73 + 48))(v63, 1, v72);
      v64 = v104;
      if (v74 != 1)
      {
        Date.utcDayRepresentation.getter();
        (*(v73 + 8))(v63, v72);
LABEL_18:
        v76 = v102;
        v77 = v100;
        v78 = v98;
        v79 = v92;
        v89(v98, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.expiryDate(_:), v92);
        v80 = v97;
        sub_1003C2FDC(v97);
        v88(v78, v79);
        v81 = v107;
        if (v53(v80, 1, v107) == 1)
        {
          sub_10000BE18(v80, &qword_1008428C0, &qword_1006DF9A8);
          v82 = type metadata accessor for Date();
          (*(*(v82 - 8) + 56))(v77, 1, 1, v82);
        }

        else
        {
          AnyCodable.dateValue.getter();
          v90(v80, v81);
          v83 = type metadata accessor for Date();
          v84 = *(v83 - 8);
          if ((*(v84 + 48))(v77, 1, v83) != 1)
          {
            Date.utcDayRepresentation.getter();
            (*(v84 + 8))(v77, v83);
            goto LABEL_23;
          }
        }

        sub_10000BE18(v77, &unk_100849400, &unk_1006BFBB0);
        v85 = type metadata accessor for DateComponents();
        (*(*(v85 - 8) + 56))(v76, 1, 1, v85);
LABEL_23:
        v86 = v104;
        sub_1003C1D1C(v104, v101);
        sub_1003C1D1C(v76, v103);
        sub_1003C3160();
        v48 = v109;
        MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.init(vehicleCategoryCode:issueDate:expirationDate:codes:)();
        v90(v108, v107);
        sub_10000BE18(v76, &qword_100842848, &qword_1006DF950);
        sub_10000BE18(v86, &qword_100842848, &qword_1006DF950);
        (*(v93 + 8))(v41, v94);
        v47 = 0;
        goto LABEL_14;
      }
    }

    sub_10000BE18(v63, &unk_100849400, &unk_1006BFBB0);
    v75 = type metadata accessor for DateComponents();
    (*(*(v75 - 8) + 56))(v64, 1, 1, v75);
    goto LABEL_18;
  }

  sub_10000BE18(v29, &qword_1008428C0, &qword_1006DF9A8);
LABEL_11:
  v65 = v105;
  defaultLogger()();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "MobileDocumentReaderResponse DrivingPrivilege missing vehicle category code, returning nil.", v68, 2u);
  }

  (*(v52 + 8))(v108, v51);
  (*(v106 + 8))(v65, v107);
  (*(v93 + 8))(v41, v94);
  v47 = 1;
  v48 = v109;
LABEL_14:
  v69 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege();
  return (*(*(v69 - 8) + 56))(v48, v47, 1, v69);
}

uint64_t sub_1003C2FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = AnyCodableDictionary.value.getter();
  v3 = ISO18013_5_1_DrivingPrivilegeIdentifier.rawValue.getter();
  if (*(v2 + 16))
  {
    v5 = sub_10003ADCC(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = *(v2 + 56);
      v9 = type metadata accessor for AnyCodable();
      v16 = *(v9 - 8);
      (*(v16 + 16))(a1, v8 + *(v16 + 72) * v5, v9);

      v10 = *(v16 + 56);
      v11 = a1;
      v12 = 0;
      v13 = v9;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = type metadata accessor for AnyCodable();
  v10 = *(*(v14 - 8) + 56);
  v13 = v14;
  v11 = a1;
  v12 = 1;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

char *sub_1003C3160()
{
  v0 = sub_100007224(&qword_1008428E8, &unk_1006DF9D0);
  __chkstk_darwin(v0 - 8);
  v47 = &v40 - v1;
  v2 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v57 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyCodable();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v55 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v40 - v8;
  v9 = type metadata accessor for ISO18013_5_1_DrivingPrivilegeIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100007224(&qword_1008428B0, &qword_1006DF998);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for AnyCodableArray();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.codes(_:), v9);
  sub_1003C2FDC(v15);
  v22 = v12;
  v23 = v4;
  (*(v10 + 8))(v22, v9);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_10000BE18(v15, &qword_1008428C0, &qword_1006DF9A8);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_10000BE18(v18, &qword_1008428B0, &qword_1006DF998);
    return _swiftEmptyArrayStorage;
  }

  AnyCodable.arrayValue.getter();
  v53 = *(v5 + 8);
  v54 = v5 + 8;
  v53(v15, v4);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  (*(v20 + 32))(v43, v18, v19);
  v25 = AnyCodableArray.value.getter();
  v26 = *(v25 + 16);
  if (v26)
  {
    v40 = v20;
    v41 = v19;
    v27 = *(v5 + 16);
    v51 = v5 + 16;
    v52 = v27;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v42 = v25;
    v29 = v25 + v28;
    v30 = *(v5 + 72);
    v31 = v46;
    v49 = (v45 + 48);
    v50 = v30;
    v48 = (v45 + 32);
    v24 = _swiftEmptyArrayStorage;
    v32 = v47;
    v44 = v4;
    v33 = v56;
    do
    {
      v34 = v52;
      v52(v33, v29, v23);
      v35 = v55;
      v34(v55, v33, v23);
      sub_1003C37E8(v35, v32);
      v53(v33, v23);
      if ((*v49)(v32, 1, v31) == 1)
      {
        sub_10000BE18(v32, &qword_1008428E8, &unk_1006DF9D0);
      }

      else
      {
        v36 = *v48;
        (*v48)(v57, v32, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1003C65C8(0, *(v24 + 2) + 1, 1, v24);
        }

        v38 = *(v24 + 2);
        v37 = *(v24 + 3);
        if (v38 >= v37 >> 1)
        {
          v24 = sub_1003C65C8((v37 > 1), v38 + 1, 1, v24);
        }

        *(v24 + 2) = v38 + 1;
        v31 = v46;
        v36(&v24[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38], v57, v46);
        v32 = v47;
        v23 = v44;
      }

      v29 += v50;
      --v26;
    }

    while (v26);

    v20 = v40;
    v19 = v41;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  (*(v20 + 8))(v43, v19);
  return v24;
}

uint64_t sub_1003C37E8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v81 = type metadata accessor for ISO18013_5_1_DrivingPrivilegeIdentifier();
  v3 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v78 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v68 - v7;
  __chkstk_darwin(v6);
  v10 = v68 - v9;
  v11 = sub_100007224(&qword_1008428C0, &qword_1006DF9A8);
  v12 = __chkstk_darwin(v11 - 8);
  v77 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v76 = v68 - v15;
  __chkstk_darwin(v14);
  v17 = v68 - v16;
  v18 = type metadata accessor for Logger();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = __chkstk_darwin(v18);
  v80 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v68 - v21;
  v23 = sub_100007224(&qword_1008428C8, &qword_1006DF9B0);
  __chkstk_darwin(v23 - 8);
  v25 = v68 - v24;
  v26 = type metadata accessor for AnyCodableDictionary();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  AnyCodable.dictValue.getter();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v30 = v85;
    sub_10000BE18(v25, &qword_1008428C8, &qword_1006DF9B0);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "MobileDocumentReaderResponse DrivingPrivilege Code expected an AnyCodableDictionary representation, returning nil.", v33, 2u);
    }

    v34 = type metadata accessor for AnyCodable();
    (*(*(v34 - 8) + 8))(v84, v34);
    (*(v82 + 8))(v22, v83);
    v35 = 1;
    goto LABEL_14;
  }

  v72 = v8;
  v36 = *(v27 + 32);
  v75 = v26;
  v36(v29, v25, v26);
  v37 = v81;
  v74 = *(v3 + 104);
  v74(v10, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.code(_:), v81);
  v79 = v29;
  sub_1003C2FDC(v17);
  v38 = *(v3 + 8);
  v38(v10, v37);
  v39 = type metadata accessor for AnyCodable();
  v40 = *(v39 - 8);
  v73 = *(v40 + 48);
  v41 = v27;
  if (v73(v17, 1, v39) == 1)
  {
    sub_10000BE18(v17, &qword_1008428C0, &qword_1006DF9A8);
LABEL_11:
    v50 = v80;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v79;
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentReaderResponse DrivingPrivilege Code missing code, returning nil.", v55, 2u);
    }

    (*(v40 + 8))(v84, v39);
    (*(v82 + 8))(v50, v83);
    (*(v41 + 8))(v54, v75);
    v35 = 1;
    v30 = v85;
    goto LABEL_14;
  }

  v69 = v38;
  v42 = v37;
  v43 = AnyCodable.stringValue.getter();
  v45 = v44;
  v70 = *(v40 + 8);
  v71 = v40 + 8;
  v70(v17, v39);
  if (!v45)
  {
    goto LABEL_11;
  }

  v88 = v43;
  v89 = v45;
  v46 = sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (!v87)
  {
    goto LABEL_11;
  }

  v68[1] = v46;
  v82 = v87;
  v80 = v86;
  v47 = v72;
  v74(v72, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.sign(_:), v42);
  v48 = v76;
  sub_1003C2FDC(v76);
  v69(v47, v42);
  v49 = v73(v48, 1, v39);
  v83 = v39;
  if (v49 == 1)
  {
    sub_10000BE18(v48, &qword_1008428C0, &qword_1006DF9A8);
    v76 = 0;
    v30 = v85;
  }

  else
  {
    v58 = AnyCodable.stringValue.getter();
    v60 = v59;
    v70(v48, v39);
    v30 = v85;
    if (v60)
    {
      v88 = v58;
      v89 = v60;
      Collection.nilIfEmpty.getter();

      v76 = v86;
    }

    else
    {
      v76 = 0;
    }
  }

  v61 = v78;
  v62 = v79;
  v74(v78, enum case for ISO18013_5_1_DrivingPrivilegeIdentifier.value(_:), v42);
  v63 = v77;
  sub_1003C2FDC(v77);
  v69(v61, v42);
  v64 = v83;
  if (v73(v63, 1, v83) == 1)
  {
    sub_10000BE18(v63, &qword_1008428C0, &qword_1006DF9A8);
  }

  else
  {
    v65 = AnyCodable.stringValue.getter();
    v67 = v66;
    v70(v63, v64);
    if (v67)
    {
      v88 = v65;
      v89 = v67;
      Collection.nilIfEmpty.getter();
    }
  }

  MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.init(code:sign:value:)();
  v70(v84, v83);
  (*(v41 + 8))(v62, v75);
  v35 = 0;
LABEL_14:
  v56 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code();
  return (*(*(v56 - 8) + 56))(v30, v35, 1, v56);
}

void sub_1003C40F4(uint64_t a1)
{
  v35 = type metadata accessor for MobileDocumentElement.Element();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for MobileDocumentElement();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v32 = v5 + 8;
  v33 = v5 + 16;
  v13 = (v2 + 88);
  v31 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v14 = (v2 + 8);
  v29 = (v2 + 96);
  v36 = a1;

  v15 = 0;
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v15;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v34;
    (*(v5 + 16))(v7, *(v36 + 48) + *(v5 + 72) * (v17 | (v15 << 6)), v34);
    MobileDocumentElement.storage.getter();
    (*(v5 + 8))(v7, v18);
    v19 = v35;
    v20 = (*v13)(v4, v35);
    if (v20 == v31)
    {
      (*v29)(v4, v19);
      v21 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1003C62CC(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v30 + 2);
      v22 = *(v30 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v27 = *(v30 + 2);
        v28 = v23 + 1;
        v26 = sub_1003C62CC((v22 > 1), v23 + 1, 1, v30);
        v23 = v27;
        v24 = v28;
        v30 = v26;
      }

      v25 = v30;
      *(v30 + 2) = v24;
      *&v25[8 * v23 + 32] = v21;
    }

    else
    {
      (*v14)(v4, v19);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1003C4424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v52 = a2;
  v2 = type metadata accessor for DIPError.Code();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v64 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ISO18013Response();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = __chkstk_darwin(v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v47 - v7;
  v8 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentRequestType.Storage();
  v65 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MobileDocumentRequestType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v47 = &v47 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v47 - v20;
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v24 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for DIPSignpost();
  v60 = *(v25 - 8);
  v61 = v25;
  __chkstk_darwin(v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.MobileDocumentReader.parseResponse.getter();
  v59 = v27;
  DIPSignpost.init(_:)();
  MobileDocumentReaderRequest.documentRequestType.getter();
  MobileDocumentRequestType.storage.getter();
  v28 = v65;
  v29 = *(v14 + 8);
  v29(v23, v13);
  v30 = (*(v28 + 88))(v12, v10);
  if (v30 != enum case for MobileDocumentRequestType.Storage.displayOnly(_:))
  {
    v53 = v13;
    v54 = v10;
    v38 = v55;
    v37 = v56;
    v40 = v57;
    v39 = v58;
    if (v30 == enum case for MobileDocumentRequestType.Storage.dataTransfer(_:))
    {
      (*(v65 + 8))(v12, v54);
      v41 = v51;
      (*(v38 + 16))(v51, v40, v37);
      v42 = v50;
      MobileDocumentReaderRequest.documentRequestType.getter();
      v43 = MobileDocumentRequestType.requestedElements.getter();
      v29(v42, v53);
      sub_1003B1250(v41, v43, v52);
      if (!v39)
      {
        goto LABEL_12;
      }
    }

    else if (v30 == enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:))
    {
      (*(v65 + 8))(v12, v54);
      (*(v62 + 104))(v64, enum case for DIPError.Code.unexpectedDaemonState(_:), v63);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      (*(v62 + 104))(v64, enum case for DIPError.Code.unexpectedDaemonState(_:), v63);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v65 + 8))(v12, v54);
    }

LABEL_11:
    v44 = v59;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v60 + 8))(v44, v61);
    (*(v62 + 104))(v64, enum case for DIPError.Code.internalError(_:), v63);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  (*(v28 + 8))(v12, v10);
  v31 = v53;
  (*(v55 + 16))(v53, v57, v56);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v32 = MobileDocumentRequestType.requestedElements.getter();
  v29(v21, v13);
  v33 = v54;
  v34 = v58;
  sub_1003B1250(v31, v32, v54);
  if (v34)
  {
    goto LABEL_11;
  }

  v35 = v47;
  MobileDocumentReaderRequest.documentRequestType.getter();
  v36 = MobileDocumentRequestType.requestedElements.getter();
  v29(v35, v13);
  sub_1003C71B8(v33, v36);

  (*(v48 + 32))(v52, v33, v49);
LABEL_12:
  v46 = v59;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (*(v60 + 8))(v46, v61);
}

uint64_t sub_1003C4E24(uint64_t a1)
{
  _StringGuts.grow(_:)(97);
  v1._object = 0x80000001007134C0;
  v1._countAndFlagsBits = 0xD00000000000005FLL;
  String.append(_:)(v1);
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

char *sub_1003C4EB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_10083C1E0, &qword_1006DA790);
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

void *sub_1003C4FDC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100007224(&qword_1008429E8, &qword_1006DFBA8);
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
    sub_100007224(&qword_1008429F0, &unk_1006DFBB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C5110(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
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

char *sub_1003C5294(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842998, &qword_1006DFB28);
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

char *sub_1003C5388(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842948, &qword_1006DFAB0);
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

void *sub_1003C54BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100007224(&qword_100839C38, &qword_1006DFBA0);
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
    type metadata accessor for DIAttributeImageEncoding(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C55E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
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

char *sub_1003C578C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100007224(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1003C58F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_1008429A8, &qword_1006DFB40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003C5AB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100007224(a5, a6);
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
    sub_100007224(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1003C5BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_1008429D0, &unk_1006DFB70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 632);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[632 * v8])
    {
      memmove(v12, v13, 632 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C5D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_1008429C0, &qword_1006DFB58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 336);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[336 * v8])
    {
      memmove(v12, v13, 336 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C5E7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_10083DC20, &qword_1006DB730);
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

char *sub_1003C5FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842978, &qword_1006DFAE8);
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

char *sub_1003C6134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842918, &qword_1006DFA70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C62CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100841E88, &qword_1006DECF0);
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

void *sub_1003C63F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100007224(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007224(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1003C6668(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842920, &qword_1006DFA78);
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

void *sub_1003C679C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100007224(a5, a6);
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

void *sub_1003C6994(void *result, int64_t a2, char a3, void *a4)
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
    sub_100007224(&qword_100849BB0, &unk_1006DFBC0);
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
    sub_100007224(&qword_1008410E8, &unk_1006DDB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C6ADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_10083C0F8, &unk_1006DA650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C6C58(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100007224(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1003C6D88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_100007224(a5, a6);
  v16 = *(sub_100007224(a7, a8) - 8);
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
  v21 = *(sub_100007224(a7, a8) - 8);
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

char *sub_1003C6F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842930, &qword_1006DFA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003C7090(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_100842968, &qword_1006DFAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1003C71B8(uint64_t a1, uint64_t a2)
{
  v136 = type metadata accessor for Locale.Region();
  v131 = *(v136 - 8);
  v4 = __chkstk_darwin(v136);
  v135 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v119 - v6;
  v143 = type metadata accessor for DIPError.Code();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonNameComponents();
  v128 = *(v8 - 8);
  v129 = v8;
  v9 = __chkstk_darwin(v8);
  v126 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v124 = &v119 - v12;
  __chkstk_darwin(v11);
  v125 = &v119 - v13;
  v134 = type metadata accessor for MobileDocumentElement();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MobileDocumentType.Identifier();
  v137 = *(v15 - 8);
  v138 = v15;
  __chkstk_darwin(v15);
  v139 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MobileDocumentType();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v127 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v119 - v22;
  __chkstk_darwin(v21);
  v25 = &v119 - v24;
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v121 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v119 - v30;
  defaultLogger()();
  v144 = a1;
  Logger.sensitive(_:)();
  v32 = *(v27 + 8);
  v123 = v26;
  v122 = v27 + 8;
  v120 = v32;
  v32(v31, v26);
  v140 = a1;
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentType.getter();
  if (!*(a2 + 16) || (v33 = sub_10003B970(v25), (v34 & 1) == 0))
  {
    (*(v18 + 8))(v25, v17);
    v56 = v142;
    v57 = v143;
    v141 = *(v141 + 104);
    (v141)(v142, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v143);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v58 = type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v140 = v58;
    swift_allocError();
    v59 = v57;
    goto LABEL_12;
  }

  v35 = *(*(a2 + 56) + 8 * v33);
  v36 = *(v18 + 8);
  v119 = v35;

  v36(v25, v17);
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentType.getter();
  v37 = v139;
  MobileDocumentType.storage.getter();
  v36(v23, v17);
  v39 = v137;
  v38 = v138;
  v40 = (*(v137 + 88))(v37, v138);
  if (v40 == enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
  {
    (*(v39 + 96))(v37, v38);
    v42 = v130;
    v41 = v131;
    v43 = v136;
    (*(v131 + 16))(v130, v37, v136);
    v44 = v135;
    Locale.Region.init(stringLiteral:)();
    sub_1003BD24C(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v41 + 8);
    v46(v44, v43);
    v46(v42, v43);
    v138 = v46;
    if ((v45 & 1) == 0)
    {

      (*(v41 + 32))(v44, v37, v43);
      v145 = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v145 = 0xD000000000000025;
      v146 = 0x8000000100701CB0;
      v91._countAndFlagsBits = Locale.Region.identifier.getter();
      String.append(_:)(v91);

      v139 = v145;
      v137 = v146;
      v56 = v142;
      v92 = v143;
      v141 = *(v141 + 104);
      (v141)(v142, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v143);
      sub_1000402AC(_swiftEmptyArrayStorage);
      v93 = type metadata accessor for DIPError();
      sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v140 = v93;
      swift_allocError();
      v59 = v92;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v138(v135, v136);
      goto LABEL_13;
    }

    v137 = v41 + 8;
    v47 = v133;
    static MobileDocumentElement.givenName.getter();
    v48 = v119;
    v49 = sub_100693BD4(v47, v119);
    v50 = *(v132 + 8);
    v51 = v134;
    v50(v47, v134);
    if (v49 & 1) != 0 || (static MobileDocumentElement.familyName.getter(), v52 = sub_100693BD4(v47, v48), v50(v47, v51), (v52))
    {
      v53 = v126;
      MobileDocumentReaderResponse.MobileIdentityDocumentElements.nameComponents.getter();
      v54 = PersonNameComponents.formatted()();
      (*(v128 + 8))(v53, v129);

      v55 = (v54._object >> 56) & 0xF;
      v48 = v119;
      if ((v54._object & 0x2000000000000000) == 0)
      {
        v55 = v54._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v55)
      {

        v135 = "d age but no age was returned";
        v56 = v142;
        v100 = v43;
        v101 = v143;
        v141 = *(v141 + 104);
        (v141)(v142, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v143);
        sub_1000402AC(_swiftEmptyArrayStorage);
        v102 = type metadata accessor for DIPError();
        sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v140 = v102;
        swift_allocError();
        v59 = v101;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v138(v139, v100);
        goto LABEL_13;
      }
    }

    v138(v139, v43);
  }

  else
  {
    if (v40 != enum case for MobileDocumentType.Identifier.driversLicense(_:) && v40 != enum case for MobileDocumentType.Identifier.photoID(_:))
    {

      v145 = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v61._countAndFlagsBits = 0xD00000000000001ALL;
      v61._object = 0x8000000100710680;
      String.append(_:)(v61);
      v62 = v127;
      MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentType.getter();
      _print_unlocked<A, B>(_:_:)();
      v36(v62, v17);
      v135 = v146;
      v136 = v145;
      v56 = v142;
      v59 = v143;
      v141 = *(v141 + 104);
      (v141)(v142, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v143);
      v134 = sub_1000402AC(_swiftEmptyArrayStorage);
      v63 = v39;
      v64 = type metadata accessor for DIPError();
      sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v140 = v64;
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v63 + 8))(v139, v138);
      goto LABEL_13;
    }

    v47 = v133;
    static MobileDocumentElement.givenName.getter();
    v48 = v119;
    v65 = sub_100693BD4(v47, v119);
    v50 = *(v132 + 8);
    v51 = v134;
    v50(v47, v134);
    if (v65)
    {
      v66 = v125;
      MobileDocumentReaderResponse.MobileIdentityDocumentElements.nameComponents.getter();
      PersonNameComponents.givenName.getter();
      v68 = v67;
      (*(v128 + 8))(v66, v129);
      if (!v68)
      {

        v139 = "t no family name was returned";
        v56 = v142;
        v76 = v143;
        v141 = *(v141 + 104);
        (v141)(v142, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v143);
        sub_1000402AC(_swiftEmptyArrayStorage);
        v107 = type metadata accessor for DIPError();
        sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v140 = v107;
        swift_allocError();
        goto LABEL_51;
      }

      v48 = v119;
    }

    static MobileDocumentElement.familyName.getter();
    v69 = sub_100693BD4(v47, v48);
    v50(v47, v51);
    if (v69)
    {
      v70 = v50;
      v71 = v124;
      MobileDocumentReaderResponse.MobileIdentityDocumentElements.nameComponents.getter();
      PersonNameComponents.familyName.getter();
      v73 = v72;
      (*(v128 + 8))(v71, v129);
      if (!v73)
      {

        v139 = "d name but no name was returned";
        v56 = v142;
        v76 = v143;
        v141 = *(v141 + 104);
        (v141)(v142, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v143);
        sub_1000402AC(_swiftEmptyArrayStorage);
        v108 = type metadata accessor for DIPError();
        sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v140 = v108;
        swift_allocError();
        goto LABEL_51;
      }

      v48 = v119;
      v50 = v70;
    }
  }

  static MobileDocumentElement.age.getter();
  v74 = sub_100693BD4(v47, v48);
  v50(v47, v51);
  if (v74)
  {
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.age.getter();
    v48 = v119;
    if (v75)
    {

      v139 = "ver was returned";
      v56 = v142;
      v76 = v143;
      v141 = *(v141 + 104);
      (v141)(v142, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v143);
      sub_1000402AC(_swiftEmptyArrayStorage);
      v77 = type metadata accessor for DIPError();
      sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v140 = v77;
      swift_allocError();
LABEL_51:
      v59 = v76;
      goto LABEL_12;
    }
  }

  sub_1003C40F4(v48);
  v79 = v78;

  v56 = v142;
  v76 = v143;
  if (*(v79 + 16))
  {
    v80 = *(v79 + 32);

    v81 = *(MobileDocumentReaderResponse.MobileIdentityDocumentElements.ageAtLeastElements.getter() + 16);

    if (v81 == 1)
    {
      v82 = MobileDocumentReaderResponse.MobileIdentityDocumentElements.ageAtLeastElements.getter();
      v84 = 0;
      v85 = 1 << *(v82 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v87 = v86 & *(v82 + 64);
      v88 = (v85 + 63) >> 6;
      while (v87)
      {
        v89 = v84;
LABEL_37:
        v90 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
        if (*(*(v82 + 48) + ((v89 << 9) | (8 * v90))) == v80)
        {

          goto LABEL_41;
        }
      }

      while (1)
      {
        v89 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v89 >= v88)
        {

          v139 = "lid JPEG or JPEG2000 image";
          v141 = *(v141 + 104);
          (v141)(v56, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v76);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v103 = type metadata accessor for DIPError();
          sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v140 = v103;
          swift_allocError();
          goto LABEL_51;
        }

        v87 = *(v82 + 64 + 8 * v89);
        ++v84;
        if (v87)
        {
          v84 = v89;
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_58:
      v117 = v82;
      v118 = v83;
      swift_once();
      v82 = v117;
      v83 = v118;
      goto LABEL_47;
    }

    v145 = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v95._countAndFlagsBits = 0xD000000000000021;
    v95._object = 0x80000001007132C0;
    String.append(_:)(v95);
    v96 = *(MobileDocumentReaderResponse.MobileIdentityDocumentElements.ageAtLeastElements.getter() + 16);

    v147 = v96;
    v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v97);

    v98._countAndFlagsBits = 0xD000000000000024;
    v98._object = 0x80000001007132F0;
    String.append(_:)(v98);
    v139 = v145;
    v141 = *(v141 + 104);
    (v141)(v56, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v76);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v99 = type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v140 = v99;
    swift_allocError();
    v59 = v76;
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_13:
    (v141)(v56, enum case for DIPError.Code.internalError(_:), v59);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

LABEL_41:
  v82 = MobileDocumentReaderResponse.MobileIdentityDocumentElements.portraitData.getter();
  if (v83 >> 60 == 15)
  {
    v139 = "ements were returned";
    v141 = *(v141 + 104);
    (v141)(v56, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v76);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v94 = type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v140 = v94;
    swift_allocError();
    goto LABEL_51;
  }

  if (qword_100832C60 != -1)
  {
    goto LABEL_58;
  }

LABEL_47:
  v104 = v82;
  v105 = v83;
  sub_1003A8F4C(v82, v83, qword_100882328);
  if (v106)
  {
    return sub_10000BD94(v104, v105);
  }

  v109 = [objc_opt_self() standardUserDefaults];
  v110._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disablePortraitDataFormatValidation.getter();
  v111 = NSUserDefaults.internalBool(forKey:)(v110);

  if (!v111)
  {
    v139 = "Response portrait data is nil";
    v141 = *(v141 + 104);
    (v141)(v56, enum case for DIPError.Code.documentReaderUnsupportedPortraitDataFormat(_:), v76);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v116 = type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v140 = v116;
    swift_allocError();
    v59 = v143;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v104, v105);
    goto LABEL_13;
  }

  v112 = v121;
  defaultLogger()();
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&_mh_execute_header, v113, v114, "Response portrait data cannot be decoded to a valid JPEG or JPEG2000 image", v115, 2u);
  }

  sub_10000BD94(v104, v105);

  return v120(v112, v123);
}

uint64_t sub_1003C8C70()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DIPSignpost();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003C8DB8, 0, 0);
}

uint64_t sub_1003C8DB8()
{
  v1 = *(v0 + 16);
  static DaemonSignposts.MobileDocumentReader.identityKeySecureElementStatus.getter();
  DIPSignpost.init(_:)();
  v2 = v1[10];
  v3 = v1[11];
  sub_10000BA08(v1 + 7, v2);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1003C8E8C;

  return dispatch thunk of SEPairingManaging.pairSecureElementIfNecessary()(v2, v3);
}

uint64_t sub_1003C8E8C(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1003C92C8;
  }

  else
  {
    *(v4 + 104) = a1 & 1;
    v5 = sub_1003C8FB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C8FB8()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 16);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendMobileDocumentReaderSEPairingResultEvent(result:)();
    sub_10000BA08((v1 + 16), *(v1 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1003C9114;

    return sub_1003545A4();
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1003C9114()
{

  return _swift_task_switch(sub_1003C9210, 0, 0);
}

uint64_t sub_1003C9210()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C92C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v8 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  type metadata accessor for DaemonAnalytics();
  swift_errorRetain();
  static DaemonAnalytics.sendMobileDocumentReaderSEPairingResultEvent(result:)();

  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003C94CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DIPError.PropertyKey();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentReaderSession.Error.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  DIPError.code.getter();
  v33 = v12;
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_2;
  }

  v34 = a2;
  if (v15 == enum case for DIPError.Code.networkTimeOut(_:))
  {
    goto LABEL_4;
  }

  v17 = v7;
  if (v15 == enum case for DIPError.Code.regionNotSupported(_:))
  {
    goto LABEL_7;
  }

  if (v15 == enum case for DIPError.Code.unexpectedServerResponse(_:))
  {
LABEL_9:
    v18 = &enum case for MobileDocumentReaderSession.Error.Code.serviceUnavailable(_:);
    goto LABEL_10;
  }

  if (v15 == enum case for DIPError.Code.topekaEntitlementServiceError(_:) || v15 == enum case for DIPError.Code.topekaWWDRTeamTerminated(_:) || v15 == enum case for DIPError.Code.topekaWWDRTeamExpired(_:) || v15 == enum case for DIPError.Code.topekaWWDRTeamDisabled(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for DIPError.Code.topekaJWTVerificationFailed(_:) || v15 == enum case for DIPError.Code.topekaMalformedJWT(_:) || v15 == enum case for DIPError.Code.topekaInvalidJWTType(_:) || v15 == enum case for DIPError.Code.topekaIncorrectJWTAlgorithm(_:) || v15 == enum case for DIPError.Code.topekaInvalidJWTSignature(_:) || v15 == enum case for DIPError.Code.topekaJWTOutsideOfValidityPeriod(_:) || v15 == enum case for DIPError.Code.topekaInvalidJWTClaim(_:) || v15 == enum case for DIPError.Code.topekaAppIDMismatch(_:) || v15 == enum case for DIPError.Code.topekaNotOnboarded(_:) || v15 == enum case for DIPError.Code.topekaInvalidKeyID(_:))
  {
    goto LABEL_35;
  }

  if (v15 != enum case for DIPError.Code.topekaCannotVerifyDeviceOwnership(_:))
  {
    if (v15 != enum case for DIPError.Code.topekaInvalidAudience(_:))
    {
      if (v15 == enum case for DIPError.Code.topekaiCloudAccountSignedOut(_:))
      {
        v16 = &enum case for MobileDocumentReaderSession.Error.Code.iCloudAccountSignedOut(_:);
        goto LABEL_5;
      }

      v17 = v7;
      if (v15 == enum case for DIPError.Code.topekaInvalidIAT(_:))
      {
        goto LABEL_9;
      }

      if (v15 != enum case for DIPError.Code.topekaSubjectMismatch(_:))
      {
        if (v15 == enum case for DIPError.Code.topekaMissingFairPlayProvisioningInfo(_:) || v15 == enum case for DIPError.Code.topekaOSVersionNotSupported(_:))
        {
          v16 = &enum case for MobileDocumentReaderSession.Error.Code.osNotSupported(_:);
          goto LABEL_5;
        }

        if (v15 != enum case for DIPError.Code.topekaJWTSigningKeyExpired(_:))
        {
          v17 = v7;
          if (v15 == enum case for DIPError.Code.topekaABRTermsAndConditionsAcceptanceRequired(_:) || v15 == enum case for DIPError.Code.topekaInternalServerError(_:))
          {
            goto LABEL_9;
          }

          if (v15 == enum case for DIPError.Code.sesKeyNetworkError(_:))
          {
LABEL_4:
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.networkError(_:);
LABEL_5:
            (*(v8 + 104))(v10, *v16, v7);
LABEL_11:
            MobileDocumentReaderSession.Error.init(code:underlyingError:debugDescription:)();
            goto LABEL_12;
          }

          if (v15 == enum case for DIPError.Code.documentReadCancelled(_:))
          {
LABEL_47:
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.cancelled(_:);
            goto LABEL_5;
          }

          if (v15 == enum case for DIPError.Code.documentReadingAlreadyInProgress(_:))
          {
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.documentReadAlreadyInProgress(_:);
            goto LABEL_5;
          }

          if (v15 == enum case for DIPError.Code.documentReaderMissingSession(_:))
          {
LABEL_52:
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.sessionExpired(_:);
            goto LABEL_5;
          }

          if (v15 == enum case for DIPError.Code.documentReaderHolderCancelled(_:))
          {
            goto LABEL_47;
          }

          if (v15 == enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:))
          {
LABEL_55:
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.documentReadConnectionError(_:);
            goto LABEL_5;
          }

          if (v15 == enum case for DIPError.Code.documentReaderMalformedDocumentResponse(_:))
          {
LABEL_57:
            v16 = &enum case for MobileDocumentReaderSession.Error.Code.invalidResponse(_:);
            goto LABEL_5;
          }

          if (v15 != enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:))
          {
            if (v15 == enum case for DIPError.Code.documentReaderRequiresBluetooth(_:))
            {
              v16 = &enum case for MobileDocumentReaderSession.Error.Code.bluetoothDisabled(_:);
              goto LABEL_5;
            }

            if (v15 == enum case for DIPError.Code.documentReaderRequiresNFC(_:))
            {
              v16 = &enum case for MobileDocumentReaderSession.Error.Code.nfcDisabled(_:);
              goto LABEL_5;
            }

            if (v15 == enum case for DIPError.Code.documentReaderUnknownDocumentType(_:) || v15 == enum case for DIPError.Code.documentReaderUnknownDocumentElement(_:))
            {
              goto LABEL_69;
            }

            v17 = v7;
            if (v15 == enum case for DIPError.Code.documentReaderCertificateDataHashMismatch(_:) || v15 == enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:))
            {
              goto LABEL_9;
            }

            if (v15 == enum case for DIPError.Code.documentReaderSTSConnectionError(_:))
            {
              goto LABEL_55;
            }

            if (v15 == enum case for DIPError.Code.documentReaderInvalidRequest(_:))
            {
              goto LABEL_69;
            }

            if (v15 != enum case for DIPError.Code.documentReaderExpiredAttestationCertificate(_:))
            {
              if (v15 == enum case for DIPError.Code.documentReaderTermsAndConditionsAcceptanceRequired(_:))
              {
                v27 = DIPError.properties.getter();
                (*(v32 + 104))(v6, enum case for DIPError.PropertyKey.termsAndConditions(_:), v4);
                if (*(v27 + 16) && (v28 = sub_10003AF10(v6), (v29 & 1) != 0))
                {
                  sub_100020260(*(v27 + 56) + 40 * v28, v38);
                  (*(v32 + 8))(v6, v4);

                  sub_100007224(&unk_100833A90, &unk_1006DEE50);
                  if (swift_dynamicCast())
                  {
                    v30 = v37;
                    *v10 = v36;
                    v10[1] = v30;
                    v16 = &enum case for MobileDocumentReaderSession.Error.Code.termsAndConditionsAcceptanceRequired(_:);
                    goto LABEL_5;
                  }
                }

                else
                {

                  (*(v32 + 8))(v6, v4);
                }

                v16 = &enum case for MobileDocumentReaderSession.Error.Code.unknown(_:);
                goto LABEL_5;
              }

              if (v15 == enum case for DIPError.Code.documentReaderInvalidResponse(_:) || v15 == enum case for DIPError.Code.documentReaderUnknownIssuerAuthAlgorithm(_:) || v15 == enum case for DIPError.Code.documentReaderInvalidIssuerAuthCerts(_:) || v15 == enum case for DIPError.Code.documentReaderMisformattedIssuerAuthSignature(_:) || v15 == enum case for DIPError.Code.documentReaderInvalidIssuerAuthSignature(_:) || v15 == enum case for DIPError.Code.documentReaderMisformattedIssuerAuthStructure(_:) || v15 == enum case for DIPError.Code.documentReaderExpiredIssuerAuth(_:) || v15 == enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:) || v15 == enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:) || v15 == enum case for DIPError.Code.documentReaderMisformattedDeviceAuthSignature(_:) || v15 == enum case for DIPError.Code.documentReaderInvalidDeviceAuthSignature(_:) || v15 == enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:) || v15 == enum case for DIPError.Code.documentReaderMalformedDeviceAuthStructure(_:) || v15 == enum case for DIPError.Code.documentReaderDeviceMacUnsupported(_:))
              {
                goto LABEL_57;
              }

              if (v15 == enum case for DIPError.Code.documentReaderPasscodeNotSet(_:))
              {
                v16 = &enum case for MobileDocumentReaderSession.Error.Code.passcodeNotSet(_:);
                goto LABEL_5;
              }

              if (v15 != enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:))
              {
                v17 = v7;
                if (v15 == enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:))
                {
                  goto LABEL_9;
                }

                if (v15 == enum case for DIPError.Code.documentReaderHSA2NotEnabled(_:))
                {
                  v16 = &enum case for MobileDocumentReaderSession.Error.Code.hsa2Disabled(_:);
                  goto LABEL_5;
                }

                if (v15 == enum case for DIPError.Code.documentReaderReadTimedOut(_:))
                {
                  v16 = &enum case for MobileDocumentReaderSession.Error.Code.documentReadTimedOut(_:);
                  goto LABEL_5;
                }

                if (v15 == enum case for DIPError.Code.documentReaderNFCOverheatProtectionEnabled(_:))
                {
                  v16 = &enum case for MobileDocumentReaderSession.Error.Code.nfcOverheatProtectionEnabled(_:);
                  goto LABEL_5;
                }

                if (v15 == enum case for DIPError.Code.documentReaderSessionExpired(_:))
                {
                  goto LABEL_52;
                }

                if (v15 != enum case for DIPError.Code.documentReaderNoTrustedIssuerRoots(_:))
                {
                  if (v15 == enum case for DIPError.Code.documentReaderUntrustedIssuer(_:) || v15 == enum case for DIPError.Code.documentReaderFailedToVerifyIssuerChain(_:) || v15 == enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerCountryInconsistent(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerIssuingJurisdictionInconsistent(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerIssueDateInconsistent(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerMissingOID(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerInvalidDigest(_:) || v15 == enum case for DIPError.Code.documentReaderMismatchedDocType(_:) || v15 == enum case for DIPError.Code.documentReaderMSOValidityInfoValidationFailed(_:) || v15 == enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:) || v15 == enum case for DIPError.Code.documentReaderInvalidDigestAlgorithm(_:))
                  {
                    goto LABEL_57;
                  }

                  if (v15 != enum case for DIPError.Code.documentReaderEmptyRequest(_:) && v15 != enum case for DIPError.Code.documentReaderInvalidAgeAtLeastElement(_:) && v15 != enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:) && v15 != enum case for DIPError.Code.documentReaderRequestOnlyContainsPortrait(_:))
                  {
                    v17 = v7;
                    if (v15 == enum case for DIPError.Code.documentReaderUnableToCheckRegionSupport(_:))
                    {
                      goto LABEL_9;
                    }

                    if (v15 == enum case for DIPError.Code.documentReaderCertificateRevoked(_:))
                    {
                      goto LABEL_57;
                    }

                    if (v15 == enum case for DIPError.Code.documentReaderNFCNegotiatedHandoverFailed(_:))
                    {
                      v16 = &enum case for MobileDocumentReaderSession.Error.Code.nfcNegotiatedHandoverFailed(_:);
                      goto LABEL_5;
                    }

                    if (v15 == enum case for DIPError.Code.documentReaderUnsupportedPortraitDataFormat(_:))
                    {
                      goto LABEL_57;
                    }

                    if (v15 != enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:) && v15 != enum case for DIPError.Code.documentReaderTokenRequiredForRequest(_:))
                    {
                      v17 = v7;
                      if (v15 == enum case for DIPError.Code.documentReaderApplicationExtensionsNotPermitted(_:) || v15 == enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:))
                      {
LABEL_7:
                        v18 = &enum case for MobileDocumentReaderSession.Error.Code.notSupported(_:);
LABEL_10:
                        (*(v8 + 104))(v10, *v18, v17);
                        goto LABEL_11;
                      }

                      if (v15 != enum case for DIPError.Code.documentReaderInvalidDeviceMAC(_:))
                      {
                        v17 = v7;
                        if (v15 == enum case for DIPError.Code.vicalCouldNotFetch(_:))
                        {
                          goto LABEL_9;
                        }

                        if (v15 == enum case for DIPError.Code.vicalMissing(_:))
                        {
                          goto LABEL_52;
                        }

                        v17 = v7;
                        if (v15 == enum case for DIPError.Code.vicalCannotParseDocument(_:))
                        {
                          goto LABEL_9;
                        }

                        if (v15 != enum case for DIPError.Code.krlMatchedRevokedKey(_:))
                        {
                          (*(v8 + 104))(v10, enum case for MobileDocumentReaderSession.Error.Code.unknown(_:), v7);
                          MobileDocumentReaderSession.Error.init(code:underlyingError:debugDescription:)();
                          (*(v33 + 8))(v14, v11);
                          goto LABEL_12;
                        }
                      }

                      goto LABEL_57;
                    }
                  }
                }
              }

LABEL_69:
              v16 = &enum case for MobileDocumentReaderSession.Error.Code.invalidRequest(_:);
              goto LABEL_5;
            }
          }
        }
      }
    }

LABEL_35:
    v16 = &enum case for MobileDocumentReaderSession.Error.Code.invalidToken(_:);
    goto LABEL_5;
  }

LABEL_2:
  (*(v8 + 104))(v10, enum case for MobileDocumentReaderSession.Error.Code.notEntitled(_:), v7);
  MobileDocumentReaderSession.Error.init(code:underlyingError:debugDescription:)();
LABEL_12:
  v19 = type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  v20 = *(v19 - 8);
  v21 = v35;
  (*(v20 + 16))(v22, v35, v19);
  MobileDocumentReaderSession.Error.underlyingError.setter();
  sub_1003CA1CC();
  MobileDocumentReaderSession.Error.debugDescription.setter();
  return (*(v20 + 8))(v21, v19);
}

unint64_t sub_1003CA1CC()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DIPError.code.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    return 0xD00000000000003ALL;
  }

  if (v4 == enum case for DIPError.Code.regionNotSupported(_:))
  {
    return 0xD00000000000002BLL;
  }

  if (v4 == enum case for DIPError.Code.topekaEntitlementServiceError(_:) || v4 == enum case for DIPError.Code.topekaWWDRTeamTerminated(_:) || v4 == enum case for DIPError.Code.topekaWWDRTeamExpired(_:) || v4 == enum case for DIPError.Code.topekaWWDRTeamDisabled(_:))
  {
    return 0xD000000000000050;
  }

  if (v4 == enum case for DIPError.Code.topekaJWTVerificationFailed(_:))
  {
    return 0xD000000000000030;
  }

  if (v4 == enum case for DIPError.Code.topekaMalformedJWT(_:))
  {
    return 0xD000000000000027;
  }

  if (v4 == enum case for DIPError.Code.topekaInvalidJWTType(_:))
  {
    return 0xD000000000000055;
  }

  if (v4 == enum case for DIPError.Code.topekaIncorrectJWTAlgorithm(_:))
  {
    return 0xD000000000000057;
  }

  if (v4 == enum case for DIPError.Code.topekaInvalidJWTSignature(_:))
  {
    return 0xD000000000000038;
  }

  if (v4 == enum case for DIPError.Code.topekaJWTOutsideOfValidityPeriod(_:))
  {
    return 0xD00000000000004ELL;
  }

  if (v4 == enum case for DIPError.Code.topekaInvalidJWTClaim(_:))
  {
    return 0xD00000000000003ELL;
  }

  if (v4 == enum case for DIPError.Code.topekaAppIDMismatch(_:) || v4 == enum case for DIPError.Code.topekaNotOnboarded(_:))
  {
    return 0xD000000000000090;
  }

  if (v4 == enum case for DIPError.Code.topekaInvalidKeyID(_:))
  {
    return 0xD000000000000086;
  }

  if (v4 == enum case for DIPError.Code.topekaCannotVerifyDeviceOwnership(_:))
  {
    return 0xD000000000000040;
  }

  if (v4 == enum case for DIPError.Code.topekaInvalidAudience(_:))
  {
    return 0xD000000000000075;
  }

  if (v4 == enum case for DIPError.Code.topekaSubjectMismatch(_:))
  {
    return 0xD00000000000006DLL;
  }

  if (v4 == enum case for DIPError.Code.topekaMissingFairPlayProvisioningInfo(_:))
  {
    return 0;
  }

  if (v4 == enum case for DIPError.Code.topekaJWTSigningKeyExpired(_:))
  {
    return 0xD000000000000039;
  }

  if (v4 == enum case for DIPError.Code.topekaABRTermsAndConditionsAcceptanceRequired(_:))
  {
    return 0xD00000000000005CLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderUnknownDocumentType(_:))
  {
    return 0xD000000000000029;
  }

  if (v4 == enum case for DIPError.Code.documentReaderUnknownIssuerAuthAlgorithm(_:))
  {
    return 0xD000000000000064;
  }

  if (v4 == enum case for DIPError.Code.documentReaderInvalidIssuerAuthCerts(_:))
  {
    return 0xD000000000000034;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMisformattedIssuerAuthSignature(_:) || v4 == enum case for DIPError.Code.documentReaderInvalidIssuerAuthSignature(_:))
  {
    return 0xD00000000000004ALL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMisformattedIssuerAuthStructure(_:))
  {
    return 0xD00000000000004ALL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderExpiredIssuerAuth(_:))
  {
    return 0xD000000000000069;
  }

  if (v4 == enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:))
  {
    return 0xD000000000000063;
  }

  if (v4 == enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:))
  {
    return 0xD00000000000003CLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMisformattedDeviceAuthSignature(_:) || v4 == enum case for DIPError.Code.documentReaderInvalidDeviceAuthSignature(_:))
  {
    return 0xD00000000000004ALL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:))
  {
    return 0xD000000000000069;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMalformedDeviceAuthStructure(_:))
  {
    return 0xD000000000000053;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDeviceMacUnsupported(_:))
  {
    return 0xD00000000000005ALL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:))
  {
    return 0xD00000000000008CLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderUntrustedIssuer(_:))
  {
    return 0xD000000000000044;
  }

  if (v4 == enum case for DIPError.Code.documentReaderFailedToVerifyIssuerChain(_:))
  {
    return 0xD000000000000045;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:))
  {
    return 0xD00000000000003DLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerCountryInconsistent(_:))
  {
    return 0xD000000000000074;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerIssuingJurisdictionInconsistent(_:))
  {
    return 0xD000000000000082;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerIssueDateInconsistent(_:))
  {
    return 0xD000000000000062;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerMissingOID(_:))
  {
    return 0xD000000000000058;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerInvalidDigest(_:))
  {
    return 0xD000000000000033;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMismatchedDocType(_:))
  {
    return 0xD000000000000078;
  }

  if (v4 == enum case for DIPError.Code.documentReaderMSOValidityInfoValidationFailed(_:))
  {
    return 0xD000000000000061;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:))
  {
    return 0xD000000000000053;
  }

  if (v4 == enum case for DIPError.Code.documentReaderInvalidDigestAlgorithm(_:))
  {
    return 0xD00000000000003BLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderEmptyRequest(_:))
  {
    return 0xD000000000000033;
  }

  if (v4 == enum case for DIPError.Code.documentReaderInvalidAgeAtLeastElement(_:))
  {
    return 0xD00000000000006FLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:))
  {
    return 0xD00000000000003DLL;
  }

  if (v4 == enum case for DIPError.Code.documentReaderRequestOnlyContainsPortrait(_:))
  {
    return 0xD000000000000033;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerMissingCommonName(_:))
  {
    return 0xD000000000000042;
  }

  if (v4 == enum case for DIPError.Code.documentReaderDocSignerInvalidKeyUsage(_:))
  {
    return 0xD00000000000005ALL;
  }

  if (v4 != enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:))
  {
    if (v4 != enum case for DIPError.Code.documentReaderTokenRequiredForRequest(_:))
    {
      if (v4 == enum case for DIPError.Code.documentReaderApplicationExtensionsNotPermitted(_:))
      {
        return 0xD00000000000003ELL;
      }

      if (v4 != enum case for DIPError.Code.documentReaderInvalidDeviceMAC(_:))
      {
        (*(v1 + 8))(v3, v0);
        return 0;
      }

      return 0xD00000000000005CLL;
    }

    return 0xD000000000000044;
  }

  return 0xD000000000000041;
}

uint64_t sub_1003CACF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_10000BA08(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v6;
  sub_10000BB78(v9);
  result = sub_10000BB78(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_1003CADBC(void *a1)
{
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10001F370(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_10000BB78(v2);
}

void *sub_1003CAE70@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Int sub_1003CAE7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003CAED0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

double sub_1003CAF18@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1003CAF24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_100842B88, &qword_1006DFFE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000BA08(a1, a1[3]);
  sub_1003CE2A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[0] = a2;
  v11[1] = a3;
  sub_1003CE350();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1003CB078(uint64_t a1)
{
  v2 = sub_1003CE2A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CB0B4(uint64_t a1)
{
  v2 = sub_1003CE2A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1003CB0F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1003CE134(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1003CB138()
{
  v1[266] = v0;
  v1[267] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[268] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1[269] = swift_task_alloc();
  v1[270] = swift_task_alloc();
  v1[271] = swift_task_alloc();
  v2 = type metadata accessor for DIPError.Code();
  v1[272] = v2;
  v1[273] = *(v2 - 8);
  v1[274] = swift_task_alloc();
  v3 = sub_100007224(&qword_100842B40, &qword_1006DFD28);
  v1[275] = v3;
  v1[276] = *(v3 - 8);
  v1[277] = swift_task_alloc();
  v4 = type metadata accessor for URL.DirectoryHint();
  v1[278] = v4;
  v1[279] = *(v4 - 8);
  v1[280] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[281] = v5;
  v1[282] = *(v5 - 8);
  v1[283] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[284] = v6;
  v1[285] = *(v6 - 8);
  v1[286] = swift_task_alloc();

  return _swift_task_switch(sub_1003CB400, 0, 0);
}

uint64_t sub_1003CB400()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.useHardcodedTermsAndConditions.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {

    v4 = v0[1];

    return v4(0xD00000000000007BLL, 0x8000000100714A40);
  }

  else
  {
    v0[287] = *(v0[266] + 16);
    v6 = swift_task_alloc();
    v0[288] = v6;
    *v6 = v0;
    v6[1] = sub_1003CB5CC;

    return sub_1005B16AC((v0 + 2), 0);
  }
}

uint64_t sub_1003CB5CC()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v3[289] = v0;
  v61 = v2[2];
  v59 = v2[3];
  v55 = v2[4];
  v53 = v2[5];
  v5 = v3[6];
  v6 = v3[7];
  v48 = v2[8];
  v7 = v3[9];
  v44 = v2[10];
  v42 = v2[11];
  v57 = *(v3 + 7);
  v58 = *(v3 + 6);
  v33 = v2[16];
  v60 = v2[17];
  v56 = v2[18];
  v54 = v2[19];
  v52 = v2[20];
  v51 = v2[21];
  v50 = v2[22];
  v49 = *(v3 + 184);
  v47 = v2[24];
  v46 = *(v3 + 200);
  v45 = v2[26];
  v43 = v2[27];
  v41 = v2[28];
  v40 = *(v3 + 232);
  v39 = v2[30];
  v38 = *(v3 + 248);
  v37 = v2[32];
  v34 = *(v3 + 264);
  v32 = v2[34];
  v29 = *(v3 + 280);
  v28 = v2[36];
  v30 = *(v3 + 20);
  v31 = *(v3 + 19);
  v35 = *(v3 + 22);
  v36 = *(v3 + 21);
  v8 = *(v3 + 296);
  v27 = v2[46];
  v26 = *(v3 + 376);
  v25 = v2[48];
  v24 = *(v3 + 392);
  v9 = *(v3 + 393);
  v10 = v2[50];
  v11 = *(v3 + 408);
  v12 = v2[52];
  v22 = *(v3 + 59);
  v23 = *(v3 + 61);
  v20 = *(v3 + 67);
  v21 = *(v3 + 63);
  v17 = *(v3 + 28);
  v18 = *(v3 + 27);
  v19 = *(v3 + 65);
  v13 = *(v3 + 424);
  v14 = *(v3 + 464);

  if (v0)
  {

    return _swift_task_switch(sub_1003CDA70, 0, 0);
  }

  else
  {
    v3[69] = v61;
    v3[70] = v59;
    v3[71] = v55;
    v3[72] = v53;
    v3[75] = v48;
    v3[77] = v44;
    v3[78] = v42;
    v3[83] = v33;
    *(v3 + 79) = v58;
    *(v3 + 81) = v57;
    v3[73] = v5;
    v3[74] = v6;
    v3[76] = v7;
    v3[84] = v60;
    v3[85] = v56;
    v3[86] = v54;
    v3[87] = v52;
    v3[88] = v51;
    v3[89] = v50;
    *(v3 + 720) = v49;
    v3[91] = v47;
    *(v3 + 736) = v46;
    v3[93] = v45;
    v3[94] = v43;
    v3[95] = v41;
    *(v3 + 768) = v40;
    v3[97] = v39;
    *(v3 + 784) = v38;
    v3[99] = v37;
    *(v3 + 800) = v34;
    v3[101] = v32;
    *(v3 + 816) = v29;
    v3[103] = v28;
    *(v3 + 832) = v8;
    *(v3 + 105) = v31;
    *(v3 + 107) = v30;
    *(v3 + 109) = v36;
    *(v3 + 111) = v35;
    v3[113] = v27;
    *(v3 + 912) = v26;
    v3[115] = v25;
    *(v3 + 928) = v24;
    *(v3 + 929) = v9;
    v3[117] = v10;
    *(v3 + 944) = v11;
    v3[119] = v12;
    *(v3 + 960) = v13;
    *(v3 + 121) = v18;
    *(v3 + 123) = v17;
    *(v3 + 1000) = v14;
    *(v3 + 63) = v22;
    *(v3 + 64) = v23;
    *(v3 + 65) = v21;
    *(v3 + 66) = v19;
    *(v3 + 67) = v20;
    sub_10000BE18((v3 + 69), &qword_100842B48, &unk_1006DFD30);
    v15 = swift_task_alloc();
    v3[290] = v15;
    *v15 = v4;
    v15[1] = sub_1003CBC3C;

    return sub_1005B0A4C((v3 + 197), 0xD000000000000024, 0x8000000100714900, _swiftEmptyArrayStorage, 1, 0);
  }
}

uint64_t sub_1003CBC3C()
{

  return _swift_task_switch(sub_1003CBD38, 0, 0);
}

uint64_t sub_1003CBD38()
{
  memcpy(v0 + 136, v0 + 197, 0x1E8uLL);
  if (sub_1000A257C((v0 + 136)) == 1)
  {
    (*(v0[273] + 104))(v0[274], enum case for DIPError.Code.internalError(_:), v0[272]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v1 = v0[273];
    v2 = v0[272];
    v3 = v0[271];
    v4 = v0[270];
    v5 = v0[268];
    v6 = v0[267];
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v31 = *(v1 + 104);
    v31(v4, enum case for DIPError.Code.networkTimeOut(_:), v2);
    (*(v1 + 56))(v4, 0, 1, v2);
    v7 = *(v6 + 48);
    sub_100044D38(v3, v5);
    sub_100044D38(v4, v5 + v7);
    v8 = *(v1 + 48);
    v9 = v8(v5, 1, v2);
    v10 = v0[272];
    if (v9 == 1)
    {
      v11 = v0[271];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v11, &qword_10083B020, &unk_1006D8ED0);
      if (v8(v5 + v7, 1, v10) == 1)
      {
        sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
        v31(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v28 = v0[1];

        return v28();
      }
    }

    else
    {
      sub_100044D38(v0[268], v0[269]);
      if (v8(v5 + v7, 1, v10) != 1)
      {
        v22 = v0[274];
        v23 = v0[273];
        v24 = v0[272];
        v25 = v0[270];
        v26 = v0[269];
        v29 = v0[271];
        v30 = v0[268];
        (*(v23 + 32))(v22, v5 + v7, v24);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v23 + 8);
        v27(v22, v24);
        sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v29, &qword_10083B020, &unk_1006D8ED0);
        v27(v26, v24);
        sub_10000BE18(v30, &qword_10083B020, &unk_1006D8ED0);
        goto LABEL_12;
      }

      v18 = v0[273];
      v19 = v0[272];
      v20 = v0[271];
      v21 = v0[269];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v20, &qword_10083B020, &unk_1006D8ED0);
      (*(v18 + 8))(v21, v19);
    }

    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_12;
  }

  v12 = v0[286];
  v13 = v0[285];
  v14 = v0[284];
  v0[291] = v0[194];
  UUID.init()();
  UUID.uuidString.getter();
  v0[292] = v15;
  (*(v13 + 8))(v12, v14);
  v16 = swift_task_alloc();
  v0[293] = v16;
  *v16 = v0;
  v16[1] = sub_1003CC3C0;

  return sub_1005D7070(1);
}

uint64_t sub_1003CC3C0(uint64_t a1)
{
  *(*v1 + 2352) = a1;

  return _swift_task_switch(sub_1003CC4E0, 0, 0);
}

uint64_t sub_1003CC4E0()
{
  if (v0[294])
  {
    v1 = v0[291];
    if (v1)
    {
      if (*(v1 + 16))
      {
        v2 = sub_10003ADCC(0xD000000000000023, 0x80000001007149E0);
        if (v3)
        {
          v4 = v0[280];
          v5 = v0[279];
          v6 = v0[278];
          v7 = (*(v1 + 56) + 16 * v2);
          v8 = *v7;
          v9 = v7[1];

          sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
          v10._countAndFlagsBits = v8;
          v10._object = v9;
          String.append(_:)(v10);

          v0[261] = 0xD000000000000025;
          v0[262] = 0x8000000100714A10;
          (*(v5 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
          sub_10001F298();
          URL.appending<A>(path:directoryHint:)();
          (*(v5 + 8))(v4, v6);

          v11 = swift_task_alloc();
          v0[295] = v11;
          *v11 = v0;
          v11[1] = sub_1003CCD9C;
          v12 = v0[283];

          return sub_1005CACEC(v12);
        }
      }
    }

    v14 = v0[274];
    v15 = v0[273];
    v16 = v0[272];
    sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
    (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v17 = v0[274];
    v18 = v0[273];
    v19 = v0[272];
    sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
    (*(v18 + 104))(v17, enum case for DIPError.Code.internalError(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v20 = v0[273];
  v21 = v0[272];
  v22 = v0[271];
  v23 = v0[270];
  v24 = v0[268];
  v25 = v0[267];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v44 = *(v20 + 104);
  v44(v23, enum case for DIPError.Code.networkTimeOut(_:), v21);
  (*(v20 + 56))(v23, 0, 1, v21);
  v26 = *(v25 + 48);
  sub_100044D38(v22, v24);
  sub_100044D38(v23, v24 + v26);
  v27 = *(v20 + 48);
  v28 = v27(v24, 1, v21);
  v29 = v0[272];
  if (v28 != 1)
  {
    sub_100044D38(v0[268], v0[269]);
    if (v27(v24 + v26, 1, v29) != 1)
    {
      v35 = v0[274];
      v36 = v0[273];
      v37 = v0[272];
      v38 = v0[270];
      v39 = v0[269];
      v42 = v0[271];
      v43 = v0[268];
      (*(v36 + 32))(v35, v24 + v26, v37);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v35, v37);
      sub_10000BE18(v38, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v42, &qword_10083B020, &unk_1006D8ED0);
      v40(v39, v37);
      sub_10000BE18(v43, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_17;
    }

    v31 = v0[273];
    v32 = v0[272];
    v33 = v0[271];
    v34 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
    (*(v31 + 8))(v34, v32);
    goto LABEL_15;
  }

  v30 = v0[271];
  sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v30, &qword_10083B020, &unk_1006D8ED0);
  if (v27(v24 + v26, 1, v29) != 1)
  {
LABEL_15:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_17;
  }

  sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_17:
  v44(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v41 = v0[1];

  return v41();
}

uint64_t sub_1003CCD9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[296] = a1;
  v4[297] = a2;
  v4[298] = v2;

  if (v2)
  {
    v5 = sub_1003CD558;
  }

  else
  {
    v5 = sub_1003CCEB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003CCEB8()
{
  v1 = v0[298];
  (*(v0[282] + 8))(v0[283], v0[281]);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1003CDF84();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    sub_10000B90C(v0[296], v0[297]);

    v2 = v0[273];
    v3 = v0[272];
    v4 = v0[271];
    v5 = v0[270];
    v6 = v0[268];
    v7 = v0[267];
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v34 = *(v2 + 104);
    v34(v5, enum case for DIPError.Code.networkTimeOut(_:), v3);
    (*(v2 + 56))(v5, 0, 1, v3);
    v8 = *(v7 + 48);
    sub_100044D38(v4, v6);
    sub_100044D38(v5, v6 + v8);
    v9 = *(v2 + 48);
    v10 = v9(v6, 1, v3);
    v11 = v0[272];
    if (v10 == 1)
    {
      v12 = v0[271];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v12, &qword_10083B020, &unk_1006D8ED0);
      if (v9(v6 + v8, 1, v11) == 1)
      {
        sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
        v34(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v31 = v0[1];

        return v31();
      }
    }

    else
    {
      sub_100044D38(v0[268], v0[269]);
      if (v9(v6 + v8, 1, v11) != 1)
      {
        v25 = v0[274];
        v26 = v0[273];
        v27 = v0[272];
        v28 = v0[270];
        v29 = v0[269];
        v32 = v0[271];
        v33 = v0[268];
        (*(v26 + 32))(v25, v6 + v8, v27);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v26 + 8);
        v30(v25, v27);
        sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v32, &qword_10083B020, &unk_1006D8ED0);
        v30(v29, v27);
        sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
        goto LABEL_12;
      }

      v21 = v0[273];
      v22 = v0[272];
      v23 = v0[271];
      v24 = v0[269];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v23, &qword_10083B020, &unk_1006D8ED0);
      (*(v21 + 8))(v24, v22);
    }

    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_12;
  }

  v13 = v0[297];
  v14 = v0[296];
  v15 = v0[277];
  v16 = v0[276];
  v17 = v0[275];

  JWSSignedJSON.payload.getter();
  sub_10000B90C(v14, v13);

  (*(v16 + 8))(v15, v17);
  v35 = v0[263];
  v18 = v0[264];

  v19 = v0[1];

  return v19(v35, v18);
}

uint64_t sub_1003CD558()
{
  (*(v0[282] + 8))(v0[283], v0[281]);

  v1 = v0[273];
  v2 = v0[272];
  v3 = v0[271];
  v4 = v0[270];
  v5 = v0[268];
  v6 = v0[267];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v26 = *(v1 + 104);
  v26(v4, enum case for DIPError.Code.networkTimeOut(_:), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v7 = *(v6 + 48);
  sub_100044D38(v3, v5);
  sub_100044D38(v4, v5 + v7);
  v8 = *(v1 + 48);
  v9 = v8(v5, 1, v2);
  v10 = v0[272];
  if (v9 == 1)
  {
    v11 = v0[271];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v11, &qword_10083B020, &unk_1006D8ED0);
    if (v8(v5 + v7, 1, v10) == 1)
    {
      sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100044D38(v0[268], v0[269]);
  if (v8(v5 + v7, 1, v10) == 1)
  {
    v12 = v0[273];
    v13 = v0[272];
    v14 = v0[271];
    v15 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
    (*(v12 + 8))(v15, v13);
LABEL_6:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_8;
  }

  v16 = v0[274];
  v17 = v0[273];
  v18 = v0[272];
  v19 = v0[270];
  v20 = v0[269];
  v24 = v0[271];
  v25 = v0[268];
  (*(v17 + 32))(v16, v5 + v7, v18);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v16, v18);
  sub_10000BE18(v19, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v24, &qword_10083B020, &unk_1006D8ED0);
  v21(v20, v18);
  sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
LABEL_8:
  v26(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003CDA70()
{
  v1 = v0[273];
  v2 = v0[272];
  v3 = v0[271];
  v4 = v0[270];
  v5 = v0[268];
  v6 = v0[267];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v26 = *(v1 + 104);
  v26(v4, enum case for DIPError.Code.networkTimeOut(_:), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v7 = *(v6 + 48);
  sub_100044D38(v3, v5);
  sub_100044D38(v4, v5 + v7);
  v8 = *(v1 + 48);
  v9 = v8(v5, 1, v2);
  v10 = v0[272];
  if (v9 == 1)
  {
    v11 = v0[271];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v11, &qword_10083B020, &unk_1006D8ED0);
    if (v8(v5 + v7, 1, v10) == 1)
    {
      sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100044D38(v0[268], v0[269]);
  if (v8(v5 + v7, 1, v10) == 1)
  {
    v12 = v0[273];
    v13 = v0[272];
    v14 = v0[271];
    v15 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
    (*(v12 + 8))(v15, v13);
LABEL_6:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_8;
  }

  v16 = v0[274];
  v17 = v0[273];
  v18 = v0[272];
  v19 = v0[270];
  v20 = v0[269];
  v24 = v0[271];
  v25 = v0[268];
  (*(v17 + 32))(v16, v5 + v7, v18);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v16, v18);
  sub_10000BE18(v19, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v24, &qword_10083B020, &unk_1006D8ED0);
  v21(v20, v18);
  sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
LABEL_8:
  v26(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

unint64_t sub_1003CDF84()
{
  result = qword_100842B50;
  if (!qword_100842B50)
  {
    sub_10000B870(&qword_100842B40, &qword_1006DFD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B50);
  }

  return result;
}

unint64_t sub_1003CE018()
{
  result = qword_100842B58;
  if (!qword_100842B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B58);
  }

  return result;
}

unint64_t sub_1003CE07C()
{
  result = qword_100842B60;
  if (!qword_100842B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B60);
  }

  return result;
}

unint64_t sub_1003CE0D4()
{
  result = qword_100842B68;
  if (!qword_100842B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B68);
  }

  return result;
}

void *sub_1003CE134(void *a1)
{
  v3 = sub_100007224(&qword_100842B70, &qword_1006DFFD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000BA08(a1, a1[3]);
  sub_1003CE2A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_1003CE2FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000BB78(a1);
  }

  return v7;
}

unint64_t sub_1003CE2A8()
{
  result = qword_100842B78;
  if (!qword_100842B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B78);
  }

  return result;
}

unint64_t sub_1003CE2FC()
{
  result = qword_100842B80;
  if (!qword_100842B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B80);
  }

  return result;
}

unint64_t sub_1003CE350()
{
  result = qword_100842B90;
  if (!qword_100842B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B90);
  }

  return result;
}

unint64_t sub_1003CE3B8()
{
  result = qword_100842B98;
  if (!qword_100842B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B98);
  }

  return result;
}

unint64_t sub_1003CE410()
{
  result = qword_100842BA0;
  if (!qword_100842BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BA0);
  }

  return result;
}

unint64_t sub_1003CE468()
{
  result = qword_100842BA8;
  if (!qword_100842BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BA8);
  }

  return result;
}

void sub_1003CE4C8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v33 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v31 = v7;
  v29 = v7 + 16;
  v30 = (v7 + 8);
  v34 = a3;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v27 = v6;
  for (i = v9; ; v9 = i)
  {
    v36 = v16;
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    (*(v31 + 16))(v9, *(v34 + 48) + *(v31 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v6);
    v32(&v37, v9);
    if (v4)
    {
      break;
    }

    v35 = 0;
    (*v30)(v9, v6);
    v18 = v37;
    v19 = *(v37 + 16);
    v16 = v36;
    v20 = v36[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_1003C63D0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    if ((v16[3] >> 1) - v16[2] < v19)
    {
      goto LABEL_30;
    }

    sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
    swift_arrayInitWithCopy();

    if (v19)
    {
      v24 = v16[2];
      v25 = __OFADD__(v24, v19);
      v26 = v24 + v19;
      if (v25)
      {
        goto LABEL_31;
      }

      v16[2] = v26;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v35;
    v6 = v27;
  }

  (*v30)(v9, v6);

LABEL_26:
}

void sub_1003CE7B4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v7;
  v30 = v7 + 16;
  v31 = (v7 + 8);
  v35 = a3;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v28 = v6;
  for (i = v9; ; v9 = i)
  {
    v37 = v16;
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v6);
    v33(&v38, v9);
    if (v4)
    {
      break;
    }

    v36 = 0;
    (*v31)(v9, v6);
    v18 = v38;
    v19 = *(v38 + 16);
    v16 = v37;
    v20 = v37[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_1003C65F0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v24 = (v16[3] >> 1) - v16[2];
    type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
    if (v24 < v19)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v16[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_31;
      }

      v16[2] = v27;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v36;
    v6 = v28;
  }

  (*v31)(v9, v6);

LABEL_26:
}

void sub_1003CEAC8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = v7;
  v30 = v7 + 16;
  v31 = (v7 + 8);
  v35 = a3;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v28 = v6;
  for (i = v9; ; v9 = i)
  {
    v37 = v16;
    if (!v13)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v6);
    v33(&v38, v9);
    if (v4)
    {
      break;
    }

    v36 = 0;
    (*v31)(v9, v6);
    v18 = v38;
    v19 = *(v38 + 16);
    v16 = v37;
    v20 = v37[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_1003C65F0(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v24 = (v16[3] >> 1) - v16[2];
    type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
    if (v24 < v19)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v16[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_31;
      }

      v16[2] = v27;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v36;
    v6 = v28;
  }

  (*v31)(v9, v6);

LABEL_26:
}

void *sub_1003CEDDC(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for MobileDocumentElement() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_1003C6618(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for ISO18013ReaderRequest.ElementReference();
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_1003CEFE4(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentRequestType.Storage();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MobileDocumentRequestType.storage.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for MobileDocumentRequestType.Storage.displayOnly(_:))
  {
    v14 = (*(v10 + 96))(v12, v9);
    v15 = &v30;
    v17 = *v12;
    v16 = v12[1];
    __chkstk_darwin(v14);
    v26 = v16;
    v27 = v2;
    v28 = a1;
    v29 = a2;
    v18 = v31;
    v19 = sub_10036687C(sub_1003D4CA8, (&v30 - 6), v17);
    v20 = v18;
  }

  else
  {
    if (v13 != enum case for MobileDocumentRequestType.Storage.dataTransfer(_:) && v13 != enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:))
    {
      (*(v6 + 104))(v8, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v5);
      v15 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003D53D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v27 = 0x8000000100714B50;
      v28 = 117;
      v26 = 0xD000000000000048;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v15;
    }

    v22 = (*(v10 + 96))(v12, v9);
    v15 = &v30;
    v23 = *v12;
    __chkstk_darwin(v22);
    v26 = v2;
    v27 = a1;
    v28 = a2;
    v24 = v31;
    v19 = sub_1003668A8(sub_1003D4C84, (&v30 - 6), v23);
    v20 = v24;
  }

  if (!v20)
  {
    v15 = sub_1006976D8(v19);
  }

  return v15;
}

void sub_1003CF3B8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_1003D53D4(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  String.hash(into:)();
  v9 = v2[3];
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_10000B8B8(v12, *v11);
      Data.hash(into:)();
      sub_10000B90C(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = v2[4];

  sub_10015B46C(a1, v14);
}

Swift::Int sub_1003CF538()
{
  Hasher.init(_seed:)();
  sub_1003CF3B8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003CF57C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1003CF3B8(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003CF5B8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_10014E830(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10014EA44(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_10014DA5C(v5, v9);
}

uint64_t sub_1003CF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  result = MobileDocumentType.iso18013Identifier.getter();
  if (v7)
  {
    goto LABEL_29;
  }

  v17 = v16;
  v73 = result;
  __chkstk_darwin(result);
  v63 = a3;
  v64 = a1;
  sub_1003CE7B4(sub_1003D4CCC, v62, a2);
  v72 = v18;
  __chkstk_darwin(v18);
  v63 = a1;
  v64 = a3;
  sub_1003CE4C8(sub_1003B10D8, v62, a2);
  v71 = 0;
  v67 = a4;
  v68 = a3;
  v69 = a5;
  v70 = v17;
  v65 = a7;
  v66 = a6;
  v20 = v19;
  v21 = sub_10003FAFC(_swiftEmptyArrayStorage);
  v22 = v20;
  v75 = *(v20 + 16);
  if (!v75)
  {
LABEL_27:

    v59 = v70;
    v7 = v71;
    result = sub_1003D03C4(v67, v73, v70);
    if (!v7)
    {
      v60 = v73;
      v61 = v65;
      *v65 = v72;
      v61[1] = v60;
      v61[2] = v59;
      v61[3] = result;
      v61[4] = v21;
      return result;
    }

    a6 = v66;
LABEL_29:
    *a6 = v7;
    return result;
  }

  v23 = 0;
  v24 = (v20 + 56);
  v74 = v20;
  while (v23 < *(v22 + 16))
  {
    v28 = *(v24 - 3);
    v27 = *(v24 - 2);
    v29 = *(v24 - 1);
    v30 = *v24;
    v77 = v23;
    v78 = v29;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v21;
    v33 = sub_10003ADCC(v28, v27);
    v34 = v21[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_32;
    }

    v37 = v32;
    if (v21[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172074();
        v21 = v79;
      }
    }

    else
    {
      sub_10016AE40(v36, isUniquelyReferenced_nonNull_native);
      v21 = v79;
      v38 = sub_10003ADCC(v28, v27);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_36;
      }

      v33 = v38;
    }

    v40 = v78;
    v76 = v27;
    if (v37)
    {
    }

    else
    {
      v21[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v21[6] + 16 * v33);
      *v41 = v28;
      v41[1] = v27;
      *(v21[7] + 8 * v33) = &_swiftEmptyDictionarySingleton;
      v42 = v21[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v21[2] = v44;
    }

    v45 = v21[7];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v45 + 8 * v33);
    v47 = v79;
    *(v45 + 8 * v33) = 0x8000000000000000;
    v48 = sub_10003ADCC(v40, v30);
    v50 = v47[2];
    v51 = (v49 & 1) == 0;
    v43 = __OFADD__(v50, v51);
    v52 = v50 + v51;
    if (v43)
    {
      goto LABEL_33;
    }

    v53 = v49;
    if (v47[3] < v52)
    {
      sub_10016ABA0(v52, v46);
      v48 = sub_10003ADCC(v40, v30);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_36;
      }

LABEL_22:
      if (v53)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (v46)
    {
      goto LABEL_22;
    }

    v58 = v48;
    sub_100171F0C();
    v48 = v58;
    v40 = v78;
    if (v53)
    {
LABEL_4:
      v25 = v48;

      v26 = v79;
      *(v79[7] + v25) = 0;
      goto LABEL_5;
    }

LABEL_23:
    v26 = v79;
    v79[(v48 >> 6) + 8] |= 1 << v48;
    v55 = (v26[6] + 16 * v48);
    *v55 = v40;
    v55[1] = v30;
    *(v26[7] + v48) = 0;
    v56 = v26[2];
    v43 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v43)
    {
      goto LABEL_35;
    }

    v26[2] = v57;
LABEL_5:
    v23 = v77 + 1;
    *(v45 + 8 * v33) = v26;

    v24 += 4;
    v22 = v74;
    if (v75 == v23)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1003CFAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  __chkstk_darwin(v5);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = __chkstk_darwin(v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v56 = &v49 - v13;
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = type metadata accessor for MobileDocumentElement.Element();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentElement.storage.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    sub_100007224(&qword_100842BD0, &unk_1006E0110);
    v21 = swift_allocObject();
    v61 = xmmword_1006BF520;
    *(v21 + 1) = xmmword_1006BF520;
    sub_100007224(&qword_10083C140, &qword_1006DA6C8);
    type metadata accessor for MobileDocumentElement();
    v22 = swift_allocObject();
    *(v22 + 16) = v61;
    static MobileDocumentElement.age.getter();
    v21[4] = v22;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    if (v20 != enum case for MobileDocumentElement.Element.givenName(_:) && v20 != enum case for MobileDocumentElement.Element.familyName(_:) && v20 != enum case for MobileDocumentElement.Element.sex(_:) && v20 != enum case for MobileDocumentElement.Element.portrait(_:) && v20 != enum case for MobileDocumentElement.Element.age(_:) && v20 != enum case for MobileDocumentElement.Element.dateOfBirth(_:) && v20 != enum case for MobileDocumentElement.Element.address(_:) && v20 != enum case for MobileDocumentElement.Element.height(_:) && v20 != enum case for MobileDocumentElement.Element.weight(_:) && v20 != enum case for MobileDocumentElement.Element.eyeColor(_:) && v20 != enum case for MobileDocumentElement.Element.hairColor(_:) && v20 != enum case for MobileDocumentElement.Element.organDonorStatus(_:) && v20 != enum case for MobileDocumentElement.Element.veteranStatus(_:) && v20 != enum case for MobileDocumentElement.Element.issuingAuthority(_:) && v20 != enum case for MobileDocumentElement.Element.drivingPrivileges(_:) && v20 != enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:) && v20 != enum case for MobileDocumentElement.Element.documentNumber(_:) && v20 != enum case for MobileDocumentElement.Element.documentIssueDate(_:) && v20 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
    {
      (*(v17 + 8))(v19, v16);
    }
  }

  v65 = v21;
  sub_100007224(&qword_100842BC0, &qword_1006E0108);
  sub_1000BA30C(&qword_100842BC8, &qword_100842BC0, &qword_1006E0108, &protocol conformance descriptor for [A]);
  Collection.nilIfEmpty.getter();
  v23 = v64;

  if (!v23)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = v55;
  v25 = MobileDocumentRequestType.isRawDataRequest.getter();
  v26 = sub_10037A314(a2, v25 & 1);
  if (v2)
  {

    return v23;
  }

  *&v61 = v15;
  v27 = *(v26 + 2);
  if (!v27)
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_34:
    __chkstk_darwin(v37);
    *(&v49 - 2) = a2;
    *(&v49 - 1) = v24;
    v38 = sub_100366E78(sub_1003D52CC, (&v49 - 4), v23);
    if (v3)
    {
      goto LABEL_35;
    }

    v39 = v38;

    v40 = v31[2];
    if (v40)
    {
      v60 = v39;
      v50 = 0;
      v65 = _swiftEmptyArrayStorage;
      sub_10017344C(0, v40, 0);
      v23 = v65;
      v41 = *(v63 + 16);
      v42 = v31 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v54 = *(v63 + 72);
      v55 = v41;
      v63 += 16;
      v52 = v59 + 32;
      v53 = (v63 - 8);
      v43 = v51;
      v44 = v56;
      do
      {
        *&v61 = v40;
        v45 = v62;
        v46 = v55;
        v55(v44, v42, v62);
        v46(v57, v44, v45);

        ISO18013ReaderRequest.AlternativeDataElementsSet.init(requestedElement:alternativeElementSets:)();
        (*v53)(v44, v45);
        v65 = v23;
        v48 = *(v23 + 16);
        v47 = *(v23 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_10017344C((v47 > 1), v48 + 1, 1);
          v23 = v65;
        }

        *(v23 + 16) = v48 + 1;
        (*(v59 + 32))(v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v48, v43, v58);
        v42 += v54;
        v40 = v61 - 1;
      }

      while (v61 != 1);
LABEL_35:

      return v23;
    }

    return _swiftEmptyArrayStorage;
  }

  v53 = v23;
  v54 = a2;
  v50 = 0;
  v65 = _swiftEmptyArrayStorage;
  v28 = v26;
  result = sub_1001734D0(0, v27, 0);
  v30 = 0;
  v31 = v65;
  v60 = (v63 + 32);
  v32 = v28 + 56;
  while (v30 < *(v28 + 2))
  {
    v33 = v27;

    v34 = v61;
    ISO18013ReaderRequest.ElementReference.init(namespace:elementIdentifier:)();
    v65 = v31;
    v36 = v31[2];
    v35 = v31[3];
    if (v36 >= v35 >> 1)
    {
      sub_1001734D0((v35 > 1), v36 + 1, 1);
      v31 = v65;
    }

    ++v30;
    v31[2] = v36 + 1;
    result = (*(v63 + 32))(v31 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36, v34, v62);
    v32 += 32;
    v27 = v33;
    if (v33 == v30)
    {

      v3 = v50;
      a2 = v54;
      v24 = v55;
      v23 = v53;
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003D0394@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003FB10(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

char *sub_1003D03C4(char *a1, uint64_t a2, void *a3)
{
  v53._countAndFlagsBits = a2;
  v53._object = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = type metadata accessor for DIPError.Code();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = a1;
  sub_100007224(&qword_100842BB0, &qword_1006E0100);
  sub_1000BA30C(&qword_100842BB8, &qword_100842BB0, &qword_1006E0100, &protocol conformance descriptor for Set<A>);
  Collection.nilIfEmpty.getter();
  v14 = v57;
  if (!v57)
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v21))
    {
      v11 = v9;
      goto LABEL_27;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, v21, "Trusted issuer roots list is empty, issuer identifiers will be set to an empty list", v22, 2u);
    v11 = v9;
    goto LABEL_7;
  }

  v15 = UserDefaultsConfiguration.userDefaults.getter();
  v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v17 = NSUserDefaults.internalBool(forKey:)(v16);

  if (v17)
  {

    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_27:

      (*(v6 + 8))(v11, v5);
      return _swiftEmptyArrayStorage;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Issuer validation is disabled, issuer identifiers will be set to an empty list", v20, 2u);
LABEL_7:

    goto LABEL_27;
  }

  object = v53._object;

  v24 = sub_1003D4F40(v14, v53._countAndFlagsBits, object);
  v47 = v3;

  v25 = v24 + 7;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24[7];
  v29 = (v26 + 63) >> 6;
  v54 = kCFAllocatorDefault;
  v55 = v24;

  v30 = 0;
  v48 = _swiftEmptyArrayStorage;
  while (v28)
  {
LABEL_16:
    v32 = (v55[6] + 24 * (__clz(__rbit64(v28)) | (v30 << 6)));
    v34 = *v32;
    v33 = v32[1];
    sub_10000B8B8(*v32, v33);

    sub_10000B8B8(v34, v33);

    isa = Data._bridgeToObjectiveC()().super.isa;
    v36 = SecCertificateCreateWithData(v54, isa);

    if (!v36)
    {
LABEL_30:
      __break(1u);
LABEL_31:

      __break(1u);
      return result;
    }

    v28 &= v28 - 1;
    v52 = SecCertificateRef.subjectKeyIdentifier.getter();
    v38 = v37;

    sub_10000B90C(v34, v33);

    sub_10000B90C(v34, v33);

    if (v38 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1003C55E4(0, *(v48 + 2) + 1, 1, v48);
      }

      v40 = *(v48 + 2);
      v39 = *(v48 + 3);
      if (v40 >= v39 >> 1)
      {
        v48 = sub_1003C55E4((v39 > 1), v40 + 1, 1, v48);
      }

      v41 = v48;
      *(v48 + 2) = v40 + 1;
      v42 = &v41[16 * v40];
      *(v42 + 4) = v52;
      *(v42 + 5) = v38;
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = v25[v31];
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_16;
    }
  }

  v56[0] = v48;

  v43 = v47;
  sub_1003D1BD4(v56);
  if (v43)
  {
    goto LABEL_31;
  }

  result = v56[0];
  if (!*(v56[0] + 2))
  {

    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v45._countAndFlagsBits = 0xD000000000000047;
    v45._object = 0x8000000100714BA0;
    String.append(_:)(v45);
    String.append(_:)(v53);
    v46._countAndFlagsBits = 39;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    (*(v49 + 104))(v51, enum case for DIPError.Code.documentReaderNoTrustedIssuerRoots(_:), v50);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003D53D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1003D0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v181 = a5;
  v7 = v6;
  v169 = a3;
  v170 = a4;
  v184 = a2;
  v168 = a6;
  v176 = type metadata accessor for MobileDocumentElement();
  v183 = *(v176 - 8);
  v9 = __chkstk_darwin(v176);
  v11 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v153 - v12;
  v185 = type metadata accessor for MobileDocumentType();
  v14 = *(v185 - 8);
  v15 = __chkstk_darwin(v185);
  v17 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v153 - v19;
  __chkstk_darwin(v18);
  v22 = &v153 - v21;
  MobileDocumentRequest.documentType.getter();
  v23 = MobileDocumentType.iso18013Identifier.getter();
  if (v6)
  {
    result = (*(v14 + 8))(v22, v185);
    v26 = v181;
    goto LABEL_84;
  }

  v166 = v20;
  i = v13;
  v155 = v23;
  v161 = v17;
  v164 = v11;
  v159 = v24;
  v27 = *(v14 + 8);
  v28 = v185;
  v27(v22, v185);
  v29 = MobileDocumentRequest.elements.getter();
  __chkstk_darwin(v29);
  *(&v153 - 2) = v184;
  *(&v153 - 1) = a1;
  sub_1003CEAC8(sub_1003D5350, (&v153 - 4), v29);
  v175 = v14 + 8;
  v154 = v30;
  v173 = v27;

  v31 = MobileDocumentRequest.elements.getter();
  v32 = sub_1003D2D04(v31, sub_1003D3290, sub_1003D3290);

  v162 = sub_100694310(v32);
  v33 = MobileDocumentRequest.elements.getter();
  v34 = sub_1003D2D04(v33, sub_1003D2E74, sub_1003D2E74);
  v7 = 0;

  v35 = sub_100694310(v34);
  v177 = 0;
  v36 = 0;
  v38 = v35 + 56;
  v37 = *(v35 + 56);
  v160 = v35;
  v39 = 1 << *(v35 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v43 = v183;
  v171 = v183 + 16;
  v172 = (v183 + 8);
  v182 = &_swiftEmptyDictionarySingleton;
  v174 = a1;
  v44 = v28;
  v26 = v181;
  v46 = v166;
  v45 = i;
  v158 = v35 + 56;
  v157 = v42;
LABEL_6:
  v47 = v36;
  v48 = v176;
  if (!v41)
  {
    goto LABEL_8;
  }

  do
  {
    v36 = v47;
LABEL_11:
    (*(v43 + 16))(v45, *(v160 + 48) + *(v43 + 72) * (__clz(__rbit64(v41)) | (v36 << 6)), v48);
    MobileDocumentRequest.documentType.getter();
    v49 = MobileDocumentRequestType.isRawDataRequest.getter();
    v50 = sub_10037A314(v46, v49 & 1);
    if (v7)
    {
      (*v172)(v45, v48);

      v173(v46, v44);

      v149 = v177;
      goto LABEL_83;
    }

    v41 &= v41 - 1;
    v51 = *v172;
    v179 = v50;
    v51(v45, v48);
    v173(v46, v44);
    v52 = v179;
    v53 = *(v179 + 2);
    if (v53)
    {
      v54 = 0;
      v55 = (v179 + 56);
      v163 = 0;
      v156 = v53;
      while (1)
      {
        if (v54 >= *(v52 + 2))
        {
          goto LABEL_90;
        }

        v165 = v54;
        v59 = *(v55 - 3);
        v58 = *(v55 - 2);
        v60 = *v55;
        v178 = *(v55 - 1);

        v180 = v60;

        sub_10001FE8C(v177, 0);
        v61 = v182;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v186 = v61;
        v64 = sub_10003ADCC(v59, v58);
        v65 = v61[2];
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_91;
        }

        v68 = v63;
        if (v61[3] >= v67)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v71 = v186;
            if (v63)
            {
              goto LABEL_26;
            }
          }

          else
          {
            sub_100172074();
            v71 = v186;
            if (v68)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_10016AE40(v67, isUniquelyReferenced_nonNull_native);
          v69 = sub_10003ADCC(v59, v58);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_100;
          }

          v64 = v69;
          v71 = v186;
          if (v68)
          {
LABEL_26:

            goto LABEL_30;
          }
        }

        v72 = sub_10003FB10(_swiftEmptyArrayStorage);
        v71[(v64 >> 6) + 8] |= 1 << v64;
        v73 = (v71[6] + 16 * v64);
        *v73 = v59;
        v73[1] = v58;
        *(v71[7] + 8 * v64) = v72;
        v74 = v71[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_96;
        }

        v71[2] = v76;
LABEL_30:
        v77 = v185;
        v182 = v71;
        v78 = v71[7];
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v186 = *(v78 + 8 * v64);
        v80 = v186;
        *(v78 + 8 * v64) = 0x8000000000000000;
        v81 = sub_10003ADCC(v178, v180);
        v83 = v80[2];
        v84 = (v82 & 1) == 0;
        v75 = __OFADD__(v83, v84);
        v85 = v83 + v84;
        if (v75)
        {
          goto LABEL_92;
        }

        v86 = v82;
        if (v80[3] >= v85)
        {
          v45 = i;
          if (v79)
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v92 = v81;
            sub_100171F0C();
            v45 = i;
            v81 = v92;
            if ((v86 & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_10016ABA0(v85, v79);
          v81 = sub_10003ADCC(v178, v180);
          if ((v86 & 1) != (v87 & 1))
          {
            goto LABEL_100;
          }

          v45 = i;
          if ((v86 & 1) == 0)
          {
LABEL_37:
            v57 = v186;
            v186[(v81 >> 6) + 8] |= 1 << v81;
            v88 = (v57[6] + 16 * v81);
            v89 = v180;
            *v88 = v178;
            v88[1] = v89;
            *(v57[7] + v81) = 0;
            v90 = v57[2];
            v75 = __OFADD__(v90, 1);
            v91 = v90 + 1;
            if (v75)
            {
              goto LABEL_97;
            }

            v57[2] = v91;
            goto LABEL_17;
          }
        }

        v56 = v81;

        v57 = v186;
        *(v186[7] + v56) = 0;
LABEL_17:
        v44 = v77;
        v54 = v165 + 1;
        *(v78 + 8 * v64) = v57;

        v55 += 4;
        v177 = sub_1003D5514;
        v7 = v163;
        v46 = v166;
        v52 = v179;
        if (v156 == v54)
        {

          v177 = sub_1003D5514;
          v26 = v181;
          v43 = v183;
          v38 = v158;
          v42 = v157;
          goto LABEL_6;
        }
      }
    }

    v47 = v36;
    v43 = v183;
    v38 = v158;
    v42 = v157;
  }

  while (v41);
  while (1)
  {
LABEL_8:
    v36 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    if (v36 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v36);
    ++v47;
    if (v41)
    {
      goto LABEL_11;
    }
  }

  v93 = 0;
  v94 = 0;
  v95 = v162 + 56;
  v96 = 1 << *(v162 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v162 + 56);
  v99 = (v96 + 63) >> 6;
  v166 = v99;
  for (i = (v162 + 56); ; v95 = i)
  {
    v100 = v164;
    if (!v98)
    {
      while (1)
      {
        v101 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_89;
        }

        if (v101 >= v99)
        {

          v146 = v155;
          v147 = v159;
          v148 = sub_1003D03C4(v169, v155, v159);
          if (v7)
          {

            goto LABEL_82;
          }

          v150 = v147;
          v151 = v148;
          sub_10001FE8C(v177, 0);
          result = sub_10001FE8C(v93, 0);
          v152 = v168;
          *v168 = v154;
          v152[1] = v146;
          v152[2] = v150;
          v152[3] = v151;
          v152[4] = v182;
          return result;
        }

        v98 = *(v95 + 8 * v101);
        ++v94;
        if (v98)
        {
          goto LABEL_50;
        }
      }
    }

    v101 = v94;
LABEL_50:
    (*(v183 + 16))(v164, *(v162 + 48) + *(v183 + 72) * (__clz(__rbit64(v98)) | (v101 << 6)), v48);
    v102 = v161;
    MobileDocumentRequest.documentType.getter();
    v103 = MobileDocumentRequestType.isRawDataRequest.getter();
    v104 = sub_10037A314(v102, v103 & 1);
    if (v7)
    {
      break;
    }

    v105 = v104;
    v98 &= v98 - 1;
    (*v172)(v100, v48);
    v173(v102, v185);
    v106 = *(v105 + 2);
    if (v106)
    {
      v107 = 0;
      v165 = v105;
      v108 = (v105 + 56);
      v163 = 0;
      v160 = v106;
      while (1)
      {
        if (v107 >= *(v165 + 2))
        {
          goto LABEL_93;
        }

        v178 = v107;
        v112 = *(v108 - 3);
        v113 = *(v108 - 2);
        v114 = *v108;
        v180 = *(v108 - 1);

        v179 = v114;

        sub_10001FE8C(v93, 0);
        v115 = v182;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v186 = v115;
        v118 = sub_10003ADCC(v112, v113);
        v119 = v115[2];
        v120 = (v117 & 1) == 0;
        v121 = v119 + v120;
        if (__OFADD__(v119, v120))
        {
          goto LABEL_94;
        }

        v122 = v117;
        if (v115[3] >= v121)
        {
          if (v116)
          {
            v125 = v186;
            if (v117)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_100172074();
            v125 = v186;
            if (v122)
            {
              goto LABEL_65;
            }
          }
        }

        else
        {
          sub_10016AE40(v121, v116);
          v123 = sub_10003ADCC(v112, v113);
          if ((v122 & 1) != (v124 & 1))
          {
            goto LABEL_100;
          }

          v118 = v123;
          v125 = v186;
          if (v122)
          {
LABEL_65:

            goto LABEL_69;
          }
        }

        v126 = sub_10003FB10(_swiftEmptyArrayStorage);
        v125[(v118 >> 6) + 8] |= 1 << v118;
        v127 = (v125[6] + 16 * v118);
        *v127 = v112;
        v127[1] = v113;
        *(v125[7] + 8 * v118) = v126;
        v128 = v125[2];
        v75 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v75)
        {
          goto LABEL_98;
        }

        v125[2] = v129;
LABEL_69:
        v130 = v179;
        v182 = v125;
        v131 = v125[7];
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v186 = *(v131 + 8 * v118);
        v133 = v186;
        *(v131 + 8 * v118) = 0x8000000000000000;
        v134 = sub_10003ADCC(v180, v130);
        v136 = v133[2];
        v137 = (v135 & 1) == 0;
        v75 = __OFADD__(v136, v137);
        v138 = v136 + v137;
        if (v75)
        {
          goto LABEL_95;
        }

        v139 = v135;
        if (v133[3] < v138)
        {
          sub_10016ABA0(v138, v132);
          v134 = sub_10003ADCC(v180, v130);
          if ((v139 & 1) != (v140 & 1))
          {
            goto LABEL_100;
          }

LABEL_74:
          v141 = v178;
          if ((v139 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_55;
        }

        if (v132)
        {
          goto LABEL_74;
        }

        v145 = v134;
        sub_100171F0C();
        v134 = v145;
        v141 = v178;
        if ((v139 & 1) == 0)
        {
LABEL_75:
          v110 = v186;
          v186[(v134 >> 6) + 8] |= 1 << v134;
          v142 = (v110[6] + 16 * v134);
          *v142 = v180;
          v142[1] = v130;
          *(v110[7] + v134) = 1;
          v143 = v110[2];
          v75 = __OFADD__(v143, 1);
          v144 = v143 + 1;
          if (v75)
          {
            goto LABEL_99;
          }

          v110[2] = v144;
          goto LABEL_56;
        }

LABEL_55:
        v109 = v134;

        v110 = v186;
        *(v186[7] + v109) = 1;
LABEL_56:
        v111 = v160;
        v107 = v141 + 1;
        *(v131 + 8 * v118) = v110;

        v108 += 4;
        v93 = sub_1003D5514;
        v7 = v163;
        if (v111 == v107)
        {

          v93 = sub_1003D5514;
          v94 = v101;
          v26 = v181;
          v48 = v176;
          goto LABEL_53;
        }
      }
    }

    v94 = v101;
LABEL_53:
    v99 = v166;
  }

  (*v172)(v100, v48);

  v173(v102, v185);
LABEL_82:

  sub_10001FE8C(v177, 0);
  v149 = v93;
LABEL_83:
  result = sub_10001FE8C(v149, 0);
LABEL_84:
  *v26 = v7;
  return result;
}