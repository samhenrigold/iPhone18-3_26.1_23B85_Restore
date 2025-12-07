uint64_t sub_100050090(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for UUID();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_100052E88(&qword_100088090, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_100052E88(&qword_100088090, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_100050724(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_100050684(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100050710(v3);
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

uint64_t sub_100050724(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UUID();
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

uint64_t sub_100050808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007CCC(&qword_100088080, &qword_100066F68);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100052E88(&qword_100087A70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100050BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007CCC(&qword_100088070, &qword_100066F58);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_100052E88(&qword_100087A70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100050FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007CCC(&qword_100088068, &unk_100066F48);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10005124C(uint64_t result, uint64_t a2)
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
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000513FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100042CC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100051998();
      goto LABEL_7;
    }

    sub_100050808(v17, a3 & 1);
    v22 = sub_100042CC8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000518E0(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1000515C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100042CC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_100051C18();
    goto LABEL_7;
  }

  sub_100050BE4(result, a3 & 1);
  result = sub_100042CC8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1000518E0(v14, v11, a1, v20);
}

void sub_100051764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000CB28(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100050FA4(v16, a4 & 1);
      v11 = sub_10000CB28(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100051E88();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1000518E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
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

char *sub_100051998()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007CCC(&qword_100088080, &qword_100066F68);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_100051C18()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007CCC(&qword_100088070, &qword_100066F58);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100051E88()
{
  v1 = v0;
  sub_100007CCC(&qword_100088068, &unk_100066F48);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100051FF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
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

void *sub_1000522B0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007CCC(&qword_1000880A0, &qword_100066F80);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100052488(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_1000880B0, qword_100066F90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007CCC(&qword_100088080, &qword_100066F68);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100015930(v9, v5, &qword_1000880B0, qword_100066F90);
      result = sub_100042CC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
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

unint64_t sub_100052670(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_1000880A8, &qword_100066F88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007CCC(&qword_100088070, &qword_100066F58);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100015930(v9, v5, &qword_1000880A8, &qword_100066F88);
      result = sub_100042CC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
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

unint64_t sub_100052890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007CCC(&qword_100088068, &unk_100066F48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000CB28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t type metadata accessor for HandshakeEvent(uint64_t a1)
{
  result = qword_1000956D0;
  if (!qword_1000956D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000529E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052A44(uint64_t a1)
{
  v2 = type metadata accessor for HandshakeEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100052AC4(uint64_t a1)
{
  sub_100052BA0(319, &qword_100087D88, &type metadata accessor for XPCRichError);
  if (v1 <= 0x3F)
  {
    sub_100052BA0(319, &qword_100087D90, &type metadata accessor for XPCSession);
    if (v2 <= 0x3F)
    {
      sub_100052C20(319);
      if (v3 <= 0x3F)
      {
        sub_100052C90(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100052BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for UUID();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_100052C20(uint64_t a1)
{
  if (!qword_100087D98)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100087D98);
    }
  }
}

void sub_100052C90(uint64_t a1)
{
  if (!qword_100087DA0)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100087DA0);
    }
  }
}

uint64_t sub_100052D44(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BE28;

  return sub_10004E774(a1, v4);
}

uint64_t sub_100052DE0(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E524;

  return sub_10004E000(a1, v5, v4);
}

uint64_t sub_100052E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052EF0()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_100052F68(char a1)
{
  v3 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  *(v1 + 208) = a1;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100055894();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *(v8 + 32) = a1;
  *(v8 + 40) = v1;
  swift_retain_n();
  sub_100002DC0(0, 0, v5, &unk_100066FB0, v8);
}

uint64_t sub_100053090(char a1)
{
  v3 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100055894();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *(v8 + 32) = a1;
  *(v8 + 40) = v1;
  swift_retain_n();
  sub_100002DC0(0, 0, v5, &unk_100066FB8, v8);
}

void (*sub_1000531B4(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = *(v1 + 208);
  return sub_100053244;
}

void sub_100053244(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  *(*a1 + 208) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_100055894();
  v11 = a1;
  v9 = *a1;
  v10 = v11[1];
  if (a2)
  {
    v12 = &unk_100066FC0;
  }

  else
  {
    v12 = &unk_100066FC8;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v8;
  *(v13 + 32) = v6;
  *(v13 + 40) = v9;
  swift_retain_n();
  sub_100002DC0(0, 0, v10, v12, v13);

  free(v10);
}

uint64_t sub_100053390()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1000534B8;

  return v6(v2, v3);
}

uint64_t sub_1000534B8(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000535D0, v2, 0);
}

uint64_t sub_1000535D0()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    v2 = v1[19];
    v3 = v1[20];
    sub_100007AB4(v1 + 16, v2);
    v4 = (*(v3 + 16))(v2, v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100053680@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ServiceMonitorsSession();
  result = sub_1000457AC();
  a1[3] = v2;
  a1[4] = &off_100080900;
  *a1 = result;
  return result;
}

uint64_t sub_1000536C0(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  *(v10 + 208) = a3;
  sub_1000081E8(a4, v10 + 128);
  sub_1000081E8(a5, v10 + 168);
  return v10;
}

uint64_t sub_10005373C(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5)
{
  swift_defaultActor_initialize();
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 208) = a3;
  sub_1000081E8(a4, v5 + 128);
  sub_1000081E8(a5, v5 + 168);
  return v5;
}

uint64_t sub_1000537A8(uint64_t a1)
{
  (*(*v1 + 144))();
  sub_100001810();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return (*(*v1 + 152))(a1);
  }

  return result;
}

void *sub_100053858()
{

  sub_100007F1C((v0 + 128));
  sub_100007F1C((v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100053890()
{

  sub_100007F1C((v0 + 128));
  sub_100007F1C((v0 + 168));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000538D8()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t sub_10005392C()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100053A84;
  v6 = *(v0 + 16);

  return v8(sub_1000559EC, v6, v2, v3);
}

uint64_t sub_100053A84(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;

  v10 = *(v8 + 16);
  if (v3)
  {
    *(v9 + 48) = a3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v11 = sub_100053C34;
  }

  else
  {
    v11 = sub_100053BD0;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100053BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053C34()
{

  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  return v1(v2, v3, v4);
}

double sub_100053CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for XPCReceivedMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10);
  sub_10002AE40();
  XPCReceivedMessage.decode<A>(as:)();
  v18 = v21;
  v11 = v22;
  v12 = v23;
  XPCReceivedMessage.detachHandoff()();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v18;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  (*(v5 + 32))(v15 + v14, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  sub_100002DC0(0, 0, v9, &unk_1000670D0, v15);

  v16 = v20;
  *(v20 + 32) = 0;
  result = 0.0;
  *v16 = 0u;
  v16[1] = 0u;
  return result;
}

uint64_t sub_100054020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v12;
  *(v8 + 43) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100054100, 0, 0);
}

uint64_t sub_100054100()
{
  v35 = v0;
  v1 = *(v0 + 43);
  v2 = *(v0 + 80);
  if (v1 != 1)
  {
    if (v1 == 3)
    {
      v4 = *(v0 + 64);
      v3 = *(v0 + 72);
      if (v4 == 1 && (v3 | v2) == 0)
      {
        Request.DatabaseReset.init()();
        sub_10002C938();
        XPCReceivedMessage.reply<A>(_:)();
LABEL_18:

        v29 = *(v0 + 8);

        return v29();
      }
    }

    else
    {
      v4 = *(v0 + 64);
      v3 = *(v0 + 72);
    }

    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = sub_10003E6D8();
    (*(v9 + 16))(v8, v11, v10);
    sub_100056770(v4, v3, v2, v1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100013814(v4, v3, v2, v1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 112);
      v32 = *(v0 + 104);
      v33 = *(v0 + 120);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(v0 + 64);
      v18 = *(v0 + 43);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      *(v0 + 16) = v17;
      *(v0 + 24) = v16;
      *(v0 + 32) = v15;
      *(v0 + 40) = v18;
      sub_100056770(v17, v16, v15, v18);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000728C(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "[🔴] 👨‍🔧 Service Request: the received request is not support %s", v19, 0xCu);
      sub_100007F1C(v20);

      (*(v14 + 8))(v33, v32);
    }

    else
    {
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);
      v26 = *(v0 + 104);

      (*(v25 + 8))(v24, v26);
    }

    Request.DatabaseReset.init()();
    *(v0 + 48) = v27;
    *(v0 + 56) = v28;
    sub_10002C9E0();
    XPCReceivedMessage.reply<A>(_:)();

    goto LABEL_18;
  }

  if (v2)
  {
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_100054494;

    return sub_100054908();
  }

  else
  {
    v30 = *(v0 + 96);
    v31 = (*v30 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v0 + 144) = *(*v30 + 144);
    *(v0 + 152) = v31;

    return _swift_task_switch(sub_1000545EC, v30, 0);
  }
}

uint64_t sub_100054494(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    *(v8 + 45) = a3;
    *(v8 + 160) = a2;
    *(v8 + 168) = a1;
    v9 = sub_100054858;
    v10 = 0;
  }

  else
  {
    v10 = *(v8 + 96);
    v11 = (*v10 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v8 + 144) = *(*v10 + 144);
    *(v8 + 152) = v11;
    v9 = sub_1000545EC;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1000545EC()
{
  *(v0 + 44) = (*(v0 + 144))();

  return _swift_task_switch(sub_10005465C, 0, 0);
}

uint64_t sub_10005465C()
{
  v23 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = sub_10003E6D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 44);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v0 + 42) = v7;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000728C(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👨‍🔧 Service Request: received StateFetch request and replied with the current state: %s", v11, 0xCu);
    sub_100007F1C(v12);

    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);

    (*(v18 + 8))(v16, v17);
  }

  Request.DatabaseReset.init()();
  *(v0 + 41) = v19;
  sub_10002CD88();
  XPCReceivedMessage.reply<A>(_:)();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100054858()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 45);
  sub_100007B4C();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100054928()
{
  v1 = *(v0 + 128);
  Request.DatabaseReset.init()();
  v2 = v1[20];
  sub_100007AB4(v1 + 16, v1[19]);
  v5 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  sub_10003311C();
  *v3 = v0;
  v3[1] = sub_100054A74;

  return v5(v0 + 57);
}

uint64_t sub_100054A74()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100054C28;
  }

  else
  {
    v4 = sub_100054BA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100054BA0()
{
  (*(**(v0 + 128) + 184))(*(v0 + 57));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054C28()
{
  *(v0 + 112) = *(v0 + 144);
  swift_errorRetain();
  sub_100007CCC(&qword_100086538, &qword_1000666F0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 40);
    *(v0 + 88) = v1;
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
  }

  else
  {

    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v1 = 0;
    v2 = 0xE000000000000000;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v3 = 5;
    *(v0 + 80) = 5;
  }

  sub_100007B4C();
  swift_willThrowTypedImpl();

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100054DB0()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  sub_100007AB4(v1 + 16, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100054ED8;

  return v6(v2, v3);
}

uint64_t sub_100054ED8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100054FE8, v1, 0);
}

uint64_t sub_100054FE8()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100055110;

  return v6(v2, v3);
}

uint64_t sub_100055110()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100055204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 192) = a5;
  *(v5 + 146) = a4;
  v7 = type metadata accessor for Logger();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000552CC, a5, 0);
}

uint64_t sub_1000552CC()
{
  v32 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    v29 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 200);
    v10 = *(v0 + 146);
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v11 = 136315394;
    *(v0 + 145) = v10;
    v12 = String.init<A>(describing:)();
    v14 = sub_10000728C(v12, v13, &v31);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10000728C(*(v8 + 112), *(v8 + 120), &v31);
    _os_log_impl(&_mh_execute_header, v5, v6, "[🔔 State Update] broadcasting state update: '%s' for service: '%s'", v11, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v29, v9);
  }

  else
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 200);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 192);
  v20 = v18[14];
  v19 = v18[15];

  Request.DatabaseReset.init()();
  Notification.StateUpdate.asCodableEnum.getter(v21, v22, v23, (v0 + 16));

  v24 = v18[24];
  v25 = v18[25];
  sub_100007AB4(v18 + 21, v24);
  sub_10003D784(v0 + 16, v0 + 64);
  sub_100007CCC(&unk_1000878C0, &qword_100067000);
  swift_dynamicCast();
  *(v0 + 144) = *(v0 + 184);
  v26 = *(v0 + 168);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v26;
  v30 = (*(v25 + 48) + **(v25 + 48));
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  *v27 = v0;
  v27[1] = sub_100055624;

  return v30(v0 + 112, v20, v19, v24, v25);
}

uint64_t sub_100055624(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 192);
    *(v8 + 147) = a3;
    *(v8 + 232) = a2;
    *(v8 + 240) = a1;
    sub_100046178(v8 + 112);
    v10 = sub_1000557E4;
  }

  else
  {
    v9 = *(v8 + 192);
    sub_100046178(v8 + 112);
    v10 = sub_100055774;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100055774()
{
  sub_100007F1C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000557E4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 147);
  sub_100007B4C();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_100007F1C((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_100055894()
{
  result = qword_1000880B8;
  if (!qword_1000880B8)
  {
    type metadata accessor for ServiceRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000880B8);
  }

  return result;
}

uint64_t sub_100055910()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_100055204(v4, v5, v6, v3, v2);
}

uint64_t sub_1000559AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000559F4(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return _swift_task_switch(sub_100055A18, v2, 0);
}

uint64_t sub_100055A18()
{
  v1 = *(v0 + 208);
  v3 = v1[14];
  v2 = v1[15];

  Request.DatabaseReset.init()();
  Notification.ServiceUnavailable.asCodableEnum.getter(v4, v5, v6, v7, (v0 + 16));

  v8 = v1[24];
  v9 = v1[25];
  sub_100007AB4(v1 + 21, v8);
  sub_10003D784(v0 + 16, v0 + 64);
  sub_100007CCC(&unk_1000878C0, &qword_100067000);
  swift_dynamicCast();
  *(v0 + 144) = *(v0 + 184);
  v10 = *(v0 + 168);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v10;
  v13 = (*(v9 + 48) + **(v9 + 48));
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_100055BF8;

  return v13(v0 + 112, v3, v2, v8, v9);
}

uint64_t sub_100055BF8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 208);
    *(v8 + 145) = a3;
    *(v8 + 224) = a2;
    *(v8 + 232) = a1;
    sub_100046178(v8 + 112);
    v10 = sub_100055D48;
  }

  else
  {
    v9 = *(v8 + 208);
    sub_100046178(v8 + 112);
    v10 = sub_100005D68;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100055D48()
{
  sub_100007F1C((v0 + 16));
  v1 = *(v0 + 8);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 145);

  return v1(v2, v3, v4);
}

uint64_t sub_100055DB4(uint64_t a1, uint64_t a2)
{
  v3[6] = v2;
  v3[7] = a2;
  v3[5] = a1;
  sub_100007CCC(&qword_1000868B0, &qword_100060C60);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for XPCEndpoint();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100055EB0, v2, 0);
}

uint64_t sub_100055EB0()
{
  v1 = v0[6];
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100055FE4;
  v5 = v0[11];

  return v7(v5, v0 + 2, v2, v3);
}

uint64_t sub_100055FE4()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 33) = *(v2 + 32);
    v4 = sub_100056108;
  }

  else
  {
    v4 = sub_100056198;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100056108()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);

  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100056198()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v12 = v0[5];
  v6 = v5[14];
  v7 = v5[15];
  v8 = *(*v5 + 144);

  LOBYTE(v5) = v8(v9);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  RequestResponse.ServiceList.ServiceInfo.init(identifier:state:xpcEndpoint:)(v6, v7, v5, v4, v12);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000562FC()
{
  v1 = *(v0 + 128);
  v2 = v1[19];
  v3 = v1[20];
  sub_100007AB4(v1 + 16, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_100056424;

  return v6(v2, v3);
}

uint64_t sub_100056424()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[16];

    return _swift_task_switch(sub_100054C28, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100056558()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_100013814(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100056640()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100007198;

  return sub_100054020(v8, v9, v10, v4, v5, v6, v7, v0 + v3);
}

double sub_100056770(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100056850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100008488(v5, a2);
  sub_1000083A8(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000568EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_1000083A8(v4, a2);
}

uint64_t sub_100056964@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_1000083A8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000569FC()
{
  sub_100041BE4();
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  return remote_service_listener;
}

uint64_t sub_100056A54()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100056C88();
  static DispatchQoS.unspecified.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_10005ED20(&qword_1000881C8, 255, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes, &protocol conformance descriptor for OS_dispatch_queue_concurrent.Attributes);
  sub_100007CCC(&qword_1000881D0, &qword_100067130);
  sub_100056CD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100056C88()
{
  result = qword_1000881C0;
  if (!qword_1000881C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000881C0);
  }

  return result;
}

unint64_t sub_100056CD4()
{
  result = qword_1000881D8;
  if (!qword_1000881D8)
  {
    sub_10002BBE8(&qword_1000881D0, &qword_100067130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000881D8);
  }

  return result;
}

id sub_100056D38()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

void sub_100056D7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_100056DC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100056E14(a1, a2);
  return v4;
}

void *sub_100056E14(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  swift_defaultActor_initialize();
  v2[16] = 0;
  sub_100041BE4();
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  v2[17] = remote_service_listener;
  sub_100056C88();
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10005ED20(&qword_1000881C8, 255, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes, &protocol conformance descriptor for OS_dispatch_queue_concurrent.Attributes);
  sub_100007CCC(&qword_1000881D0, &qword_100067130);
  sub_100056CD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v2[18] = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v13;
  v2[14] = v12;
  v2[15] = v9;
  return v2;
}

uint64_t sub_1000570A0()
{
  v2 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v2 - 8);
  v3 = swift_allocObject();
  v3[2] = sub_100057414;
  v3[3] = v0;
  v3[4] = sub_100057BD4;
  v3[5] = 0;
  swift_retain_n();
  sub_100041BBC();

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  v4 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (!v1)
  {
    (*(*v0 + 136))(v4);
  }
}

double sub_100057218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCReceivedMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  XPCReceivedMessage.detachHandoff()();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100002DC0(0, 0, v11, &unk_100067288, v14);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_10005741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100007198;

  return sub_1000574B8(a5);
}

uint64_t sub_1000574B8(uint64_t a1)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = v1;
  return _swift_task_switch(sub_1000574D8, v1, 0);
}

uint64_t sub_1000574D8()
{
  v1 = XPCReceivedMessage.auditToken.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100041C5C();
  v9 = *v8;
  v10 = v8[1];

  sub_100048AAC(v1, v3, v5, v7, v9, v10, &type metadata for Bool);

  if (*(v0 + 401) == 1)
  {
    v11 = sub_100041C84();
    v13 = *v11;
    v12 = v11[1];

    sub_100048AAC(v1, v3, v5, v7, v13, v12, &type metadata for Bool);

    v14 = *(v0 + 402);
    *(v0 + 403) = v14;
    sub_10002AE40();
    XPCReceivedMessage.decode<A>(as:)();
    v17 = *(v0 + 384);
    v24 = *(v0 + 376);
    *(v0 + 472) = v24;
    *(v0 + 480) = v17;
    v18 = *(v0 + 392);
    *(v0 + 488) = v18;
    v19 = *(v0 + 400);
    *(v0 + 404) = v19;
    sub_100007CCC(&unk_100088300, &qword_100067220);
    inited = swift_initStackObject();
    *(v0 + 496) = inited;
    *(inited + 16) = xmmword_1000670E0;
    Request.DatabaseReset.init()();
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = 1;
    *(inited + 56) = 3;
    Request.DatabaseReset.init()();
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    *(inited + 88) = 3;
    *(inited + 96) = Request.ServiceWait.init()();
    *(inited + 120) = 0;
    Request.DatabaseReset.init()();
    *(inited + 136) = 0;
    *(inited + 144) = 0;
    *(inited + 128) = 2;
    *(inited + 152) = 3;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    *(inited + 160) = Request.InterruptConnection.init(of:)(v21);
    *(inited + 176) = 0;
    *(inited + 184) = 2;
    v22 = swift_initStackObject();
    *(v0 + 504) = v22;
    *(v22 + 16) = xmmword_1000670F0;
    Request.DatabaseReset.init()();
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 32) = 1;
    *(v22 + 56) = 3;
    Request.DatabaseReset.init()();
    *(v22 + 64) = 0;
    *(v22 + 72) = 0;
    *(v22 + 80) = 0;
    *(v22 + 88) = 3;
    *(v22 + 96) = Request.ServiceWait.init()();
    *(v22 + 120) = 0;
    if (!v14)
    {
      inited = v22;
    }

    v23 = swift_task_alloc();
    *(v0 + 512) = v23;
    *v23 = v0;
    v23[1] = sub_1000578F4;

    return sub_10005A194(v0 + 336, v24, v17, v18, v19, inited, v0 + 408);
  }

  else
  {
    sub_10005AEFC(*(v0 + 456), 0xD00000000000002CLL, 0x800000010006BB00);
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000578F4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 480);
    v4 = *(v2 + 488);
    v6 = *(v2 + 464);
    v5 = *(v2 + 472);
    v7 = *(v2 + 416);
    *(v2 + 520) = *(v2 + 408);
    *(v2 + 528) = v7;
    *(v2 + 405) = *(v2 + 424);
    sub_100013814(v5, v3, v4, *(v2 + 404));

    v8 = sub_100057A78;
  }

  else
  {
    v6 = *(v2 + 464);
    sub_100013814(*(v2 + 472), *(v2 + 480), *(v2 + 488), *(v2 + 404));

    v8 = sub_100057B44;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_100057A78()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 456);
  *(v0 + 432) = v2;
  *(v0 + 440) = v1;
  v4 = *(v0 + 405);
  *(v0 + 448) = v4;
  sub_1000207E4();
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  sub_100007D14(v2, v1, v4);
  sub_10005AEFC(v3, v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100057B44()
{
  sub_100007AB4(v0 + 42, v0[45]);
  XPCReceivedMessage.reply<A>(_:)();
  sub_100007F1C(v0 + 42);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100057BD4(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003E6D8();
  (*(v10 + 16))(v12, v13, v9);
  v14 = *(v3 + 16);
  v14(v8, a1, v2);
  v15 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v25))
  {
    v16 = swift_slowAlloc();
    v24 = v9;
    v17 = v16;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v17 = 136315138;
    v14(v6, v8, v2);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v3 + 8))(v8, v2);
    v21 = sub_10000728C(v18, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v25, "[🔴] 🔗 Request: The connection is lost due to: %s", v17, 0xCu);
    sub_100007F1C(v23);

    return (*(v10 + 8))(v12, v24);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100057EC8@<X0>(uint64_t a1@<X1>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000568C8();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v15[0] = a1;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "🔗 Request: Incoming request XPC received", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

uint64_t sub_10005808C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000580D8()
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100012A4C;
  v4[3] = &unk_100080DF8;
  v1 = _Block_copy(v4);

  xpc_remote_connection_set_event_handler();
  _Block_release(v1);
  v2 = (*(*v0 + 152))();
  xpc_remote_connection_set_target_queue();

  return xpc_remote_connection_activate();
}

uint64_t sub_1000581E0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v16[5] = v14;
    swift_unknownObjectRetain();

    sub_100008F94(0, 0, v12, &unk_1000671C8, v16);
  }

  else
  {
    type = xpc_get_type(a1);
    v19 = XPC_TYPE_ERROR.getter();
    v20 = sub_10003E6D8();
    v21 = *(v4 + 16);
    if (type == v19)
    {
      v21(v9, v20, v3);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "[🔴] 🔗 Remote Request: received error remote connection.", v31, 2u);
      }

      return (*(v4 + 8))(v9, v3);
    }

    else
    {
      v21(v7, v20, v3);
      swift_unknownObjectRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33 = v25;
        *v24 = 136315138;
        swift_getObjectType();
        v32 = a1;
        swift_unknownObjectRetain();
        v26 = String.init<A>(describing:)();
        v28 = sub_10000728C(v26, v27, &v33);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "[🔴] 🔗 Remote Request: RemoteXPC server got unexpected event: %s", v24, 0xCu);
        sub_100007F1C(v25);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_1000585A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000585C0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100058608()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100058684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100007198;

  return sub_100058720(a5);
}

uint64_t sub_100058720(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for UUID();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v2[17] = *(v4 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100058850, v1, 0);
}

uint64_t sub_100058850()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🔵] 🔗 Remote Request: got incoming remote client connection.", v7, 2u);
  }

  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v12 = v0[13];
  v11 = v0[14];

  (*(v9 + 8))(v8, v10);
  UUID.init()();
  v13 = v12;
  Request.DatabaseReset.init()();
  v0[23] = v14;
  v15 = *(v11 + 120);
  v0[24] = v15;
  v0[11] = &type metadata for RemoteRequestConnectionManager.RemoteXPCConnection;
  v0[12] = &off_100080820;
  v0[8] = v14;
  v16 = (*v15 + 120) & 0xFFFFFFFFFFFFLL | 0xDC0E000000000000;
  v0[25] = *(*v15 + 120);
  v0[26] = v16;
  v17 = v14;

  return _swift_task_switch(sub_1000589D8, v15, 0);
}

uint64_t sub_1000589D8()
{
  (*(v0 + 200))(v0 + 64, *(v0 + 152));
  v1 = *(v0 + 112);
  sub_100007F1C((v0 + 64));

  return _swift_task_switch(sub_100058A7C, v1, 0);
}

uint64_t sub_100058A7C()
{
  v12 = v0[23];
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  (*(v3 + 16))(v1, v2, v5);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v5);
  v0[6] = sub_10005E9DC;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012A4C;
  v0[5] = &unk_100080EC0;
  v8 = _Block_copy(v0 + 2);

  xpc_remote_connection_set_event_handler();
  _Block_release(v8);
  v9 = (*(*v4 + 152))();
  xpc_remote_connection_set_target_queue();

  xpc_remote_connection_activate();

  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100058C88()
{
  sub_100007F1C(v0 + 8);
  v12 = v0[23];
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  (*(v3 + 16))(v1, v2, v5);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v5);
  v0[6] = sub_10005E9DC;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012A4C;
  v0[5] = &unk_100080EC0;
  v8 = _Block_copy(v0 + 2);

  xpc_remote_connection_set_event_handler();
  _Block_release(v8);
  v9 = (*(*v4 + 152))();
  xpc_remote_connection_set_target_queue();

  xpc_remote_connection_activate();

  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100058E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a1;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v11, &unk_100067200, v14);
}

uint64_t sub_100059090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000082B0;

  return sub_10005913C(a5, a6);
}

uint64_t sub_10005913C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005920C, v2, 0);
}

uint64_t sub_10005920C()
{
  v34 = v0;
  type = xpc_get_type(*(v0 + 24));
  v2 = XPC_TYPE_DICTIONARY.getter();
  v3 = *(v0 + 24);
  if (type == v2)
  {
    sub_1000595B0(v3);
LABEL_7:

    v22 = *(v0 + 8);

    return v22();
  }

  v4 = *(v0 + 56);
  v5 = xpc_get_type(v3);
  v6 = XPC_TYPE_ERROR.getter();
  v7 = sub_10003E6D8();
  v8 = *(v4 + 16);
  v9 = *(v0 + 48);
  if (v5 != v6)
  {
    v8(*(v0 + 64), v7, v9);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    if (v12)
    {
      v16 = *(v0 + 24);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315138;
      swift_getObjectType();
      *(v0 + 16) = v16;
      swift_unknownObjectRetain();
      v19 = String.init<A>(describing:)();
      v21 = sub_10000728C(v19, v20, &v33);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "[🔴] 🔗 Remote Request: Unexpected XPC: %s", v17, 0xCu);
      sub_100007F1C(v18);
    }

    (*(v14 + 8))(v13, v15);
    goto LABEL_7;
  }

  v8(*(v0 + 72), v7, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "[🔴] 🔗 Remote Request: received error remote event from the connected client.", v26, 2u);
  }

  v27 = *(v0 + 72);
  v28 = *(v0 + 48);
  v29 = *(v0 + 56);
  v30 = *(v0 + 40);

  (*(v29 + 8))(v27, v28);
  v31 = *(v30 + 120);
  *(v0 + 80) = v31;
  v32 = (*v31 + 128) & 0xFFFFFFFFFFFFLL | 0xC1A3000000000000;
  *(v0 + 88) = *(*v31 + 128);
  *(v0 + 96) = v32;

  return _swift_task_switch(sub_100059524, v31, 0);
}

uint64_t sub_100059524()
{
  (*(v0 + 88))(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000595B0(void *a1)
{
  v2 = v1;
  v4 = sub_100007CCC(&qword_100086800, &qword_100060690);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1000154E8();
  static XPCConvertible.from(xpc:)(a1, &type metadata for Request, v7);
  v15[0] = v15[4];
  v8 = v16;
  v9 = v17;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v12 = sub_10005ED20(&qword_1000882F8, v11, type metadata accessor for RequestServer, &unk_100067138);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v12;
  *(v13 + 32) = v2;
  *(v13 + 40) = v15[0];
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 72) = a1;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v6, &unk_100067218, v13);
}

uint64_t sub_1000597D8(void *a1, uint64_t a2, unint64_t a3)
{
  v27 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = sub_10003E6D8();
  v26 = *(v6 + 16);
  v26(v11, v12, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[1] = v9;
    v18 = v6;
    v19 = v17;
    v28[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000728C(v27, a3, v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "[🔴] 👓 Remote Request: %s", v16, 0xCu);
    sub_100007F1C(v19);
    v6 = v18;

    a1 = v25;
  }

  (*(v6 + 8))(v11, v5);

  Request.DatabaseReset.init()();
  v28[0] = v20;
  v28[1] = v21;
  v22 = sub_10001382C();
  XPCConvertible.asXPC(replyTo:)(a1, &type metadata for RequestResponse.ErrorResponse, v22);

  xpc_dictionary_send_reply();
  return swift_unknownObjectRelease();
}

uint64_t sub_100059B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 360) = a7;
  *(v8 + 368) = v10;
  *(v8 + 321) = a8;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 336) = a4;
  return _swift_task_switch(sub_100059B44, a4, 0);
}

uint64_t sub_100059B44()
{
  sub_100007CCC(&unk_100088300, &qword_100067220);
  inited = swift_initStackObject();
  *(v0 + 376) = inited;
  *(inited + 16) = xmmword_100067100;
  Request.DatabaseReset.init()();
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 32) = 1;
  *(inited + 56) = 3;
  Request.DatabaseReset.init()();
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = 3;
  *(inited + 96) = Request.ServiceWait.init()();
  *(inited + 120) = 0;
  v2 = default argument 0 of Request.StateFetch.init(serviceIdentifier:poll:)();
  v4 = v3;
  v5 = default argument 1 of Request.StateFetch.init(serviceIdentifier:poll:)() & 1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  v15 = Request.StateFetch.init(serviceIdentifier:poll:)(v6, v5);
  *(inited + 128) = v15.serviceIdentifier._countAndFlagsBits;
  *(inited + 136) = v15.serviceIdentifier._object;
  *(inited + 144) = v15.poll;
  *(inited + 152) = 1;
  Request.DatabaseReset.init()();
  *(inited + 168) = 0;
  *(inited + 176) = 0;
  *(inited + 160) = 2;
  *(inited + 184) = 3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  *(inited + 192) = Request.InterruptConnection.init(of:)(v7);
  *(inited + 208) = 0;
  *(inited + 216) = 2;
  v8 = swift_task_alloc();
  *(v0 + 384) = v8;
  *v8 = v0;
  v8[1] = sub_100059CC0;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v11 = *(v0 + 344);
  v12 = *(v0 + 321);

  return sub_10005A194(v0 + 240, v11, v9, v10, v12, inited, v0 + 304);
}

uint64_t sub_100059CC0()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    *(v2 + 400) = *(v2 + 304);
    *(v2 + 322) = *(v2 + 320);

    v4 = sub_100059DFC;
  }

  else
  {
    v3 = *(v2 + 336);

    v4 = sub_100059FAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100059DFC()
{
  v1 = *(v0 + 322);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  sub_100007B4C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v5 = *(v0 + 368);
  _StringGuts.grow(_:)(46);

  swift_getErrorValue();
  v6 = *(*(v0 + 288) - 8);
  swift_task_alloc();
  (*(v6 + 16))();
  v7 = String.init<A>(describing:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  sub_1000597D8(v5, 0xD00000000000002CLL, 0x800000010006BA30);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100059FAC()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[33];
  v4 = v0[34];
  sub_100007AB4(v0 + 30, v3);
  (*(*(v4 + 8) + 32))(v2, v3);
  if (v1)
  {
    sub_100007F1C(v0 + 30);
    v5 = v0[46];
    _StringGuts.grow(_:)(46);

    swift_getErrorValue();
    v6 = *(v0[36] - 8);
    swift_task_alloc();
    (*(v6 + 16))();
    v7 = String.init<A>(describing:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    sub_1000597D8(v5, 0xD00000000000002CLL, 0x800000010006BA30);
  }

  else
  {
    xpc_dictionary_send_reply();
    swift_unknownObjectRelease();
    sub_100007F1C(v0 + 30);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10005A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = v7;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 33) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_10005A1C4, v7, 0);
}

uint64_t sub_10005A1C4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  v3 = (v1 + 56);
  v4 = v2 + 1;
  do
  {
    if (!--v4)
    {
      *(v32 + 16) = 0xD00000000000001CLL;
      *(v32 + 24) = 0x800000010006BA60;
      *(v32 + 32) = 0;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      v19 = *(v32 + 88);
      *v19 = 0xD00000000000001CLL;
      *(v19 + 8) = 0x800000010006BA60;
      *(v19 + 16) = 0;
      v20 = *(v32 + 8);
LABEL_10:

      return v20();
    }

    v5 = v3 + 32;
    v6 = *(v32 + 56);
    v7 = *(v32 + 64);
    v8 = *(v32 + 48);
    v10 = *(v3 - 2);
    v9 = *(v3 - 1);
    v11 = *(v3 - 3);
    v12 = *v3;
    v13 = *(v32 + 33);
    sub_100056770(v11, v10, v9, *v3);
    LOBYTE(v7) = static Request.== infix(_:_:)(v8, v6, v7, v13, v11, v10, v9, v12);
    sub_100013814(v11, v10, v9, v12);
    v3 = v5;
  }

  while ((v7 & 1) == 0);
  if (*(v32 + 33) <= 1u)
  {
    if (*(v32 + 33))
    {
      v24 = *(v32 + 64);
      v25 = *(v32 + 56);
      v26 = swift_task_alloc();
      *(v32 + 120) = v26;
      *v26 = v32;
      v26[1] = sub_10005A920;
      v27 = *(v32 + 48);

      return sub_10005CF54(v27, v25, v24 & 1);
    }

    else
    {
      v14 = *(v32 + 64);
      v15 = *(v32 + 56);
      v16 = swift_task_alloc();
      *(v32 + 104) = v16;
      *v16 = v32;
      v16[1] = sub_10005A7B0;
      v17 = *(v32 + 48);

      return sub_10005BC94(v17, v15, v14);
    }
  }

  if (*(v32 + 33) == 2)
  {
    v21 = *(v32 + 56);
    v22 = swift_task_alloc();
    *(v32 + 136) = v22;
    *v22 = v32;
    v22[1] = sub_10005AA90;
    v23 = *(v32 + 48);

    return sub_10005E084(v23, v21);
  }

  v28 = *(v32 + 48);
  if (*(v32 + 56) | *(v32 + 64) | v28)
  {
    if (v28 == 1 && *(v32 + 56) == 0)
    {
      v29 = *(v32 + 40);
      Request.DatabaseReset.init()();
      *(v29 + 24) = &type metadata for RequestResponse.Acknowledge;
      *(v29 + 32) = sub_10002C114();
      v20 = *(v32 + 8);
      goto LABEL_10;
    }

    v31 = swift_task_alloc();
    *(v32 + 96) = v31;
    *v31 = v32;
    v31[1] = sub_10005A644;

    return sub_10005D7D4();
  }

  else
  {
    v30 = swift_task_alloc();
    *(v32 + 144) = v30;
    *v30 = v32;
    v30[1] = sub_10005ABFC;

    return sub_10005B104();
  }
}

uint64_t sub_10005A644(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = *(v8 + 88);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v8 + 80);

    return _swift_task_switch(sub_10005EFC4, v13, 0);
  }
}

uint64_t sub_10005A7B0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 112) = a1;

  if (v3)
  {
    v10 = *(v8 + 88);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v8 + 80);

    return _swift_task_switch(sub_10005AD90, v13, 0);
  }
}

uint64_t sub_10005A920(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 128) = a1;

  if (v3)
  {
    v10 = *(v8 + 88);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v8 + 80);

    return _swift_task_switch(sub_10005AE0C, v13, 0);
  }
}

uint64_t sub_10005AA90(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = *(v8 + 88);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v8 + 80);

    return _swift_task_switch(sub_10005AE88, v13, 0);
  }
}

uint64_t sub_10005ABFC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_10005AD14, v2, 0);
}

uint64_t sub_10005AD14()
{
  v1 = v0[19];
  v2 = v0[5];
  v2[3] = &type metadata for RequestResponse.ServiceList;
  v2[4] = sub_10002C2A4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AD90()
{
  v1 = v0[14];
  v2 = v0[5];
  v2[3] = &type metadata for RequestResponse.ServiceList;
  v2[4] = sub_10002C2A4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AE0C()
{
  v1 = v0[16];
  v2 = v0[5];
  *(v2 + 24) = &type metadata for RequestResponse.StateFetchResponse;
  *(v2 + 32) = sub_10002C4F4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AE88()
{
  v1 = *(v0 + 40);
  *(v1 + 24) = &type metadata for RequestResponse.Acknowledge;
  *(v1 + 32) = sub_10002C114();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005AEFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003E6D8();
  (*(v6 + 16))(v8, v9, v5);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10000728C(a2, a3, v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "[🔴] 👓 Request: %s", v12, 0xCu);
    sub_100007F1C(v13);
  }

  (*(v6 + 8))(v8, v5);

  Request.DatabaseReset.init()();
  v17[0] = v14;
  v17[1] = v15;
  sub_10002C9E0();
  XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_10005B104()
{
  v1[5] = v0;
  sub_100007CCC(&qword_100088328, &unk_100067258);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005B270, v0, 0);
}

uint64_t sub_10005B270()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = sub_10003E6D8();
  v0[15] = v4;
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 👓 Request: received 'ServiceList' request.", v8, 2u);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[5];

  v13 = *(v11 + 8);
  v0[18] = v13;
  v13(v9, v10);
  v14 = *(v12 + 112);
  v0[19] = v14;
  v15 = (*v14 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
  v0[20] = *(*v14 + 152);
  v0[21] = v15;

  return _swift_task_switch(sub_10005B3CC, v14, 0);
}

uint64_t sub_10005B3CC()
{
  v1 = *(v0 + 40);
  *(v0 + 176) = (*(v0 + 160))();

  return _swift_task_switch(sub_10005B440, v1, 0);
}

uint64_t sub_10005B440(__n128 a1)
{
  v2 = v1[22];
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v1[23] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v4 = v1[22];
        v1[24] = 0;
        v1[25] = &_swiftEmptyArrayStorage;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v1[26] = v5;
        v6 = swift_task_alloc();
        v1[27] = v6;
        *v6 = v1;
        v6[1] = sub_10005B5EC;
        v7 = v1[6];

        return sub_100055DB4(v7, (v1 + 2));
      }

      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[23] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  Request.DatabaseReset.init()();
  v9 = v8;

  v10 = v1[1];

  return v10(v9);
}

uint64_t sub_10005B5EC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 40);
    sub_100007D14(*(v2 + 16), *(v2 + 24), *(v2 + 32));
    v4 = sub_10005B714;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = sub_10005BA44;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10005B714()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[6];
  (*(v0[8] + 56))(v5, 1, 1, v0[7]);
  sub_10000812C(v5, &qword_100088328, &unk_100067258);
  v1(v3, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[11];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v27 = v10;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = *(v9 + 112);
    v16 = *(v9 + 120);

    v17 = sub_10000728C(v15, v16, &v28);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟡] 'ServiceList': failed to get the service info for service '%s'. Ignored the service.", v13, 0xCu);
    sub_100007F1C(v14);

    v27(v11, v12);
  }

  else
  {

    v10(v11, v12);
  }

  v18 = v0[24] + 1;
  if (v18 == v0[23])
  {

    Request.DatabaseReset.init()();
    v20 = v19;

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    v0[24] = v18;
    v23 = v0[22];
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v23 + 8 * v18 + 32);
    }

    v0[26] = v24;
    v25 = swift_task_alloc();
    v0[27] = v25;
    *v25 = v0;
    v25[1] = sub_10005B5EC;
    v26 = v0[6];

    return sub_100055DB4(v26, (v0 + 2));
  }
}

uint64_t sub_10005BA44()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 56))(v3, 0, 1, v0[7]);
  sub_10002EA00(v3, v1);
  sub_10002B5C8(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[25];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100029EF4(0, v5[2] + 1, 1, v0[25]);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100029EF4((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  sub_10002B62C(v8);
  v5[2] = v7 + 1;
  sub_10002EA00(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
  v11 = v0[24] + 1;
  if (v11 == v0[23])
  {

    Request.DatabaseReset.init()();
    v13 = v12;

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v0[24] = v11;
    v0[25] = v5;
    v16 = v0[22];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v16 + 8 * v11 + 32);
    }

    v0[26] = v17;
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_10005B5EC;
    v19 = v0[6];

    return sub_100055DB4(v19, (v0 + 2));
  }
}

uint64_t sub_10005BC94(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 144) = v3;
  *(v4 + 136) = a3;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  v5 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v4 + 184) = v6;
  *(v4 + 192) = *(v6 - 8);
  *(v4 + 200) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10005BE20, v3, 0);
}

uint64_t sub_10005BE20()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'serviceWait' request.", v7, 2u);
  }

  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 208);
  v11 = *(v0 + 136);

  (*(v9 + 8))(v8, v10);
  v12 = *(*(v0 + 144) + 112);
  if (v11 <= 0.0)
  {
    *(v0 + 304) = v12;
    v15 = (*v12 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v12 + 136);
    *(v0 + 320) = v15;
    v14 = sub_10005C76C;
  }

  else
  {
    *(v0 + 232) = v12;
    v13 = (*v12 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 240) = *(*v12 + 136);
    *(v0 + 248) = v13;
    *(v0 + 256) = 0;
    v14 = sub_10005BFAC;
  }

  return _swift_task_switch(v14, v12, 0);
}

uint64_t sub_10005BFAC()
{
  v1 = *(v0 + 144);
  (*(v0 + 240))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005C024, v1, 0);
}

uint64_t sub_10005C024()
{
  v1 = *(v0 + 112);
  *(v0 + 264) = v1;
  if (v1)
  {
    v4 = (*(*v1 + 168) + **(*v1 + 168));
    v2 = swift_task_alloc();
    *(v0 + 272) = v2;
    *v2 = v0;
    v2[1] = sub_10005C19C;

    return v4();
  }

  else
  {
    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_100067110;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_10005C380, 0, 0);
  }
}

uint64_t sub_10005C19C(char a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 33) = a1;

  return _swift_task_switch(sub_10005C2B4, v2, 0);
}

uint64_t sub_10005C2B4()
{
  v1 = *(v0 + 33);

  if (v1)
  {
    v2 = *(*(v0 + 144) + 112);
    *(v0 + 304) = v2;
    v3 = (*v2 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v2 + 136);
    *(v0 + 320) = v3;
    v4 = sub_10005C76C;
  }

  else
  {
    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_100067110;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;
    v4 = sub_10005C380;
    v2 = 0;
  }

  return _swift_task_switch(v4, v2, 0);
}

uint64_t sub_10005C380()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_10005ED20(&qword_100087D10, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10005ED20(&unk_100088340, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[35] = v5;
  v0[36] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_10005C50C;
  v8 = v0[22];
  v7 = v0[23];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 8, v7, v4);
}

uint64_t sub_10005C50C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[22];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_10005C6F0;
    v7 = 0;
  }

  else
  {
    v8 = v2[35];
    v10 = v2[24];
    v9 = v2[25];
    v11 = v2[22];
    v12 = v2[23];
    v14 = v2 + 18;
    v13 = v2[18];
    v8(v11, v14[1]);
    (*(v10 + 8))(v9, v12);
    v6 = sub_10005C680;
    v7 = v13;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10005C680()
{
  v1 = *(v0 + 256) + 1.0;
  if (v1 >= *(v0 + 136))
  {
    v2 = *(*(v0 + 144) + 112);
    *(v0 + 304) = v2;
    v4 = (*v2 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v2 + 136);
    *(v0 + 320) = v4;
    v3 = sub_10005C76C;
  }

  else
  {
    *(v0 + 256) = v1;
    v2 = *(v0 + 232);
    v3 = sub_10005BFAC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10005C6F0()
{
  v1 = v0[18];
  (*(v0[24] + 8))(v0[25], v0[23]);

  return _swift_task_switch(sub_10005EFBC, v1, 0);
}

uint64_t sub_10005C76C()
{
  v1 = *(v0 + 144);
  (*(v0 + 312))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005C7E4, v1, 0);
}

uint64_t sub_10005C7E4()
{
  v1 = *(v0 + 104);
  *(v0 + 328) = v1;
  if (v1)
  {
    v7 = (*(*v1 + 168) + **(*v1 + 168));
    v2 = swift_task_alloc();
    *(v0 + 336) = v2;
    *v2 = v0;
    v2[1] = sub_10005C9B4;

    return v7();
  }

  else
  {
    v4 = *(v0 + 136);
    *(v0 + 16) = v4;
    v5 = v4;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v6 = *(v0 + 8);

    return v6(v5, 0, 1);
  }
}

uint64_t sub_10005C9B4(char a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 34) = a1;

  return _swift_task_switch(sub_10005CACC, v2, 0);
}

uint64_t sub_10005CACC()
{
  if (*(v0 + 34) == 1)
  {
    sub_100007CCC(&unk_100088330, &qword_100064AB0);
    v1 = *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo(0) - 8);
    v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = swift_allocObject();
    *(v0 + 344) = v3;
    *(v3 + 16) = xmmword_100067120;
    v4 = swift_task_alloc();
    *(v0 + 352) = v4;
    *v4 = v0;
    v4[1] = sub_10005CCB8;

    return sub_100055DB4(v3 + v2, v0 + 40);
  }

  else
  {

    v6 = *(v0 + 136);
    *(v0 + 16) = v6;
    v7 = v6;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v8 = *(v0 + 8);

    return v8(v7, 0, 1);
  }
}

uint64_t sub_10005CCB8()
{
  v2 = *v1;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 360) = *(v2 + 40);
    *(v2 + 35) = *(v2 + 56);
    v4 = sub_10005CDE0;
  }

  else
  {
    v4 = sub_10005CEA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005CDE0()
{
  v1 = *(v0 + 344);

  *(v1 + 16) = 0;

  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 35);

  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_10005CEA0()
{
  Request.DatabaseReset.init()();
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10005CF54(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 33) = a3;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10005D01C, v3, 0);
}

uint64_t sub_10005D01C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'stateFetch' request.", v7, 2u);
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);

  (*(v9 + 8))(v8, v10);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(*(v0 + 136) + 112);
    *(v0 + 168) = v14;
    v15 = (*v14 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 176) = *(*v14 + 136);
    *(v0 + 184) = v15;

    return _swift_task_switch(sub_10005D210, v14, 0);
  }

  else
  {
    *(v0 + 88) = 0xD00000000000001FLL;
    *(v0 + 96) = 0x800000010006BAA0;
    *(v0 + 104) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v16 = *(v0 + 8);

    return v16(0xD00000000000001FLL, 0x800000010006BAA0, 0);
  }
}

uint64_t sub_10005D210()
{
  v1 = *(v0 + 136);
  (*(v0 + 176))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005D288, v1, 0);
}

uint64_t sub_10005D288()
{
  v1 = *(v0 + 112);
  *(v0 + 192) = v1;
  if (v1)
  {
    if (*(v0 + 33) == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 200) = v2;
      *v2 = v0;
      v2[1] = sub_10005D400;

      return sub_100054908();
    }

    else
    {
      v5 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
      *(v0 + 208) = *(*v1 + 144);
      *(v0 + 216) = v5;

      return _swift_task_switch(sub_10005D554, v1, 0);
    }
  }

  else
  {
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4(3, 0, 6);
  }
}

uint64_t sub_10005D400(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 136);
    *(v8 + 35) = a3;
    *(v8 + 224) = a2;
    *(v8 + 232) = a1;
    v10 = sub_10005D654;
  }

  else
  {
    v9 = *(v8 + 192);
    v11 = (*v9 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v8 + 208) = *(*v9 + 144);
    *(v8 + 216) = v11;
    v10 = sub_10005D554;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10005D554()
{
  v1 = *(v0 + 136);
  *(v0 + 34) = (*(v0 + 208))();

  return _swift_task_switch(sub_10005D5C8, v1, 0);
}

uint64_t sub_10005D5C8()
{
  Request.DatabaseReset.init()();
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10005D654()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 35);
  _StringGuts.grow(_:)(31);

  v6._countAndFlagsBits = v4;
  v6._object = v3;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v5;
  sub_1000207E4();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  sub_100007D14(v1, v2, v5);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  *(v0 + 64) = 0xD000000000000019;
  *(v0 + 72) = 0x800000010006BA80;
  *(v0 + 80) = 0;
  sub_100007B4C();
  swift_willThrowTypedImpl();

  v12 = *(v0 + 8);

  return v12(0xD000000000000019, 0x800000010006BA80, 0);
}

uint64_t sub_10005D7D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005D8AC, v0, 0);
}

uint64_t sub_10005D8AC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_10003E6D8();
  v0[8] = v4;
  v5 = *(v3 + 16);
  v0[9] = v5;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 👓 Request: received 'DatabaseReset' request.", v8, 2u);
  }

  v9 = v0[7];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[11] = v13;
  v13(v9, v10);
  v14 = *(v12 + 112);
  v0[12] = v14;
  v15 = (*v14 + 176) & 0xFFFFFFFFFFFFLL | 0xBF31000000000000;
  v0[13] = *(*v14 + 176);
  v0[14] = v15;

  return _swift_task_switch(sub_10005DA08, v14, 0);
}

uint64_t sub_10005DA08()
{
  v1 = *(v0 + 16);
  *(v0 + 120) = (*(v0 + 104))();

  return _swift_task_switch(sub_10005DA7C, v1, 0);
}

uint64_t sub_10005DA7C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[15];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[16] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = v4[12];

    v12 = (*v11 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
    v4[20] = *(*v11 + 152);
    v4[21] = v12;
    v6 = sub_10005DE2C;
    a3 = v11;
    a4 = 0;

    return _swift_task_switch(v6, a3, a4);
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  v4[16] = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return _swift_task_switch(v6, a3, a4);
  }

  v7 = v4[15];
  v4[17] = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v4[18] = v8;
  v9 = swift_task_alloc();
  v4[19] = v9;
  *v9 = v4;
  v9[1] = sub_10005DBDC;

  return sub_100054D90();
}

uint64_t sub_10005DBDC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10005DCEC, v1, 0);
}

uint64_t sub_10005DCEC()
{
  v1 = v0[17];
  v2 = v0[16];

  if (v1 + 1 == v2)
  {
    v3 = v0[12];

    v4 = (*v3 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
    v0[20] = *(*v3 + 152);
    v0[21] = v4;

    return _swift_task_switch(sub_10005DE2C, v3, 0);
  }

  else
  {
    v5 = v0[17] + 1;
    v0[17] = v5;
    v6 = v0[15];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v0[18] = v7;
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_10005DBDC;

    return sub_100054D90();
  }
}

uint64_t sub_10005DE2C()
{
  v1 = *(v0 + 16);
  *(v0 + 176) = (*(v0 + 160))();

  return _swift_task_switch(sub_10005DEA0, v1, 0);
}

uint64_t sub_10005DEA0()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[3];
  if (v2)
  {
    v6 = v0 + 6;
    v3(v0[6], v4, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 12;
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v2;
      v11 = "[⚠️] There are still services (count: %ld) after clearning the service database.";
LABEL_8:
      v12 = *v6;
      _os_log_impl(&_mh_execute_header, v7, v8, v11, v10, v9);

      goto LABEL_10;
    }
  }

  else
  {
    v6 = v0 + 5;
    v3(v0[5], v4, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "[🧹] Successfully cleaned the service database.";
      goto LABEL_8;
    }
  }

  v12 = *v6;
LABEL_10:
  v13 = v0[11];
  v14 = v0[3];

  v13(v12, v14);
  Request.DatabaseReset.init()();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10005E084(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005E148, v2, 0);
}

uint64_t sub_10005E148()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'InterruptConnection' request.", v7, 2u);
  }

  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];

  (*(v9 + 8))(v8, v10);
  v14 = *(v11 + 112);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v18 = (*(*v14 + 144) + **(*v14 + 144));
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_10005E360;

  return v18(v0 + 5, &unk_100067270, v15);
}

uint64_t sub_10005E360()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10005E48C, v1, 0);
}

uint64_t sub_10005E48C()
{
  v1 = *(v0 + 40);
  *(v0 + 112) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_10005E5AC;

    return sub_1000562DC();
  }

  else
  {
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4(3, 0, 6);
  }
}

uint64_t sub_10005E5AC(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;

  v10 = *(v8 + 64);
  if (v3)
  {
    *(v9 + 33) = a3;
    *(v9 + 128) = a2;
    *(v9 + 136) = a1;
    v11 = sub_10005E774;
  }

  else
  {
    v11 = sub_10005E6F8;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10005E6F8()
{
  Request.DatabaseReset.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E774()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 33);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

uint64_t sub_10005E800()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005E848()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_100058684(v4, v5, v6, v2, v3);
}

uint64_t sub_10005E8E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E918()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E9DC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100058E9C(a1, v4, v5);
}

uint64_t sub_10005EA50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005EB24()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000082B0;

  return sub_100059090(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_10005EC00()
{
  swift_unknownObjectRelease();

  sub_100013814(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005EC58()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100007198;

  return sub_100059B10(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10005ED20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10005ED68(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BE28;

  return sub_10004E000(a1, v5, v4);
}

uint64_t sub_10005EE10()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005EEDC()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007198;

  return sub_10005741C(v5, v6, v7, v4, v0 + v3);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}