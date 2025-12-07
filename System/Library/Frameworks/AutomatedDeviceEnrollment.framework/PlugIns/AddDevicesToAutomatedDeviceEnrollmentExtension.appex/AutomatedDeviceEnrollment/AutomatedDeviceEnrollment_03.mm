uint64_t sub_100050968()
{
  sub_100009C08(&qword_1000C98B8, &unk_1000946D0);
  sub_10001121C(&unk_1000CCC20, &qword_1000C98B8, &unk_1000946D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10008CDDC();
}

uint64_t sub_1000509F8()
{
  v0 = sub_100009C08(&unk_1000CCC00, &unk_1000946C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&unk_1000CCC10, &unk_1000CCC00, &unk_1000946C0, &protocol conformance descriptor for Published<A>.Publisher);
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100050B5C()
{
  v0 = sub_100009C08(&qword_1000C98A0, &unk_1000946B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&qword_1000C98A8, &qword_1000C98A0, &unk_1000946B0, &protocol conformance descriptor for Published<A>.Publisher);
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100050CC0()
{
  sub_100009C08(&unk_1000CD730, &unk_10008F9D0);
  sub_10001121C(&unk_1000CCBE0, &unk_1000CD730, &unk_10008F9D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10008CDDC();
}

uint64_t sub_100050DBC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_100050E40(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100050EB8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_100050F38(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100050FAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v34 = a2;
  v12 = sub_10008DB2C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_10008DB4C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1000515E8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_10005128C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10008CB0C();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  result = sub_10008DF8C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10008DB2C();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1000515E8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005128C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10005188C();
      goto LABEL_12;
    }

    sub_100051AC4(v11 + 1);
  }

  v13 = *v3;
  sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = sub_10008DB2C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_10008DB4C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10008E19C();
  __break(1u);
  return result;
}

void *sub_10005188C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  v7 = *v0;
  v8 = sub_10008DF7C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100051AC4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10008CB0C();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  v8 = sub_10008DF8C();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10008DB2C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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

uint64_t sub_100051DE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10008DF6C() + 1) & ~v5;
    do
    {
      sub_10008E1FC();

      sub_10008DC8C();
      v10 = sub_10008E22C();

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

unint64_t sub_100051F90(int64_t a1, uint64_t a2)
{
  v41 = sub_10008CB0C();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_10008DF6C();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = sub_10008DB2C();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

void *sub_1000522B0()
{
  v1 = v0;
  sub_100009C08(&qword_1000C9420, &qword_10008F460);
  v2 = *v0;
  v3 = sub_10008E01C();
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
        sub_10000B998(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C37C(v25, (*(v4 + 56) + v22));
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

char *sub_100052454()
{
  v1 = v0;
  v34 = sub_10008CB0C();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C08(&unk_1000CCBD0, &unk_1000946A0);
  v4 = *v0;
  v5 = sub_10008E01C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

  return result;
}

uint64_t sub_1000526DC()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052714()
{
  swift_unownedRetainStrong();
  sub_10004A8B8();
}

uint64_t sub_100052754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CCC38, &qword_100094730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052838()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100052880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_10004EA34(a1, v4, v5, v7, v6);
}

uint64_t sub_100052940()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100052990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000529F8()
{
  v1 = (type metadata accessor for EnrolledDeviceRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_10008CB0C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for Device(0);

  v6 = v1[7];
  v7 = sub_10008CABC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100052BDC(uint64_t a1)
{
  v4 = *(type metadata accessor for EnrolledDeviceRecord(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000E290;

  return sub_10004D88C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100052CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052D1C()
{
  v1 = *(type metadata accessor for Device(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_10008CB0C();
  (*(*(v6 - 8) + 8))(v5, v6);

  swift_unownedRelease();

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_100052E4C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for Device(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10004CDB4(a1, v1 + v4, v5);
}

uint64_t sub_100052EE8()
{
  v1 = *(type metadata accessor for Device(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  swift_unownedRelease();
  v5 = sub_10008CB0C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005300C(uint64_t a1)
{
  v3 = *(type metadata accessor for Device(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unownedRetainStrong();
  sub_10004DBD0(v1 + v4, a1);
}

void sub_10005309C(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v73 = a5;
  v74 = a4;
  v77 = a3;
  v85 = a2;
  v72 = type metadata accessor for Device(0);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72, v6);
  v84 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10008CB0C();
  v75 = *(v8 - 8);
  v10 = __chkstk_darwin(v8, v9);
  v70 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10, v12);
  v90 = &v69[-v14];
  __chkstk_darwin(v13, v15);
  v92 = &v69[-v16];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v76 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_ignoredDeviceIdentifiers;
  swift_beginAccess();
  if (v17)
  {
    v18 = 0;
    v19 = a1 & 0xC000000000000001;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = a1 + 32;
    v89 = (v75 + 16);
    v91 = v75 + 8;
    p_type = (&stru_1000C6FF0 + 16);
    v81 = v17;
    v82 = a1;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = a1 & 0xC000000000000001;
    v78 = a1 + 32;
    while (1)
    {
      if (v19)
      {
        v24 = sub_10008DFCC();
      }

      else
      {
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_35;
        }

        v24 = *(v21 + 8 * v18);
      }

      v23 = v24;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v17 = sub_10008E00C();
        goto LABEL_3;
      }

      if (([v24 p_type[348]] & 1) == 0)
      {
        break;
      }

LABEL_7:

      if (v18 == v17)
      {
        return;
      }
    }

    v86 = v18;
    v26 = [v23 identifier];
    sub_10008CAEC();

    v27 = *v85;
    v28 = *(*v85 + 16);
    v83 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v87 = v23;
    if (v28)
    {
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v29 = sub_10008DB2C();
      v30 = -1 << *(v27 + 32);
      v31 = v29 & ~v30;
      v88 = v27 + 56;
      if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        v33 = *(v75 + 72);
        v34 = *(v75 + 16);
        do
        {
          v35 = v90;
          v34(v90, *(v27 + 48) + v33 * v31, v8);
          sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v36 = sub_10008DB4C();
          v37 = *v91;
          (*v91)(v35, v8);
          if (v36)
          {
            goto LABEL_5;
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v88 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }

      v23 = v87;
    }

    v38 = *(v77 + v76);
    if (*(v38 + 16))
    {
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v39 = sub_10008DB2C();
      v40 = -1 << *(v38 + 32);
      v41 = v39 & ~v40;
      v88 = v38 + 56;
      if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        v43 = *(v75 + 72);
        v44 = *(v75 + 16);
        while (1)
        {
          v45 = v90;
          v44(v90, *(v38 + 48) + v43 * v41, v8);
          sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v46 = sub_10008DB4C();
          v37 = *v91;
          (*v91)(v45, v8);
          if (v46)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v88 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_5:
        v18 = v86;
        v23 = v87;

        v37(v92, v8);
        v17 = v81;
        a1 = v82;
        v19 = v80;
LABEL_6:
        v21 = v78;
        v20 = v79;
        p_type = &stru_1000C6FF0.type;
        goto LABEL_7;
      }

LABEL_24:

      v23 = v87;
    }

    v47 = *v89;
    v48 = v70;
    v49 = v92;
    (*v89)(v70, v92, v8);
    v50 = v90;
    sub_100050FAC(v90, v48);
    v51 = *v91;
    (*v91)(v50, v8);
    v52 = v84;
    v47(v84, v49, v8);
    v53 = [v23 modelIdentifier];
    v54 = sub_10008DBDC();
    v56 = v55;

    v57 = v72;
    v58 = &v52[*(v72 + 20)];
    *v58 = 0;
    v58[1] = 0;
    v59 = &v52[v57[6]];
    *v59 = v54;
    v59[1] = v56;
    v60 = &v52[v57[7]];
    *v60 = 0;
    v60[1] = 0;
    v61 = &v52[v57[8]];
    *v61 = 0;
    v61[1] = 0;
    v62 = v74;
    v63 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_10003AF04(0, v63[2] + 1, 1, v63);
      *v74 = v63;
    }

    v66 = v63[2];
    v65 = v63[3];
    v18 = v86;
    v19 = v80;
    if (v66 >= v65 >> 1)
    {
      v63 = sub_10003AF04((v65 > 1), v66 + 1, 1, v63);
      *v74 = v63;
    }

    v63[2] = v66 + 1;
    sub_100052B74(v84, v63 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v66, type metadata accessor for Device);
    v67 = v23;
    v68 = v73;
    sub_10008DD1C();
    if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10008DD5C();
    }

    sub_10008DD6C();
    v51(v92, v8);
    v17 = v81;
    a1 = v82;
    goto LABEL_6;
  }
}

uint64_t sub_100053874()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000538B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000092CC;

  return sub_10004996C(a1, v4, v5, v6);
}

uint64_t sub_100053994@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v22 - v6;

  v27 = sub_10008D8AC();
  sub_10008D9FC();
  sub_10008CF9C();
  v8 = v31;
  v25 = v32;
  v26 = v30;
  v9 = v33;
  v23 = v35;
  v24 = v34;
  v10 = sub_10008D5BC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = sub_10008D5EC();
  sub_100053BDC(v7);
  KeyPath = swift_getKeyPath();
  v29 = v8;
  v28 = v9;
  v13 = sub_10008D86C();
  v14 = swift_getKeyPath();
  v15 = sub_10008D53C();
  v29 = 1;
  v16 = a3 + *(sub_100009C08(&qword_1000CCCD0, &unk_1000948B0) + 36);
  sub_10008D9CC();
  v17 = sub_10008D53C();
  *(v16 + *(sub_100009C08(&qword_1000CCCD8, &unk_100096960) + 36)) = v17;
  v18 = v26;
  *a3 = v27;
  *(a3 + 8) = v18;
  *(a3 + 16) = v8;
  v19 = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v9;
  v20 = v23;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v11;
  *(a3 + 72) = v14;
  *(a3 + 80) = v13;
  *(a3 + 88) = v15;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 1;
  result = sub_100009C08(&qword_1000CCCE0, &qword_1000948C0);
  *(a3 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100053BDC(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100053C58()
{
  result = qword_1000CCCE8;
  if (!qword_1000CCCE8)
  {
    sub_100007108(&qword_1000CCCE0, &qword_1000948C0);
    sub_100053D10();
    sub_10001121C(&qword_1000CCD50, &qword_1000CCD58, &unk_1000948F8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCE8);
  }

  return result;
}

unint64_t sub_100053D10()
{
  result = qword_1000CCCF0;
  if (!qword_1000CCCF0)
  {
    sub_100007108(&qword_1000CCCD0, &unk_1000948B0);
    sub_100053DC8();
    sub_10001121C(&qword_1000CCD48, &qword_1000CCCD8, &unk_100096960, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCF0);
  }

  return result;
}

unint64_t sub_100053DC8()
{
  result = qword_1000CCCF8;
  if (!qword_1000CCCF8)
  {
    sub_100007108(&qword_1000CCD00, &qword_1000948C8);
    sub_100053E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCF8);
  }

  return result;
}

unint64_t sub_100053E54()
{
  result = qword_1000CCD08;
  if (!qword_1000CCD08)
  {
    sub_100007108(&qword_1000CCD10, &qword_1000948D0);
    sub_100053F0C();
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD08);
  }

  return result;
}

unint64_t sub_100053F0C()
{
  result = qword_1000CCD18;
  if (!qword_1000CCD18)
  {
    sub_100007108(&qword_1000CCD20, &qword_1000948D8);
    sub_100053FC4();
    sub_10001121C(&qword_1000CCD38, &qword_1000CCD40, &unk_1000948E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD18);
  }

  return result;
}

unint64_t sub_100053FC4()
{
  result = qword_1000CCD28;
  if (!qword_1000CCD28)
  {
    sub_100007108(&qword_1000CCD30, &qword_1000948E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD28);
  }

  return result;
}

unint64_t sub_10005405C()
{
  result = qword_1000CCD60;
  if (!qword_1000CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD60);
  }

  return result;
}

uint64_t sub_1000540D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100054148()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension45FakeDeviceDiscoveryPrerequisiteStatusProvider__prerequisiteStatus;
  v2 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeDeviceDiscoveryPrerequisiteStatusProvider(uint64_t a1)
{
  result = qword_1000CCE50;
  if (!qword_1000CCE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054244(uint64_t a1)
{
  sub_1000542D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000542D4(uint64_t a1)
{
  if (!qword_1000CCE60)
  {
    sub_100007108(&qword_1000CCC48, &unk_100094740);
    v1 = sub_10008CDCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CCE60);
    }
  }
}

uint64_t sub_100054338()
{
  v0 = sub_100009C08(&qword_1000CCF18, &qword_100094A18);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&unk_1000CD810, &qword_100094A20);
  sub_10008CD8C();
  swift_endAccess();
  sub_100054468();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100054468()
{
  result = qword_1000CCF20;
  if (!qword_1000CCF20)
  {
    sub_100007108(&qword_1000CCF18, &qword_100094A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCF20);
  }

  return result;
}

uint64_t sub_1000544CC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_100054550(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000545F4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_10008CB2C();
  __chkstk_darwin(v5 - 8, v6);
  v7 = sub_10008DBBC();
  __chkstk_darwin(v7 - 8, v8);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (v11 == 2)
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v11 = sub_10008DC3C();
      *(&v11 + 1) = v9;
      sub_100019E50();
      sub_10008D68C();
    }

    result = sub_10008D3DC();
    *a3 = v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
  }

  else
  {
    type metadata accessor for SettingsViewModel(0);
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_100054824()
{
  result = qword_1000CCF28;
  if (!qword_1000CCF28)
  {
    sub_100007108(&qword_1000CCF30, &unk_100094B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCF28);
  }

  return result;
}

uint64_t sub_1000548BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100054990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CB0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ErrorInfo(uint64_t a1)
{
  result = qword_1000CCF90;
  if (!qword_1000CCF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054A98(uint64_t a1)
{
  result = sub_10008CB0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100054B14(uint64_t a1@<X8>)
{
  v12 = sub_10008C8DC();
  v2 = [v12 domain];
  v3 = sub_10008DBDC();
  v5 = v4;

  if (sub_10008DBDC() == v3 && v6 == v5)
  {

LABEL_8:

    sub_100054E88(v12, a1);
    goto LABEL_9;
  }

  v8 = sub_10008E18C();

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = v3 == 0xD000000000000011 && 0x800000010009ABF0 == v5;
  if (v9 || (sub_10008E18C() & 1) != 0)
  {

    sub_1000559DC(v12, a1);
    goto LABEL_9;
  }

  if (v3 == 0xD000000000000010 && 0x800000010009AC10 == v5)
  {

LABEL_22:
    sub_100055E48(v12, a1);
    goto LABEL_9;
  }

  v10 = sub_10008E18C();

  if (v10)
  {
    goto LABEL_22;
  }

  v11 = type metadata accessor for ErrorInfo(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
LABEL_9:
}

uint64_t sub_100054CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10008CB2C();
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_10008DBBC();
  __chkstk_darwin(v4 - 8, v5);
  sub_10008DB5C();
  sub_10008CB1C();
  v6 = sub_10008DC3C();
  v8 = v7;
  sub_10008DB5C();
  sub_10008CB1C();
  v9 = sub_10008DC3C();
  v11 = v10;
  v12 = type metadata accessor for ErrorInfo(0);
  v13 = (a1 + *(v12 + 20));
  *v13 = v6;
  v13[1] = v8;
  v14 = (a1 + *(v12 + 24));
  *v14 = v9;
  v14[1] = v11;
  return sub_10008CAFC();
}

uint64_t sub_100054E88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for ErrorInfo(0);
  v95 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v93 - v10;
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v93 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v93 - v17;
  v19 = sub_10008CB2C();
  __chkstk_darwin(v19 - 8, v20);
  v21 = sub_10008DBBC();
  __chkstk_darwin(v21 - 8, v22);
  v23 = [a1 userInfo];
  v24 = sub_10008DB1C();

  v25 = [a1 code];
  if (v25 > 75)
  {
    if (v25 != 76)
    {
      if (v25 != 77)
      {
        goto LABEL_24;
      }

      sub_10008DB5C();
      sub_10008CB1C();
      v39 = sub_10008DC3C();
      v41 = v40;
      sub_10008DB5C();
      sub_10008CB1C();
      v93 = sub_10008DC3C();
      sub_10008DB5C();
      sub_10008CB1C();
      v42 = sub_10008DC3C();
      v44 = v43;
      v45 = sub_10008DBDC();
      v47 = &v7[*(v3 + 20)];
      *v47 = v39;
      v47[1] = v41;
      if (*(v24 + 16))
      {
        v48 = sub_10000A1A8(v45, v46);
        v50 = v49;

        if (v50)
        {
          sub_10000B998(*(v24 + 56) + 32 * v48, v98);

          if (swift_dynamicCast())
          {

            v51 = v96;
            v52 = v97;
            sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_10008F280;
            *(v53 + 56) = &type metadata for String;
            *(v53 + 64) = sub_1000567CC();
            *(v53 + 32) = v51;
            *(v53 + 40) = v52;
            v42 = sub_10008DC0C();
            v44 = v54;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

LABEL_34:

      v68 = v94;
      v92 = &v7[*(v3 + 24)];
      *v92 = v42;
      v92[1] = v44;
      sub_10008CAFC();
      v70 = v7;
      goto LABEL_35;
    }

    sub_10008DB5C();
    sub_10008CB1C();
    v71 = sub_10008DC3C();
    v73 = v72;
    sub_10008DB5C();
    sub_10008CB1C();
    v93 = sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v74 = sub_10008DC3C();
    v76 = v75;
    v77 = sub_10008DBDC();
    v79 = &v11[*(v3 + 20)];
    *v79 = v71;
    v79[1] = v73;
    if (*(v24 + 16))
    {
      v80 = sub_10000A1A8(v77, v78);
      v82 = v81;

      if (v82)
      {
        sub_10000B998(*(v24 + 56) + 32 * v80, v98);

        if (swift_dynamicCast())
        {

          v83 = v96;
          v84 = v97;
          sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_10008F280;
          *(v85 + 56) = &type metadata for String;
          *(v85 + 64) = sub_1000567CC();
          *(v85 + 32) = v83;
          *(v85 + 40) = v84;
          v74 = sub_10008DC0C();
          v76 = v86;
        }

        goto LABEL_32;
      }
    }

    else
    {
    }

LABEL_32:

    v68 = v94;
    v91 = &v11[*(v3 + 24)];
    *v91 = v74;
    v91[1] = v76;
    sub_10008CAFC();
    v70 = v11;
LABEL_35:
    sub_10003963C(v70, v68);
    return (*(v95 + 56))(v68, 0, 1, v3);
  }

  if ((v25 - 71) < 2)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v26 = sub_10008DC3C();
    v28 = v27;
    sub_10008DB5C();
    sub_10008CB1C();
    sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v29 = sub_10008DC3C();
    v31 = v30;
    v32 = &v15[*(v3 + 20)];
    *v32 = v26;
    v32[1] = v28;
    if (*(v24 + 16) && (v33 = sub_10000A1A8(0xD00000000000002CLL, 0x800000010009B0B0), (v34 & 1) != 0))
    {
      sub_10000B998(*(v24 + 56) + 32 * v33, v98);

      if (swift_dynamicCast())
      {

        v35 = v96;
        v36 = v97;
        sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_10008F280;
        *(v37 + 56) = &type metadata for String;
        *(v37 + 64) = sub_1000567CC();
        *(v37 + 32) = v35;
        *(v37 + 40) = v36;
        v29 = sub_10008DC0C();
        v31 = v38;
      }
    }

    else
    {
    }

    v68 = v94;
    v69 = &v15[*(v3 + 24)];
    *v69 = v29;
    v69[1] = v31;
    sub_10008CAFC();
    v70 = v15;
    goto LABEL_35;
  }

  if (v25 == 70)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v55 = sub_10008DC3C();
    v57 = v56;
    sub_10008DB5C();
    sub_10008CB1C();
    sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v58 = sub_10008DC3C();
    v60 = v59;
    v61 = &v18[*(v3 + 20)];
    *v61 = v55;
    v61[1] = v57;
    if (*(v24 + 16) && (v62 = sub_10000A1A8(0xD00000000000002CLL, 0x800000010009B0B0), (v63 & 1) != 0))
    {
      sub_10000B998(*(v24 + 56) + 32 * v62, v98);

      if (swift_dynamicCast())
      {

        v64 = v96;
        v65 = v97;
        sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_10008F280;
        *(v66 + 56) = &type metadata for String;
        *(v66 + 64) = sub_1000567CC();
        *(v66 + 32) = v64;
        *(v66 + 40) = v65;
        v58 = sub_10008DC0C();
        v60 = v67;
      }
    }

    else
    {
    }

    v68 = v94;
    v90 = &v18[*(v3 + 24)];
    *v90 = v58;
    v90[1] = v60;
    sub_10008CAFC();
    v70 = v18;
    goto LABEL_35;
  }

LABEL_24:

  v87 = v94;
  v88 = *(v95 + 56);

  return v88(v87, 1, 1, v3);
}

uint64_t sub_1000559DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  v8 = sub_100056820([a1 code]);
  if (v8 > 5)
  {
    if (v8 == 6 || v8 == 7)
    {
      goto LABEL_10;
    }
  }

  else if (!v8 || v8 == 5)
  {
LABEL_10:
    sub_10008DB5C();
    sub_10008CB1C();
    v12 = sub_10008DC3C();
    v14 = v13;
    sub_10008DB5C();
    sub_10008CB1C();
    v15 = sub_10008DC3C();
    v17 = v16;
    v18 = type metadata accessor for ErrorInfo(0);
    v19 = (a2 + *(v18 + 20));
    *v19 = v12;
    v19[1] = v14;
    v20 = (a2 + *(v18 + 24));
    *v20 = v15;
    v20[1] = v17;
    sub_10008CAFC();
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  v9 = type metadata accessor for ErrorInfo(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, 1, 1, v9);
}

uint64_t sub_100055E48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  v8 = [a1 code];
  if ((v8 - 1) < 2 || v8 == 3)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v9 = sub_10008DC3C();
    v11 = v10;
    sub_10008DB5C();
    sub_10008CB1C();
    v12 = sub_10008DC3C();
    v14 = v13;
    v15 = type metadata accessor for ErrorInfo(0);
    v16 = (a2 + *(v15 + 20));
    *v16 = v9;
    v16[1] = v11;
    v17 = (a2 + *(v15 + 24));
    *v17 = v12;
    v17[1] = v14;
    sub_10008CAFC();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v19 = type metadata accessor for ErrorInfo(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t sub_100056150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo(0);
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

uint64_t sub_10005637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo(0);
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

uint64_t sub_10005659C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  __chkstk_darwin(v4 - 8, v5);
  v6 = sub_10008DBBC();
  __chkstk_darwin(v6 - 8, v7);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo(0);
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

unint64_t sub_1000567CC()
{
  result = qword_1000CCFD8;
  if (!qword_1000CCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCFD8);
  }

  return result;
}

uint64_t sub_100056820(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

char *sub_10005685C(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  __chkstk_darwin(v5 - 8, v6);
  v39 = &v37 - v7;
  v40 = sub_100009C08(&qword_1000CD170, &qword_100094D20);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40, v8);
  v10 = &v37 - v9;
  v11 = sub_100009C08(&qword_1000CD178, &qword_100094D28);
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v37 - v13;
  v15 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v37 - v18;
  *(v3 + 64) = 0;
  v20 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSigninInProgress;
  LOBYTE(v44) = 0;
  sub_10008CD7C();
  v21 = *(v16 + 32);
  v21(v3 + v20, v19, v15);
  v22 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSignedIn;
  LOBYTE(v44) = 0;
  sub_10008CD7C();
  v21(v3 + v22, v19, v15);
  v23 = v37;
  sub_10000BE8C(a1, v3 + 16);
  *(v3 + 56) = v23;
  v24 = a1[3];
  v25 = a1[4];
  sub_10000BB24(a1, v24);
  v26 = *(v25 + 16);

  v26(&v44, v24, v25);
  v27 = v45;
  if (v45)
  {
    sub_10000C3F8(&v44, &unk_1000C90E8, &qword_10008F350);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v43) = v27 != 0;

  sub_10008CDBC();
  v28 = a1[3];
  v29 = a1[4];
  sub_10000BB24(a1, v28);
  v43 = (*(v29 + 24))(v28, v29);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10008CDEC();

  sub_1000167AC();
  v30 = sub_10008DE7C();
  v43 = v30;
  v31 = sub_10008DE6C();
  v32 = v39;
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  sub_10001121C(&qword_1000CD188, &qword_1000CD170, &qword_100094D20, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000590C8();
  v33 = v40;
  sub_10008CE0C();
  sub_10000C3F8(v32, &qword_1000C9E10, &qword_10008FEF0);

  (*(v38 + 8))(v10, v33);
  swift_getKeyPath();
  v43 = v3;
  sub_10001121C(&qword_1000CD190, &qword_1000CD178, &qword_100094D28, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v34 = v42;
  v35 = sub_10008CE2C();

  (*(v41 + 8))(v14, v34);
  *(v3 + 64) = v35;

  sub_10000BC74(a1);
  return v3;
}

uint64_t sub_100056E14@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v4;
  return result;
}

uint64_t sub_100056E94(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100056F08(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_10008DDBC();
  v2[27] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[28] = v4;
  v2[29] = v3;

  return _swift_task_switch(sub_100056FA0, v4, v3);
}

uint64_t sub_100056FA0()
{
  v60 = v0;
  v1 = *(v0 + 200);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 336) = 1;

  sub_10008CDBC();
  v2 = sub_10008DBDC();
  if (!*(v1 + 16))
  {

LABEL_16:
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v33 = sub_10008CCDC();
    sub_100009F94(v33, qword_1000D6D38);
    v34 = sub_10008CCBC();
    v35 = sub_10008DE2C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v59);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s called without IDMS Tokens", v36, 0xCu);
      sub_10000BC74(v37);
    }

    v38 = swift_task_alloc();
    *(v0 + 304) = v38;
    *v38 = v0;
    v38[1] = sub_100057EA0;
    v39 = 1;
    goto LABEL_21;
  }

  v4 = sub_10000A1A8(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(v0 + 200);
  sub_10000B998(*(v7 + 56) + 32 * v4, v0 + 56);
  sub_100009C08(&qword_1000CD168, &unk_100094CB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(v0 + 184);
  if (!*(v8 + 16) || (v9 = sub_10000A1A8(0xD00000000000001ELL, 0x8000000100097DB0), (v10 & 1) == 0))
  {

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v40 = sub_10008CCDC();
    sub_100009F94(v40, qword_1000D6D38);
    v41 = sub_10008CCBC();
    v42 = sub_10008DE2C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v59);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s Grand Slam token missing for Configurator service identifier", v43, 0xCu);
      sub_10000BC74(v44);
    }

    v45 = swift_task_alloc();
    *(v0 + 296) = v45;
    *v45 = v0;
    v45[1] = sub_100057D80;
    v39 = 2;
    goto LABEL_21;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];
  *(v0 + 240) = v12;

  v14 = sub_10008DBDC();
  if (!*(v1 + 16))
  {

LABEL_31:

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v46 = sub_10008CCDC();
    sub_100009F94(v46, qword_1000D6D38);
    v47 = sub_10008CCBC();
    v48 = sub_10008DE2C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v59);
      _os_log_impl(&_mh_execute_header, v47, v48, "%s Username missing", v49, 0xCu);
      sub_10000BC74(v50);
    }

    v51 = swift_task_alloc();
    *(v0 + 288) = v51;
    *v51 = v0;
    v51[1] = sub_100057C60;
    v39 = 3;
    goto LABEL_21;
  }

  v16 = sub_10000A1A8(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_10000B998(*(v7 + 56) + 32 * v16, v0 + 88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  *(v0 + 248) = v19;
  v21 = sub_10008DBDC();
  if (*(v1 + 16))
  {
    v23 = sub_10000A1A8(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_10000B998(*(v7 + 56) + 32 * v23, v0 + 120);
      if (swift_dynamicCast())
      {
        v26 = *(v0 + 208);
        v27 = *(v0 + 168);
        v28 = *(v0 + 176);
        *(v0 + 256) = v28;
        sub_10000BE8C(v26 + 16, v0 + 16);
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        sub_10000BB24((v0 + 16), v29);
        v58 = (*(v30 + 8) + **(v30 + 8));
        v31 = swift_task_alloc();
        *(v0 + 264) = v31;
        *v31 = v0;
        v31[1] = sub_1000578F8;

        return v58(v20, v19, v27, v28, v13, v12, v29, v30);
      }
    }
  }

  else
  {
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v52 = sub_10008CCDC();
  sub_100009F94(v52, qword_1000D6D38);
  v53 = sub_10008CCBC();
  v54 = sub_10008DE2C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v59);
    _os_log_impl(&_mh_execute_header, v53, v54, "%s AltDSID missing", v55, 0xCu);
    sub_10000BC74(v56);
  }

  v57 = swift_task_alloc();
  *(v0 + 280) = v57;
  *v57 = v0;
  v57[1] = sub_100057B40;
  v39 = 4;
LABEL_21:

  return sub_100058AE8(v39);
}

uint64_t sub_1000578F8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_100058020;
  }

  else
  {
    v5 = sub_100057A90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100057A90()
{

  sub_10000BC74((v0 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 338) = 0;

  sub_10008CDBC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100057B40()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v3, v2);
}

uint64_t sub_100057C60()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v3, v2);
}

uint64_t sub_100057D80()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v3, v2);
}

uint64_t sub_100057EA0()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100057FC0, v3, v2);
}

uint64_t sub_100057FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058020()
{
  v1 = *(v0 + 272);
  sub_10000BC74((v0 + 16));
  *(v0 + 192) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (!swift_dynamicCast())
  {
LABEL_5:

    v4 = swift_task_alloc();
    *(v0 + 328) = v4;
    *v4 = v0;
    v4[1] = sub_100058474;
    v3 = 0;
    goto LABEL_6;
  }

  if (*(v0 + 337))
  {
    if (*(v0 + 337) == 1)
    {

      v2 = swift_task_alloc();
      *(v0 + 312) = v2;
      *v2 = v0;
      v2[1] = sub_1000581CC;
      v3 = 6;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_100058354;
  v3 = 7;
LABEL_6:

  return sub_100058AE8(v3);
}

uint64_t sub_1000581CC()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1000582EC, v3, v2);
}

uint64_t sub_1000582EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058354()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100059120, v3, v2);
}

uint64_t sub_100058474()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100058594, v3, v2);
}

uint64_t sub_100058594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058600(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008DDBC();
  v2[4] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100058698, v4, v3);
}

uint64_t sub_100058698()
{
  v1 = sub_10008C8DC();
  v0[7] = v1;
  v2 = [v1 domain];
  v3 = sub_10008DBDC();
  v5 = v4;

  if (v3 == sub_10008DBDC() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10008E18C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 code] == -7006)
  {
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_10005883C;
    v10 = 5;
    goto LABEL_11;
  }

LABEL_10:
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1000589C8;
  v10 = 0;
LABEL_11:

  return sub_100058AE8(v10);
}

uint64_t sub_10005883C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10005895C, v3, v2);
}

uint64_t sub_10005895C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000589C8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100059124, v3, v2);
}

uint64_t sub_100058AE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 65) = a1;
  sub_10008DDBC();
  *(v2 + 24) = sub_10008DDAC();
  v4 = sub_10008DD8C();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100058B84, v4, v3);
}

uint64_t sub_100058B84()
{
  v1 = *(v0 + 65);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;

  sub_10008CDBC();
  v2 = objc_allocWithZone(NSError);
  v3 = sub_10008DBCC();
  v4 = [v2 initWithDomain:v3 code:v1 + 1 userInfo:0];
  *(v0 + 48) = v4;

  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100058CD4;

  return sub_100038FC4(v4);
}

uint64_t sub_100058CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100058E14, v4, v3);
}

uint64_t sub_100058E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058E80()
{
  sub_10000BC74((v0 + 16));

  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSigninInProgress;
  v2 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSignedIn, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignInViewModel(uint64_t a1)
{
  result = qword_1000CD018;
  if (!qword_1000CD018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058FC4(uint64_t a1)
{
  sub_100031118();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100059078@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SignInViewModel(0);
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

unint64_t sub_1000590C8()
{
  result = qword_1000C9E40;
  if (!qword_1000C9E40)
  {
    sub_1000167AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9E40);
  }

  return result;
}

uint64_t sub_10005912C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000591A0()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension22FakeNetworkInfoStorage__networkInfo;
  v2 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FakeNetworkInfoStorage(uint64_t a1)
{
  result = qword_1000CD1C8;
  if (!qword_1000CD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059278(uint64_t a1)
{
  sub_100033D60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100059334()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1000593E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100059408, v2, 0);
}

uint64_t sub_100059408()
{
  v1 = v0[5];
  v2 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  v0[3] = v1;

  sub_10002D95C(v2, v1);
  sub_10008CDBC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000594D0()
{
  v0 = sub_100009C08(&qword_1000CB2D8, &qword_100092A70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  sub_10008CD8C();
  swift_endAccess();
  sub_10003478C();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1000595FC(uint64_t a1)
{
  result = sub_100059624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100059624()
{
  result = qword_1000CD288;
  if (!qword_1000CD288)
  {
    type metadata accessor for FakeNetworkInfoStorage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD288);
  }

  return result;
}

double sub_10005967C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100059700(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10002D95C(v2, v3);

  return sub_10008CDBC();
}

uint64_t sub_10005978C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000597D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100059828()
{
  result = qword_1000CD290;
  if (!qword_1000CD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD290);
  }

  return result;
}

id sub_10005987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(UIActivityViewController);
  isa = sub_10008DD2C().super.isa;
  v9 = [v7 initWithActivityItems:isa applicationActivities:0];

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v13[4] = sub_100059C10;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000599C0;
  v13[3] = &unk_1000C1480;
  v11 = _Block_copy(v13);

  [v9 setCompletionWithItemsHandler:v11];
  _Block_release(v11);
  return v9;
}

uint64_t sub_1000599C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_10008DD3C();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_100059A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100059B7C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100059AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100059B7C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100059B54(uint64_t a1)
{
  sub_100059B7C();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_100059B7C()
{
  result = qword_1000CD298;
  if (!qword_1000CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD298);
  }

  return result;
}

uint64_t sub_100059BD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059C10(uint64_t result, char a2)
{
  if (!result || (a2 & 1) != 0)
  {
    return (*(v2 + 24))();
  }

  return result;
}

uint64_t sub_100059C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059C90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 24);
  type metadata accessor for AddDevicesExtensionContainerViewModel(0);
  swift_allocObject();
  v4 = swift_unknownObjectRetain();
  sub_1000312A4(v4, v3);
  swift_unknownObjectRelease();
  sub_100059D20();
  result = sub_10008D05C();
  *a1 = result;
  a1[1] = v6;
  return result;
}

unint64_t sub_100059D20()
{
  result = qword_1000CD6B0;
  if (!qword_1000CD6B0)
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD6B0);
  }

  return result;
}

unint64_t sub_100059D7C()
{
  result = qword_1000CD2A0;
  if (!qword_1000CD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD2A0);
  }

  return result;
}

uint64_t sub_100059DF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100059E5C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_100059E90()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_100059EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100059FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ManualPinEntryView(uint64_t a1)
{
  result = qword_1000CD4F0;
  if (!qword_1000CD4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005A0E8(uint64_t a1)
{
  sub_1000175A8(319);
  if (v1 <= 0x3F)
  {
    sub_10005A1DC(319);
    if (v2 <= 0x3F)
    {
      sub_10005A2F0(319, &qword_1000CD510, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10005A298();
        if (v4 <= 0x3F)
        {
          sub_10005A2F0(319, &unk_1000CD520, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005A1DC(uint64_t a1)
{
  if (!qword_1000CD500)
  {
    type metadata accessor for VisualPinScannerViewModel();
    sub_10005A240();
    v1 = sub_10008D16C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CD500);
    }
  }
}

unint64_t sub_10005A240()
{
  result = qword_1000CD508;
  if (!qword_1000CD508)
  {
    type metadata accessor for VisualPinScannerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD508);
  }

  return result;
}

void sub_10005A298()
{
  if (!qword_1000CD518)
  {
    v0 = sub_10008CF4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD518);
    }
  }
}

void sub_10005A2F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10008D8FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005A358(uint64_t a1)
{
  v2 = sub_10008D09C();
  __chkstk_darwin(v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008D1DC();
}

uint64_t sub_10005A420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10008D29C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  __chkstk_darwin(v9, v10);
  v12 = &v16 - v11;
  sub_10000C314(v2, &v16 - v11, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008CFDC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_10008DE3C();
    v15 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void *sub_10005A620@<X0>(void *a2@<X8>)
{
  type metadata accessor for ManualPinEntryView(0);
  sub_100009C08(&qword_1000CD630, &qword_100095228);
  result = sub_10008D8CC();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_10005A69C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10008CFDC();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6, v7);
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = type metadata accessor for ManualPinEntryView(0);
  v12 = (a4 + v11[7]);
  v14 = v12[1];
  v15 = v12[2];
  v30 = *v12;
  v13 = v30;
  v31 = v14;
  v32 = v15;
  v35 = v10;
  v36 = v9;

  sub_100009C08(&qword_1000CD630, &qword_100095228);
  sub_10008D8DC();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  sub_10008D8CC();
  v16 = sub_10008DC9C();

  if (v16 == *(a4 + v11[6]))
  {
    v18 = (a4 + v11[9]);
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v30) = *v18;
    v31 = v20;
    sub_100009C08(&qword_1000CDB30, &qword_100095230);
    result = sub_10008D8CC();
    if ((v35 & 1) == 0)
    {
      LOBYTE(v30) = v19;
      v31 = v20;
      LOBYTE(v35) = 1;
      sub_10008D8DC();
      v21 = v27;
      sub_10005A420(v27);
      sub_10008CFCC();
      (*(v28 + 8))(v21, v29);
      v22 = *(a4 + v11[5]);
      if (v22)
      {
        v30 = v13;
        v31 = v14;
        v32 = v15;

        sub_10008D8CC();
        v23 = v35;
        v24 = v36;
        sub_10000BE8C(v22 + 16, &v30);
        v25 = v33;
        v26 = v34;
        sub_10000BB24(&v30, v33);
        (*(v26 + 40))(v23, v24, v25, v26);

        return sub_10000BC74(&v30);
      }

      else
      {
        type metadata accessor for VisualPinScannerViewModel();
        sub_10005A240();
        result = sub_10008D13C();
        __break(1u);
      }
    }
  }

  return result;
}

__n128 sub_10005A948@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v44[-v8];
  v10 = (a2 + *(type metadata accessor for ManualPinEntryView(0) + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  *&v57 = *v10;
  *(&v57 + 1) = v12;
  v58.n128_u64[0] = v13;
  sub_100009C08(&qword_1000CD630, &qword_100095228);
  sub_10008D8CC();
  v14 = sub_10008DC9C();

  if (v14 <= a1)
  {
    v32 = sub_10008D8AC();
    sub_10008D5CC();
    v33 = enum case for Font.Design.default(_:);
    v34 = sub_10008D5BC();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v9, v33, v34);
    (*(v35 + 56))(v9, 0, 1, v34);
    v36 = sub_10008D5EC();
    sub_10000C3F8(v9, &qword_1000CB730, &qword_100095280);
    KeyPath = swift_getKeyPath();
    sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100091E50;
    v39 = sub_10008D54C();
    *(inited + 32) = v39;
    v40 = sub_10008D55C();
    *(inited + 33) = v40;
    v41 = sub_10008D57C();
    sub_10008D57C();
    if (sub_10008D57C() != v39)
    {
      v41 = sub_10008D57C();
    }

    sub_10008D57C();
    if (sub_10008D57C() != v40)
    {
      v41 = sub_10008D57C();
    }

    LOBYTE(v45) = 1;
    v48[0] = 1;
    v50 = v32;
    v51 = KeyPath;
    v52 = v36;
    LOBYTE(v53) = v41;
    v54 = 0u;
    v55 = 0u;
    v56 = 257;
  }

  else
  {
    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();
    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();

    sub_10008DCAC();

    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();
    v15 = sub_10008DCEC();
    v17 = v16;

    *&v57 = v15;
    *(&v57 + 1) = v17;
    sub_100019E50();
    v18 = sub_10008D68C();
    v20 = v19;
    v22 = v21;
    v23 = enum case for Font.Design.default(_:);
    v24 = sub_10008D5BC();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v9, v23, v24);
    (*(v25 + 56))(v9, 0, 1, v24);
    sub_10008D5EC();
    sub_10000C3F8(v9, &qword_1000CB730, &qword_100095280);
    v26 = sub_10008D67C();
    v28 = v27;
    LOBYTE(v25) = v29;
    v31 = v30;

    sub_10001CD48(v18, v20, v22 & 1);

    v49 = v25 & 1;
    v44[15] = 0;
    v50 = v26;
    v51 = v28;
    LOBYTE(v52) = v25 & 1;
    *(&v52 + 1) = *v48;
    HIDWORD(v52) = *&v48[3];
    v53 = v31;
    v54 = v45;
    v55 = v46;
    v56 = v47;
  }

  sub_100009C08(&qword_1000CD660, &qword_1000952B8);
  sub_10005D830(&qword_1000CD668, &qword_1000CD660, &qword_1000952B8, sub_10005D8B4);
  sub_10008D3DC();
  v42 = v60;
  *(a3 + 32) = v59;
  *(a3 + 48) = v42;
  *(a3 + 64) = v61;
  result = v58;
  *a3 = v57;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_10005AED4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v87 = sub_100009C08(&qword_1000CD5B8, &qword_1000951A8);
  v83 = *(v87 - 8);
  __chkstk_darwin(v87, v3);
  v81 = v79 - v4;
  v90 = sub_100009C08(&qword_1000CD5C0, &qword_1000951B0);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90, v5);
  v86 = v79 - v6;
  v88 = sub_100009C08(&qword_1000CD5C8, &qword_1000951B8);
  v8 = __chkstk_darwin(v88, v7);
  v92 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v91 = v79 - v11;
  v80 = type metadata accessor for ManualPinEntryView(0);
  v12 = *(v80 - 8);
  __chkstk_darwin(v80, v13);
  v79[3] = v14;
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009C08(&qword_1000CD5D0, &qword_1000951C0);
  v17 = v16 - 8;
  __chkstk_darwin(v16, v18);
  v20 = v79 - v19;
  v21 = sub_100009C08(&qword_1000CD5D8, &qword_1000951C8);
  __chkstk_darwin(v21, v22);
  v24 = v79 - v23;
  v85 = sub_100009C08(&qword_1000CD5E0, &qword_1000951D0);
  v84 = *(v85 - 8);
  v26 = __chkstk_darwin(v85, v25);
  v82 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v94 = v79 - v29;
  *v20 = sub_10008D2BC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v30 = sub_100009C08(&qword_1000CD5E8, &qword_1000951D8);
  sub_10005B8FC(a1, &v20[*(v30 + 44)]);
  KeyPath = swift_getKeyPath();
  v32 = &v20[*(v17 + 44)];
  v33 = *(sub_100009C08(&qword_1000CD5F0, &qword_100095210) + 28);
  v34 = enum case for LayoutDirection.leftToRight(_:);
  v35 = sub_10008D09C();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = KeyPath;
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  LOBYTE(v33) = sub_10008D54C();
  *(inited + 32) = v33;
  v37 = sub_10008D55C();
  *(inited + 33) = v37;
  v38 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v33)
  {
    v38 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v37)
  {
    v38 = sub_10008D57C();
  }

  sub_10008CF0C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_10005D1A8(v20, v24);
  v47 = &v24[*(v21 + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  sub_10005D014(a1, v15);
  v48 = *(v12 + 80);
  v49 = swift_allocObject();
  sub_10005D07C(v15, v49 + ((v48 + 16) & ~v48));
  sub_10005D830(&qword_1000CD5F8, &qword_1000CD5D8, &qword_1000951C8, sub_10005D270);
  sub_10008D6FC();

  sub_10000C3F8(v24, &qword_1000CD5D8, &qword_1000951C8);
  v79[2] = sub_10008D2CC();
  v79[1] = v50;
  v79[0] = v51;
  sub_10005D014(a1, v15);
  sub_10008DDBC();
  v52 = sub_10008DDAC();
  v53 = a1;
  v54 = (v48 + 32) & ~v48;
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  *(v55 + 24) = &protocol witness table for MainActor;
  sub_10005D07C(v15, v55 + v54);
  sub_10005D014(v53, v15);
  v56 = sub_10008DDAC();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = &protocol witness table for MainActor;
  sub_10005D07C(v15, v57 + v54);
  sub_10008D95C();
  v58 = v81;
  sub_10008DA3C();
  v59 = sub_10001121C(&qword_1000CD620, &qword_1000CD5B8, &qword_1000951A8, &protocol conformance descriptor for TextField<A>);
  v60 = v86;
  v61 = v87;
  sub_10008D6EC();
  (*(v83 + 8))(v58, v61);
  v62 = v53 + *(v80 + 32);
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v62) = *(v62 + 16);
  LOBYTE(v95) = v63;
  *(&v95 + 1) = v64;
  LOBYTE(v96) = v62;
  sub_100009C08(&qword_1000CD588, &qword_100095138);
  sub_10008CF2C();
  *&v95 = v61;
  *(&v95 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v65 = v91;
  v66 = v90;
  sub_10008D78C();

  (*(v89 + 8))(v60, v66);
  sub_10008D9FC();
  sub_10008CF9C();
  v67 = (v65 + *(v88 + 36));
  v68 = v96;
  *v67 = v95;
  v67[1] = v68;
  v67[2] = v97;
  v69 = v84;
  v70 = *(v84 + 16);
  v71 = v82;
  v72 = v94;
  v73 = v85;
  v70(v82, v94, v85);
  v74 = v92;
  sub_10000C314(v65, v92, &qword_1000CD5C8, &qword_1000951B8);
  v75 = v93;
  v70(v93, v71, v73);
  v76 = sub_100009C08(&qword_1000CD628, &qword_100095220);
  sub_10000C314(v74, &v75[*(v76 + 48)], &qword_1000CD5C8, &qword_1000951B8);
  sub_10000C3F8(v65, &qword_1000CD5C8, &qword_1000951B8);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_10000C3F8(v74, &qword_1000CD5C8, &qword_1000951B8);
  return (v77)(v71, v73);
}

void *sub_10005B8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ManualPinEntryView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4, v7);
  v55 = v8;
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009C08(&qword_1000CD638, &unk_100095238);
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = __chkstk_darwin(v13, v14);
  v17 = __chkstk_darwin(v15, v16);
  v19 = &v43 - v18;
  result = __chkstk_darwin(v17, v20);
  v56 = &v43 - v24;
  v25 = *(a1 + *(v5 + 32));
  if (v25 < -1)
  {
    __break(1u);
  }

  else
  {
    v49 = v11;
    v50 = result;
    v48 = v19;
    v51 = v23;
    v52 = v22;
    v53 = a2;
    v59 = 0;
    v60 = v25 / 2;
    v46 = v25 / 2;
    KeyPath = swift_getKeyPath();
    v47 = a1;
    sub_10005D014(a1, v9);
    v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v27 = swift_allocObject();
    sub_10005D07C(v9, v27 + v26);
    sub_100009C08(&qword_1000CA058, &qword_100095260);
    sub_100009C08(&qword_1000CD640, &qword_100095268);
    v28 = sub_10001A700();
    sub_10001121C(&qword_1000CD648, &qword_1000CD640, &qword_100095268, &protocol conformance descriptor for VStack<A>);
    KeyPath = v28;
    sub_10008D96C();
    sub_10008D9FC();
    result = sub_10008CF9C();
    v67 = 1;
    v66 = v60;
    v65 = v62;
    if ((v25 & 0x8000000000000000) == 0)
    {
      v57 = v46;
      v58 = v25;
      v43 = v59;
      v44 = v61;
      v45 = v63;
      v46 = v64;
      swift_getKeyPath();
      sub_10005D014(v47, v9);
      v29 = swift_allocObject();
      sub_10005D07C(v9, v29 + v26);
      v30 = v48;
      sub_10008D96C();
      v31 = v49;
      v32 = v50;
      v33 = *(v49 + 16);
      v34 = v51;
      v35 = v56;
      v33(v51, v56, v50);
      v36 = v67;
      LODWORD(KeyPath) = v66;
      LODWORD(v55) = v65;
      v37 = v52;
      v33(v52, v30, v32);
      v38 = v53;
      v33(v53, v34, v32);
      v39 = sub_100009C08(&qword_1000CD650, &qword_100095270);
      v40 = v38 + *(v39 + 48);
      *v40 = 0;
      *(v40 + 8) = v36;
      *(v40 + 16) = v43;
      *(v40 + 24) = KeyPath;
      *(v40 + 32) = v44;
      *(v40 + 40) = v55;
      v41 = v46;
      *(v40 + 48) = v45;
      *(v40 + 56) = v41;
      v33(v38 + *(v39 + 64), v37, v32);
      v42 = *(v31 + 8);
      v42(v30, v32);
      v42(v35, v32);
      v42(v37, v32);
      return (v42)(v34, v32);
    }
  }

  __break(1u);
  return result;
}

double sub_10005BE34@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_10008D2EC();
  v18 = 1;
  sub_10005A948(v5, a2, &v12);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = v16;
  v24[0] = v12;
  sub_10000C314(&v19, v11, &qword_1000CD658, &qword_100095278);
  sub_10000C3F8(v24, &qword_1000CD658, &qword_100095278);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *v17;
  *(a3 + 33) = *&v17[16];
  v8 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v8;
  result = *&v17[57];
  *(a3 + 74) = *&v17[57];
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 17) = v7;
  return result;
}

uint64_t sub_10005BF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ManualPinEntryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8, v6);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_10008D2EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = sub_100009C08(&qword_1000CD560, &qword_100095108);
  sub_10005C284(v1, a1 + *(v8 + 44));
  v9 = *(sub_100009C08(&qword_1000CD568, &qword_100095110) + 36);
  v10 = enum case for ColorScheme.dark(_:);
  v11 = sub_10008CF5C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1 + v9, v10, v11);
  (*(v12 + 56))(a1 + v9, 0, 1, v11);
  LOBYTE(v10) = sub_10008D53C();
  v13 = a1 + *(sub_100009C08(&qword_1000CD570, &unk_100095118) + 36);
  *v13 = v10;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  sub_10005D014(v1, v7);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10005D07C(v7, v15 + v14);
  v16 = (a1 + *(sub_100009C08(&qword_1000CD578, &qword_100095128) + 36));
  *v16 = sub_10005D9C0;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  sub_10005D014(v1, v7);
  v17 = swift_allocObject();
  sub_10005D07C(v7, v17 + v14);
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v19 = sub_100009C08(&qword_1000CD580, &qword_100095130);
  sub_10008DEEC();

  result = swift_allocObject();
  *(result + 16) = sub_10005D9B8;
  *(result + 24) = v17;
  v21 = (a1 + *(v19 + 56));
  *v21 = sub_10005D16C;
  v21[1] = result;
  return result;
}

uint64_t sub_10005C284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v82 = a2;
  v2 = type metadata accessor for ManualPinEntryView(0);
  v85 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v86 = v4;
  v87 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_100009C08(&qword_1000CD590, &qword_100095140);
  v89 = *(v101 - 8);
  v6 = __chkstk_darwin(v101, v5);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v100 = &v77 - v9;
  v10 = sub_100009C08(&qword_1000CD598, &qword_100095148);
  __chkstk_darwin(v10 - 8, v11);
  v78 = (&v77 - v12);
  v83 = sub_100009C08(&qword_1000CD5A0, &qword_100095150);
  v14 = __chkstk_darwin(v83, v13);
  v99 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v81 = &v77 - v18;
  __chkstk_darwin(v17, v19);
  v98 = &v77 - v20;
  v21 = sub_10008CB2C();
  __chkstk_darwin(v21 - 8, v22);
  v77 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10008DBBC();
  __chkstk_darwin(v24 - 8, v25);
  sub_10008DB5C();
  sub_10008CB1C();
  v105 = sub_10008DC3C();
  v106 = v26;
  sub_100019E50();
  v27 = sub_10008D68C();
  v29 = v28;
  v31 = v30;
  v32 = sub_10008D66C();
  v34 = v33;
  v36 = v35;
  sub_10001CD48(v27, v29, v31 & 1);

  sub_10008D59C();
  v96 = sub_10008D67C();
  v95 = v37;
  LOBYTE(v27) = v38;
  v97 = v39;

  v40 = v36 & 1;
  v41 = v79;
  sub_10001CD48(v32, v34, v40);
  v42 = v78;

  v94 = sub_10008D55C();
  v93 = v27 & 1;
  LOBYTE(v105) = v27 & 1;
  LOBYTE(v102) = 1;
  sub_10008DB5C();
  sub_10008CB1C();
  v105 = sub_10008DC3C();
  v106 = v43;
  v91 = sub_10008D68C();
  v84 = v44;
  v80 = v45;
  v92 = v46;
  KeyPath = swift_getKeyPath();
  *v42 = sub_10008D9FC();
  v42[1] = v47;
  v48 = sub_100009C08(&qword_1000CD5A8, &unk_100095188);
  sub_10005AED4(v41, v42 + *(v48 + 44));
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  LOBYTE(v29) = sub_10008D54C();
  *(inited + 32) = v29;
  v50 = sub_10008D55C();
  *(inited + 33) = v50;
  v51 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v29)
  {
    v51 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v50)
  {
    v51 = sub_10008D57C();
  }

  v52 = v81;
  sub_100037C28(v42, v81, &qword_1000CD598, &qword_100095148);
  v53 = v52 + *(v83 + 36);
  *v53 = v51;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  *(v53 + 40) = 1;
  v54 = v52;
  v55 = v98;
  sub_100037C28(v54, v98, &qword_1000CD5A0, &qword_100095150);
  sub_10008DB5C();
  sub_10008CB1C();
  v105 = sub_10008DC3C();
  v106 = v56;
  v57 = v41;
  v58 = v87;
  sub_10005D014(v57, v87);
  v59 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v60 = swift_allocObject();
  sub_10005D07C(v58, v60 + v59);
  v61 = v100;
  sub_10008D92C();
  v62 = v99;
  sub_10000C314(v55, v99, &qword_1000CD5A0, &qword_100095150);
  v63 = v89;
  v87 = *(v89 + 16);
  v64 = v88;
  (v87)(v88, v61, v101);
  *&v102 = v96;
  *(&v102 + 1) = v95;
  LOBYTE(v103) = v93;
  *(&v103 + 1) = *v116;
  DWORD1(v103) = *&v116[3];
  *(&v103 + 1) = v97;
  v104[0] = v94;
  *&v104[1] = *v115;
  *&v104[4] = *&v115[3];
  memset(&v104[8], 0, 32);
  v104[40] = 1;
  v65 = *&v104[16];
  v66 = v82;
  *(v82 + 48) = *v104;
  *(v66 + 64) = v65;
  *(v66 + 73) = *&v104[25];
  v67 = v103;
  *(v66 + 16) = v102;
  *(v66 + 32) = v67;
  *v66 = 0;
  *(v66 + 8) = 1;
  v68 = v91;
  v69 = v84;
  *(v66 + 96) = v91;
  *(v66 + 104) = v69;
  v70 = v80 & 1;
  *(v66 + 112) = v80 & 1;
  v71 = KeyPath;
  *(v66 + 120) = v92;
  *(v66 + 128) = v71;
  *(v66 + 136) = 1;
  v72 = sub_100009C08(&qword_1000CD5B0, &qword_100095198);
  sub_10000C314(v62, v66 + v72[20], &qword_1000CD5A0, &qword_100095150);
  v73 = v101;
  (v87)(v66 + v72[24], v64, v101);
  v74 = v66 + v72[28];
  *v74 = 0;
  *(v74 + 8) = 1;
  sub_10000C314(&v102, &v105, &qword_1000CC670, &qword_1000951A0);
  sub_10001CC9C(v68, v69, v70);
  v75 = *(v63 + 8);

  v75(v100, v73);
  sub_10000C3F8(v98, &qword_1000CD5A0, &qword_100095150);
  v75(v64, v73);
  sub_10000C3F8(v99, &qword_1000CD5A0, &qword_100095150);
  sub_10001CD48(v91, v69, v70);

  v105 = v96;
  v106 = v95;
  v107 = v93;
  *v108 = *v116;
  *&v108[3] = *&v116[3];
  v109 = v97;
  v110 = v94;
  *v111 = *v115;
  *&v111[3] = *&v115[3];
  v112 = 0u;
  v113 = 0u;
  v114 = 1;
  return sub_10000C3F8(&v105, &qword_1000CC670, &qword_1000951A0);
}

uint64_t sub_10005CD18(uint64_t a1)
{
  type metadata accessor for ManualPinEntryView(0);
  sub_100009C08(&qword_1000CD588, &qword_100095138);
  return sub_10008CF1C();
}

uint64_t sub_10005CD94(uint64_t a1)
{
  v18 = sub_10008D29C();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  __chkstk_darwin(v6, v7);
  v9 = &v17 - v8;
  v10 = sub_10008CFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C314(a1, v9, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_10008DE3C();
    v15 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_10008CFCC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10005D014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualPinEntryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualPinEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D134()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CD5D0, &qword_1000951C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005D270()
{
  result = qword_1000CD600;
  if (!qword_1000CD600)
  {
    sub_100007108(&qword_1000CD5D0, &qword_1000951C0);
    sub_10001121C(&qword_1000CD608, &qword_1000CD610, &qword_100095218, &protocol conformance descriptor for HStack<A>);
    sub_10001121C(&qword_1000CD618, &qword_1000CD5F0, &qword_100095210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD600);
  }

  return result;
}

void *sub_10005D358@<X0>(void *a1@<X8>)
{
  type metadata accessor for ManualPinEntryView(0);

  return sub_10005A620(a1);
}

uint64_t sub_10005D3CC()
{
  v1 = *(type metadata accessor for ManualPinEntryView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10008CFDC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_10005D534(uint64_t *a1)
{
  v3 = *(type metadata accessor for ManualPinEntryView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10005A69C(a1, v4, v5, v6);
}

uint64_t sub_10005D5A8()
{
  v1 = *(type metadata accessor for ManualPinEntryView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10008CFDC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005D780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D20C();
  *a1 = result;
  return result;
}

uint64_t sub_10005D7AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D20C();
  *a1 = result;
  return result;
}

uint64_t sub_10005D830(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8B4()
{
  result = qword_1000CD670;
  if (!qword_1000CD670)
  {
    sub_100007108(&qword_1000CD678, &qword_1000952C0);
    sub_10001121C(&qword_1000CCD38, &qword_1000CCD40, &unk_1000948E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD670);
  }

  return result;
}

uint64_t sub_10005D9D4()
{
  sub_10008DA5C();
  sub_100065F38(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630, &protocol conformance descriptor for [A]);
  return sub_10008DF5C();
}

void *sub_10005DAC0@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AddDevicesToADEExtensionView(0);
  v5 = *(a1 + *(result + 12));
  if (v5)
  {
    if (*(v5 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo))
    {
      result = sub_10008CECC();
      v6 = v7 ^ 1;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6 & 1;
  }

  else
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel(0);
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005DBA0@<X0>(BOOL *a2@<X8>)
{
  type metadata accessor for AddDevicesToADEExtensionView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = (v4 & 1) == 0;
  return result;
}

uint64_t sub_10005DC44@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v249 = *(v2 - 1);
  __chkstk_darwin(v2, v3);
  v250 = v4;
  v251 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_100009C08(&unk_1000CD690, &unk_1000952F0);
  v253 = *(v254 - 8);
  __chkstk_darwin(v254, v5);
  v252 = &v225 - v6;
  v264 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v8 = __chkstk_darwin(v264, v7);
  v261 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v260 = &v225 - v11;
  v257 = sub_10008CE3C();
  v12 = *(v257 - 1);
  __chkstk_darwin(v257, v13);
  v256 = (&v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10008C9BC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_10008CEBC();
  v20 = v2[5];
  *(a1 + v20) = swift_getKeyPath();
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  swift_storeEnumTagMultiPayload();
  v21 = a1 + v2[6];
  LOBYTE(v274) = 0;
  sub_10008D8BC();
  v22 = *(&v278 + 1);
  *v21 = v278;
  *(v21 + 1) = v22;
  v23 = a1 + v2[7];
  LOBYTE(v274) = 0;
  sub_10008D8BC();
  v24 = *(&v278 + 1);
  *v23 = v278;
  *(v23 + 1) = v24;
  v25 = a1 + v2[8];
  LOBYTE(v274) = 0;
  sub_10008D8BC();
  v26 = *(&v278 + 1);
  *v25 = v278;
  *(v25 + 1) = v26;
  v27 = a1 + v2[9];
  LOBYTE(v274) = 0;
  sub_10008D8BC();
  v28 = *(&v278 + 1);
  *v27 = v278;
  *(v27 + 1) = v28;
  v29 = (a1 + v2[10]);
  v274 = 0uLL;
  v275 = 0;
  sub_100009C08(&qword_1000CD6A8, &qword_100095338);
  sub_10008D8BC();
  v30 = v279;
  *v29 = v278;
  v29[1] = v30;
  v255 = objc_opt_self();
  v31 = [v255 defaultManager];
  v32 = [v31 temporaryDirectory];

  sub_10008C98C();
  sub_10008C97C();
  (*(v16 + 8))(v19, v15);
  v33 = (a1 + v2[12]);
  type metadata accessor for AddDevicesExtensionContainerViewModel(0);
  sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
  *v33 = sub_10008D15C();
  v33[1] = v34;
  v248 = v2[13];
  *(a1 + v248) = 0;
  v35 = (a1 + v2[14]);
  if (qword_1000C8D58 != -1)
  {
    swift_once();
  }

  v36 = qword_1000D6DE0;
  v37 = *algn_1000D6DE8;
  *v35 = qword_1000D6DE0;
  v35[1] = v37;
  v237 = v37;
  v38 = v2[15];
  v39 = qword_1000C8CF0;
  v238 = v36;
  swift_unknownObjectRetain_n();
  if (v39 != -1)
  {
    swift_once();
  }

  v262 = v38;
  sub_10000BE8C(&unk_1000D6CF0, v38 + a1);
  v40 = (a1 + v2[16]);
  v41 = objc_opt_self();
  v42 = [v41 standardUserDefaults];
  type metadata accessor for UserDefaultsBackedKeyValueStorage();
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v43 + 112) = v42;
  v246 = type metadata accessor for KeyValueStoreBackedNetworkInfoStorage(0);
  v44 = swift_allocObject();
  v45 = a1;
  v46 = sub_100065CB4(v43, v44);
  v47 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage, &unk_100092A28);
  *v40 = v46;
  v40[1] = v47;
  v247 = v47;
  v48 = (v45 + v2[17]);
  v259 = v46;

  v49 = [v41 standardUserDefaults];
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v50 + 112) = v49;
  v51 = type metadata accessor for KeyValueStoreBackedMDMServerInfoStorage(0);
  v52 = swift_allocObject();
  v53 = sub_100065A74(v50, v52);
  v48[3] = v51;
  v48[4] = &off_1000BF0E8;
  v258 = v48;
  *v48 = v53;
  v54 = (v45 + v2[18]);
  (*(v12 + 104))(v256, enum case for NWInterface.InterfaceType.wifi(_:), v257);
  sub_10008CE8C();
  swift_allocObject();
  v55 = sub_10008CE5C();
  v56 = type metadata accessor for NWPathMonitorBackedWiFiNetworkStatusMonitor(0);
  swift_allocObject();
  v57 = sub_100041374(v55);
  v54[3] = v56;
  v54[4] = &off_1000C0E38;
  v263 = v54;
  *v54 = v57;
  v58 = (v45 + v2[19]);
  v59 = type metadata accessor for CoreBluetoothBackedBluetoothStatusMonitor(0);
  v60 = [objc_allocWithZone(v59) init];
  v58[3] = v59;
  v58[4] = &off_1000C1DE8;
  v236 = v58;
  *v58 = v60;
  v61 = (v45 + v2[20]);
  v62 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v63 = swift_allocObject();
  *&v278 = 0;
  BYTE8(v278) = 1;
  sub_100009C08(&qword_1000CD6C0, &unk_100093A00);
  swift_allocObject();
  *(v63 + 16) = sub_10008CD6C();
  v240 = v62;
  v61[3] = v62;
  v61[4] = &off_1000C0C30;
  v256 = v61;
  *v61 = v63;
  v265 = v2;
  v64 = v2[21];
  v266 = v45;
  v65 = (v45 + v64);
  v66 = type metadata accessor for ConcreteCurrentWiFiNetworkPrimitives();
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v65[3] = v66;
  v65[4] = &off_1000C0878;
  v257 = v65;
  *v65 = v67;
  v245 = (v45 + v2[33]);
  v68 = type metadata accessor for OperationStatus(0);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v70 = type metadata accessor for ErrorInfo(0);
  v71 = *(v70 - 8);
  v72 = *(v71 + 56);
  v73 = v71 + 56;
  v74 = v260;
  v72(v260, 1, 1, v70);
  v75 = v261;
  sub_10000C314(v74, v261, &unk_1000CBAE8, &qword_100093260);
  sub_10008CD7C();
  sub_10000C3F8(v74, &unk_1000CBAE8, &qword_100093260);
  v76 = (v69 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v76 = sub_10005DC3C;
  v76[1] = 0;
  v77 = sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus, &unk_100093280);
  v78 = sub_10008D05C();
  v79 = v245;
  *v245 = v78;
  v79[1] = v80;
  v81 = (v266 + v265[34]);
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  v244 = v70;
  v243 = v72;
  v242 = v73;
  v72(v74, 1, 1, v70);
  sub_10000C314(v74, v75, &unk_1000CBAE8, &qword_100093260);
  sub_10008CD7C();
  sub_10000C3F8(v74, &unk_1000CBAE8, &qword_100093260);
  v83 = (v82 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v83 = sub_10005DC40;
  v83[1] = 0;
  v245 = v68;
  v241 = v77;
  *v81 = sub_10008D05C();
  v81[1] = v84;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v85 = sub_10008CCDC();
  sub_100009F94(v85, qword_1000D6D38);
  v86 = sub_10008CCBC();
  v87 = sub_10008DE1C();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v278 = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_10000A2D8(0x292874696E69, 0xE600000000000000, &v278);
    _os_log_impl(&_mh_execute_header, v86, v87, "%s - Begin AddDevicesToADEExtensionView initialization", v88, 0xCu);
    sub_10000BC74(v89);
  }

  v90 = v265;
  v91 = v263;
  v92 = v262;
  v93 = v257;
  v94 = v266;
  sub_100065F80(1868983881, 0xE400000000000000);
  sub_100065F80(0x6E6F6973726576, 0xE700000000000000);
  v95 = [v255 defaultManager];
  v239 = type metadata accessor for FileManagerBackedEncryptedKeyValueStorage(0);
  v96 = swift_allocObject();
  swift_defaultActor_initialize();
  v97 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41FileManagerBackedEncryptedKeyValueStorage____lazy_storage___documentsSubDirectoryURL;
  v98 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  (*(*(v98 - 8) + 56))(v96 + v97, 1, 1, v98);
  *(v96 + 112) = v95;
  *(v96 + 120) = xmmword_1000952D0;
  sub_10000BE8C(v92 + v94, &v278);
  sub_10000BE8C(v91, &v274);
  sub_10000BE8C(v236, &v271);
  sub_10000BE8C(v93, &v268);
  v99 = type metadata accessor for ConcreteDeviceDiscoveryPrerequisiteStatusProvider(0);
  v100 = swift_allocObject();
  v101 = v259;

  v102 = sub_100066720(&v278, v101, &v274, &v271, &v268, v100);
  v103 = (v94 + v90[23]);
  v103[3] = v99;
  v103[4] = &off_1000C1DF8;
  *v103 = v102;
  v104 = v90;
  if (qword_1000C8D50 != -1)
  {
    swift_once();
  }

  v106 = qword_1000D6DD0;
  v105 = *algn_1000D6DD8;
  v236 = *algn_1000D6DD8;
  v107 = v258;
  sub_10000BE8C(v258, &v278);
  sub_10000BE8C(v103, &v274);
  v108 = type metadata accessor for ConcreteDevicesProvider(0);
  v109 = swift_allocObject();
  v235 = v106;
  swift_unknownObjectRetain_n();

  v110 = sub_100067554(v238, v237, v106, v105, v96, v101, &v278, &v274, v109);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v111 = v266;
  v112 = (v266 + v104[22]);
  v112[3] = v108;
  v112[4] = &off_1000C1088;
  *v112 = v110;
  v113 = v112;
  v237 = v112;
  v238 = type metadata accessor for CameraViewModelProvider();
  sub_10000BE8C(v113, &v278);
  sub_10000BE8C(v262 + v111, &v274);
  sub_10000BE8C(v107, &v271);
  sub_10000BE8C(v103, &v268);
  sub_10000BE8C(v256, v267);
  v114 = *(&v279 + 1);
  v233 = v280;
  v115 = sub_10000BCC0(&v278, *(&v279 + 1));
  v234 = &v225;
  __chkstk_darwin(v115, v115);
  v231 = &v225 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v117 + 16))();
  v118 = v276;
  v230 = v277;
  v119 = sub_10000BCC0(&v274, v276);
  v232 = &v225;
  __chkstk_darwin(v119, v119);
  v121 = &v225 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v122 + 16))(v121);
  v123 = v272;
  v228 = v273;
  v124 = sub_10000BCC0(&v271, v272);
  v229 = &v225;
  __chkstk_darwin(v124, v124);
  v126 = &v225 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v127 + 16))(v126);
  v128 = v269;
  v226 = v270;
  v129 = sub_10000BCC0(&v268, v269);
  v227 = &v225;
  __chkstk_darwin(v129, v129);
  v131 = &v225 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v132 + 16))(v131);
  v255 = v96;
  v133 = sub_10000BCC0(v267, v267[3]);
  __chkstk_darwin(v133, v133);
  v135 = &v225 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v136 + 16))(v135);
  v223 = v118;
  v137 = v240;
  v138 = sub_1000776DC(v231, v121, v126, v131, v135, v238, v114, v123, v240, v223, v128, v233, v228, &off_1000C0C30, v230, v226);
  sub_10000BC74(v267);
  sub_10000BC74(&v268);
  sub_10000BC74(&v271);
  sub_10000BC74(&v274);
  sub_10000BC74(&v278);
  v139 = v265;
  v140 = v266;
  *(v266 + v265[25]) = v138;
  v238 = v138;
  sub_10000BE8C(v256, &v278);
  v141 = v237;
  sub_10000BE8C(v237, &v274);
  v142 = sub_10000BCC0(&v278, *(&v279 + 1));
  __chkstk_darwin(v142, v142);
  v144 = (&v225 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v145 + 16))(v144);
  v146 = *v144;
  v272 = v137;
  v273 = &off_1000C0C30;
  v271 = v146;
  type metadata accessor for VisualPinScannerViewModelProvider();
  v147 = swift_allocObject();
  v148 = sub_10000BCC0(&v271, v137);
  __chkstk_darwin(v148, v148);
  v150 = (&v225 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v151 + 16))(v150);
  v152 = *v150;
  v147[5] = v137;
  v147[6] = &off_1000C0C30;
  v147[2] = v152;
  sub_10000C3E0(&v274, (v147 + 7));

  sub_10000BC74(&v271);
  sub_10000BC74(&v278);
  *(v140 + v139[24]) = v147;
  v153 = type metadata accessor for DeviceStatusViewModelProvider();
  sub_10000BE8C(v141, &v278);
  v154 = *(&v279 + 1);
  v155 = v280;
  v156 = sub_10000BCC0(&v278, *(&v279 + 1));
  __chkstk_darwin(v156, v156);
  v158 = &v225 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v159 + 16))(v158);
  v160 = v235;
  ObjectType = swift_getObjectType();
  v162 = sub_100038D10(v158, v160, v153, v154, ObjectType, v155, v236);
  sub_10000BC74(&v278);
  *(v140 + v139[26]) = v162;
  v163 = type metadata accessor for SignInViewModelProvider();
  v164 = v262;
  sub_10000BE8C(v262 + v140, &v278);
  v165 = *(&v279 + 1);
  v166 = v280;
  v167 = sub_10000BCC0(&v278, *(&v279 + 1));
  __chkstk_darwin(v167, v167);
  v169 = &v225 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v170 + 16))(v169);
  v171 = sub_10000F534(v169, v163, v165, v166);
  v256 = v171;
  sub_10000BC74(&v278);
  *(v140 + v139[27]) = v171;
  v240 = type metadata accessor for SettingsViewModelProvider();
  sub_10000BE8C(v258, &v278);
  sub_10000BE8C(v263, &v274);
  sub_10000BE8C(v257, &v271);
  sub_10000BE8C(v164 + v140, &v268);
  v172 = *(&v279 + 1);
  v258 = v280;
  v173 = sub_10000BCC0(&v278, *(&v279 + 1));
  v262 = &v225;
  __chkstk_darwin(v173, v173);
  v175 = &v225 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v176 + 16))(v175);
  v177 = v276;
  v237 = v277;
  v178 = sub_10000BCC0(&v274, v276);
  v257 = &v225;
  __chkstk_darwin(v178, v178);
  v180 = &v225 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v181 + 16))(v180);
  v182 = v272;
  v235 = v273;
  v183 = sub_10000BCC0(&v271, v272);
  v236 = &v225;
  __chkstk_darwin(v183, v183);
  v185 = &v225 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v186 + 16))(v185);
  v188 = v269;
  v187 = v270;
  v189 = sub_10000BCC0(&v268, v269);
  v234 = &v225;
  __chkstk_darwin(v189, v189);
  v191 = &v225 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v192 + 16))(v191);
  v193 = sub_100065F38(&qword_1000CD6D8, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage, &unk_100095B58);
  v224 = v187;
  v194 = v247;
  v222 = v172;
  v195 = v259;
  v196 = v175;
  v197 = v255;
  v198 = sub_10006CF54(v259, v196, v180, v255, v185, v191, v240, v246, v177, v182, v222, v239, v188, v247, v237, v235, v258, v193, v224);
  v258 = v198;

  sub_10000BC74(&v268);
  sub_10000BC74(&v271);
  sub_10000BC74(&v274);
  sub_10000BC74(&v278);
  v199 = v265;
  v200 = v266;
  *(v266 + v265[28]) = v198;
  type metadata accessor for NetworkProfilePickerViewModelProvider();
  v201 = swift_allocObject();
  v201[2] = v195;
  v201[3] = v194;
  v201[4] = v197;
  v201[5] = v193;
  *(v200 + v199[29]) = v201;
  v202 = swift_allocObject();
  *(v202 + 16) = 0;
  v203 = v260;
  v243(v260, 1, 1, v244);
  sub_10000C314(v203, v261, &unk_1000CBAE8, &qword_100093260);

  sub_10008CD7C();
  sub_10000C3F8(v203, &unk_1000CBAE8, &qword_100093260);
  v204 = (v202 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v204 = sub_10005FC00;
  v204[1] = 0;
  v205 = (v200 + v199[35]);

  *v205 = sub_10008D05C();
  v205[1] = v206;
  sub_10000BE8C((v256 + 2), &v278);
  type metadata accessor for SignInViewModel(0);
  swift_allocObject();

  sub_10005685C(&v278, v202);

  v207 = (v200 + v199[32]);
  sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel, &unk_100094C38);
  *v207 = sub_10008D05C();
  v207[1] = v208;

  v209 = sub_10007745C();

  *(v200 + v199[30]) = v209;
  v210 = sub_10006BF54();

  *(v200 + v199[31]) = v210;
  swift_beginAccess();
  sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v211 = v252;
  sub_10008CD8C();
  swift_endAccess();

  v212 = v251;
  sub_100068CA0(v200, v251);
  v213 = (*(v249 + 80) + 16) & ~*(v249 + 80);
  v214 = swift_allocObject();
  sub_100068D08(v212, v214 + v213);
  sub_10001121C(&unk_1000CD6F0, &unk_1000CD690, &unk_1000952F0, &protocol conformance descriptor for Published<A>.Publisher);
  v215 = v254;
  v216 = sub_10008CE1C();

  (*(v253 + 8))(v211, v215);
  *(v200 + v248) = v216;
  v217 = sub_10008DBCC();
  v218 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v218, 0, sub_100064540, v217, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v219 = v263[3];
  v220 = v263[4];
  sub_10000BB24(v263, v219);
  (*(v220 + 16))(v219, v220);
}

uint64_t type metadata accessor for AddDevicesToADEExtensionView(uint64_t a1)
{
  result = qword_1000CD928;
  if (!qword_1000CD928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_10005FC04(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
    *(*(a2 + *(v4 + 56)) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus) = *(a2 + *(v4 + 132) + 8);
  }

  return result;
}

uint64_t sub_10005FC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v4 = *(v3 - 8);
  v100 = v3 - 8;
  __chkstk_darwin(v3 - 8, v5);
  v7 = v6;
  v8 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100009C08(&qword_1000CDA68, &qword_100095570);
  __chkstk_darwin(v109, v9);
  v11 = &v83 - v10;
  v90 = sub_100009C08(&qword_1000CDA70, &qword_100095578);
  v91 = *(v90 - 8);
  __chkstk_darwin(v90, v12);
  v99 = &v83 - v13;
  v92 = sub_100009C08(&qword_1000CDA78, &qword_100095580);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92, v14);
  v101 = &v83 - v15;
  v94 = sub_100009C08(&qword_1000CDA80, &qword_100095588);
  v95 = *(v94 - 8);
  __chkstk_darwin(v94, v16);
  v102 = &v83 - v17;
  v18 = sub_100009C08(&qword_1000CDA88, &qword_100095590);
  v19 = *(v18 - 8);
  v96 = v18;
  v97 = v19;
  __chkstk_darwin(v18, v20);
  v103 = &v83 - v21;
  *v11 = sub_10008D2EC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = sub_100009C08(&qword_1000CDA90, &qword_100095598);
  sub_100060958(v1, &v11[*(v22 + 44)]);
  v104 = v1;
  sub_100068CA0(v1, v8);
  sub_10008DDBC();
  v23 = sub_10008DDAC();
  v24 = *(v4 + 80);
  v25 = (v24 + 32) & ~v24;
  v107 = v7;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v8, v26 + v25);
  v105 = v8;
  sub_100068CA0(v2, v8);
  v27 = sub_10008DDAC();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v8, v28 + v25);
  sub_10008D95C();
  v87 = sub_100009C08(&qword_1000CDA98, &qword_1000955A0);
  v88 = sub_10001121C(&qword_1000CDAA0, &qword_1000CDA68, &qword_100095570, &protocol conformance descriptor for VStack<A>);
  v29 = sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
  v30 = sub_10006A364();
  v112 = v29;
  v113 = v30;
  v86 = &opaque type descriptor for <<opaque return type of View.interactiveDismissDisabled(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10008D77C();

  sub_10006A444(v11);
  v32 = v104;
  v31 = v105;
  sub_100068CA0(v104, v105);
  v33 = sub_10008DDAC();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v31, v34 + v25);
  v35 = sub_10008DDAC();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = &protocol witness table for MainActor;
  sub_10008D95C();
  sub_100068CA0(v32, v31);
  v108 = v24;
  v106 = (v24 + 16) & ~v24;
  v37 = swift_allocObject();
  sub_100068D08(v31, v37 + ((v24 + 16) & ~v24));
  v84 = sub_100009C08(&qword_1000CDAC0, &qword_1000955B0);
  v112 = v109;
  v113 = v87;
  v114 = v88;
  v115 = OpaqueTypeConformance2;
  v109 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v85 = swift_getOpaqueTypeConformance2();
  v38 = sub_100007108(&qword_1000CDAC8, &qword_1000955B8);
  v39 = sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
  v40 = type metadata accessor for ErrorInfo(255);
  OpaqueTypeConformance2 = v40;
  v41 = sub_10006A85C();
  v88 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
  v112 = v39;
  v113 = v40;
  v114 = v41;
  v115 = v88;
  v87 = &opaque type descriptor for <<opaque return type of View.alert<A>(item:content:)>>;
  v42 = swift_getOpaqueTypeConformance2();
  v112 = v38;
  v113 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v90;
  v45 = v99;
  sub_10008D77C();

  (*(v91 + 8))(v45, v44);
  v46 = v100;
  v47 = v104;
  v48 = (v104 + *(v100 + 32));
  v49 = *v48;
  v50 = *(v48 + 1);
  v110 = v49;
  v111 = v50;
  v99 = sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  LODWORD(v91) = v114;
  v51 = v105;
  sub_100068CA0(v47, v105);
  v52 = v106;
  v53 = swift_allocObject();
  sub_100068D08(v51, v53 + v52);
  v86 = sub_100009C08(&qword_1000CDB38, &qword_1000955F0);
  v112 = v44;
  v113 = v84;
  v114 = v85;
  v115 = v43;
  v90 = swift_getOpaqueTypeConformance2();
  v54 = sub_100007108(&qword_1000CDB40, &qword_1000955F8);
  v55 = sub_10006A9E4();
  v56 = sub_100059828();
  v112 = v54;
  v113 = &type metadata for FileExporterView;
  v114 = v55;
  v115 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v101;
  v59 = v92;
  sub_10008D77C();

  (*(v93 + 8))(v58, v59);
  v60 = *(v46 + 40);
  v61 = v104;
  v62 = (v104 + v60);
  v63 = *v62;
  v64 = *(v62 + 1);
  v110 = v63;
  v111 = v64;
  sub_10008D8EC();
  v65 = v105;
  sub_100068CA0(v61, v105);
  v66 = v106;
  v67 = swift_allocObject();
  v68 = v65;
  sub_100068D08(v65, v67 + v66);
  v112 = v59;
  v113 = v86;
  v114 = v90;
  v115 = v57;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10006AB3C();
  v71 = v94;
  v72 = v102;
  sub_10008D77C();

  (*(v95 + 8))(v72, v71);
  v73 = v61 + *(v100 + 36);
  v74 = *v73;
  v75 = *(v73 + 8);
  v110 = v74;
  v111 = v75;
  sub_10008D8EC();
  sub_100068CA0(v61, v68);
  v76 = v106;
  v77 = swift_allocObject();
  sub_100068D08(v68, v77 + v76);
  sub_100009C08(&qword_1000CDB78, &qword_100095608);
  v112 = v71;
  v113 = &type metadata for NetworkProfilePickerView;
  v114 = v69;
  v115 = v70;
  swift_getOpaqueTypeConformance2();
  v78 = type metadata accessor for SettingsView(255);
  v79 = sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView, &unk_10009404C);
  v112 = v78;
  v113 = OpaqueTypeConformance2;
  v114 = v79;
  v115 = v88;
  swift_getOpaqueTypeConformance2();
  v80 = v96;
  v81 = v103;
  sub_10008D77C();

  return (*(v97 + 8))(v81, v80);
}

uint64_t sub_100060958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_100009C08(&qword_1000CDBD0, &qword_100095708);
  __chkstk_darwin(v3, v4);
  v85 = &v65 - v5;
  v6 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  __chkstk_darwin(v6 - 8, v7);
  v81 = &v65 - v8;
  v9 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v65 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v65 - v18;
  v20 = sub_100009C08(&qword_1000CDBD8, &qword_100095710);
  __chkstk_darwin(v20, v21);
  v23 = (&v65 - v22);
  v24 = sub_100009C08(&qword_1000CDBE0, &qword_100095718);
  v80 = *(v24 - 8);
  __chkstk_darwin(v24, v25);
  v79 = &v65 - v26;
  v83 = v9;
  v84 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v88 == 1)
  {
    v82 = v20;
    v75 = v24;
    v76 = v3;
    v28 = v83;
    v27 = v84;
    sub_100068CA0(v84, v19);
    v29 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v77 = swift_allocObject();
    sub_100068D08(v19, v77 + v29);
    sub_100068CA0(v27, v16);
    v74 = swift_allocObject();
    sub_100068D08(v16, v74 + v29);
    v30 = v78;
    sub_100068CA0(v27, v78);
    v73 = swift_allocObject();
    sub_100068D08(v30, v73 + v29);
    type metadata accessor for VisualPinScannerViewModel();
    sub_100065F38(&qword_1000CD508, type metadata accessor for VisualPinScannerViewModel, &unk_10009310C);

    v78 = sub_10008D15C();
    v72 = v31;
    type metadata accessor for AddDevicesExtensionContainerViewModel(0);
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
    v71 = sub_10008D15C();
    v70 = v32;
    type metadata accessor for CameraViewModel(0);
    sub_100065F38(&unk_1000CDC40, type metadata accessor for CameraViewModel, &unk_100096208);
    v68 = sub_10008D05C();
    v67 = v33;
    v87 = 0xC059000000000000;
    sub_10008D8BC();
    v34 = v88;
    v69 = v89;
    v87 = 0x4039000000000000;
    sub_10008D8BC();
    v35 = *(v27 + *(v28 + 48));
    if (v35)
    {
      v36 = v88;
      v66 = v89;

      v37 = sub_10008CD0C();
      v38 = v84;
      v39 = sub_1000421D4();
      v40 = sub_10008CD0C();
      v41 = (v23 + *(v82 + 36));
      v42 = *(sub_100009C08(&unk_1000CDC30, &qword_100095738) + 28);
      v43 = enum case for ColorScheme.dark(_:);
      v44 = sub_10008CF5C();
      (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
      *v41 = swift_getKeyPath();
      v45 = v67;
      *v23 = v68;
      v23[1] = v45;
      v46 = v72;
      v23[2] = v78;
      v23[3] = v46;
      v47 = v70;
      v23[4] = v71;
      v23[5] = v47;
      v48 = v77;
      v23[6] = sub_10006BA14;
      v23[7] = v48;
      v49 = v73;
      v50 = v74;
      v23[8] = sub_10006BA2C;
      v23[9] = v50;
      v23[10] = sub_10006BA30;
      v23[11] = v49;
      v23[12] = v34;
      v23[13] = v69;
      v23[14] = v36;
      v23[15] = v66;
      v23[16] = v37;
      v23[17] = v35;
      v23[18] = v40;
      v23[19] = v39;
      type metadata accessor for OperationStatus(0);
      sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus, &unk_100093280);
      sub_10008D06C();
      swift_getKeyPath();
      v51 = v81;
      sub_10008D07C();

      __chkstk_darwin(v52, v53);
      *(&v65 - 2) = v38;
      v54 = type metadata accessor for ErrorInfo(0);
      v55 = sub_10006B774();
      v56 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
      v57 = v79;
      v58 = v82;
      sub_10008D75C();
      sub_10000C3F8(v51, &qword_1000CDB88, &qword_100095610);
      sub_10000C3F8(v23, &qword_1000CDBD8, &qword_100095710);
      v59 = v80;
      v60 = v75;
      (*(v80 + 16))(v85, v57, v75);
      swift_storeEnumTagMultiPayload();
      v88 = v58;
      v89 = v54;
      v90 = v55;
      v91 = v56;
      swift_getOpaqueTypeConformance2();
      sub_10008D3DC();
      return (*(v59 + 8))(v57, v60);
    }

    else
    {
      result = sub_10008D13C();
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v62 = type metadata accessor for ErrorInfo(255);
    v63 = sub_10006B774();
    v64 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
    v88 = v20;
    v89 = v62;
    v90 = v63;
    v91 = v64;
    swift_getOpaqueTypeConformance2();
    return sub_10008D3DC();
  }

  return result;
}

uint64_t sub_1000612D4(uint64_t a1)
{
  type metadata accessor for AddDevicesToADEExtensionView(0);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_100061348()
{
  v1 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v3 = __chkstk_darwin(v1 - 8, v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v33 - v7;
  v37 = sub_10008C9BC();
  v34 = *(v37 - 8);
  v10 = __chkstk_darwin(v37, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v33 - v14;
  v16 = sub_10008D01C();
  v35 = *(v16 - 8);
  v36 = v16;
  __chkstk_darwin(v16, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AddDevicesToADEExtensionView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v39 - 5 >= 2)
  {
    if (v39 == 2)
    {
      v22 = *(v0 + *(v20 + 48));
      if (!v22)
      {
        type metadata accessor for AddDevicesExtensionContainerViewModel(0);
        sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
        result = sub_10008D13C();
        __break(1u);
        return result;
      }

      v23 = v22 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *(v23 + 8);
        v39 = 0x666572702D707041;
        v40 = 0xEA00000000003A73;

        v41._countAndFlagsBits = v25;
        v41._object = v24;
        sub_10008DCBC(v41);

        sub_10008C9AC();

        v26 = v34;
        v27 = v37;
        if ((*(v34 + 48))(v8, 1, v37) != 1)
        {
          (*(v26 + 32))(v15, v8, v27);
          sub_10006571C(v19);
          sub_10008D00C();
          (*(v35 + 8))(v19, v36);
          return (*(v26 + 8))(v15, v27);
        }

        sub_10000C3F8(v8, &qword_1000CD6D0, &qword_100095B50);
      }

      sub_10008C9AC();
      v28 = v34;
      v29 = v37;
      if ((*(v34 + 48))(v5, 1, v37) == 1)
      {
        return sub_10000C3F8(v5, &qword_1000CD6D0, &qword_100095B50);
      }

      else
      {
        (*(v28 + 32))(v12, v5, v29);
        sub_10006571C(v19);
        sub_10008D00C();
        (*(v35 + 8))(v19, v36);
        return (*(v28 + 8))(v12, v29);
      }
    }

    else if (v39 == 1)
    {
      sub_10006571C(v19);
      if (qword_1000C8D60 != -1)
      {
        swift_once();
      }

      sub_100009F94(v37, qword_1000D6DF0);
      sub_10008D00C();
      return (*(v35 + 8))(v19, v36);
    }

    else
    {
      v30 = (v0 + *(v20 + 28));
      v31 = *v30;
      v32 = *(v30 + 1);
      LOBYTE(v39) = v31;
      v40 = v32;
      v38 = 1;
      sub_100009C08(&qword_1000CDB30, &qword_100095230);
      return sub_10008D8DC();
    }
  }

  return result;
}

uint64_t sub_1000618B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4 - 8, v6);
  v7 = sub_10008CB2C();
  __chkstk_darwin(v7 - 8, v8);
  v9 = sub_10008DBBC();
  __chkstk_darwin(v9 - 8, v10);
  v11 = sub_100009C08(&qword_1000CDBC8, &qword_1000956B8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = v36 - v13;
  v15 = type metadata accessor for ErrorInfo(0);
  v16 = (a1 + *(v15 + 20));
  v17 = v16[1];
  v44 = *v16;
  v45 = v17;
  sub_100019E50();

  v18 = sub_10008D68C();
  v39 = v19;
  v40 = v18;
  v37 = v20;
  v38 = v21;
  v22 = (a1 + *(v15 + 24));
  v23 = v22[1];
  v44 = *v22;
  v45 = v23;

  v24 = sub_10008D68C();
  v36[1] = v25;
  v36[2] = v24;
  sub_10008DB5C();
  sub_10008CB1C();
  v44 = sub_10008DC3C();
  v45 = v26;
  v27 = sub_10008D68C();
  v29 = v28;
  v31 = v30;
  sub_100068CA0(v42, v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v33 = swift_allocObject();
  sub_100068D08(v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  sub_10008D7EC();
  sub_10001CD48(v27, v29, v31 & 1);

  v34 = sub_10008D7FC();
  (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
  return sub_10008D7BC();
}

uint64_t sub_100061C20(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddDevicesToADEExtensionView(0) + 88));
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  return (*(v3 + 56))(v2, v3);
}

uint64_t sub_100061C84()
{
  sub_10008D0BC();
  sub_10008D55C();
  sub_100009C08(&qword_1000CDAA8, &qword_1000955A8);
  sub_10006A364();
  return sub_10008D73C();
}

uint64_t sub_100061CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  __chkstk_darwin(v3 - 8, v4);
  v31 = &v28 - v5;
  v34 = sub_100009C08(&qword_1000CDAC8, &qword_1000955B8);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34, v6);
  v32 = &v28 - v7;
  type metadata accessor for SignInViewModel(0);
  sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel, &unk_100094C38);
  v30 = sub_10008D15C();
  v29 = v8;
  type metadata accessor for AddDevicesExtensionContainerViewModel(0);
  sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
  v9 = sub_10008D15C();
  v11 = v10;
  v12 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v13 = *(a1 + *(v12 + 128) + 8);
  v14 = sub_10008CD0C();
  v15 = *(a1 + *(v12 + 48));
  if (v15)
  {
    v16 = v14;

    v17 = sub_10008CD0C();
    v18 = sub_10008D0CC();
    v19 = sub_10008D53C();
    *&v36 = v30;
    *(&v36 + 1) = v29;
    *&v37 = v9;
    *(&v37 + 1) = v11;
    *&v38 = v16;
    *(&v38 + 1) = v13;
    *v39 = v17;
    *&v39[8] = v15;
    *&v39[16] = v18;
    v39[24] = v19;
    type metadata accessor for OperationStatus(0);
    sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus, &unk_100093280);
    sub_10008D06C();
    swift_getKeyPath();
    v20 = v31;
    sub_10008D07C();

    v21 = sub_100009C08(&qword_1000CDAD0, &qword_1000955C0);
    v22 = type metadata accessor for ErrorInfo(0);
    v23 = sub_10006A85C();
    v24 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
    v25 = v32;
    sub_10008D75C();
    sub_10000C3F8(v20, &qword_1000CDB88, &qword_100095610);
    v40[2] = v38;
    v41[0] = *v39;
    *(v41 + 9) = *&v39[9];
    v40[0] = v36;
    v40[1] = v37;
    sub_10000C3F8(v40, &qword_1000CDAD0, &qword_1000955C0);
    *&v36 = v21;
    *(&v36 + 1) = v22;
    *&v37 = v23;
    *(&v37 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    v26 = v34;
    sub_10008D73C();
    return (*(v33 + 8))(v25, v26);
  }

  else
  {

    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100062194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a2;
  v3 = sub_10008CB2C();
  __chkstk_darwin(v3 - 8, v4);
  v5 = sub_10008DBBC();
  __chkstk_darwin(v5 - 8, v6);
  v7 = sub_100009C08(&qword_1000CDBC8, &qword_1000956B8);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for ErrorInfo(0);
  v12 = (a1 + *(v11 + 20));
  v13 = v12[1];
  v27 = *v12;
  v28 = v13;
  sub_100019E50();

  v14 = sub_10008D68C();
  v26[1] = v15;
  v26[2] = v14;
  v26[0] = v16;
  v17 = (a1 + *(v11 + 24));
  v18 = v17[1];
  v27 = *v17;
  v28 = v18;

  sub_10008D68C();
  sub_10008DB5C();
  sub_10008CB1C();
  v27 = sub_10008DC3C();
  v28 = v19;
  v20 = sub_10008D68C();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_10008D7EC();
  sub_10001CD48(v20, v22, v13 & 1);

  v24 = sub_10008D7FC();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  return sub_10008D7BC();
}

uint64_t sub_100062440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  v37 = v6;
  v38 = sub_100009C08(&qword_1000CDB40, &qword_1000955F8);
  __chkstk_darwin(v38, v8);
  v10 = (&v33 - v9);
  v11 = *(a1 + *(v4 + 112));
  v34 = a1;
  sub_10000BE8C(v11 + 16, v42);
  v12 = *(v11 + 56);
  v13 = *(v11 + 64);
  type metadata accessor for DeviceStatusViewModel(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v35 = sub_100013D2C(v42, v12, v13);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068CA0(a1, v36);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100068D08(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_100065F38(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel, &unk_10008FDF0);
  v33 = sub_10008D15C();
  v17 = v16;
  v40 = 0x4059000000000000;
  sub_10008D8BC();
  v18 = v42[1];
  *v10 = v42[0];
  v10[1] = v18;
  v19 = type metadata accessor for DeviceStatusView(0);
  v20 = v19[5];
  *(v10 + v20) = swift_getKeyPath();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  swift_storeEnumTagMultiPayload();
  v21 = (v10 + v19[6]);
  *v21 = v33;
  v21[1] = v17;
  v22 = (v10 + v19[7]);
  *v22 = sub_10006AD28;
  v22[1] = v15;
  v23 = sub_10008CD0C();
  v24 = (v10 + *(v38 + 36));
  v25 = v34;
  v26 = v35;
  *v24 = v23;
  v24[1] = v26;
  v27 = v25 + *(v4 + 44);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v40) = v28;
  v41 = v29;

  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  v30 = v36;
  sub_100068CA0(v25, v36);
  v31 = swift_allocObject();
  sub_100068D08(v30, v31 + v14);
  sub_10006A9E4();
  sub_100059828();
  sub_10008D77C();

  return sub_10000C3F8(v10, &qword_1000CDB40, &qword_1000955F8);
}

uint64_t sub_100062814(uint64_t a1)
{
  v2 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_10008DDEC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100068CA0(a1, v6);
  sub_10008DDBC();
  v12 = sub_10008DDAC();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v6, v14 + v13);
  sub_10007B228(0, 0, v10, &unk_1000956A8, v14);
}

uint64_t sub_1000629CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100009C08(&qword_1000CDBB0, &qword_100095678);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008F280;
  v10 = *(v5 + 52);
  v11 = sub_10008C9BC();
  *(v9 + 56) = v11;
  v12 = sub_10000F5C0((v9 + 32));
  (*(*(v11 - 8) + 16))(v12, a1 + v10, v11);
  sub_100068CA0(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  result = sub_100068D08(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *a2 = v9;
  a2[1] = sub_10006AE24;
  a2[2] = v14;
  return result;
}

void sub_100062B50()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1, v5);
  v6 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = v0 + *(v2 + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v29[0]) = v12;
  *(&v29[0] + 1) = v13;
  LOBYTE(v27) = 0;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8DC();
  v14 = (v0 + *(v2 + 48));
  v15 = v14[1];
  v29[0] = *v14;
  v29[1] = v15;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8CC();
  if (v28)
  {
    v16 = v27;
    v26 = v28;
    v17 = sub_10008DDEC();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    sub_100068CA0(v0, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_10008DDBC();
    v18 = sub_10008DDAC();
    v19 = (*(v3 + 80) + 56) & ~*(v3 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v16;
    *(v20 + 40) = v26;
    sub_100068D08(v6, v20 + v19);
    sub_10007B228(0, 0, v10, &unk_100095690, v20);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v21 = sub_10008CCDC();
    sub_100009F94(v21, qword_1000D6D38);
    v22 = sub_10008CCBC();
    v23 = sub_10008DE1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v29[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000016, 0x800000010009BF30, v29);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s No device history document to remove", v24, 0xCu);
      sub_10000BC74(v25);
    }
  }
}

uint64_t sub_100062EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v5 = (v4 - 8);
  v22 = *(v4 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v4, v7);
  v8 = (a1 + v5[10]);
  v9 = *v8;
  v10 = *(v8 + 1);
  v26 = v9;
  v27 = v10;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = *(a1 + v5[31]);
  v15 = *(a1 + v5[36] + 8);
  type metadata accessor for NetworkProfilePickerViewModel();
  v16 = swift_allocObject();
  v17 = *(v14 + 32);
  v21[0] = *(v14 + 16);
  v21[1] = v17;
  *(v16 + 16) = v21[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v15;
  sub_100068CA0(a1, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v19 = swift_allocObject();
  sub_100068D08(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v16;
  *(a2 + 32) = sub_10006BF3C;
  *(a2 + 40) = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
}

uint64_t sub_100063070(uint64_t a1)
{
  type metadata accessor for AddDevicesToADEExtensionView(0);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_1000630E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v21 - v5;
  v7 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = type metadata accessor for SettingsView(0);
  __chkstk_darwin(v11, v12);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068CA0(a1, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_100068D08(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v14 + *(v11 + 24)) = swift_getKeyPath();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  swift_storeEnumTagMultiPayload();
  v21[5] = 0x4059000000000000;

  sub_10008D8BC();
  v17 = v21[7];
  *v14 = v21[6];
  v14[1] = v17;
  type metadata accessor for SettingsViewModel(0);
  sub_100065F38(&qword_1000C9BF8, type metadata accessor for SettingsViewModel, &unk_1000919B4);
  v14[2] = sub_10008D05C();
  v14[3] = v18;
  v19 = (v14 + *(v11 + 28));
  *v19 = sub_10006BF18;
  v19[1] = v16;
  type metadata accessor for OperationStatus(0);
  sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus, &unk_100093280);
  sub_10008D06C();
  swift_getKeyPath();
  sub_10008D07C();

  v21[4] = a1;
  type metadata accessor for ErrorInfo(0);
  sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView, &unk_10009404C);
  sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
  sub_10008D75C();
  sub_10000C3F8(v6, &qword_1000CDB88, &qword_100095610);
  return sub_10006B40C(v14, type metadata accessor for SettingsView);
}

uint64_t sub_1000634DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v60 = a3;
  v5 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v7);
  v49[1] = v8;
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10008CB2C();
  __chkstk_darwin(v10 - 8, v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10008DBBC();
  __chkstk_darwin(v14 - 8, v15);
  v16 = sub_10008D7FC();
  v18 = __chkstk_darwin(v16 - 8, v17);
  v59 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v61 = v49 - v21;
  v22 = type metadata accessor for ErrorInfo(0);
  v23 = (a1 + *(v22 + 20));
  v24 = v23[1];
  v62 = *v23;
  v63 = v24;
  sub_100019E50();

  v25 = sub_10008D68C();
  v57 = v26;
  v58 = v25;
  v55 = v27;
  v56 = v28;
  v29 = (a1 + *(v22 + 24));
  v30 = v29[1];
  v62 = *v29;
  v63 = v30;

  v31 = sub_10008D68C();
  v53 = v32;
  v54 = v31;
  v51 = v33 & 1;
  v52 = v34;
  sub_10008DB5C();
  v49[0] = v13;
  sub_10008CB1C();
  v62 = sub_10008DC3C();
  v63 = v35;
  v36 = sub_10008D68C();
  v38 = v37;
  LOBYTE(v24) = v39;
  sub_100068CA0(a2, v9);
  v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v41 = swift_allocObject();
  sub_100068D08(v9, v41 + v40);
  sub_10008D7EC();
  sub_10001CD48(v36, v38, v24 & 1);

  sub_10008DB5C();
  sub_10008CB1C();
  v62 = sub_10008DC3C();
  v63 = v42;
  v43 = sub_10008D68C();
  v45 = v44;
  LOBYTE(v13) = v46;
  sub_100068CA0(v50, v9);
  v47 = swift_allocObject();
  sub_100068D08(v9, v47 + v40);
  sub_10008D7DC();
  sub_10001CD48(v43, v45, v13 & 1);

  return sub_10008D7CC();
}

uint64_t sub_100063960(uint64_t a1, char a2)
{
  type metadata accessor for AddDevicesToADEExtensionView(0);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_1000639D8()
{
  v1 = sub_10008CB0C();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  sub_10008DDBC();
  v0[14] = sub_10008DDAC();
  v3 = sub_10008DD8C();
  v0[15] = v3;
  v0[16] = v2;

  return _swift_task_switch(sub_100063AC8, v3, v2);
}

uint64_t sub_100063AC8()
{
  if (qword_1000C8D10 != -1)
  {
    swift_once();
  }

  sub_10000BE8C(&qword_1000D6D68, (v0 + 2));
  type metadata accessor for KeychainBackedGrandSlamTokenStorage();
  inited = swift_initStackObject();
  v0[17] = inited;
  v2 = v0[5];
  v3 = v0[6];
  sub_10000BB24(v0 + 2, v2);
  *(inited + 16) = (*(v3 + 8))(v2, v3);
  *(inited + 24) = v4;
  sub_10000BC74(v0 + 2);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100063BF4;

  return sub_10007901C();
}

uint64_t sub_100063BF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = v2;

  v6 = v4[16];
  v7 = v4[15];
  if (v2)
  {
    v8 = sub_1000643D8;
  }

  else
  {
    v8 = sub_100063D3C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100063D3C()
{
  v20 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_10008CCDC();
  v0[22] = sub_100009F94(v2, qword_1000D6D38);

  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380675;
    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (!v5)
    {
      v1 = 0xE000000000000000;
    }

    v10 = sub_10000A2D8(v9, v1, &v19);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current grand slam token value: %{private}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  sub_10008CAFC();
  v14 = sub_10008CACC();
  v16 = v15;
  v0[23] = v15;
  (*(v12 + 8))(v11, v13);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_100063F64;

  return sub_1000793E8(v14, v16);
}

uint64_t sub_100063F64()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return _swift_task_switch(sub_100064450, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[26] = v5;
    *v5 = v2;
    v5[1] = sub_1000640F4;

    return sub_10007901C();
  }
}

uint64_t sub_1000640F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v6 = v4[16];
  v7 = v4[15];
  if (v2)
  {
    v8 = sub_1000644C8;
  }

  else
  {
    v8 = sub_10006423C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006423C()
{
  v13 = v0;
  v1 = v0[28];

  v2 = sub_10008CCBC();
  v3 = sub_10008DE1C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136380675;
    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    if (!v4)
    {
      v1 = 0xE000000000000000;
    }

    v9 = sub_10000A2D8(v8, v1, &v12);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updated grand slam token value: %{private}s", v6, 0xCu);
    sub_10000BC74(v7);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000643D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000644C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = type metadata accessor for AddDevicesToADEExtensionView(0);
  v4[20] = swift_task_alloc();
  v5 = sub_10008C9BC();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v4[23] = *(v6 + 64);
  v4[24] = swift_task_alloc();
  sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v4[25] = swift_task_alloc();
  sub_10008CB2C();
  v4[26] = swift_task_alloc();
  sub_10008DBBC();
  v4[27] = swift_task_alloc();
  sub_10008DDBC();
  v4[28] = sub_10008DDAC();
  v8 = sub_10008DD8C();
  v4[29] = v8;
  v4[30] = v7;

  return _swift_task_switch(sub_100064700, v8, v7);
}

uint64_t sub_100064700()
{
  if (qword_1000C8D50 != -1)
  {
    swift_once();
  }

  v1 = *algn_1000D6DD8;
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_100064858;

  return v5(ObjectType, v1);
}

uint64_t sub_100064858(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_100064980, v4, v3);
}

uint64_t sub_100064980()
{
  v31 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_10008DB5C();
  sub_10008CB1C();
  v4 = sub_10008DC3C();
  v5 = (v3 + *(v2 + 40));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *(v0 + 16) = *v5;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 80) = v4;
  *(v0 + 88) = v10;
  *(v0 + 96) = v1;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8DC();
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  *(v0 + 72) = v9;
  sub_10008D8CC();
  *(v0 + 264) = *(v0 + 104);
  v11 = *(v0 + 112);
  *(v0 + 272) = v11;
  if (v11)
  {
    *(v0 + 288) = *(*(v0 + 152) + 44);

    return _swift_task_switch(sub_100064D58, 0, 0);
  }

  else
  {

    v12 = (*(v0 + 144) + *(*(v0 + 152) + 36));
    v13 = *v12;
    v14 = *(v12 + 1);
    *(v0 + 128) = v13;
    *(v0 + 136) = v14;
    *(v0 + 292) = 1;
    sub_100009C08(&qword_1000CDB30, &qword_100095230);
    sub_10008D8DC();
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    v17 = sub_10008CCDC();
    sub_100009F94(v17, qword_1000D6D38);
    sub_100068CA0(v16, v15);
    v18 = sub_10008CCBC();
    v19 = sub_10008DE4C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 160);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136446210;
      sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = sub_10008E15C();
      v25 = v24;
      sub_10006B40C(v20, type metadata accessor for AddDevicesToADEExtensionView);
      v26 = sub_10000A2D8(v23, v25, &v30);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Document saved to %{public}s", v21, 0xCu);
      sub_10000BC74(v22);
    }

    else
    {
      v27 = *(v0 + 160);

      sub_10006B40C(v27, type metadata accessor for AddDevicesToADEExtensionView);
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100064D58()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = sub_10001FABC(*(v0 + 264), *(v0 + 272), *(v0 + 280));
  v17 = v9;
  v18 = v8;

  v10 = sub_10008DDEC();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v5 + 16))(v2, v7 + v1, v6);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v11, v2, v6);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v18;
  v13[1] = v17;
  sub_100026904(0, 0, v3, &unk_1000956B0, v12);

  v14 = *(v0 + 232);
  v15 = *(v0 + 240);

  return _swift_task_switch(sub_100064EF8, v14, v15);
}

uint64_t sub_100064EF8()
{
  v20 = v0;

  v1 = (*(v0 + 144) + *(*(v0 + 152) + 36));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 292) = 1;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8DC();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  sub_100068CA0(v5, v4);
  v7 = sub_10008CCBC();
  v8 = sub_10008DE4C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v12 = sub_10008E15C();
    v14 = v13;
    sub_10006B40C(v9, type metadata accessor for AddDevicesToADEExtensionView);
    v15 = sub_10000A2D8(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Document saved to %{public}s", v10, 0xCu);
    sub_10000BC74(v11);
  }

  else
  {
    v16 = *(v0 + 160);

    sub_10006B40C(v16, type metadata accessor for AddDevicesToADEExtensionView);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000651A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a7;
  v8 = type metadata accessor for AddDevicesToADEExtensionView(0);
  *(v7 + 80) = v8;
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_10008C9BC();
  *(v7 + 96) = v9;
  v10 = *(v9 - 8);
  *(v7 + 104) = v10;
  *(v7 + 112) = *(v10 + 64);
  *(v7 + 120) = swift_task_alloc();
  sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = sub_10008DDBC();
  *(v7 + 144) = sub_10008DDAC();
  *(v7 + 152) = *(v8 + 44);

  return _swift_task_switch(sub_1000652FC, 0, 0);
}

uint64_t sub_1000652FC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = sub_10008DDEC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v4 + 16))(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v4 + 32))(v9 + v8, v3, v5);
  sub_100026904(0, 0, v2, &unk_100095698, v9);

  v11 = sub_10008DD8C();

  return _swift_task_switch(sub_10006547C, v11, v10);
}

uint64_t sub_10006547C()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = (v1 + *(v2 + 40));
  v4 = v3[1];
  *(v0 + 16) = *v3;
  *(v0 + 32) = v4;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8DC();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);
  sub_100068CA0(v6, v5);
  v8 = sub_10008CCBC();
  v9 = sub_10008DE4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_10008E15C();
    v15 = v14;
    sub_10006B40C(v10, type metadata accessor for AddDevicesToADEExtensionView);
    v16 = sub_10000A2D8(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Document removed from %{public}s", v11, 0xCu);
    sub_10000BC74(v12);
  }

  else
  {
    v17 = *(v0 + 88);

    sub_10006B40C(v17, type metadata accessor for AddDevicesToADEExtensionView);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10006571C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10008D29C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  __chkstk_darwin(v9, v10);
  v12 = &v16 - v11;
  sub_10000C314(v2, &v16 - v11, &qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008D01C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_10008DE3C();
    v15 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000659A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_100065A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - v11;
  v13 = sub_100065F38(&qword_1000CD8A8, type metadata accessor for UserDefaultsBackedKeyValueStorage, &unk_10008FB24);
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension39KeyValueStoreBackedMDMServerInfoStorage__mdmServerInfo;
  v18 = xmmword_1000952E0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  sub_10008CD7C();
  (*(v9 + 32))(a2 + v14, v12, v8);
  *(a2 + 16) = a1;
  *(a2 + 24) = v13;
  v15 = sub_10008DDEC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  sub_100026904(0, 0, v7, &unk_1000954A0, v16);

  return a2;
}

uint64_t sub_100065CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - v11;
  v13 = sub_100065F38(&qword_1000CD8A8, type metadata accessor for UserDefaultsBackedKeyValueStorage, &unk_10008FB24);
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37KeyValueStoreBackedNetworkInfoStorage__networkInfo;
  v18 = xmmword_1000952E0;
  v19 = xmmword_1000952E0;
  sub_100009C08(&qword_1000CD8C0, &qword_100091B80);
  sub_10008CD7C();
  (*(v9 + 32))(a2 + v14, v12, v8);
  *(a2 + 112) = a1;
  *(a2 + 120) = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;

  sub_10008CDBC();
  v15 = sub_10008DDEC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  sub_100026904(0, 0, v7, &unk_1000954F0, v16);

  return a2;
}

uint64_t sub_100065F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100065F80(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_10008DBCC();
  v6 = sub_10008DBCC();
  v7 = [v4 pathForResource:v5 ofType:v6];

  if (v7)
  {
    v8 = sub_10008DBDC();
    v10 = v9;

    sub_10007227C(v8, v10, v32);
    v15 = sub_100072078();
    oslog = v16;
    v35 = v32[0];
    sub_10000C3F8(&v35, &qword_1000C92F0, &qword_10008F430);
    v34 = v32[1];
    sub_10000C3F8(&v34, &qword_1000C92F0, &qword_10008F430);
    v33 = v32[2];
    sub_10000C3F8(&v33, &qword_1000C92F0, &qword_10008F430);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v17 = sub_10008CCDC();
    sub_100009F94(v17, qword_1000D6D38);

    v18 = sub_10008CCBC();
    v19 = sub_10008DE0C();

    if (os_log_type_enabled(v18, v19))
    {
      v28 = v15;
      v20 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v31);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_10000A2D8(a1, a2, v31);
      *(v20 + 22) = 2082;
      v21 = sub_10000A2D8(v8, v10, v31);

      *(v20 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Reading contents of %{public}s.plist at %{public}s", v20, 0x20u);
      swift_arrayDestroy();

      v15 = v28;
    }

    else
    {
    }

    v22 = sub_10008CCBC();
    v23 = sub_10008DE4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v31);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_10000A2D8(v15, oslog, v31);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: App version and build number: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v25 = [objc_opt_self() standardUserDefaults];
    v26 = sub_10008DBCC();

    v27 = sub_10008DBCC();
    [v25 setObject:v26 forKey:v27];
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v11 = sub_10008CCDC();
    sub_100009F94(v11, qword_1000D6D38);
    osloga = sub_10008CCBC();
    v12 = sub_10008DE1C();
    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v32[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v32);
      _os_log_impl(&_mh_execute_header, osloga, v12, "%s Unable to find the resourced path for version.plist", v13, 0xCu);
      sub_10000BC74(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_100066720(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v91 = a4;
  v92 = a5;
  v93 = a3;
  v9 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v9 - 8, v10);
  v81 = &v65 - v11;
  v78 = sub_100009C08(&qword_1000CD7E8, &qword_1000953F0);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78, v12);
  v75 = &v65 - v13;
  v80 = sub_100009C08(&qword_1000CD7F0, &qword_1000953F8);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80, v14);
  v76 = &v65 - v15;
  v69 = sub_100009C08(&qword_1000CD7F8, &qword_100095400);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69, v16);
  v66 = &v65 - v17;
  v71 = sub_100009C08(&qword_1000CD800, &qword_100095408);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71, v18);
  v67 = &v65 - v19;
  v20 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v65 - v22;
  v85 = sub_100009C08(&qword_1000CD808, &unk_100095410);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85, v24);
  v26 = &v65 - v25;
  v27 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v31 = &v65 - v30;
  v32 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage, &unk_100092A28);
  *(a6 + 192) = &_swiftEmptyArrayStorage;
  v73 = a6 + 192;
  *(a6 + 200) = xmmword_1000952E0;
  *(a6 + 216) = 1028;
  *(a6 + 218) = 0;
  v33 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension49ConcreteDeviceDiscoveryPrerequisiteStatusProvider__prerequisiteStatus;
  LOBYTE(v96) = 6;
  sub_100009C08(&qword_1000CCC48, &unk_100094740);
  sub_10008CD7C();
  (*(v28 + 32))(a6 + v33, v31, v27);
  sub_10000BE8C(a1, a6 + 16);
  *(a6 + 56) = a2;
  *(a6 + 64) = v32;
  v74 = v32;
  sub_10000BE8C(v93, a6 + 72);
  sub_10000BE8C(v91, a6 + 112);
  sub_10000BE8C(v92, a6 + 152);
  v34 = a1[3];
  v35 = a1[4];
  sub_10000BB24(a1, v34);
  v36 = *(v35 + 16);
  v82 = a2;
  swift_unknownObjectRetain();
  v36(&v96, v34, v35);
  v37 = v97;
  if (v97)
  {
    sub_10000C3F8(&v96, &unk_1000C90E8, &qword_10008F350);
  }

  *(a6 + 218) = v37 != 0;
  v38 = a1[3];
  v39 = a1[4];
  sub_10000BB24(a1, v38);
  v94 = (*(v39 + 24))(v38, v39);
  v40 = sub_10003E148(0, &qword_1000CA440, OS_dispatch_queue_ptr);
  v72 = a1;
  v83 = v40;
  v41 = sub_10008DE7C();
  v95 = v41;
  v89 = sub_10008DE6C();
  v42 = *(v89 - 8);
  v88 = *(v42 + 56);
  v90 = v42 + 56;
  v88(v23, 1, 1, v89);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  v65 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30, &protocol conformance descriptor for AnyPublisher<A, B>);
  v87 = sub_1000590C8();
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  v86 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CD830, &qword_1000CD808, &unk_100095410, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v43 = v85;
  sub_10008CE1C();

  (*(v84 + 8))(v26, v43);
  swift_beginAccess();
  v85 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v84 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840, &protocol conformance descriptor for [A]);
  sub_10008CCEC();
  swift_endAccess();

  v44 = v93[3];
  v45 = v93[4];
  sub_10000BB24(v93, v44);
  v94 = (*(v45 + 8))(v44, v45);
  sub_100009C08(&qword_1000CD838, &qword_100095420);
  sub_100009C08(&qword_1000CD840, &qword_100095428);
  sub_10001121C(&qword_1000CD848, &qword_1000CD838, &qword_100095420, &protocol conformance descriptor for AnyPublisher<A, B>);
  v46 = v66;
  sub_10008CDEC();

  v47 = sub_10008DE7C();
  v94 = v47;
  v88(v23, 1, 1, v89);
  sub_10001121C(&qword_1000CD850, &qword_1000CD7F8, &qword_100095400, &protocol conformance descriptor for Publishers.Map<A, B>);
  v48 = v67;
  v49 = v69;
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  (*(v68 + 8))(v46, v49);
  swift_getKeyPath();
  v94 = a6;
  sub_10001121C(&qword_1000CD858, &qword_1000CD800, &qword_100095408, v86);
  v50 = v71;
  sub_10008CE2C();

  (*(v70 + 8))(v48, v50);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v51 = v91;
  v52 = v91[3];
  v53 = v91[4];
  sub_10000BB24(v91, v52);
  v94 = (*(v53 + 8))(v52, v53);
  sub_100009C08(&qword_1000CD860, &qword_100095458);
  sub_100009C08(&qword_1000CD868, &qword_100095460);
  sub_10001121C(&qword_1000CD870, &qword_1000CD860, &qword_100095458, v65);
  v54 = v75;
  sub_10008CDEC();

  v55 = sub_10008DE7C();
  v94 = v55;
  v88(v23, 1, 1, v89);
  sub_10001121C(&qword_1000CD878, &qword_1000CD7E8, &qword_1000953F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v76;
  v57 = v78;
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  (*(v77 + 8))(v54, v57);
  swift_getKeyPath();
  v94 = a6;
  sub_10001121C(&unk_1000CD880, &qword_1000CD7F0, &qword_1000953F8, v86);
  v58 = v80;
  sub_10008CE2C();

  (*(v79 + 8))(v56, v58);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v59 = sub_10008DDEC();
  v60 = v81;
  (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
  swift_unownedRetainStrong();
  v61 = v82;

  swift_unownedRetain();

  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v63 = v74;
  v62[4] = v61;
  v62[5] = v63;
  v62[6] = a6;
  sub_10007B228(0, 0, v60, &unk_100095490, v62);

  sub_10000BC74(v92);
  sub_10000BC74(v51);
  sub_10000BC74(v93);
  sub_10000BC74(v72);
  return a6;
}

void *sub_100067554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v128 = a8;
  v119 = a7;
  v126 = a6;
  v122 = a5;
  v118 = a4;
  v117 = a3;
  v104 = a2;
  v10 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v10 - 8, v11);
  v115 = &v98 - v12;
  v113 = sub_100009C08(&qword_1000CD700, &qword_100095350);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113, v13);
  v112 = &v98 - v14;
  v111 = sub_100009C08(&qword_1000CD708, &unk_100095358);
  v127 = *(v111 - 8);
  __chkstk_darwin(v111, v15);
  v110 = &v98 - v16;
  v108 = sub_100009C08(&unk_1000CD710, &unk_100095368);
  v109 = *(v108 - 8);
  __chkstk_darwin(v108, v17);
  v107 = &v98 - v18;
  v19 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  __chkstk_darwin(v19 - 8, v20);
  v105 = &v98 - v21;
  v22 = sub_100009C08(&unk_1000CD720, &unk_100095378);
  v23 = *(v22 - 8);
  v120 = v22;
  v121 = v23;
  __chkstk_darwin(v22, v24);
  v106 = &v98 - v25;
  v26 = sub_10008DA5C();
  v130 = *(v26 - 8);
  v131 = v26;
  __chkstk_darwin(v26, v27);
  v116 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10008DA8C();
  v123 = *(v129 - 8);
  __chkstk_darwin(v129, v29);
  v103 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10008DEAC();
  v102 = *(v101 - 8);
  __chkstk_darwin(v101, v31);
  v100 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33, v35);
  v37 = &v98 - v36;
  v38 = sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38, v40);
  v42 = &v98 - v41;
  v99 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage, &unk_100092A28);
  a9[20] = &_swiftEmptyArrayStorage;
  v125 = a9 + 20;
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009C08(&qword_1000C98B8, &unk_1000946D0);
  swift_allocObject();
  a9[21] = sub_10008CD6C();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009C08(&unk_1000CD730, &unk_10008F9D0);
  swift_allocObject();
  a9[22] = sub_10008CD6C();
  v43 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__assignmentStatus;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  (*(v39 + 32))(a9 + v43, v42, v38);
  v44 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__enrollmentError;
  LOBYTE(aBlock) = 5;
  sub_100009C08(&qword_1000C9750, &qword_1000945E0);
  sub_10008CD7C();
  (*(v34 + 32))(a9 + v44, v37, v33);
  v45 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  *(a9 + v45) = sub_10002EF8C(&_swiftEmptyArrayStorage);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_ignoredDeviceIdentifiers) = &_swiftEmptySetSingleton;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 0;
  sub_10008DA9C();
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = &_swiftEmptyArrayStorage;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) = 6;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 0;
  v46 = v104;
  a9[2] = a1;
  a9[3] = v46;
  v47 = v118;
  a9[4] = v117;
  a9[5] = v47;
  v48 = sub_100065F38(&qword_1000CD6D8, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage, &unk_100095B58);
  a9[6] = v122;
  a9[7] = v48;
  v49 = v99;
  a9[8] = v126;
  a9[9] = v49;
  sub_10000BE8C(v119, (a9 + 10));
  sub_10000BE8C(v128, (a9 + 15));
  sub_10003E148(0, &qword_1000CD740, OS_dispatch_source_ptr);
  aBlock = &_swiftEmptyArrayStorage;
  sub_100065F38(&qword_1000CD748, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v124 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_100009C08(&qword_1000CD750, &qword_100095388);
  sub_10001121C(&unk_1000CD758, &qword_1000CD750, &qword_100095388, &protocol conformance descriptor for [A]);
  v50 = v100;
  v51 = v101;
  sub_10008DF5C();
  v52 = sub_10003E148(0, &qword_1000CA440, OS_dispatch_queue_ptr);
  v53 = sub_10008DE7C();
  v54 = sub_10008DEBC();

  (*(v102 + 8))(v50, v51);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer) = v54;
  swift_getObjectType();
  v137 = sub_100069088;
  v138 = a9;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_100077134;
  v136 = &unk_1000C1720;
  v55 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v56 = v103;
  sub_10008DA7C();
  v57 = v116;
  sub_10005D9D4();
  sub_10008DECC();
  _Block_release(v55);
  swift_unknownObjectRelease();
  v130[1](v57, v131);
  (*(v123 + 8))(v56, v129);

  v123 = type metadata accessor for TerminalBackedDevicesDiscoveryProvider(0);
  aBlock = sub_100083980(v123, &off_1000C25C0);
  v58 = v52;
  v59 = sub_10008DE7C();
  v132 = v59;
  v131 = sub_10008DE6C();
  v60 = *(v131 - 8);
  v61 = *(v60 + 56);
  v129 = v60 + 56;
  v130 = v61;
  v62 = v105;
  (v61)(v105, 1, 1, v131);
  sub_100009C08(&qword_1000CD768, &unk_100095390);
  v126 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&unk_1000CD770, &qword_1000CD768, &unk_100095390, &protocol conformance descriptor for AnyPublisher<A, B>);
  v122 = sub_1000590C8();
  v63 = v106;
  sub_10008CE0C();
  sub_10000C3F8(v62, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  v116 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CD780, &unk_1000CD720, &unk_100095378, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v64 = v120;
  sub_10008CE1C();

  (*(v121 + 8))(v63, v64);
  swift_beginAccess();
  v120 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v121 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840, &protocol conformance descriptor for [A]);
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_1000839A4(v123, &off_1000C25C0);
  v65 = v58;
  v66 = sub_10008DE7C();
  v132 = v66;
  (v130)(v62, 1, 1, v131);
  sub_100009C08(&qword_1000CD788, &qword_1000953A0);
  sub_10001121C(&qword_1000CD790, &qword_1000CD788, &qword_1000953A0, v126);
  v67 = v107;
  sub_10008CE0C();
  sub_10000C3F8(v62, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_10001121C(&qword_1000CD798, &unk_1000CD710, &unk_100095368, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v68 = v108;
  sub_10008CE1C();

  (*(v109 + 8))(v67, v68);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_100083A44(v123, &off_1000C25C0);
  v69 = v65;
  v70 = sub_10008DE7C();
  v132 = v70;
  (v130)(v62, 1, 1, v131);
  v108 = sub_100009C08(&qword_1000CD7A0, &qword_1000953A8);
  v109 = sub_10001121C(&qword_1000CD7A8, &qword_1000CD7A0, &qword_1000953A8, v126);
  v71 = v110;
  sub_10008CE0C();
  sub_10000C3F8(v62, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  v107 = sub_10001121C(&qword_1000CD7B0, &qword_1000CD708, &unk_100095358, v116);
  v72 = v111;
  sub_10008CE1C();

  v73 = *(v127 + 8);
  v127 += 8;
  v106 = v73;
  (v73)(v71, v72);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_100083A68(v123, &off_1000C25C0);
  v104 = v69;
  v74 = sub_10008DE7C();
  v132 = v74;
  (v130)(v62, 1, 1, v131);
  sub_10008CE0C();
  sub_10000C3F8(v62, &qword_1000C9E10, &qword_10008FEF0);

  v75 = v128;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_10008CE1C();

  (v106)(v71, v72);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v76 = v75[3];
  v77 = v75[4];
  sub_10000BB24(v75, v76);
  aBlock = (*(v77 + 8))(v76, v77);
  v78 = sub_10008DE7C();
  v132 = v78;
  (v130)(v62, 1, 1, v131);
  sub_100009C08(&qword_1000CD7B8, &qword_1000953B0);
  sub_10001121C(&qword_1000CD7C0, &qword_1000CD7B8, &qword_1000953B0, v126);
  v79 = v112;
  sub_10008CE0C();
  sub_10000C3F8(v62, &qword_1000C9E10, &qword_10008FEF0);

  swift_getKeyPath();
  aBlock = a9;
  sub_10001121C(&qword_1000CD7C8, &qword_1000CD700, &qword_100095350, v116);
  v80 = v113;
  sub_10008CE2C();

  (*(v114 + 8))(v79, v80);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v81 = [objc_opt_self() defaultCenter];
  if (qword_1000C8D20 != -1)
  {
    swift_once();
  }

  v82 = qword_1000D6D98;
  v83 = objc_opt_self();
  v84 = [v83 mainQueue];
  v137 = sub_10006914C;
  v138 = a9;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_100077140;
  v136 = &unk_1000C17E8;
  v85 = _Block_copy(&aBlock);

  v86 = [v81 addObserverForName:v82 object:0 queue:v84 usingBlock:v85];
  _Block_release(v85);

  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver) = v86;
  swift_unknownObjectRelease();
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v87 = qword_1000D6D90;
  v88 = [v83 mainQueue];
  v137 = sub_100069154;
  v138 = a9;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_100077140;
  v136 = &unk_1000C1810;
  v89 = _Block_copy(&aBlock);

  v90 = [v81 addObserverForName:v87 object:0 queue:v88 usingBlock:v89];
  _Block_release(v89);

  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver) = v90;
  swift_unknownObjectRelease();
  v91 = sub_10008DDEC();
  v92 = v115;
  (*(*(v91 - 8) + 56))(v115, 1, 1, v91);
  sub_10008DDBC();
  v93 = v117;
  swift_unknownObjectRetain();

  v94 = sub_10008DDAC();
  v95 = swift_allocObject();
  v95[2] = v94;
  v95[3] = &protocol witness table for MainActor;
  v96 = v118;
  v95[4] = v93;
  v95[5] = v96;
  v95[6] = a9;
  sub_10007B228(0, 0, v92, &unk_1000953E0, v95);

  sub_10000BC74(v119);
  sub_10000BC74(v128);
  return a9;
}

uint64_t sub_100068CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_100068D6C(_BYTE *a1)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005FC04(a1, v4);
}

uint64_t sub_100068DDC()
{
  v0 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v12 - v2;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received reset grandslam token notification", v7, 2u);
  }

  v8 = sub_10008DDEC();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10008DDBC();
  v9 = sub_10008DDAC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100026904(0, 0, v3, &unk_100095348, v10);
}

uint64_t sub_100068FA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_1000639D8();
}

uint64_t sub_100069090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000690A8()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000092CC;

  return sub_100049B78(a1, v4, v5, v6, v7, v8);
}

unsigned __int8 *sub_100069254(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*a2 + 216);
  *(*a2 + 216) = v2;
  if (v3 != 4)
  {
    if (v3 == v2)
    {
      return result;
    }

    return sub_100072F18();
  }

  if (v2 != 4)
  {
    return sub_100072F18();
  }

  return result;
}

unsigned __int8 *sub_1000692B0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*a2 + 217);
  *(*a2 + 217) = v2;
  if (v3 != 4)
  {
    if (v3 == v2)
    {
      return result;
    }

    return sub_100072F18();
  }

  if (v2 != 4)
  {
    return sub_100072F18();
  }

  return result;
}

uint64_t sub_100069314(void (*a1)(void))
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a1(*(v1 + 48));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10006936C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000E290;

  return sub_100072AB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100069438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E290;

  return sub_1000112E8();
}

uint64_t sub_1000694F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E290;

  return sub_1000338C8();
}

uint64_t sub_1000695BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009C08(&qword_1000CD8C8, &qword_1000954F8);
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
      v13 = sub_10008C9BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100069700(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009C08(&qword_1000CD8C8, &qword_1000954F8);
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
      v13 = sub_10008C9BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100069830(uint64_t a1)
{
  sub_100069C78(319, &qword_1000CD938, &type metadata accessor for AppStorage);
  if (v1 <= 0x3F)
  {
    sub_100069DC4(319, &unk_1000CD940, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100069C78(319, &unk_1000CD520, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100069CCC(319);
        if (v4 <= 0x3F)
        {
          sub_10008C9BC();
          if (v5 <= 0x3F)
          {
            sub_100069D30(319);
            if (v6 <= 0x3F)
            {
              sub_100069DC4(319, &qword_1000CD960, &type metadata accessor for AnyCancellable, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100069E28(319, &qword_1000CD968, &protocol descriptor for DevicesDiscoveryProvider, 0);
                if (v8 <= 0x3F)
                {
                  sub_100069E28(319, &qword_1000CD970, &protocol descriptor for AccountProvider, 1);
                  if (v9 <= 0x3F)
                  {
                    sub_100069E28(319, &qword_1000CD978, &protocol descriptor for NetworkInfoStorage, 0);
                    if (v10 <= 0x3F)
                    {
                      sub_100069E28(319, &qword_1000CD980, &protocol descriptor for MDMServerInfoStorage, 1);
                      if (v11 <= 0x3F)
                      {
                        sub_100069E28(319, &qword_1000CD988, &protocol descriptor for WiFiNetworkStatusMonitor, 1);
                        if (v12 <= 0x3F)
                        {
                          sub_100069E28(319, &qword_1000CD990, &protocol descriptor for BluetoothStatusMonitor, 1);
                          if (v13 <= 0x3F)
                          {
                            sub_100069E28(319, &qword_1000CD998, &protocol descriptor for VPScannerViewFinderMetricsProvider, 1);
                            if (v14 <= 0x3F)
                            {
                              sub_100069E28(319, &qword_1000CD9A0, &protocol descriptor for CurrentWiFiNetworkPrimitives, 1);
                              if (v15 <= 0x3F)
                              {
                                sub_100069E28(319, &qword_1000CD9A8, &protocol descriptor for DevicesProvider, 1);
                                if (v16 <= 0x3F)
                                {
                                  sub_100069E28(319, &qword_1000CD9B0, &protocol descriptor for DeviceDiscoveryPrerequisiteStatusProvider, 1);
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for VisualPinScannerViewModelProvider();
                                    if (v18 <= 0x3F)
                                    {
                                      type metadata accessor for CameraViewModelProvider();
                                      if (v19 <= 0x3F)
                                      {
                                        type metadata accessor for DeviceStatusViewModelProvider();
                                        if (v20 <= 0x3F)
                                        {
                                          type metadata accessor for SignInViewModelProvider();
                                          if (v21 <= 0x3F)
                                          {
                                            type metadata accessor for SettingsViewModelProvider();
                                            if (v22 <= 0x3F)
                                            {
                                              type metadata accessor for NetworkProfilePickerViewModelProvider();
                                              if (v23 <= 0x3F)
                                              {
                                                type metadata accessor for CameraViewModel(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  type metadata accessor for SettingsViewModel(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_100069E84(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_100069F18(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        swift_cvw_initStructMetadataWithLayoutString();
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_100069C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100069CCC(uint64_t a1)
{
  if (!qword_1000CD950)
  {
    sub_100007108(&qword_1000CD6A8, &qword_100095338);
    v1 = sub_10008D8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CD950);
    }
  }
}

void sub_100069D30(uint64_t a1)
{
  if (!qword_1000CD958)
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel(255);
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel, &unk_100092408);
    v1 = sub_10008D16C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CD958);
    }
  }
}

void sub_100069DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100069E28(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100069E84(uint64_t a1)
{
  if (!qword_1000CD9B8)
  {
    type metadata accessor for SignInViewModel(255);
    sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel, &unk_100094C38);
    v1 = sub_10008D08C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CD9B8);
    }
  }
}

void sub_100069F18(uint64_t a1)
{
  if (!qword_1000CD9C0)
  {
    type metadata accessor for OperationStatus(255);
    sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus, &unk_100093280);
    v1 = sub_10008D08C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000CD9C0);
    }
  }
}

uint64_t sub_100069FE0()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10008D01C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 8))
  {
  }

  v8 = v1[11];
  v9 = sub_10008C9BC();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[15]));
  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[17]));
  sub_10000BC74((v5 + v1[18]));
  sub_10000BC74((v5 + v1[19]));
  sub_10000BC74((v5 + v1[20]));
  sub_10000BC74((v5 + v1[21]));
  sub_10000BC74((v5 + v1[22]));
  sub_10000BC74((v5 + v1[23]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10006A364()
{
  result = qword_1000CDAB0;
  if (!qword_1000CDAB0)
  {
    sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
    sub_10006A3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAB0);
  }

  return result;
}

unint64_t sub_10006A3F0()
{
  result = qword_1000CDAB8;
  if (!qword_1000CDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAB8);
  }

  return result;
}

uint64_t sub_10006A444(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CDA68, &qword_100095570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A4C4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_10006A54C()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10008D01C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 8))
  {
  }

  v8 = v1[11];
  v9 = sub_10008C9BC();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[15]));
  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[17]));
  sub_10000BC74((v5 + v1[18]));
  sub_10000BC74((v5 + v1[19]));
  sub_10000BC74((v5 + v1[20]));
  sub_10000BC74((v5 + v1[21]));
  sub_10000BC74((v5 + v1[22]));
  sub_10000BC74((v5 + v1[23]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10006A85C()
{
  result = qword_1000CDAD8;
  if (!qword_1000CDAD8)
  {
    sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
    sub_10006B910(&qword_1000CDAE0, &qword_1000CDAE8, &qword_1000955C8, sub_10006A914);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAD8);
  }

  return result;
}

unint64_t sub_10006A914()
{
  result = qword_1000CDAF0;
  if (!qword_1000CDAF0)
  {
    sub_100007108(&qword_1000CDAF8, &qword_1000955D0);
    sub_10000D4D0();
    sub_10001121C(&qword_1000CDB08, &qword_1000CDB10, &qword_1000955D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAF0);
  }

  return result;
}

unint64_t sub_10006A9E4()
{
  result = qword_1000CDB48;
  if (!qword_1000CDB48)
  {
    sub_100007108(&qword_1000CDB40, &qword_1000955F8);
    sub_100065F38(&unk_1000CDB50, type metadata accessor for DeviceStatusView, &unk_10008FF54);
    sub_10001121C(&qword_1000CA0A8, &unk_1000CDB60, &qword_100095600, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDB48);
  }

  return result;
}

uint64_t sub_10006AACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100062EB4(v4, a1);
}

unint64_t sub_10006AB3C()
{
  result = qword_1000CDB70;
  if (!qword_1000CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDB70);
  }

  return result;
}

uint64_t sub_10006ABA8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10006AD40(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10006ADB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000629CC(v4, a1);
}

uint64_t sub_10006AE3C()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10008D01C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 8))
  {
  }

  v8 = v1[11];
  v9 = sub_10008C9BC();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[15]));
  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[17]));
  sub_10000BC74((v5 + v1[18]));
  sub_10000BC74((v5 + v1[19]));
  sub_10000BC74((v5 + v1[20]));
  sub_10000BC74((v5 + v1[21]));
  sub_10000BC74((v5 + v1[22]));
  sub_10000BC74((v5 + v1[23]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B14C(uint64_t a1)
{
  v4 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000E290;

  return sub_1000651A4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10006B258()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006B31C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_1000203C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006B40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006B470(uint64_t a1)
{
  v4 = *(type metadata accessor for AddDevicesToADEExtensionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_100064544(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006B560()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006B63C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000E290;

  return sub_100020198(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_10006B774()
{
  result = qword_1000CDBE8;
  if (!qword_1000CDBE8)
  {
    sub_100007108(&qword_1000CDBD8, &qword_100095710);
    sub_10006B82C();
    sub_10001121C(&qword_1000CDC28, &unk_1000CDC30, &qword_100095738, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBE8);
  }

  return result;
}

unint64_t sub_10006B82C()
{
  result = qword_1000CDBF0;
  if (!qword_1000CDBF0)
  {
    sub_100007108(&qword_1000CDBF8, &qword_100095720);
    sub_10006B910(&qword_1000CDC00, &qword_1000CDC08, &qword_100095728, sub_10006B9C0);
    sub_10001121C(&qword_1000CDC18, &qword_1000CDC20, &qword_100095730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBF0);
  }

  return result;
}

uint64_t sub_10006B910(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    sub_10001121C(&qword_1000CDB18, &qword_1000CDB20, &unk_1000955E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006B9C0()
{
  result = qword_1000CDC10;
  if (!qword_1000CDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDC10);
  }

  return result;
}

uint64_t sub_10006BB38()
{
  sub_100007108(&qword_1000CDA88, &qword_100095590);
  sub_100007108(&qword_1000CDB78, &qword_100095608);
  sub_100007108(&qword_1000CDA80, &qword_100095588);
  sub_100007108(&qword_1000CDA78, &qword_100095580);
  sub_100007108(&qword_1000CDB38, &qword_1000955F0);
  sub_100007108(&qword_1000CDA70, &qword_100095578);
  sub_100007108(&qword_1000CDAC0, &qword_1000955B0);
  sub_100007108(&qword_1000CDA68, &qword_100095570);
  sub_100007108(&qword_1000CDA98, &qword_1000955A0);
  sub_10001121C(&qword_1000CDAA0, &qword_1000CDA68, &qword_100095570, &protocol conformance descriptor for VStack<A>);
  sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
  sub_10006A364();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007108(&qword_1000CDAC8, &qword_1000955B8);
  sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
  type metadata accessor for ErrorInfo(255);
  sub_10006A85C();
  sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo, &unk_100094B6C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007108(&qword_1000CDB40, &qword_1000955F8);
  sub_10006A9E4();
  sub_100059828();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10006AB3C();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for SettingsView(255);
  sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView, &unk_10009404C);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006BF54()
{
  v1 = sub_100009C08(&qword_1000CD808, &unk_100095410);
  v2 = *(v1 - 8);
  v104 = v1;
  v105 = v2;
  __chkstk_darwin(v1, v3);
  v103 = &v80 - v4;
  v5 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  __chkstk_darwin(v5 - 8, v6);
  v99 = &v80 - v7;
  v8 = sub_100009C08(&qword_1000CDD20, &unk_100095810);
  v9 = *(v8 - 8);
  v101 = v8;
  v102 = v9;
  __chkstk_darwin(v8, v10);
  v100 = &v80 - v11;
  v12 = sub_100009C08(&qword_1000CAA60, &qword_100091D70);
  v97 = *(v12 - 8);
  v98 = v12;
  __chkstk_darwin(v12, v13);
  v96 = &v80 - v14;
  v15 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v94 = *(v15 - 1);
  v95 = v15;
  __chkstk_darwin(v15, v16);
  v92 = &v80 - v17;
  v18 = sub_100009C08(&qword_1000CAA58, &unk_100091D60);
  v90 = *(v18 - 8);
  v91 = v18;
  __chkstk_darwin(v18, v19);
  v89 = &v80 - v20;
  v21 = sub_100009C08(&qword_1000CAA50, &unk_100095820);
  v87 = *(v21 - 8);
  v88 = v21;
  __chkstk_darwin(v21, v22);
  v86 = &v80 - v23;
  v24 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  v84 = *(v24 - 8);
  v85 = v24;
  __chkstk_darwin(v24, v25);
  v83 = &v80 - v26;
  v27 = sub_100009C08(&qword_1000CAA48, &unk_100095830);
  v81 = *(v27 - 8);
  v82 = v27;
  __chkstk_darwin(v27, v28);
  v30 = &v80 - v29;
  v80 = sub_100009C08(&qword_1000CAA40, &unk_100091D40);
  v31 = *(v80 - 8);
  __chkstk_darwin(v80, v32);
  v34 = &v80 - v33;
  v35 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v39 = &v80 - v38;
  sub_10000BE8C(v0 + 168, v125);
  v107 = *(v0 + 16);
  sub_10000BE8C(v0 + 32, v124);
  sub_10000BE8C(v0 + 72, v121);
  v40 = v107;
  v106 = *(v0 + 112);
  sub_10000BE8C(v0 + 128, v118);
  type metadata accessor for SettingsViewModel(0);
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptyArrayStorage;
  v108 = v41 + 16;
  v42 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__account;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  v93 = v40;
  swift_unknownObjectRetain();
  v109 = v106;
  swift_unknownObjectRetain();
  sub_100009C08(&unk_1000C90E8, &qword_10008F350);
  sub_10008CD7C();
  (*(v36 + 32))(v41 + v42, v39, v35);
  v43 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__wifiNetworkStatus;
  LOBYTE(v111) = 0;
  sub_10008CD7C();
  (*(v31 + 32))(v41 + v43, v34, v80);
  v44 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkType;
  LOBYTE(v111) = 0;
  sub_10008CD7C();
  (*(v81 + 32))(v41 + v44, v30, v82);
  v45 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentMDMServerInfo;
  v111 = xmmword_1000952E0;
  v112 = 0uLL;
  LOBYTE(v113) = 0;
  sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  v46 = v83;
  sub_10008CD7C();
  (*(v84 + 32))(v41 + v45, v46, v85);
  v47 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__mdmServerSelected;
  LOBYTE(v113) = 0;
  v111 = 0u;
  v112 = 0u;
  sub_100009C08(&qword_1000CA6B8, &unk_1000918A8);
  v48 = v86;
  sub_10008CD7C();
  (*(v87 + 32))(v41 + v47, v48, v88);
  v49 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentNetworkName;
  v111 = 0uLL;
  sub_100009C08(&qword_1000C92F0, &qword_10008F430);
  v50 = v89;
  sub_10008CD7C();
  v51 = v91;
  v52 = *(v90 + 32);
  v52(v41 + v49, v50, v91);
  v53 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkProfileName;
  v111 = 0uLL;
  sub_10008CD7C();
  v52(v41 + v53, v50, v51);
  v54 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isSignOutInProgress;
  LOBYTE(v111) = 0;
  v55 = v92;
  sub_10008CD7C();
  v56 = v95;
  v57 = *(v94 + 32);
  v57(v41 + v54, v55, v95);
  v58 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isFetchingMDMServerInProgress;
  LOBYTE(v111) = 0;
  sub_10008CD7C();
  v57(v41 + v58, v55, v56);
  v59 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__serverSelectionSearchText;
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v60 = v96;
  sub_10008CD7C();
  v97[4](v41 + v59, v60, v98);
  sub_10000BE8C(v125, v41 + 24);
  *(v41 + 64) = v107;
  sub_10000BE8C(v124, v41 + 80);
  sub_10000BE8C(v121, v41 + 120);
  *(v41 + 160) = v106;
  sub_10000BE8C(v118, v41 + 176);
  v61 = v122;
  v62 = v123;
  sub_10000BB24(v121, v122);
  v63 = *(v62 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v111 = v63(v61, v62);
  v94 = sub_1000167AC();
  v64 = sub_10008DE7C();
  v110 = v64;
  *&v106 = sub_10008DE6C();
  v65 = *(v106 - 8);
  v98 = *(v65 + 56);
  *&v107 = v65 + 56;
  v66 = v99;
  v98(v99, 1, 1, v106);
  sub_100009C08(&qword_1000CD838, &qword_100095420);
  v97 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000CD848, &qword_1000CD838, &qword_100095420, &protocol conformance descriptor for AnyPublisher<A, B>);
  v96 = sub_1000590C8();
  v67 = v100;
  sub_10008CE0C();
  sub_100016840(v66);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v41;
  v95 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CDD28, &qword_1000CDD20, &unk_100095810, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v68 = v101;
  sub_10008CE1C();

  (*(v102 + 8))(v67, v68);
  swift_beginAccess();
  v102 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v101 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840, &protocol conformance descriptor for [A]);
  sub_10008CCEC();
  swift_endAccess();

  v69 = v126;
  v70 = v127;
  sub_10000BB24(v125, v126);
  *&v111 = (*(v70 + 24))(v69, v70);
  v71 = sub_10008DE7C();
  v110 = v71;
  v98(v66, 1, 1, v106);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30, v97);
  v72 = v103;
  sub_10008CE0C();
  sub_100016840(v66);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v41;
  sub_10001121C(&qword_1000CD830, &qword_1000CD808, &unk_100095410, v95);
  v73 = v104;
  sub_10008CE1C();

  (*(v105 + 8))(v72, v73);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v74 = v119;
  v75 = v120;
  sub_10000BB24(v118, v119);
  v76 = (*(v75 + 8))(v74, v75);
  v78 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v111 = v76;
  *(&v111 + 1) = v78;

  sub_10008CDBC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000BC74(v124);
  sub_10000BC74(v118);
  sub_10000BC74(v121);
  sub_10000BC74(v125);
  return v41;
}

uint64_t sub_10006CD7C()
{
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 4);
  sub_10000BC74(v0 + 9);
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 16);
  sub_10000BC74(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_10006CE00()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10006CE48@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10006CECC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void *sub_10006CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v41 = a11;
  v42 = a17;
  v22 = sub_10000F5C0(&v40);
  (*(*(a11 - 8) + 32))(v22, a2, a11);
  v38 = a9;
  v39 = a15;
  v23 = sub_10000F5C0(&v37);
  (*(*(a9 - 8) + 32))(v23, a3, a9);
  v35 = a10;
  v36 = a16;
  v24 = sub_10000F5C0(&v34);
  (*(*(a10 - 8) + 32))(v24, a5, a10);
  v32 = a13;
  v33 = a19;
  v25 = sub_10000F5C0(&v31);
  (*(*(a13 - 8) + 32))(v25, a6, a13);
  type metadata accessor for SettingsViewModelProvider();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a14;
  sub_10000C3E0(&v40, (v26 + 4));
  sub_10000C3E0(&v37, (v26 + 9));
  v26[14] = a4;
  v26[15] = a18;
  sub_10000C3E0(&v34, (v26 + 16));
  sub_10000C3E0(&v31, (v26 + 21));
  return v26;
}

uint64_t sub_10006D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10008DDBC();
  v5[3] = sub_10008DDAC();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1000287C0;

  return sub_10006D1E0(a5);
}

uint64_t sub_10006D1E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10008C9BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_10008DDBC();
  v2[8] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[9] = v4;
  v2[10] = v5;

  return _swift_task_switch(sub_10006D308, v4, v5);
}

uint64_t sub_10006D308()
{
  v1 = sub_10008C9CC();
  v0[11] = v1;
  v0[12] = v2;
  v3 = v1;
  v4 = v2;
  sub_10006E5DC();
  sub_10000B3B4(v3, v4);
  v5 = sub_10006E628(v3, v4);
  v0[13] = v5;
  sub_10000B408(v3, v4);
  isa = [objc_opt_self() macBuddyNetworkProfileValidators];
  if (!isa)
  {
    sub_100009C08(&qword_1000CDE28, &qword_100095968);
    sub_10008DD3C();
    isa = sub_10008DD2C().super.isa;
  }

  v0[2] = 0;
  v7 = [v5 validateWithValidators:isa error:v0 + 2];

  v8 = v0[2];
  if (v7)
  {
    v9 = v8;
    v10 = *(sub_10008C92C() + 16);

    if (!v10)
    {
      __break(1u);
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    sub_10008C96C();
    v14 = sub_10008C94C();
    v16 = v15;
    v0[14] = v15;
    (*(v12 + 8))(v11, v13);
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_10006D608;

    return sub_10006DB18(v3, v4, v14, v16);
  }

  else
  {
    v19 = v8;
    v20 = sub_10008C8EC();

    swift_willThrow();
    sub_10000B408(v3, v4);
    v0[17] = v20;
    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_10006D83C;

    return sub_10006E298(v20);
  }
}

uint64_t sub_10006D608()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10006DA30;
  }

  else
  {
    v5 = sub_10006D788;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006D788()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  sub_10000B408(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006D83C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10006D990, v3, v2);
}

uint64_t sub_10006D990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DA30()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_10000B408(v2, v1);
  v3 = *(v0 + 128);
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_10006D83C;

  return sub_10006E298(v3);
}

uint64_t sub_10006DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v5[9] = swift_task_alloc();
  v5[10] = sub_10008DDBC();
  v5[11] = sub_10008DDAC();
  v7 = sub_10008DD8C();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_10006DBF4, v7, v6);
}

uint64_t sub_10006DBF4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v0[14] = *(v1 + 32);
  v4 = *(v1 + 40);
  v0[15] = v4;
  v0[16] = swift_getObjectType();
  v0[2] = v3;
  v0[3] = v2;
  v0[17] = *(v4 + 16);
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_10006DCA4, v6, v5);
}

uint64_t sub_10006DCA4()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[6];
  v4 = v0[7];
  v6 = sub_10003D31C();
  v7 = sub_10003D370();
  v1(v0 + 2, v5, v4, &type metadata for Data, v6, v7, v2, v3);
  v0[19] = 0;
  v8 = v0[12];
  v9 = v0[13];

  return _swift_task_switch(sub_10006DD84, v8, v9);
}

uint64_t sub_10006DD84()
{
  v1 = v0[7];
  v2 = *(v0[8] + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v2 + 24) + **(v2 + 24));
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10006DEC0;
  v5 = v0[6];

  return v7(v5, v1, ObjectType, v2);
}

uint64_t sub_10006DEC0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10006E22C;
  }

  else
  {
    v5 = sub_10006DFFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006DFFC(uint64_t a1)
{
  v1[22] = *(v1[8] + 48);
  v1[23] = sub_10008DDAC();
  v3 = sub_10008DD8C();

  return _swift_task_switch(sub_10006E094, v3, v2);
}

uint64_t sub_10006E094()
{
  v1 = v0[22];
  v2 = v0[9];

  *(v1 + 16) = 0;

  v3 = type metadata accessor for ErrorInfo(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_100038E28(v2);
  v4 = v0[12];
  v5 = v0[13];

  return _swift_task_switch(sub_10006E150, v4, v5);
}

uint64_t sub_10006E150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E22C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E298(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008DDBC();
  v2[4] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_10006E330, v4, v3);
}

uint64_t sub_10006E330()
{
  v17 = v0;
  v1 = sub_10008C8DC();
  v0[7] = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = v1;
  v4 = sub_10008CCBC();
  v5 = sub_10008DE2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v8 = [v3 localizedDescription];
    v9 = sub_10008DBDC();
    v11 = v10;

    v12 = sub_10000A2D8(v9, v11, &v16);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to validate profile: %{public}s", v6, 0xCu);
    sub_10000BC74(v7);
  }

  v13 = v0[2];
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_10005883C;

  return sub_100038FC4(v13);
}

uint64_t sub_10006E534()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10006E5A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkProfilePickerViewModel();
  result = sub_10008CD1C();
  *a2 = result;
  return result;
}

unint64_t sub_10006E5DC()
{
  result = qword_1000CDE20;
  if (!qword_1000CDE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CDE20);
  }

  return result;
}

id sub_10006E628(uint64_t a1, uint64_t a2)
{
  isa = sub_10008C9FC().super.isa;
  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() configurationProfileWithData:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    sub_10008C8EC();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10006E6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000C37C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10006F5E4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000128E0(a1);
    sub_10006F540(a2, a3, v9);

    return sub_1000128E0(v9);
  }

  return result;
}

uint64_t sub_10006E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  v8 = sub_10000F5C0(v10);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  swift_beginAccess();

  sub_10006E6F4(v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_10006E85C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 112);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10000A1A8(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  sub_10000B998(*(v9 + 56) + 32 * v10, v14);

LABEL_6:
  sub_100009C08(&qword_1000C9338, &qword_10008F488);
  v12 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v12 ^ 1u, 1, a3);
}

uint64_t sub_10006E970()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006E9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10006F540(a1, a2, v5);
  sub_1000128E0(v5);
  return swift_endAccess();
}

uint64_t sub_10006EA70(uint64_t a1, uint64_t a2)
{
  result = sub_10006FA24(&qword_1000CDF18, a2, type metadata accessor for InMemoryKeyValueCodableStorage, &unk_1000959BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006EAC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009C08(&qword_1000C9420, &qword_10008F460);
  v33 = v4;
  result = sub_10008E02C();
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
        sub_10000C37C(v24, v34);
      }

      else
      {
        sub_10000B998(v24, v34);
      }

      sub_10008E1FC();
      sub_10008DC8C();
      result = sub_10008E22C();
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
      result = sub_10000C37C(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_10006ED80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10008CABC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009C08(&qword_1000CDF20, &qword_1000959F0);
  v40 = v4;
  result = sub_10008E02C();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_10006FA24(&qword_1000C9448, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = sub_10008DB2C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_10006F160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10008CB0C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009C08(&unk_1000CCBD0, &unk_1000946A0);
  v40 = v4;
  result = sub_10008E02C();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_10006FA24(&qword_1000C9430, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10008DB2C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

double sub_10006F540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000A1A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000522B0();
      v10 = v12;
    }

    sub_10000C37C((*(v10 + 56) + 32 * v8), a3);
    sub_100051DE0(v8, v10);
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

_OWORD *sub_10006F5E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A1A8(a2, a3);
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
      sub_1000522B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006EAC8(v16, a4 & 1);
    v11 = sub_10000A1A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10008E1AC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000BC74(v22);

    return sub_10000C37C(a1, v22);
  }

  else
  {
    sub_10006F900(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10006F734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10008CB0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000EA60(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100052454();
      goto LABEL_7;
    }

    sub_10006F160(v18, a3 & 1);
    v23 = sub_10000EA60(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10006F96C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_10008E1AC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

_OWORD *sub_10006F900(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C37C(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10006F96C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10008CB0C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10006FA24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10006FA80()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10008DBCC();
  [v0 setBool:1 forKey:v1];
}

uint64_t sub_10006FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006FC0C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006FC0C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006FBE4(uint64_t a1)
{
  sub_10006FC0C();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_10006FC0C()
{
  result = qword_1000CDF28;
  if (!qword_1000CDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDF28);
  }

  return result;
}

id sub_10006FC60()
{
  v0 = sub_10008CB2C();
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10008DBBC();
  __chkstk_darwin(v4 - 8, v5);
  sub_10008DB5C();
  sub_10008CB1C();
  v20 = v3;
  sub_10008DC3C();
  v6 = objc_allocWithZone(OBWelcomeController);
  v7 = sub_10008DBCC();

  v8 = [v6 initWithTitle:v7 detailText:0 icon:0];

  if (qword_1000C8D00 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000D6D50 + 16);
  if (v9)
  {
    v10 = (qword_1000D6D50 + 64);
    do
    {
      v11 = *v10;
      v10 += 5;

      v12 = v11;
      v13 = sub_10008DBCC();
      v14 = sub_10008DBCC();
      [v8 addBulletedListItemWithTitle:v13 description:v14 image:v12];

      --v9;
    }

    while (v9);
  }

  sub_10006FFE8();
  v15 = sub_10008DF0C();
  v16 = [objc_opt_self() boldButton];
  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v17 = sub_10008DBCC();

  [v16 setTitle:v17 forState:0];

  [v16 addAction:v15 forControlEvents:64];
  v18 = [v8 buttonTray];
  [v18 addButton:v16];

  return v8;
}