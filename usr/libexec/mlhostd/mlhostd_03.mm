uint64_t sub_10004AD48(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100009A48(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_10004C334(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_10004CAF0(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_10004CD10(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_100009A48(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_10004D1B8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10004AFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_100010DF4(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_10004B980(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

unint64_t sub_10004B168(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for RemoteHandler() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004B4B0(uint64_t result, uint64_t a2)
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

unint64_t sub_10004B660(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for DatastoreKey();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100051EE4(&qword_100085D20, &type metadata accessor for DatastoreKey, &protocol conformance descriptor for DatastoreKey);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_10004B980(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10004BB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010DF4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1000133CC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_100011970(v18, a5 & 1);
    v13 = sub_100010DF4(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_100012E74(v13, a3, a4, a1, a2, v23);
  }
}

void sub_10004BCDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010DF4(a2, a3);
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
      sub_1000137CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100012004(v16, a4 & 1);
    v11 = sub_100010DF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100009914(v22);

    sub_100009B90(a1, v22);
  }

  else
  {
    sub_100012F7C(v11, a2, a3, a1, v21);
  }
}

void sub_10004BE2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010DF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100013970();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000122BC(v16, a4 & 1);
    v11 = sub_100010DF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_1000157D8();
  }
}

uint64_t sub_10004BF74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100010F08(a2);
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
      sub_100013998();
      goto LABEL_7;
    }

    sub_1000122E4(v17, a3 & 1);
    v28 = sub_100010F08(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100012FEC(v14, v11, a1, v20);
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
  v21 = v20[7];
  v22 = type metadata accessor for RemoteHandler();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_10004C178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_100010DF4(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = sub_100010DF4(a2, a3);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    v28(v30, a1, v29);
    return;
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

Swift::Int sub_10004C334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_1000089AC(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009A48(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10004CAF0(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10004C534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
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

uint64_t sub_10004C794(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000089AC(&qword_100085F88, &qword_100069650);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10004CAF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000089AC(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_10004CD10(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10004CD94(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10004C534(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10004D348();
      goto LABEL_16;
    }

    sub_10004D81C(v8 + 1);
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

uint64_t sub_10004CF14(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004C794(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004D4A4();
      goto LABEL_12;
    }

    sub_10004DA54(v10 + 1);
  }

  v12 = *v3;
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004D1B8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_10004CAF0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004D6DC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10004DD70(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100009A48(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004D348()
{
  v1 = v0;
  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
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

void *sub_10004D4A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&qword_100085F88, &qword_100069650);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
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
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_10004D6DC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000089AC(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

Swift::Int sub_10004D81C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
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

uint64_t sub_10004DA54(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000089AC(&qword_100085F88, &qword_100069650);
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_10004DD70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000089AC(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_10004DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004D4A4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10004E360(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10004E224(uint64_t a1, uint64_t a2)
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
    sub_10004D348();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10004E668(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10004E360(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_10004E668(unint64_t result)
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

uint64_t sub_10004E82C(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100010DF4(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000122BC(v15, v5 & 1);
    v10 = sub_100010DF4(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100013970();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000100073310;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_100010DF4(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1000122BC(v30, 1);
        v26 = sub_100010DF4(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v38 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

void sub_10004EBC0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10004EDE4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10004EE3C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000089AC(&qword_100086018, &qword_1000696C8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_10004F12C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085FF8, &qword_1000696A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&qword_100086000, &qword_1000696B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &qword_100085FF8, &qword_1000696A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100010DF4(*v5, v12);
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
      v18 = type metadata accessor for MLHostTask();
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

unint64_t sub_10004F318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085D28, &unk_1000694D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, &v11, &unk_1000859B0, &qword_100069278);
      v5 = v11;
      result = sub_100010D60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009B90(&v12, (v3[7] + 32 * result));
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

void *sub_10004F440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_1000860D0, &qword_100069780);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004F648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_1000860C0, &unk_100069770);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100010DF4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_10004F764(uint64_t a1)
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

      sub_10004A918(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10004F7FC(uint64_t a1)
{
  v2 = sub_1000089AC(&unk_100086080, &unk_100069730);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&qword_100085800, &qword_100069180);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &unk_100086080, &unk_100069730);
      result = sub_100010F08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for RemoteHandler();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_10004FA1C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086068, &qword_100069718);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&unk_100086070, &unk_100069720);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &qword_100086068, &qword_100069718);
      result = sub_100010FDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DatastoreKey();
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

unint64_t sub_10004FC04(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086058, &qword_100069708);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&qword_100086060, &qword_100069710);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &qword_100086058, &qword_100069708);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100010DF4(*v5, v12);
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
      v18 = type metadata accessor for ContinuousClock.Instant();
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

void sub_10004FDF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_10004AD48(&v6, v4, &qword_100085718, _EXExtensionIdentity_ptr, &qword_100086018, &qword_1000696C8);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

unint64_t sub_10004FEFC(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086008, &qword_1000696B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&qword_100086010, &qword_1000696C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &qword_100086008, &qword_1000696B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100010DF4(*v5, v12);
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
      v18 = type metadata accessor for TaskDefinition();
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

uint64_t sub_1000500E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10004A918(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_100050158(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085FE8, &qword_100069698);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000089AC(&qword_100085FF0, &qword_1000696A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v9, v5, &qword_100085FE8, &qword_100069698);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100010DF4(*v5, v12);
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
      v18 = type metadata accessor for TaskStatus();
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

uint64_t sub_100050344(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100050398()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  v4 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithIdentifier:v5];

  [v6 setInterval:3600.0];
  v7 = v6;
  [v7 setPriority:2];
  [v7 setRequiresExternalPower:0];
  v8 = String._bridgeToObjectiveC()();
  [v7 setGroupName:v8];

  [v7 setGroupConcurrencyLimit:1];
  v9 = [v0 sharedScheduler];
  v10 = v9;
  if (v3)
  {
    v37 = 0;
    v11 = [v9 updateTaskRequest:v7 error:&v37];

    v12 = v37;
    if (v11)
    {
LABEL_3:
      v13 = v12;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000098DC(v14, qword_100087610);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "MLHostDaemon: scheduled periodic maintenance background activity.", v17, 2u);
      }

      return;
    }
  }

  else
  {
    v37 = 0;
    v18 = [v9 submitTaskRequest:v7 error:&v37];

    v12 = v37;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v19 = v12;
  v20 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v37 = v20;
  swift_errorRetain();
  sub_1000089AC(&qword_100085958, &unk_1000693F0);
  type metadata accessor for BGSystemTaskSchedulerError(0);
  if (swift_dynamicCast())
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);
    v22 = v36;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      sub_100051EE4(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);
      _BridgedStoredNSError.code.getter();
      type metadata accessor for Code(0);
      v27 = String.init<A>(describing:)();
      v29 = sub_100008A0C(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Schedule request failed: %s", v25, 0xCu);
      sub_100009914(v26);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000098DC(v30, qword_100087610);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Schedule request failed: %@", v33, 0xCu);
      sub_100009C94(v34, &qword_100085970, &qword_100068F48);

      return;
    }
  }
}

uint64_t sub_1000509EC(uint64_t a1)
{
  v2 = type metadata accessor for MLHostTask();
  v175 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v169 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v173 = &v163 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v163 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v163 - v11;
  v13 = __chkstk_darwin(v10);
  v172 = &v163 - v14;
  v15 = __chkstk_darwin(v13);
  v171 = &v163 - v16;
  v17 = __chkstk_darwin(v15);
  v170 = &v163 - v18;
  __chkstk_darwin(v17);
  v20 = &v163 - v19;
  v21 = type metadata accessor for TaskDefinition();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  __chkstk_darwin(v25 - 8);
  v27 = &v163 - v26;
  v28 = MLHostTask.isBackgroundTask.getter();
  v174 = a1;
  if ((v28 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000098DC(v32, qword_100087610);
    v33 = v175;
    (*(v175 + 16))(v9, v174, v2);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v34, v35))
    {

      (*(v33 + 8))(v9, v2);
      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v181 = v37;
    *v36 = 136315138;
    v38 = MLHostTask.name.getter();
    v40 = v39;
    (*(v33 + 8))(v9, v2);
    v41 = sub_100008A0C(v38, v40, &v181);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Skippping scheduling of task %s as it is not a background task", v36, 0xCu);
    sub_100009914(v37);

LABEL_15:

    return 0;
  }

  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  (*(v22 + 8))(v24, v21);
  v29 = type metadata accessor for TaskRequest();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_100009C94(v27, &qword_1000859A0, &qword_100069268);
    v31 = v2;
LABEL_11:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000098DC(v46, qword_100087610);
    v47 = v175;
    (*(v175 + 16))(v12, v174, v31);
    v34 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v34, v48))
    {

      (*(v47 + 8))(v12, v31);
      return 0;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v181 = v50;
    *v49 = 136315138;
    sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask, &protocol conformance descriptor for MLHostTask);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    (*(v47 + 8))(v12, v31);
    v54 = sub_100008A0C(v51, v53, &v181);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v34, v48, "Failed at generating BGSystemTaskRequest from taskDefinition: %s", v49, 0xCu);
    sub_100009914(v50);

    goto LABEL_15;
  }

  MLHostTask.name.getter();
  v42 = TaskRequest.getSystemTaskRequest(identifier:)();

  (*(v30 + 8))(v27, v29);
  v31 = v2;
  if (!v42)
  {
    goto LABEL_11;
  }

  v43 = v42;
  v44 = [v42 groupName];
  if (v44)
  {

    v45 = v174;
  }

  else
  {
    v45 = v174;
    MLHostTask.bundleIdentifier.getter();
    v56 = String._bridgeToObjectiveC()();

    [v43 setGroupName:v56];

    [v43 setGroupConcurrencyLimit:1];
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000098DC(v57, qword_100087610);
    v58 = v175;
    v59 = *(v175 + 16);
    v59(v20, v45, v31);
    v60 = v170;
    v59(v170, v45, v31);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v181 = v168;
      *v63 = 136315394;
      v64 = MLHostTask.name.getter();
      LODWORD(v167) = v62;
      v65 = v64;
      v67 = v66;
      v68 = *(v58 + 8);
      v68(v20, v31);
      v69 = sub_100008A0C(v65, v67, &v181);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      v70 = MLHostTask.bundleIdentifier.getter();
      v72 = v71;
      v68(v60, v31);
      v73 = sub_100008A0C(v70, v72, &v181);

      *(v63 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v61, v167, "Modified request for task %s: assigned group name: %s", v63, 0x16u);
      swift_arrayDestroy();

      v45 = v174;
    }

    else
    {

      v74 = *(v58 + 8);
      v74(v60, v31);
      v74(v20, v31);
    }
  }

  v170 = v31;
  v168 = objc_opt_self();
  v75 = [v168 sharedScheduler];
  MLHostTask.name.getter();
  v76 = String._bridgeToObjectiveC()();

  v77 = [v75 taskRequestForIdentifier:v76];

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  v79 = sub_1000098DC(v78, qword_100087610);
  v80 = v77;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();

  v83 = os_log_type_enabled(v81, v82);
  v84 = v175;
  v167 = v43;
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v181 = v86;
    *v85 = 136315138;
    if (v80)
    {
      v87 = [v80 description];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v43 = v167;
    }

    else
    {
      v90 = 0xE300000000000000;
      v88 = 4271950;
    }

    v91 = sub_100008A0C(v88, v90, &v181);

    *(v85 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v81, v82, "Existing BGST.taskRequest: %s", v85, 0xCu);
    sub_100009914(v86);

    v45 = v174;
  }

  else
  {
  }

  v92 = v172;
  v93 = v84;
  v95 = v84 + 16;
  v94 = *(v84 + 16);
  v172 = v80;
  v166 = v94;
  if (v80)
  {
    v97 = v170;
    v96 = v171;
    v94(v171, v45, v170);
    v98 = v43;
    v99 = Logger.logObject.getter();
    v100 = v43;
    v101 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v99, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v164 = v95;
      v165 = v79;
      v105 = v104;
      v181 = v104;
      *v102 = 136315394;
      v106 = MLHostTask.name.getter();
      v107 = v96;
      v108 = v106;
      v110 = v109;
      v171 = *(v175 + 8);
      (v171)(v107, v97);
      v111 = sub_100008A0C(v108, v110, &v181);

      *(v102 + 4) = v111;
      *(v102 + 12) = 2112;
      *(v102 + 14) = v98;
      *v103 = v100;
      v112 = v98;
      _os_log_impl(&_mh_execute_header, v99, v101, "Task %s has existing request, updating request: %@.", v102, 0x16u);
      sub_100009C94(v103, &qword_100085970, &qword_100068F48);

      sub_100009914(v105);
    }

    else
    {

      v171 = *(v93 + 8);
      (v171)(v96, v97);
    }

    v128 = v173;
    v129 = [v168 sharedScheduler];
    v181 = 0;
    v130 = [v129 updateTaskRequest:v98 error:&v181];

    v131 = v181;
    if (v130)
    {
      v132 = v181;

      return 1;
    }

LABEL_43:
    v136 = v131;
    v137 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v181 = v137;
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    type metadata accessor for BGSystemTaskSchedulerError(0);
    if (swift_dynamicCast())
    {

      v138 = v179;
      v166(v128, v174, v97);
      v139 = v138;
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v180 = v175;
        *v142 = 136315394;
        v143 = MLHostTask.name.getter();
        v145 = v144;
        (v171)(v128, v97);
        v146 = sub_100008A0C(v143, v145, &v180);

        *(v142 + 4) = v146;
        *(v142 + 12) = 2080;
        v178 = v139;
        sub_100051EE4(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);
        _BridgedStoredNSError.code.getter();
        v176 = v177;
        type metadata accessor for Code(0);
        v147 = String.init<A>(describing:)();
        v149 = sub_100008A0C(v147, v148, &v180);

        *(v142 + 14) = v149;
        _os_log_impl(&_mh_execute_header, v140, v141, "Task %s schedule request failed: %s", v142, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (v171)(v128, v97);
      }
    }

    else
    {

      v150 = v169;
      v166(v169, v174, v97);
      swift_errorRetain();
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v181 = v155;
        *v153 = 136315394;
        v156 = MLHostTask.name.getter();
        v157 = v150;
        v158 = v156;
        v160 = v159;
        (v171)(v157, v97);
        v161 = sub_100008A0C(v158, v160, &v181);

        *(v153 + 4) = v161;
        *(v153 + 12) = 2112;
        swift_errorRetain();
        v162 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 14) = v162;
        *v154 = v162;
        _os_log_impl(&_mh_execute_header, v151, v152, "Task %s schedule request failed: %@", v153, 0x16u);
        sub_100009C94(v154, &qword_100085970, &qword_100068F48);

        sub_100009914(v155);
      }

      else
      {

        (v171)(v150, v97);
      }
    }

    return 0;
  }

  v97 = v170;
  v94(v92, v45, v170);
  v113 = v43;
  v114 = Logger.logObject.getter();
  v115 = v43;
  v116 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v114, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v164 = v95;
    v165 = v79;
    v120 = v119;
    v181 = v119;
    *v117 = 136315394;
    v121 = MLHostTask.name.getter();
    v122 = v92;
    v123 = v121;
    v125 = v124;
    v171 = *(v175 + 8);
    (v171)(v122, v97);
    v126 = sub_100008A0C(v123, v125, &v181);

    *(v117 + 4) = v126;
    *(v117 + 12) = 2112;
    *(v117 + 14) = v113;
    *v118 = v115;
    v127 = v113;
    _os_log_impl(&_mh_execute_header, v114, v116, "Task %s has no request, submitting request: %@", v117, 0x16u);
    sub_100009C94(v118, &qword_100085970, &qword_100068F48);

    sub_100009914(v120);
  }

  else
  {

    v171 = *(v93 + 8);
    (v171)(v92, v97);
  }

  v128 = v173;
  v133 = [v168 sharedScheduler];
  v181 = 0;
  v134 = [v133 submitTaskRequest:v113 error:&v181];

  v131 = v181;
  if (!v134)
  {
    goto LABEL_43;
  }

  v135 = v181;

  return 1;
}

Swift::Int sub_100051D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085C30, &unk_1000693E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100051EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100051F48()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100052014(void *a1)
{
  v3 = *(type metadata accessor for MLHostTask() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 41) & ~*(v3 + 80));

  return sub_10002DA9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100052090()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000520DC()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000521C4(uint64_t a1)
{
  v3 = *(type metadata accessor for MLHostTask() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100043800;

  return sub_10002DFFC(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_100052318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006591C;

  return sub_10004A728(a1, v4);
}

uint64_t sub_1000523D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100043800;

  return sub_10004A728(a1, v4);
}

unint64_t sub_10005249C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000089AC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_100010E6C(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100052588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100085808, &qword_100069188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, &v13, &unk_1000860B0, &unk_100069760);
      v5 = v13;
      v6 = v14;
      result = sub_100010DF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100009B90(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000526B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100086098, &qword_100069748);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, v13, &unk_1000860A0, &unk_100069750);
      result = sub_1000110B0(v13);
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
      result = sub_100009B90(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10005281C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000089AC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100010DF4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100052918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085FD8, &qword_100069688);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010DF4(v5, v6);
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

unint64_t sub_100052A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100085CE0, &qword_100069490);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100010DF4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100052B18(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
    sub_100063B48();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10004AD48(&v8, v6, &qword_100085C60, BGSystemTaskResult_ptr, &unk_100085C70, &unk_100069440);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100052C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL sub_100052CC4()
{
  v0 = type metadata accessor for MLHostEnvironment();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    MLHostConfig.cloudEnvironment.getter();
    MLHostEnvironment.rawValue.getter();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    [v6 setObject:v8 forKey:v9];

    MLHostConfig.apsEnvironment.getter();
    MLHostEnvironment.rawValue.getter();
    v7(v3, v0);
    v10 = String._bridgeToObjectiveC()();

    v11 = String._bridgeToObjectiveC()();
    [v6 setObject:v10 forKey:v11];

    MLHostConfig.cloudContainer.getter();
    if (v12)
    {
      v13 = String._bridgeToObjectiveC()();

      v14 = String._bridgeToObjectiveC()();
      [v6 setObject:v13 forKey:v14];
    }

    MLHostConfig.apsChannel.getter();
    if (v15)
    {
      v16 = String._bridgeToObjectiveC()();

      v17 = String._bridgeToObjectiveC()();
      [v6 setObject:v16 forKey:v17];
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000098DC(v18, qword_100087610);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100008A0C(0xD000000000000010, 0x8000000100073280, &v25);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed at reading UserDefaults(%s). Skipping saving config.", v21, 0xCu);
      sub_100009914(v22);
    }
  }

  return v6 != 0;
}

void sub_1000530BC(uint64_t a1)
{
  v2 = objc_allocWithZone(RBSTerminateContext);
  v3 = String._bridgeToObjectiveC()();
  v23 = [v2 initWithExplanation:v3];

  [v23 setReportType:0];
  [v23 setMaximumTerminationResistance:20];
  v4 = [objc_opt_self() identifierWithPid:a1];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() predicateMatchingIdentifier:v4];
    v7 = [objc_allocWithZone(RBSTerminateRequest) initWithPredicate:v6 context:v23];
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000098DC(v8, qword_100087610);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "RBS request termination for pid: %d", v11, 8u);
    }

    v24 = 0;
    if ([v7 execute:&v24])
    {
      v12 = v24;
    }

    else
    {
      v17 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "RBS request failed: %@", v20, 0xCu);
        sub_100009C94(v21, &qword_100085970, &qword_100068F48);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000098DC(v13, qword_100087610);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "RBS failed at creating identifier for pid: %d", v16, 8u);
    }
  }
}

uint64_t sub_100053544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[84] = a5;
  v5[83] = a4;
  v5[82] = a3;
  v5[81] = a2;
  v5[80] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[85] = v6;
  v5[86] = *(v6 - 8);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock.Instant();
  v5[90] = v7;
  v5[91] = *(v7 - 8);
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[98] = v8;
  v5[99] = *(v8 - 8);
  v5[100] = swift_task_alloc();
  v9 = type metadata accessor for SandboxError();
  v5[101] = v9;
  v5[102] = *(v9 - 8);
  v5[103] = swift_task_alloc();
  v10 = type metadata accessor for URL.DirectoryHint();
  v5[104] = v10;
  v5[105] = *(v10 - 8);
  v5[106] = swift_task_alloc();
  sub_1000089AC(&qword_100085948, &qword_100069258);
  v5[107] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v5[108] = v11;
  v5[109] = *(v11 - 8);
  v5[110] = swift_task_alloc();
  sub_1000089AC(&qword_100085C80, &unk_100069450);
  v5[111] = swift_task_alloc();
  v12 = type metadata accessor for AppExtensionProcess();
  v5[112] = v12;
  v5[113] = *(v12 - 8);
  v5[114] = swift_task_alloc();
  sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v13 = type metadata accessor for TaskStatus();
  v5[127] = v13;
  v5[128] = *(v13 - 8);
  v5[129] = swift_task_alloc();
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v14 = type metadata accessor for MLHostTask();
  v5[142] = v14;
  v15 = *(v14 - 8);
  v5[143] = v15;
  v5[144] = *(v15 + 64);
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();
  v5[176] = swift_task_alloc();

  return (_swift_task_switch)(sub_100053C80, 0, 0);
}

uint64_t sub_100053C80(uint64_t a1)
{
  v818 = v1;
  v2 = v1;
  v3 = *(v1 + 672);
  v4 = *(v2 + 664);
  v5 = *(v2 + 656);
  strcpy(v817, "transaction_");
  BYTE5(v817[1]) = 0;
  HIWORD(v817[1]) = -5120;
  v6._countAndFlagsBits = MLHostTask.name.getter();
  String.append(_:)(v6);

  String.utf8CString.getter();

  *(v2 + 1416) = os_transaction_create();

  v7 = *(v5 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  *(v2 + 1424) = v7;
  os_unfair_lock_lock((*(v7 + 56) + 16));
  swift_beginAccess();
  v8 = *(v7 + 72);

  LOBYTE(v3) = sub_1000292B0(v4, v3, v8);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  if (v3)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000098DC(v9, qword_100087610);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Task was deferred before acquiring process. Exiting early.", v12, 2u);
    }

    v13 = *(v2 + 1144);
    v14 = *(v2 + 1136);
    v15 = *(v2 + 1128);
    v16 = *(v2 + 1024);
    v17 = *(v2 + 1016);
    v18 = *(v2 + 1008);

    v19 = MLHostTask.name.getter();
    v21 = v20;
    (*(v16 + 104))(v15, enum case for TaskStatus.taskDeferred(_:), v17);
    sub_100019300(v19, v21, v18);

    if ((*(v13 + 48))(v18, 1, v14) == 1)
    {
      v22 = *(v2 + 1008);
      (*(*(v2 + 1024) + 8))(*(v2 + 1128), *(v2 + 1016));
      sub_100009C94(v22, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v43 = *(v2 + 1400);
      v44 = *(v2 + 1144);
      v45 = *(v2 + 1136);
      v46 = *(v2 + 1128);
      v47 = *(v2 + 1120);
      v48 = *(v2 + 1024);
      v49 = *(v2 + 1016);
      (*(v44 + 32))(v43, *(v2 + 1008), v45);
      (*(v48 + 16))(v47, v46, v49);
      MLHostTask.status.setter();
      sub_10001C4DC(v43);
      (*(v44 + 8))(v43, v45);
      (*(v48 + 8))(v46, v49);
    }

    v50 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v810 = MLHostResult.init(status:policy:)();
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v23 = *(v2 + 1408);
  v24 = *(v2 + 1144);
  v25 = *(v2 + 1136);
  v26 = *(v2 + 640);
  v27 = type metadata accessor for Logger();
  *(v2 + 1432) = sub_1000098DC(v27, qword_100087610);
  v28 = *(v24 + 16);
  *(v2 + 1440) = v28;
  *(v2 + 1448) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v794 = v28;
  v28(v23, v26, v25);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v2 + 1408);
  v33 = *(v2 + 1144);
  v34 = *(v2 + 1136);
  v789 = v2;
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v817[0] = v36;
    *v35 = 136315138;
    v37 = MLHostTask.bundleIdentifier.getter();
    v39 = v38;
    v40 = v34;
    v41 = *(v33 + 8);
    v41(v32, v40);
    v42 = sub_100008A0C(v37, v39, v817);
    v2 = v789;

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v29, v30, "Requesting process for extension: %s", v35, 0xCu);
    sub_100009914(v36);
  }

  else
  {

    v51 = v34;
    v41 = *(v33 + 8);
    v41(v32, v51);
  }

  v811 = v41;
  *(v2 + 1456) = v41;
  v52 = *(v2 + 904);
  v53 = *(v2 + 896);
  v54 = *(v2 + 888);
  v55 = MLHostTask.bundleIdentifier.getter();
  v57 = v56;
  v58 = MLHostTask.name.getter();
  sub_10000EEF4(v55, v57, v58, v59, v54);

  v60 = (*(v52 + 48))(v54, 1, v53);
  v61 = *(v2 + 1136);
  if (v60 == 1)
  {
    v62 = *(v2 + 1384);
    v63 = *(v2 + 640);
    sub_100009C94(*(v2 + 888), &qword_100085C80, &unk_100069450);
    v794(v62, v63, v61);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v2 + 1384);
    v68 = *(v2 + 1136);
    if (v66)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v817[0] = v70;
      *v69 = 136315138;
      v71 = MLHostTask.bundleIdentifier.getter();
      v73 = v72;
      v811(v67, v68);
      v74 = sub_100008A0C(v71, v73, v817);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed at starting process for extension: %s", v69, 0xCu);
      sub_100009914(v70);
    }

    else
    {

      v811(v67, v68);
    }

    v92 = *(v2 + 1144);
    v93 = *(v2 + 1136);
    v94 = *(v2 + 1032);
    v95 = *(v2 + 1024);
    v96 = *(v2 + 1016);
    v97 = *(v2 + 920);
    v98 = MLHostTask.name.getter();
    v100 = v99;
    (*(v95 + 104))(v94, enum case for TaskStatus.taskFailed(_:), v96);
    sub_100019300(v98, v100, v97);

    if ((*(v92 + 48))(v97, 1, v93) == 1)
    {
      v101 = *(v2 + 1032);
      v102 = *(v2 + 1024);
      v103 = *(v2 + 1016);
      v104 = *(v2 + 920);
      swift_unknownObjectRelease();
      (*(v102 + 8))(v101, v103);
      sub_100009C94(v104, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v122 = *(v2 + 1160);
      v123 = *(v2 + 1136);
      v124 = *(v2 + 1120);
      v125 = *(v2 + 1032);
      v126 = *(v2 + 1024);
      v127 = *(v2 + 1016);
      (*(*(v2 + 1144) + 32))(v122, *(v2 + 920), v123);
      (*(v126 + 16))(v124, v125, v127);
      MLHostTask.status.setter();
      sub_10001C4DC(v122);
      swift_unknownObjectRelease();
      v811(v122, v123);
      (*(v126 + 8))(v125, v127);
    }

    goto LABEL_47;
  }

  v75 = *(v2 + 1392);
  v76 = *(v2 + 640);
  (*(*(v2 + 904) + 32))(*(v2 + 912), *(v2 + 888), *(v2 + 896));
  v77 = v794;
  v794(v75, v76, v61);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v2 + 1392);
  v82 = *(v2 + 1136);
  if (v80)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v817[0] = v84;
    *v83 = 136315138;
    v85 = MLHostTask.bundleIdentifier.getter();
    v87 = v86;
    v88 = v82;
    v89 = v811;
    v811(v81, v88);
    v90 = v85;
    v77 = v794;
    v91 = sub_100008A0C(v90, v87, v817);
    v2 = v789;

    *(v83 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v78, v79, "Acquired process for extension: %s", v83, 0xCu);
    sub_100009914(v84);
  }

  else
  {

    v105 = v82;
    v89 = v811;
    v811(v81, v105);
  }

  v106 = *(v2 + 672);
  v107 = *(v2 + 664);
  os_unfair_lock_lock((*(v7 + 56) + 16));
  v108 = *(v7 + 72);

  LOBYTE(v106) = sub_1000292B0(v107, v106, v108);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  v109 = *(v2 + 1136);
  v110 = *(v2 + 640);
  if (v106)
  {
    v77(*(v2 + 1376), v110, v109);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v2 + 1376);
    v115 = *(v2 + 1136);
    if (v113)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v817[0] = v117;
      *v116 = 136315138;
      v118 = MLHostTask.name.getter();
      v120 = v119;
      v811(v114, v115);
      v121 = sub_100008A0C(v118, v120, v817);

      *(v116 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v111, v112, "Task %s was deferred while acquiring process. Exiting early.", v116, 0xCu);
      sub_100009914(v117);
    }

    else
    {

      v89(v114, v115);
    }

    v142 = *(v2 + 1144);
    v143 = *(v2 + 1136);
    v144 = *(v2 + 1112);
    v145 = *(v2 + 1024);
    v146 = *(v2 + 1016);
    v147 = *(v2 + 1000);
    v148 = MLHostTask.name.getter();
    v150 = v149;
    (*(v145 + 104))(v144, enum case for TaskStatus.taskDeferred(_:), v146);
    sub_100019300(v148, v150, v147);

    if ((*(v142 + 48))(v147, 1, v143) == 1)
    {
      v151 = *(v2 + 1000);
      (*(*(v2 + 1024) + 8))(*(v2 + 1112), *(v2 + 1016));
      sub_100009C94(v151, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v169 = *(v2 + 1360);
      v170 = *(v2 + 1136);
      v171 = *(v2 + 1120);
      v172 = *(v2 + 1112);
      v173 = *(v2 + 1024);
      v174 = *(v2 + 1016);
      (*(*(v2 + 1144) + 32))(v169, *(v2 + 1000), v170);
      (*(v173 + 16))(v171, v172, v174);
      MLHostTask.status.setter();
      sub_10001C4DC(v169);
      v811(v169, v170);
      (*(v173 + 8))(v172, v174);
    }

    v175 = *(v2 + 912);
    v176 = *(v2 + 904);
    v177 = *(v2 + 896);
    v178 = AppExtensionProcess._pid.getter();
    v817[0] = 0;
    v817[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v179._countAndFlagsBits = 0x206B736154;
    v179._object = 0xE500000000000000;
    String.append(_:)(v179);
    v180._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v180);

    v181._countAndFlagsBits = 0xD000000000000035;
    v181._object = 0x8000000100073100;
    String.append(_:)(v181);
    sub_1000530BC(v178);

LABEL_39:
    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v176 + 8))(v175, v177);
LABEL_47:
    v810 = 0;
LABEL_48:

    v215 = *(v2 + 8);

    return v215(v810);
  }

  v77(*(v2 + 1368), v110, v109);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.info.getter();
  v130 = os_log_type_enabled(v128, v129);
  v131 = *(v2 + 1368);
  v132 = *(v2 + 1136);
  if (v130)
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v817[0] = v134;
    *v133 = 136315138;
    v135 = MLHostTask.bundleIdentifier.getter();
    v137 = v136;
    v138 = v132;
    v139 = v811;
    v811(v131, v138);
    v140 = v135;
    v77 = v794;
    v141 = sub_100008A0C(v140, v137, v817);
    v2 = v789;

    *(v133 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v128, v129, "Creating XPCConnection for extension: %s", v133, 0xCu);
    sub_100009914(v134);
  }

  else
  {

    v152 = v132;
    v139 = v811;
    v811(v131, v152);
  }

  v153.super.isa = AppExtensionProcess.makeXPCConnection()().super.isa;
  *(v2 + 1464) = v153;
  v154 = *(v2 + 1136);
  v155 = *(v2 + 640);
  if (v156)
  {
    v157 = *(v2 + 1344);

    v77(v157, v155, v154);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();
    v160 = os_log_type_enabled(v158, v159);
    v161 = *(v2 + 1344);
    v162 = *(v2 + 1136);
    if (v160)
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v817[0] = v164;
      *v163 = 136315138;
      v165 = MLHostTask.bundleIdentifier.getter();
      v167 = v166;
      v811(v161, v162);
      v168 = sub_100008A0C(v165, v167, v817);

      *(v163 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v158, v159, "Failed at opening XPCConnection for extension: %s", v163, 0xCu);
      sub_100009914(v164);
    }

    else
    {

      v139(v161, v162);
    }

    v194 = *(v2 + 1144);
    v195 = *(v2 + 1136);
    v196 = *(v2 + 1040);
    v197 = *(v2 + 1024);
    v198 = *(v2 + 1016);
    v199 = *(v2 + 928);
    v200 = MLHostTask.name.getter();
    v202 = v201;
    (*(v197 + 104))(v196, enum case for TaskStatus.taskFailed(_:), v198);
    sub_100019300(v200, v202, v199);
    if ((*(v194 + 48))(v199, 1, v195) == 1)
    {
      sub_100009C94(*(v2 + 928), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v203 = *(v2 + 1168);
      v204 = *(v2 + 1136);
      v205 = *(v2 + 1120);
      v206 = *(v2 + 1040);
      v207 = *(v2 + 1024);
      v208 = *(v2 + 1016);
      (*(*(v2 + 1144) + 32))(v203, *(v2 + 928), v204);
      (*(v207 + 16))(v205, v206, v208);
      MLHostTask.status.setter();
      sub_10001C4DC(v203);
      v811(v203, v204);
    }

    v209 = *(v2 + 1040);
    v210 = *(v2 + 1024);
    v211 = *(v2 + 1016);
    v212 = *(v2 + 912);
    v213 = *(v2 + 904);
    v214 = *(v2 + 896);

    (*(v210 + 8))(v209, v211);
    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v213 + 8))(v212, v214);
    goto LABEL_47;
  }

  isa = v153.super.isa;
  v765 = (v2 + 64);
  aBlock = (v2 + 112);
  v77(*(v2 + 1352), v155, v154);
  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.info.getter();
  v184 = os_log_type_enabled(v182, v183);
  v185 = *(v2 + 1352);
  v186 = *(v2 + 1136);
  if (v184)
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v817[0] = v188;
    *v187 = 136315138;
    v189 = MLHostTask.bundleIdentifier.getter();
    v190 = v139;
    v192 = v191;
    v190(v185, v186);
    v193 = sub_100008A0C(v189, v192, v817);

    *(v187 + 4) = v193;
    _os_log_impl(&_mh_execute_header, v182, v183, "Creating NSXPCInterface for extension: %s", v187, 0xCu);
    sub_100009914(v188);
  }

  else
  {

    v139(v185, v186);
  }

  v217 = *(v789 + 1336);
  v218 = *(v789 + 1152);
  v219 = *(v789 + 1144);
  v220 = *(v789 + 1136);
  v754 = *(v789 + 664);
  v756 = *(v789 + 672);
  v221 = *(v789 + 640);
  v762 = v221;
  v222 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_];
  [(objc_class *)isa setRemoteObjectInterface:v222];

  v794(v217, v221, v220);
  v223 = *(v219 + 80);
  *(v789 + 476) = v223;
  v224 = (v223 + 16) & ~v223;
  v225 = (v224 + v218);
  v226 = swift_allocObject();
  v227 = *(v219 + 32);
  *(v789 + 1472) = v227;
  *(v789 + 1480) = (v219 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v227(v226 + v224, v217, v220);
  *(v789 + 96) = sub_100064090;
  *(v789 + 104) = v226;
  *(v789 + 64) = _NSConcreteStackBlock;
  *(v789 + 72) = 1107296256;
  *(v789 + 80) = sub_1000658D0;
  *(v789 + 88) = &unk_100082DC0;
  v228 = _Block_copy(v765);

  [(objc_class *)isa setInterruptionHandler:v228];
  _Block_release(v228);
  v794(v217, v762, v220);
  v752 = v225;
  v229 = swift_allocObject();
  v766 = v224;
  v2 = v789;
  v227(v229 + v224, v217, v220);
  *(v789 + 144) = sub_100064124;
  *(v789 + 152) = v229;
  *(v789 + 112) = _NSConcreteStackBlock;
  *(v789 + 120) = 1107296256;
  *(v789 + 128) = sub_1000658D0;
  *(v789 + 136) = &unk_100082E10;
  v230 = _Block_copy(aBlock);

  [(objc_class *)isa setInvalidationHandler:v230];
  _Block_release(v230);
  [(objc_class *)isa resume];
  os_unfair_lock_lock((*(v7 + 56) + 16));
  v231 = *(v7 + 72);

  LOBYTE(v228) = sub_1000292B0(v754, v756, v231);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  v773 = v227;
  if (v228)
  {
    v794(*(v789 + 1328), *(v789 + 640), *(v789 + 1136));
    v232 = Logger.logObject.getter();
    v233 = static os_log_type_t.error.getter();
    v234 = os_log_type_enabled(v232, v233);
    v235 = *(v789 + 1328);
    v236 = *(v789 + 1136);
    if (v234)
    {
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v817[0] = v238;
      *v237 = 136315138;
      v239 = MLHostTask.name.getter();
      v241 = v240;
      v811(v235, v236);
      v242 = sub_100008A0C(v239, v241, v817);

      *(v237 + 4) = v242;
      _os_log_impl(&_mh_execute_header, v232, v233, "Task %s was deferred while opening XPC connection to process. Exiting early.", v237, 0xCu);
      sub_100009914(v238);
    }

    else
    {

      v811(v235, v236);
    }

    v262 = *(v789 + 1144);
    v263 = *(v789 + 1136);
    v264 = *(v789 + 1104);
    v265 = *(v789 + 1024);
    v266 = *(v789 + 1016);
    v267 = *(v789 + 992);
    v268 = MLHostTask.name.getter();
    v270 = v269;
    (*(v265 + 104))(v264, enum case for TaskStatus.taskDeferred(_:), v266);
    sub_100019300(v268, v270, v267);
    if ((*(v262 + 48))(v267, 1, v263) == 1)
    {
      sub_100009C94(*(v789 + 992), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v284 = *(v789 + 1320);
      v285 = *(v789 + 1136);
      v286 = *(v789 + 1120);
      v287 = *(v789 + 1104);
      v288 = *(v789 + 1024);
      v289 = *(v789 + 1016);
      v773(v284, *(v789 + 992), v285);
      (*(v288 + 16))(v286, v287, v289);
      MLHostTask.status.setter();
      sub_10001C4DC(v284);
      v811(v284, v285);
    }

    v290 = *(v789 + 1104);
    v291 = *(v789 + 1024);
    v292 = *(v789 + 1016);
    v175 = *(v789 + 912);
    v176 = *(v789 + 904);
    v177 = *(v789 + 896);

    (*(v291 + 8))(v290, v292);
    v293 = [(objc_class *)isa processIdentifier];
    v817[0] = 0;
    v817[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    v294._countAndFlagsBits = 0x206B736154;
    v294._object = 0xE500000000000000;
    String.append(_:)(v294);
    v295._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v295);

    v296._countAndFlagsBits = 0xD000000000000045;
    v296._object = 0x80000001000730B0;
    String.append(_:)(v296);
    sub_1000530BC(v293);

    [(objc_class *)isa invalidate];

    goto LABEL_39;
  }

  v243 = *(v789 + 1336);
  v244 = *(v789 + 1136);
  v245 = *(v789 + 1024);
  v246 = *(v789 + 640);
  v247 = swift_allocBox();
  v249 = v248;
  *(v789 + 1488) = v247;
  *(v789 + 1496) = v248;
  LODWORD(v248) = enum case for TaskStatus.taskRunning(_:);
  *(v789 + 500) = enum case for TaskStatus.taskRunning(_:);
  v250 = *(v245 + 104);
  *(v789 + 1504) = v250;
  *(v789 + 1512) = (v245 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v751 = v248;
  v750 = v250;
  v250(v249);
  v794(v243, v246, v244);
  v251 = swift_allocObject();
  v227(v251 + v766, v243, v244);
  v755 = (v752 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v251 + v755) = v247;
  *(v789 + 192) = sub_100064230;
  *(v789 + 200) = v251;
  *(v789 + 160) = _NSConcreteStackBlock;
  *(v789 + 168) = 1107296256;
  *(v789 + 176) = sub_10002C55C;
  *(v789 + 184) = &unk_100082E60;
  v252 = _Block_copy((v789 + 160));

  v253 = [(objc_class *)isa remoteObjectProxyWithErrorHandler:v252];
  _Block_release(v252);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000089AC(&qword_100085C88, &qword_100069460);
  swift_dynamicCast();
  v757 = *(v789 + 624);
  *(v789 + 1520) = v757;
  v254 = MLHostTask.taskFolder.getter();
  v256 = v255;
  *(v789 + 528) = MLHostTask.bundleIdentifier.getter();
  *(v789 + 536) = v257;
  v258 = swift_task_alloc();
  *(v258 + 16) = v789 + 528;
  v259 = sub_100029F60(sub_100065978, v258, &off_100082638);

  if (v259)
  {
    v260 = *(v789 + 648);

    v261 = *(v260 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v256 = *(v261 + 48);
    v784 = *(v261 + 40);
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v784 = v254;
    if (!v256)
    {
      goto LABEL_68;
    }
  }

  v271 = v259 ^ 1;
  v794(*(v789 + 1312), *(v789 + 640), *(v789 + 1136));

  v272 = Logger.logObject.getter();
  v273 = static os_log_type_t.debug.getter();

  v274 = os_log_type_enabled(v272, v273);
  v275 = *(v789 + 1312);
  v276 = *(v789 + 1136);
  if (v274)
  {
    v277 = v256;
    v278 = swift_slowAlloc();
    v817[0] = swift_slowAlloc();
    *v278 = 67109634;
    *(v278 + 4) = v271 & 1;
    *(v278 + 8) = 2080;
    v279 = MLHostTask.name.getter();
    v281 = v280;
    v811(v275, v276);
    v282 = v279;
    v2 = v789;
    v283 = sub_100008A0C(v282, v281, v817);

    *(v278 + 10) = v283;
    *(v278 + 18) = 2080;
    *(v278 + 20) = sub_100008A0C(v784, v277, v817);
    _os_log_impl(&_mh_execute_header, v272, v273, "Granting sandbox extension (ro: %{BOOL}d) to %s for taskFolder: %s", v278, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v811(v275, v276);
  }

  v297 = *(v2 + 872);
  v298 = *(v2 + 864);
  v299 = *(v2 + 856);
  v300 = *(v2 + 848);
  v301 = *(v2 + 840);
  v302 = *(v2 + 832);
  type metadata accessor for SandboxExtension();
  AppExtensionProcess._auditToken.getter();
  (*(v297 + 56))(v299, 1, 1, v298);
  (*(v301 + 104))(v300, enum case for URL.DirectoryHint.inferFromPath(_:), v302);
  URL.init(filePath:directoryHint:relativeTo:)();
  v2 = v789;
  static SandboxExtension.issue(auditToken:url:readonly:)();
  (*(*(v789 + 872) + 8))(*(v789 + 880), *(v789 + 864));
  SandboxExtension.token.getter();
  v303 = String._bridgeToObjectiveC()();

  [v757 consumeSandboxExtensionWithToken:v303];

LABEL_68:
  v753 = (v2 + 16);
  v304 = *(v2 + 1304);
  v305 = *(v2 + 1296);
  v306 = *(v2 + 1136);
  v307 = *(v2 + 800);
  v308 = *(v2 + 792);
  v309 = *(v2 + 784);
  v310 = *(v2 + 640);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v308 + 8))(v307, v309);
  MLHostTask.name.getter();
  v311 = objc_allocWithZone(type metadata accessor for MLHostExtensionContext());
  v785 = MLHostExtensionContext.init(taskId:taskName:taskFolder:)();
  *(v2 + 1528) = v785;
  v312 = swift_allocObject();
  *(v2 + 1536) = v312;
  v749 = v312;
  *(v312 + 16) = 0;
  v313 = swift_allocObject();
  *(v2 + 1544) = v313;
  v748 = v313;
  *(v313 + 16) = 2;
  v794(v304, v310, v306);
  v794(v305, v310, v306);
  v314 = Logger.logObject.getter();
  v315 = static os_log_type_t.info.getter();
  v316 = os_log_type_enabled(v314, v315);
  v317 = *(v2 + 1304);
  v318 = *(v2 + 1296);
  v319 = *(v2 + 1136);
  if (v316)
  {
    v320 = swift_slowAlloc();
    v817[0] = swift_slowAlloc();
    *v320 = 136315394;
    v321 = MLHostTask.name.getter();
    v323 = v322;
    v811(v317, v319);
    v324 = sub_100008A0C(v321, v323, v817);
    v2 = v789;

    *(v320 + 4) = v324;
    *(v320 + 12) = 2080;
    v325 = MLHostTask.bundleIdentifier.getter();
    v327 = v326;
    v811(v318, v319);
    v328 = sub_100008A0C(v325, v327, v817);

    *(v320 + 14) = v328;
    _os_log_impl(&_mh_execute_header, v314, v315, "Task %s starting with extension: %s", v320, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v811(v318, v319);
    v811(v317, v319);
  }

  v329 = *(v2 + 1144);
  v330 = *(v2 + 1136);
  v331 = *(v2 + 1096);
  v332 = *(v2 + 1016);
  v333 = *(v2 + 984);
  *(v2 + 1552) = *(*(v2 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v334 = MLHostTask.name.getter();
  v336 = v335;
  v750(v331, v751, v332);
  sub_100019300(v334, v336, v333);
  v337 = *(v329 + 48);
  *(v2 + 1560) = v337;
  *(v2 + 1568) = (v329 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v337(v333, 1, v330) == 1)
  {
    sub_100009C94(*(v2 + 984), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v338 = *(v2 + 1288);
    v339 = *(v2 + 1136);
    v340 = *(v2 + 1120);
    v341 = *(v2 + 1096);
    v342 = *(v2 + 1024);
    v343 = *(v2 + 1016);
    v773(v338, *(v2 + 984), v339);
    (*(v342 + 16))(v340, v341, v343);
    MLHostTask.status.setter();
    sub_10001C4DC(v338);
    v811(v338, v339);
  }

  v344 = *(v2 + 1336);
  v345 = *(v2 + 1136);
  v346 = *(v2 + 1096);
  v347 = *(v2 + 1024);
  v348 = *(v2 + 1016);
  v349 = *(v2 + 648);
  v350 = *(v2 + 640);

  v351 = *(v347 + 8);
  *(v2 + 1576) = v351;
  *(v2 + 1584) = (v347 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v351(v346, v348);
  static ContinuousClock.now.getter();
  v794(v344, v350, v345);
  v352 = (v755 + 15) & 0xFFFFFFFFFFFFFFF8;
  v353 = swift_allocObject();
  v773(v353 + v766, v344, v345);
  *(v353 + v755) = v749;
  *(v353 + v352) = v748;
  *(v353 + ((v352 + 15) & 0xFFFFFFFFFFFFFFF8)) = v349;
  *(v2 + 48) = sub_100064318;
  *(v2 + 56) = v353;
  *(v2 + 16) = _NSConcreteStackBlock;
  *(v2 + 24) = 1107296256;
  *(v2 + 32) = sub_100065970;
  *(v2 + 40) = &unk_100082F00;
  v354 = _Block_copy(v753);

  [v757 shouldRunWithContext:v785 reply:v354];
  _Block_release(v354);
  swift_beginAccess();
  *(v2 + 1592) = 0u;
  v355 = *(v2 + 1424);
  os_unfair_lock_lock((*(v355 + 56) + 16));
  v356 = *(v355 + 72);
  if (*(v356 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v357 = Hasher._finalize()();
    v358 = -1 << *(v356 + 32);
    v359 = v357 & ~v358;
    if ((*(v356 + 56 + ((v359 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v359))
    {
      v360 = ~v358;
      while (1)
      {
        v361 = (*(v356 + 48) + 16 * v359);
        v362 = *v361 == *(v2 + 664) && v361[1] == *(v2 + 672);
        if (v362 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v359 = (v359 + 1) & v360;
        if (((*(v356 + 56 + ((v359 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v359) & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      v373 = *(v2 + 1424);

      os_unfair_lock_unlock((*(v373 + 56) + 16));
      goto LABEL_91;
    }

LABEL_83:
  }

  v363 = *(v2 + 1544);
  os_unfair_lock_unlock((*(*(v2 + 1424) + 56) + 16));
  if (*(v363 + 16) == 2 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    v364 = *(v2 + 768);
    v365 = *(v2 + 728);
    v366 = *(v2 + 720);
    static Clock<>.continuous.getter();
    *(v2 + 544) = xmmword_100069320;
    *(v2 + 456) = 0;
    *(v2 + 464) = 0;
    *(v2 + 472) = 1;
    v367 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v368 = *(v365 + 8);
    *(v2 + 1688) = v368;
    *(v2 + 1696) = (v365 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v368(v364, v366);
    v369 = swift_task_alloc();
    *(v2 + 1704) = v369;
    *v369 = v2;
    v369[1] = sub_10005E200;
    v370 = *(v2 + 736);
    v371 = *(v2 + 680);
    v372 = v2 + 456;
    goto LABEL_87;
  }

LABEL_91:
  v374 = *(v2 + 1424);
  v375 = *(v2 + 672);
  v376 = *(v2 + 664);
  os_unfair_lock_lock((*(v374 + 56) + 16));
  v377 = *(v374 + 72);

  LOBYTE(v375) = sub_1000292B0(v376, v375, v377);

  os_unfair_lock_unlock((*(v374 + 56) + 16));
  if ((v375 & 1) == 0)
  {
    v378 = *(v2 + 1544);
    swift_beginAccess();
    if (*(v378 + 16) == 2)
    {
      v800 = *(v2 + 1560);
      v379 = *(v2 + 1504);
      v380 = *(v2 + 1136);
      v381 = *(v2 + 1048);
      v382 = *(v2 + 1016);
      v383 = *(v2 + 936);
      v384 = MLHostTask.name.getter();
      v386 = v385;
      v379(v381, enum case for TaskStatus.taskFailed(_:), v382);
      sub_100019300(v384, v386, v383);
      if (v800(v383, 1, v380) == 1)
      {
        sub_100009C94(*(v2 + 936), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v464 = *(v2 + 1456);
        v465 = *(v2 + 1184);
        v466 = *(v2 + 1136);
        v467 = *(v2 + 1120);
        v468 = *(v2 + 1048);
        v469 = *(v2 + 1024);
        v470 = *(v2 + 1016);
        (*(v2 + 1472))(v465, *(v2 + 936), v466);
        (*(v469 + 16))(v467, v468, v470);
        MLHostTask.status.setter();
        sub_10001C4DC(v465);
        v464(v465, v466);
      }

      v471 = *(v2 + 1576);
      v472 = *(v2 + 1440);
      v473 = *(v2 + 1176);
      v474 = *(v2 + 1136);
      v475 = *(v2 + 1048);
      v476 = *(v2 + 1016);
      v477 = *(v2 + 640);

      v471(v475, v476);
      v472(v473, v477, v474);
      v478 = Logger.logObject.getter();
      v479 = static os_log_type_t.error.getter();
      v480 = os_log_type_enabled(v478, v479);
      v481 = *(v2 + 1456);
      v482 = *(v2 + 1176);
      v483 = *(v2 + 1136);
      if (v480)
      {
        v484 = v479;
        v485 = swift_slowAlloc();
        v486 = swift_slowAlloc();
        v817[0] = v486;
        *v485 = 136315138;
        v487 = MLHostTask.name.getter();
        v489 = v488;
        v481(v482, v483);
        v490 = sub_100008A0C(v487, v489, v817);

        *(v485 + 4) = v490;
        _os_log_impl(&_mh_execute_header, v478, v484, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v485, 0xCu);
        sub_100009914(v486);
      }

      else
      {

        v481(v482, v483);
      }

      v2 = v789;
      v777 = *(v789 + 1528);
      v491 = *(v789 + 1464);
      v492 = *(v789 + 912);
      v493 = *(v789 + 904);
      v814 = *(v789 + 896);
      v494 = *(v789 + 776);
      v495 = *(v789 + 728);
      v496 = *(v789 + 720);
      v497 = [v491 processIdentifier];
      v817[0] = 0;
      v817[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v817[0] = 0x206B736154;
      v817[1] = 0xE500000000000000;
      v498._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v498);

      v499._countAndFlagsBits = 0xD000000000000024;
      v499._object = 0x8000000100073000;
      String.append(_:)(v499);
      sub_1000530BC(v497);

      swift_unknownObjectRelease();
      (*(v495 + 8))(v494, v496);

      [v491 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v493 + 8))(v492, v814);
      goto LABEL_47;
    }
  }

  v387 = *(v2 + 1544);
  swift_beginAccess();
  v388 = *(v387 + 16);
  if (v388 == 2)
  {
    (*(v2 + 1440))(*(v2 + 1280), *(v2 + 640), *(v2 + 1136));
    v389 = Logger.logObject.getter();
    v390 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v389, v390))
    {
      v391 = *(v2 + 1456);
      v392 = *(v2 + 1424);
      v393 = *(v2 + 1280);
      v394 = *(v789 + 1136);
      v792 = *(v789 + 664);
      v795 = *(v789 + 672);
      v395 = swift_slowAlloc();
      v817[0] = swift_slowAlloc();
      *v395 = 136315650;
      v396 = MLHostTask.name.getter();
      v398 = v397;
      v399 = v394;
      v2 = v789;
      v391(v393, v399);
      v400 = sub_100008A0C(v396, v398, v817);

      *(v395 + 4) = v400;
      *(v395 + 12) = 1024;
      os_unfair_lock_lock((*(v392 + 56) + 16));
      v401 = *(v392 + 72);

      LOBYTE(v391) = sub_1000292B0(v792, v795, v401);

      os_unfair_lock_unlock((*(v392 + 56) + 16));
      *(v395 + 14) = v391 & 1;
      *(v395 + 18) = 2080;
      v402 = Duration.description.getter();
      v404 = sub_100008A0C(v402, v403, v817);

      *(v395 + 20) = v404;
      _os_log_impl(&_mh_execute_header, v389, v390, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v395, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v422 = *(v2 + 1456);
      v423 = *(v2 + 1280);
      v424 = *(v2 + 1136);

      v422(v423, v424);
    }

    v805 = *(v2 + 1560);
    v425 = *(v2 + 1504);
    v426 = *(v2 + 1136);
    v427 = *(v2 + 1056);
    v428 = *(v2 + 1016);
    v429 = *(v2 + 944);
    v430 = MLHostTask.name.getter();
    v432 = v431;
    v425(v427, enum case for TaskStatus.taskDeferred(_:), v428);
    sub_100019300(v430, v432, v429);
    if (v805(v429, 1, v426) == 1)
    {
      sub_100009C94(*(v2 + 944), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v446 = *(v2 + 1456);
      v447 = *(v2 + 1192);
      v448 = *(v2 + 1136);
      v449 = *(v2 + 1120);
      v450 = *(v2 + 1056);
      v451 = *(v2 + 1024);
      v452 = *(v2 + 1016);
      (*(v2 + 1472))(v447, *(v2 + 944), v448);
      (*(v451 + 16))(v449, v450, v452);
      MLHostTask.status.setter();
      sub_10001C4DC(v447);
      v446(v447, v448);
    }

    v453 = *(v789 + 1576);
    v454 = *(v789 + 1528);
    v455 = *(v789 + 1464);
    v456 = *(v789 + 1056);
    v457 = *(v789 + 1016);
    v458 = *(v789 + 912);
    v459 = *(v789 + 904);
    v813 = *(v789 + 896);
    v460 = *(v789 + 728);
    v767 = *(v789 + 720);
    v774 = *(v789 + 776);

    v453(v456, v457);
    v2 = v789;
    v461 = [v455 processIdentifier];
    v817[0] = 0;
    v817[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v817[0] = 0x206B736154;
    v817[1] = 0xE500000000000000;
    v462._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v462);

    v463._countAndFlagsBits = 0xD00000000000001ELL;
    v463._object = 0x8000000100073030;
    String.append(_:)(v463);
    sub_1000530BC(v461);

    swift_unknownObjectRelease();
    (*(v460 + 8))(v774, v767);

    [v455 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v459 + 8))(v458, v813);
    goto LABEL_47;
  }

  v405 = *(v2 + 1440);
  v406 = *(v2 + 1136);
  v407 = *(v2 + 640);
  if ((v388 & 1) == 0)
  {
    v405(*(v2 + 1264), v407, v406);
    v433 = Logger.logObject.getter();
    v434 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v433, v434))
    {
      v435 = *(v2 + 1456);
      v436 = *(v2 + 1264);
      v437 = *(v2 + 1136);
      v438 = swift_slowAlloc();
      v817[0] = swift_slowAlloc();
      *v438 = 136315650;
      v439 = MLHostTask.name.getter();
      v441 = v440;
      v435(v436, v437);
      v442 = sub_100008A0C(v439, v441, v817);
      v2 = v789;

      *(v438 + 4) = v442;
      *(v438 + 12) = 1024;
      *(v438 + 14) = 0;
      *(v438 + 18) = 2080;
      v443 = Duration.description.getter();
      v445 = sub_100008A0C(v443, v444, v817);

      *(v438 + 20) = v445;
      _os_log_impl(&_mh_execute_header, v433, v434, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v438, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v533 = *(v2 + 1456);
      v534 = *(v2 + 1264);
      v535 = *(v2 + 1136);

      v533(v534, v535);
    }

    v807 = *(v2 + 1560);
    v536 = *(v2 + 1504);
    v537 = *(v2 + 1136);
    v538 = *(v2 + 1064);
    v539 = *(v2 + 1016);
    v540 = *(v2 + 952);
    v541 = MLHostTask.name.getter();
    v543 = v542;
    v536(v538, enum case for TaskStatus.taskFailed(_:), v539);
    sub_100019300(v541, v543, v540);
    if (v807(v540, 1, v537) == 1)
    {
      sub_100009C94(*(v2 + 952), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v544 = *(v2 + 1456);
      v545 = *(v2 + 1200);
      v546 = *(v2 + 1136);
      v547 = *(v2 + 1120);
      v548 = *(v2 + 1064);
      v549 = *(v2 + 1024);
      v550 = *(v2 + 1016);
      (*(v2 + 1472))(v545, *(v2 + 952), v546);
      (*(v549 + 16))(v547, v548, v550);
      MLHostTask.status.setter();
      sub_10001C4DC(v545);
      v544(v545, v546);
    }

    v551 = *(v2 + 1576);
    v552 = *(v2 + 1536);
    v769 = *(v2 + 1528);
    v553 = *(v2 + 1464);
    v554 = *(v2 + 1064);
    v555 = *(v789 + 1016);
    v797 = *(v789 + 912);
    v556 = *(v789 + 904);
    v808 = *(v789 + 896);
    v557 = *(v789 + 728);
    v775 = *(v789 + 720);
    v779 = *(v789 + 776);

    v558 = v555;
    v2 = v789;
    v551(v554, v558);
    v559 = MLHostTask.name.getter();
    sub_10001C1E4(v559, v560);

    v561 = [v553 processIdentifier];
    v817[0] = 0;
    v817[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v817[0] = 0x206B736154;
    v817[1] = 0xE500000000000000;
    v562._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v562);

    v563._countAndFlagsBits = 0xD000000000000014;
    v563._object = 0x8000000100073050;
    String.append(_:)(v563);
    sub_1000530BC(v561);

    swift_unknownObjectRelease();
    (*(v557 + 8))(v779, v775);
    swift_beginAccess();
    v810 = *(v552 + 16);
    v564 = v810;

    [v553 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v556 + 8))(v797, v808);
    goto LABEL_48;
  }

  v812 = (v2 + 208);
  v405(*(v2 + 1272), v407, v406);
  v408 = Logger.logObject.getter();
  v409 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v408, v409))
  {
    v410 = *(v2 + 1456);
    v411 = *(v2 + 1272);
    v412 = *(v2 + 1136);
    v413 = swift_slowAlloc();
    v817[0] = swift_slowAlloc();
    *v413 = 136315650;
    v414 = MLHostTask.name.getter();
    v416 = v415;
    v410(v411, v412);
    v417 = v414;
    v2 = v789;
    v418 = sub_100008A0C(v417, v416, v817);

    *(v413 + 4) = v418;
    *(v413 + 12) = 1024;
    *(v413 + 14) = 1;
    *(v413 + 18) = 2080;
    v419 = Duration.description.getter();
    v421 = sub_100008A0C(v419, v420, v817);

    *(v413 + 20) = v421;
    _os_log_impl(&_mh_execute_header, v408, v409, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v413, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v500 = *(v2 + 1456);
    v501 = *(v2 + 1272);
    v502 = *(v2 + 1136);

    v500(v501, v502);
  }

  v503 = *(v2 + 1536);
  v801 = *(v2 + 1520);
  v806 = *(v2 + 1528);
  v504 = *(v2 + 1504);
  v505 = *(v2 + 500);
  v506 = *(v2 + 1496);
  v796 = *(v2 + 1488);
  v786 = *(v2 + 1472);
  v507 = *(v2 + 476);
  v768 = *(v2 + 1440);
  v763 = *(v2 + 1336);
  v508 = *(v2 + 1152);
  aBlocka = *(v2 + 1136);
  v509 = *(v2 + 1120);
  v510 = *(v2 + 1024);
  v511 = *(v789 + 1016);
  v778 = *(v789 + 648);
  v758 = *(v789 + 640);
  v512 = (v507 + 16) & ~v507;
  v513 = (v508 + v512 + 7) & 0xFFFFFFFFFFFFFFF8;
  v514 = (v513 + 15) & 0xFFFFFFFFFFFFFFF8;
  v504(v509, v505, v511);
  swift_beginAccess();
  v515 = v511;
  v2 = v789;
  (*(v510 + 40))(v506, v509, v515);
  swift_beginAccess();
  v516 = *(v503 + 16);
  *(v503 + 16) = 0;

  v768(v763, v758, aBlocka);
  v517 = swift_allocObject();
  v786(v517 + v512, v763, aBlocka);
  *(v517 + v513) = v503;
  *(v517 + v514) = v796;
  *(v517 + ((v514 + 15) & 0xFFFFFFFFFFFFFFF8)) = v778;
  *(v789 + 240) = sub_1000643F4;
  *(v789 + 248) = v517;
  *(v789 + 208) = _NSConcreteStackBlock;
  *(v789 + 216) = 1107296256;
  *(v789 + 224) = sub_100065970;
  *(v789 + 232) = &unk_100082F50;
  v518 = _Block_copy(v812);

  [v801 doWorkWithContext:v806 reply:v518];
  _Block_release(v518);
  v519 = *(v789 + 1424);
  os_unfair_lock_lock((*(v519 + 56) + 16));
  v520 = *(v519 + 72);
  if (!*(v520 + 16))
  {
LABEL_124:
    v527 = *(v789 + 1536);
    os_unfair_lock_unlock((*(*(v789 + 1424) + 56) + 16));
    if (!*(v527 + 16))
    {
      v528 = *(v789 + 768);
      v529 = *(v789 + 728);
      v530 = *(v789 + 720);
      static Clock<>.continuous.getter();
      *(v789 + 560) = xmmword_100069320;
      *(v789 + 480) = 0;
      *(v789 + 488) = 0;
      *(v789 + 496) = 1;
      v367 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
      dispatch thunk of Clock.now.getter();
      sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v531 = *(v529 + 8);
      *(v789 + 1656) = v531;
      *(v789 + 1664) = (v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v531(v528, v530);
      v532 = swift_task_alloc();
      *(v789 + 1672) = v532;
      *v532 = v789;
      v532[1] = sub_10005B044;
      v370 = *(v789 + 744);
      v371 = *(v789 + 680);
      v372 = v789 + 480;
      goto LABEL_87;
    }

    goto LABEL_132;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v521 = Hasher._finalize()();
  v522 = -1 << *(v520 + 32);
  v523 = v521 & ~v522;
  if (((*(v520 + 56 + ((v523 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v523) & 1) == 0)
  {
LABEL_123:

    goto LABEL_124;
  }

  v524 = ~v522;
  while (1)
  {
    v525 = (*(v520 + 48) + 16 * v523);
    v526 = *v525 == *(v789 + 664) && v525[1] == *(v789 + 672);
    if (v526 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v523 = (v523 + 1) & v524;
    if (((*(v520 + 56 + ((v523 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v523) & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v565 = *(v789 + 1424);

  os_unfair_lock_unlock((*(v565 + 56) + 16));
LABEL_132:
  v566 = *(v789 + 1536);
  v567 = *(v789 + 768);
  v568 = *(v789 + 728);
  v569 = *(v789 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v570 = *(v568 + 8);
  *(v789 + 1608) = v570;
  *(v789 + 1616) = (v568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v570(v567, v569);
  v571 = *(v566 + 16);
  v572 = *(v789 + 1440);
  v573 = *(v789 + 1136);
  v574 = *(v789 + 640);
  if (v571)
  {
    v798 = v570;
    v572(*(v789 + 1256), v574, v573);
    v575 = v571;
    v576 = Logger.logObject.getter();
    v577 = static os_log_type_t.info.getter();

    v780 = v577;
    v578 = os_log_type_enabled(v576, v577);
    v579 = *(v789 + 1456);
    v580 = *(v789 + 1256);
    v581 = *(v789 + 1136);
    v810 = v571;
    if (v578)
    {
      v582 = swift_slowAlloc();
      v770 = swift_slowAlloc();
      v817[0] = swift_slowAlloc();
      *v582 = 136315650;
      v583 = v575;
      v584 = MLHostTask.name.getter();
      v586 = v585;
      v579(v580, v581);
      v587 = sub_100008A0C(v584, v586, v817);

      *(v582 + 4) = v587;
      *(v582 + 12) = 2080;
      v588 = Duration.description.getter();
      v590 = sub_100008A0C(v588, v589, v817);

      *(v582 + 14) = v590;
      *(v582 + 22) = 2112;
      *(v582 + 24) = v583;
      *v770 = v571;
      v591 = v583;
      _os_log_impl(&_mh_execute_header, v576, v780, "Task %s completed after %s. TaskResult: %@", v582, 0x20u);
      sub_100009C94(v770, &qword_100085970, &qword_100068F48);
      v2 = v789;

      swift_arrayDestroy();
    }

    else
    {

      v579(v580, v581);
    }

    v787 = *(v2 + 1560);
    v606 = *(v2 + 1496);
    v607 = *(v2 + 1136);
    v608 = *(v2 + 1088);
    v609 = *(v2 + 1024);
    v610 = *(v2 + 1016);
    v611 = *(v2 + 976);
    v612 = MLHostTask.name.getter();
    v614 = v613;
    v615 = v610;
    v616 = *(v609 + 16);
    v616(v608, v606, v615);
    sub_100019300(v612, v614, v611);
    if (v787(v611, 1, v607) == 1)
    {
      sub_100009C94(*(v2 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v790 = *(v2 + 1456);
      v617 = *(v2 + 1240);
      v618 = *(v2 + 1136);
      v619 = *(v2 + 1120);
      v620 = *(v2 + 1088);
      v621 = *(v2 + 1016);
      (*(v2 + 1472))(v617, *(v2 + 976), v618);
      v616(v619, v620, v621);
      MLHostTask.status.setter();
      sub_10001C4DC(v617);
      v790(v617, v618);
    }

    v622 = *(v2 + 1576);
    v623 = *(v2 + 1088);
    v624 = *(v2 + 1016);

    v622(v623, v624);
    v625 = MLHostTask.name.getter();
    sub_10001C1E4(v625, v626);

    MLHostResult.status.getter();
    v627 = MLHostResultStatus.rawValue.getter();
    if (v627 == MLHostResultStatus.rawValue.getter())
    {
      v628 = *(v2 + 1528);
      v798(*(v2 + 776), *(v2 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v771 = *(v2 + 1576);
      v629 = *(v2 + 1496);
      v630 = *(v2 + 1120);
      v631 = *(v2 + 1016);
      v793 = *(v2 + 776);
      v788 = *(v2 + 1528);
      v791 = *(v2 + 720);
      v632 = [*(v2 + 1464) processIdentifier];
      v817[0] = 0;
      v817[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v633 = v817[1];
      *(v2 + 608) = v817[0];
      *(v2 + 616) = v633;
      v634._countAndFlagsBits = 0x206B736154;
      v634._object = 0xE500000000000000;
      String.append(_:)(v634);
      v635._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v635);

      v636._object = 0x8000000100073090;
      v636._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v636);
      v616(v630, v629, v631);
      _print_unlocked<A, B>(_:_:)();
      v771(v630, v631);
      v637._countAndFlagsBits = 46;
      v637._object = 0xE100000000000000;
      String.append(_:)(v637);
      sub_1000530BC(v632);

      swift_unknownObjectRelease();
      v798(v793, v791);
    }

    v638 = *(v2 + 1464);
    v639 = *(v2 + 912);
    v640 = *(v2 + 904);
    v641 = *(v2 + 896);

    [v638 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v640 + 8))(v639, v641);
    goto LABEL_48;
  }

  v572(*(v789 + 1248), v574, v573);
  v592 = Logger.logObject.getter();
  v593 = static os_log_type_t.info.getter();
  v594 = os_log_type_enabled(v592, v593);
  v595 = *(v789 + 1456);
  v596 = *(v789 + 1248);
  v597 = *(v789 + 1136);
  if (v594)
  {
    v598 = swift_slowAlloc();
    v817[0] = swift_slowAlloc();
    *v598 = 136315394;
    v599 = MLHostTask.name.getter();
    v601 = v600;
    v595(v596, v597);
    v602 = sub_100008A0C(v599, v601, v817);

    *(v598 + 4) = v602;
    *(v598 + 12) = 2080;
    v603 = Duration.description.getter();
    v605 = sub_100008A0C(v603, v604, v817);

    *(v598 + 14) = v605;
    _os_log_impl(&_mh_execute_header, v592, v593, "Task %s asked to terminate because of deferral after %s.", v598, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v595(v596, v597);
  }

  v2 = v789;
  v642 = *(v789 + 1536);
  v643 = *(v789 + 1520);
  static ContinuousClock.now.getter();
  [v643 doStop];
  v644 = *(v642 + 16);
  if (v644)
  {
    goto LABEL_147;
  }

  *(v789 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v644 = *(*(v789 + 1536) + 16);
    if (!v644)
    {
      v804 = *(v789 + 1560);
      v712 = *(v789 + 1504);
      v713 = *(v789 + 1136);
      v714 = *(v789 + 1072);
      v715 = *(v789 + 1016);
      v716 = *(v789 + 960);
      v717 = MLHostTask.name.getter();
      v719 = v718;
      v712(v714, enum case for TaskStatus.taskDeferred(_:), v715);
      sub_100019300(v717, v719, v716);
      if (v804(v716, 1, v713) == 1)
      {
        sub_100009C94(*(v789 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v720 = *(v789 + 1456);
        v721 = *(v789 + 1224);
        v722 = *(v789 + 1136);
        v723 = *(v789 + 1120);
        v724 = *(v789 + 1072);
        v725 = *(v789 + 1024);
        v726 = *(v789 + 1016);
        (*(v789 + 1472))(v721, *(v789 + 960), v722);
        (*(v725 + 16))(v723, v724, v726);
        MLHostTask.status.setter();
        sub_10001C4DC(v721);
        v720(v721, v722);
      }

      v727 = *(v789 + 1576);
      v728 = *(v789 + 1440);
      v729 = *(v789 + 1216);
      v730 = *(v789 + 1136);
      v731 = *(v789 + 1072);
      v732 = *(v789 + 1016);
      v733 = *(v789 + 640);

      v727(v731, v732);
      v728(v729, v733, v730);
      v734 = Logger.logObject.getter();
      v816 = static os_log_type_t.error.getter();
      v735 = os_log_type_enabled(v734, v816);
      v736 = *(v789 + 1456);
      v737 = *(v789 + 1216);
      v738 = *(v789 + 1136);
      if (v735)
      {
        v739 = swift_slowAlloc();
        v740 = swift_slowAlloc();
        v817[0] = v740;
        *v739 = 136315138;
        v741 = MLHostTask.name.getter();
        v743 = v742;
        v736(v737, v738);
        v744 = sub_100008A0C(v741, v743, v817);

        *(v739 + 4) = v744;
        _os_log_impl(&_mh_execute_header, v734, v816, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v739, 0xCu);
        sub_100009914(v740);
      }

      else
      {

        v736(v737, v738);
      }

      v2 = v789;
      v745 = [*(v789 + 1464) processIdentifier];
      v817[0] = 0;
      v817[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v817[0] = 0x206B736154;
      v817[1] = 0xE500000000000000;
      v746._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v746);

      v747._countAndFlagsBits = 0xD00000000000001FLL;
      v747._object = 0x8000000100073070;
      String.append(_:)(v747);
      sub_1000530BC(v745);

      goto LABEL_156;
    }

LABEL_147:
    v799 = *(v789 + 1560);
    v645 = *(v789 + 1496);
    v646 = *(v789 + 1136);
    v647 = *(v789 + 1080);
    v648 = *(v789 + 1024);
    v649 = *(v789 + 1016);
    v650 = *(v789 + 968);
    v815 = v644;
    v651 = MLHostTask.name.getter();
    v653 = v652;
    v654 = v645;
    v655 = *(v648 + 16);
    v655(v647, v654, v649);
    sub_100019300(v651, v653, v650);
    v781 = v655;
    if (v799(v650, 1, v646) == 1)
    {
      sub_100009C94(*(v789 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v802 = *(v789 + 1456);
      v656 = v655;
      v657 = *(v789 + 1232);
      v658 = *(v789 + 1136);
      v659 = *(v789 + 1120);
      v660 = *(v789 + 1080);
      v661 = *(v789 + 1016);
      (*(v789 + 1472))(v657, *(v789 + 968), v658);
      v656(v659, v660, v661);
      MLHostTask.status.setter();
      sub_10001C4DC(v657);
      v802(v657, v658);
    }

    v662 = *(v789 + 1576);
    v663 = *(v789 + 1080);
    v664 = *(v789 + 1016);

    v662(v663, v664);
    v665 = MLHostTask.name.getter();
    sub_10001C1E4(v665, v666);

    MLHostResult.status.getter();
    v667 = MLHostResultStatus.rawValue.getter();
    if (v667 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v668 = *(v789 + 1576);
      v669 = *(v789 + 1496);
      v670 = *(v789 + 1120);
      v671 = *(v789 + 1016);
      v672 = [*(v789 + 1464) processIdentifier];
      v817[0] = 0;
      v817[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v673 = v817[1];
      *(v789 + 592) = v817[0];
      *(v789 + 600) = v673;
      v674._countAndFlagsBits = 0x206B736154;
      v674._object = 0xE500000000000000;
      String.append(_:)(v674);
      v675._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v675);

      v676._object = 0x8000000100073090;
      v676._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v676);
      v781(v670, v669, v671);
      _print_unlocked<A, B>(_:_:)();
      v668(v670, v671);
      v677._countAndFlagsBits = 46;
      v677._object = 0xE100000000000000;
      String.append(_:)(v677);
      sub_1000530BC(v672);
    }

LABEL_156:
    (*(v2 + 1440))(*(v2 + 1208), *(v2 + 640), *(v2 + 1136));

    v678 = Logger.logObject.getter();
    v679 = static os_log_type_t.info.getter();

    v680 = os_log_type_enabled(v678, v679);
    v809 = *(v2 + 1608);
    if (v680)
    {
      v764 = *(v2 + 1536);
      v772 = *(v2 + 1528);
      aBlockb = *(v2 + 1456);
      v681 = *(v2 + 1208);
      v682 = *(v2 + 1136);
      v803 = *(v2 + 776);
      v776 = *(v2 + 720);
      v782 = *(v2 + 760);
      v683 = swift_slowAlloc();
      v684 = swift_slowAlloc();
      v817[0] = swift_slowAlloc();
      *v683 = 136315650;
      v685 = MLHostTask.name.getter();
      v687 = v686;
      aBlockb(v681, v682);
      v688 = sub_100008A0C(v685, v687, v817);

      *(v683 + 4) = v688;
      *(v683 + 12) = 2080;
      v689 = Duration.description.getter();
      v691 = sub_100008A0C(v689, v690, v817);

      *(v683 + 14) = v691;
      *(v683 + 22) = 2112;
      v692 = *(v764 + 16);
      *(v683 + 24) = v692;
      *v684 = v692;
      v693 = v692;
      _os_log_impl(&_mh_execute_header, v678, v679, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v683, 0x20u);
      sub_100009C94(v684, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      v2 = v789;

      swift_unknownObjectRelease();
      v694 = v809;
      v809(v782, v776);
      v695 = v803;
      v696 = v776;
    }

    else
    {
      v697 = *(v2 + 1456);
      v698 = *(v2 + 1208);
      v699 = *(v2 + 1136);
      v700 = *(v2 + 776);
      v701 = *(v2 + 760);
      v702 = *(v2 + 720);

      swift_unknownObjectRelease();
      v697(v698, v699);
      v694 = v809;
      v809(v701, v702);
      v695 = v700;
      v696 = v702;
    }

    v694(v695, v696);
    v703 = *(v2 + 1464);
    v704 = *(v2 + 912);
    v705 = *(v2 + 904);
    v706 = *(v2 + 896);
    v810 = *(*(v2 + 1536) + 16);
    v707 = v810;

    [v703 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v705 + 8))(v704, v706);
    goto LABEL_48;
  }

  v708 = *(v789 + 1608);
  v709 = *(v789 + 768);
  v710 = *(v789 + 720);
  static Clock<>.continuous.getter();
  *(v789 + 576) = xmmword_100069320;
  *(v789 + 504) = 0;
  *(v789 + 512) = 0;
  *(v789 + 520) = 1;
  v367 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v708(v709, v710);
  v711 = swift_task_alloc();
  *(v789 + 1640) = v711;
  *v711 = v789;
  v711[1] = sub_100059124;
  v370 = *(v789 + 752);
  v371 = *(v789 + 680);
  v372 = v789 + 504;
LABEL_87:

  return dispatch thunk of Clock.sleep(until:tolerance:)(v370, v372, v371, v367);
}

uint64_t sub_100059124()
{
  v2 = *v1;
  *(*v1 + 1648) = v0;

  if (v0)
  {
    (*(v2 + 1608))(*(v2 + 752), *(v2 + 720));
    v3 = sub_10005A210;
  }

  else
  {
    v4 = *(v2 + 1608);
    v5 = *(v2 + 752);
    v6 = *(v2 + 720);
    v7 = *(v2 + 712);
    v8 = *(v2 + 688);
    v9 = *(v2 + 680);
    v4(v5, v6);
    (*(v8 + 8))(v7, v9);
    v3 = sub_10005928C;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10005928C(uint64_t a1)
{
  v135 = v1;
  v2 = *(v1 + 1608);
  v3 = *(v1 + 1536);
  v4 = *(v1 + 768);
  v5 = *(v1 + 720);
  static ContinuousClock.now.getter();
  v6 = ContinuousClock.Instant.duration(to:)();
  v8 = v7;
  v2(v4, v5);
  v9 = *(v3 + 16);
  if (v9)
  {
    goto LABEL_2;
  }

  *(v1 + 1632) = v6;
  *(v1 + 1624) = v8;
  if (static Duration.< infix(_:_:)())
  {
    v9 = *(*(v1 + 1536) + 16);
    if (!v9)
    {
      v128 = *(v1 + 1560);
      v81 = *(v1 + 1504);
      v82 = *(v1 + 1136);
      v83 = *(v1 + 1072);
      v84 = *(v1 + 1016);
      v85 = *(v1 + 960);
      v86 = MLHostTask.name.getter();
      v88 = v87;
      v81(v83, enum case for TaskStatus.taskDeferred(_:), v84);
      sub_100019300(v86, v88, v85);
      if (v128(v85, 1, v82) == 1)
      {
        sub_100009C94(*(v1 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v89 = *(v1 + 1456);
        v90 = *(v1 + 1224);
        v91 = *(v1 + 1136);
        v92 = *(v1 + 1120);
        v93 = *(v1 + 1072);
        v94 = *(v1 + 1024);
        v95 = *(v1 + 1016);
        (*(v1 + 1472))(v90, *(v1 + 960), v91);
        (*(v94 + 16))(v92, v93, v95);
        MLHostTask.status.setter();
        sub_10001C4DC(v90);
        v89(v90, v91);
      }

      v96 = *(v1 + 1576);
      v97 = *(v1 + 1440);
      v98 = *(v1 + 1216);
      v99 = *(v1 + 1136);
      v100 = *(v1 + 1072);
      v101 = *(v1 + 1016);
      v102 = *(v1 + 640);

      v96(v100, v101);
      v97(v98, v102, v99);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v1 + 1456);
      v107 = *(v1 + 1216);
      v108 = *(v1 + 1136);
      if (v105)
      {
        v132 = v104;
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v133 = v110;
        *v109 = 136315138;
        v111 = MLHostTask.name.getter();
        v113 = v112;
        v106(v107, v108);
        v114 = sub_100008A0C(v111, v113, &v133);

        *(v109 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v103, v132, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v109, 0xCu);
        sub_100009914(v110);
      }

      else
      {

        v106(v107, v108);
      }

      v115 = [*(v1 + 1464) processIdentifier];
      v133 = 0;
      v134 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v133 = 0x206B736154;
      v134 = 0xE500000000000000;
      v116._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v116);

      v117._countAndFlagsBits = 0xD00000000000001FLL;
      v117._object = 0x8000000100073070;
      String.append(_:)(v117);
      sub_1000530BC(v115);

      goto LABEL_11;
    }

LABEL_2:
    v124 = *(v1 + 1560);
    v10 = *(v1 + 1496);
    v11 = *(v1 + 1136);
    v12 = *(v1 + 1080);
    v13 = *(v1 + 1024);
    v14 = *(v1 + 1016);
    v15 = *(v1 + 968);
    v130 = v9;
    v16 = MLHostTask.name.getter();
    v18 = v17;
    v19 = v10;
    v20 = *(v13 + 16);
    v20(v12, v19, v14);
    sub_100019300(v16, v18, v15);
    if (v124(v15, 1, v11) == 1)
    {
      sub_100009C94(*(v1 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v125 = *(v1 + 1456);
      v21 = *(v1 + 1232);
      v22 = *(v1 + 1136);
      v23 = *(v1 + 1120);
      v24 = v20;
      v25 = *(v1 + 1080);
      v26 = *(v1 + 1016);
      (*(v1 + 1472))(v21, *(v1 + 968), v22);
      v27 = v25;
      v20 = v24;
      v24(v23, v27, v26);
      MLHostTask.status.setter();
      sub_10001C4DC(v21);
      v125(v21, v22);
    }

    v28 = *(v1 + 1576);
    v29 = *(v1 + 1080);
    v30 = *(v1 + 1016);

    v28(v29, v30);
    v31 = MLHostTask.name.getter();
    sub_10001C1E4(v31, v32);

    MLHostResult.status.getter();
    v33 = MLHostResultStatus.rawValue.getter();
    if (v33 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v34 = *(v1 + 1576);
      v35 = *(v1 + 1496);
      v36 = *(v1 + 1120);
      v37 = v20;
      v38 = *(v1 + 1016);
      v126 = [*(v1 + 1464) processIdentifier];
      v133 = 0;
      v134 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      *(v1 + 592) = 0;
      *(v1 + 600) = 0xE000000000000000;
      v39._countAndFlagsBits = 0x206B736154;
      v39._object = 0xE500000000000000;
      String.append(_:)(v39);
      v40._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v40);

      v41._object = 0x8000000100073090;
      v41._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v41);
      v37(v36, v35, v38);
      _print_unlocked<A, B>(_:_:)();
      v34(v36, v38);
      v42._countAndFlagsBits = 46;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      sub_1000530BC(v126);
    }

LABEL_11:
    (*(v1 + 1440))(*(v1 + 1208), *(v1 + 640), *(v1 + 1136));

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    v45 = os_log_type_enabled(v43, v44);
    v129 = *(v1 + 1608);
    if (v45)
    {
      v120 = *(v1 + 1536);
      v121 = *(v1 + 1528);
      v46 = *(v1 + 1208);
      v118 = *(v1 + 1136);
      v119 = *(v1 + 1456);
      v127 = *(v1 + 776);
      v122 = *(v1 + 720);
      v123 = *(v1 + 760);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v47 = 136315650;
      v49 = MLHostTask.name.getter();
      v51 = v50;
      v119(v46, v118);
      v52 = sub_100008A0C(v49, v51, &v133);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = Duration.description.getter();
      v55 = sub_100008A0C(v53, v54, &v133);

      *(v47 + 14) = v55;
      *(v47 + 22) = 2112;
      v56 = *(v120 + 16);
      *(v47 + 24) = v56;
      *v48 = v56;
      v57 = v56;
      _os_log_impl(&_mh_execute_header, v43, v44, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v47, 0x20u);
      sub_100009C94(v48, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v58 = v129;
      v129(v123, v122);
      v59 = v127;
      v60 = v122;
    }

    else
    {
      v61 = *(v1 + 1456);
      v62 = *(v1 + 1208);
      v63 = *(v1 + 1136);
      v64 = *(v1 + 776);
      v65 = *(v1 + 760);
      v66 = *(v1 + 720);

      swift_unknownObjectRelease();
      v61(v62, v63);
      v58 = v129;
      v129(v65, v66);
      v59 = v64;
      v60 = v66;
    }

    v58(v59, v60);
    v67 = *(v1 + 1464);
    v68 = *(v1 + 912);
    v69 = *(v1 + 904);
    v70 = *(v1 + 896);
    v131 = *(*(v1 + 1536) + 16);
    v71 = v131;

    [v67 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v68, v70);

    v72 = *(v1 + 8);

    return v72(v131);
  }

  v74 = *(v1 + 1608);
  v75 = *(v1 + 768);
  v76 = *(v1 + 720);
  static Clock<>.continuous.getter();
  *(v1 + 576) = xmmword_100069320;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 520) = 1;
  v77 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v74(v75, v76);
  v78 = swift_task_alloc();
  *(v1 + 1640) = v78;
  *v78 = v1;
  v78[1] = sub_100059124;
  v79 = *(v1 + 752);
  v80 = *(v1 + 680);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v79, v1 + 504, v80, v77);
}

uint64_t sub_10005A210()
{
  v122 = v0;
  (*(*(v0 + 688) + 8))(*(v0 + 712), *(v0 + 680));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task.sleep interrupted, skipping waiting for extension termination.", v3, 2u);
  }

  v4 = *(*(v0 + 1536) + 16);
  if (v4)
  {
    v111 = *(v0 + 1560);
    v5 = *(v0 + 1496);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1080);
    v8 = *(v0 + 1024);
    v9 = *(v0 + 1016);
    v10 = *(v0 + 968);
    v117 = v4;
    v11 = MLHostTask.name.getter();
    v13 = v12;
    v14 = v9;
    v15 = *(v8 + 16);
    v15(v7, v5, v14);
    sub_100019300(v11, v13, v10);
    if (v111(v10, 1, v6) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v112 = *(v0 + 1456);
      v24 = *(v0 + 1232);
      v25 = *(v0 + 1136);
      v26 = *(v0 + 1120);
      v27 = *(v0 + 1080);
      v28 = v15;
      v29 = *(v0 + 1016);
      (*(v0 + 1472))(v24, *(v0 + 968), v25);
      v30 = v29;
      v15 = v28;
      v28(v26, v27, v30);
      MLHostTask.status.setter();
      sub_10001C4DC(v24);
      v112(v24, v25);
    }

    v31 = *(v0 + 1576);
    v32 = *(v0 + 1080);
    v33 = *(v0 + 1016);

    v31(v32, v33);
    v34 = MLHostTask.name.getter();
    sub_10001C1E4(v34, v35);

    MLHostResult.status.getter();
    v36 = MLHostResultStatus.rawValue.getter();
    if (v36 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v37 = *(v0 + 1576);
      v38 = *(v0 + 1496);
      v39 = *(v0 + 1120);
      v40 = *(v0 + 1016);
      v115 = [*(v0 + 1464) processIdentifier];
      v120 = 0;
      v121 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      *(v0 + 592) = 0;
      *(v0 + 600) = 0xE000000000000000;
      v41._countAndFlagsBits = 0x206B736154;
      v41._object = 0xE500000000000000;
      String.append(_:)(v41);
      v42._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v42);

      v43._object = 0x8000000100073090;
      v43._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v43);
      v15(v39, v38, v40);
      _print_unlocked<A, B>(_:_:)();
      v37(v39, v40);
      v44._countAndFlagsBits = 46;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      sub_1000530BC(v115);
    }
  }

  else
  {
    v114 = *(v0 + 1560);
    v16 = *(v0 + 1504);
    v17 = *(v0 + 1136);
    v18 = *(v0 + 1072);
    v19 = *(v0 + 1016);
    v20 = *(v0 + 960);
    v21 = MLHostTask.name.getter();
    v23 = v22;
    v16(v18, enum case for TaskStatus.taskDeferred(_:), v19);
    sub_100019300(v21, v23, v20);
    if (v114(v20, 1, v17) == 1)
    {
      sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v45 = *(v0 + 1456);
      v46 = *(v0 + 1224);
      v47 = *(v0 + 1136);
      v48 = *(v0 + 1120);
      v49 = *(v0 + 1072);
      v50 = *(v0 + 1024);
      v51 = *(v0 + 1016);
      (*(v0 + 1472))(v46, *(v0 + 960), v47);
      (*(v50 + 16))(v48, v49, v51);
      MLHostTask.status.setter();
      sub_10001C4DC(v46);
      v45(v46, v47);
    }

    v52 = *(v0 + 1576);
    v53 = *(v0 + 1440);
    v54 = *(v0 + 1216);
    v55 = *(v0 + 1136);
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1016);
    v58 = *(v0 + 640);

    v52(v56, v57);
    v53(v54, v58, v55);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 1456);
    v63 = *(v0 + 1216);
    v64 = *(v0 + 1136);
    if (v61)
    {
      v118 = v60;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v120 = v66;
      *v65 = 136315138;
      v67 = MLHostTask.name.getter();
      v69 = v68;
      v62(v63, v64);
      v70 = sub_100008A0C(v67, v69, &v120);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v59, v118, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v65, 0xCu);
      sub_100009914(v66);
    }

    else
    {

      v62(v63, v64);
    }

    v71 = [*(v0 + 1464) processIdentifier];
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v120 = 0x206B736154;
    v121 = 0xE500000000000000;
    v72._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v72);

    v73._countAndFlagsBits = 0xD00000000000001FLL;
    v73._object = 0x8000000100073070;
    String.append(_:)(v73);
    sub_1000530BC(v71);
  }

  (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();

  v76 = os_log_type_enabled(v74, v75);
  v116 = *(v0 + 1608);
  if (v76)
  {
    v107 = *(v0 + 1536);
    v108 = *(v0 + 1528);
    v77 = *(v0 + 1208);
    v105 = *(v0 + 1136);
    v106 = *(v0 + 1456);
    v113 = *(v0 + 776);
    v109 = *(v0 + 720);
    v110 = *(v0 + 760);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v78 = 136315650;
    v80 = MLHostTask.name.getter();
    v82 = v81;
    v106(v77, v105);
    v83 = sub_100008A0C(v80, v82, &v120);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2080;
    v84 = Duration.description.getter();
    v86 = sub_100008A0C(v84, v85, &v120);

    *(v78 + 14) = v86;
    *(v78 + 22) = 2112;
    v87 = *(v107 + 16);
    *(v78 + 24) = v87;
    *v79 = v87;
    v88 = v87;
    _os_log_impl(&_mh_execute_header, v74, v75, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v78, 0x20u);
    sub_100009C94(v79, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    swift_unknownObjectRelease();
    v89 = v116;
    v116(v110, v109);
    v90 = v113;
    v91 = v109;
  }

  else
  {
    v92 = *(v0 + 1456);
    v93 = *(v0 + 1208);
    v94 = *(v0 + 1136);
    v95 = *(v0 + 776);
    v96 = *(v0 + 760);
    v97 = *(v0 + 720);

    swift_unknownObjectRelease();
    v92(v93, v94);
    v89 = v116;
    v116(v96, v97);
    v90 = v95;
    v91 = v97;
  }

  v89(v90, v91);
  v98 = *(v0 + 1464);
  v99 = *(v0 + 912);
  v100 = *(v0 + 904);
  v101 = *(v0 + 896);
  v119 = *(*(v0 + 1536) + 16);
  v102 = v119;

  [v98 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v100 + 8))(v99, v101);

  v103 = *(v0 + 8);

  return v103(v119);
}

uint64_t sub_10005B044()
{
  v2 = *v1;
  *(*v1 + 1680) = v0;

  if (v0)
  {
    (*(v2 + 1656))(*(v2 + 744), *(v2 + 720));
    v3 = sub_10005CAB0;
  }

  else
  {
    v4 = *(v2 + 1656);
    v5 = *(v2 + 744);
    v6 = *(v2 + 720);
    v7 = *(v2 + 704);
    v8 = *(v2 + 688);
    v9 = *(v2 + 680);
    v4(v5, v6);
    (*(v8 + 8))(v7, v9);
    v3 = sub_10005B1AC;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10005B1AC()
{
  v233 = v0;
  v1 = *(v0 + 1424);
  os_unfair_lock_lock((*(v1 + 56) + 16));
  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v3 = Hasher._finalize()();
    v4 = -1 << *(v2 + 32);
    v5 = v3 & ~v4;
    if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v4;
      while (1)
      {
        v7 = (*(v2 + 48) + 16 * v5);
        v8 = *v7 == *(v0 + 664) && v7[1] == *(v0 + 672);
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v5 = (v5 + 1) & v6;
        if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v19 = *(v0 + 1424);

      os_unfair_lock_unlock((*(v19 + 56) + 16));
      goto LABEL_17;
    }

LABEL_10:
  }

  v9 = *(v0 + 1536);
  os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
  if (!*(v9 + 16))
  {
    v10 = *(v0 + 768);
    v11 = *(v0 + 728);
    v12 = *(v0 + 720);
    static Clock<>.continuous.getter();
    *(v0 + 560) = xmmword_100069320;
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    *(v0 + 496) = 1;
    v13 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v14 = *(v11 + 8);
    *(v0 + 1656) = v14;
    *(v0 + 1664) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v12);
    v15 = swift_task_alloc();
    *(v0 + 1672) = v15;
    *v15 = v0;
    v15[1] = sub_10005B044;
    v16 = *(v0 + 744);
    v17 = *(v0 + 680);
    v18 = v0 + 480;
    goto LABEL_13;
  }

LABEL_17:
  v20 = *(v0 + 1536);
  v21 = *(v0 + 768);
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v24 = *(v22 + 8);
  *(v0 + 1608) = v24;
  *(v0 + 1616) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21, v23);
  v25 = *(v20 + 16);
  v26 = *(v0 + 1440);
  v27 = *(v0 + 1136);
  v28 = *(v0 + 640);
  if (!v25)
  {
    v26(*(v0 + 1248), v28, v27);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 1456);
    v50 = *(v0 + 1248);
    v51 = *(v0 + 1136);
    if (v48)
    {
      v52 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      *v52 = 136315394;
      v53 = MLHostTask.name.getter();
      v55 = v54;
      v49(v50, v51);
      v56 = sub_100008A0C(v53, v55, &v231);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = Duration.description.getter();
      v59 = sub_100008A0C(v57, v58, &v231);

      *(v52 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v46, v47, "Task %s asked to terminate because of deferral after %s.", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49(v50, v51);
    }

    v97 = *(v0 + 1536);
    v98 = *(v0 + 1520);
    static ContinuousClock.now.getter();
    [v98 doStop];
    v99 = *(v97 + 16);
    if (v99)
    {
      goto LABEL_32;
    }

    *(v0 + 1624) = 0u;
    if (static Duration.< infix(_:_:)())
    {
      v99 = *(*(v0 + 1536) + 16);
      if (!v99)
      {
        v225 = *(v0 + 1560);
        v167 = *(v0 + 1504);
        v168 = *(v0 + 1136);
        v169 = *(v0 + 1072);
        v170 = *(v0 + 1016);
        v171 = *(v0 + 960);
        v172 = MLHostTask.name.getter();
        v174 = v173;
        v167(v169, enum case for TaskStatus.taskDeferred(_:), v170);
        sub_100019300(v172, v174, v171);
        if (v225(v171, 1, v168) == 1)
        {
          sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
        }

        else
        {
          v175 = *(v0 + 1456);
          v176 = *(v0 + 1224);
          v177 = *(v0 + 1136);
          v178 = *(v0 + 1120);
          v179 = *(v0 + 1072);
          v180 = *(v0 + 1024);
          v181 = *(v0 + 1016);
          (*(v0 + 1472))(v176, *(v0 + 960), v177);
          (*(v180 + 16))(v178, v179, v181);
          MLHostTask.status.setter();
          sub_10001C4DC(v176);
          v175(v176, v177);
        }

        v182 = *(v0 + 1576);
        v183 = *(v0 + 1440);
        v184 = *(v0 + 1216);
        v185 = *(v0 + 1136);
        v186 = *(v0 + 1072);
        v187 = *(v0 + 1016);
        v188 = *(v0 + 640);

        v182(v186, v187);
        v183(v184, v188, v185);
        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.error.getter();
        v191 = os_log_type_enabled(v189, v190);
        v192 = *(v0 + 1456);
        v193 = *(v0 + 1216);
        v194 = *(v0 + 1136);
        if (v191)
        {
          v230 = v190;
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v231 = v196;
          *v195 = 136315138;
          v197 = MLHostTask.name.getter();
          v199 = v198;
          v192(v193, v194);
          v200 = sub_100008A0C(v197, v199, &v231);

          *(v195 + 4) = v200;
          _os_log_impl(&_mh_execute_header, v189, v230, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v195, 0xCu);
          sub_100009914(v196);
        }

        else
        {

          v192(v193, v194);
        }

        v201 = [*(v0 + 1464) processIdentifier];
        v231 = 0;
        v232 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v231 = 0x206B736154;
        v232 = 0xE500000000000000;
        v202._countAndFlagsBits = MLHostTask.name.getter();
        String.append(_:)(v202);

        v203._countAndFlagsBits = 0xD00000000000001FLL;
        v203._object = 0x8000000100073070;
        String.append(_:)(v203);
        sub_1000530BC(v201);

        goto LABEL_41;
      }

LABEL_32:
      v220 = *(v0 + 1560);
      v100 = *(v0 + 1496);
      v101 = *(v0 + 1136);
      v102 = *(v0 + 1080);
      v103 = *(v0 + 1024);
      v104 = *(v0 + 1016);
      v105 = *(v0 + 968);
      v229 = v99;
      v106 = MLHostTask.name.getter();
      v108 = v107;
      v109 = v104;
      v110 = *(v103 + 16);
      v110(v102, v100, v109);
      sub_100019300(v106, v108, v105);
      if (v220(v105, 1, v101) == 1)
      {
        sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v223 = *(v0 + 1456);
        v111 = *(v0 + 1232);
        v112 = *(v0 + 1136);
        v113 = *(v0 + 1120);
        v114 = *(v0 + 1080);
        v115 = v110;
        v116 = *(v0 + 1016);
        (*(v0 + 1472))(v111, *(v0 + 968), v112);
        v117 = v116;
        v110 = v115;
        v115(v113, v114, v117);
        MLHostTask.status.setter();
        sub_10001C4DC(v111);
        v223(v111, v112);
      }

      v118 = *(v0 + 1576);
      v119 = *(v0 + 1080);
      v120 = *(v0 + 1016);

      v118(v119, v120);
      v121 = MLHostTask.name.getter();
      sub_10001C1E4(v121, v122);

      MLHostResult.status.getter();
      v123 = MLHostResultStatus.rawValue.getter();
      if (v123 == MLHostResultStatus.rawValue.getter())
      {
      }

      else
      {
        v124 = *(v0 + 1576);
        v125 = *(v0 + 1496);
        v126 = *(v0 + 1120);
        v127 = *(v0 + 1016);
        v226 = [*(v0 + 1464) processIdentifier];
        v231 = 0;
        v232 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v128 = v232;
        *(v0 + 592) = v231;
        *(v0 + 600) = v128;
        v129._countAndFlagsBits = 0x206B736154;
        v129._object = 0xE500000000000000;
        String.append(_:)(v129);
        v130._countAndFlagsBits = MLHostTask.name.getter();
        String.append(_:)(v130);

        v131._object = 0x8000000100073090;
        v131._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v131);
        v110(v126, v125, v127);
        _print_unlocked<A, B>(_:_:)();
        v124(v126, v127);
        v132._countAndFlagsBits = 46;
        v132._object = 0xE100000000000000;
        String.append(_:)(v132);
        sub_1000530BC(v226);
      }

LABEL_41:
      (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.info.getter();

      v135 = os_log_type_enabled(v133, v134);
      v227 = *(v0 + 1608);
      if (v135)
      {
        v209 = *(v0 + 1536);
        v212 = *(v0 + 1528);
        v136 = *(v0 + 1208);
        v205 = *(v0 + 1136);
        v206 = *(v0 + 1456);
        v224 = *(v0 + 776);
        v214 = *(v0 + 720);
        v217 = *(v0 + 760);
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *v137 = 136315650;
        v139 = MLHostTask.name.getter();
        v141 = v140;
        v206(v136, v205);
        v142 = sub_100008A0C(v139, v141, &v231);

        *(v137 + 4) = v142;
        *(v137 + 12) = 2080;
        v143 = Duration.description.getter();
        v145 = sub_100008A0C(v143, v144, &v231);

        *(v137 + 14) = v145;
        *(v137 + 22) = 2112;
        v146 = *(v209 + 16);
        *(v137 + 24) = v146;
        *v138 = v146;
        v147 = v146;
        _os_log_impl(&_mh_execute_header, v133, v134, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v137, 0x20u);
        sub_100009C94(v138, &qword_100085970, &qword_100068F48);

        swift_arrayDestroy();

        swift_unknownObjectRelease();
        v148 = v227;
        v227(v217, v214);
        v149 = v224;
        v150 = v214;
      }

      else
      {
        v151 = *(v0 + 1456);
        v152 = *(v0 + 1208);
        v153 = *(v0 + 1136);
        v154 = *(v0 + 776);
        v155 = *(v0 + 760);
        v156 = *(v0 + 720);

        swift_unknownObjectRelease();
        v151(v152, v153);
        v148 = v227;
        v227(v155, v156);
        v149 = v154;
        v150 = v156;
      }

      v148(v149, v150);
      v157 = *(v0 + 1464);
      v158 = *(v0 + 912);
      v159 = *(v0 + 904);
      v160 = *(v0 + 896);
      v228 = *(*(v0 + 1536) + 16);
      v161 = v228;

      [v157 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v159 + 8))(v158, v160);
      goto LABEL_45;
    }

    v163 = *(v0 + 1608);
    v164 = *(v0 + 768);
    v165 = *(v0 + 720);
    static Clock<>.continuous.getter();
    *(v0 + 576) = xmmword_100069320;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
    *(v0 + 520) = 1;
    v13 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v163(v164, v165);
    v166 = swift_task_alloc();
    *(v0 + 1640) = v166;
    *v166 = v0;
    v166[1] = sub_100059124;
    v16 = *(v0 + 752);
    v17 = *(v0 + 680);
    v18 = v0 + 504;
LABEL_13:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v18, v17, v13);
  }

  v26(*(v0 + 1256), v28, v27);
  v29 = v25;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1456);
  v34 = *(v0 + 1256);
  v35 = *(v0 + 1136);
  v228 = v25;
  v219 = v24;
  if (v32)
  {
    v36 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *v36 = 136315650;
    v210 = v30;
    v37 = MLHostTask.name.getter();
    v207 = v31;
    v38 = v29;
    v40 = v39;
    v33(v34, v35);
    v41 = sub_100008A0C(v37, v40, &v231);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = Duration.description.getter();
    v44 = sub_100008A0C(v42, v43, &v231);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2112;
    *(v36 + 24) = v38;
    *v213 = v25;
    v45 = v38;
    _os_log_impl(&_mh_execute_header, v210, v207, "Task %s completed after %s. TaskResult: %@", v36, 0x20u);
    sub_100009C94(v213, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();
  }

  else
  {

    v33(v34, v35);
  }

  v215 = *(v0 + 1560);
  v60 = *(v0 + 1496);
  v61 = *(v0 + 1136);
  v62 = *(v0 + 1088);
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 976);
  v66 = MLHostTask.name.getter();
  v68 = v67;
  v69 = v64;
  v70 = *(v63 + 16);
  v70(v62, v60, v69);
  sub_100019300(v66, v68, v65);
  if (v215(v65, 1, v61) == 1)
  {
    sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v221 = *(v0 + 1456);
    v71 = *(v0 + 1240);
    v72 = *(v0 + 1136);
    v73 = *(v0 + 1120);
    v74 = *(v0 + 1088);
    v75 = v70;
    v76 = *(v0 + 1016);
    (*(v0 + 1472))(v71, *(v0 + 976), v72);
    v77 = v76;
    v70 = v75;
    v75(v73, v74, v77);
    MLHostTask.status.setter();
    sub_10001C4DC(v71);
    v221(v71, v72);
  }

  v78 = *(v0 + 1576);
  v79 = *(v0 + 1088);
  v80 = *(v0 + 1016);

  v78(v79, v80);
  v81 = MLHostTask.name.getter();
  sub_10001C1E4(v81, v82);

  MLHostResult.status.getter();
  v83 = MLHostResultStatus.rawValue.getter();
  if (v83 == MLHostResultStatus.rawValue.getter())
  {
    v84 = *(v0 + 1528);
    v219(*(v0 + 776), *(v0 + 720));

    swift_unknownObjectRelease();
  }

  else
  {
    v211 = *(v0 + 1576);
    v85 = *(v0 + 1496);
    v86 = *(v0 + 1120);
    v87 = *(v0 + 1016);
    v222 = *(v0 + 776);
    v216 = *(v0 + 1528);
    v218 = *(v0 + 720);
    v208 = [*(v0 + 1464) processIdentifier];
    v231 = 0;
    v232 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v88 = v232;
    *(v0 + 608) = v231;
    *(v0 + 616) = v88;
    v89._countAndFlagsBits = 0x206B736154;
    v89._object = 0xE500000000000000;
    String.append(_:)(v89);
    v90._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v90);

    v91._object = 0x8000000100073090;
    v91._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v91);
    v70(v86, v85, v87);
    _print_unlocked<A, B>(_:_:)();
    v211(v86, v87);
    v92._countAndFlagsBits = 46;
    v92._object = 0xE100000000000000;
    String.append(_:)(v92);
    sub_1000530BC(v208);

    swift_unknownObjectRelease();
    v219(v222, v218);
  }

  v93 = *(v0 + 1464);
  v94 = *(v0 + 912);
  v95 = *(v0 + 904);
  v96 = *(v0 + 896);

  [v93 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v95 + 8))(v94, v96);
LABEL_45:

  v162 = *(v0 + 8);

  return v162(v228);
}

uint64_t sub_10005CAB0()
{
  v220 = v0;
  (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task.sleep interrupted, skipping waiting for extension completion.", v3, 2u);
  }

  v4 = *(v0 + 1536);
  v5 = *(v0 + 768);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v8 = *(v6 + 8);
  *(v0 + 1608) = v8;
  *(v0 + 1616) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v9 = *(v4 + 16);
  v10 = *(v0 + 1440);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 640);
  if (v9)
  {
    v10(*(v0 + 1256), v12, v11);
    v13 = v9;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1456);
    v18 = *(v0 + 1256);
    v19 = *(v0 + 1136);
    v215 = v9;
    v206 = v8;
    if (v16)
    {
      v20 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *v20 = 136315650;
      v197 = v14;
      v21 = MLHostTask.name.getter();
      v194 = v15;
      v22 = v13;
      v24 = v23;
      v17(v18, v19);
      v25 = sub_100008A0C(v21, v24, &v218);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = Duration.description.getter();
      v28 = sub_100008A0C(v26, v27, &v218);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v22;
      *v200 = v9;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v197, v194, "Task %s completed after %s. TaskResult: %@", v20, 0x20u);
      sub_100009C94(v200, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();
    }

    else
    {

      v17(v18, v19);
    }

    v202 = *(v0 + 1560);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1136);
    v46 = *(v0 + 1088);
    v47 = *(v0 + 1024);
    v48 = *(v0 + 1016);
    v49 = *(v0 + 976);
    v50 = MLHostTask.name.getter();
    v52 = v51;
    v53 = v48;
    v54 = *(v47 + 16);
    v54(v46, v44, v53);
    sub_100019300(v50, v52, v49);
    if (v202(v49, 1, v45) == 1)
    {
      sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v208 = *(v0 + 1456);
      v55 = *(v0 + 1240);
      v56 = *(v0 + 1136);
      v57 = *(v0 + 1120);
      v58 = *(v0 + 1088);
      v59 = v54;
      v60 = *(v0 + 1016);
      (*(v0 + 1472))(v55, *(v0 + 976), v56);
      v61 = v60;
      v54 = v59;
      v59(v57, v58, v61);
      MLHostTask.status.setter();
      sub_10001C4DC(v55);
      v208(v55, v56);
    }

    v62 = *(v0 + 1576);
    v63 = *(v0 + 1088);
    v64 = *(v0 + 1016);

    v62(v63, v64);
    v65 = MLHostTask.name.getter();
    sub_10001C1E4(v65, v66);

    MLHostResult.status.getter();
    v67 = MLHostResultStatus.rawValue.getter();
    if (v67 == MLHostResultStatus.rawValue.getter())
    {
      v68 = *(v0 + 1528);
      v206(*(v0 + 776), *(v0 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v198 = *(v0 + 1576);
      v69 = *(v0 + 1496);
      v70 = *(v0 + 1120);
      v71 = *(v0 + 1016);
      v209 = *(v0 + 776);
      v203 = *(v0 + 1528);
      v205 = *(v0 + 720);
      v195 = [*(v0 + 1464) processIdentifier];
      v218 = 0;
      v219 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v72 = v219;
      *(v0 + 608) = v218;
      *(v0 + 616) = v72;
      v73._countAndFlagsBits = 0x206B736154;
      v73._object = 0xE500000000000000;
      String.append(_:)(v73);
      v74._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v74);

      v75._object = 0x8000000100073090;
      v75._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v75);
      v54(v70, v69, v71);
      _print_unlocked<A, B>(_:_:)();
      v198(v70, v71);
      v76._countAndFlagsBits = 46;
      v76._object = 0xE100000000000000;
      String.append(_:)(v76);
      sub_1000530BC(v195);

      swift_unknownObjectRelease();
      v206(v209, v205);
    }

    v77 = *(v0 + 1464);
    v78 = *(v0 + 912);
    v79 = *(v0 + 904);
    v80 = *(v0 + 896);

    [v77 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v79 + 8))(v78, v80);
LABEL_31:

    v146 = *(v0 + 8);

    return v146(v215);
  }

  v10(*(v0 + 1248), v12, v11);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1456);
  v34 = *(v0 + 1248);
  v35 = *(v0 + 1136);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = MLHostTask.name.getter();
    v39 = v38;
    v33(v34, v35);
    v40 = sub_100008A0C(v37, v39, &v218);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = Duration.description.getter();
    v43 = sub_100008A0C(v41, v42, &v218);

    *(v36 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "Task %s asked to terminate because of deferral after %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33(v34, v35);
  }

  v81 = *(v0 + 1536);
  v82 = *(v0 + 1520);
  static ContinuousClock.now.getter();
  [v82 doStop];
  v83 = *(v81 + 16);
  if (v83)
  {
    goto LABEL_18;
  }

  *(v0 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v83 = *(*(v0 + 1536) + 16);
    if (!v83)
    {
      v212 = *(v0 + 1560);
      v155 = *(v0 + 1504);
      v156 = *(v0 + 1136);
      v157 = *(v0 + 1072);
      v158 = *(v0 + 1016);
      v159 = *(v0 + 960);
      v160 = MLHostTask.name.getter();
      v162 = v161;
      v155(v157, enum case for TaskStatus.taskDeferred(_:), v158);
      sub_100019300(v160, v162, v159);
      if (v212(v159, 1, v156) == 1)
      {
        sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v163 = *(v0 + 1456);
        v164 = *(v0 + 1224);
        v165 = *(v0 + 1136);
        v166 = *(v0 + 1120);
        v167 = *(v0 + 1072);
        v168 = *(v0 + 1024);
        v169 = *(v0 + 1016);
        (*(v0 + 1472))(v164, *(v0 + 960), v165);
        (*(v168 + 16))(v166, v167, v169);
        MLHostTask.status.setter();
        sub_10001C4DC(v164);
        v163(v164, v165);
      }

      v170 = *(v0 + 1576);
      v171 = *(v0 + 1440);
      v172 = *(v0 + 1216);
      v173 = *(v0 + 1136);
      v174 = *(v0 + 1072);
      v175 = *(v0 + 1016);
      v176 = *(v0 + 640);

      v170(v174, v175);
      v171(v172, v176, v173);
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      v179 = os_log_type_enabled(v177, v178);
      v180 = *(v0 + 1456);
      v181 = *(v0 + 1216);
      v182 = *(v0 + 1136);
      if (v179)
      {
        v217 = v178;
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v218 = v184;
        *v183 = 136315138;
        v185 = MLHostTask.name.getter();
        v187 = v186;
        v180(v181, v182);
        v188 = sub_100008A0C(v185, v187, &v218);

        *(v183 + 4) = v188;
        _os_log_impl(&_mh_execute_header, v177, v217, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v183, 0xCu);
        sub_100009914(v184);
      }

      else
      {

        v180(v181, v182);
      }

      v189 = [*(v0 + 1464) processIdentifier];
      v218 = 0;
      v219 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v218 = 0x206B736154;
      v219 = 0xE500000000000000;
      v190._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v190);

      v191._countAndFlagsBits = 0xD00000000000001FLL;
      v191._object = 0x8000000100073070;
      String.append(_:)(v191);
      sub_1000530BC(v189);

      goto LABEL_27;
    }

LABEL_18:
    v207 = *(v0 + 1560);
    v84 = *(v0 + 1496);
    v85 = *(v0 + 1136);
    v86 = *(v0 + 1080);
    v87 = *(v0 + 1024);
    v88 = *(v0 + 1016);
    v89 = *(v0 + 968);
    v216 = v83;
    v90 = MLHostTask.name.getter();
    v92 = v91;
    v93 = v88;
    v94 = *(v87 + 16);
    v94(v86, v84, v93);
    sub_100019300(v90, v92, v89);
    if (v207(v89, 1, v85) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v210 = *(v0 + 1456);
      v95 = *(v0 + 1232);
      v96 = *(v0 + 1136);
      v97 = *(v0 + 1120);
      v98 = *(v0 + 1080);
      v99 = v94;
      v100 = *(v0 + 1016);
      (*(v0 + 1472))(v95, *(v0 + 968), v96);
      v101 = v100;
      v94 = v99;
      v99(v97, v98, v101);
      MLHostTask.status.setter();
      sub_10001C4DC(v95);
      v210(v95, v96);
    }

    v102 = *(v0 + 1576);
    v103 = *(v0 + 1080);
    v104 = *(v0 + 1016);

    v102(v103, v104);
    v105 = MLHostTask.name.getter();
    sub_10001C1E4(v105, v106);

    MLHostResult.status.getter();
    v107 = MLHostResultStatus.rawValue.getter();
    if (v107 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v108 = *(v0 + 1576);
      v109 = *(v0 + 1496);
      v110 = *(v0 + 1120);
      v111 = *(v0 + 1016);
      v213 = [*(v0 + 1464) processIdentifier];
      v218 = 0;
      v219 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v112 = v219;
      *(v0 + 592) = v218;
      *(v0 + 600) = v112;
      v113._countAndFlagsBits = 0x206B736154;
      v113._object = 0xE500000000000000;
      String.append(_:)(v113);
      v114._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v114);

      v115._object = 0x8000000100073090;
      v115._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v115);
      v94(v110, v109, v111);
      _print_unlocked<A, B>(_:_:)();
      v108(v110, v111);
      v116._countAndFlagsBits = 46;
      v116._object = 0xE100000000000000;
      String.append(_:)(v116);
      sub_1000530BC(v213);
    }

LABEL_27:
    (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.info.getter();

    v119 = os_log_type_enabled(v117, v118);
    v214 = *(v0 + 1608);
    if (v119)
    {
      v196 = *(v0 + 1536);
      v199 = *(v0 + 1528);
      v120 = *(v0 + 1208);
      v192 = *(v0 + 1136);
      v193 = *(v0 + 1456);
      v211 = *(v0 + 776);
      v201 = *(v0 + 720);
      v204 = *(v0 + 760);
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *v121 = 136315650;
      v123 = MLHostTask.name.getter();
      v125 = v124;
      v193(v120, v192);
      v126 = sub_100008A0C(v123, v125, &v218);

      *(v121 + 4) = v126;
      *(v121 + 12) = 2080;
      v127 = Duration.description.getter();
      v129 = sub_100008A0C(v127, v128, &v218);

      *(v121 + 14) = v129;
      *(v121 + 22) = 2112;
      v130 = *(v196 + 16);
      *(v121 + 24) = v130;
      *v122 = v130;
      v131 = v130;
      _os_log_impl(&_mh_execute_header, v117, v118, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v121, 0x20u);
      sub_100009C94(v122, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v132 = v214;
      v214(v204, v201);
      v133 = v211;
      v134 = v201;
    }

    else
    {
      v135 = *(v0 + 1456);
      v136 = *(v0 + 1208);
      v137 = *(v0 + 1136);
      v138 = *(v0 + 776);
      v139 = *(v0 + 760);
      v140 = *(v0 + 720);

      swift_unknownObjectRelease();
      v135(v136, v137);
      v132 = v214;
      v214(v139, v140);
      v133 = v138;
      v134 = v140;
    }

    v132(v133, v134);
    v141 = *(v0 + 1464);
    v142 = *(v0 + 912);
    v143 = *(v0 + 904);
    v144 = *(v0 + 896);
    v215 = *(*(v0 + 1536) + 16);
    v145 = v215;

    [v141 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v143 + 8))(v142, v144);
    goto LABEL_31;
  }

  v148 = *(v0 + 1608);
  v149 = *(v0 + 768);
  v150 = *(v0 + 720);
  static Clock<>.continuous.getter();
  *(v0 + 576) = xmmword_100069320;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 1;
  v151 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v148(v149, v150);
  v152 = swift_task_alloc();
  *(v0 + 1640) = v152;
  *v152 = v0;
  v152[1] = sub_100059124;
  v153 = *(v0 + 752);
  v154 = *(v0 + 680);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v153, v0 + 504, v154, v151);
}

uint64_t sub_10005E200()
{
  v2 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    (*(v2 + 1688))(*(v2 + 736), *(v2 + 720));
    v3 = sub_100061064;
  }

  else
  {
    v4 = *(v2 + 1688);
    v5 = *(v2 + 736);
    v6 = *(v2 + 720);
    v7 = *(v2 + 696);
    v8 = *(v2 + 688);
    v9 = *(v2 + 680);
    v4(v5, v6);
    (*(v8 + 8))(v7, v9);
    v3 = sub_10005E368;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10005E368(uint64_t a1)
{
  v448 = v1;
  v2 = *(v1 + 1688);
  v3 = *(v1 + 768);
  v4 = *(v1 + 720);
  static ContinuousClock.now.getter();
  v5 = ContinuousClock.Instant.duration(to:)();
  v7 = v6;
  v2(v3, v4);
  *(v1 + 1600) = v7;
  *(v1 + 1592) = v5;
  v8 = *(v1 + 1424);
  os_unfair_lock_lock((*(v8 + 56) + 16));
  v9 = *(v8 + 72);
  if (*(v9 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    v12 = v10 & ~v11;
    if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {
        v14 = (*(v9 + 48) + 16 * v12);
        v15 = *v14 == *(v1 + 664) && v14[1] == *(v1 + 672);
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v26 = *(v1 + 1424);

      os_unfair_lock_unlock((*(v26 + 56) + 16));
      goto LABEL_18;
    }

LABEL_10:
  }

  v16 = *(v1 + 1544);
  os_unfair_lock_unlock((*(*(v1 + 1424) + 56) + 16));
  if (*(v16 + 16) == 2 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    v17 = *(v1 + 768);
    v18 = *(v1 + 728);
    v19 = *(v1 + 720);
    static Clock<>.continuous.getter();
    *(v1 + 544) = xmmword_100069320;
    *(v1 + 456) = 0;
    *(v1 + 464) = 0;
    *(v1 + 472) = 1;
    v20 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v21 = *(v18 + 8);
    *(v1 + 1688) = v21;
    *(v1 + 1696) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v17, v19);
    v22 = swift_task_alloc();
    *(v1 + 1704) = v22;
    *v22 = v1;
    v22[1] = sub_10005E200;
    v23 = *(v1 + 736);
    v24 = *(v1 + 680);
    v25 = v1 + 456;
    goto LABEL_14;
  }

LABEL_18:
  v27 = *(v1 + 1424);
  v28 = *(v1 + 672);
  v29 = *(v1 + 664);
  os_unfair_lock_lock((*(v27 + 56) + 16));
  v30 = *(v27 + 72);

  LOBYTE(v28) = sub_1000292B0(v29, v28, v30);

  os_unfair_lock_unlock((*(v27 + 56) + 16));
  if ((v28 & 1) != 0 || (v31 = *(v1 + 1544), swift_beginAccess(), *(v31 + 16) != 2))
  {
    v40 = *(v1 + 1544);
    swift_beginAccess();
    v41 = *(v40 + 16);
    if (v41 == 2)
    {
      (*(v1 + 1440))(*(v1 + 1280), *(v1 + 640), *(v1 + 1136));
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v1 + 1424);
        v45 = *(v1 + 1280);
        v46 = *(v1 + 1136);
        v421 = *(v1 + 672);
        v415 = *(v1 + 1456);
        v418 = *(v1 + 664);
        v47 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        *v47 = 136315650;
        v48 = MLHostTask.name.getter();
        v50 = v49;
        v415(v45, v46);
        v51 = sub_100008A0C(v48, v50, &v446);

        *(v47 + 4) = v51;
        *(v47 + 12) = 1024;
        os_unfair_lock_lock((*(v44 + 56) + 16));
        v52 = *(v44 + 72);

        LOBYTE(v46) = sub_1000292B0(v418, v421, v52);

        os_unfair_lock_unlock((*(v44 + 56) + 16));
        *(v47 + 14) = v46 & 1;
        *(v47 + 18) = 2080;
        v53 = Duration.description.getter();
        v55 = sub_100008A0C(v53, v54, &v446);

        *(v47 + 20) = v55;
        _os_log_impl(&_mh_execute_header, v42, v43, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v47, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
        v71 = *(v1 + 1456);
        v72 = *(v1 + 1280);
        v73 = *(v1 + 1136);

        v71(v72, v73);
      }

      v434 = *(v1 + 1560);
      v74 = *(v1 + 1504);
      v75 = *(v1 + 1136);
      v76 = *(v1 + 1056);
      v77 = *(v1 + 1016);
      v78 = *(v1 + 944);
      v79 = MLHostTask.name.getter();
      v81 = v80;
      v74(v76, enum case for TaskStatus.taskDeferred(_:), v77);
      sub_100019300(v79, v81, v78);
      if (v434(v78, 1, v75) == 1)
      {
        sub_100009C94(*(v1 + 944), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v94 = *(v1 + 1456);
        v95 = *(v1 + 1192);
        v96 = *(v1 + 1136);
        v97 = *(v1 + 1120);
        v98 = *(v1 + 1056);
        v99 = *(v1 + 1024);
        v100 = *(v1 + 1016);
        (*(v1 + 1472))(v95, *(v1 + 944), v96);
        (*(v99 + 16))(v97, v98, v100);
        MLHostTask.status.setter();
        sub_10001C4DC(v95);
        v94(v95, v96);
      }

      v101 = *(v1 + 1576);
      v102 = *(v1 + 1464);
      v103 = *(v1 + 1056);
      v104 = *(v1 + 1016);
      v105 = *(v1 + 912);
      v106 = *(v1 + 904);
      v440 = *(v1 + 896);
      v405 = *(v1 + 776);
      v107 = *(v1 + 728);
      v394 = *(v1 + 1528);
      v400 = *(v1 + 720);

      v101(v103, v104);
      v108 = [v102 processIdentifier];
      v446 = 0;
      v447 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v446 = 0x206B736154;
      v447 = 0xE500000000000000;
      v109._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v109);

      v110._countAndFlagsBits = 0xD00000000000001ELL;
      v110._object = 0x8000000100073030;
      String.append(_:)(v110);
      sub_1000530BC(v108);

      swift_unknownObjectRelease();
      (*(v107 + 8))(v405, v400);

      [v102 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v106 + 8))(v105, v440);
      goto LABEL_40;
    }

    v56 = *(v1 + 1440);
    v57 = *(v1 + 1136);
    v58 = *(v1 + 640);
    if ((v41 & 1) == 0)
    {
      v56(*(v1 + 1264), v58, v57);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v427 = *(v1 + 1456);
        v84 = *(v1 + 1264);
        v85 = *(v1 + 1136);
        v86 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        *v86 = 136315650;
        v87 = MLHostTask.name.getter();
        v89 = v88;
        v427(v84, v85);
        v90 = sub_100008A0C(v87, v89, &v446);

        *(v86 + 4) = v90;
        *(v86 + 12) = 1024;
        *(v86 + 14) = 0;
        *(v86 + 18) = 2080;
        v91 = Duration.description.getter();
        v93 = sub_100008A0C(v91, v92, &v446);

        *(v86 + 20) = v93;
        _os_log_impl(&_mh_execute_header, v82, v83, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v86, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
        v173 = *(v1 + 1456);
        v174 = *(v1 + 1264);
        v175 = *(v1 + 1136);

        v173(v174, v175);
      }

      v436 = *(v1 + 1560);
      v176 = *(v1 + 1504);
      v177 = *(v1 + 1136);
      v178 = *(v1 + 1064);
      v179 = *(v1 + 1016);
      v180 = *(v1 + 952);
      v181 = MLHostTask.name.getter();
      v183 = v182;
      v176(v178, enum case for TaskStatus.taskFailed(_:), v179);
      sub_100019300(v181, v183, v180);
      if (v436(v180, 1, v177) == 1)
      {
        sub_100009C94(*(v1 + 952), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v184 = *(v1 + 1456);
        v185 = *(v1 + 1200);
        v186 = *(v1 + 1136);
        v187 = *(v1 + 1120);
        v188 = *(v1 + 1064);
        v189 = *(v1 + 1024);
        v190 = *(v1 + 1016);
        (*(v1 + 1472))(v185, *(v1 + 952), v186);
        (*(v189 + 16))(v187, v188, v190);
        MLHostTask.status.setter();
        sub_10001C4DC(v185);
        v184(v185, v186);
      }

      v191 = *(v1 + 1576);
      v192 = *(v1 + 1536);
      v193 = *(v1 + 1464);
      v194 = *(v1 + 1064);
      v195 = *(v1 + 1016);
      v419 = *(v1 + 912);
      v424 = *(v1 + 904);
      v437 = *(v1 + 896);
      v407 = *(v1 + 776);
      v196 = *(v1 + 728);
      v396 = *(v1 + 1528);
      v401 = *(v1 + 720);

      v191(v194, v195);
      v197 = MLHostTask.name.getter();
      sub_10001C1E4(v197, v198);

      v199 = [v193 processIdentifier];
      v446 = 0;
      v447 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v446 = 0x206B736154;
      v447 = 0xE500000000000000;
      v200._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v200);

      v201._countAndFlagsBits = 0xD000000000000014;
      v201._object = 0x8000000100073050;
      String.append(_:)(v201);
      sub_1000530BC(v199);

      swift_unknownObjectRelease();
      (*(v196 + 8))(v407, v401);
      swift_beginAccess();
      v443 = *(v192 + 16);
      v202 = v443;

      [v193 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v424 + 8))(v419, v437);
      goto LABEL_88;
    }

    v56(*(v1 + 1272), v58, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v422 = *(v1 + 1456);
      v61 = *(v1 + 1272);
      v62 = *(v1 + 1136);
      v63 = swift_slowAlloc();
      v446 = swift_slowAlloc();
      *v63 = 136315650;
      v64 = MLHostTask.name.getter();
      v66 = v65;
      v422(v61, v62);
      v67 = sub_100008A0C(v64, v66, &v446);

      *(v63 + 4) = v67;
      *(v63 + 12) = 1024;
      *(v63 + 14) = 1;
      *(v63 + 18) = 2080;
      v68 = Duration.description.getter();
      v70 = sub_100008A0C(v68, v69, &v446);

      *(v63 + 20) = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v63, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v146 = *(v1 + 1456);
      v147 = *(v1 + 1272);
      v148 = *(v1 + 1136);

      v146(v147, v148);
    }

    v149 = *(v1 + 1536);
    v428 = *(v1 + 1520);
    v435 = *(v1 + 1528);
    v150 = *(v1 + 1496);
    v423 = *(v1 + 1488);
    v416 = *(v1 + 1472);
    v395 = *(v1 + 1440);
    v392 = *(v1 + 1336);
    v390 = *(v1 + 1136);
    v151 = *(v1 + 1120);
    v152 = *(v1 + 1024);
    v153 = *(v1 + 1016);
    v411 = *(v1 + 648);
    v389 = *(v1 + 640);
    v154 = (*(v1 + 476) + 16) & ~*(v1 + 476);
    v406 = (*(v1 + 1152) + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
    v155 = (v406 + 15) & 0xFFFFFFFFFFFFFFF8;
    (*(v1 + 1504))(v151, *(v1 + 500), v153);
    swift_beginAccess();
    (*(v152 + 40))(v150, v151, v153);
    swift_beginAccess();
    v156 = *(v149 + 16);
    *(v149 + 16) = 0;

    v395(v392, v389, v390);
    v157 = swift_allocObject();
    v416(v157 + v154, v392, v390);
    *(v157 + v406) = v149;
    *(v157 + v155) = v423;
    *(v157 + ((v155 + 15) & 0xFFFFFFFFFFFFFFF8)) = v411;
    *(v1 + 240) = sub_1000643F4;
    *(v1 + 248) = v157;
    *(v1 + 208) = _NSConcreteStackBlock;
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_100065970;
    *(v1 + 232) = &unk_100082F50;
    v158 = _Block_copy((v1 + 208));

    [v428 doWorkWithContext:v435 reply:v158];
    _Block_release(v158);
    v159 = *(v1 + 1424);
    os_unfair_lock_lock((*(v159 + 56) + 16));
    v160 = *(v159 + 72);
    if (*(v160 + 16))
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v161 = Hasher._finalize()();
      v162 = -1 << *(v160 + 32);
      v163 = v161 & ~v162;
      if ((*(v160 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163))
      {
        v164 = ~v162;
        while (1)
        {
          v165 = (*(v160 + 48) + 16 * v163);
          v166 = *v165 == *(v1 + 664) && v165[1] == *(v1 + 672);
          if (v166 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v163 = (v163 + 1) & v164;
          if (((*(v160 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v203 = *(v1 + 1424);

        os_unfair_lock_unlock((*(v203 + 56) + 16));
LABEL_60:
        v204 = *(v1 + 1536);
        v205 = *(v1 + 768);
        v206 = *(v1 + 728);
        v207 = *(v1 + 720);
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        v208 = *(v206 + 8);
        *(v1 + 1608) = v208;
        *(v1 + 1616) = (v206 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v208(v205, v207);
        v209 = *(v204 + 16);
        v210 = *(v1 + 1440);
        v211 = *(v1 + 1136);
        v212 = *(v1 + 640);
        if (v209)
        {
          v210(*(v1 + 1256), v212, v211);
          v213 = v209;
          v214 = Logger.logObject.getter();
          v215 = static os_log_type_t.info.getter();

          v216 = os_log_type_enabled(v214, v215);
          v217 = *(v1 + 1456);
          v218 = *(v1 + 1256);
          v219 = *(v1 + 1136);
          v443 = v209;
          v420 = v208;
          if (v216)
          {
            v220 = swift_slowAlloc();
            v408 = swift_slowAlloc();
            v446 = swift_slowAlloc();
            *v220 = 136315650;
            v402 = v214;
            v221 = MLHostTask.name.getter();
            v397 = v215;
            v222 = v213;
            v224 = v223;
            v217(v218, v219);
            v225 = sub_100008A0C(v221, v224, &v446);

            *(v220 + 4) = v225;
            *(v220 + 12) = 2080;
            v226 = Duration.description.getter();
            v228 = sub_100008A0C(v226, v227, &v446);

            *(v220 + 14) = v228;
            *(v220 + 22) = 2112;
            *(v220 + 24) = v222;
            *v408 = v209;
            v229 = v222;
            _os_log_impl(&_mh_execute_header, v402, v397, "Task %s completed after %s. TaskResult: %@", v220, 0x20u);
            sub_100009C94(v408, &qword_100085970, &qword_100068F48);

            swift_arrayDestroy();
          }

          else
          {

            v217(v218, v219);
          }

          v412 = *(v1 + 1560);
          v244 = *(v1 + 1496);
          v245 = *(v1 + 1136);
          v246 = *(v1 + 1088);
          v247 = *(v1 + 1024);
          v248 = *(v1 + 1016);
          v249 = *(v1 + 976);
          v250 = MLHostTask.name.getter();
          v252 = v251;
          v253 = v248;
          v254 = *(v247 + 16);
          v254(v246, v244, v253);
          sub_100019300(v250, v252, v249);
          if (v412(v249, 1, v245) == 1)
          {
            sub_100009C94(*(v1 + 976), &qword_100085940, &unk_1000693D0);
          }

          else
          {
            v429 = *(v1 + 1456);
            v255 = *(v1 + 1240);
            v256 = *(v1 + 1136);
            v257 = *(v1 + 1120);
            v258 = *(v1 + 1088);
            v259 = v254;
            v260 = *(v1 + 1016);
            (*(v1 + 1472))(v255, *(v1 + 976), v256);
            v261 = v260;
            v254 = v259;
            v259(v257, v258, v261);
            MLHostTask.status.setter();
            sub_10001C4DC(v255);
            v429(v255, v256);
          }

          v262 = *(v1 + 1576);
          v263 = *(v1 + 1088);
          v264 = *(v1 + 1016);

          v262(v263, v264);
          v265 = MLHostTask.name.getter();
          sub_10001C1E4(v265, v266);

          MLHostResult.status.getter();
          v267 = MLHostResultStatus.rawValue.getter();
          if (v267 == MLHostResultStatus.rawValue.getter())
          {
            v268 = *(v1 + 1528);
            v420(*(v1 + 776), *(v1 + 720));

            swift_unknownObjectRelease();
          }

          else
          {
            v403 = *(v1 + 1576);
            v269 = *(v1 + 1496);
            v270 = *(v1 + 1120);
            v271 = *(v1 + 1016);
            v430 = *(v1 + 776);
            v413 = *(v1 + 1528);
            v417 = *(v1 + 720);
            v398 = [*(v1 + 1464) processIdentifier];
            v446 = 0;
            v447 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v272 = v447;
            *(v1 + 608) = v446;
            *(v1 + 616) = v272;
            v273._countAndFlagsBits = 0x206B736154;
            v273._object = 0xE500000000000000;
            String.append(_:)(v273);
            v274._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v274);

            v275._object = 0x8000000100073090;
            v275._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v275);
            v254(v270, v269, v271);
            _print_unlocked<A, B>(_:_:)();
            v403(v270, v271);
            v276._countAndFlagsBits = 46;
            v276._object = 0xE100000000000000;
            String.append(_:)(v276);
            sub_1000530BC(v398);

            swift_unknownObjectRelease();
            v420(v430, v417);
          }

          v277 = *(v1 + 1464);
          v278 = *(v1 + 912);
          v279 = *(v1 + 904);
          v280 = *(v1 + 896);

          [v277 invalidate];

          AppExtensionProcess.invalidate()();
          swift_unknownObjectRelease();
          (*(v279 + 8))(v278, v280);
          goto LABEL_88;
        }

        v210(*(v1 + 1248), v212, v211);
        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.info.getter();
        v232 = os_log_type_enabled(v230, v231);
        v233 = *(v1 + 1456);
        v234 = *(v1 + 1248);
        v235 = *(v1 + 1136);
        if (v232)
        {
          v236 = swift_slowAlloc();
          v446 = swift_slowAlloc();
          *v236 = 136315394;
          v237 = MLHostTask.name.getter();
          v239 = v238;
          v233(v234, v235);
          v240 = sub_100008A0C(v237, v239, &v446);

          *(v236 + 4) = v240;
          *(v236 + 12) = 2080;
          v241 = Duration.description.getter();
          v243 = sub_100008A0C(v241, v242, &v446);

          *(v236 + 14) = v243;
          _os_log_impl(&_mh_execute_header, v230, v231, "Task %s asked to terminate because of deferral after %s.", v236, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v233(v234, v235);
        }

        v281 = *(v1 + 1536);
        v282 = *(v1 + 1520);
        static ContinuousClock.now.getter();
        [v282 doStop];
        v283 = *(v281 + 16);
        if (v283)
        {
          goto LABEL_75;
        }

        *(v1 + 1624) = 0u;
        if (static Duration.< infix(_:_:)())
        {
          v283 = *(*(v1 + 1536) + 16);
          if (!v283)
          {
            v433 = *(v1 + 1560);
            v351 = *(v1 + 1504);
            v352 = *(v1 + 1136);
            v353 = *(v1 + 1072);
            v354 = *(v1 + 1016);
            v355 = *(v1 + 960);
            v356 = MLHostTask.name.getter();
            v358 = v357;
            v351(v353, enum case for TaskStatus.taskDeferred(_:), v354);
            sub_100019300(v356, v358, v355);
            if (v433(v355, 1, v352) == 1)
            {
              sub_100009C94(*(v1 + 960), &qword_100085940, &unk_1000693D0);
            }

            else
            {
              v359 = *(v1 + 1456);
              v360 = *(v1 + 1224);
              v361 = *(v1 + 1136);
              v362 = *(v1 + 1120);
              v363 = *(v1 + 1072);
              v364 = *(v1 + 1024);
              v365 = *(v1 + 1016);
              (*(v1 + 1472))(v360, *(v1 + 960), v361);
              (*(v364 + 16))(v362, v363, v365);
              MLHostTask.status.setter();
              sub_10001C4DC(v360);
              v359(v360, v361);
            }

            v366 = *(v1 + 1576);
            v367 = *(v1 + 1440);
            v368 = *(v1 + 1216);
            v369 = *(v1 + 1136);
            v370 = *(v1 + 1072);
            v371 = *(v1 + 1016);
            v372 = *(v1 + 640);

            v366(v370, v371);
            v367(v368, v372, v369);
            v373 = Logger.logObject.getter();
            v374 = static os_log_type_t.error.getter();
            v375 = os_log_type_enabled(v373, v374);
            v376 = *(v1 + 1456);
            v377 = *(v1 + 1216);
            v378 = *(v1 + 1136);
            if (v375)
            {
              v445 = v374;
              v379 = swift_slowAlloc();
              v380 = swift_slowAlloc();
              v446 = v380;
              *v379 = 136315138;
              v381 = MLHostTask.name.getter();
              v383 = v382;
              v376(v377, v378);
              v384 = sub_100008A0C(v381, v383, &v446);

              *(v379 + 4) = v384;
              _os_log_impl(&_mh_execute_header, v373, v445, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v379, 0xCu);
              sub_100009914(v380);
            }

            else
            {

              v376(v377, v378);
            }

            v385 = [*(v1 + 1464) processIdentifier];
            v446 = 0;
            v447 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);

            v446 = 0x206B736154;
            v447 = 0xE500000000000000;
            v386._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v386);

            v387._countAndFlagsBits = 0xD00000000000001FLL;
            v387._object = 0x8000000100073070;
            String.append(_:)(v387);
            sub_1000530BC(v385);

            goto LABEL_84;
          }

LABEL_75:
          v425 = *(v1 + 1560);
          v284 = *(v1 + 1496);
          v285 = *(v1 + 1136);
          v286 = *(v1 + 1080);
          v287 = *(v1 + 1024);
          v288 = *(v1 + 1016);
          v289 = *(v1 + 968);
          v444 = v283;
          v290 = MLHostTask.name.getter();
          v292 = v291;
          v293 = v288;
          v294 = *(v287 + 16);
          v294(v286, v284, v293);
          sub_100019300(v290, v292, v289);
          if (v425(v289, 1, v285) == 1)
          {
            sub_100009C94(*(v1 + 968), &qword_100085940, &unk_1000693D0);
          }

          else
          {
            v431 = *(v1 + 1456);
            v295 = *(v1 + 1232);
            v296 = *(v1 + 1136);
            v297 = *(v1 + 1120);
            v298 = *(v1 + 1080);
            v299 = v294;
            v300 = *(v1 + 1016);
            (*(v1 + 1472))(v295, *(v1 + 968), v296);
            v301 = v300;
            v294 = v299;
            v299(v297, v298, v301);
            MLHostTask.status.setter();
            sub_10001C4DC(v295);
            v431(v295, v296);
          }

          v302 = *(v1 + 1576);
          v303 = *(v1 + 1080);
          v304 = *(v1 + 1016);

          v302(v303, v304);
          v305 = MLHostTask.name.getter();
          sub_10001C1E4(v305, v306);

          MLHostResult.status.getter();
          v307 = MLHostResultStatus.rawValue.getter();
          if (v307 == MLHostResultStatus.rawValue.getter())
          {
          }

          else
          {
            v308 = *(v1 + 1576);
            v309 = *(v1 + 1496);
            v310 = *(v1 + 1120);
            v311 = *(v1 + 1016);
            v438 = [*(v1 + 1464) processIdentifier];
            v446 = 0;
            v447 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v312 = v447;
            *(v1 + 592) = v446;
            *(v1 + 600) = v312;
            v313._countAndFlagsBits = 0x206B736154;
            v313._object = 0xE500000000000000;
            String.append(_:)(v313);
            v314._countAndFlagsBits = MLHostTask.name.getter();
            String.append(_:)(v314);

            v315._object = 0x8000000100073090;
            v315._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v315);
            v294(v310, v309, v311);
            _print_unlocked<A, B>(_:_:)();
            v308(v310, v311);
            v316._countAndFlagsBits = 46;
            v316._object = 0xE100000000000000;
            String.append(_:)(v316);
            sub_1000530BC(v438);
          }

LABEL_84:
          (*(v1 + 1440))(*(v1 + 1208), *(v1 + 640), *(v1 + 1136));

          v317 = Logger.logObject.getter();
          v318 = static os_log_type_t.info.getter();

          v319 = os_log_type_enabled(v317, v318);
          v439 = *(v1 + 1608);
          if (v319)
          {
            v399 = *(v1 + 1536);
            v404 = *(v1 + 1528);
            v320 = *(v1 + 1208);
            v391 = *(v1 + 1136);
            v393 = *(v1 + 1456);
            v432 = *(v1 + 776);
            v409 = *(v1 + 720);
            v414 = *(v1 + 760);
            v321 = swift_slowAlloc();
            v322 = swift_slowAlloc();
            v446 = swift_slowAlloc();
            *v321 = 136315650;
            v323 = MLHostTask.name.getter();
            v325 = v324;
            v393(v320, v391);
            v326 = sub_100008A0C(v323, v325, &v446);

            *(v321 + 4) = v326;
            *(v321 + 12) = 2080;
            v327 = Duration.description.getter();
            v329 = sub_100008A0C(v327, v328, &v446);

            *(v321 + 14) = v329;
            *(v321 + 22) = 2112;
            v330 = v399[2];
            *(v321 + 24) = v330;
            *v322 = v330;
            v331 = v330;
            _os_log_impl(&_mh_execute_header, v317, v318, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v321, 0x20u);
            sub_100009C94(v322, &qword_100085970, &qword_100068F48);

            swift_arrayDestroy();

            swift_unknownObjectRelease();
            v332 = v439;
            v439(v414, v409);
            v333 = v432;
            v334 = v409;
          }

          else
          {
            v335 = *(v1 + 1456);
            v336 = *(v1 + 1208);
            v337 = *(v1 + 1136);
            v338 = *(v1 + 776);
            v339 = *(v1 + 760);
            v340 = *(v1 + 720);

            swift_unknownObjectRelease();
            v335(v336, v337);
            v332 = v439;
            v439(v339, v340);
            v333 = v338;
            v334 = v340;
          }

          v332(v333, v334);
          v341 = *(v1 + 1464);
          v342 = *(v1 + 912);
          v343 = *(v1 + 904);
          v344 = *(v1 + 896);
          v443 = *(*(v1 + 1536) + 16);
          v345 = v443;

          [v341 invalidate];

          AppExtensionProcess.invalidate()();
          swift_unknownObjectRelease();
          (*(v343 + 8))(v342, v344);
          goto LABEL_88;
        }

        v347 = *(v1 + 1608);
        v348 = *(v1 + 768);
        v349 = *(v1 + 720);
        static Clock<>.continuous.getter();
        *(v1 + 576) = xmmword_100069320;
        *(v1 + 504) = 0;
        *(v1 + 512) = 0;
        *(v1 + 520) = 1;
        v20 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
        dispatch thunk of Clock.now.getter();
        sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        dispatch thunk of InstantProtocol.advanced(by:)();
        v347(v348, v349);
        v350 = swift_task_alloc();
        *(v1 + 1640) = v350;
        *v350 = v1;
        v350[1] = sub_100059124;
        v23 = *(v1 + 752);
        v24 = *(v1 + 680);
        v25 = v1 + 504;
LABEL_14:

        return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v25, v24, v20);
      }

LABEL_51:
    }

    v167 = *(v1 + 1536);
    os_unfair_lock_unlock((*(*(v1 + 1424) + 56) + 16));
    if (!*(v167 + 16))
    {
      v168 = *(v1 + 768);
      v169 = *(v1 + 728);
      v170 = *(v1 + 720);
      static Clock<>.continuous.getter();
      *(v1 + 560) = xmmword_100069320;
      *(v1 + 480) = 0;
      *(v1 + 488) = 0;
      *(v1 + 496) = 1;
      v20 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
      dispatch thunk of Clock.now.getter();
      sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v171 = *(v169 + 8);
      *(v1 + 1656) = v171;
      *(v1 + 1664) = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v171(v168, v170);
      v172 = swift_task_alloc();
      *(v1 + 1672) = v172;
      *v172 = v1;
      v172[1] = sub_10005B044;
      v23 = *(v1 + 744);
      v24 = *(v1 + 680);
      v25 = v1 + 480;
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v426 = *(v1 + 1560);
  v32 = *(v1 + 1504);
  v33 = *(v1 + 1136);
  v34 = *(v1 + 1048);
  v35 = *(v1 + 1016);
  v36 = *(v1 + 936);
  v37 = MLHostTask.name.getter();
  v39 = v38;
  v32(v34, enum case for TaskStatus.taskFailed(_:), v35);
  sub_100019300(v37, v39, v36);
  if (v426(v36, 1, v33) == 1)
  {
    sub_100009C94(*(v1 + 936), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v111 = *(v1 + 1456);
    v112 = *(v1 + 1184);
    v113 = *(v1 + 1136);
    v114 = *(v1 + 1120);
    v115 = *(v1 + 1048);
    v116 = *(v1 + 1024);
    v117 = *(v1 + 1016);
    (*(v1 + 1472))(v112, *(v1 + 936), v113);
    (*(v116 + 16))(v114, v115, v117);
    MLHostTask.status.setter();
    sub_10001C4DC(v112);
    v111(v112, v113);
  }

  v118 = *(v1 + 1576);
  v119 = *(v1 + 1440);
  v120 = *(v1 + 1176);
  v121 = *(v1 + 1136);
  v122 = *(v1 + 1048);
  v123 = *(v1 + 1016);
  v124 = *(v1 + 640);

  v118(v122, v123);
  v119(v120, v124, v121);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.error.getter();
  v127 = os_log_type_enabled(v125, v126);
  v128 = *(v1 + 1456);
  v129 = *(v1 + 1176);
  v130 = *(v1 + 1136);
  if (v127)
  {
    v441 = v126;
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v446 = v132;
    *v131 = 136315138;
    v133 = MLHostTask.name.getter();
    v135 = v134;
    v128(v129, v130);
    v136 = sub_100008A0C(v133, v135, &v446);

    *(v131 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v125, v441, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v131, 0xCu);
    sub_100009914(v132);
  }

  else
  {

    v128(v129, v130);
  }

  v410 = *(v1 + 1528);
  v137 = *(v1 + 1464);
  v138 = *(v1 + 912);
  v139 = *(v1 + 904);
  v442 = *(v1 + 896);
  v140 = *(v1 + 776);
  v141 = *(v1 + 728);
  v142 = *(v1 + 720);
  v143 = [v137 processIdentifier];
  v446 = 0;
  v447 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v446 = 0x206B736154;
  v447 = 0xE500000000000000;
  v144._countAndFlagsBits = MLHostTask.name.getter();
  String.append(_:)(v144);

  v145._countAndFlagsBits = 0xD000000000000024;
  v145._object = 0x8000000100073000;
  String.append(_:)(v145);
  sub_1000530BC(v143);

  swift_unknownObjectRelease();
  (*(v141 + 8))(v140, v142);

  [v137 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v139 + 8))(v138, v442);
LABEL_40:
  v443 = 0;
LABEL_88:

  v346 = *(v1 + 8);

  return v346(v443);
}