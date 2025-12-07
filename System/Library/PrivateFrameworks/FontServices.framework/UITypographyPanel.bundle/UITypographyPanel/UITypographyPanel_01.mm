uint64_t sub_127DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_16500(a1, a2, a3), v4 = sub_59870(), v7 = -1 << *(a3 + 32), v8 = v4 & ~v7, ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    sub_D660(v4, v5, v6);
    do
    {
      v10 = sub_598A0();
      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_128C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_59EC0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_12970@<X0>(uint64_t a1@<X8>)
{
  v10 = *v1;
  v11 = *(v1 + 1);
  v8 = v11;
  sub_10590(sub_18750, v9, a1);
  type metadata accessor for TypographyPanelViewModel(0);
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  v3 = sub_58AA0();
  v4 = (a1 + *(sub_187C(&qword_70E98, &qword_5C0E8) + 36));
  *v4 = v3;
  v4[1] = v8;
  KeyPath = swift_getKeyPath();
  v6 = a1 + *(sub_187C(&qword_70EA0, qword_5C118) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
}

uint64_t sub_12AB8(uint64_t a1)
{
  v2 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_6610(a1, &v6 - v3, &qword_71078, &qword_5C378);
  return sub_296B8(v4);
}

uint64_t sub_12B60@<X0>(unint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int a5@<W5>, uint64_t a6@<X8>)
{
  v54 = a5;
  v58 = a4;
  v61 = a6;
  v59 = sub_187C(&qword_710A8, &unk_5C3E0);
  v55 = *(v59 - 8);
  v9 = __chkstk_darwin(v59);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v10;
  __chkstk_darwin(v9);
  v60 = &v50 - v11;
  v12 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 25);
  if (*(a1 + 25))
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 24);
  v51 = v19;
  v62 = v14;
  sub_35570(a2, a3, v15, v14);
  v53 = a3;
  v21 = *(a3 + 48);
  v22 = *(v21 + 16);
  v52 = v18;
  if (v22 && (v23 = (v21 + 32 * v22), v24 = *v23, v25 = v23[1], v26 = v23[2], v27 = *(v23 + 24), v28 = *(v23 + 25), v29 = , v26))
  {
    if (v28)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    *&v68 = v24;
    *(&v68 + 1) = v25;
    *&v69 = v26;
    WORD4(v69) = v32 | v27;
    *&v65 = v15;
    *(&v65 + 1) = v16;
    *&v66 = v17;
    BYTE8(v66) = v20;
    BYTE9(v66) = v18;
    sub_17BAC(v29, v30, v31);

    v33 = sub_598A0();
  }

  else
  {

    v33 = 0;
  }

  v34 = v15;

  v35 = v53;
  sub_E9C0(v53, &v68);
  v36 = v58;

  v37 = v60;
  sub_484C0(v35, v34, v16, v17, v51 | v20, v36, v54, v33 & 1, v60);
  KeyPath = swift_getKeyPath();
  v39 = v20;
  v40 = (v37 + *(v59 + 36));
  v41 = sub_187C(&qword_70FE0, &qword_5C320);
  sub_6610(v62, v40 + *(v41 + 28), &qword_71078, &qword_5C378);
  *v40 = KeyPath;
  v42 = v57;
  sub_6610(v37, v57, &qword_710A8, &unk_5C3E0);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_178D8(v42, v44 + v43);
  v45 = swift_allocObject();
  *(v45 + 16) = v36;
  *(v45 + 24) = v34;
  *(v45 + 32) = v16;
  *(v45 + 40) = v17;
  *(v45 + 48) = v39;
  *(v45 + 49) = v52;
  sub_17A7C();

  sub_48EF0(sub_17948, v44, sub_17A10, v45, &v68);
  v71 = v70;
  v65 = v68;
  v66 = v69;
  v67 = v70;
  v63 = v16;
  v64 = v17;
  sub_187C(&qword_71010, &qword_5C338);
  v46 = sub_6ED0(&qword_71008, &qword_71010, &qword_5C338, &unk_5E318);
  sub_66D8(v46, v47, v48);
  sub_59440();

  sub_6678(&v71, &qword_70C88, &unk_5AE60);
  sub_6678(v37, &qword_710A8, &unk_5C3E0);
  return sub_6678(v62, &qword_71078, &qword_5C378);
}

uint64_t sub_130A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, char a12, uint64_t a13, void *a14)
{
  v45 = a7;
  v46 = a5;
  v47 = a6;
  v51 = a4;
  v52 = a9;
  v53 = a1;
  v50 = a14;
  v48 = a13;
  v44 = a10;
  v17 = type metadata accessor for FeatureToggleView(0);
  __chkstk_darwin(v17 - 8);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3;
  v20 = a2;
  if (sub_51BB0())
  {
    a2 = *(a8 + 24);
    a3 = *(a8 + 32);
  }

  v21 = *(a11 + 16);
  if (!v21 || (v22 = (a11 + 56 * v21), v23 = *(v22 - 3), v24 = *(v22 - 2), v25 = *(v22 - 1), v26 = *v22, v27 = v22[1], v28 = , !v25))
  {

LABEL_11:
    a12 = 0;
    goto LABEL_12;
  }

  if (v27)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  v58[0] = v23;
  v58[1] = v24;
  v58[2] = v25;
  v59 = v31 | v26;
  v54 = v53;
  v55 = v20;
  v56 = v19;
  v57 = v51 & 0x101;
  sub_17BAC(v28, v29, v30);

  v32 = sub_598A0();

  if ((v32 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v34 = v46;

  v35 = v47;

  sub_E9C0(a8, v58);
  v36 = v49;
  sub_47354(a2, a3, a8, v44, a12 & 1, v34, v35, v45 & 1, v49);
  KeyPath = swift_getKeyPath();
  v38 = sub_187C(&qword_70FC8, &qword_5C318);
  v39 = v52;
  v40 = (v52 + *(v38 + 36));
  v41 = sub_187C(&qword_70FE0, &qword_5C320);
  sub_35570(v50, a8, v53, v40 + *(v41 + 28));
  *v40 = KeyPath;
  return sub_17FFC(v36, v39, type metadata accessor for FeatureToggleView);
}

uint64_t sub_13368(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_16500(a1, a2, a3);
  v8 = sub_59870();
  v11 = -1 << *(v7 + 32);
  v12 = v8 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    sub_D660(v8, v9, v10);
    while ((sub_598A0() & 1) == 0)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_E9AC(a2, a3);
    v16 = *(*(v7 + 48) + 16 * v12);
    *a1 = v16;
    sub_B848(v16, *(&v16 + 1));
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_B848(a2, a3);
    sub_13A30(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_134D4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_59EC0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_13BC0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_135B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_71128, qword_5C458);
  result = sub_59C20();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = (v3 + 56);
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v27 = *(*(v3 + 48) + 16 * (v16 | (v8 << 6)));
      sub_16500(result, v5, v6);
      result = sub_59870();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v14 + 8 * v21);
          if (v25 != -1)
          {
            v15 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v27;
      ++*(v7 + 16);
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1380C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_71108, &qword_5C430);
  result = sub_59C20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_59EC0();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_13A30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    v10 = sub_135B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_13CE0();
      goto LABEL_12;
    }

    v10 = sub_13F7C(v8 + 1);
  }

  v13 = *v4;
  sub_16500(v10, v11, v12);
  result = sub_59870();
  v16 = -1 << *(v13 + 32);
  a3 = result & ~v16;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v17 = ~v16;
    sub_D660(result, v14, v15);
    do
    {
      result = sub_598A0();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v7;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_59E90();
  __break(1u);
  return result;
}

uint64_t sub_13BC0(uint64_t result, unint64_t a2, char a3)
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
    sub_1380C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_13E3C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_141C0(v5 + 1);
  }

  v8 = *v3;
  result = sub_59EC0();
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_13CE0()
{
  v1 = v0;
  sub_187C(&qword_71128, qword_5C458);
  v2 = *v0;
  v3 = sub_59C10();
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
        result = sub_B848(v18, *(&v18 + 1));
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

void *sub_13E3C()
{
  v1 = v0;
  sub_187C(&qword_71108, &qword_5C430);
  v2 = *v0;
  v3 = sub_59C10();
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

uint64_t sub_13F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_71128, qword_5C458);
  result = sub_59C20();
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
      v30 = *(*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v18 = *(*(v3 + 48) + 16 * (v15 | (v6 << 6)) + 8);
      v19 = sub_B848(v30, *(&v30 + 1));
      sub_16500(v19, v20, v21);
      result = sub_59870();
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
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v30;
      v14[1] = v18;
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

uint64_t sub_141C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_71108, &qword_5C430);
  result = sub_59C20();
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
      result = sub_59EC0();
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

unint64_t sub_143B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & 1;
  sub_D600(a1, a2, a3);
  v6 = sub_59870();
  return sub_14438(a1, a2, v5, v6);
}

unint64_t sub_14438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_D5A8(a1, a2, a3);
    do
    {
      if (sub_598A0())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_14520(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1581C(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_59E50(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v17 = v1;
      v8 = v2 + 33;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          v14 = *(v13 - 1);
          v15 = sub_2BC64(v11 & 1);
          if (v15 >= sub_2BC64(v14))
          {
            break;
          }

          v11 = *v13;
          *v13 = *(v13 - 1);
          *--v13 = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v8;
        --v9;
      }

      v1 = v17;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_146A0(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *v1 = v2;
}

void sub_146A0(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_5A8C(v8);
    }

    v78 = *(v8 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = *&v8[16 * v78];
        v80 = *&v8[16 * v78 + 24];
        sub_14C68((*a3 + v79), (*a3 + *&v8[16 * v78 + 16]), (*a3 + v80), v9);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v80 < v79)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5A8C(v8);
        }

        if (v78 - 2 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v81 = &v8[16 * v78];
        *v81 = v79;
        *(v81 + 1) = v80;
        sub_14E94(v78 - 1);
        v78 = *(v8 + 2);
        if (v78 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = v9[*a3];
      v12 = sub_2BC64(*(*a3 + v7));
      v13 = sub_2BC64(v11);
      v14 = v9;
      while ((v6 - 2) != v9)
      {
        v15 = v9[v10 + 1];
        v16 = sub_2BC64((v9++)[v10 + 2]);
        if (v12 < v13 == v16 >= sub_2BC64(v15))
        {
          v6 = (v9 + 1);
          break;
        }
      }

      v9 = v14;
      if (v12 < v13)
      {
        if (v6 < v14)
        {
          goto LABEL_119;
        }

        if (v14 < v6)
        {
          v17 = v6 - 1;
          v18 = v14;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v19 = v18[v21];
              v18[v21] = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
        }
      }

      v7 = v6;
    }

    v22 = a3[1];
    if (v7 < v22)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_5AA0(0, *(v8 + 2) + 1, 1, v8);
    }

    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v8 = sub_5AA0((v32 > 1), v33 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = &v8[16 * v33];
    *(v35 + 4) = v9;
    *(v35 + 5) = v7;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v8 + 4);
          v39 = *(v8 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_59:
          if (v41)
          {
            goto LABEL_106;
          }

          v54 = &v8[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = &v8[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_113;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v64 = &v8[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_73:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v8[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_111;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_80:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
        {
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

        v9 = *&v8[16 * v75 + 32];
        v76 = *&v8[16 * v37 + 40];
        sub_14C68(&v9[*a3], (*a3 + *&v8[16 * v37 + 32]), (*a3 + v76), v36);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v76 < v9)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5A8C(v8);
        }

        if (v75 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v77 = &v8[16 * v75];
        *(v77 + 4) = v9;
        *(v77 + 5) = v76;
        sub_14E94(v37);
        v34 = *(v8 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v8[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_104;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_105;
      }

      v49 = &v8[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_107;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = &v8[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_114;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_120;
  }

  v83 = v5;
  if (&v9[a4] >= v22)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = &v9[a4];
  }

  if (v5 < v9)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v7 == v5)
  {
LABEL_38:
    v5 = v83;
    goto LABEL_39;
  }

  v23 = *a3;
  v24 = (*a3 + v7);
  v82 = v9;
  v25 = &v9[-v7];
LABEL_31:
  v26 = *(v23 + v7);
  v27 = v25;
  v28 = v24;
  while (1)
  {
    v29 = *(v28 - 1);
    v30 = sub_2BC64(v26 & 1);
    if (v30 >= sub_2BC64(v29))
    {
LABEL_30:
      ++v7;
      ++v24;
      --v25;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      v9 = v82;
      goto LABEL_38;
    }

    if (!v23)
    {
      break;
    }

    v26 = *v28;
    *v28 = *(v28 - 1);
    *--v28 = v26;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_30;
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
}

uint64_t sub_14C68(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v16 = (v6 - 1);
        --v5;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *v16;
          v19 = sub_2BC64(*(v10 - 1));
          if (v19 < sub_2BC64(v18))
          {
            break;
          }

          v20 = v10 - 1;
          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v20;
          }

          --v5;
          --v10;
          if (v20 <= v4)
          {
            v10 = v20;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v16;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v16 > v7);
      v6 = v16;
      if (v16 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = sub_2BC64(*v6);
        if (v12 >= sub_2BC64(v11))
        {
          v15 = v4 + 1;
          v14 = v4;
          v13 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v15)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v13 = v6 + 1;
          v14 = v6;
          if (v7 >= v6 && v7 < v13)
          {
            goto LABEL_16;
          }
        }

        *v7 = *v14;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_14E94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5A8C(v3);
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

char *sub_14F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71120, &qword_5C450);
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

void *sub_15014(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_710E0, &qword_5C408);
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
    sub_187C(&qword_710D8, &qword_5C400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1515C(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_71110, &qword_5C438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71118, &unk_5C440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_152A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_16500(a1, a2, a3);
  v5 = sub_59870();
  v8 = -1 << *(v4 + 32);
  v9 = v5 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  sub_D660(v5, v6, v7);
  while ((sub_598A0() & 1) == 0)
  {
    v9 = (v9 + 1) & v10;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v15 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_13CE0();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 16 * v9);
  sub_154E0(v9);
  result = v14;
  *v3 = v15;
  return result;
}

uint64_t sub_153F0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_59EC0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_13E3C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_15698(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_154E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_59BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v11 = (v8 + 1) & v7;
      sub_16500(v8, v9, v10);
      do
      {
        v12 = sub_59870() & v7;
        if (v2 >= v11)
        {
          if (v12 >= v11 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 16 * v2);
            v17 = (v15 + 16 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v11 || v2 >= v12)
        {
          goto LABEL_16;
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

unint64_t sub_15698(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_59BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_59EC0() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_15830(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71120, &qword_5C450);
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

uint64_t sub_15924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  sub_16500(a1, a2, a3);
  result = sub_59AA0();
  v10 = result;
  if (v4)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      sub_B848(v8, *v6);
      sub_13368(v9, v8, v7);
      sub_E9AC(v9[0], v9[1]);
      v6 += 2;
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

unint64_t sub_159C0()
{
  result = qword_70E78;
  if (!qword_70E78)
  {
    v1 = sub_1F64(&qword_70E70, &qword_5C0E0);
    sub_15A44(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E78);
  }

  return result;
}

unint64_t sub_15A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70E80;
  if (!qword_70E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E80);
  }

  return result;
}

unint64_t sub_15A98()
{
  result = qword_70E88;
  if (!qword_70E88)
  {
    v1 = sub_1F64(&qword_70E70, &qword_5C0E0);
    sub_15B1C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E88);
  }

  return result;
}

unint64_t sub_15B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70E90;
  if (!qword_70E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E90);
  }

  return result;
}

uint64_t sub_15BB4(uint64_t a1, int a2)
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

uint64_t sub_15BFC(uint64_t result, int a2, int a3)
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

__n128 sub_15C48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_15C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_15CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_15D3C()
{
  result = qword_70EB8;
  if (!qword_70EB8)
  {
    sub_1F64(&qword_70EA0, qword_5C118);
    sub_15DF4();
    sub_6ED0(&qword_70F18, &qword_70F20, &qword_5EE50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EB8);
  }

  return result;
}

unint64_t sub_15DF4()
{
  result = qword_70EC0;
  if (!qword_70EC0)
  {
    sub_1F64(&qword_70E98, &qword_5C0E8);
    sub_15EAC();
    sub_6ED0(&qword_70F08, &qword_70F10, &unk_5C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EC0);
  }

  return result;
}

unint64_t sub_15EAC()
{
  result = qword_70EC8;
  if (!qword_70EC8)
  {
    sub_1F64(&qword_70ED0, &qword_5C270);
    sub_1600C();
    sub_1F64(&qword_70EF0, &qword_5C280);
    sub_1F64(&qword_70EF8, &qword_5C288);
    sub_59150();
    sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EC8);
  }

  return result;
}

unint64_t sub_1600C()
{
  result = qword_70ED8;
  if (!qword_70ED8)
  {
    v1 = sub_1F64(&qword_70EE0, &qword_5C278);
    sub_16098(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70ED8);
  }

  return result;
}

unint64_t sub_16098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70EE8;
  if (!qword_70EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70EE8);
  }

  return result;
}

unint64_t sub_16114()
{
  result = qword_70F40;
  if (!qword_70F40)
  {
    sub_1F64(&qword_70F38, &qword_5C2B0);
    sub_16198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F40);
  }

  return result;
}

unint64_t sub_16198()
{
  result = qword_70F48;
  if (!qword_70F48)
  {
    sub_1F64(&qword_70F50, &qword_5C2B8);
    sub_6ED0(&qword_70F58, &qword_70F60, &unk_5C2C0, &unk_5E0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F48);
  }

  return result;
}

uint64_t sub_16248()
{

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_16290@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v24 = v2[5];
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_1FE20();
  if (*(v9 + 16) && (v10 = sub_A4D8(v7, v8), (v11 & 1) != 0))
  {
    v23 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_59A80();

  sub_B848(v7, v8);
  v12 = sub_59A70();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v5;
  v13[5] = v4;
  v13[6] = v6;
  v13[7] = v7;
  v13[8] = v8;

  sub_B848(v7, v8);
  v14 = sub_59A70();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v5;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v7;
  v15[8] = v8;
  sub_59710();
  v16 = v25;
  v17 = v26.n128_u8[0];
  v18 = swift_allocObject();
  v18[2] = v23;
  v18[3] = v5;
  v18[4] = v4;
  v18[5] = v6;
  v18[6] = v24;
  v18[7] = v7;
  v18[8] = v8;
  sub_B848(v7, v8);

  sub_B848(v7, v8);
  v19 = v24;
  sub_187C(&qword_70F80, &unk_5C2F0);
  sub_167A8();
  v20 = sub_DBD4();
  sub_3CC80(v20 & 1, v16, *(&v16 + 1), v17, v7, v8, sub_16794, v18, &v25);
  v21 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v21;
  *(a2 + 64) = v29;
  result = v26;
  *a2 = v25;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_16500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70F78;
  if (!qword_70F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F78);
  }

  return result;
}

uint64_t sub_16558@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  LOBYTE(v4) = sub_127DC(v3, v4, v6);

  *a1 = (v4 & 1) == 0;
  return result;
}

uint64_t sub_165E0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) >= 9uLL)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_16638(_BYTE *a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  if (*a1 == 1)
  {
    sub_187C(&qword_70E70, &qword_5C0E0);
    sub_58B50();
    v5 = sub_152A8(v2, v3, v4);
    sub_18728(v5, v6);
  }

  else
  {
    sub_B848(*(v1 + 56), *(v1 + 64));
    sub_187C(&qword_70E70, &qword_5C0E0);
    sub_58B50();
    sub_13368(v8, v2, v3);
    sub_E9AC(v8[0], v8[1]);
  }

  return sub_58B60();
}

uint64_t sub_16734()
{

  if (*(v0 + 64) >= 9uLL)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_167A8()
{
  result = qword_70F88;
  if (!qword_70F88)
  {
    sub_1F64(&qword_70F80, &unk_5C2F0);
    sub_2118();
    sub_16834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F88);
  }

  return result;
}

unint64_t sub_16834()
{
  result = qword_70F90;
  if (!qword_70F90)
  {
    sub_1F64(&qword_70F98, &qword_5C300);
    sub_168B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70F90);
  }

  return result;
}

unint64_t sub_168B8()
{
  result = qword_70FA0;
  if (!qword_70FA0)
  {
    sub_1F64(&qword_70FA8, &qword_5C308);
    sub_16944();
    sub_16C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FA0);
  }

  return result;
}

unint64_t sub_16944()
{
  result = qword_70FB0;
  if (!qword_70FB0)
  {
    sub_1F64(&qword_70FB8, &qword_5C310);
    sub_169D0();
    sub_16AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FB0);
  }

  return result;
}

unint64_t sub_169D0()
{
  result = qword_70FC0;
  if (!qword_70FC0)
  {
    sub_1F64(&qword_70FC8, &qword_5C318);
    sub_17B64(&qword_70FD0, type metadata accessor for FeatureToggleView, &unk_5E278);
    sub_6ED0(&qword_70FD8, &qword_70FE0, &qword_5C320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FC0);
  }

  return result;
}

unint64_t sub_16AB8()
{
  result = qword_70FE8;
  if (!qword_70FE8)
  {
    sub_1F64(&qword_70FF0, &qword_5C328);
    sub_16B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FE8);
  }

  return result;
}

unint64_t sub_16B3C()
{
  result = qword_70FF8;
  if (!qword_70FF8)
  {
    sub_1F64(&qword_71000, &qword_5C330);
    sub_6ED0(&qword_71008, &qword_71010, &qword_5C338, &unk_5E318);
    sub_17B64(&qword_71018, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70FF8);
  }

  return result;
}

unint64_t sub_16C24()
{
  result = qword_71020;
  if (!qword_71020)
  {
    sub_1F64(&qword_71028, &qword_5C340);
    sub_169D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71020);
  }

  return result;
}

uint64_t sub_16CA8()
{
  if (*(v0 + 32) >= 9uLL)
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_16D08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(v2 + 16);
  v4 = *(v2 + 40);
  v30 = *(v2 + 48);
  v29 = *(v2 + 64);
  v57 = *(a1 + 8);
  v5 = a1[3];
  v56[2] = a1[2];
  v56[3] = v5;
  v6 = a1[1];
  v56[0] = *a1;
  v56[1] = v6;
  v7 = *(a1 + 4);
  v8 = *(v4 + 16);
  if (!v8)
  {
    v10 = 0;
    v19 = 0;
    v18 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v25 = 0;
    if (!v7)
    {
LABEL_8:
      *&v41 = v25;
      *(&v41 + 1) = v13;
      *&v42 = v15;
      *(&v42 + 1) = v14;
      *&v43 = 0;
      *(&v43 + 1) = v16;
      *&v44 = v18;
      *(&v44 + 1) = v19;
      v45 = v10;
      sub_E9C0(v56, &v51);
      sub_6678(&v41, &qword_71058, &qword_5C360);
      v24 = 1;
      return sub_11250(v31, v56, v24 & 1, v30, v29, a2);
    }

LABEL_6:
    v33 = v25;
    sub_E9C0(v56, &v41);
    v17 = 0;
LABEL_10:
    *&v41 = v33;
    *(&v41 + 1) = v13;
    *&v42 = v15;
    *(&v42 + 1) = v14;
    *&v43 = v17;
    *(&v43 + 1) = v16;
    *&v44 = v18;
    *(&v44 + 1) = v19;
    v26 = a1[1];
    v46 = *a1;
    v47 = v26;
    v45 = v10;
    v48 = v7;
    v27 = *(a1 + 56);
    v49 = *(a1 + 40);
    v50 = v27;
    sub_6678(&v41, &qword_71050, &qword_5C358);
    v24 = 0;
    return sub_11250(v31, v56, v24 & 1, v30, v29, a2);
  }

  v9 = v4 + 72 * v8;
  v41 = *(v9 - 40);
  v10 = *(v9 + 24);
  v11 = *(v9 + 8);
  v12 = *(v9 - 8);
  v42 = *(v9 - 24);
  v43 = v12;
  v44 = v11;
  v45 = v10;
  v13 = *(&v41 + 1);
  v33 = v41;
  v14 = *(&v42 + 1);
  v15 = v42;
  v16 = *(&v12 + 1);
  v17 = v12;
  v19 = *(&v11 + 1);
  v18 = v11;
  sub_E9C0(&v41, &v51);
  if (!v17)
  {
    v25 = v33;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v41 = __PAIR128__(v13, v33);
  v42 = __PAIR128__(v14, v15);
  v43 = __PAIR128__(v16, v17);
  v44 = __PAIR128__(v19, v18);
  v45 = v10;
  v55 = v10;
  v53 = __PAIR128__(v16, v17);
  v54 = __PAIR128__(v19, v18);
  v51 = __PAIR128__(v13, v33);
  v52 = __PAIR128__(v14, v15);
  if (!v7)
  {
    *v40 = v43;
    *&v40[16] = v44;
    *&v40[32] = v45;
    v38 = v41;
    v39 = v42;
    sub_E9C0(v56, v36);
    sub_6610(&v41, v36, &qword_71058, &qword_5C360);
    sub_B818(&v38);
    goto LABEL_10;
  }

  v20 = a1[1];
  v38 = *a1;
  v39 = v20;
  *&v40[8] = *(a1 + 40);
  *&v40[24] = *(a1 + 56);
  *v40 = v7;
  sub_E9C0(v56, v36);
  v21 = sub_6610(&v41, v36, &qword_71058, &qword_5C360);
  sub_17080(v21, v22, v23);
  v24 = sub_598A0();
  v34[2] = *v40;
  v34[3] = *&v40[16];
  v35 = *&v40[32];
  v34[0] = v38;
  v34[1] = v39;
  sub_B818(v34);
  v36[2] = v53;
  v36[3] = v54;
  v37 = v55;
  v36[0] = v51;
  v36[1] = v52;
  sub_B818(v36);
  v38 = __PAIR128__(v13, v33);
  v39 = __PAIR128__(v14, v15);
  *v40 = __PAIR128__(v16, v17);
  *&v40[16] = __PAIR128__(v19, v18);
  *&v40[32] = v10;
  sub_6678(&v38, &qword_71058, &qword_5C360);
  return sub_11250(v31, v56, v24 & 1, v30, v29, a2);
}

unint64_t sub_1702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71048;
  if (!qword_71048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71048);
  }

  return result;
}

unint64_t sub_17080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71060;
  if (!qword_71060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71060);
  }

  return result;
}

uint64_t sub_170DC(unsigned __int8 *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v25 = *(v1 + 72);
  v26 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  if (*(v1 + 89))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  swift_unownedRetainStrong();
  v9 = sub_1FAA4();

  v27 = v2;
  if (*(v9 + 16))
  {
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = sub_143B0(v10, v3, v4);
    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v13);

      goto LABEL_9;
    }
  }

  else
  {
    v11 = v3;
    v12 = v4;
  }

  v15 = &_swiftEmptySetSingleton;
LABEL_9:

  v29 = v15;
  v16 = sub_51FA0(v26, v25, v5, v7 | v6);
  if (v8)
  {
    if ((v17 & 1) == 0)
    {
      sub_153F0(v16);
    }

    v18 = v26;
  }

  else
  {
    if (v17)
    {
      sub_153F0(v26);
      goto LABEL_17;
    }

    v19 = v16;
    sub_153F0(v26);
    v18 = v19;
  }

  sub_134D4(v28, v18);
LABEL_17:
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v27;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  v21 = v29;
  v22 = v29[2];
  sub_B4D0(v27, v11, v12);
  if (!v22)
  {

    v21 = &_swiftEmptySetSingleton;
  }

  *(inited + 56) = v21;
  v23 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v23);
}

uint64_t sub_172E4()
{
  sub_EAAC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1739C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_173D4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (*(v1 + 16))(*a1, *(a1 + 8), *(a1 + 16), v2 | *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t sub_17428()
{

  sub_EAAC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 113, 7);
}

unint64_t sub_174A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_710A0;
  if (!qword_710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710A0);
  }

  return result;
}

uint64_t sub_174FC()
{
  v1 = sub_187C(&qword_710A8, &unk_5C3E0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_EAAC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v6 = type metadata accessor for FeatureOptionView(0);
  v7 = (v0 + v4 + *(v6 + 36));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v22 = v3;

      v9 = v7 + *(v8 + 28);
      v10 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
      {
        v20 = sub_58920();
        v21 = *(*(v20 - 8) + 8);
        v21(v9, v20);
        v21(&v9[*(v10 + 48)], v20);
      }

      v3 = v22;
    }
  }

  else
  {
  }

  sub_178CC(*(v5 + *(v6 + 40)), *(v5 + *(v6 + 40) + 8));
  v11 = v5 + *(v1 + 36);

  v12 = (v11 + *(sub_187C(&qword_70FE0, &qword_5C320) + 28));
  v13 = type metadata accessor for FeaturePreviewConfiguration(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v14 = v12 + *(v13 + 28);
    v15 = sub_187C(&qword_710B8, &unk_5C3F0);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      v23 = v3;
      v16 = sub_58920();
      v17 = *(*(v16 - 8) + 8);
      v17(v14, v16);
      v18 = v16;
      v3 = v23;
      v17(&v14[*(v15 + 48)], v18);
    }
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_178CC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_178D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_187C(&qword_710A8, &unk_5C3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_179D0()
{

  return _swift_deallocObject(v0, 50, 7);
}

void sub_17A10()
{
  if (*(*(v0 + 16) + 16))
  {
    sub_187C(&qword_710D8, &qword_5C400);
    sub_596F0();
  }
}

unint64_t sub_17A7C()
{
  result = qword_710C0;
  if (!qword_710C0)
  {
    sub_1F64(&qword_710A8, &unk_5C3E0);
    sub_17B64(&qword_710C8, type metadata accessor for FeatureOptionView, &unk_5E2C8);
    sub_6ED0(&qword_70FD8, &qword_70FE0, &qword_5C320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710C0);
  }

  return result;
}

uint64_t sub_17B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_17BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_710D0;
  if (!qword_710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_710D0);
  }

  return result;
}

uint64_t sub_17C00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17C44()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_17CA8(uint64_t *a1)
{
  v2 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  v11 = *(v1 + 56);
  v4 = v11;
  v10 = *(v1 + 40);
  *(inited + 32) = v10;
  *(inited + 48) = v4;
  sub_187C(&qword_710F0, &qword_5D9C0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_5AB00;
  *(v5 + 32) = v2;
  v6 = sub_17DC0(v5);
  swift_setDeallocating();
  *(inited + 56) = v6;
  sub_E9F8(&v10, v9);
  v7 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v7);
}

uint64_t sub_17DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71108, &qword_5C430);
    v3 = sub_59C40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_59EC0();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
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
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_17ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71100, &unk_5DC10);
    v3 = sub_59D60();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_B4D0(v5, v6, *(i - 8));

      result = sub_143B0(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_17FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_18064(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = sub_51F88(a1, a2, a3, a4 & 0x101);
  if (v15 == 2 || (v16 = v15, v17 = sub_51FA0(a1, a2, a3, a4 & 0x101), (v18 & 1) != 0))
  {
    v19 = sub_1FAA4();
    if (*(v19 + 16))
    {
      v20 = sub_143B0(a6, a7, a8 & 1);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);

        v23 = sub_128C8(a1, v22);

        return v23;
      }
    }

    v16 = a4;
  }

  else
  {
    v25 = v17;
    v26 = sub_1FAA4();
    if (*(v26 + 16) && (v27 = sub_143B0(a6, a7, a8 & 1), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
    }

    else
    {
      v29 = &_swiftEmptySetSingleton;
    }

    if (sub_128C8(a1, v29))
    {
    }

    else if (v16 & 1) != 0 && (a4)
    {
      v30 = sub_128C8(v25, v29);

      v16 = !v30;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_18204()
{
  swift_unknownObjectRelease();
  sub_EAAC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_EAAC(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  swift_unownedRelease();

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_18280@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  if (*(v1 + 81))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v1 + 160);
  swift_unownedRetainStrong();
  v12 = sub_18064(v6, v7, v8, v10 | v9, v11, v3, v4, v5);

  *a1 = v12;
  return result;
}

uint64_t sub_18328(unsigned __int8 *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  if (v6 == 1)
  {
    sub_187C(&qword_710F0, &qword_5D9C0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_5AB00;
    *(v8 + 32) = v5;
    v9 = sub_17DC0(v8);
    swift_setDeallocating();
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *(inited + 56) = v9;
  sub_B4D0(v2, v3, v4);
  v10 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v10);
}

uint64_t sub_1846C()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_184C0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  swift_unownedRetainStrong();
  v7 = sub_1FAA4();

  if (*(v7 + 16) && (v8 = sub_143B0(v3, v4, v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = sub_128C8(v6, v10);

    v13 = v11;
  }

  else
  {

    v13 = 0;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_18588()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();
  sub_EAAC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 122, 7);
}

uint64_t sub_185E4(unsigned __int8 *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 96);
  v7 = *a1;
  swift_unownedRetainStrong();
  sub_187C(&qword_710E8, &unk_5C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  sub_187C(&qword_710F0, &qword_5D9C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_5AB00;
  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  *(v9 + 32) = v10;
  v11 = sub_17DC0(v9);
  swift_setDeallocating();
  *(inited + 56) = v11;
  sub_B4D0(v2, v3, v4);
  v12 = sub_17ED8(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_710F8, &unk_5C420);
  sub_22764(v12);
}

uint64_t sub_18728(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_E9AC(a1, a2);
  }

  return a1;
}

uint64_t sub_187A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_18814@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v4;
  return result;
}

uint64_t sub_18894(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_58B10();
}

uint64_t sub_1890C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

id sub_1897C()
{
  v0 = *sub_52218();

  return v0;
}

uint64_t sub_189C4(uint64_t a1)
{
  v2 = sub_187C(&qword_71138, &qword_5C4E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71130, &qword_5C4D8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_18B2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_18BA0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v4;
  return result;
}

uint64_t sub_18C20(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_18C94(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_18D20(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_18EE4(uint64_t a1)
{
  v2 = sub_187C(&qword_71158, &qword_5C598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71150, &qword_5C590);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_190CC(uint64_t a1)
{
  v2 = sub_187C(&qword_71170, &qword_5C5F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71168, &qword_5C5F0);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_19274(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v3;
}

uint64_t sub_192F4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a4 = v6;
  return result;
}

uint64_t sub_19384(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_19410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_194C8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_187C(a2, a3);
  sub_58AD0();
  return swift_endAccess();
}

uint64_t sub_19540(uint64_t a1)
{
  v2 = sub_187C(&qword_71188, &qword_5C658);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71180, &qword_5C650);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_19680(uint64_t a1)
{
  v3 = type metadata accessor for FontGlyphVariant(0);
  v4 = __chkstk_darwin(v3);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v60 - v7;
  v9 = *(a1 + 16);
  v62 = a1;
  v61 = v6;
  if (v9)
  {
    v10 = (a1 + *(v3 + 20) + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  }

  else
  {
    v10 = sub_52218();
  }

  v11 = *v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v74[0] = v11;
  v12 = v11;

  v63 = v1;
  sub_58B10();
  v71 = v3;
  v73 = v9;
  if (v9)
  {
    v13 = 0;
    v14 = *(v3 + 20);
    v67 = *(v3 + 24);
    v68 = v14;
    v66 = v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v65 = *(v61 + 72);
    v15 = _swiftEmptyArrayStorage;
    v64 = v8;
    do
    {
      sub_1BBBC(v66 + v65 * v13, v8);
      LODWORD(v72) = *&v8[v67];
      v16 = sub_2AAF4(v72);
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      v18 = sub_59AA0();
      v19 = v18;
      v20 = *(v17 + 2);
      if (v20)
      {
        v70 = v15;
        v21 = 0;
        v22 = (v18 + 56);
        do
        {
          while (1)
          {
            v23 = *&v17[2 * v21++ + 32];
            v24 = sub_59EB0();
            v25 = -1 << v19[32];
            v26 = v24 & ~v25;
            if ((*&v22[(v26 >> 3) & 0xFFFFFFFFFFFFFF8] >> v26))
            {
              break;
            }

LABEL_18:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74[0] = v19;
            sub_1B408(v23, v26, isUniquelyReferenced_nonNull_native);
            v19 = v74[0];
            if (v21 == v20)
            {
              goto LABEL_20;
            }

            v22 = v74[0] + 56;
          }

          v27 = ~v25;
          while (*(*(v19 + 6) + 2 * v26) != v23)
          {
            v26 = (v26 + 1) & v27;
            if (((*&v22[(v26 >> 3) & 0xFFFFFFFFFFFFFF8] >> v26) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        while (v21 != v20);
LABEL_20:

        v9 = v73;
        v8 = v64;
        v15 = v70;
      }

      else
      {
      }

      v29 = v72;
      if (*(v19 + 2))
      {
        v30 = *&v8[*(v71 + 28)];
        v74[0] = v19;
        sub_1B0F8(v75, v72);
        sub_1B0F8(v75, v30);
        v31 = v74[0];
        sub_1BC20(v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1AE68(0, *(v15 + 2) + 1, 1, v15);
        }

        v33 = *(v15 + 2);
        v32 = *(v15 + 3);
        if (v33 >= v32 >> 1)
        {
          v15 = sub_1AE68((v32 > 1), v33 + 1, 1, v15);
        }

        *(v15 + 2) = v33 + 1;
        v34 = &v15[16 * v33];
        *(v34 + 16) = v29;
        *(v34 + 5) = v31;
      }

      else
      {

        sub_1BC20(v8);
      }

      ++v13;
    }

    while (v13 != v9);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (*(v15 + 2))
  {
    sub_187C(&qword_71190, &unk_5C660);
    v35 = sub_59D60();
  }

  else
  {
    v35 = _swiftEmptyDictionarySingleton;
  }

  v74[0] = v35;
  sub_1BC7C(v15, 1, v74);

  v36 = sub_19FCC(v74[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  v74[0] = v36;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v37 = *(v74[0] + 2);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v74[0]) = v37 != 0;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v38 = v74[0];
  v39 = *(v74[0] + 2);
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v41 = sub_52E4(*(v74[0] + 2), 0);
    *&v72 = sub_1B9B4(v74, v41 + 16, v39, v38);
    v42 = v74[0];
    v70 = v74[4];

    sub_61FC(v42);
    if (v72 != v39)
    {
      __break(1u);
      goto LABEL_50;
    }

    v9 = v73;
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v74[0] = v41;
  v43 = 0;
  sub_51AC(v74);

  v44 = v74[0];
  if (*(v74[0] + 2) >= 0x52uLL)
  {
    sub_1ADA0(v74[0], (v74[0] + 32), 0, 0xA3uLL);
    v46 = v45;

    v44 = v46;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v74[0] = v44;

  sub_58B10();
  if (v9)
  {
    v70 = 0;
    v74[0] = _swiftEmptyArrayStorage;
    sub_1B860(0, v9, 0);
    v40 = v74[0];
    v47 = v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v48 = *(v61 + 72);
    v72 = xmmword_5AB00;
    do
    {
      v49 = v69;
      sub_1BBBC(v47, v69);
      v50 = v71;
      v51 = *(v49 + *(v71 + 24));
      sub_187C(&qword_70CC0, &unk_5AEB0);
      inited = swift_initStackObject();
      *(inited + 16) = v72;
      *(inited + 32) = *(v49 + *(v50 + 28));
      v53 = sub_6B34(inited);
      swift_setDeallocating();
      sub_1BC20(v49);
      v74[0] = v40;
      v55 = *(v40 + 2);
      v54 = *(v40 + 3);
      if (v55 >= v54 >> 1)
      {
        sub_1B860((v54 > 1), v55 + 1, 1);
        v40 = v74[0];
      }

      *(v40 + 2) = v55 + 1;
      v56 = &v40[16 * v55];
      *(v56 + 16) = v51;
      *(v56 + 5) = v53;
      v47 += v48;
      --v73;
    }

    while (v73);
    v43 = v70;
    goto LABEL_45;
  }

  if (_swiftEmptyArrayStorage[2])
  {
LABEL_45:
    sub_187C(&qword_71190, &unk_5C660);
    v57 = sub_59D60();
    goto LABEL_46;
  }

  v57 = _swiftEmptyDictionarySingleton;
LABEL_46:
  v74[0] = v57;
  sub_1BC7C(v40, 1, v74);
  if (!v43)
  {

    v58 = v74[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v74[0] = v58;

    return sub_58B10();
  }

LABEL_50:

  __break(1u);
  return result;
}

uint64_t sub_19EEC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0F8(v11, *(*(v2 + 48) + ((v9 << 7) | (2 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_19FCC(uint64_t a1)
{
  v2 = v1;
  v4 = _swiftEmptyDictionarySingleton;
  v37 = _swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_5:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    v14 = *(v13 + 16);
    if (v14 >= 2)
    {
      v32 = *(*(a1 + 48) + 2 * v12);
      v33 = v2;
      sub_187C(&qword_70CC0, &unk_5AEB0);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      *(v16 + 16) = v14;
      *(v16 + 24) = (v17 - 32 + ((v17 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      v18 = sub_60FC(&v36, (v16 + 32), v14, v13);
      v34 = v36;
      v35 = v18;
      swift_bridgeObjectRetain_n();
      sub_61FC(v34);
      if (v35 != v14)
      {
        goto LABEL_29;
      }

      v36 = v16;
      sub_51AC(&v36);
      v2 = v33;
      if (v33)
      {
        goto LABEL_30;
      }

      v19 = v36;
      v20 = v4[2];
      if (v4[3] <= v20)
      {
        sub_1AB34(v20 + 1, 1, &qword_71298, qword_5C728);
        v4 = v37;
      }

      v21 = sub_59EB0();
      v22 = v4 + 8;
      v23 = -1 << *(v4 + 32);
      v24 = v21 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v4[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v4[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(v4[6] + 2 * v26) = v32;
      *(v4[7] + 8 * v26) = v19;
      ++v4[2];
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  __break(1u);
  return result;
}

uint64_t sub_1A2B4()
{
  v1 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font[0];
  v2 = sub_187C(&qword_71130, &qword_5C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  v4 = sub_187C(&qword_71140, &unk_5C530);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys[0];
  v6 = sub_187C(&qword_71150, &qword_5C590);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph[0];
  v8 = sub_187C(&qword_71168, &qword_5C5F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v10 = sub_187C(&qword_71180, &qword_5C650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1A450()
{
  v1 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font[0];
  v2 = sub_187C(&qword_71130, &qword_5C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  v4 = sub_187C(&qword_71140, &unk_5C530);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys[0];
  v6 = sub_187C(&qword_71150, &qword_5C590);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph[0];
  v8 = sub_187C(&qword_71168, &qword_5C5F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v10 = sub_187C(&qword_71180, &qword_5C650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v11, v12);
}

uint64_t sub_1A628()
{
  v0 = swift_allocObject();
  sub_1A660();
  return v0;
}

uint64_t sub_1A660()
{
  v1 = sub_187C(&qword_71180, &qword_5C650);
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v25 - v2;
  v3 = sub_187C(&qword_71168, &qword_5C5F0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - v4;
  v5 = sub_187C(&qword_71150, &qword_5C590);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v25 = sub_187C(&qword_71140, &unk_5C530);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - v9;
  v11 = sub_187C(&qword_71130, &qword_5C4D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__font[0];
  v16 = *sub_52218();
  v34 = v16;
  type metadata accessor for CTFont(0);
  v17 = v16;
  sub_58AC0();
  (*(v12 + 32))(v0 + v15, v14, v11);
  v18 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsPresent;
  LOBYTE(v34) = 0;
  sub_58AC0();
  (*(v8 + 32))(v0 + v18, v10, v25);
  v19 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantKeys[0];
  v34 = _swiftEmptyArrayStorage;
  sub_187C(&qword_70CB0, &qword_5C540);
  sub_58AC0();
  (*(v26 + 32))(v0 + v19, v7, v27);
  v20 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__variantsForGlyph[0];
  v34 = sub_1BAB4(_swiftEmptyArrayStorage, &qword_71298, qword_5C728);
  sub_187C(&qword_71160, &qword_5C5A0);
  v21 = v28;
  sub_58AC0();
  (*(v29 + 32))(v0 + v20, v21, v30);
  v22 = OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel__selectionForGlyph;
  v34 = sub_1BAB4(_swiftEmptyArrayStorage, &qword_71190, &unk_5C660);
  sub_187C(&qword_71178, &qword_5C600);
  v23 = v31;
  sub_58AC0();
  (*(v32 + 32))(v0 + v22, v23, v33);
  *(v0 + OBJC_IVAR____TtC17UITypographyPanel22GlyphVariantsViewModel_maxToDisplay) = 81;
  return v0;
}

uint64_t sub_1AAE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_58AB0();
  *a1 = result;
  return result;
}

uint64_t sub_1AB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_187C(a3, a4);
  result = sub_59D50();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 2 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_59EB0();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 2 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1ADA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_187C(&qword_70CC0, &unk_5AEB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = (v9 - 32 + ((v9 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 2 * a3), 2 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_1AE68(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_71288, &qword_5C710);
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
    sub_187C(&qword_71290, &qword_5C718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AF9C()
{
  v1 = v0;
  sub_187C(&qword_71190, &unk_5C660);
  v2 = *v0;
  v3 = sub_59D40();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1B0F8(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_59EB0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B408(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B1E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      result = sub_59EB0();
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
      *(*(v5 + 48) + 2 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B408(uint64_t result, unint64_t a2, char a3)
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
    sub_1B1E0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B52C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B66C(v5 + 1);
  }

  v8 = *v3;
  result = sub_59EB0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
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
  *(*(v11 + 48) + 2 * a2) = v4;
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_1B52C()
{
  v1 = v0;
  sub_187C(&qword_70CF8, &qword_5AED0);
  v2 = *v0;
  v3 = sub_59C10();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

uint64_t sub_1B66C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C20();
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
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      result = sub_59EB0();
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
      *(*(v5 + 48) + 2 * v12) = v16;
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

void *sub_1B860(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B880(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_71288, &qword_5C710);
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
    sub_187C(&qword_71290, &qword_5C718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B9B4(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
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

void *sub_1BAB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_187C(a2, a3);
  v5 = sub_59D60();
  LOWORD(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_4FC4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 2 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 4);
    v17 = *v12;

    v10 = sub_4FC4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC20(uint64_t a1)
{
  v2 = type metadata accessor for FontGlyphVariant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC7C(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 32);
    v8 = *(result + 40);
    v9 = *a3;
    v10 = sub_4FC4(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      sub_1AB34(v14, a2 & 1, &qword_71190, &unk_5C660);
      result = sub_4FC4(v7);
      if ((v16 & 1) != (v18 & 1))
      {
LABEL_27:
        result = sub_59EA0();
        __break(1u);
        return result;
      }

      v15 = result;
      v19 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v20 = *(v19[7] + 8 * v15);

      *(v19[7] + 8 * v15) = sub_19EEC(v8, v20);

      v21 = v3 - 1;
      if (!v21)
      {
        return result;
      }

LABEL_15:
      for (i = (v6 + 56); ; i += 2)
      {
        v27 = *(i - 4);
        v28 = *i;
        v29 = *a3;
        v30 = sub_4FC4(v27);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          break;
        }

        v35 = v30;
        v36 = v31;
        v37 = v29[3];

        if (v37 < v34)
        {
          sub_1AB34(v34, 1, &qword_71190, &unk_5C660);
          result = sub_4FC4(v27);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_27;
          }

          v35 = result;
        }

        v39 = *a3;
        if (v36)
        {
          v26 = *(v39[7] + 8 * v35);

          *(v39[7] + 8 * v35) = sub_19EEC(v28, v26);
        }

        else
        {
          v39[(v35 >> 6) + 8] |= 1 << v35;
          *(v39[6] + 2 * v35) = v27;
          *(v39[7] + 8 * v35) = v28;
          v40 = v39[2];
          v23 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v23)
          {
            goto LABEL_26;
          }

          v39[2] = v41;
        }

        if (!--v21)
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v19 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_1AF9C();
      v19 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v19[(v15 >> 6) + 8] |= 1 << v15;
    *(v19[6] + 2 * v15) = v7;
    *(v19[7] + 8 * v15) = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19[2] = v24;
    v21 = v3 - 1;
    if (!v21)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t type metadata accessor for GlyphVariantsViewModel(uint64_t a1)
{
  result = qword_748C0;
  if (!qword_748C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF8C(uint64_t a1)
{
  sub_1C180(319);
  if (v1 <= 0x3F)
  {
    sub_1C1D8(319, &qword_711C8, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_1C228(319, &qword_711D0, &qword_70CB0, &qword_5C540);
      if (v3 <= 0x3F)
      {
        sub_1C228(319, &qword_711D8, &qword_71160, &qword_5C5A0);
        if (v4 <= 0x3F)
        {
          sub_1C228(319, &unk_711E0, &qword_71178, &qword_5C600);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C180(uint64_t a1)
{
  if (!qword_711C0)
  {
    type metadata accessor for CTFont(255);
    v1 = sub_58B20();
    if (!v2)
    {
      atomic_store(v1, &qword_711C0);
    }
  }
}

void sub_1C1D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C228(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1F64(a3, a4);
    v5 = sub_58B20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_589A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C2EC(uint64_t a1)
{
  v3 = sub_589A0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id sub_1C374()
{
  v1 = *(v0 + *(type metadata accessor for FontGlyphVariant(0) + 20));

  return v1;
}

uint64_t type metadata accessor for FontGlyphVariant(uint64_t a1)
{
  result = qword_74E50;
  if (!qword_74E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_1C43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_589A0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for FontGlyphVariant(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

unint64_t sub_1C4DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6EC98;
  v6._object = a2;
  v4 = sub_59D80(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C530(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6870796C67;
  if (a1 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (a1)
  {
    v1 = 1953394534;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C5AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6870796C67;
    }

    else
    {
      v3 = 0x6C616E696769726FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xED00006870796C47;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1953394534;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6870796C67;
  if (a2 != 2)
  {
    v8 = 0x6C616E696769726FLL;
    v7 = 0xED00006870796C47;
  }

  if (a2)
  {
    v6 = 1953394534;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_59E80();
  }

  return v11 & 1;
}

Swift::Int sub_1C6E8()
{
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1C7A0(uint64_t a1)
{
  sub_59920();
}

Swift::Int sub_1C844(uint64_t a1)
{
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

unint64_t sub_1C8F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C928(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6870796C67;
  if (*v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
    v4 = 0xED00006870796C47;
  }

  if (*v1)
  {
    v3 = 1953394534;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1C99C()
{
  v1 = 25705;
  v2 = 0x6870796C67;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1953394534;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D764(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D764(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1CAB8(void *a1)
{
  v3 = v1;
  v5 = sub_187C(&qword_712A0, &qword_5C740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-v7];
  v9 = sub_7770(a1, a1[3]);
  sub_1D764(v9, v10, v11);
  sub_59F30();
  v12 = objc_opt_self();
  v13 = *(v3 + *(type metadata accessor for FontGlyphVariant(0) + 20));
  v25[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:0 error:v25];
  v15 = v25[0];
  if (v14)
  {
    v16 = sub_58980();
    v18 = v17;

    v25[0] = v16;
    v25[1] = v18;
    v24[7] = 1;
    sub_1D7B8(v19, v20, v21);
    sub_59E30();
    if (!v2)
    {
      LOBYTE(v25[0]) = 0;
      sub_589A0();
      sub_1DAFC(&qword_712B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_59E30();
      LOBYTE(v25[0]) = 2;
      sub_59E40();
      LOBYTE(v25[0]) = 3;
      sub_59E40();
    }

    (*(v6 + 8))(v8, v5);
    return sub_1D80C(v16, v18);
  }

  else
  {
    v23 = v15;
    sub_58960();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1CDB0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = sub_589A0();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_187C(&qword_712C0, &qword_5C748);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v42 = type metadata accessor for FontGlyphVariant(0);
  __chkstk_darwin(v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_58990();
  v12 = a1[3];
  v44 = a1;
  v13 = sub_7770(a1, v12);
  sub_1D764(v13, v14, v15);
  v16 = sub_59F20();
  if (v2)
  {
    v19 = v43;
    v22 = v45;
    sub_EA60(v44);
    (*(v22 + 8))(v11, v19);
    return;
  }

  v39 = v5;
  v40 = v7;
  LOBYTE(v47) = 1;
  sub_1D860(v16, v17, v18);
  sub_59DD0();
  v20 = v43;
  v21 = v6;
  v38 = v9;
  v23 = v46[0];
  v24 = v46[1];
  sub_1D91C(0, &qword_712D0, NSKeyedUnarchiver_ptr);
  sub_59AE0();
  v25 = v11;
  v37 = v23;
  if (!v46[3])
  {
    sub_1D8B4(v46);
    v27 = v42;
    goto LABEL_7;
  }

  sub_1D91C(0, &qword_712E8, UIFont_ptr);
  v26 = swift_dynamicCast();
  v27 = v42;
  if ((v26 & 1) == 0)
  {
LABEL_7:
    v30 = v45;
    v28 = v24;
    v29 = *sub_52218();
    goto LABEL_8;
  }

  v28 = v24;
  v29 = v47;
  v30 = v45;
LABEL_8:
  *&v11[*(v27 + 20)] = v29;
  LOBYTE(v46[0]) = 0;
  sub_1DAFC(&qword_712E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = v38;
  v32 = v39;
  sub_59DD0();
  (*(v30 + 40))(v11, v32, v20);
  LOBYTE(v46[0]) = 2;
  v33 = sub_59DE0();
  v34 = v21;
  v35 = v42;
  *(v25 + *(v42 + 24)) = v33;
  LOBYTE(v46[0]) = 3;
  LOWORD(v32) = sub_59DE0();
  (*(v40 + 8))(v31, v34);
  sub_1D80C(v37, v28);
  *(v25 + *(v35 + 28)) = v32;
  sub_1BBBC(v25, v41);
  sub_EA60(v44);
  sub_1BC20(v25);
}

BOOL sub_1D2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant(0);
  v5 = sub_52384();
  v7 = v6;
  if (v5 == sub_52384() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_59E80();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
  }

  return 0;
}

void sub_1D3D0(uint64_t a1)
{
  v2 = type metadata accessor for FontGlyphVariant(0);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v1 + *(v2 + 24)));
  sub_59EF0(*(v1 + *(v2 + 28)));
}

Swift::Int sub_1D450()
{
  sub_59ED0();
  v1 = type metadata accessor for FontGlyphVariant(0);
  sub_52384();
  sub_59920();

  sub_59EF0(*(v0 + *(v1 + 24)));
  sub_59EF0(*(v0 + *(v1 + 28)));
  return sub_59F10();
}

Swift::Int sub_1D4EC(uint64_t a1)
{
  sub_59ED0();
  sub_52384();
  sub_59920();

  sub_59EF0(*(v1 + *(a1 + 24)));
  sub_59EF0(*(v1 + *(a1 + 28)));
  return sub_59F10();
}

void sub_1D580(uint64_t a1, uint64_t a2)
{
  sub_52384();
  sub_59920();

  sub_59EF0(*(v2 + *(a2 + 24)));
  sub_59EF0(*(v2 + *(a2 + 28)));
}

Swift::Int sub_1D5F8(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  sub_52384();
  sub_59920();

  sub_59EF0(*(v2 + *(a2 + 24)));
  sub_59EF0(*(v2 + *(a2 + 28)));
  return sub_59F10();
}

BOOL sub_1D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_52384();
  v8 = v7;
  if (v6 == sub_52384() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_59E80();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24)))
  {
    return *(a1 + *(a3 + 28)) == *(a2 + *(a3 + 28));
  }

  return 0;
}

unint64_t sub_1D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_712A8;
  if (!qword_712A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712A8);
  }

  return result;
}

unint64_t sub_1D7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_712B0;
  if (!qword_712B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712B0);
  }

  return result;
}

uint64_t sub_1D80C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_712C8;
  if (!qword_712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712C8);
  }

  return result;
}

uint64_t sub_1D8B4(uint64_t a1)
{
  v2 = sub_187C(&qword_712D8, qword_5C750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D91C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1D9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_712F8;
  if (!qword_712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_712F8);
  }

  return result;
}

unint64_t sub_1DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71300;
  if (!qword_71300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71300);
  }

  return result;
}

unint64_t sub_1DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71308;
  if (!qword_71308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71308);
  }

  return result;
}

uint64_t sub_1DAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_589A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_589A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1DCE0(uint64_t a1)
{
  sub_589A0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CTFont(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for FontGlyphVariant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FontGlyphVariant.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1DEE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_52500();
  v5 = v3;
  sub_27A60(v4, v5);

  return v5;
}

id sub_1DF6C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_187C(&qword_713A0, &qword_5C9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = NSFontAttributeName;
  type metadata accessor for CTFont(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  v6 = a1;
  v7 = NSFontAttributeName;
  sub_276CC(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_713A8, &qword_5C9F8);
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = sub_598B0();

  type metadata accessor for Key(0);
  sub_28050(&qword_713B0, type metadata accessor for Key, &unk_5D218);
  isa = sub_59860().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  v12 = sub_52500();
  sub_27A60(v12, v6);

  return v6;
}

unint64_t sub_1E138(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6EDA8;
  v6._object = a2;
  v4 = sub_59D80(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E18C(char a1)
{
  if (!a1)
  {
    return 1953394534;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 0x73746E6169726176;
}

uint64_t sub_1E1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65676E6172;
  if (v2 != 1)
  {
    v4 = 0x73746E6169726176;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953394534;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6172;
  if (*a2 != 1)
  {
    v8 = 0x73746E6169726176;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953394534;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_59E80();
  }

  return v11 & 1;
}

Swift::Int sub_1E2CC()
{
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

uint64_t sub_1E364(uint64_t a1)
{
  sub_59920();
}

Swift::Int sub_1E3E8(uint64_t a1)
{
  sub_59ED0();
  sub_59920();

  return sub_59F10();
}

unint64_t sub_1E47C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E138(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E4AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65676E6172;
  if (v2 != 1)
  {
    v5 = 0x73746E6169726176;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953394534;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E500()
{
  v1 = 0x65676E6172;
  if (*v0 != 1)
  {
    v1 = 0x73746E6169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953394534;
  }
}

unint64_t sub_1E550@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27FFC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1E5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27FFC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1E5FC(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v27 = a5;
  v28 = a4;
  v9 = sub_187C(&qword_713B8, &qword_5CA00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_7770(a1, a1[3]);
  sub_27FFC(v13, v14, v15);
  sub_59F30();
  v16 = objc_opt_self();
  v30 = 0;
  v17 = [v16 archivedDataWithRootObject:a2 requiringSecureCoding:0 error:&v30];
  v18 = v30;
  if (v17)
  {
    v19 = sub_58980();
    v21 = v20;

    v30 = v19;
    v31 = v21;
    v29 = 0;
    sub_1D7B8(v22, v23, v24);
    sub_59E30();
    if (v5)
    {
      (*(v10 + 8))(v12, v9);
      return sub_1D80C(v19, v21);
    }

    v30 = a3;
    v31 = v28;
    v29 = 1;
    type metadata accessor for _NSRange(0);
    sub_28050(&qword_713C8, type metadata accessor for _NSRange, &protocol conformance descriptor for _NSRange);
    sub_59E30();
    v30 = v27;
    v29 = 2;

    sub_187C(&qword_713D0, &qword_5CA08);
    sub_29240(&qword_713D8, &qword_713E0, &unk_5C8F8, &protocol conformance descriptor for <> Set<A>);
    sub_59E30();
    sub_1D80C(v19, v21);
  }

  else
  {
    v26 = v18;
    sub_58960();

    swift_willThrow();
  }

  return (*(v10 + 8))(v12, v9);
}

id sub_1E940(void *a1)
{
  result = sub_28098(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  if ((sub_589E0() & 1) == 0 || a2 != a6 || a3 != a7)
  {
    return 0;
  }

  return sub_1EA6C(a4, a8);
}

uint64_t sub_1EA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v31 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v32 = v20;
  v33 = &v31 - v12;
  v34 = v13;
  v35 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_1BBBC(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14);
      sub_291DC(v14, v10);
      sub_28050(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
      v26 = sub_59870();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_1BBBC(*(a2 + 48) + v28 * v25, v7);
        sub_28050(&qword_71310, type metadata accessor for FontGlyphVariant, &unk_5C960);
        v30 = sub_598A0();
        sub_1BC20(v7);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1BC20(v10);
      v13 = v34;
      a1 = v35;
      v20 = v32;
      v14 = v33;
      v19 = v36;
      if (!v36)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1BC20(v10);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v31 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v36 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1ED78@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_28098(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1EDC8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  if ((sub_589E0() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v5 || v4 != v7)
  {
    return 0;
  }

  return sub_1EA6C(v3, v6);
}

uint64_t sub_1EEFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1EF5C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1EFF0;
}

void sub_1EFF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1F09C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_1F110(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t (*sub_1F180(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_58AF0();
  return sub_1F224;
}

void sub_1F224(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1F2A8(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1F3E0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_292F0;
}

uint64_t sub_1F5D0(uint64_t a1)
{
  v2 = sub_187C(&qword_71400, &qword_5CAC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_713F8, &qword_5CAB8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1F758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v1;
}

uint64_t sub_1F7CC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a2 = v4;
  return result;
}

uint64_t sub_1F84C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_58B10();
}

uint64_t sub_1F8C4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_58B10();
}

uint64_t sub_1F958(uint64_t a1)
{
  v2 = sub_187C(&qword_71418, &qword_5CB20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71410, &qword_5CB18);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FB1C(uint64_t a1)
{
  v2 = sub_187C(&qword_71430, &unk_5CB80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71428, &qword_5CB78);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FCD4(uint64_t a1)
{
  v2 = sub_187C(&qword_71440, &qword_5CBE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71438, &qword_5CBD8);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1FE98(uint64_t a1)
{
  v2 = sub_187C(&qword_71458, &unk_5CC40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71450, &qword_5CC38);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_20050(uint64_t a1)
{
  v2 = sub_187C(&qword_71468, &qword_5CCA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71460, &qword_5CC98);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void sub_20188(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_76;
  }

  v3 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v5 = v83;
  v80 = v2;
  if (v83 >> 62)
  {
    goto LABEL_74;
  }

  v6 = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
LABEL_75:

LABEL_76:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = 0;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = _swiftEmptyArrayStorage;

    sub_58B10();
    v73 = sub_27DF0(_swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = v73;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = _swiftEmptyArrayStorage;

    sub_58B10();
    v74 = sub_17ED8(_swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = v74;

    sub_58B10();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_58B00();

    if (v83 == 1)
    {
      sub_19680(_swiftEmptyArrayStorage);
    }

    return;
  }

  while (1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_59C80();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (sub_52384() == a1 && v11 == v3)
      {
        break;
      }

      v12 = sub_59E80();

      if (v12)
      {
        goto LABEL_16;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_75;
      }
    }

LABEL_16:

    v13 = sub_52384();
    v15 = v14;
    v16 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
    swift_beginAccess();
    v17 = *(v80 + v16);
    if (!*(v17 + 16))
    {

LABEL_23:
      swift_endAccess();

      goto LABEL_76;
    }

    v18 = sub_500C(v13, v15);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    a1 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v5 = v80 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName;
    swift_beginAccess();
    v22 = *v5;
    v21 = *(v5 + 8);

    v23 = sub_52384();
    if (!v21)
    {

      goto LABEL_26;
    }

    if (v22 == v23 && v21 == v24)
    {

      goto LABEL_27;
    }

    v25 = sub_59E80();

    if ((v25 & 1) == 0)
    {
LABEL_26:
      sub_36890();
    }

LABEL_27:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = v9;
    v26 = v9;

    sub_58B10();
    *v5 = sub_52384();
    *(v5 + 8) = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_58B00();

    v28 = v83;
    v81 = v26;
    v29 = sub_2D540();
    v30 = v29;
    if (v28)
    {
      goto LABEL_43;
    }

    v3 = v29[2];
    if (!v3)
    {
      break;
    }

    v31 = 0;
    v32 = v29 + 4;
    v33 = _swiftEmptyArrayStorage;
    v78 = v29 + 4;
LABEL_30:
    v34 = &v32[9 * v31];
    v35 = v31;
    while (v35 < v30[2])
    {
      v83 = *v34;
      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      v38 = *(v34 + 1);
      v87 = v34[8];
      v85 = v37;
      v86 = v36;
      v84 = v38;
      v31 = v35 + 1;
      v39 = *(&v83 + 1);
      v5 = v83;
      v40 = v38;
      sub_E9C0(&v83, &v82);
      if (sub_51970(v5, v39, v40))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25FE0(0, v33[2] + 1, 1);
          v33 = v88;
        }

        v43 = v33[2];
        v42 = v33[3];
        v5 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          sub_25FE0((v42 > 1), v43 + 1, 1);
          v33 = v88;
        }

        v33[2] = v5;
        v44 = &v33[9 * v43];
        *(v44 + 2) = v83;
        v45 = v84;
        v46 = v85;
        v47 = v86;
        v44[12] = v87;
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        *(v44 + 3) = v45;
        v32 = v78;
        if (v3 - 1 != v35)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

      sub_B818(&v83);
      v34 += 9;
      ++v35;
      if (v3 == v31)
      {
        goto LABEL_42;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v6 = sub_59D30();
    if (!v6)
    {
      goto LABEL_75;
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_42:

  v30 = v33;
LABEL_43:
  swift_getKeyPath();
  swift_getKeyPath();
  *&v83 = v30;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v48 = sub_9F34(v83);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v83 = v48;

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  v49 = v83;
  v50 = *(v83 + 16);
  if (!v50)
  {

    v51 = _swiftEmptyArrayStorage;
LABEL_47:
    *&v83 = v51;
    sub_24E54(&v83);
    v54 = v83;
    v55 = *(v83 + 16);
    if (v55)
    {
      v79 = a1;
      *&v83 = _swiftEmptyArrayStorage;
      sub_25FC0(0, v55, 0);
      v56 = v83;
      v57 = (v54 + 40);
      do
      {
        v58 = *(v57 - 1);
        v59 = *v57;
        sub_B848(v58, *v57);
        *&v83 = v56;
        v61 = v56[2];
        v60 = v56[3];
        if (v61 >= v60 >> 1)
        {
          sub_25FC0((v60 > 1), v61 + 1, 1);
          v56 = v83;
        }

        v57 += 3;
        v56[2] = v61 + 1;
        v62 = &v56[2 * v61];
        v62[4] = v58;
        v62[5] = v59;
        --v55;
      }

      while (v55);

      a1 = v79;
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = v56;

    sub_58B10();
    v63 = *(a1 + 16);
    if (v63)
    {
      *&v83 = _swiftEmptyArrayStorage;
      sub_59CE0();
      v64 = 32;
      do
      {
        v65 = *(a1 + v64);
        sub_59CC0();
        sub_59CF0();
        sub_59D00();
        sub_59CD0();
        v64 += 32;
        --v63;
      }

      while (v63);

      a1 = v83;
    }

    else
    {

      a1 = _swiftEmptyArrayStorage;
    }

    v5 = sub_17ED8(_swiftEmptyArrayStorage);
    if (a1 >> 62)
    {
      v66 = sub_59D30();
      if (v66)
      {
LABEL_61:
        v67 = 0;
        v3 = a1 & 0xC000000000000001;
        while (1)
        {
          if (v3)
          {
            v68 = sub_59C80();
          }

          else
          {
            if (v67 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_72;
            }

            v68 = *(a1 + 8 * v67 + 32);
          }

          v69 = v68;
          v70 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          v71 = sub_2C6B0();
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *&v83 = v5;
          sub_28458(v71, sub_2767C, 0, v72, &v83);

          v5 = v83;
          ++v67;
          if (v70 == v66)
          {
            goto LABEL_80;
          }
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    else
    {
      v66 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v66)
      {
        goto LABEL_61;
      }
    }

LABEL_80:

    swift_getKeyPath();
    swift_getKeyPath();
    *&v83 = v5;

    sub_58B10();
    sub_21258();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v75 = *(v80 + 24);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_58B00();

      v76 = v82;
      if (!v82)
      {
        v76 = *sub_52218();
      }

      ObjectType = swift_getObjectType();
      (*(v75 + 24))(v76, ObjectType, v75);

      swift_unknownObjectRelease();
    }

    return;
  }

  v51 = sub_24EC0(*(v83 + 16), 0);
  v52 = sub_274E0(&v83, (v51 + 4), v50, v49);
  v53 = v83;

  sub_61FC(v53);
  if (v52 == v50)
  {

    goto LABEL_47;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_20DE0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (v5)
  {
    v1 = sub_52384();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  sub_20188(v1, v3);
}

uint64_t (*sub_20ED4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *(a1 + 8) = *(a1 + 9);
  return sub_20F68;
}

uint64_t sub_20FAC(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_210E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_21254;
}

uint64_t sub_21258()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (v20 != 1)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v20)
  {
    return sub_19680(_swiftEmptyArrayStorage);
  }

  v3 = sub_52384();
  v5 = v4;
  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!*(v7 + 16))
  {

    goto LABEL_14;
  }

  v8 = sub_500C(v3, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_14:
    swift_endAccess();

    return sub_19680(_swiftEmptyArrayStorage);
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  v12 = _swiftEmptyArrayStorage;
  v13 = *(v11 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = v11 + 56;
    while (v14 < *(v11 + 16))
    {
      ++v14;
      v15 += 32;

      result = sub_2637C(v16);
      if (v13 == v14)
      {
        v12 = _swiftEmptyArrayStorage;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    if (_swiftEmptyArrayStorage[2] >= 0xC9uLL)
    {
      v17 = *(type metadata accessor for FontGlyphVariant(0) - 8);
      sub_24CB4(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)), 0, 0x191uLL);
      v19 = v18;

      v12 = v19;
    }

    sub_19680(v12);
  }

  return result;
}

uint64_t sub_214C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  return v3;
}

uint64_t sub_21548@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *a4 = v6;
  return result;
}

uint64_t sub_215C4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  return sub_21258();
}

uint64_t sub_2163C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_58B10();
  return sub_21258();
}

uint64_t (*sub_216B0(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  *(a1 + 8) = *(a1 + 9);
  return sub_21744;
}

uint64_t sub_21744(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;

  sub_58B10();
  return sub_21258();
}

uint64_t sub_217E0(uint64_t a1)
{
  v2 = sub_187C(&qword_71148, &qword_5CA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_187C(&qword_71140, &unk_5C530);
  sub_58AE0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21918(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_187C(&qword_71148, &qword_5CA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_187C(&qword_71140, &unk_5C530);
  sub_58AD0();
  swift_endAccess();
  return sub_292F0;
}

void sub_21A88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_58AE0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_58AE0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_21CBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21D14()
{
  v1 = (v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21D6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_21DCC(void *a1)
{
  v2 = v1;

  v5 = sub_2873C(v4);

  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();

  v8 = sub_23CB4(v7, v5);

  if (v8)
  {
LABEL_63:

    return;
  }

  v9 = *(v2 + v6);
  *(v2 + v6) = v5;
  sub_224F8(a1);
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v11;

  sub_58B10();
  v12 = a1[2];
  v59 = v2;
  if (!v12)
  {

    goto LABEL_17;
  }

  v57 = v9;
  v14 = a1[4];
  v13 = a1[5];
  v16 = a1[6];
  v15 = a1[7];
  v17 = &a1[4 * v12];
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[3];
  v56 = v17[2];
  type metadata accessor for CTFont(0);
  sub_28050(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  v21 = v14;
  swift_bridgeObjectRetain_n();
  v22 = v21;
  v23 = v19;

  if ((sub_589E0() & 1) == 0 || v13 != v18 || v16 != v56)
  {

    swift_bridgeObjectRelease_n();
LABEL_15:

LABEL_16:

    v2 = v59;
    goto LABEL_17;
  }

  v24 = sub_1EA6C(v15, v20);

  if ((v24 & 1) == 0)
  {

    goto LABEL_15;
  }

  if (!sub_53C98(v13, v16))
  {
    goto LABEL_42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v61)
  {
    sub_52384();
    goto LABEL_41;
  }

  v25 = sub_52384();
  v27 = v26;

  v28 = sub_52384();
  if (!v27)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (v25 == v28 && v27 == v29)
  {

    goto LABEL_44;
  }

  v42 = sub_59E80();

  if (v42)
  {
LABEL_44:
    v43 = sub_52384();
    if (!*(v57 + 16))
    {
      goto LABEL_54;
    }

    v45 = sub_500C(v43, v44);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_55;
    }

    v48 = *(*(v57 + 56) + 8 * v45);

    v58 = v48;
    v49 = v48 + 56;
    v50 = -*(v48 + 16);
    v51 = -1;
    while (1)
    {
      if (v50 + v51 == -1)
      {

        goto LABEL_62;
      }

      if (++v51 >= *(v58 + 16))
      {
        goto LABEL_66;
      }

      v52 = *(v49 - 8);
      v53 = *(v49 - 16);
      v54 = *(v49 - 24);

      if (!sub_53C98(v53, v52))
      {
        break;
      }

      v49 += 32;
      v55 = sub_589E0();

      if ((v55 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_42:

LABEL_17:
  while (1)
  {
    v30 = (v2 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
    swift_beginAccess();
    v22 = v30[1];
    if (!v22)
    {
      break;
    }

    v31 = *v30;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_58B00();

    if (v60 >> 62)
    {
      v32 = sub_59D30();
    }

    else
    {
      v32 = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
    }

    v33 = 0;
    while (1)
    {
      if (v32 == v33)
      {

        goto LABEL_32;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        v34 = sub_59C80();
      }

      else
      {
        if (v33 >= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        v34 = *(v60 + 8 * v33 + 32);
      }

      v35 = v34;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (sub_52384() == v31 && v22 == v36)
      {

LABEL_38:

        sub_20188(v31, v22);
        goto LABEL_62;
      }

      v2 = sub_59E80();

      ++v33;
      if (v2)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

LABEL_55:
  }

LABEL_32:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!(v60 >> 62))
  {
    if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

LABEL_60:

    v39 = 0;
    v41 = 0;
LABEL_61:
    sub_20188(v39, v41);
LABEL_62:

    goto LABEL_63;
  }

  if (!sub_59D30())
  {
    goto LABEL_60;
  }

LABEL_34:
  if ((v60 & 0xC000000000000001) != 0)
  {
    v37 = sub_59C80();
    goto LABEL_37;
  }

  if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
  {
    v37 = *(v60 + 32);
LABEL_37:
    v38 = v37;

    v39 = sub_52384();
    v41 = v40;

    goto LABEL_61;
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_224F8(uint64_t a1)
{
  v13 = _swiftEmptyArrayStorage;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 56;
    v11 = a1 + 56;
    do
    {
      v4 = v3 + 32 * v2;
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        v6 = *(v4 - 24);

        v7 = sub_52384();
        v9 = sub_24084(&v12, v7, v8);

        if (v9)
        {
          break;
        }

        v4 += 32;
        if (v2 == v1)
        {
          return;
        }
      }

      v10 = sub_2C550();
      sub_522C4(1.0);

      sub_599E0();
      if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v13 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_59A30();
      }

      sub_59A50();
      v3 = v11;
    }

    while (v2 != v1);
  }
}

uint64_t sub_22684(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_134D4(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22764(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_58B00();

  if (!v68)
  {
    return;
  }

  v58 = v68;
  v4 = sub_52384();
  v6 = v5;
  v7 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {

    goto LABEL_11;
  }

  v9 = sub_500C(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_11:
    swift_endAccess();
    goto LABEL_12;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v13 = *(v12 + 16);
  if (v13)
  {
    v68 = _swiftEmptyArrayStorage;

    sub_5BC4(0, v13, 0);
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 40;
    do
    {
      v17 = *(v12 + v16);
      v68 = v14;
      v18 = v14[3];
      if (v15 >= v18 >> 1)
      {
        v65 = v17;
        sub_5BC4((v18 > 1), v15 + 1, 1);
        v17 = v65;
        v14 = v68;
      }

      v14[2] = v15 + 1;
      *&v14[2 * v15 + 4] = v17;
      v16 += 32;
      ++v15;
      --v13;
    }

    while (v13);
    v57 = v14;

    goto LABEL_13;
  }

LABEL_12:
  v57 = _swiftEmptyArrayStorage;
LABEL_13:
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v61 = v23;
  v62 = a1 + 64;
  v59 = v2;
  v60 = a1;
  while (v22)
  {
LABEL_24:
    v27 = *(a1 + 48) + 24 * (__clz(__rbit64(v22)) | (v24 << 6));
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    v31 = *(a1 + 16);
    sub_B4D0(*v27, v29, *(v27 + 16));
    if (v31 && (v32 = sub_143B0(v28, v29, v30), (v33 & 1) != 0))
    {
      v34 = *(*(a1 + 56) + 8 * v32);
    }

    else
    {
      v34 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v64 = sub_58AF0();
    v36 = v35;
    if (v34)
    {
      v63 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v36;
      v66 = *v36;
      *v36 = 0x8000000000000000;
      v40 = sub_143B0(v28, v29, v30);
      v41 = v38[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        sub_59EA0();
        __break(1u);
        return;
      }

      v44 = v39;
      if (v38[3] >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_26F70();
          if ((v44 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        sub_269DC(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_143B0(v28, v29, v30);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_51;
        }

        v40 = v45;
        if ((v44 & 1) == 0)
        {
LABEL_40:
          v25 = v66;
          v66[(v40 >> 6) + 8] |= 1 << v40;
          v51 = v66[6] + 24 * v40;
          *v51 = v28;
          *(v51 + 8) = v29;
          *(v51 + 16) = v30;
          *(v66[7] + 8 * v40) = v63;
          v52 = v66[2];
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (v53)
          {
            goto LABEL_50;
          }

          v66[2] = v54;
          goto LABEL_17;
        }
      }

      sub_EAAC(v28, v29, v30);
      v25 = v66;
      *(v66[7] + 8 * v40) = v63;

LABEL_17:
      *v36 = v25;

      v2 = v59;
      a1 = v60;
      v23 = v61;
      goto LABEL_18;
    }

    v47 = sub_143B0(v28, v29, v30);
    v49 = v48;
    sub_EAAC(v28, v29, v30);
    v23 = v61;
    if (v49)
    {
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v67 = *v36;
      *v36 = 0x8000000000000000;
      if (!v50)
      {
        sub_26F70();
      }

      sub_EAAC(*(*(v67 + 48) + 24 * v47), *(*(v67 + 48) + 24 * v47 + 8), *(*(v67 + 48) + 24 * v47 + 16));

      sub_270EC(v47, v67);
      *v36 = v67;
    }

LABEL_18:
    v22 &= v22 - 1;
    v64(&v68, 0);

    v19 = v62;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v55 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v55 + 8))(a1, v57, ObjectType, v55);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_22CF8()
{
  sub_28978(v0 + 16);
  v1 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed[0];
  v2 = sub_187C(&qword_71140, &unk_5C530);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__availableFonts;
  v5 = sub_187C(&qword_713F8, &qword_5CAB8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFont[0];
  v7 = sub_187C(&qword_71410, &qword_5CB18);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFeatures[0];
  v9 = sub_187C(&qword_71428, &qword_5CB78);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypes[0];
  v11 = sub_187C(&qword_71438, &qword_5CBD8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypeGroups;
  v13 = sub_187C(&qword_71450, &qword_5CC38);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__sortedFeatureGroups[0];
  v15 = sub_187C(&qword_71460, &qword_5CC98);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v3(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled[0], v2);
  v3(v0 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed[0], v2);

  return v0;
}

uint64_t sub_22FC4()
{
  sub_22CF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2301C()
{
  v0 = swift_allocObject();
  sub_23054();
  return v0;
}

uint64_t sub_23054()
{
  v1 = v0;
  v2 = sub_187C(&qword_71460, &qword_5CC98);
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v53 = &v41 - v3;
  v4 = sub_187C(&qword_71450, &qword_5CC38);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v41 - v5;
  v6 = sub_187C(&qword_71438, &qword_5CBD8);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v41 - v7;
  v8 = sub_187C(&qword_71428, &qword_5CB78);
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v43 = &v41 - v9;
  v10 = sub_187C(&qword_71410, &qword_5CB18);
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_187C(&qword_713F8, &qword_5CAB8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = sub_187C(&qword_71140, &unk_5C530);
  v44 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__multipleUnknownFontsUsed[0];
  LOBYTE(v56) = 0;
  sub_58AC0();
  v22 = *(v18 + 32);
  v22(v1 + v21, v20, v17);
  v23 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__availableFonts;
  v56 = _swiftEmptyArrayStorage;
  sub_187C(&qword_713F0, &qword_5CA68);
  sub_58AC0();
  (*(v14 + 32))(v1 + v23, v16, v13);
  v24 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFont[0];
  v56 = 0;
  sub_187C(&qword_71408, &qword_5CAC8);
  sub_58AC0();
  (*(v41 + 32))(v1 + v24, v12, v42);
  v25 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__selectedFeatures[0];
  v56 = sub_17ED8(_swiftEmptyArrayStorage);
  sub_187C(&qword_71420, &qword_5CB28);
  v26 = v43;
  sub_58AC0();
  (*(v45 + 32))(v1 + v25, v26, v46);
  v27 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypes[0];
  v56 = _swiftEmptyArrayStorage;
  sub_187C(&qword_71038, &qword_5C350);
  v28 = v47;
  sub_58AC0();
  (*(v48 + 32))(v1 + v27, v28, v49);
  v29 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__featureTypeGroups;
  v56 = sub_27DF0(_swiftEmptyArrayStorage);
  sub_187C(&qword_71448, &qword_5CBE8);
  v30 = v50;
  sub_58AC0();
  (*(v51 + 32))(v1 + v29, v30, v52);
  v31 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__sortedFeatureGroups[0];
  v56 = _swiftEmptyArrayStorage;
  sub_187C(&qword_70F68, &qword_5C2E8);
  v32 = v53;
  sub_58AC0();
  (*(v54 + 32))(v1 + v31, v32, v55);
  v33 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__internalFeaturesEnabled[0];
  LOBYTE(v56) = 0;
  sub_58AC0();
  v34 = v44;
  v22(v1 + v33, v20, v44);
  v35 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel__variantSelectionAllowed[0];
  LOBYTE(v56) = 0;
  sub_58AC0();
  v22(v1 + v35, v20, v34);
  v36 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache;
  type metadata accessor for FeaturePreviewConfigurationCache();
  *(v1 + v36) = sub_3693C();
  v37 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_variantsModel;
  type metadata accessor for GlyphVariantsViewModel(0);
  *(v1 + v37) = sub_1A628();
  v38 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
  *(v1 + v38) = sub_27EF8(_swiftEmptyArrayStorage);
  v39 = (v1 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_lastSelectedFontName);
  *v39 = 0;
  v39[1] = 0;
  return v1;
}

uint64_t sub_23744(uint64_t a1, id *a2)
{
  result = sub_598C0();
  *a2 = 0;
  return result;
}

uint64_t sub_237BC(uint64_t a1, id *a2)
{
  v3 = sub_598D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2383C@<X0>(uint64_t *a2@<X8>)
{
  sub_598E0();
  v3 = sub_598B0();

  *a2 = v3;
  return result;
}

uint64_t sub_23880()
{
  sub_598E0();
  v0 = sub_599A0();

  return v0;
}

uint64_t sub_238BC(uint64_t a1)
{
  sub_598E0();
  sub_59920();
}

Swift::Int sub_23910(uint64_t a1)
{
  sub_598E0();
  sub_59ED0();
  sub_59920();
  v1 = sub_59F10();

  return v1;
}

uint64_t sub_23984(void *a1, uint64_t *a2)
{
  v2 = sub_598E0();
  v4 = v3;
  if (v2 == sub_598E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_59E80();
  }

  return v7 & 1;
}

Swift::Int sub_23AB0(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  swift_getWitnessTable();
  sub_589F0();
  return sub_59F10();
}

uint64_t sub_23B18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_598B0();

  *a2 = v3;
  return result;
}

uint64_t sub_23B60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_598E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B8C(uint64_t a1)
{
  v2 = sub_28050(&qword_713B0, type metadata accessor for Key, &unk_5D218);
  v3 = sub_28050(&qword_715F0, type metadata accessor for Key, &unk_5D104);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_23C48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_589E0();
}

uint64_t sub_23CB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_14:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18 = sub_500C(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v28 = v3;
      v29 = v2;

      v26 = 0;
      v27 = 0;
      while (v27 < *(v21 + 16))
      {
        if (v27 >= *(v17 + 16))
        {
          goto LABEL_33;
        }

        sub_29188(result, v24, v25);
        result = sub_598A0();
        if ((result & 1) == 0)
        {

          goto LABEL_28;
        }

        ++v27;
        v26 += 32;
        if (v22 == v27)
        {

          v3 = v28;
          v2 = v29;
          goto LABEL_6;
        }
      }

      goto LABEL_32;
    }

LABEL_6:

    v8 = v30;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_23EEC(uint64_t a1)
{
  sub_598E0();
  sub_59ED0();
  sub_59920();
  v2 = sub_59F10();

  return sub_23F80(a1, v2);
}

unint64_t sub_23F80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_598E0();
      v8 = v7;
      if (v6 == sub_598E0() && v8 == v9)
      {
        break;
      }

      v11 = sub_59E80();

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

uint64_t sub_24084(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_59ED0();
  sub_59920();
  v8 = sub_59F10();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_59E80() & 1) != 0)
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

    sub_24434(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_241D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_715F8, &unk_5D260);
  result = sub_59C20();
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
      sub_59ED0();
      sub_59920();
      result = sub_59F10();
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

uint64_t sub_24434(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_241D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_245B4();
      goto LABEL_16;
    }

    sub_24710(v8 + 1);
  }

  v10 = *v4;
  sub_59ED0();
  sub_59920();
  result = sub_59F10();
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

      result = sub_59E80();
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_245B4()
{
  v1 = v0;
  sub_187C(&qword_715F8, &unk_5D260);
  v2 = *v0;
  v3 = sub_59C10();
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

uint64_t sub_24710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_715F8, &unk_5D260);
  result = sub_59C20();
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
      sub_59ED0();

      sub_59920();
      result = sub_59F10();
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