double sub_1003BAE88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 40);
  if (a3)
  {

    sub_100194E54(a4);
  }

  else
  {

    sub_1003B2924(&v8, a4);
  }

  a5(v9);

  return result;
}

double sub_1003BAF1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 64);
  if (a3)
  {

    sub_100194E54(a4);
  }

  else
  {

    sub_1003B2924(&v8, a4);
  }

  a5(v9);

  return result;
}

double sub_1003BAFB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 32);
  if (a3)
  {

    sub_100194E54(a4);
  }

  else
  {

    sub_1003B2924(&v8, a4);
  }

  a5(v9);

  return result;
}

double sub_1003BB044(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 72);
  if (a3)
  {

    sub_100194E54(a4);
  }

  else
  {

    sub_1003B2924(&v8, a4);
  }

  a5(v9);

  return result;
}

double sub_1003BB0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *))
{
  v19 = a2;
  v20 = a6;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_100431F44(a3, a4, v11, ObjectType, v12);
  sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
  if (v15)
  {
    sub_1001254E4(v15);
  }

  v16 = (*(v12 + 56))(ObjectType, v12);
  __chkstk_darwin();
  v17 = v20;
  *(&v19 - 4) = v19;
  *(&v19 - 12) = a3;
  *(&v19 - 2) = a4;
  *(&v19 - 1) = a5;
  sub_100376F9C(v17, (&v19 - 6), v16);

  return result;
}

void sub_1003BB29C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10066CBCC(0, v3, 0);
    v26 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v27 = *(a1 + 36);
    v24 = v3;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(a1 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = *(*(a1 + 56) + 8 * v5);

      v13 = a2(v10, v11, v12);

      v14 = v26;
      v16 = v26[2];
      v15 = v26[3];
      if (v16 >= v15 >> 1)
      {
        sub_10066CBCC((v15 > 1), v16 + 1, 1);
        v14 = v26;
      }

      v14[2] = v16 + 1;
      v14[v16 + 4] = v13;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v26 = v14;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1000D8F7C(v5, v27, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1000D8F7C(v5, v27, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1003BB520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1003BB65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for PlaylistCreation.Flow(0);
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

void sub_1003BB77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v12, v11))
  {
    goto LABEL_18;
  }

  sub_10000BF98();

  sub_1003BB65C(v7, v6, 1, v4);
}

unint64_t sub_1003BB890(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_10010FC20(&qword_101182128, &unk_100EBDF10);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1003BB99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for Lyrics.TextLine(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1003BBB24(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_10049930C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1003BB99C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1003BBBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MotionData(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BBD24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

void sub_1003BBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  swift_arrayDestroy();
  v13 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v14 = v5[2];
    v15 = v14 - v7;
    if (!__OFSUB__(v14, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v16 = (v6 + 8 * v8);
  v17 = &v9[v7];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = v5[2];
  }

  if (__OFADD__(v19, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v19 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  __chkstk_darwin();
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1003BAD68(v4, sub_1003BC41C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BBFC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  sub_10000BF98();

  sub_1003BBE20(v7, v6, v11, v4);
}

void sub_1003BC0DC(char *a1)
{
  _s9PlaylistsVMa(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  v6 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v7 = sub_10049CB78();

  v8 = *(v5 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v4, _s9PlaylistsVMa);
  v4[8] = v7 & 1;
  sub_1003777F4(v4);
  sub_10037F198();
}

double sub_1003BC220(char *a1)
{
  v2 = _s9PlaylistsVMa(0) - 8;
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v7 = v19;
  v8 = *(*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v5, _s9PlaylistsVMa);

  *v5 = v7;
  v10 = v5 + *(v2 + 52);
  v11 = *v10;
  if (v10[1])
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  sub_100375B90(v12 | v11);
  v14 = (v13 >> 8) & 1;
  if ((v13 & 0xFF00) == 0x200)
  {
    v15 = 7;
  }

  else
  {
    v15 = v13;
  }

  if ((v13 & 0xFF00) == 0x200)
  {
    LOBYTE(v14) = 1;
  }

  *v10 = v15;
  v10[1] = v14;
  sub_10018F8E4(v12 | v11);
  sub_1003777F4(v5);
  v16 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
  swift_beginAccess();
  if (*&a1[v16])
  {

    dispatch thunk of MusicAutoupdatingResponse.update(_:)();
  }

  sub_10037F198();

  return result;
}

void sub_1003BC470()
{
  v1 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v2 = v0 + ((*(v1 + 80) + 112) & ~*(v1 + 80));

  sub_1001F313C(v0 + 16, v2);
}

uint64_t sub_1003BC4E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_100394130(a1, v1 + 16);
}

uint64_t sub_1003BC578(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003944F4(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1003BC73C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AC860(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BC848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A8BC4(a1, v4, v5, v7, v6);
}

void sub_1003BC968(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1003B1758(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_1003BC9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACDBC(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BCAB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A900C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BCC48(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Notification() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_10039BEE4(a1, v7, v8, v9, v2 + v6);
}

double sub_1003BCDF4(void *a1)
{
  v2 = sub_10037FC08();
  v3 = sub_100380204();
  [v2 setCollectionViewLayout:v3];

  sub_10037F198();
  v4 = sub_100380E10();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];

  return result;
}

uint64_t sub_1003BCEB0()
{
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118CDC0, &unk_100EC89D0);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118CDD0, &unk_100EC89E0);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1003BD0B4(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_10118CDC0, &unk_100EC89D0);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118CDD0, &unk_100EC89E0);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

id sub_1003BD4D0(uint64_t a1)
{
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v15 = __chkstk_darwin();
  v16 = &v39 - v12;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v53 = v10;
  v54 = v11;
  v17 = *(v11 + 16);
  v18 = *(v11 + 80);
  v56 = v13;
  v50 = v17;
  v51 = v14;
  (v17)(&v39 - v12, a1 + ((v18 + 32) & ~v18), v13, v15);
  sub_10037AA20(v16, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v54 + 8))(v16, v56);
    sub_1000095E8(v3, &qword_1011831B0, &qword_100ED2570);
    return 0;
  }

  v45 = ~v18;
  v52 = v16;
  v20 = v5;
  v49 = *(v5 + 32);
  v40 = v18;
  v21 = v8;
  v22 = v5 + 32;
  v23 = v53;
  v49(v53, v3, v4);
  v43 = v22;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = v20;
  v41 = *(v20 + 16);
  v41(v21, v23, v4);
  v24 = *(v20 + 80);
  v25 = v4;
  v42 = v24 | 7;
  v44 = swift_allocObject();
  v49((v44 + ((v24 + 16) & ~v24)), v21, v4);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v55;
  v27 = v25;
  v46 = v25;
  v41(v55, v23, v25);
  v28 = v51;
  v29 = v56;
  v50(v51, v52, v56);
  v30 = (v24 + 24) & ~v24;
  v31 = (v6 + v40 + v30) & v45;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v49((v32 + v30), v26, v27);
  v33 = v54;
  (*(v54 + 32))(v32 + v31, v28, v29);
  v34 = objc_opt_self();
  v61 = sub_1003C0D3C;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747E6C;
  v60 = &unk_1010A9C60;
  v35 = _Block_copy(&aBlock);

  v61 = sub_1003C0D9C;
  v62 = v32;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747EBC;
  v60 = &unk_1010A9C88;
  v36 = _Block_copy(&aBlock);

  v37 = isa;
  v38 = [v34 configurationWithIdentifier:isa previewProvider:v35 actionProvider:v36];

  _Block_release(v36);
  _Block_release(v35);
  (*(v48 + 8))(v53, v46);
  (*(v33 + 8))(v52, v56);

  return v38;
}

uint64_t sub_1003BDAEC(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Playlist.EditableComponents();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v34 = &v32 - v6;
  v7 = type metadata accessor for Playlist();
  v37 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = type metadata accessor for Playlist.Folder.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  sub_10037AA20(a3, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v18 = &qword_1011831B0;
    v19 = &qword_100ED2570;
    v20 = v11;
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v22 = UICollectionView.isDraggingCell(at:)();
    (*(v13 + 16))(v15, v17, v12);
    v23 = (*(v13 + 88))(v15, v12);
    if (v23 == enum case for Playlist.Folder.Item.folder(_:))
    {
      v24 = *(v13 + 8);
      v24(v17, v12);
      v21 = v22 ^ 1;
      v24(v15, v12);
      return v21 & 1;
    }

    if (v23 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v27 = *(v13 + 8);
      v27(v17, v12);
      v27(v15, v12);
      goto LABEL_4;
    }

    (*(v13 + 96))(v15, v12);
    v26 = v37;
    (*(v37 + 32))(v9, v15, v7);
    if (v22)
    {
      (*(v26 + 8))(v9, v7);
      (*(v13 + 8))(v17, v12);
      goto LABEL_4;
    }

    v28 = v34;
    Playlist.editableComponents.getter();
    v30 = v35;
    v29 = v36;
    if ((*(v35 + 48))(v28, 1, v36) != 1)
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_10003D8C4(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v31 = *(v30 + 8);
      v31(v33, v29);
      (*(v37 + 8))(v9, v7);
      (*(v13 + 8))(v17, v12);
      v31(v28, v29);
      return v21 & 1;
    }

    (*(v37 + 8))(v9, v7);
    (*(v13 + 8))(v17, v12);
    v18 = &unk_10118D240;
    v19 = &unk_100EC8F50;
    v20 = v28;
  }

  sub_1000095E8(v20, v18, v19);
LABEL_4:
  v21 = 0;
  return v21 & 1;
}

void sub_1003BE070()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
  v3 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  v5 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v6 = *(*(v5 - 8) + 56);
  v6(v1 + v4, 1, 1, v5);
  v6(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration, 1, 1, v5);
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  v8 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  v10 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  v12 = sub_10010FC20(&qword_10118CCF8, &qword_100EC88A8);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  v14 = sub_10010FC20(&unk_10118CD08, &qword_100EC88B0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView) = 0;
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController;
  v16 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v15) = sub_10003AAD8(0xD000000000000020, 0x8000000100E483C0);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController) = 0;
  v17 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  v18 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker) = 0;
  v19 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  v20 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse) = 0;
  v21 = v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003BE4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1003BE608(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * v7;
  a2 = (v9 + 32 + 56 * v8);
  if (result != a2 || result >= &a2[56 * v14])
  {
    result = memmove(result, a2, 56 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v18 = *v6;
  v19 = *(v6 + 1);
  v20 = *(v6 + 2);
  *(v10 + 48) = v6[6];
  *(v10 + 16) = v19;
  *(v10 + 32) = v20;
  *v10 = v18;
  a3 = &qword_10118D018;
  a4 = &unk_100EC8D40;
  a2 = v21;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1000089F8(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_1000089F8(v6, v21, &qword_10118D018, &unk_100EC8D40);
}

uint64_t sub_1003BE784(uint64_t (*a1)(uint64_t, uint64_t, __n128), double a2)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v7.n128_f64[0] = a2;

  return a1(v5, v6, v7);
}

uint64_t sub_1003BE814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACA38(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BE920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A8DE8(a1, v4, v5, v7, v6);
}

id sub_1003BEA48@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v11[2] = v6[2];
  v11[3] = v8;
  v11[4] = v6[4];
  v9 = v6[1];
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_100399F04(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003BEAB8()
{
  result = qword_10118CF10;
  if (!qword_10118CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF10);
  }

  return result;
}

uint64_t sub_1003BEB14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACF94(a1, v4, v5, v6, v8 | v7);
}

id sub_1003BEBF8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v12 = *(v6 + 64);
  v9 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_10039A798(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003BEC68()
{
  result = qword_10118CF28;
  if (!qword_10118CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF28);
  }

  return result;
}

uint64_t sub_1003BED18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD83C(a1, v4, v5, v6, v8 | v7);
}

unint64_t sub_1003BEDFC()
{
  result = qword_10118CF60;
  if (!qword_10118CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF60);
  }

  return result;
}

uint64_t sub_1003BEE58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD444(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BEF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A99B0(a1, v4, v5, v7, v6);
}

id sub_1003BF034@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v12[2] = v6[2];
  v12[3] = v8;
  v9 = v6[5];
  v12[4] = v6[4];
  v12[5] = v9;
  v10 = v6[1];
  v12[0] = *v6;
  v12[1] = v10;
  result = sub_10039A4C4(*a1, v12, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003BF0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9344(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF19C()
{
  result = qword_1011A3E50;
  if (!qword_1011A3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3E50);
  }

  return result;
}

uint64_t sub_1003BF2A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD10C(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BF3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9620(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF560()
{
  result = qword_10118CFA8;
  if (!qword_10118CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CFA8);
  }

  return result;
}

uint64_t sub_1003BF668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD2A8(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BF774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A97E8(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF94C()
{
  result = qword_10118CFC8;
  if (!qword_10118CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CFC8);
  }

  return result;
}

uint64_t sub_1003BFA54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD6A0(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BFB60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9B58(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9D20(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFE0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ADAC8(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BFF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003AA014(a1, v4, v5, v7, v6);
}

id sub_1003C006C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(unsigned __int8 *, Swift::String *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[4];
  v13 = *(v11 + 80);
  v17[4] = *(v11 + 64);
  v17[5] = v13;
  v18 = *(v11 + 96);
  v14 = *(v11 + 16);
  v17[0] = *v11;
  v17[1] = v14;
  v15 = *(v11 + 48);
  v17[2] = *(v11 + 32);
  v17[3] = v15;
  result = sub_10039A1E0(*a1, v17, v10, v12, a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1003C00DC()
{

  return swift_deallocObject();
}

uint64_t sub_1003C0158()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003C0198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AC6AC(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003C02A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003C02EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A89B0(a1, v4, v5, v7, v6);
}

uint64_t sub_1003C03E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003C0454(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + v7);
  v10 = *v9;
  v11 = (v3 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = v9[1];

  return a3(a1, v3 + v6, v10, v14, v12, v13);
}

char *sub_1003C0518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_100009F78(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1003C0664(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), unint64_t *a5, void *a6)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a6;
    v9 = a5;
    v13 = a4;
    v10 = a3;
    v11 = a2;
    v12 = a1;
    v14 = *v8;
    v15 = *v8 >> 62;
    if (!v15)
    {
      result = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  v17 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = 1 - v17;
  if (__OFSUB__(1, v17))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = __OFADD__(v19, v18);
  result = (v19 + v18);
  if (!v20)
  {
    v13(result, 1);
    return sub_1003C0518(v12, v11, 1, v10, v9, v7);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003C07D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1003C08A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Notification() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_10039BFFC(a1, v7, v8, v9, v2 + v6);
}

uint64_t sub_1003C0998()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1003C0AB4(unint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(__int128 *), double a5)
{
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  sub_10039F7F0(*(v5 + 16), *(v5 + 24), *(v5 + 32), v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3, a5, a4);
}

uint64_t sub_1003C0C14()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1003C0CD8()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  sub_100390DD8(v2, v3, v4);
}

uint64_t sub_1003C0D3C()
{
  v1 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10038F7A0(v2);
}

unint64_t sub_1003C0D9C(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10038F860(a1, v7, v1 + v4, v8);
}

unint64_t sub_1003C0E84()
{
  result = qword_10118D288;
  if (!qword_10118D288)
  {
    sub_1001109D0(&qword_10118D280, &qword_100EC8FA0);
    sub_10003D8C4(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    sub_10003D8C4(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D288);
  }

  return result;
}

uint64_t sub_1003C0F80(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Folder() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for IndexPath();
  v13 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1 + v5;
  v8 = *(v1 + v5);
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_10038C6AC(a1, v14, v13, v6, v1 + v4, v8, v9, v10);
}

uint64_t sub_1003C1128(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Folder() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10038D184(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1003C12B8()
{
  result = qword_10118D2D8;
  if (!qword_10118D2D8)
  {
    sub_1001109D0(&qword_10118D2D0, &unk_100EC9038);
    sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    sub_10003D8C4(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D2D8);
  }

  return result;
}

unint64_t sub_1003C13C8()
{
  result = qword_101193C30;
  if (!qword_101193C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193C30);
  }

  return result;
}

uint64_t sub_1003C14B0()
{
  v1 = *(sub_10010FC20(&unk_101182900, &qword_100EBE240) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10038164C(v2, v3, v4, v5);
}

double sub_1003C1524()
{
  v1 = *(sub_10010FC20(&unk_101182900, &qword_100EBE240) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003821F0(v2, v3);
}

void sub_1003C1594(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_101182900, &qword_100EBE240) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1003825F4(a1, v4, v5, v6);
}

unint64_t sub_1003C1614()
{
  result = qword_10118D3B8;
  if (!qword_10118D3B8)
  {
    sub_1001109D0(&unk_10118CEC0, &unk_100EE0420);
    sub_10003D8C4(&unk_10118D3C0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D3B8);
  }

  return result;
}

uint64_t sub_1003C16C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C1730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C1790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C18D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 && (v3 = MPCPlayerResponse.playingModelObject.getter()) != 0)
  {
    v4 = v3;
    v5 = [v3 identifiers];

    if (!v2)
    {
LABEL_10:
      v8 = 0;
      if (v5)
      {
        goto LABEL_11;
      }

LABEL_8:
      if (!v8)
      {
        return 1;
      }

      v9 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v6 = MPCPlayerResponse.playingModelObject.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 identifiers];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v8)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v9 = [v5 intersectsSet:v8];

LABEL_13:
  v5 = v8;
LABEL_15:

  return v9;
}

void sub_1003C19C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10001C32C();
  }
}

uint64_t sub_1003C1A14()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 artist];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 name];

      if (v4)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v47[0] = v6;
    }

    else
    {
      v47[0] = 0;
    }

    v15 = [v1 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = 0;
    v47[1] = v17;
    v47[2] = v19;
    v21 = _swiftEmptyArrayStorage;
LABEL_16:
    v22 = &v47[2 * v20];
    while (++v20 != 3)
    {
      v23 = v22 + 2;
      v24 = *v22;
      v22 += 2;
      if (v24)
      {
        v25 = *(v23 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100498B7C(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_100498B7C((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[16 * v27];
        *(v28 + 4) = v25;
        *(v28 + 5) = v24;
        goto LABEL_16;
      }
    }

LABEL_43:
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    swift_arrayDestroy();
    v47[3] = v21;
    sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
    sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
    v32 = BidirectionalCollection<>.joined(separator:)();

    return v32;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 show];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 title];

      if (v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v48 = v12;
      v49[0] = v14;
    }

    else
    {
      v48 = 0;
      v49[0] = 0;
    }

    v33 = [v8 title];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = 0;
    v49[1] = v35;
    v49[2] = v37;
    v21 = _swiftEmptyArrayStorage;
LABEL_35:
    v39 = &v49[2 * v38];
    while (++v38 != 3)
    {
      v40 = v39 + 2;
      v41 = *v39;
      v39 += 2;
      if (v41)
      {
        v42 = *(v40 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100498B7C(0, *(v21 + 2) + 1, 1, v21);
        }

        v44 = *(v21 + 2);
        v43 = *(v21 + 3);
        if (v44 >= v43 >> 1)
        {
          v21 = sub_100498B7C((v43 > 1), v44 + 1, 1, v21);
        }

        *(v21 + 2) = v44 + 1;
        v45 = &v21[16 * v44];
        *(v45 + 4) = v42;
        *(v45 + 5) = v41;
        goto LABEL_35;
      }
    }

    goto LABEL_43;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    return 0;
  }

  v30 = [v29 title];
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v32;
}

id sub_1003C1E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003C1F00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A0F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for LibraryArtistHeaderView(uint64_t a1)
{
  result = qword_10118D570;
  if (!qword_10118D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C1FC8(uint64_t a1)
{
  type metadata accessor for Artist();
  if (v1 <= 0x3F)
  {
    sub_100237820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003C2070@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118D5B0, &qword_100EC92D0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v7 = (&v16 - v6);
  type metadata accessor for LibraryArtistHeaderView(0);
  sub_10056CAE4(v7);
  v8 = sub_1003C354C(v7);
  sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = sub_10010FC20(&qword_10118D5B8, &qword_100EC92D8);
  sub_1003C22BC(v1, &v5[*(v9 + 44)], v8);
  if (qword_10117F668 != -1)
  {
    swift_once();
  }

  v10 = qword_10118D508;
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(v3 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;

  static Font.Weight.bold.getter();
  sub_1003C3904();
  View.fontWeight(_:)();
  sub_1000095E8(v5, &qword_10118D5B0, &qword_100EC92D0);
  LODWORD(v10) = static HierarchicalShapeStyle.primary.getter();
  *(a1 + *(sub_10010FC20(&qword_10118D5D8, &qword_100EC9320) + 36)) = v10;
  v13 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10118D5E0, &qword_100EC9358);
  v15 = a1 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = 1;
  return result;
}

uint64_t sub_1003C22BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v97 = a1;
  v96 = a2;
  v94 = sub_10010FC20(&qword_10118D5E8, &unk_100EC9360);
  __chkstk_darwin();
  v95 = (v75 - v4);
  v83 = type metadata accessor for BorderlessButtonStyle();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[0] = *(type metadata accessor for LibraryArtistHeaderView(0) - 8);
  __chkstk_darwin();
  v75[1] = v6;
  v76 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10010FC20(&qword_101180F78, &qword_100EBCA90);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = v75 - v7;
  v91 = sub_10010FC20(&qword_10118D5F0, &qword_100EC9370);
  __chkstk_darwin();
  v80 = v75 - v8;
  sub_10010FC20(&qword_10118D5F8, &unk_100EC9378);
  __chkstk_darwin();
  v93 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = v75 - v10;
  v11 = type metadata accessor for ArtworkImage.ReusePolicy();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v16 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v18 = v75 - v17;
  v19 = sub_10010FC20(&qword_10118D600, &qword_100EC9388);
  __chkstk_darwin();
  v21 = v75 - v20;
  v85 = sub_10010FC20(&qword_10118D608, &qword_100EC9390);
  v86 = *(v85 - 8);
  __chkstk_darwin();
  v23 = v75 - v22;
  v88 = sub_10010FC20(&qword_10118D610, &qword_100EC9398);
  v89 = *(v88 - 8);
  __chkstk_darwin();
  v84 = v75 - v24;
  v87 = sub_10010FC20(&qword_10118D618, &unk_100EC93A0) - 8;
  __chkstk_darwin();
  v90 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v75 - v26;
  v28 = type metadata accessor for Artist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v28, &protocol witness table for Artist, v18);
  v29 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v29 - 8) + 56))(v16, 7, 11, v29);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(a3, 0, a3, 0, 0, 1, 2, v100);
  (*(v12 + 104))(v14, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v11);
  v30 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v18, v16, v100, v14, v21);
  (*(v12 + 8))(v14, v11, v30);
  sub_100172200(v16);
  sub_1000095E8(v18, &unk_10118A5E0, &unk_100EBCD90);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = &v21[*(sub_10010FC20(&qword_10118D620, &qword_100EC93B0) + 36)];
  v32 = v100[4];
  *v31 = v100[3];
  *(v31 + 1) = v32;
  *(v31 + 2) = v100[5];
  v33 = &v21[*(v19 + 36)];
  *v33 = 0;
  *(v33 + 4) = 257;
  v34 = sub_1003C39E8();
  View.corner(_:)(0, 0, 2, v19, v34);
  sub_1000095E8(v21, &qword_10118D600, &qword_100EC9388);
  v35 = Border.artwork.unsafeMutableAddressor();
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = *(v35 + 16);

  *&v101[0] = v19;
  *(&v101[0] + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v84;
  v41 = v85;
  View.border(_:corner:)(v36, v38, 0, 0, 2, v85, OpaqueTypeConformance2, v37);

  (*(v86 + 8))(v23, v41);
  v42 = Shadow.shallow.unsafeMutableAddressor();
  v43 = v42[4];
  v44 = *(v42 + 1);
  v101[0] = *v42;
  v101[1] = v44;
  v102 = v43;

  v98 = v41;
  v99 = OpaqueTypeConformance2;
  v45 = v97;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v88;
  View.shadow(_:corner:)(v101, 0, 0, 2, v88, v46);
  sub_1003C3B18(v101);
  (*(v89 + 8))(v40, v47);
  LOBYTE(v47) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v48 = &v27[*(v87 + 44)];
  *v48 = v47;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  Artist.catalogID.getter();
  if (v53)
  {

    v54 = v76;
    sub_1003C3CE4(v45, v76);
    v55 = (*(v75[0] + 80) + 16) & ~*(v75[0] + 80);
    v56 = swift_allocObject();
    sub_1003C3D48(v54, v56 + v55);
    __chkstk_darwin();
    v75[-2] = v45;
    v57 = v77;
    Button.init(action:label:)();
    v58 = v81;
    BorderlessButtonStyle.init()();
    sub_100020674(&qword_101180F70, &qword_101180F78, &qword_100EBCA90, &protocol conformance descriptor for Button<A>);
    sub_1003C3FA4(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v59 = v80;
    v60 = v79;
    v61 = v83;
    View.buttonStyle<A>(_:)();
    (*(v82 + 8))(v58, v61);
    (*(v78 + 8))(v57, v60);
    v62 = (v59 + *(v91 + 36));
    sub_10010FC20(&qword_10118D648, &qword_100EC93B8);
    static ButtonBorderShape.roundedRectangle.getter();
    *v62 = swift_getKeyPath();
    sub_1000089F8(v59, v95, &qword_10118D5F0, &qword_100EC9370);
    swift_storeEnumTagMultiPayload();
    sub_1003C3B6C();
    v63 = v92;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v59, &qword_10118D5F0, &qword_100EC9370);
  }

  else
  {
    v98 = Artist.name.getter();
    v99 = v64;
    sub_100009838();
    v65 = Text.init<A>(_:)();
    v66 = v95;
    *v95 = v65;
    v66[1] = v67;
    *(v66 + 16) = v68 & 1;
    v66[3] = v69;
    swift_storeEnumTagMultiPayload();
    sub_1003C3B6C();
    v63 = v92;
    _ConditionalContent<>.init(storage:)();
  }

  v70 = v90;
  sub_1000089F8(v27, v90, &qword_10118D618, &unk_100EC93A0);
  v71 = v93;
  sub_1000089F8(v63, v93, &qword_10118D5F8, &unk_100EC9378);
  v72 = v96;
  sub_1000089F8(v70, v96, &qword_10118D618, &unk_100EC93A0);
  v73 = sub_10010FC20(&qword_10118D650, &unk_100EC93C0);
  sub_1000089F8(v71, v72 + *(v73 + 48), &qword_10118D5F8, &unk_100EC9378);
  sub_1000095E8(v63, &qword_10118D5F8, &unk_100EC9378);
  sub_1000095E8(v27, &qword_10118D618, &unk_100EC93A0);
  sub_1000095E8(v71, &qword_10118D5F8, &unk_100EC9378);
  return sub_1000095E8(v70, &qword_10118D618, &unk_100EC93A0);
}

double sub_1003C3004(uint64_t a1)
{
  v2 = (type metadata accessor for LibraryArtistHeaderView(0) - 8);
  v3 = *v2;
  v4 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v16[-v6];
  sub_10012B7A8(a1 + v2[7], v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v16);
  if (Strong)
  {
    v10 = sub_10003169C();

    if (v10)
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_1003C3CE4(a1, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      type metadata accessor for MainActor();

      v12 = static MainActor.shared.getter();
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = &protocol witness table for MainActor;
      sub_1003C3D48(v5, v15 + v13);
      *(v15 + v14) = v10;
      sub_1001F4CB8(0, 0, v7, &unk_100EC9410, v15);
    }
  }

  return result;
}

uint64_t sub_1003C3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001AB600;

  return sub_100136860(a5);
}

double sub_1003C32E0@<D0>(uint64_t a2@<X8>)
{
  *&v16 = Artist.name.getter();
  *(&v16 + 1) = v3;
  sub_100009838();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_10028EC98();
  if (qword_10117F670 != -1)
  {
    swift_once();
  }

  v11 = static UIFont.preferredFont(forTextStyle:weight:)();
  v12 = [objc_opt_self() configurationWithFont:v11 scale:1];

  static HierarchicalShapeStyle.secondary.getter();
  Text.withChevron<A>(_:tintColor:)(v12, v4, v6, v8 & 1, v10, &v16);

  sub_10011895C(v4, v6, v8 & 1);

  v13 = v17;
  v14 = v18;
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1003C3448()
{
  result = static Font.title.getter();
  qword_10118D508 = result;
  return result;
}

uint64_t sub_1003C3484(uint64_t a1)
{
  type metadata accessor for ButtonBorderShape();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues._buttonBorderShape.setter();
}

double sub_1003C354C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101185768, &qword_100EDBB70) - 8;
  __chkstk_darwin();
  v8 = &v20 - v7;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v20 - v12;
  (*(v3 + 104))(&v20 - v12, enum case for UserInterfaceSizeClass.regular(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_1003C3F34(a1, v8);
  sub_1003C3F34(v13, &v8[v14]);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) != 1)
  {
    sub_1003C3F34(v8, v10);
    if (v15(&v8[v14], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v8[v14], v2);
      sub_1003C3FA4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v3 + 8);
      v19(v5, v2);
      sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
      v19(v10, v2);
      sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
      if (v18)
      {
        return 120.0;
      }

      return 86.0;
    }

    sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_1000095E8(v8, &qword_101185768, &qword_100EDBB70);
    return 86.0;
  }

  sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
  if (v15(&v8[v14], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
  return 120.0;
}

unint64_t sub_1003C3904()
{
  result = qword_10118D5C0;
  if (!qword_10118D5C0)
  {
    sub_1001109D0(&qword_10118D5B0, &qword_100EC92D0);
    sub_100020674(&qword_10118D5C8, &qword_10118D5D0, &unk_100EC9310, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D5C0);
  }

  return result;
}

unint64_t sub_1003C39E8()
{
  result = qword_10118D628;
  if (!qword_10118D628)
  {
    sub_1001109D0(&qword_10118D600, &qword_100EC9388);
    sub_1003C3A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D628);
  }

  return result;
}

unint64_t sub_1003C3A74()
{
  result = qword_10118D630;
  if (!qword_10118D630)
  {
    sub_1001109D0(&qword_10118D620, &qword_100EC93B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D630);
  }

  return result;
}

unint64_t sub_1003C3B6C()
{
  result = qword_10118D638;
  if (!qword_10118D638)
  {
    sub_1001109D0(&qword_10118D5F0, &qword_100EC9370);
    sub_1001109D0(&qword_101180F78, &qword_100EBCA90);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_101180F70, &qword_101180F78, &qword_100EBCA90, &protocol conformance descriptor for Button<A>);
    sub_1003C3FA4(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10118D640, &qword_10118D648, &qword_100EC93B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D638);
  }

  return result;
}

uint64_t sub_1003C3CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryArtistHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryArtistHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1003C3DAC()
{
  v1 = *(type metadata accessor for LibraryArtistHeaderView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003C3004(v2);
}

uint64_t sub_1003C3E14(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryArtistHeaderView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003C3224(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003C3F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003C3FEC()
{
  result = qword_10118D658;
  if (!qword_10118D658)
  {
    sub_1001109D0(&qword_10118D5E0, &qword_100EC9358);
    sub_1003C40A4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D658);
  }

  return result;
}

unint64_t sub_1003C40A4()
{
  result = qword_10118D660;
  if (!qword_10118D660)
  {
    sub_1001109D0(&qword_10118D5D8, &qword_100EC9320);
    sub_1001109D0(&qword_10118D5B0, &qword_100EC92D0);
    sub_1003C3904();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D660);
  }

  return result;
}

void sub_1003C41C4()
{
  v13.receiver = v0;
  v13.super_class = _s19NavigationTitleViewCMa(0);
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView];
  v2 = v0[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *v1;
    [v0 bounds];
    [v4 sizeThatFits:{v5, v6}];
    v9 = CGRect.centeringAlong(axes:in:)(0.0, 0.0, v7, v8);
    UIView.untransformedFrame.setter(v9, v10, v11, v12);
    sub_10004ADFC(v3, v2);
  }
}

void sub_1003C4400(uint64_t a1)
{
  sub_1003C48EC(319, &qword_10118D6B8, _s19NavigationTitleViewC7ContentOMa);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1003C4658(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003C47A4(uint64_t a1)
{
  type metadata accessor for Artwork();
  if (v1 <= 0x3F)
  {
    sub_1003C48EC(319, &qword_101182208, &type metadata accessor for Artwork.CropStyle);
    if (v2 <= 0x3F)
    {
      sub_1003C4940(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003C48EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1003C4940(uint64_t a1)
{
  if (!qword_10119E2E0)
  {
    sub_1001109D0(&qword_101181A00, &qword_100EC94D0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10119E2E0);
    }
  }
}

uint64_t sub_1003C49A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1003C49EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C4A5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C4A7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 384) = v3;
  return result;
}

void sub_1003C4B38(uint64_t a1)
{
  sub_1003C4BA0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1003C4BA0(uint64_t a1)
{
  if (!qword_10118D7B0)
  {
    type metadata accessor for Artwork();
    sub_1001109D0(&unk_101184060, &qword_100EBDF50);
    sub_1001109D0(&unk_10118D7B8, qword_100EC95B8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10118D7B0);
    }
  }
}

uint64_t sub_1003C4C44(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_1003C4CA4();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_1003C4CA4()
{
  result = qword_101197A30;
  if (!qword_101197A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101197A30);
  }

  return result;
}

uint64_t sub_1003C4CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  __chkstk_darwin();
  v64 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_10010FC20(&qword_10118D7E8, &qword_100EC9610);
  __chkstk_darwin();
  v67 = &v59[-v7];
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v65 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v70 = &v59[-v9];
  __chkstk_darwin();
  v11 = &v59[-v10];
  v12 = type metadata accessor for Artwork();
  v72 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v71 = &v59[-v15];
  _s19NavigationTitleViewC7ContentOMa(0);
  __chkstk_darwin();
  v17 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v19 = &v59[-v18];
  sub_10010FC20(&qword_10118D7F0, &qword_100EC9618);
  __chkstk_darwin();
  v21 = &v59[-v20];
  v23 = &v59[*(v22 + 56) - v20];
  sub_1003C555C(a1, &v59[-v20]);
  sub_1003C555C(a2, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003C555C(v21, v19);
    v28 = sub_10010FC20(&qword_10118D7F8, &qword_100EC9620);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v31 = *&v19[v30];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1000095E8(&v19[v29], &unk_101184060, &qword_100EBDF50);
      (*(v72 + 8))(v19, v12);
      goto LABEL_11;
    }

    v62 = *(v23 + v30);
    v63 = v31;
    v32 = *(v72 + 32);
    v33 = v12;
    v34 = v71;
    v32(v71, v19, v33);
    v32(v14, v23, v33);
    v35 = &v19[v29];
    v36 = v11;
    sub_1003C561C(v35, v11);
    v37 = v70;
    sub_1003C561C(v23 + v29, v70);
    if (static Artwork.== infix(_:_:)())
    {
      v61 = v14;
      v38 = v33;
      v39 = *(v66 + 48);
      v40 = v36;
      v41 = v36;
      v42 = v67;
      sub_1003C568C(v41, v67);
      sub_1003C568C(v37, &v42[v39]);
      v43 = v68;
      v44 = *(v69 + 48);
      if (v44(v42, 1, v68) == 1)
      {
        sub_1000095E8(v37, &unk_101184060, &qword_100EBDF50);
        sub_1000095E8(v40, &unk_101184060, &qword_100EBDF50);
        v45 = *(v72 + 8);
        v45(v61, v38);
        v45(v71, v38);
        if (v44(&v42[v39], 1, v43) == 1)
        {
          sub_1000095E8(v42, &unk_101184060, &qword_100EBDF50);
          v46 = v62;
          v47 = v63;
          goto LABEL_24;
        }
      }

      else
      {
        v66 = v40;
        v49 = v65;
        sub_1003C568C(v42, v65);
        if (v44(&v42[v39], 1, v43) != 1)
        {
          v52 = v69;
          v53 = &v42[v39];
          v54 = v64;
          (*(v69 + 32))(v64, v53, v43);
          sub_1003C56FC();
          v60 = dispatch thunk of static Equatable.== infix(_:_:)();
          v55 = *(v52 + 8);
          v55(v54, v43);
          sub_1000095E8(v70, &unk_101184060, &qword_100EBDF50);
          sub_1000095E8(v66, &unk_101184060, &qword_100EBDF50);
          v56 = *(v72 + 8);
          v56(v61, v38);
          v56(v71, v38);
          v55(v65, v43);
          sub_1000095E8(v42, &unk_101184060, &qword_100EBDF50);
          v46 = v62;
          v47 = v63;
          if ((v60 & 1) == 0)
          {

LABEL_30:

            goto LABEL_31;
          }

LABEL_24:
          if (v47)
          {
            if (v46)
            {
              v57 = v46;

              v27 = v47 == v57;
LABEL_32:
              sub_1003C55C0(v21);
              return v27 & 1;
            }
          }

          else if (!v46)
          {
            v27 = 1;
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v50 = v49;
        sub_1000095E8(v70, &unk_101184060, &qword_100EBDF50);
        sub_1000095E8(v66, &unk_101184060, &qword_100EBDF50);
        v51 = *(v72 + 8);
        v51(v61, v38);
        v51(v71, v38);
        (*(v69 + 8))(v50, v43);
      }

      sub_1000095E8(v42, &qword_10118D7E8, &qword_100EC9610);
    }

    else
    {

      sub_1000095E8(v37, &unk_101184060, &qword_100EBDF50);
      sub_1000095E8(v11, &unk_101184060, &qword_100EBDF50);
      v48 = *(v72 + 8);
      v48(v14, v33);
      v48(v34, v33);
    }

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  sub_1003C555C(v21, v17);
  v24 = *v17;
  v25 = v17[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v24 == *v23 && v25 == v23[1])
    {
      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_32;
  }

LABEL_11:
  sub_1000095E8(v21, &qword_10118D7F0, &qword_100EC9618);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1003C555C(uint64_t a1, uint64_t a2)
{
  v4 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C55C0(uint64_t a1)
{
  v2 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C568C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C56FC()
{
  result = qword_10118D800;
  if (!qword_10118D800)
  {
    type metadata accessor for Artwork.CropStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D800);
  }

  return result;
}

void sub_1003C5754()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_content;
  v2 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_isContentVisible) = 0;
  v3 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView;
  *v3 = 0;
  *(v3 + 8) = -1;
  v4 = OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_animationSpecs;
  v5 = *&CATransform3DIdentity.m33;
  *&__src[0].m31 = *&CATransform3DIdentity.m31;
  *&__src[0].m33 = v5;
  v6 = *&CATransform3DIdentity.m43;
  *&__src[0].m41 = *&CATransform3DIdentity.m41;
  *&__src[0].m43 = v6;
  v7 = *&CATransform3DIdentity.m13;
  *&__src[0].m11 = *&CATransform3DIdentity.m11;
  *&__src[0].m13 = v7;
  v8 = *&CATransform3DIdentity.m23;
  *&__src[0].m21 = *&CATransform3DIdentity.m21;
  *&__src[0].m23 = v8;
  CATransform3DMakeScale(&__src[1], 1.1, 1.1, 1.0);
  CATransform3DMakeScale(&__src[2], 0.8, 0.8, 1.0);
  memcpy((v0 + v4), __src, 0x180uLL);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_activeAnimator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003C58A4()
{
  v1 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithImage:0];
  v2 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkShadowView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_cropStyle;
  v4 = type metadata accessor for Artwork.CropStyle();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs;
  v6 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v6, v15, 0.4, 6.0, 0.0, 2.0);
  *v5 = vdupq_n_s64(0x4044800000000000uLL);
  v7 = v15[1];
  *(v5 + 24) = v15[0];
  *(v5 + 16) = 0x401C000000000000;
  *(v5 + 40) = v7;
  *(v5 + 56) = v16;
  __asm { FMOV            V0.2D, #4.0 }

  *(v5 + 64) = _Q0;
  *(v5 + 80) = _Q0;
  v13 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkLoader;
  v14 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003C5B84(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CPUIGridViewBaseStyleUtil();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003C5BDC(uint64_t a1)
{
  v2 = 0xE900000000000064;
  v3 = [swift_getObjCClassFromMetadata() reuseIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 0xE400000000000000;
      v5 = 1869768008;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v5 = 0x6972476567616D49;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (!a1)
  {
    v5 = 0x65736E65646E6F43;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xEA00000000006469;
  v5 = 0x7247657261757153;
LABEL_11:

  v6._countAndFlagsBits = v5;
  v6._object = v2;
  String.append(_:)(v6);

  return v4;
}

double sub_1003C5D60(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = v2;
    sub_1003C8E30(v2);
  }

  return result;
}

double sub_1003C5DC4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "User capabilities change: clearing Now Playing state and scheduling timeline reload", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_100670420(&off_10109A9F0);
    sub_1003C6340(v11);
  }

  return result;
}

uint64_t sub_1003C5F9C()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v18 = &v18 - v0;
  sub_10010FC20(&qword_10118DA20, &qword_100EDF7F0);
  __chkstk_darwin();
  v2 = &v18 - v1;
  type metadata accessor for WidgetRecommendationDiskCache(0);
  v3 = __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FA58 != -1)
  {
    swift_once();
  }

  v6 = 0;
  v7 = qword_101219170;
  v8 = OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache;
  do
  {
    v9 = *(&off_10109AA18 + v6++ + 32);
    sub_1003C9F84(v7 + v8, v5, v3);
    v10 = type metadata accessor for WidgetMusicRecommendation(0);
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    v19 = v9;
    v11 = String.init<A>(describing:)();
    sub_100713D34(v11, v12, v2);

    sub_1000095E8(v2, &qword_10118DA20, &qword_100EDF7F0);
    sub_1003C9FE8(v5, v13);
  }

  while (v6 != 6);
  v14 = type metadata accessor for TaskPriority();
  v15 = v18;
  (*(*(v14 - 8) + 56))(v18, 1, 1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_10035EB10(0, 0, v15, &unk_100EC9788, v16);

  return sub_1000095E8(v15, &unk_101181520, &qword_100EBCC60);
}

uint64_t sub_1003C627C()
{
  if (qword_10117FC70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100719F38();
}

double sub_1003C6340(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v17 - v4;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    sub_1003C9C94();
    v10 = Set.description.getter();
    v12 = sub_1000105AC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scheduling timeline update for reasons: %{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  if (*(v2 + 56))
  {

    Task.cancel()();
  }

  v13 = *(v2 + 64);

  *(v2 + 64) = sub_1003C65D4(a1, v13);

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = 0x3FE0000000000000;
  v15[5] = v2;

  *(v2 + 56) = sub_1001F4CB8(0, 0, v5, &unk_100EC9748, v15);

  return result;
}

uint64_t sub_1003C65D4(uint64_t result, uint64_t a2)
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
  for (i = (v5 + 63) >> 6; v7; result = sub_1003B42E4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
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

uint64_t sub_1003C66B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1003C6774, 0, 0);
}

uint64_t sub_1003C6774(__n128 a1)
{
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  v5[1] = sub_1003C6850;

  return sub_10062A46C(v2, v4, 0, 0, 1);
}

uint64_t sub_1003C6850()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003CA1F8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1003C69E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003C69E8(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v2 = *(v1 + 24);

    sub_1003C90C8(v3);

    *(v2 + 64) = &_swiftEmptySetSingleton;
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1003C6A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v7;
  v5[17] = v6;

  return _swift_task_switch(sub_1003C6B54, v7, v6);
}

uint64_t sub_1003C6B54()
{
  v103 = v0;
  *(v0 + 144) = OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 88);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v98 = v5;
    *v4 = 136446210;
    v6 = *(v3 + 40);
    *(v0 + 80) = v6;
    v7 = v6;
    sub_10010FC20(&qword_10118DA00, &qword_100EC9738);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v98);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received new player response %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v11 = *(v0 + 88);
  v12 = *(v11 + 40);
  if (!v12 || (v13 = &selRef_trackNumber, v14 = [v12 tracklist], v15 = objc_msgSend(v14, "playingItem"), v14, !v15) || (v16 = objc_msgSend(v15, "isPlaceholder"), v15, (v16 & 1) != 0))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Received placeholder: clearing Now Playing state and scheduling timeline reload", v19, 2u);
    }

    if (qword_10117F6C0 != -1)
    {
      swift_once();
    }

    sub_1004115BC();
    v20 = sub_100670420(&off_10109A9F0);
    sub_1003C6340(v20);

LABEL_11:

    v21 = *(v0 + 8);

    return v21();
  }

  *(v0 + 72) = &_swiftEmptySetSingleton;
  v23 = *(v11 + 40);
  v24 = *(v0 + 96);
  if (v23)
  {
    v25 = [v23 state];
    if (v24)
    {
      v26 = 0;
      if (v25 == [*(v0 + 96) state])
      {
        v27 = *(v11 + 40);
        if (!v27)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    if (!v24)
    {
      v32 = 0;
      v31 = 0;
      v49 = 0;
      v50 = 0uLL;
      v51 = 0.0;
      v33 = 1;
      goto LABEL_67;
    }

    [*(v0 + 96) state];
    v26 = 0;
  }

  sub_1003B42E4(&v98, 3);
  v27 = *(v11 + 40);
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_23:
  v28 = [v27 tracklist];
  v29 = [v28 playingItem];

  if (v29)
  {
    v30 = [v29 metadataObject];

    if (v30)
    {
      v31 = [v30 innermostModelObject];

      if (v26)
      {
        v32 = 0;
        v33 = 1;
        goto LABEL_33;
      }

LABEL_29:
      v34 = [*(v0 + 96) tracklist];
      v35 = [v34 playingItem];

      if (v35 && (v36 = [v35 metadataObject], v35, v36))
      {
        v32 = [v36 innermostModelObject];

        v33 = 0;
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

LABEL_33:
      *(v0 + 152) = v32;
      *(v0 + 232) = v33;
      if (v31)
      {
        v37 = v31;
        v38 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
        v39 = MPModelObject.bestIdentifier(for:)(*v38, 1u);
        v41 = v40;

        if (!v32)
        {
          if (!v41)
          {
            if (MPModelObject.favoriteStatus.getter() == 4)
            {
              v32 = 0;
LABEL_62:
              v13 = &selRef_trackNumber;
              goto LABEL_63;
            }

LABEL_49:
            *(v0 + 160) = v31;
            sub_1003B42E4(&v98, 1);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v52 = *(v11 + 40);
            if (v52)
            {
              v53 = v52;
              v54 = sub_1003C8608();
            }

            else
            {
              v54 = 0;
            }

            *(v0 + 168) = v54;
            v55 = swift_task_alloc();
            *(v0 + 176) = v55;
            *v55 = v0;
            v55[1] = sub_1003C7778;

            return sub_100412500(v31, v54);
          }

          goto LABEL_48;
        }

        v42 = v41;
      }

      else
      {
        v42 = 0;
        v39 = 0;
        if (!v32)
        {
          v31 = 0;
          v32 = 0;
          v13 = &selRef_trackNumber;
          goto LABEL_63;
        }
      }

      v43 = v32;
      v44 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      v45 = MPModelObject.bestIdentifier(for:)(*v44, 1u);
      v47 = v46;

      if (v42)
      {
        if (v47)
        {
          if (v39 == v45 && v42 == v47)
          {

            if (!v31)
            {
LABEL_42:
              v48 = MPModelObject.favoriteStatus.getter();
LABEL_61:
              if (v48 == 4)
              {
                goto LABEL_62;
              }

              goto LABEL_49;
            }

LABEL_60:
            v57 = MPModelObject.favoriteStatus.getter();
            v58 = MPModelObject.favoriteStatus.getter();
            v48 = v58;
            if (v57 != 4)
            {
              if (v58 != 4 && (sub_1003C9AA0(v57, v58) & 1) != 0)
              {
                goto LABEL_62;
              }

              goto LABEL_49;
            }

            goto LABEL_61;
          }

          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v56 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_59:
          if (!v31)
          {
            goto LABEL_42;
          }

          goto LABEL_60;
        }
      }

      else if (!v47)
      {
        goto LABEL_59;
      }

LABEL_48:

      goto LABEL_49;
    }
  }

LABEL_27:
  v31 = 0;
  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  v33 = 1;
  v32 = 0;
LABEL_63:
  v59 = *(*(v0 + 88) + 40);
  v50 = 0uLL;
  v51 = 0.0;
  if (v59)
  {
    v60 = [v59 v13[2]];
    v61 = [v60 playingItem];

    if (v61)
    {
      [v61 duration];
      v51 = *&v98;
      v96 = v100;
      v97 = v99;
      v49 = v101;
      v62 = v102;

      v63 = v96;
      v50 = v97;
    }

    else
    {
      v49 = 0;
      v62 = 2;
      v63 = 0uLL;
      v50 = 0uLL;
    }

    goto LABEL_69;
  }

  v49 = 0;
LABEL_67:
  v62 = 2;
  v63 = 0uLL;
LABEL_69:
  *(v0 + 233) = v33;
  *(v0 + 184) = v32;
  *(v0 + 192) = v31;
  *(v0 + 16) = v51;
  *(v0 + 24) = v50;
  *(v0 + 40) = v63;
  *(v0 + 56) = v49;
  *(v0 + 64) = v62;
  if ((v33 & 1) != 0 || (v64 = [*(v0 + 96) v13[2]], v65 = objc_msgSend(v64, "playingItem"), v64, !v65))
  {
    if (v62 == 2)
    {
      v67 = *(*(v0 + 88) + 40);
      v68 = *(v0 + 233);
      if (v67)
      {
        goto LABEL_77;
      }

      if (*(v0 + 233))
      {
        v72 = 0;
        v73 = 0;
        goto LABEL_103;
      }

      goto LABEL_95;
    }
  }

  else
  {
    [v65 duration];
    v66 = *&v98;

    if (v62 != 2 && v51 == v66)
    {
      v67 = *(*(v0 + 88) + 40);
      if (v67)
      {
        v68 = *(v0 + 233);
LABEL_77:
        v69 = v67;
        v70 = sub_1003C8608();

        if (v68)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          if (!v70)
          {
            goto LABEL_103;
          }

          goto LABEL_86;
        }

        v71 = sub_1003C8608();
        if (v70)
        {
LABEL_86:
          v75 = v70;
          v76 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v77 = MPModelObject.bestIdentifier(for:)(*v76, 1u);
          v79 = v78;

          if (!v71)
          {
            v73 = 0;
            v72 = v70;
            if (!v79)
            {
              goto LABEL_103;
            }

            goto LABEL_110;
          }

          v72 = v70;
          v80 = v79;
LABEL_97:
          v81 = v71;
          v82 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v83 = MPModelObject.bestIdentifier(for:)(*v82, 1u);
          v85 = v84;

          if (v80)
          {
            if (v85)
            {
              if (v77 == v83 && v80 == v85)
              {

                goto LABEL_104;
              }

              v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v95)
              {
LABEL_104:

                v86 = *(v0 + 72);
                if (*(v86 + 16))
                {
                  v88 = *(v0 + 184);
                  v87 = *(v0 + 192);
                  sub_1003C6340(v86);
                }

                else
                {

                  v89 = Logger.logObject.getter();
                  v90 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v89, v90))
                  {
                    v91 = swift_slowAlloc();
                    *v91 = 0;
                    _os_log_impl(&_mh_execute_header, v89, v90, "Skipping timeline update: nothing important changed", v91, 2u);
                  }

                  v93 = *(v0 + 184);
                  v92 = *(v0 + 192);
                }

                goto LABEL_11;
              }

              goto LABEL_111;
            }

            v70 = v72;
LABEL_110:

            v72 = v70;
LABEL_111:
            *(v0 + 208) = v72;
            *(v0 + 216) = v71;
            sub_1003B42E4(&v98, 0);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v94 = swift_task_alloc();
            *(v0 + 224) = v94;
            *v94 = v0;
            v94[1] = sub_1003C82FC;

            return sub_10041C458(v72);
          }

          v73 = v71;
          v70 = v72;
          if (v85)
          {
            goto LABEL_110;
          }

LABEL_103:
          v71 = v73;
          goto LABEL_104;
        }

LABEL_96:
        v72 = 0;
        v80 = 0;
        v77 = 0;
        v73 = 0;
        if (!v71)
        {
          goto LABEL_103;
        }

        goto LABEL_97;
      }

LABEL_95:
      v71 = sub_1003C8608();
      goto LABEL_96;
    }
  }

  sub_1003B42E4(&v98, 2);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v74 = swift_task_alloc();
  *(v0 + 200) = v74;
  *v74 = v0;
  v74[1] = sub_1003C7E5C;

  return sub_10041AB9C(v0 + 16);
}

uint64_t sub_1003C7778()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_1003C78B8, v4, v3);
}

uint64_t sub_1003C78B8()
{
  v49 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 232);
  v4 = *(*(v0 + 88) + 40);
  v5 = 0uLL;
  v6 = 0.0;
  if (v4)
  {
    v7 = [v4 tracklist];
    v8 = [v7 playingItem];

    if (v8)
    {
      [v8 duration];
      v6 = v44;
      v9 = v47;
      v10 = v48;

      v11 = v46;
      v5 = v45;
    }

    else
    {
      v9 = 0;
      v10 = 2;
      v11 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v9 = 0;
    v10 = 2;
    v11 = 0uLL;
  }

  *(v0 + 233) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 40) = v11;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  if ((v3 & 1) != 0 || (v12 = [*(v0 + 96) tracklist], v13 = objc_msgSend(v12, "playingItem"), v12, !v13))
  {
    if (v10 == 2)
    {
      v14 = *(*(v0 + 88) + 40);
      v15 = *(v0 + 233);
      if (v14)
      {
        goto LABEL_14;
      }

      if (*(v0 + 233))
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_37;
      }

      goto LABEL_29;
    }
  }

  else
  {
    [v13 duration];

    if (v10 != 2 && v6 == v44)
    {
      v14 = *(*(v0 + 88) + 40);
      if (v14)
      {
        v15 = *(v0 + 233);
LABEL_14:
        v16 = v14;
        v17 = sub_1003C8608();

        if (v15)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          if (!v17)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v18 = sub_1003C8608();
        if (v17)
        {
LABEL_23:
          v23 = v17;
          v24 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v25 = MPModelObject.bestIdentifier(for:)(*v24, 1u);
          v27 = v26;

          if (!v18)
          {
            v20 = 0;
            v19 = v17;
            if (!v27)
            {
              goto LABEL_37;
            }

            goto LABEL_47;
          }

          v19 = v17;
          v28 = v27;
LABEL_31:
          v29 = v18;
          v30 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v31 = MPModelObject.bestIdentifier(for:)(*v30, 1u);
          v33 = v32;

          if (v28)
          {
            if (v33)
            {
              if (v25 == v31 && v28 == v33)
              {

LABEL_38:

                v34 = *(v0 + 72);
                if (*(v34 + 16))
                {
                  v36 = *(v0 + 184);
                  v35 = *(v0 + 192);
                  sub_1003C6340(v34);

                  v37 = v18;
                  v18 = v19;
                  v19 = v36;
                }

                else
                {

                  v38 = Logger.logObject.getter();
                  v39 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v38, v39))
                  {
                    v40 = swift_slowAlloc();
                    *v40 = 0;
                    _os_log_impl(&_mh_execute_header, v38, v39, "Skipping timeline update: nothing important changed", v40, 2u);
                  }

                  v37 = *(v0 + 184);
                  v35 = *(v0 + 192);
                }

                v41 = *(v0 + 8);

                return v41();
              }

              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v43)
              {
                goto LABEL_38;
              }

              goto LABEL_48;
            }

            v17 = v19;
LABEL_47:

            v19 = v17;
LABEL_48:
            *(v0 + 208) = v19;
            *(v0 + 216) = v18;
            sub_1003B42E4(&v44, 0);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v42 = swift_task_alloc();
            *(v0 + 224) = v42;
            *v42 = v0;
            v42[1] = sub_1003C82FC;

            return sub_10041C458(v19);
          }

          v20 = v18;
          v17 = v19;
          if (v33)
          {
            goto LABEL_47;
          }

LABEL_37:
          v18 = v20;
          goto LABEL_38;
        }

LABEL_30:
        v19 = 0;
        v28 = 0;
        v25 = 0;
        v20 = 0;
        if (!v18)
        {
          goto LABEL_37;
        }

        goto LABEL_31;
      }

LABEL_29:
      v18 = sub_1003C8608();
      goto LABEL_30;
    }
  }

  sub_1003B42E4(&v44, 2);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1003C7E5C;

  return sub_10041AB9C(v0 + 16);
}

uint64_t sub_1003C7E5C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1003C7F7C, v3, v2);
}

uint64_t sub_1003C7F7C()
{
  v31 = v0;
  v1 = *(*(v0 + 88) + 40);
  v2 = *(v0 + 233);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1003C8608();

    if (v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    v5 = sub_1003C8608();
    if (v4)
    {
LABEL_8:
      v8 = v4;
      v9 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      v10 = MPModelObject.bestIdentifier(for:)(*v9, 1u);
      v12 = v11;

      if (v5)
      {
        v6 = v4;
        v13 = v12;
        goto LABEL_12;
      }

      v7 = 0;
      v6 = v4;
      if (v12)
      {
LABEL_30:

        v6 = v4;
        goto LABEL_31;
      }

LABEL_20:
      v5 = v7;
      goto LABEL_21;
    }
  }

  else
  {
    if (*(v0 + 233))
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_20;
    }

    v5 = sub_1003C8608();
  }

  v6 = 0;
  v13 = 0;
  v10 = 0;
  v7 = 0;
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = v5;
  v15 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
  v16 = MPModelObject.bestIdentifier(for:)(*v15, 1u);
  v18 = v17;

  if (!v13)
  {
    v7 = v5;
    v4 = v6;
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  if (!v18)
  {
    v4 = v6;
    goto LABEL_30;
  }

  if (v10 == v16 && v13 == v18)
  {

LABEL_21:

    v19 = *(v0 + 72);
    if (*(v19 + 16))
    {
      v21 = *(v0 + 184);
      v20 = *(v0 + 192);
      sub_1003C6340(v19);

      v22 = v5;
      v5 = v6;
      v6 = v21;
    }

    else
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Skipping timeline update: nothing important changed", v25, 2u);
      }

      v22 = *(v0 + 184);
      v20 = *(v0 + 192);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_21;
  }

LABEL_31:
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  sub_1003B42E4(&v30, 0);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  *v28 = v0;
  v28[1] = sub_1003C82FC;

  return sub_10041C458(v6);
}

uint64_t sub_1003C82FC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1003C841C, v3, v2);
}

uint64_t sub_1003C841C()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v2;
  sub_1001F4CB8(0, 0, v1, &unk_100EC9730, v5);

  v6 = v0[9];
  v7 = v0[26];
  v8 = v0[27];
  if (*(v6 + 16))
  {
    v10 = v0[23];
    v9 = v0[24];
    sub_1003C6340(v6);

    v11 = v8;
    v8 = v7;
    v7 = v10;
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping timeline update: nothing important changed", v14, 2u);
    }

    v11 = v0[23];
    v9 = v0[24];
  }

  v15 = v0[1];

  return v15();
}

id sub_1003C8608()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v19 - v7;
  v9 = [v1 tracklist];
  v10 = [v9 playingItemIndexPath];

  if (v10)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v5, v2);
    v11 = [v1 tracklist];
    v12 = [v11 items];

    v13 = [v12 sectionAtIndex:IndexPath.section.getter()];
    v14 = [v13 metadataObject];

    if (v14)
    {
      v15 = [v14 flattenedGenericObject];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 anyObject];

        (*(v3 + 8))(v8, v2);
        result = v17;
        if (v17)
        {
          return result;
        }
      }

      else
      {
        (*(v3 + 8))(v8, v2);
      }
    }

    else
    {
      (*(v3 + 8))(v8, v2);
    }
  }

  return 0;
}

uint64_t sub_1003C8868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1003C895C, v7, v6);
}

uint64_t sub_1003C895C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1003C8A28;

  return sub_10062A46C(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1003C8A28()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1003CA1FC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1003C8BBC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003C8BBC()
{
  if (qword_10117FC70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003C8C80;

  return sub_100719F38();
}

uint64_t sub_1003C8C80()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1003C8DA0, v3, v2);
}

uint64_t sub_1003C8DA0()
{

  v1 = sub_10010BA00(&off_10109AAB8);
  sub_1003C6340(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003C8E30(void *a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = *(v2 + 40);
  *(v2 + 40) = a1;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v6;
  v9 = a1;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v2;
  v11[5] = v6;
  sub_1001F4CB8(0, 0, v5, &unk_100EC9720, v11);
}

double sub_1003C8F8C()
{
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  sub_1004115BC();
  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Application termination: requesting widget timeline reloads", v2, 2u);
  }

  v3 = sub_10010BA00(&off_10109AAE0);
  sub_1003C90C8(v3);

  return result;
}

void sub_1003C90C8(Swift::Int a1)
{

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v15 = v5;
    *v4 = 136446210;
    sub_1003C9C94();
    v6 = Set.description.getter();
    v8 = sub_1000105AC(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting timeline update for reasons: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  sub_1003C9BF0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      v14 = v12 + 1;
      v15 = *(v13 + 16 * v12);
      sub_1003C9260(&v15, a1);
      v12 = v14;
      if (v11 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1003C9260(void *a1, Swift::Int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*(v4 + 8))(*a1, v4);
  v7 = v6;
  v8 = (*(v4 + 16))(v3, v4);
  LOBYTE(v4) = sub_1003C9568(v8, a2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  if (v4)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136446466;
      v13 = sub_1000105AC(v5, v7, &v21);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2082;
      sub_1003C9C94();
      v14 = Set.description.getter();
      v16 = sub_1000105AC(v14, v15, &v21);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping reload %{public}s with non-observed reasons %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (v11)
    {
      v17 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_1000105AC(v5, v7, &v21);
      *(v17 + 12) = 2082;
      sub_1003C9C94();
      v18 = Set.description.getter();
      v20 = sub_1000105AC(v18, v19, &v21);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requesting reload %{public}s with reasons %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for WidgetCenter();
    static WidgetCenter.shared.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();
  }
}

Swift::Int sub_1003C9568(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003C96E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003C9798(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003C983C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003C98F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003CA19C(*a1);
  *a2 = result;
  return result;
}

void sub_1003C9920(unint64_t *a1@<X8>)
{
  v2 = "chartsWidgetRefreshTTLSeconds";
  v3 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001BLL;
    v2 = "istRefreshTTLSeconds";
  }

  v4 = 0xD00000000000001DLL;
  if (*v1)
  {
    v5 = "dgetsRefreshTTLSeconds";
  }

  else
  {
    v4 = 0xD000000000000026;
    v5 = "eviewed";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1003C99A8()
{

  v1 = OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003C9A40()
{
  sub_1003C99A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1003C9AA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646574;
  v3 = 0x726F707075736E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  if (a2 == 2)
  {
    v3 = 0x64656B696C736964;
    v2 = 0xE800000000000000;
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000064;
  if (a2)
  {
    v7 = 0x6C61727475656ELL;
    v8 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

double sub_1003C9BF0()
{
  sub_10010FC20(&qword_10118D9F8, &unk_100EC9708);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_100EC6C60;
  *(v0 + 32) = &type metadata for RecentlyPlayedWidgetConfiguration;
  *(v0 + 40) = &off_1010AFC88;
  *(v0 + 48) = &type metadata for RecommendationsWidgetConfiguration;
  *(v0 + 56) = &off_1010B9C60;
  *(v0 + 64) = &type metadata for TopChartsWidgetConfiguration;
  *(v0 + 72) = &off_1010A79F0;
  *(v0 + 80) = &type metadata for PinsWidgetConfiguration;
  *(v0 + 88) = &off_1010B3EB0;
  *(v0 + 96) = &type metadata for RadioWidgetConfiguration;
  *(v0 + 104) = &off_1010AC2C0;
  return result;
}

unint64_t sub_1003C9C94()
{
  result = qword_10118D9F0;
  if (!qword_10118D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D9F0);
  }

  return result;
}

uint64_t sub_1003C9CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1003C6A80(a1, v4, v5, v7, v6);
}

uint64_t sub_1003C9DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1003C8868(a1, v4, v5, v6);
}

uint64_t sub_1003C9E5C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003C66B0(v6, a1, v4, v5, v7);
}

unint64_t sub_1003C9F28()
{
  result = qword_10118DA10;
  if (!qword_10118DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA10);
  }

  return result;
}

uint64_t sub_1003C9F84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for WidgetRecommendationDiskCache(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C9FE8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for WidgetRecommendationDiskCache(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003CA044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1003C6260();
}

unint64_t sub_1003CA148()
{
  result = qword_10118DA38;
  if (!qword_10118DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA38);
  }

  return result;
}

unint64_t sub_1003CA19C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AB08, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003CA20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003CA254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Class sub_1003CA2B4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = a2;
    goto LABEL_9;
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v8);
  v10 = v9;

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_1007E90D4(0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v5 = v12;

    a2 = 0;
LABEL_9:
    v13 = a2;
    v14 = [v3 items];
    v15 = [v14 sectionAtIndex:IndexPath.section.getter()];

    v16 = [v15 metadataObject];
    if (v16)
    {
      v17 = [v16 innermostModelObject];

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        if ([v18 type] == 4 && objc_msgSend(v19, "subtype") == 2)
        {
          v20 = sub_1003CC784(v19);

          return v20;
        }
      }
    }

    v21 = sub_1003CA548(a1, v5);
    v20 = sub_1003CCB3C(v21);

    return v20;
  }

  __break(1u);
  return result;
}

char *sub_1003CA548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = _swiftEmptyArrayStorage;
  v6 = [v2 items];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 itemAtIndexPath:isa];

  v9 = [v8 metadataObject];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  v11 = [v9 innermostModelObject];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_5:
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v27._countAndFlagsBits = 0xD000000000000028;
    v27._object = 0x8000000100E48B00;
    String.append(_:)(v27);
    v28 = v8;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 544497952;
    v34._object = 0xE400000000000000;
    String.append(_:)(v34);
    type metadata accessor for IndexPath();
    sub_1003CCFE4(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x206120746F4E203ALL;
    v36._object = 0xEC000000676E6F73;
    String.append(_:)(v36);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 120, 0xE100000000000000);

    sub_1003CABE0(&v41);

    v26 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v13 = v12;
  _StringGuts.grow(_:)(31);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100E48B30;
  v14 = [v13 humanDescription];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20 = [v8 contentItemIdentifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD000000000000018, 0x8000000100E48B30, 80, 0, 0xE000000000000000);

  __chkstk_darwin();
  v38[2] = v13;
  v38[3] = v3;
  v38[4] = a1;
  v38[5] = a2;
  v38[6] = &v41;
  v26 = sub_100123994(sub_1003CD088, v38, &off_1010991C0);

  sub_1003CABE0(&v41);
LABEL_6:

  return v26;
}

void sub_1003CA91C(id a1@<X2>, unsigned __int8 *a2@<X0>, void *a3@<X1>, void *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 items];
  v11 = [v10 sectionAtIndex:IndexPath.section.getter()];

  v12 = [v11 metadataObject];
  sub_1003CD0AC(v9, a3, v12, a4, v31);
  if (v5)
  {

    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x7473696C79616C50;
    if (v9 != 2)
    {
      v15 = 0x7265646C6F46;
      v14 = 0xE600000000000000;
    }

    v16 = 0x6D75626C41;
    if (v9)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v16 = 0x747369747241;
    }

    if (v9 <= 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v9 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v32 = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v21._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v21);

    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 120, 0xE100000000000000);

    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {

    v22 = 0xE600000000000000;
    v23 = 0xE800000000000000;
    v24 = 0x7473696C79616C50;
    if (v9 != 2)
    {
      v24 = 0x7265646C6F46;
      v23 = 0xE600000000000000;
    }

    v25 = 0x6D75626C41;
    if (v9)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v25 = 0x747369747241;
    }

    if (v9 <= 1)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    if (v9 <= 1)
    {
      v27 = v22;
    }

    else
    {
      v27 = v23;
    }

    v28 = v27;
    String.append(_:)(*&v26);

    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 9673954, 0xA300000000000000);

    v29 = v31[1];
    *a5 = v31[0];
    a5[1] = v29;
    v30 = v31[3];
    a5[2] = v31[2];
    a5[3] = v30;
  }
}

void sub_1003CABE0(void *a1)
{

  v2 = Array<A>.asciiBoxed()(v1);

  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    v6 = qword_10117F000;
    v18 = v2;
    while (v4 < *(v2 + 2))
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = v6[243];

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000060E4(v10, qword_101218DE8);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v8;
        v14 = swift_slowAlloc();
        v15 = v3;
        v16 = v6;
        v17 = swift_slowAlloc();
        v19 = v17;
        *v14 = 136446210;
        *(v14 + 4) = sub_1000105AC(v13, v7, &v19);
        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s", v14, 0xCu);
        sub_10000959C(v17);
        v6 = v16;
        v3 = v15;
        v2 = v18;
      }

      ++v4;
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

void sub_1003CADDC(void *a1, uint64_t a2, void *a3)
{
  v77 = a3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v74 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v74 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v74 - v10;
  __chkstk_darwin();
  *&v76 = &v74 - v11;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = &v74 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = a1;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1001F4CB8(0, 0, v13, &unk_100EC9918, v17);

  v80 = 0;
  v81 = 0xE000000000000000;
  v82 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(37);

  v80 = 0xD000000000000023;
  v81 = 0x8000000100E48990;
  v78 = [v15 providerID];
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v80, v81, 80, 0, 0xE000000000000000);

  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v80 = 0xD000000000000014;
  v81 = 0x8000000100E48930;
  v19 = [v15 providerBundleIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = v7;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v21 = v7;
    v22 = 0;
    v24 = 0;
  }

  v25 = v8;
  v78 = v22;
  v79 = v24;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v80, v81, 80, 0, 0xE000000000000000);

  v27 = objc_opt_self();
  v28 = [v27 defaultWorkspace];
  if (v28)
  {
    v29 = v28;
    v30 = a2;
    v31 = v77;
    v32 = String._bridgeToObjectiveC()();
    v33 = [v29 applicationIsInstalled:v32];

    if (v33)
    {
      v34 = [v15 providerUniversalLink];
      if (v34)
      {
        v35 = v75;
        v36 = v34;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v76;
        (*(v25 + 32))(v76, v35, v21);
        v80 = 0;
        v81 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v80 = 0xD000000000000019;
        v81 = 0x8000000100E48A60;
        sub_1003CCFE4(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v38);

        Array<A>.appendStringComponents(_:lineLength:bullet:)(v80, v81, 80, 9673954, 0xA300000000000000);

        v39 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v40);
        v42 = v41;
        [v39 openURL:v41 withCompletionHandler:0];

        (*(v25 + 8))(v37, v21);
      }

      else
      {
        v80 = 0;
        v81 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v80 = 0xD000000000000013;
        v81 = 0x8000000100E48A40;
        v53._countAndFlagsBits = v30;
        v53._object = v77;
        String.append(_:)(v53);
        Array<A>.appendStringComponents(_:lineLength:bullet:)(v80, v81, 80, 9673954, 0xA300000000000000);

        v54 = [v27 defaultWorkspace];
        if (v54)
        {
          v55 = v54;
          v56 = String._bridgeToObjectiveC()();
          [v55 openApplicationWithBundleID:v56];
        }
      }
    }

    else
    {
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v80 = 0xD00000000000001FLL;
      v81 = 0x8000000100E489C0;
      v43._countAndFlagsBits = v30;
      v43._object = v31;
      String.append(_:)(v43);
      URL.init(string:)();

      v44 = v25;
      v45 = *(v25 + 48);
      v46 = v21;
      if (v45(v6, 1, v21) == 1)
      {
        sub_100028A38(v6);
        Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD00000000000003FLL, 0x8000000100E489E0, 80, 120, 0xE100000000000000);
      }

      else
      {
        v47 = v74;
        (*(v44 + 32))(v74, v6, v46);
        v80 = 0;
        v81 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v80 = 0xD000000000000012;
        v81 = 0x8000000100E48A20;
        sub_1003CCFE4(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v48);

        Array<A>.appendStringComponents(_:lineLength:bullet:)(v80, v81, 80, 9673954, 0xA300000000000000);

        v49 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v50);
        v52 = v51;
        [v49 openURL:v51 withCompletionHandler:0];

        (*(v44 + 8))(v47, v46);
      }
    }

    v75 = v82;
    v57 = Array<A>.asciiBoxed()(v82);
    v59 = v57;
    v60 = *(v57 + 2);
    if (!v60)
    {
LABEL_21:

      return;
    }

    v61 = 0;
    v62 = (v57 + 40);
    v63 = qword_10117F000;
    *&v58 = 136446210;
    v76 = v58;
    while (v61 < *(v59 + 2))
    {
      v64 = *v62;
      v77 = *(v62 - 1);
      v65 = v63[243];

      if (v65 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_1000060E4(v66, qword_101218DE8);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v59;
        v70 = v60;
        v71 = v63;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v80 = v73;
        *v72 = v76;
        *(v72 + 4) = sub_1000105AC(v77, v64, &v80);
        _os_log_impl(&_mh_execute_header, v67, v68, "%{public}s", v72, 0xCu);
        sub_10000959C(v73);

        v63 = v71;
        v60 = v70;
        v59 = v69;
      }

      ++v61;
      v62 += 2;
      if (v60 == v61)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003CB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003CB914, v6, v5);
}

uint64_t sub_1003CB914()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v0[5] = [v4 providerID];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(v2, 1, 1, v8);
  v9(v3, 1, 1, v8);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v5, v7, 5, 28, v2, 0, 0, 12, v1, 0, 0, 65280, 0, 0xE000000000000000, 0, 0xE000000000000000, v3, 0, 1, 2, 0, 0, 0);
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = sub_10053771C();
  v13 = v12;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v14 = v0[9];
  v15 = qword_101218AD0;
  v16 = GroupActivitiesManager.hasJoined.getter();
  v17 = GroupActivitiesManager.participantsCount.getter();
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v10) + 0xB8))(v14, v11, v13, v16 & 1, v17, *(v15 + v18));

  sub_1003CD02C(v14, v19);

  v20 = v0[1];

  return v20();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

uint64_t sub_1003CBC90()
{
  v1 = 0x747369747241;
  v2 = 0x7473696C79616C50;
  if (*v0 != 2)
  {
    v2 = 0x7265646C6F46;
  }

  if (*v0)
  {
    v1 = 0x6D75626C41;
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

unint64_t sub_1003CBD00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1003CC660(v7, v8) & 1;
}

void sub_1003CBD4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F044(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 64;
          if (*v12 >= *(v12 - 64))
          {
            break;
          }

          v14 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          v26 = *(v12 + 2);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 3);
          *v12 = *v13;
          *(v12 + 1) = v17;
          v18 = *(v12 - 1);
          *(v12 + 2) = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v12 - 2) = v26;
          *(v12 - 1) = v19;
          *v13 = v20;
          *(v12 - 3) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_1003CBEB4(&v24, v23, v28, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1003CBEB4(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_10059F01C(v9);
    }

    v94 = v9 + 16;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v9[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1003CC444((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v99 < v97)
        {
          goto LABEL_112;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_114;
        }

        v95 = *v94 - 1;
        memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + (v8 << 6));
      v12 = v10 << 6;
      v13 = (*a3 + (v10 << 6));
      v16 = *v13;
      v15 = v13 + 128;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 64;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = (v8 << 6) - 64;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v33 + v12);
            v25 = (v33 + v21);
            v27 = v24[2];
            v26 = v24[3];
            v29 = *v24;
            v28 = v24[1];
            v30 = v25[3];
            v32 = *v25;
            v31 = v25[1];
            v24[2] = v25[2];
            v24[3] = v30;
            *v24 = v32;
            v24[1] = v31;
            *v25 = v29;
            v25[1] = v28;
            v25[2] = v27;
            v25[3] = v26;
          }

          ++v23;
          v21 -= 64;
          v12 += 64;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100498FCC(0, *(v9 + 2) + 1, 1, v9);
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v9 = sub_100498FCC((v47 > 1), v48 + 1, 1, v9);
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v10;
    *(v50 + 5) = v8;
    v51 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_57:
          if (v56)
          {
            goto LABEL_103;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_106;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_110;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_71:
        if (v74)
        {
          goto LABEL_105;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_108;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_78:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v91 = *&v9[16 * v90 + 32];
        v92 = *&v9[16 * v52 + 40];
        sub_1003CC444((*a3 + (v91 << 6)), (*a3 + (*&v9[16 * v52 + 32] << 6)), (*a3 + (v92 << 6)), v51);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v92 < v91)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10059F01C(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v93 = &v9[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        sub_10059EF90(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_101;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_102;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_104;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_107;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_111;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v34 = *a3;
  v35 = *a3 + (v8 << 6);
  v36 = v10 - v8;
LABEL_30:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = v38 - 4;
    if (*v38 >= *(v38 - 64))
    {
LABEL_29:
      ++v8;
      v35 += 64;
      --v36;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v41 = v38[2];
    v40 = v38[3];
    v43 = *v38;
    v42 = v38[1];
    v44 = *(v38 - 3);
    *v38 = *v39;
    v38[1] = v44;
    v45 = *(v38 - 1);
    v38[2] = *(v38 - 2);
    v38[3] = v45;
    *v39 = v43;
    *(v38 - 3) = v42;
    v38 -= 4;
    v39[2] = v41;
    v39[3] = v40;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1003CC444(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
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
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = v15[1];
    v19 = v15[3];
    *(v7 + 2) = v15[2];
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = v5 + 64;
      v23 = *(v21 - 64);
      v21 -= 64;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v27 = *v20;
          v28 = *(v6 - 3);
          v29 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v29;
          *v5 = v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v14)
      {
        v24 = *v21;
        v25 = *(v21 + 1);
        v26 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v26;
        *v5 = v24;
        *(v5 + 1) = v25;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v30 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v30 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v30 >> 6 << 6);
  }

  return 1;
}

id sub_1003CC660(void *a1, void *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)))
  {
    v7 = a1[4];
    v8 = a2[4];
    v9 = (v7 | v8) == 0;
    if (v7 && v8)
    {
      if (a1[3] == a2[3] && v7 == v8)
      {
        v10 = a1[5];
        if (v10)
        {
          if (!a2[5])
          {
            return 0;
          }

          return [v10 isArtworkVisuallyIdenticalToCatalog:?];
        }

        return (a2[5] == 0);
      }

      v12 = a1;
      v13 = a2;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v13;
      v9 = v14;
      v10 = v12[5];
      if (!v10)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (a2[5] != 0 && v9)
      {
        return [v10 isArtworkVisuallyIdenticalToCatalog:?];
      }

      return 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v9)
  {
    return (a2[5] == 0);
  }

  return 0;
}

void (*sub_1003CC784(void *a1))()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v25 - v2;
  v28 = 0;
  v29 = 0xE000000000000000;
  v30 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(37);

  v28 = 0xD000000000000023;
  v29 = 0x8000000100E48900;
  v26 = [a1 providerID];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 0, 0xE000000000000000);

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v28 = 0xD000000000000014;
  v29 = 0x8000000100E48930;
  v5 = [a1 providerBundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v26 = v7;
  v27 = v9;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 0, 0xE000000000000000);

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v28 = 0xD00000000000001ALL;
  v29 = 0x8000000100E48950;
  v11 = [a1 providerUniversalLink];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v3, v13, 1, v14);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 0, 0xE000000000000000);

  v16 = [a1 providerBundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = v18;
    v21[4] = v20;
    v22 = a1;
    v23 = sub_1003CCF24;
  }

  else
  {
    Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD000000000000011, 0x8000000100E48970, 80, 120, 0xE100000000000000);
    v23 = 0;
  }

  sub_1003CABE0(&v30);

  return v23;
}

Class sub_1003CCB3C(char *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    if (v1)
    {
      v15 = *(a1 + 10);
      v16 = *(a1 + 9);

      return v15;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v25 = a1;

    sub_1003CBD4C(&v25);

    v2 = v25;
    v3 = *(v25 + 2);
    if (v3)
    {
      v25 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v21 = objc_opt_self();
      v22 = v2;
      v4 = 0;
      while (1)
      {
        v24 = v3;
        v8 = v2[v4 + 32];
        v9 = *&v2[v4 + 72];
        v10 = *&v2[v4 + 80];
        v11 = *&v2[v4 + 88];
        Library.Menu.Identifier.symbolName(for:)(2, 0x1010302u >> (8 * v8));
        v23 = v9;

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v12 = String._bridgeToObjectiveC()();

        v13 = [v21 systemImageNamed:v12];

        v14 = swift_allocObject();
        *(v14 + 16) = v10;
        *(v14 + 24) = v11;

        v20._rawValue = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v5 = 0xD000000000000014;
            v6 = "Actions.goToPlaylistFolder";
          }

          else
          {
            v5 = 0xD00000000000001ALL;
            v6 = "Opening Universal Link = ";
          }
        }

        else
        {
          if (v8)
          {
            v7 = 0x8000000100E48AC0;
            v5 = 0xD000000000000011;
            goto LABEL_6;
          }

          v5 = 0xD000000000000012;
          v6 = "Actions.goToAlbum";
        }

        v7 = v6 | 0x8000000000000000;
LABEL_6:
        v27 = AccessibilityIdentifier.init(name:)(*&v5);
        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v27.rawValue._countAndFlagsBits, v27.rawValue._object, v27.name._countAndFlagsBits, v27.name._object);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 64;
        --v3;
        v2 = v22;
        if (v24 == 1)
        {

          preferredElementSize = v25;
          goto LABEL_18;
        }
      }
    }

    preferredElementSize = _swiftEmptyArrayStorage;
LABEL_18:
    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v20).super.super.isa;
  }
}

uint64_t sub_1003CCF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003CB80C(a1, v4, v5, v6);
}

uint64_t sub_1003CCFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CD02C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003CD0AC(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  *&v10 = __chkstk_darwin().n128_u64[0];
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v20 = [a2 album];
      if (v20)
      {
        v11 = v20;
        v60 = sub_100483660(v20, a2, a3, a4);
        if (v60)
        {
          v18 = v21;
          if ([v11 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
          {
            v19 = [v11 artworkCatalog];
          }

          else
          {
            v19 = 0;
          }

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v30 = String.init(localized:table:bundle:locale:comment:)();
          v59 = v41;
          v42 = [v11 title];
          if (v42)
          {
            v43 = v30;
            v44 = v18;
            v45 = v19;
            v46 = v42;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v47;

            v11 = v46;
            v19 = v45;
            v18 = v44;
            v30 = v43;
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v37 = String.init(localized:table:bundle:locale:comment:)();
            v58 = v49;
          }

          v40 = 1;
          v39 = v58;
          v32 = v59;
          goto LABEL_41;
        }

LABEL_17:
        sub_1003CD7C8();
        swift_allocError();
        v24 = 4;
        goto LABEL_18;
      }

      sub_1003CD7C8();
      swift_allocError();
      v29 = 2;
    }

    else
    {
      v16 = [a2 artist];
      if (v16)
      {
        v11 = v16;
        v60 = sub_100483050(v16, a2, a4);
        if (v60)
        {
          v18 = v17;
          if ([v11 hasLoadedValueForKey:MPModelPropertyArtistArtwork])
          {
            v19 = [v11 artworkCatalog];
          }

          else
          {
            v19 = 0;
          }

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v30 = String.init(localized:table:bundle:locale:comment:)();
          v32 = v31;
          v33 = [v11 name];
          if (v33)
          {
            v57 = v30;
            v34 = v18;
            v35 = v19;
            v36 = v33;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v19 = v35;
            v18 = v34;
            v30 = v57;

            v40 = 0;
          }

          else
          {

            v40 = 0;
            v37 = 0;
            v39 = 0;
          }

          goto LABEL_41;
        }

        goto LABEL_17;
      }

      sub_1003CD7C8();
      swift_allocError();
      v29 = 1;
    }

    *v28 = v29;
    goto LABEL_25;
  }

  if (!a3)
  {
    sub_1003CD7C8();
    swift_allocError();
    *v22 = 0;
LABEL_25:
    swift_willThrow();
    return;
  }

  v11 = a3;
  v12 = [v11 innermostModelObject];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    sub_1003CD7C8();
    swift_allocError();
    v24 = 3;
LABEL_18:
    *v23 = v24;
    swift_willThrow();

    return;
  }

  v14 = v13;
  if ((a1 == 3) != ([v13 type] == 3))
  {
    sub_1003CD7C8();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    return;
  }

  v25 = sub_1004840C8(v14, a2, a4);
  v56 = v26;
  v60 = v25;
  if (!v25)
  {
    sub_1003CD7C8();
    swift_allocError();
    *v48 = 4;
    swift_willThrow();

    return;
  }

  v27 = v11;
  if ([v14 hasLoadedValueForKey:MPModelPropertyPlaylistArtwork])
  {
    v19 = [v14 artworkCatalog];
  }

  else
  {
    v19 = 0;
  }

  [v14 type];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v51;
  v52 = [v14 name];
  if (v52)
  {
    v53 = v19;
    v54 = v52;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v55;

    v19 = v53;
  }

  else
  {

    v37 = 0;
    v39 = 0;
  }

  v40 = 2;
  v18 = v56;
  v30 = v50;
LABEL_41:
  *a5 = v40;
  *(a5 + 8) = v30;
  *(a5 + 16) = v32;
  *(a5 + 24) = v37;
  *(a5 + 32) = v39;
  *(a5 + 40) = v19;
  *(a5 + 48) = v60;
  *(a5 + 56) = v18;
}

unint64_t sub_1003CD7C8()
{
  result = qword_10118DA40;
  if (!qword_10118DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA40);
  }

  return result;
}

uint64_t sub_1003CD82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1003CD874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003CD8D8()
{
  result = qword_10118DA48;
  if (!qword_10118DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA48);
  }

  return result;
}

unint64_t sub_1003CD930()
{
  result = qword_10118DA50;
  if (!qword_10118DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA50);
  }

  return result;
}

unint64_t sub_1003CD994()
{
  result = qword_10118DA58;
  if (!qword_10118DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA58);
  }

  return result;
}

double sub_1003CDBA8(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong tabs];

    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1007E914C(v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = swift_dynamicCastObjCProtocolConditional();
        if (v13)
        {
          v14 = v13;
          if ([v13 respondsToSelector:*a2])
          {
            [v14 *a2];
          }
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return result;
}

void sub_1003CDE78(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a2 managingTabGroup];
  if (v6)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = v5;
    if (!*(v4 + 16))
    {
      goto LABEL_7;
    }
  }

  v7 = sub_1006BEAC4(v6);
  if (v8)
  {
    v11 = *(*(v4 + 56) + 8 * v7);

    goto LABEL_8;
  }

LABEL_7:
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *a3 = v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6334(v11, v6, isUniquelyReferenced_nonNull_native);

  *a3 = v4;
}

id sub_1003CE190(uint64_t a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = [a2 managingTabGroup];
  if (!v8)
  {
    v8 = a2;
  }

  v9 = swift_dynamicCastObjCProtocolConditional();

  if (v9 && ([v9 respondsToSelector:"tabBarController:tab:operationForAcceptingItemsFromDropSession:"] & 1) != 0)
  {
    v10 = [v9 tabBarController:a1 tab:a2 operationForAcceptingItemsFromDropSession:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1003CE344()
{
  v2.receiver = v0;
  v2.super_class = _s11BarDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003CE700(void *a1, id a2)
{
  v4 = [a2 managingTabGroup];
  if (!v4)
  {
    v4 = a2;
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5 && (v6 = v5, ([v5 respondsToSelector:"tabBarController:shouldSelectTab:"] & 1) != 0))
  {
    v7 = [v6 tabBarController:a1 shouldSelectTab:a2];

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = [a1 selectedTab];
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v11 = a2;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v13 = sub_1006BDF60([a1 selectedIndex]);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 viewControllers];

    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_13:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_10004056C(0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v17 = *(v16 + 32);
        }

        v18 = v17;

        goto LABEL_20;
      }
    }
  }

  v18 = [a1 selectedViewController];
  if (v18)
  {
LABEL_20:
    v19 = sub_1006BDF60([a1 selectedIndex]);
    if (!v19)
    {
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [v19 topViewController];
    if (!v21)
    {

      v23 = v20;
      goto LABEL_25;
    }

    v22 = v21;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v23 = v18;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
LABEL_23:
      UIViewController.scrollToTopIfPossible()();
      UIViewController.focusOnSearchBarIfPossible()();
      v23 = v18;
    }

LABEL_25:
  }

  return 1;
}

uint64_t sub_1003CE9C4(uint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 managingTabGroup];
  if (!v6)
  {
    v6 = a2;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7 && (v8 = v7, ([v7 respondsToSelector:"tabBarController:displayedViewControllersForTab:proposedViewControllers:"] & 1) != 0))
  {
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = [v8 tabBarController:a1 displayedViewControllersForTab:a2 proposedViewControllers:isa];

    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a3;
}

double sub_1003CEAF0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v45 = _swiftEmptyDictionarySingleton;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E914C(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v44 = v5;
      sub_1003CDE78(&v45, &v44, &v43);

      v8 = v43;
      v45 = v43;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_15:
  if (qword_10117F7A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_101218E00);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v42 = v2;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136446210;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v14 = Array.description.getter();
    v16 = sub_1000105AC(v14, v15, &v45);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Visibility changed for tabs %{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  v17 = v8 + 8;
  v18 = 1 << *(v8 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v8[8];
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v41 = v21;
  while (v20)
  {
LABEL_27:
    v24 = *(v8[6] + ((v22 << 9) | (8 * __clz(__rbit64(v20)))));

    v25 = v24;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v28 = 138543618;
      *(v28 + 4) = v25;
      *v39 = v25;
      *(v28 + 12) = 2082;
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v29 = v25;
      v30 = Array.description.getter();
      v32 = sub_1000105AC(v30, v31, &v45);
      v17 = v8 + 8;

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Dispatching tab visibility change to managing tab  %{public}@ for tabs %{public}s", v28, 0x16u);
      sub_1003CF2B0(v39);

      sub_10000959C(v40);

      v2 = v42;
    }

    v33 = [(objc_class *)v25 managingTabGroup];
    if (!v33)
    {
      v33 = v25;
    }

    v34 = swift_dynamicCastObjCProtocolConditional();
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector:"tabBarController:visibilityDidChangeForTabs:"])
      {
        sub_100009F78(0, &qword_101181F70, UITab_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v35 tabBarController:a1 visibilityDidChangeForTabs:isa];

        v25 = v33;
        v33 = isa;
        v17 = v8 + 8;
      }
    }

    v20 &= v20 - 1;

    v21 = v41;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = v17[v23];
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_27;
    }
  }

  return result;
}

void *sub_1003CF028(uint64_t a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = Strong;
  v8 = [a3 managingTabGroup];
  if (!v8)
  {
    v8 = a3;
  }

  v9 = swift_dynamicCastObjCProtocolConditional();

  if (v9 && (v10 = swift_dynamicCastObjCProtocolConditional()) != 0 && (v11 = v10, ([v10 respondsToSelector:{"musicTabBarController:tab:itemsForBeginningDragSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}] & 1) != 0))
  {
    v12 = [v11 musicTabBarController:a1 tab:a3 itemsForBeginningDragSession:a2];

    sub_100009F78(0, &qword_10118B920, UIDragItem_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  return v13;
}

id sub_1003CF184(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = [a3 managingTabGroup];
  if (!v10)
  {
    v10 = a3;
  }

  v11 = swift_dynamicCastObjCProtocolConditional();

  if (v11 && (v12 = swift_dynamicCastObjCProtocolConditional()) != 0 && (v13 = v12, ([v12 respondsToSelector:{"musicTabBarController:sidebarAction:group:operationForAcceptingItemsFromDropSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}] & 1) != 0))
  {
    v14 = [v13 musicTabBarController:a1 sidebarAction:a2 group:a3 operationForAcceptingItemsFromDropSession:a4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_1003CF2B0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183D70, &unk_100EC6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003CF318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_1003CF3B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v3 = v9;
  v4 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v3;
  v10 = v4;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v5 = v9;
  v6 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v5;
  v10 = v6;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v7 = v9;
  v8 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v7;
  v10 = v8;

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = *(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);

  *(v1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = *(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists);
}

uint64_t sub_1003CF5BC()
{
  v1 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__workName;
  v2 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v4 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName, v4);

  return swift_deallocClassInstance();
}

void sub_1003CF718(uint64_t a1)
{
  sub_1003CF7FC();
  if (v1 <= 0x3F)
  {
    sub_1003CF84C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003CF7FC()
{
  if (!qword_101187AF8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101187AF8);
    }
  }
}

void sub_1003CF84C(uint64_t a1)
{
  if (!qword_101187B08)
  {
    sub_1001109D0(&qword_1011815E0, &qword_100EBD050);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101187B08);
    }
  }
}

uint64_t sub_1003CF8BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ClassicalAlbumSection(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1003CF8FC@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v59 - v5;
  __chkstk_darwin();
  v8 = &v59 - v7;
  v9 = sub_10010FC20(&qword_10118DD50, &qword_100EC9D90) - 8;
  __chkstk_darwin();
  v11 = &v59 - v10;
  v64 = sub_10010FC20(&qword_10118DD58, &qword_100EC9D98) - 8;
  __chkstk_darwin();
  v63 = &v59 - v12;
  v66 = sub_10010FC20(&qword_10118DD60, &qword_100EC9DA0) - 8;
  __chkstk_darwin();
  v65 = &v59 - v13;
  v69 = sub_10010FC20(&qword_10118DD68, &qword_100EC9DA8) - 8;
  __chkstk_darwin();
  v67 = &v59 - v14;
  v71 = sub_10010FC20(&qword_10118DD70, &qword_100EC9DB0) - 8;
  __chkstk_darwin();
  v68 = &v59 - v15;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v16 = sub_10010FC20(&qword_10118DD78, &qword_100EC9DB8);
  sub_1003CFFE4(v1, &v11[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  v62 = v1;
  EdgeInsets.init(_all:)();
  v18 = &v11[*(v9 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v61 = static Edge.Set.top.getter();
  type metadata accessor for ClassicalAlbumSectionCell(0);
  sub_10056CABC(v8);
  v60 = enum case for DynamicTypeSize.accessibility1(_:);
  v59 = *(v3 + 104);
  v59(v6);
  sub_1003D0FDC(&qword_1011810B0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v23 = *(v3 + 8);
  v23(v6, v2);
  v23(v8, v2);
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v63;
  sub_10003D17C(v11, v63, &qword_10118DD50, &qword_100EC9D90);
  v33 = v32 + *(v64 + 44);
  *v33 = v61;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  LOBYTE(v11) = static Edge.Set.bottom.getter();
  v34 = v70;
  sub_10056CABC(v70);
  (v59)(v6, v60, v2);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v23(v6, v2);
  v23(v34, v2);
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v65;
  sub_10003D17C(v32, v65, &qword_10118DD58, &qword_100EC9D98);
  v44 = v43 + *(v66 + 44);
  *v44 = v11;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v67;
  sub_10003D17C(v43, v67, &qword_10118DD60, &qword_100EC9DA0);
  v46 = (v45 + *(v69 + 44));
  v47 = v78;
  v46[4] = v77;
  v46[5] = v47;
  v46[6] = v79;
  v48 = v74;
  *v46 = v73;
  v46[1] = v48;
  v49 = v76;
  v46[2] = v75;
  v46[3] = v49;
  v50 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v51 = v45;
  v52 = v68;
  sub_10003D17C(v51, v68, &qword_10118DD68, &qword_100EC9DA8);
  v53 = (v52 + *(v71 + 44));
  *v53 = v50;
  v53[1] = sub_100119634;
  v53[2] = 0;
  v54 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v55 = v52;
  v56 = v72;
  sub_10003D17C(v55, v72, &qword_10118DD70, &qword_100EC9DB0);
  result = sub_10010FC20(&qword_10118DD80, &qword_100EC9DC0);
  v58 = (v56 + *(result + 36));
  *v58 = v54;
  v58[1] = sub_100119634;
  v58[2] = 0;
  return result;
}

uint64_t sub_1003CFFE4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118DD88, &qword_100EC9DC8);
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin();
  v67 = v60 - v5;
  v65 = sub_10010FC20(&qword_10118DD90, &qword_100EC9DD0);
  __chkstk_darwin();
  v71 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = v60 - v7;
  __chkstk_darwin();
  v70 = v60 - v8;
  v60[2] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v81);

  v60[1] = sub_100009838();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_10117F680 != -1)
  {
    swift_once();
  }

  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  sub_10011895C(v9, v11, v13 & 1);

  static Font.Weight.semibold.getter();
  v19 = Text.fontWeight(_:)();
  v62 = v20;
  v63 = v19;
  v22 = v21;
  v64 = v23;
  sub_10011895C(v14, v16, v18 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v61 = v22 & 1;
  v101 = v22 & 1;
  v81 = sub_1003D0634();
  v82 = v24;
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  if (qword_10117F688 != -1)
  {
    swift_once();
  }

  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;
  sub_10011895C(v25, v27, v29 & 1);

  LODWORD(v81) = static HierarchicalShapeStyle.secondary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10011895C(v30, v32, v34 & 1);

  v81 = v35;
  v82 = v37;
  v83 = v39 & 1;
  v85 = v41;
  if (qword_10117FBC8 != -1)
  {
    swift_once();
  }

  v42 = v67;
  View.minimumLineHeight(_:)();
  sub_10011895C(v35, v37, v39 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v66;
  (*(v68 + 32))(v66, v42, v69);
  v44 = (v43 + *(v65 + 36));
  v45 = v102[3];
  v46 = v102[5];
  v44[4] = v102[4];
  v44[5] = v46;
  v44[6] = v102[6];
  v47 = v102[1];
  *v44 = v102[0];
  v44[1] = v47;
  v44[2] = v102[2];
  v44[3] = v45;
  v48 = v70;
  sub_10003D17C(v43, v70, &qword_10118DD90, &qword_100EC9DD0);
  v49 = v71;
  sub_100083EE0(v48, v71);
  v51 = v62;
  v50 = v63;
  *&v72 = v63;
  *(&v72 + 1) = v62;
  v52 = v61;
  LOBYTE(v73) = v61;
  *(&v73 + 1) = *v100;
  DWORD1(v73) = *&v100[3];
  v53 = v64;
  *(&v73 + 1) = v64;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v74 = v93;
  v75 = v94;
  v76 = v95;
  v77 = v96;
  v54 = v98;
  a2[6] = v97;
  a2[7] = v54;
  a2[8] = v80;
  v55 = v75;
  a2[2] = v74;
  a2[3] = v55;
  v56 = v77;
  a2[4] = v76;
  a2[5] = v56;
  v57 = v73;
  *a2 = v72;
  a2[1] = v57;
  v58 = sub_10010FC20(&qword_10118DD98, &unk_100EC9DD8);
  sub_100083EE0(v49, a2 + *(v58 + 48));
  sub_1003D1024(&v72, &v81);
  sub_100083F50(v48);
  sub_100083F50(v49);
  v81 = v50;
  v82 = v51;
  v83 = v52;
  *v84 = *v100;
  *&v84[3] = *&v100[3];
  v85 = v53;
  v90 = v97;
  v91 = v98;
  v92 = v99;
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v89 = v96;
  return sub_1003D1094(&v81);
}

uint64_t sub_1003D0634()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v0._countAndFlagsBits = 2128194;
  v0._object = 0xE300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v1 = v17;
  v2 = v18;
  if (!v18)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v1 = String.init(localized:table:bundle:locale:comment:)();
    v2 = v3;
  }

  v4 = v2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v1);

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v6;
  v18 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  v8 = v16;
  if (!v16)
  {
    return v6;
  }

  v9 = v15;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x209380E220;
  v10._object = 0xA500000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11._countAndFlagsBits = v9;
  v11._object = v8;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v13._countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
  String.append(_:)(v13);

  return v17;
}

uint64_t sub_1003D0988()
{
  result = static Font.callout.getter();
  qword_101218B88 = result;
  return result;
}

uint64_t sub_1003D09A8()
{
  result = static Font.footnote.getter();
  qword_101218B90 = result;
  return result;
}

void sub_1003D09C8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_1003D0A48(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1003D0B1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  v5 = v15;
  v4 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  if (__PAIR128__(v4, v15) == __PAIR128__(v16, v5))
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  v8 = v15;
  v7 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  if (v7)
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    if (v8 == v15 && v7 == v16)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  v11 = v15;
  v10 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  if (v10)
  {
    if (v16)
    {
      if (v11 == v15 && v10 == v16)
      {

LABEL_21:
        v12 = *(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) ^ *(a2 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) ^ 1;
        return v12 & 1;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v12 = 0;
      return v12 & 1;
    }
  }

  else if (!v16)
  {
    goto LABEL_21;
  }

LABEL_19:

  v12 = 0;
  return v12 & 1;
}

void sub_1003D0EA0(uint64_t a1)
{
  sub_1003D0F2C(319);
  if (v1 <= 0x3F)
  {
    sub_100117C38(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003D0F2C(uint64_t a1)
{
  if (!qword_10118DD18)
  {
    type metadata accessor for ClassicalAlbumSection(255);
    sub_1003D0FDC(&qword_101192B20, type metadata accessor for ClassicalAlbumSection, &unk_100EC9BE8);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10118DD18);
    }
  }
}

uint64_t sub_1003D0FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D1024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101181130, &unk_100EBCC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D1094(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101181130, &unk_100EBCC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003D10FC()
{
  result = qword_10118DDA0;
  if (!qword_10118DDA0)
  {
    sub_1001109D0(&qword_10118DD80, &qword_100EC9DC0);
    sub_1003D1188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDA0);
  }

  return result;
}

unint64_t sub_1003D1188()
{
  result = qword_10118DDA8;
  if (!qword_10118DDA8)
  {
    sub_1001109D0(&qword_10118DD70, &qword_100EC9DB0);
    sub_1003D1214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDA8);
  }

  return result;
}

unint64_t sub_1003D1214()
{
  result = qword_10118DDB0;
  if (!qword_10118DDB0)
  {
    sub_1001109D0(&qword_10118DD68, &qword_100EC9DA8);
    sub_1003D12A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDB0);
  }

  return result;
}

unint64_t sub_1003D12A0()
{
  result = qword_10118DDB8;
  if (!qword_10118DDB8)
  {
    sub_1001109D0(&qword_10118DD60, &qword_100EC9DA0);
    sub_1003D132C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDB8);
  }

  return result;
}

unint64_t sub_1003D132C()
{
  result = qword_10118DDC0;
  if (!qword_10118DDC0)
  {
    sub_1001109D0(&qword_10118DD58, &qword_100EC9D98);
    sub_1003D13B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDC0);
  }

  return result;
}

unint64_t sub_1003D13B8()
{
  result = qword_10118DDC8;
  if (!qword_10118DDC8)
  {
    sub_1001109D0(&qword_10118DD50, &qword_100EC9D90);
    sub_1003D1444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDC8);
  }

  return result;
}

unint64_t sub_1003D1444()
{
  result = qword_10118DDD0;
  if (!qword_10118DDD0)
  {
    sub_1001109D0(&qword_10118DDD8, &qword_100EC9DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDD0);
  }

  return result;
}

id sub_1003D14A8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___headerRegistration;
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&qword_10118DE48, &qword_100EC9E18);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController] = 0;
  type metadata accessor for MusicLibrary();
  LOBYTE(v22) = 5;
  *(&v22 + 1) = static MusicLibrary.shared.getter();
  v23 = a1;
  v24 = 0;
  v25 = 0xE000000000000000;
  v26 = 260;
  v27 = 0;
  v28 = 0xE000000000000000;
  v29 = _swiftEmptyArrayStorage;
  v30 = &_swiftEmptySetSingleton;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = _swiftEmptyArrayStorage;
  sub_10010FC20(&unk_10118DE50, &qword_100EC9E48);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController] = sub_1003A2A04(&v22);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setTitle:v10];

  UIViewController.playActivityFeatureIdentifier.setter(5);
  v11 = [v9 traitCollection];

  v12 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    v15 = [v9 navigationItem];
    [v15 setLargeTitleDisplayMode:v12];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6B0;
  v17 = sub_100217F14();
  *(v16 + 32) = &type metadata for LibraryFilterTrait;
  *(v16 + 40) = v17;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  v19 = sub_100137E8C();
  *(v18 + 32) = &type metadata for MusicLibraryTrait;
  *(v18 + 40) = v19;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v9;
}