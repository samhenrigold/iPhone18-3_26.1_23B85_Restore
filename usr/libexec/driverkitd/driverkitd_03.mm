uint64_t sub_100038DC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100061740(a2);
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
      sub_10003A940();
      goto LABEL_7;
    }

    sub_100034244(v18, a3 & 1);
    v23 = sub_100061740(a2);
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
      return sub_100039BD0(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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

uint64_t sub_100038FA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100061968(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000329C0(v14, a3 & 1);
      v9 = sub_100061968(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for OSExtension(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10003ABC0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

uint64_t sub_100039104(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100061968(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100034940(v14, a3 & 1);
      v9 = sub_100061968(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for OSExtension(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10003AE98();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 80 * v9;

    return sub_100041948(a1, v20);
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  v22 = (v19[7] + 80 * v9);
  *v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  *(v22 + 57) = *(a1 + 57);
  v22[2] = v24;
  v22[3] = v25;
  v22[1] = v23;
  v26 = v19[2];
  v13 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v27;
}

uint64_t sub_100039288(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000618A8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ApplicationRecord(0);
      return sub_100041878(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ApplicationRecord);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_10003B054(type metadata accessor for ApplicationRecord, &qword_1001350A8, &qword_1000F4F78, type metadata accessor for ApplicationRecord);
    goto LABEL_7;
  }

  sub_10003506C(v15, a4 & 1, type metadata accessor for ApplicationRecord, &qword_1001350A8, &qword_1000F4F78, type metadata accessor for ApplicationRecord);
  v22 = sub_1000618A8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100039C88(v12, a2, a3, a1, v18);

  return sub_1000146C4(a2, a3);
}

void sub_10003947C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100061588(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100035E48(v20, a4 & 1, a5, a6);
      v15 = sub_100061588(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_10003B85C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_10003961C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100061698(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10003B590();
    result = v17;
    goto LABEL_8;
  }

  sub_10003592C(v14, a3 & 1);
  result = sub_100061698(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100039740(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100061588(a2, a3);
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
      sub_100035B90(v16, a4 & 1);
      v11 = sub_100061588(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10003B6DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
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

void sub_1000398B8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100061588(a2, a3);
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
      sub_10003B9BC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000360E8(v16, a4 & 1);
    v11 = sub_100061588(a2, a3);
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
    v22 = (v21[7] + 40 * v11);
    sub_100003C90(v22);

    sub_100009F34(a1, v22);
  }

  else
  {
    sub_100039D34(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100039A0C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000B48C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100039A74(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000B48C(a4, (a5[7] + 32 * a1));
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

uint64_t sub_100039AE0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for DriverBinEntry(0);
  result = sub_100041810(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for DriverBinEntry);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100039BD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
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

uint64_t sub_100039C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ApplicationRecord(0);
  result = sub_100041810(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ApplicationRecord);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100039D34(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100009F34(a4, a5[7] + 40 * a1);
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

void *sub_100039DA4()
{
  v1 = v0;
  sub_100003CDC(&qword_1001351D8, &qword_1000F50C8);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000B430(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_10000B48C(v19, (*(v4 + 56) + 32 * v17));
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

void sub_100039F20()
{
  v1 = v0;
  sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_10000B430(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000B48C(v25, (*(v4 + 56) + v22));
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
}

char *sub_10003A100()
{
  v1 = v0;
  v2 = type metadata accessor for DriverBinEntry(0);
  v40 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UUID();
  v42 = *(v38 - 8);
  __chkstk_darwin(v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&qword_100135078, &qword_1000F4F38);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_1000418E0(v28 + v30, v39, type metadata accessor for DriverBinEntry);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_100041810(v31, *(v20 + 56) + v30, type metadata accessor for DriverBinEntry);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

void sub_10003A424()
{
  v1 = v0;
  sub_100003CDC(&qword_100135110, &qword_1000F4FF0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void sub_10003A58C()
{
  v1 = v0;
  v2 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v29 = &v28 - v4;
  sub_100003CDC(&qword_100135190, &qword_1000F5078);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_100014894(*(v5 + 48) + v23, v29, &unk_1001389D0, &qword_1000F4F60);
        v24 = *(*(v5 + 56) + 8 * v21);
        v25 = v5;
        v26 = v31;
        sub_100020D24(v22, *(v31 + 48) + v23, &unk_1001389D0, &qword_1000F4F60);
        v27 = *(v26 + 56);
        v5 = v25;
        *(v27 + 8 * v21) = v24;
      }

      while (v16);
    }

    v19 = v11;
    v7 = v31;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }
}

void sub_10003A7E4()
{
  v1 = v0;
  sub_100003CDC(&qword_1001350C8, &qword_1000F4FA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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
}

void sub_10003A940()
{
  v1 = v0;
  v34 = type metadata accessor for URL();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&qword_1001350C0, &qword_1000F4F98);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
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
}

void *sub_10003ABC0()
{
  v1 = v0;
  sub_100003CDC(&qword_100135048, &qword_1000F4F08);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_10003AD24()
{
  v1 = v0;
  sub_100003CDC(&qword_1001350D8, &qword_1000F4FB0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
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
}

void *sub_10003AE98()
{
  v1 = v0;
  sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1000419A4(&v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 80 * v16);
      v20 = v18[1];
      v19 = v18[2];
      v21 = v18[3];
      *(v30 + 9) = *(v18 + 57);
      v30[0] = v21;
      v27 = *v18;
      v28 = v20;
      v29 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v22 = (*(v4 + 56) + 80 * v16);
      *v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v30[0];
      *(v22 + 57) = *(v30 + 9);
      v22[2] = v24;
      v22[3] = v25;
      v22[1] = v23;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_10003B054(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v39 = a4;
  v7 = v4;
  v8 = a1(0);
  v38 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v9);
  v37 = &v36 - v10;
  sub_100003CDC(a2, a3);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v36 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v40 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = (*(v11 + 48) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v37;
        v32 = *(v38 + 72) * v26;
        v33 = v39;
        sub_1000418E0(*(v11 + 56) + v32, v37, v39);
        v34 = v40;
        v35 = (*(v40 + 48) + v27);
        *v35 = v29;
        v35[1] = v30;
        sub_100041810(v31, *(v34 + 56) + v32, v33);
        result = sub_1000146C4(v29, v30);
        v21 = v41;
      }

      while (v41);
    }

    v24 = v17;
    v13 = v40;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v36;
        goto LABEL_21;
      }

      v25 = *(v11 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v41 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_10003B2B8()
{
  v1 = v0;
  sub_100003CDC(&qword_100135160, &qword_1000F5048);
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

void sub_10003B428()
{
  v1 = v0;
  sub_100003CDC(&qword_100135140, &qword_1000F5028);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

void *sub_10003B590()
{
  v1 = v0;
  sub_100003CDC(&qword_1001351E0, &qword_1000F50D0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10003B6DC()
{
  v1 = v0;
  sub_100003CDC(&qword_100135130, &qword_1000F5010);
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

        result = v20;
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

void sub_10003B85C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003CDC(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

void sub_10003B9BC()
{
  v1 = v0;
  sub_100003CDC(&qword_1001351B0, &qword_1000F50A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_10000A990(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100009F34(v25, *(v4 + 56) + v22);
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
}

void sub_10003BB64()
{
  v1 = v0;
  sub_100003CDC(&qword_100135070, &qword_1000F4F30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 24;
        v24 = *(v2 + 56) + v17;
        v25 = *(v24 + 16);
        v26 = (*(v4 + 48) + v18);
        v27 = *v24;
        *v26 = v21;
        v26[1] = v20;
        v26[2] = v22;
        v26[3] = v23;
        v28 = *(v4 + 56) + v17;
        *v28 = v27;
        *(v28 + 16) = v25;
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
}

uint64_t (*sub_10003BCF4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10003CE5C(v5);
  v5[9] = sub_10003C280((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_10003BD98;
}

void (*sub_10003BD9C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10003CE84(v5);
  v5[12] = sub_10003C474(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10003BED8;
}

void sub_10003BED8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_10003BF70(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10003CE5C(v7);
  v7[9] = sub_10003C724(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100041D54;
}

uint64_t (*sub_10003C01C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10003CE5C(v7);
  v7[9] = sub_10003C8A0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100041D54;
}

uint64_t (*sub_10003C0C8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10003CE5C(v7);
  v7[9] = sub_10003CB64(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100041D54;
}

uint64_t (*sub_10003C174(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10003CE5C(v7);
  v7[9] = sub_10003CCE0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100041D54;
}

void sub_10003C220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t *(*sub_10003C280(uint64_t a1, uint64_t a2, char a3))(uint64_t *result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1000616D4(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10003A7E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100033FB4(v14, a3 & 1);
    v9 = sub_1000616D4(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_10003C39C;
}

uint64_t *sub_10003C39C(uint64_t *result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = result[2];
    v5 = *result[1];
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_100037560(result[2], *result[1]);
    }

    return result;
  }

  v4 = result[2];
  v5 = *result[1];
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_10003C474(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for URL();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100061740(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10003A940();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100034244(v19, a3 & 1);
    v14 = sub_100061740(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10003C624;
}

void sub_10003C624(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_100039BD0(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_1000376F4(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_10003C724(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100061588(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10003B85C(&qword_1001350D0, &qword_1000F4FA8);
      v13 = v21;
      goto LABEL_11;
    }

    sub_100035E48(v18, a4 & 1, &qword_1001350D0, &qword_1000F4FA8);
    v13 = sub_100061588(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100041D58;
}

uint64_t (*sub_10003C8A0(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100061588(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10003B85C(&qword_100134FE0, &qword_1000F4E90);
      v13 = v21;
      goto LABEL_11;
    }

    sub_100035E48(v18, a4 & 1, &qword_100134FE0, &qword_1000F4E90);
    v13 = sub_100061588(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_10003CA1C;
}

void sub_10003CA20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_10003F1BC(*(v13 + 48) + 16 * v12);
      sub_1000382C4(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_10003CB64(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100061588(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10003B85C(&qword_1001350E0, &qword_1000F4FB8);
      v13 = v21;
      goto LABEL_11;
    }

    sub_100035E48(v18, a4 & 1, &qword_1001350E0, &qword_1000F4FB8);
    v13 = sub_100061588(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100041D58;
}

uint64_t (*sub_10003CCE0(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100061588(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10003B85C(&qword_100135168, &qword_1000F5050);
      v13 = v21;
      goto LABEL_11;
    }

    sub_100035E48(v18, a4 & 1, &qword_100135168, &qword_1000F5050);
    v13 = sub_100061588(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100041D58;
}

uint64_t (*sub_10003CE5C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100041D0C;
}

uint64_t (*sub_10003CE84(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10003CEAC;
}

void sub_10003CEB8(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

void sub_10003CF60(uint64_t a1, unint64_t a2)
{
  v43 = type metadata accessor for URL();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43, v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v39);
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a2 & 0xC000000000000001;
    v9 = 0x8000000100104280;
    v41 = (v3 + 8);
    p_ivars = (&ApprovalSettingsStateManager + 48);
    while (1)
    {
      if (v8)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v44 = v11;
      v12 = *(v11 + 24);
      v13 = *(v12 + 16);
      if (p_ivars[330] == -1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        swift_once();
        if (!*(v13 + 16))
        {
          goto LABEL_15;
        }
      }

      v14 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v15)
      {
        sub_10000B430(*(v13 + 56) + 32 * v14, &v48);
        swift_dynamicCast();
      }

LABEL_15:
      String.hash(into:)();

      v16 = *(v12 + 16);
      if (qword_100133A70 == -1)
      {
        if (!*(v16 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        swift_once();
        if (!*(v16 + 16))
        {
          goto LABEL_21;
        }
      }

      v17 = sub_100061588(qword_10014E900, *algn_10014E908);
      if (v18)
      {
        sub_10000B430(*(v16 + 56) + 32 * v17, &v48);
        if (swift_dynamicCast())
        {
          v19 = String._bridgeToObjectiveC()();

          v20 = OSKextParseVersionCFString();

          v21 = v20;
          goto LABEL_22;
        }
      }

LABEL_21:
      v21 = 0;
LABEL_22:
      Hasher._combine(_:)(v21);
      sub_1000138F8(v12 + 24, &v48);
      if (v50)
      {
        if (v50 == 1)
        {
          v22 = v48;
          sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          Hasher._combine(_:)(*(v22 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
        }
      }

      else
      {
        sub_100009F34(&v48, &v45);
        v23 = v46;
        v24 = v47;
        sub_100003C4C(&v45, v46);
        v25 = v9;
        v26 = v8;
        v27 = v6;
        v28 = a2;
        v29 = v42;
        (*(v24 + 64))(v23, v24);
        sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v30 = v43;
        dispatch thunk of Hashable.hash(into:)();
        v31 = v29;
        a2 = v28;
        v6 = v27;
        v8 = v26;
        v9 = v25;
        p_ivars = &ApprovalSettingsStateManager.ivars;
        (*v41)(v31, v30);
        sub_100003C90(&v45);
      }

      sub_100014894(v44 + 32, &v48, &unk_100137390, &unk_1000F4E70);
      if (v49)
      {
        v32 = sub_100003C4C(&v48, v49);
        v33 = *(*v32 + 40);
        v34 = *(*v32 + 48);
        sub_1000146C4(v33, v34);
        sub_100003C90(&v48);
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
        sub_1000128D8(v33, v34);
      }

      else
      {
        sub_10000A184(&v48, &unk_100137390, &unk_1000F4E70);
        Hasher._combine(_:)(0);
      }

      sub_100014894(v44 + 32, &v48, &unk_100137390, &unk_1000F4E70);
      if (v49)
      {
        v35 = sub_100003C4C(&v48, v49);
        v36 = *(*v35 + 24);
        v37 = *(*v35 + 32);
        sub_10003E104(v36, v37);
        sub_100003C90(&v48);
        Hasher._combine(_:)(1u);
        if (v37)
        {
          if (v37 != 1)
          {
            Hasher._combine(_:)(0);
            String.hash(into:)();
            sub_10003E118(v36, v37);
            goto LABEL_6;
          }

          v38 = 2;
        }

        else
        {
          v38 = 1;
        }

        Hasher._combine(_:)(v38);
      }

      else
      {
        sub_10000A184(&v48, &unk_100137390, &unk_1000F4E70);
        Hasher._combine(_:)(0);
      }

LABEL_6:

      if (v6 == ++v7)
      {
        return;
      }
    }
  }

  __break(1u);
}

unint64_t sub_10003D554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001351D8, &qword_1000F50C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_100014894(i, &v11, &qword_1001351F0, &qword_1000F50E0);
      v5 = v11;
      result = sub_100061698(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000B48C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

BOOL sub_10003D670(uint64_t a1, uint64_t a2)
{
  if ((sub_1000DD220(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  sub_100014894(a1 + 32, v12, &unk_100137390, &unk_1000F4E70);
  if (v13)
  {
    v4 = sub_100003C4C(v12, v13);
    v5 = *(*v4 + 40);
    v6 = *(*v4 + 48);
    sub_1000146C4(v5, v6);
    sub_100003C90(v12);
  }

  else
  {
    sub_10000A184(v12, &unk_100137390, &unk_1000F4E70);
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  sub_100014894(a2 + 32, v12, &unk_100137390, &unk_1000F4E70);
  if (v13)
  {
    v7 = sub_100003C4C(v12, v13);
    v8 = *(*v7 + 40);
    v9 = *(*v7 + 48);
    sub_1000146C4(v8, v9);
    sub_100003C90(v12);
    if (v6 >> 60 == 15)
    {
      if (v9 >> 60 != 15)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v9 >> 60 != 15)
    {
      sub_1000146B0(v5, v6);
      sub_1000146B0(v8, v9);
      v11 = sub_10006475C(v5, v6, v8, v9);
      sub_100014528(v8, v9);
      sub_100014528(v5, v6);
      sub_100014528(v8, v9);
      sub_100014528(v5, v6);
      if (!v11)
      {
        return 0;
      }

      return *(a1 + 16) == *(a2 + 16);
    }
  }

  else
  {
    sub_10000A184(v12, &unk_100137390, &unk_1000F4E70);
    if (v6 >> 60 == 15)
    {
LABEL_10:
      sub_100014528(v5, v6);
      return *(a1 + 16) == *(a2 + 16);
    }

    v8 = 0;
    v9 = 0xF000000000000000;
  }

LABEL_16:
  sub_100014528(v5, v6);
  sub_100014528(v8, v9);
  return 0;
}

uint64_t sub_10003D870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v45 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v44 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v11);
  v13 = &v42[-v12];
  v14 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  v16 = __chkstk_darwin(v14, v15);
  v46 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v42[-v20];
  v22 = OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID;
  v23 = *(v19 + 48);
  v48 = a1;
  sub_100014894(a1 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, &v42[-v20], &qword_100134FB0, &qword_1000F4E60);
  v47 = a2;
  v24 = a2 + v22;
  v25 = v49;
  sub_100014894(v24, &v21[v23], &qword_100134FB0, &qword_1000F4E60);
  v26 = *(v25 + 48);
  if (v26(v21, 1, v4) == 1)
  {
    if (v26(&v21[v23], 1, v4) != 1)
    {
      goto LABEL_12;
    }

    sub_10000A184(v21, &qword_100134FB0, &qword_1000F4E60);
  }

  else
  {
    sub_100014894(v21, v13, &qword_100134FB0, &qword_1000F4E60);
    if (v26(&v21[v23], 1, v4) == 1)
    {
      (*(v25 + 8))(v13, v4);
      goto LABEL_12;
    }

    v27 = v45;
    (*(v25 + 32))(v45, &v21[v23], v4);
    sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *(v25 + 8);
    v28(v27, v4);
    v28(v13, v4);
    sub_10000A184(v21, &qword_100134FB0, &qword_1000F4E60);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v29 = v25;
  v30 = OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID;
  v31 = *(v14 + 48);
  v21 = v46;
  sub_100014894(v48 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v46, &qword_100134FB0, &qword_1000F4E60);
  v32 = v47;
  sub_100014894(v47 + v30, &v21[v31], &qword_100134FB0, &qword_1000F4E60);
  if (v26(v21, 1, v4) != 1)
  {
    v33 = v44;
    sub_100014894(v21, v44, &qword_100134FB0, &qword_1000F4E60);
    if (v26(&v21[v31], 1, v4) != 1)
    {
      v36 = v45;
      (*(v29 + 32))(v45, &v21[v31], v4);
      sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v29 + 8);
      v38(v36, v4);
      v38(v33, v4);
      sub_10000A184(v21, &qword_100134FB0, &qword_1000F4E60);
      if ((v37 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    (*(v29 + 8))(v33, v4);
LABEL_12:
    sub_10000A184(v21, &qword_100134FB8, &qword_1000F4E68);
    goto LABEL_13;
  }

  if (v26(&v21[v31], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_10000A184(v21, &qword_100134FB0, &qword_1000F4E60);
LABEL_16:
  v39 = v48;
  if (static UUID.== infix(_:_:)())
  {
    v40 = *(v39 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
    v41 = *(v32 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
    if ((static URL.== infix(_:_:)() & 1) != 0 && *(v40 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == *(v41 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
    {
      v34 = sub_10001A75C(*(v39 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions), *(v32 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
      return v34 & 1;
    }
  }

LABEL_13:
  v34 = 0;
  return v34 & 1;
}

BOOL sub_10003DE4C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 24);
  sub_1000138F8(*(a1 + 24) + 24, v25);
  sub_1000138F8(v6 + 24, v27);
  if (!v26)
  {
    goto LABEL_8;
  }

  if (v26 != 1)
  {
    sub_100013954(v27);
    v8 = v25;
    goto LABEL_14;
  }

  sub_1000138F8(v25, v24);
  if (v28 != 1)
  {

LABEL_8:
    if (v28)
    {
      if (v28 != 1)
      {
        sub_100013954(v27);
        v9 = v25;
        goto LABEL_30;
      }

      if (!v26)
      {
        sub_100013954(v25);
        v9 = v27;
LABEL_30:
        sub_100013954(v9);
        return 0;
      }

LABEL_15:
      sub_10000A184(v25, &qword_100134FA0, &qword_1000F4E50);
      goto LABEL_16;
    }

    if (v26 != 1)
    {
      goto LABEL_15;
    }

    sub_100013954(v25);
    v8 = v27;
LABEL_14:
    sub_100013954(v8);
    return 1;
  }

  v7 = sub_1000CAD90(*(v24[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind), *(v27[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));

  sub_100013954(v25);
  if (v7)
  {
    return 1;
  }

LABEL_16:
  v11 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v11 = &off_100125ED0;
  }

  v25[0] = v11;
  sub_10003063C(&off_100125EF8);
  v12 = *(v25[0] + 16);
  if (v12)
  {
    v13 = 32;
    do
    {
      v14 = *(v25[0] + v13);
      v15 = *(a2 + 16) & v14;
      if ((v14 & ~*(a1 + 16)) != 0)
      {
        if (v15 == v14)
        {

          return 0;
        }
      }

      else if (v15 != v14)
      {

        return 1;
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if ((*(a1 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex + 8) & 1) == 0)
  {
    v22 = *(a1 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex);
    v23 = *(a2 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex);
    if (v22 < v23)
    {
      return 1;
    }

    if (v23 < v22)
    {
      return 0;
    }
  }

  sub_1000D7614();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();

    v18 = OSKextParseVersionCFString();
  }

  else
  {
    v18 = 0;
  }

  sub_1000D7614();
  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();

    v21 = OSKextParseVersionCFString();
  }

  else
  {
    v21 = 0;
  }

  return v21 < v18;
}

double sub_10003E104(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10003E118(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_10003E12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001351E0, &qword_1000F50D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100061698(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003E208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014894(v4, &v13, &unk_1001372D0, &unk_1000F4500);
      v5 = v13;
      v6 = v14;
      result = sub_100061588(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B48C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003E338(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001342E8, &qword_1000F4F50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003CDC(&qword_100135078, &qword_1000F4F38);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014894(v10, v6, &qword_1001342E8, &qword_1000F4F50);
      result = sub_1000615C4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for DriverBinEntry(0);
      result = sub_100041810(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for DriverBinEntry);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003E554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135118, &qword_1000F4FF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_10003E650(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001350A0, &qword_1000F4F70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003CDC(&qword_1001350A8, &qword_1000F4F78);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014894(v10, v6, &qword_1001350A0, &qword_1000F4F70);
      result = sub_1000618A8(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for ApplicationRecord(0);
      result = sub_100041810(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ApplicationRecord);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003E834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135020, &qword_1000F4EE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014894(v4, &v11, &qword_100135028, &qword_1000F4EE8);
      v5 = v11;
      result = sub_100061814(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000B48C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003E95C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003CDC(&qword_100134BF0, &unk_1000F4510);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014894(v10, v6, &qword_100134BE8, &unk_1000F44F0);
      result = sub_1000618A8(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      active = type metadata accessor for ActiveDriverInfo(0);
      result = sub_100041810(v6 + v9, v15 + *(*(active - 8) + 72) * v14, type metadata accessor for ActiveDriverInfo);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003EB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100134FF0, &unk_1000F4EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t *sub_10003EC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = __DataStorage._offset.getter();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_1000C7DA4(&v13, v11 + v12, a4, a5);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unsigned __int8 *sub_10003ED1C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1000146C4(a2, a3);
      sub_1000146C4(a2, a3);
      sub_1000128D8(v8, v7);
      *&md = v8;
      WORD4(md) = v7;
      BYTE10(md) = BYTE2(v7);
      BYTE11(md) = BYTE3(v7);
      BYTE12(md) = BYTE4(v7);
      BYTE13(md) = BYTE5(v7);
      BYTE14(md) = BYTE6(v7);
      sub_1000C7DA4(&v21, &md, a2, a3);
      if (v3)
      {
        v7 = md;
        v10 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_1000128D8(a2, a3);
        sub_1000128D8(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v21;
        v16 = md;
        v17 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_1000128D8(a2, a3);
        sub_1000128D8(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1000146C4(a2, a3);
    sub_1000146C4(a2, a3);
    sub_1000146C4(v8, v7);
    sub_1000128D8(v8, v7);
    *a1 = xmmword_1000F4990;
    sub_1000128D8(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v8, __DataStorage._offset.getter()))
      {
LABEL_23:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v18 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v14 = v18;
    }

    if (v15 >= v8)
    {
      sub_1000146C4(a2, a3);

      v7 = sub_10003EC68(v8, v8 >> 32, v14, a2, a3);
      sub_1000128D8(a2, a3);

      sub_1000128D8(a2, a3);
      sub_1000128D8(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_1000146C4(a2, a3);
    sub_1000146C4(a2, a3);
    sub_1000146C4(v8, v7);
    sub_1000128D8(v8, v7);
    *&md = v8;
    *(&md + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000F4990;
    sub_1000128D8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = *(&md + 1);
    v7 = *(md + 16);
    v12 = *(md + 24);
    sub_1000146C4(a2, a3);
    v13 = sub_10003EC68(v7, v12, *(&md + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_1000128D8(a2, a3);
    sub_1000128D8(a2, a3);
    sub_1000128D8(a2, a3);
    *a1 = md;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&md + 7) = 0;
    *&md = 0;
    sub_1000C7DA4(&v21, &md, a2, a3);
    if (!v3)
    {
      return v21;
    }
  }

  return v7;
}

unint64_t sub_10003F210(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000D5764(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_10003F2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001350D8, &qword_1000F4FB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100061E08(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
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

unint64_t sub_10003F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v24[48] = *(a1 + 80);
  *&v24[64] = v5;
  v24[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  *&v24[32] = v4;
  v7 = *v24;
  sub_100014894(v24, v23, &qword_1001351C8, &qword_1000F50B8);
  result = sub_100061968(v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v24[8];
    v12 = *&v24[24];
    v13 = *&v24[40];
    v14 = *&v24[56];
    *(v11 + 57) = *&v24[65];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v10 + 88;
    v19 = *(v10 + 32);
    v20 = *(v10 + 64);
    *&v24[48] = *(v10 + 48);
    *&v24[64] = v20;
    v24[80] = *(v10 + 80);
    v21 = *(v10 + 16);
    *v24 = *v10;
    *&v24[16] = v21;
    *&v24[32] = v19;
    v7 = *v24;
    sub_100014894(v24, v23, &qword_1001351C8, &qword_1000F50B8);
    result = sub_100061968(v7);
    v10 = v18;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F5B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135048, &qword_1000F4F08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100061968(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003F6BC(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001351C0, &qword_1000F50B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003CDC(&qword_1001350C0, &qword_1000F4F98);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014894(v10, v6, &qword_1001351C0, &qword_1000F50B0);
      result = sub_100061740(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_10003F8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001350C8, &qword_1000F4FA0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1000616D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1000616D4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003F9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100003CDC(&qword_1001351B8, &qword_1000F50A8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1000616D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1000616D4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003FAC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v2 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v23 = v2 + 72;
    v24 = v3;
    v26 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v27 = v7;
      v11 = v5;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v6);

      a2(v13, v14, v15);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v26;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v26 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v16 = *(v11 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v8 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v5 = v11;
      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000147E0(v6, v8, 0);
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1000147E0(v6, v8, 0);
LABEL_18:
        v2 = v26;
      }

      v7 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v24)
      {
        return _swiftEmptyArrayStorage;
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

  return result;
}

unint64_t sub_10003FD2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_1001350F8, &qword_1000F4FC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100061ECC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

uint64_t sub_10003FE2C(__objc2_class **a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v182 = a5;
  v171 = a4;
  v178 = a3;
  v179 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v166 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v176 = &v163 - v13;
  __chkstk_darwin(v12, v14);
  v168 = &v163 - v15;
  v16 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v18 = __chkstk_darwin(v16 - 8, v17);
  v163 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v165 = &v163 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v169 = &v163 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v167 = &v163 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v164 = &v163 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v172 = &v163 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v181 = &v163 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v173 = &v163 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v174 = &v163 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v183 = &v163 - v46;
  v48 = __chkstk_darwin(v45, v47);
  v50 = &v163 - v49;
  v52 = __chkstk_darwin(v48, v51);
  v54 = &v163 - v53;
  v56 = __chkstk_darwin(v52, v55);
  v58 = &v163 - v57;
  __chkstk_darwin(v56, v59);
  v61 = &v163 - v60;
  v62 = *(v7 + 56);
  v62(&v163 - v60, 1, 1, v6);
  v63 = OBJC_IVAR____TtC10driverkitd11OSExtension_originURL;
  swift_beginAccess();
  v180 = a1;
  v64 = a1 + v63;
  v65 = v7;
  sub_100014894(v64, v58, &unk_1001389D0, &qword_1000F4F60);
  v67 = *(v7 + 48);
  v66 = (v7 + 48);
  v184 = v67;
  v68 = v67(v58, 1, v6);
  v175 = v65;
  v177 = v62;
  if (v68 == 1)
  {
    sub_10000A184(v58, &unk_1001389D0, &qword_1000F4F60);
  }

  else
  {
    v69 = v168;
    (*(v65 + 32))(v168, v58, v6);
    sub_10007A7AC(v54);
    (*(v65 + 8))(v69, v6);
    sub_10000A184(v61, &unk_1001389D0, &qword_1000F4F60);
    v62(v54, 0, 1, v6);
    sub_100020D24(v54, v61, &unk_1001389D0, &qword_1000F4F60);
  }

  sub_100014894(v61, v50, &unk_1001389D0, &qword_1000F4F60);
  v70 = v184;
  v71 = v184(v50, 1, v6);
  sub_10000A184(v50, &unk_1001389D0, &qword_1000F4F60);
  v72 = v71 == 1;
  v73 = v182;
  v74 = v175;
  v75 = v177;
  v76 = v174;
  v77 = v173;
  v170 = v61;
  if (v72 && v70(v178, 1, v6) == 1)
  {
    sub_1000138F8((v180 + 3), &v186);
    if (v190)
    {
      sub_100013954(&v186);
      v191 = 0u;
      v192 = 0u;
      v193 = 0;
      sub_10000A184(&v191, &qword_1001342A8, &unk_1000F39C0);
      LODWORD(v174) = 0;
      v78 = 1;
      v79 = v183;
      goto LABEL_20;
    }

    sub_100009F34(&v186, &v191);
    sub_10000A184(&v191, &qword_1001342A8, &unk_1000F39C0);
  }

  sub_100014894(v61, v76, &unk_1001389D0, &qword_1000F4F60);
  if (v70(v76, 1, v6) == 1)
  {
    sub_100014894(v178, v77, &unk_1001389D0, &qword_1000F4F60);
    if (v70(v77, 1, v6) == 1)
    {
      sub_1000138F8((v180 + 3), &v186);
      if (v190)
      {
LABEL_93:
        result = sub_100013954(&v186);
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      sub_100009F34(&v186, &v191);
      v80 = *(&v192 + 1);
      v81 = v193;
      sub_100003C4C(&v191, *(&v192 + 1));
      (*(v81 + 64))(v80, v81);
      sub_100003C90(&v191);
      v82 = v173;
      v83 = v70(v173, 1, v6);
      v75 = v177;
      v76 = v174;
      if (v83 != 1)
      {
        sub_10000A184(v82, &unk_1001389D0, &qword_1000F4F60);
      }
    }

    else
    {
      (*(v74 + 32))(v176, v77, v6);
    }

    if (v70(v76, 1, v6) != 1)
    {
      sub_10000A184(v76, &unk_1001389D0, &qword_1000F4F60);
    }
  }

  else
  {
    (*(v74 + 32))(v176, v76, v6);
  }

  v79 = v183;
  v84 = v176;
  sub_1000C6EC4(v73[18], v73[19], v73[20], v73[21], v183);
  (*(v74 + 8))(v84, v6);
  v78 = 0;
  LODWORD(v174) = 1;
LABEL_20:
  v75(v79, v78, 1, v6);
  v85 = v172;
  sub_100014894(v79, v172, &unk_1001389D0, &qword_1000F4F60);
  v176 = v66;
  v86 = v70(v85, 1, v6);
  v87 = v180;
  if (v86 == 1)
  {
    sub_10000A184(v85, &unk_1001389D0, &qword_1000F4F60);
    v88 = 1;
    v89 = v6;
    v90 = v181;
  }

  else
  {
    v91 = v166;
    URL.deletingLastPathComponent()();
    v92 = *(v74 + 8);
    v92(v85, v6);
    v89 = v6;
    v90 = v181;
    sub_10007A7AC(v181);
    v92(v91, v89);
    v75 = v177;
    v88 = 0;
  }

  v177 = v89;
  v75(v90, v88, 1, v89);
  v93 = v73[69];
  if (v93)
  {
    v94 = v73[73];
    v95 = v73;
    v96 = v73[72];
    v97 = v95[71];
    v98 = v95[70];
    *&v186 = v93;
    *(&v186 + 1) = v98;
    v187 = v97;
    v188 = v96;
    v189 = v94;

    v99 = sub_1000D7374();
    v101 = v100;
    v102 = v179;

    v103 = v99;
    v90 = v181;
    v104 = sub_10009FAA0(v103, v101, v102);

    v105 = v104;

    v106 = v102;
    v74 = v175;

    v87 = v180;
  }

  else
  {
    v105 = 3;
    v106 = v179;
  }

  v107 = v184;
  if (*(v106 + 16) && (v108 = sub_100061588(0xD000000000000015, 0x8000000100105350), (v109 & 1) != 0) && (sub_10000B430(*(v106 + 56) + 32 * v108, &v191), (swift_dynamicCast() & 1) != 0) && v185 == 1)
  {
    if (!v174)
    {
      v121 = 0;
      v112 = 0;
      goto LABEL_39;
    }

    v110 = v164;
    sub_100014894(v90, v164, &unk_1001389D0, &qword_1000F4F60);
    v111 = v177;
    if (v107(v110, 1, v177) == 1)
    {
      sub_10000A184(v110, &unk_1001389D0, &qword_1000F4F60);
      v112 = 0;
    }

    else
    {
      v159 = URL.path.getter();
      v161 = v160;
      (*(v74 + 8))(v110, v111);
      LOBYTE(v159) = sub_100069024(0x2F6D65747379532FLL, 0xE800000000000000, v159, v161);

      v72 = (v159 & 1) == 0;
      v107 = v184;
      if (v72)
      {
        v112 = 0;
      }

      else
      {
        v112 = 0x8000;
      }
    }
  }

  else
  {
    v112 = 0;
    if (!v174)
    {
      v121 = 0;
      goto LABEL_39;
    }
  }

  v113 = v167;
  sub_100014894(v90, v167, &unk_1001389D0, &qword_1000F4F60);
  v114 = v177;
  if (v107(v113, 1, v177) == 1)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v115 = v182[12];
  v116 = URL.path.getter();
  v118 = v117;
  v119 = (*(v74 + 8))(v113, v114);
  *&v191 = v116;
  *(&v191 + 1) = v118;
  __chkstk_darwin(v119, v120);
  *(&v163 - 2) = &v191;
  LOBYTE(v115) = sub_1000C7758(sub_100041D28, (&v163 - 4), v115);

  if (v115)
  {
    v112 |= 0x80000uLL;
    v90 = v181;
    goto LABEL_44;
  }

  v121 = 1;
  v90 = v181;
LABEL_39:
  v122 = sub_1000D7D88(&off_1001262B8);
  sub_100041BEC(&unk_1001262D8);
  if ((v122 & 1) != 0 && (sub_1000D7374(), v123._countAndFlagsBits = 0x6C7070612E6D6F63, v123._object = 0xE900000000000065, v124 = String.hasPrefix(_:)(v123), , v124))
  {
    v112 |= 0x80000uLL;
    if ((v121 & 1) == 0)
    {
LABEL_42:
      v125 = 0;
      goto LABEL_48;
    }
  }

  else if (!v121)
  {
    goto LABEL_42;
  }

LABEL_44:
  v126 = v184;
  v127 = v169;
  sub_100014894(v183, v169, &unk_1001389D0, &qword_1000F4F60);
  v128 = v177;
  if (v126(v127, 1, v177) == 1)
  {
    __break(1u);
    goto LABEL_92;
  }

  v129 = URL.path.getter();
  v131 = v130;
  v132 = (*(v74 + 8))(v127, v128);
  *&v191 = v129;
  *(&v191 + 1) = v131;
  __chkstk_darwin(v132, v133);
  *(&v163 - 2) = &v191;
  LOBYTE(v129) = sub_1000C7758(sub_100041C40, (&v163 - 4), &off_100126140);

  if (v129)
  {
    v112 |= 0x180000uLL;
  }

  v125 = 1;
LABEL_48:
  v134 = v179;
  if (*(v179 + 16))
  {
    v135 = sub_100061588(0xD000000000000015, 0x8000000100105370);
    if (v136)
    {
      sub_10000B430(*(v134 + 56) + 32 * v135, &v191);
      if (swift_dynamicCast())
      {
        if (v185)
        {
          v112 |= 0x100000uLL;
        }
      }
    }
  }

  if (*(v134 + 16))
  {
    v137 = sub_100061588(0xD00000000000001BLL, 0x8000000100105080);
    if (v138)
    {
      sub_10000B430(*(v134 + 56) + 32 * v137, &v191);
      if ((swift_dynamicCast() & 1) != 0 && v185 == 1)
      {
        sub_100041AE0(v182);

        v139 = v171;
LABEL_58:
        v112 |= 0x10000uLL;
LABEL_68:
        v149 = v183;
        goto LABEL_69;
      }
    }
  }

  if (*v87 != _TtC10driverkitd15KernelExtension || (sub_1000D7374(), v140._countAndFlagsBits = 0x6C7070612E6D6F63, v140._object = 0xE900000000000065, v141 = String.hasPrefix(_:)(v140), , v141) || (v125 & 1) == 0)
  {

    sub_100041AE0(v182);
    goto LABEL_67;
  }

  LODWORD(v181) = v105;
  v142 = v165;
  sub_100014894(v90, v165, &unk_1001389D0, &qword_1000F4F60);
  v143 = v177;
  result = (v184)(v142, 1, v177);
  if (result == 1)
  {
    goto LABEL_94;
  }

  v145 = URL.path.getter();
  v147 = v146;
  v148 = *(v74 + 8);
  v148(v142, v143);
  if (v145 != 0xD000000000000013 || 0x8000000100105390 != v147)
  {
    v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

    LOBYTE(v105) = v181;
    if (v152)
    {
      sub_100041AE0(v182);

      goto LABEL_67;
    }

    v153 = v163;
    sub_100014894(v90, v163, &unk_1001389D0, &qword_1000F4F60);
    v154 = v177;
    result = (v184)(v153, 1, v177);
    if (result != 1)
    {

      v155 = v153;
      v156 = URL.path.getter();
      v158 = v157;
      v148(v155, v154);
      if (v156 != 0xD00000000000001ALL || 0x80000001001053B0 != v158)
      {
        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100041AE0(v182);

        v139 = v171;
        if (v162)
        {
          goto LABEL_68;
        }

        goto LABEL_58;
      }

      sub_100041AE0(v182);

LABEL_67:
      v139 = v171;
      goto LABEL_68;
    }

LABEL_95:
    __break(1u);
    return result;
  }

  sub_100041AE0(v182);

  v139 = v171;
  v149 = v183;
  LOBYTE(v105) = v181;
LABEL_69:
  if (v105 != 3)
  {
    v150 = v112 | 0x20000;
    if (v105)
    {
      v150 = v112;
    }

    if (v105 == 1)
    {
      v112 = v150 | 0x40000;
    }

    else
    {
      v112 = v150;
    }
  }

  sub_10000A184(v90, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v149, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v170, &unk_1001389D0, &qword_1000F4F60);
  if (v139)
  {
    v151 = v112 | 0x400000;
  }

  else
  {
    v151 = v112;
  }

  sub_10000A184(v178, &unk_1001389D0, &qword_1000F4F60);
  return v151;
}

unint64_t sub_1000410BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003CDC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100061588(v7, v8);
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

unint64_t sub_1000411B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135070, &qword_1000F4F30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_100061F80(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 24 * result;
      *v15 = v9;
      *(v15 + 8) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1000412F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135160, &qword_1000F5048);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
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

unint64_t sub_1000413F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135140, &qword_1000F5028);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100061588(v5, v6);
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

unint64_t sub_100041508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135130, &qword_1000F5010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100061588(v5, v6);
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

unint64_t sub_100041620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003CDC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100061588(v7, v8);
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

unint64_t sub_100041714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100135068, &qword_1000F4F28);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100061588(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_100041810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000418E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041A00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_100041A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100041BBC(unint64_t result)
{
  if (result != 5)
  {
    return sub_100014978(result);
  }

  return result;
}

uint64_t sub_100041C68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041CA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100041DC4(void (*a1)(void *))
{
  v3 = [objc_opt_self() enumeratorWithOptions:0];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100041ED0();
    v7 = v5;
    while (1)
    {
      v9[3] = v6;
      v9[4] = &off_100129D98;
      v9[0] = v7;
      v8 = v7;
      a1(v9);
      if (v1)
      {
        break;
      }

      sub_100003C90(v9);
      v7 = [v3 nextObject];
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_100003C90(v9);
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_100041ED0()
{
  result = qword_100135348;
  if (!qword_100135348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100135348);
  }

  return result;
}

uint64_t sub_100041F90(char a1)
{
  v4[3] = &type metadata for KextsOutOfOSImageFeatureFlags;
  v4[4] = &off_10012DA10;
  LOBYTE(v4[0]) = a1 & 1;
  StaticString.description.getter();
  sub_100003C4C(v4, &type metadata for KextsOutOfOSImageFeatureFlags);
  v1._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v1);

  String.utf8CString.getter();

  String.utf8CString.getter();

  v2 = j___os_feature_enabled_impl();

  sub_100003C90(v4);
  return v2;
}

uint64_t sub_1000420B0(uint64_t *a1, int a2)
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

uint64_t sub_1000420F8(uint64_t result, int a2, int a3)
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

void *sub_100042148(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry(0);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v31 = v1;
    v42 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v6, 0);
    v40 = v42;
    v8 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v32 = a1 + 72;
    v33 = v6;
    v34 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 36);
      v38 = v10;
      v39 = v13;
      v14 = v35;
      sub_1000418E0(*(a1 + 56) + *(v36 + 72) * v9, v35, type metadata accessor for DriverBinEntry);
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      strcpy(v41, "Staged bundle ");
      HIBYTE(v41[1]) = -18;
      v15 = v37;
      type metadata accessor for URL();
      sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 0x70706120726F6620;
      v17._object = 0xE900000000000020;
      String.append(_:)(v17);
      String.append(_:)(*(v14 + *(v15 + 20)));
      v19 = v41[0];
      v18 = v41[1];
      result = sub_1000471DC(v14, type metadata accessor for DriverBinEntry);
      v20 = v40;
      v42 = v40;
      v22 = v40[2];
      v21 = v40[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1000635A4((v21 > 1), v22 + 1, 1);
        v20 = v42;
      }

      v20[2] = v22 + 1;
      v23 = &v20[2 * v22];
      v23[4] = v19;
      v23[5] = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v34;
      v24 = *(v34 + 8 * v12);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v20;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v32 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1000147E0(v9, v39, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1000147E0(v9, v39, 0);
      }

LABEL_4:
      v10 = v38 + 1;
      v9 = v11;
      if (v38 + 1 == v33)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_100042504(uint64_t a1)
{
  v3 = sub_100003CDC(&qword_1001354F0, &qword_1000F5408);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v25 - v14;
  v16 = *(v8 + 16);
  v17 = a1;
  v26 = v18;
  v16(&v25 - v14, a1);
  if (*(*v1 + 16) && (, sub_1000615C4(v15), v20 = v19, , (v20 & 1) != 0))
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v27 = 0xD00000000000002DLL;
    v28 = 0x8000000100105990;
    sub_1000470D8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v21 = v26;
    (v16)(v12, v15, v26);
    sub_1000418E0(v17, v6, type metadata accessor for DriverBinEntry);
    v22 = type metadata accessor for DriverBinEntry(0);
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
    sub_100048218(v6, v12);
    return (*(v8 + 8))(v15, v21);
  }

  return result;
}

uint64_t sub_1000427FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v7 = sub_100003CDC(&qword_1001354B0, &qword_1000F53F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v13 - v10;
  sub_100003C4C(a1, a1[3]);
  sub_100046E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100003CDC(&qword_100135490, &qword_1000F53E8);
  sub_100046F98();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000429B8()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x73656972746E65;
  }
}

uint64_t sub_1000429EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100042AC8(uint64_t a1)
{
  v2 = sub_100046E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042B04(uint64_t a1)
{
  v2 = sub_100046E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B40@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100046C08(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_100042B90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DriverBinEntry(0);
  v55 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v7);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UUID();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59, v10);
  v53 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = v50 - v18;
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v61 = 0xD000000000000013;
  v62 = 0x8000000100105910;
  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v60._countAndFlagsBits = *(a1 + 16);

  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x73656972746E6520;
  v23._object = 0xEA00000000000A3ALL;
  String.append(_:)(v23);
  v24 = 0;
  v56 = a1;
  v27 = *(a1 + 64);
  v26 = a1 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v50[2] = v9 + 16;
  v51 = v19;
  v50[0] = v26;
  v50[1] = v9 + 32;
  v54 = v9;
  v57 = (v9 + 8);
  v52 = v16;
  if ((v29 & v25) != 0)
  {
    while (1)
    {
      v32 = v24;
LABEL_12:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v56;
      v38 = v53;
      v39 = v54;
      v40 = v59;
      (*(v54 + 16))(v53, *(v56 + 48) + *(v54 + 72) * v36, v59);
      v41 = v58;
      sub_1000418E0(*(v37 + 56) + *(v55 + 72) * v36, v58, type metadata accessor for DriverBinEntry);
      v42 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v43 = *(v42 + 48);
      v44 = *(v39 + 32);
      v16 = v52;
      v44(v52, v38, v40);
      sub_100047174(v41, &v16[v43], type metadata accessor for DriverBinEntry);
      (*(*(v42 - 8) + 56))(v16, 0, 1, v42);
      v34 = v32;
      v19 = v51;
LABEL_13:
      sub_100020D24(v16, v19, &qword_1001342E0, &unk_1000F3A30);
      v45 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v45 - 8) + 48))(v19, 1, v45) == 1)
      {
        break;
      }

      v46 = v58;
      sub_100047174(&v19[*(v45 + 48)], v58, type metadata accessor for DriverBinEntry);
      v60._countAndFlagsBits = sub_10004310C();
      v60._object = v47;
      v48._countAndFlagsBits = 10;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      String.append(_:)(v60);

      sub_1000471DC(v46, type metadata accessor for DriverBinEntry);
      (*v57)(v19, v59);
      v24 = v34;
      if (!v30)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v31 <= v24 + 1)
    {
      v33 = v24 + 1;
    }

    else
    {
      v33 = v31;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v32 >= v31)
      {
        v49 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
        (*(*(v49 - 8) + 56))(v16, 1, 1, v49);
        v30 = 0;
        goto LABEL_13;
      }

      v30 = *(v50[0] + 8 * v32);
      ++v24;
      if (v30)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004310C()
{
  v1 = v0;
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setTimeZone:isa];

  type metadata accessor for UUID();
  sub_1000470D8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  v50 = v9;
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = type metadata accessor for DriverBinEntry(0);
  v12 = type metadata accessor for URL();
  v44 = sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x8000000100105930;
  v15 = sub_1000199E4();
  v18 = sub_10004448C(0x7FFFFFFFFFFFFFFFLL, 1, v15, v16, v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    v42[1] = v12;
    v42[2] = v11;
    v42[3] = v1;
    v43 = v7;
    v47 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v19, 0);
    v20 = v47;
    v42[0] = v18;
    v21 = v18 + 56;
    do
    {
      v45 = 538976288;
      v46 = 0xE400000000000000;

      v22._countAndFlagsBits = static String._fromSubstring(_:)();
      String.append(_:)(v22);

      v23 = v45;
      v24 = v46;
      v47 = v20;
      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        sub_1000635A4((v25 > 1), v26 + 1, 1);
        v20 = v47;
      }

      v20[2] = v26 + 1;
      v27 = &v20[2 * v26];
      v27[4] = v23;
      v27[5] = v24;
      v21 += 32;
      --v19;
    }

    while (v19);

    v7 = v43;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  v45 = v20;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  String.append(_:)(v48);

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v48._countAndFlagsBits = 0xD000000000000013;
  v48._object = 0x8000000100105950;
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 10;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  String.append(_:)(v48);

  v48._countAndFlagsBits = 0x656D695420202020;
  v48._object = 0xEF203A706D617473;
  v35 = Date._bridgeToObjectiveC()().super.isa;
  v36 = [v7 stringFromDate:v35];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  String.append(_:)(v48);

  return v49;
}

uint64_t sub_100043630(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100044880(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000436C0()
{
  _StringGuts.grow(_:)(27);

  strcpy(v5, "Staged bundle ");
  HIBYTE(v5[1]) = -18;
  v1 = type metadata accessor for DriverBinEntry(0);
  type metadata accessor for URL();
  sub_1000470D8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x70706120726F6620;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + *(v1 + 20)));
  return v5[0];
}

uint64_t sub_1000437E4(void *a1)
{
  v3 = sub_100003CDC(&qword_1001354E8, &qword_1000F5400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - v6;
  sub_100003C4C(a1, a1[3]);
  sub_100047084();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_1000470D8(&qword_1001354C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for DriverBinEntry(0);
    v13 = 1;
    type metadata accessor for ApplicationRecord(0);
    sub_1000470D8(&qword_1001349D8, type metadata accessor for ApplicationRecord, &unk_1000F40CC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    type metadata accessor for URL();
    sub_1000470D8(&qword_100134990, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = 4;
    type metadata accessor for Date();
    sub_1000470D8(&qword_100134608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100043B0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = type metadata accessor for Date();
  v36 = *(v39 - 8);
  __chkstk_darwin(v39, v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v43 = *(v47 - 8);
  v6 = __chkstk_darwin(v47, v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v41 = &v35 - v9;
  v42 = type metadata accessor for ApplicationRecord(0);
  __chkstk_darwin(v42, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v48 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003CDC(&qword_1001354D8, &qword_1000F53F8);
  v45 = *(v16 - 8);
  v46 = v16;
  __chkstk_darwin(v16, v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for DriverBinEntry(0);
  __chkstk_darwin(v20, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003C4C(a1, a1[3]);
  sub_100047084();
  v49 = v19;
  v24 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100003C90(a1);
  }

  v50 = v20;
  v25 = v47;
  v55 = 0;
  sub_1000470D8(&qword_1001354A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(v23, v48, v13);
  v54 = 1;
  sub_1000470D8(&qword_1001349C0, type metadata accessor for ApplicationRecord, &unk_1000F40F4);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100047174(v12, &v23[v50[5]], type metadata accessor for ApplicationRecord);
  v53 = 2;
  sub_1000470D8(&qword_100134978, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v27 = v41;
  v48 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v50[6];
  v29 = *(v43 + 32);
  v35 = v23;
  v41 = v29;
  (v29)(&v23[v28], v27, v25);
  v52 = 3;
  v30 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = a1;
  v31 = v35;
  (v41)(&v35[v50[7]], v30, v25);
  v51 = 4;
  sub_1000470D8(&qword_1001345F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v33 = v38;
  v32 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 8))(v49, v26);
  (*(v36 + 32))(v31 + v50[8], v33, v32);
  sub_1000418E0(v31, v37, type metadata accessor for DriverBinEntry);
  sub_100003C90(v42);
  return sub_1000471DC(v31, type metadata accessor for DriverBinEntry);
}

uint64_t sub_100044314()
{
  v1 = *v0;
  v2 = 0x65626D754E6E6962;
  v3 = 0x5255646567617473;
  v4 = 0x7542646567617473;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F636552707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000443BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100047864(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000443E4(uint64_t a1)
{
  v2 = sub_100047084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044420(uint64_t a1)
{
  v2 = sub_100047084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004448C@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = sub_100031B10((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_100031B10(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = String.subscript.getter();
        v9 = v19;
        result = sub_100046388(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = String.index(after:)();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = String.subscript.getter();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100031B10(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_100031B10((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = String.index(after:)();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_100031B10(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_100031B10((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_100044880(uint64_t a1, uint64_t a2)
{
  v123 = type metadata accessor for DriverBinEntry(0);
  v4 = *(v123 - 8);
  v6 = __chkstk_darwin(v123, v5);
  v124 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v105 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v105 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v121 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v105 - v21;
  v23 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v25 = __chkstk_darwin(v23 - 8, v24);
  result = __chkstk_darwin(v25, v26);
  v30 = &v105 - v29;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v116 = v28;
  v117 = 0;
  v122 = v4;
  v114 = a2;
  v31 = 0;
  v32 = *(a1 + 64);
  v106 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v105 = (v33 + 63) >> 6;
  v120 = (v16 + 32);
  v112 = v16 + 16;
  v113 = (v16 + 8);
  v115 = v30;
  v110 = v14;
  v111 = a1;
  v108 = v16;
  v109 = v15;
  v107 = v22;
  while (v35)
  {
    v119 = (v35 - 1) & v35;
    v36 = __clz(__rbit64(v35)) | (v31 << 6);
    v37 = v122;
LABEL_16:
    (*(v16 + 16))(v22, *(a1 + 48) + *(v16 + 72) * v36, v15);
    sub_1000418E0(*(a1 + 56) + *(v37 + 72) * v36, v14, type metadata accessor for DriverBinEntry);
    v42 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    v43 = *(v42 + 48);
    v44 = v116;
    (*(v16 + 32))(v116, v22, v15);
    sub_100047174(v14, v44 + v43, type metadata accessor for DriverBinEntry);
    (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
LABEL_17:
    v45 = v115;
    sub_100020D24(v44, v115, &qword_1001342E0, &unk_1000F3A30);
    v46 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
    v48 = v47 == 1;
    if (v47 == 1)
    {
      return v48;
    }

    v49 = *(v46 + 48);
    v50 = v121;
    (*v120)(v121, v45, v15);
    sub_100047174(v45 + v49, v11, type metadata accessor for DriverBinEntry);
    v51 = v114;
    v52 = sub_1000615C4(v50);
    v54 = v53;
    (*v113)(v50, v15);
    if ((v54 & 1) == 0)
    {
      goto LABEL_102;
    }

    v118 = v48;
    sub_1000418E0(*(v51 + 56) + *(v122 + 72) * v52, v124, type metadata accessor for DriverBinEntry);
    v55 = v11;
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v56 = *(v123 + 20);
    v57 = v124 + v56;
    v58 = &v11[v56];
    if ((*(v124 + v56) != *&v11[v56] || *(v124 + v56 + 8) != *&v11[v56 + 8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v59 = type metadata accessor for ApplicationRecord(0);
    result = static URL.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_101;
    }

    v60 = v59[6];
    v61 = *(v57 + v60);
    v62 = *&v58[v60];
    v63 = *(v61 + 16);
    if (v63 != *(v62 + 16))
    {
      goto LABEL_101;
    }

    if (v63 && v61 != v62)
    {
      v64 = (v61 + 40);
      v65 = (v62 + 40);
      while (1)
      {
        result = *(v64 - 1);
        if (result != *(v65 - 1) || *v64 != *v65)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v64 += 2;
        v65 += 2;
        if (!--v63)
        {
          goto LABEL_35;
        }
      }

LABEL_101:
      sub_1000471DC(v124, type metadata accessor for DriverBinEntry);
      v11 = v55;
LABEL_102:
      sub_1000471DC(v11, type metadata accessor for DriverBinEntry);
      return 0;
    }

LABEL_35:
    v67 = v59[7];
    v68 = *(v57 + v67);
    v69 = *(v57 + v67 + 8);
    v70 = &v58[v67];
    v72 = *v70;
    v71 = v70[1];
    v73 = v69 >> 62;
    v74 = v71 >> 62;
    if (v69 >> 62 == 3)
    {
      if (v68)
      {
        v75 = 0;
      }

      else
      {
        v75 = v69 == 0xC000000000000000;
      }

      if (v75 && v71 >> 62 == 3 && !v72 && v71 == 0xC000000000000000)
      {
        goto LABEL_70;
      }

      v78 = 0;
    }

    else if (v73)
    {
      if (v73 == 1)
      {
        LODWORD(v78) = HIDWORD(v68) - v68;
        if (__OFSUB__(HIDWORD(v68), v68))
        {
          goto LABEL_110;
        }

        v78 = v78;
      }

      else
      {
        v81 = *(v68 + 16);
        v80 = *(v68 + 24);
        v82 = __OFSUB__(v80, v81);
        v78 = v80 - v81;
        if (v82)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v78 = BYTE6(v69);
    }

    if (v74 > 1)
    {
      if (v74 != 2)
      {
        if (v78)
        {
          goto LABEL_101;
        }

        goto LABEL_70;
      }

      v85 = *(v72 + 16);
      v84 = *(v72 + 24);
      v82 = __OFSUB__(v84, v85);
      v83 = v84 - v85;
      if (v82)
      {
        goto LABEL_107;
      }
    }

    else if (v74)
    {
      LODWORD(v83) = HIDWORD(v72) - v72;
      if (__OFSUB__(HIDWORD(v72), v72))
      {
        goto LABEL_106;
      }

      v83 = v83;
    }

    else
    {
      v83 = BYTE6(v71);
    }

    if (v78 != v83)
    {
      goto LABEL_101;
    }

    if (v78 >= 1)
    {
      sub_1000146C4(v72, v71);
      v86 = v117;
      result = sub_10004617C(v68, v69, v72, v71);
      v117 = v86;
      if ((result & 1) == 0)
      {
        goto LABEL_101;
      }
    }

LABEL_70:
    v87 = v59[8];
    v88 = *(v57 + v87);
    v89 = *(v57 + v87 + 8);
    v90 = &v58[v87];
    v91 = *v90;
    v92 = v90[1];
    v93 = v89 >> 62;
    v94 = v92 >> 62;
    if (v89 >> 62 == 3)
    {
      v95 = 0;
      if (!v88 && v89 == 0xC000000000000000 && v92 >> 62 == 3)
      {
        v95 = 0;
        if (!v91 && v92 == 0xC000000000000000)
        {
          goto LABEL_96;
        }
      }

LABEL_83:
      if (v94 <= 1)
      {
        goto LABEL_84;
      }

      goto LABEL_89;
    }

    if (v93 == 2)
    {
      v97 = *(v88 + 16);
      v96 = *(v88 + 24);
      v82 = __OFSUB__(v96, v97);
      v95 = v96 - v97;
      if (v82)
      {
        goto LABEL_112;
      }

      goto LABEL_83;
    }

    if (v93 == 1)
    {
      LODWORD(v95) = HIDWORD(v88) - v88;
      if (__OFSUB__(HIDWORD(v88), v88))
      {
        goto LABEL_113;
      }

      v95 = v95;
      if (v94 <= 1)
      {
LABEL_84:
        if (v94)
        {
          LODWORD(v98) = HIDWORD(v91) - v91;
          if (__OFSUB__(HIDWORD(v91), v91))
          {
            goto LABEL_109;
          }

          v98 = v98;
        }

        else
        {
          v98 = BYTE6(v92);
        }

        goto LABEL_91;
      }
    }

    else
    {
      v95 = BYTE6(v89);
      if (v94 <= 1)
      {
        goto LABEL_84;
      }
    }

LABEL_89:
    if (v94 != 2)
    {
      if (v95)
      {
        goto LABEL_101;
      }

      goto LABEL_96;
    }

    v100 = *(v91 + 16);
    v99 = *(v91 + 24);
    v82 = __OFSUB__(v99, v100);
    v98 = v99 - v100;
    if (v82)
    {
      goto LABEL_108;
    }

LABEL_91:
    if (v95 != v98)
    {
      goto LABEL_101;
    }

    if (v95 >= 1)
    {
      sub_1000146C4(v91, v92);
      v101 = v117;
      v102 = sub_10004617C(v88, v89, v91, v92);
      v117 = v101;
      if ((v102 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

LABEL_96:
    if ((static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_101;
    }

    v103 = v124;
    v11 = v55;
    v104 = static Date.== infix(_:_:)();
    sub_1000471DC(v103, type metadata accessor for DriverBinEntry);
    result = sub_1000471DC(v55, type metadata accessor for DriverBinEntry);
    v14 = v110;
    a1 = v111;
    v16 = v108;
    v15 = v109;
    v22 = v107;
    v35 = v119;
    v48 = v118;
    if ((v104 & 1) == 0)
    {
      return v48;
    }
  }

  if (v105 <= v31 + 1)
  {
    v38 = v31 + 1;
  }

  else
  {
    v38 = v105;
  }

  v39 = v38 - 1;
  v37 = v122;
  while (1)
  {
    v40 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v40 >= v105)
    {
      v79 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v44 = v116;
      (*(*(v79 - 8) + 56))(v116, 1, 1, v79);
      v119 = 0;
      v31 = v39;
      goto LABEL_17;
    }

    v41 = *(v106 + 8 * v40);
    ++v31;
    if (v41)
    {
      v119 = (v41 - 1) & v41;
      v36 = __clz(__rbit64(v41)) | (v40 << 6);
      v31 = v40;
      goto LABEL_16;
    }
  }

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
  return result;
}

uint64_t sub_1000451F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  v106 = *(v4 - 8);
  v107 = v4;
  v6 = __chkstk_darwin(v4, v5);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = (&v95 - v11);
  __chkstk_darwin(v10, v13);
  v105 = &v95 - v14;
  v15 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v17 = __chkstk_darwin(v15 - 8, v16);
  result = __chkstk_darwin(v17, v18);
  v22 = (&v95 - v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v102 = a2;
  v103 = v21;
  v23 = 0;
  v24 = *(a1 + 64);
  v96 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = &qword_1000F41A0;
  v29 = (v25 + 63) >> 6;
  v99 = (&v95 - v20);
  v100 = v8;
  v97 = v29;
  v98 = a1;
  while (v27)
  {
    v104 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_19:
    v35 = (*(a1 + 48) + 16 * v30);
    v36 = *v35;
    v37 = v35[1];
    v38 = v105;
    sub_1000418E0(*(a1 + 56) + *(v106 + 72) * v30, v105, type metadata accessor for ApplicationRecord);
    v39 = sub_100003CDC(&qword_1001349F8, v28);
    v40 = *(v39 + 48);
    v41 = v28;
    v42 = v103;
    *v103 = v36;
    *(v42 + 8) = v37;
    sub_100047174(v38, v42 + v40, type metadata accessor for ApplicationRecord);
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    sub_1000146C4(v36, v37);
    v22 = v99;
LABEL_20:
    sub_100020D24(v42, v22, &qword_1001349F0, &unk_1000F56C0);
    v43 = sub_100003CDC(&qword_1001349F8, v41);
    v44 = (*(*(v43 - 8) + 48))(v22, 1, v43) == 1;
    result = v44;
    if (v44)
    {
      return result;
    }

    v101 = v44;
    v45 = *v22;
    v46 = v22[1];
    sub_100047174(v22 + *(v43 + 48), v12, type metadata accessor for ApplicationRecord);
    v47 = v102;
    v48 = sub_1000618A8(v45, v46);
    v50 = v49;
    sub_1000128D8(v45, v46);
    if ((v50 & 1) == 0)
    {
      goto LABEL_98;
    }

    v51 = *(v47 + 56) + *(v106 + 72) * v48;
    v52 = v100;
    sub_1000418E0(v51, v100, type metadata accessor for ApplicationRecord);
    v28 = v41;
    v53 = v52;
    if ((*v52 != *v12 || v52[1] != v12[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_97;
    }

    result = static URL.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_97;
    }

    v54 = v107[6];
    v55 = *(v52 + v54);
    v56 = *(v12 + v54);
    v57 = *(v55 + 16);
    if (v57 != *(v56 + 16))
    {
      goto LABEL_97;
    }

    if (v57 && v55 != v56)
    {
      v58 = (v55 + 40);
      v59 = (v56 + 40);
      while (1)
      {
        result = *(v58 - 1);
        if (result != *(v59 - 1) || *v58 != *v59)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v58 += 2;
        v59 += 2;
        if (!--v57)
        {
          goto LABEL_37;
        }
      }

LABEL_97:
      sub_1000471DC(v53, type metadata accessor for ApplicationRecord);
LABEL_98:
      sub_1000471DC(v12, type metadata accessor for ApplicationRecord);
      return 0;
    }

LABEL_37:
    v61 = v107[7];
    v62 = *(v53 + v61);
    v63 = *(v53 + v61 + 8);
    v64 = (v12 + v61);
    v65 = *v64;
    v66 = v64[1];
    v67 = v63 >> 62;
    v68 = v66 >> 62;
    if (v63 >> 62 == 3)
    {
      if (v62)
      {
        v69 = 0;
      }

      else
      {
        v69 = v63 == 0xC000000000000000;
      }

      if (v69 && v66 >> 62 == 3 && !v65 && v66 == 0xC000000000000000)
      {
        goto LABEL_72;
      }

      v72 = 0;
    }

    else if (v67)
    {
      if (v67 == 1)
      {
        LODWORD(v72) = HIDWORD(v62) - v62;
        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_106;
        }

        v72 = v72;
      }

      else
      {
        v75 = *(v62 + 16);
        v74 = *(v62 + 24);
        v76 = __OFSUB__(v74, v75);
        v72 = v74 - v75;
        if (v76)
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v72 = BYTE6(v63);
    }

    if (v68 > 1)
    {
      if (v68 != 2)
      {
        if (v72)
        {
          goto LABEL_97;
        }

        goto LABEL_72;
      }

      v79 = *(v65 + 16);
      v78 = *(v65 + 24);
      v76 = __OFSUB__(v78, v79);
      v77 = v78 - v79;
      if (v76)
      {
        goto LABEL_103;
      }
    }

    else if (v68)
    {
      LODWORD(v77) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
        goto LABEL_102;
      }

      v77 = v77;
    }

    else
    {
      v77 = BYTE6(v66);
    }

    if (v72 != v77)
    {
      goto LABEL_97;
    }

    if (v72 >= 1)
    {
      sub_1000146C4(v65, v66);
      result = sub_10004617C(v62, v63, v65, v66);
      if ((result & 1) == 0)
      {
        goto LABEL_97;
      }
    }

LABEL_72:
    v80 = v107[8];
    v82 = *(v53 + v80);
    v81 = *(v53 + v80 + 8);
    v83 = (v12 + v80);
    v84 = *v83;
    v85 = v83[1];
    v86 = v81 >> 62;
    v87 = v85 >> 62;
    if (v81 >> 62 == 3)
    {
      v88 = 0;
      if (!v82 && v81 == 0xC000000000000000 && v85 >> 62 == 3)
      {
        v88 = 0;
        if (!v84 && v85 == 0xC000000000000000)
        {
          goto LABEL_8;
        }
      }

LABEL_85:
      if (v87 <= 1)
      {
        goto LABEL_86;
      }

      goto LABEL_91;
    }

    if (v86 == 2)
    {
      v90 = *(v82 + 16);
      v89 = *(v82 + 24);
      v76 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (v76)
      {
        goto LABEL_108;
      }

      goto LABEL_85;
    }

    if (v86 == 1)
    {
      LODWORD(v88) = HIDWORD(v82) - v82;
      if (__OFSUB__(HIDWORD(v82), v82))
      {
        goto LABEL_109;
      }

      v88 = v88;
      if (v87 <= 1)
      {
LABEL_86:
        if (v87)
        {
          LODWORD(v91) = HIDWORD(v84) - v84;
          if (__OFSUB__(HIDWORD(v84), v84))
          {
            goto LABEL_104;
          }

          v91 = v91;
        }

        else
        {
          v91 = BYTE6(v85);
        }

        goto LABEL_93;
      }
    }

    else
    {
      v88 = BYTE6(v81);
      if (v87 <= 1)
      {
        goto LABEL_86;
      }
    }

LABEL_91:
    if (v87 != 2)
    {
      if (v88)
      {
        goto LABEL_97;
      }

      goto LABEL_8;
    }

    v93 = *(v84 + 16);
    v92 = *(v84 + 24);
    v76 = __OFSUB__(v92, v93);
    v91 = v92 - v93;
    if (v76)
    {
      goto LABEL_105;
    }

LABEL_93:
    if (v88 != v91)
    {
      goto LABEL_97;
    }

    if (v88 < 1)
    {
LABEL_8:
      sub_1000471DC(v53, type metadata accessor for ApplicationRecord);
      result = sub_1000471DC(v12, type metadata accessor for ApplicationRecord);
      v29 = v97;
      a1 = v98;
      v27 = v104;
    }

    else
    {
      sub_1000146C4(v84, v85);
      v94 = sub_10004617C(v82, v81, v84, v85);
      sub_1000471DC(v53, type metadata accessor for ApplicationRecord);
      sub_1000471DC(v12, type metadata accessor for ApplicationRecord);
      v29 = v97;
      a1 = v98;
      v27 = v104;
      result = v101;
      if ((v94 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (v29 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  while (1)
  {
    v33 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
      v73 = sub_100003CDC(&qword_1001349F8, v28);
      v41 = v28;
      v42 = v103;
      (*(*(v73 - 8) + 56))(v103, 1, 1, v73);
      v104 = 0;
      v23 = v32;
      goto LABEL_20;
    }

    v34 = *(v96 + 8 * v33);
    ++v23;
    if (v34)
    {
      v104 = (v34 - 1) & v34;
      v30 = __clz(__rbit64(v34)) | (v33 << 6);
      v23 = v33;
      goto LABEL_19;
    }
  }

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
  return result;
}

uint64_t sub_100045A08(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  v70 = *(active - 8);
  v5 = __chkstk_darwin(active, v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v59 - v10;
  __chkstk_darwin(v9, v12);
  v67 = &v59 - v13;
  v14 = sub_100003CDC(&qword_100134BD0, &qword_1000F44D8);
  v16 = __chkstk_darwin(v14 - 8, v15);
  result = __chkstk_darwin(v16, v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v65 = (&v59 - v19);
  v66 = v20;
  v21 = 0;
  v61 = a1;
  v22 = *(a1 + 64);
  v60 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v27 = &qword_1000F44E0;
  v63 = v11;
  v64 = a2;
  v62 = v26;
  while (v25)
  {
    v69 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_18:
    v33 = (*(v61 + 48) + 16 * v28);
    v34 = *v33;
    v35 = v33[1];
    v36 = v67;
    sub_1000418E0(*(v61 + 56) + *(v70 + 72) * v28, v67, type metadata accessor for ActiveDriverInfo);
    v37 = sub_100003CDC(&qword_100134BD8, v27);
    v38 = *(v37 + 48);
    v39 = v27;
    v40 = v66;
    *v66 = v34;
    *(v40 + 8) = v35;
    sub_100047174(v36, v40 + v38, type metadata accessor for ActiveDriverInfo);
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
    sub_1000146C4(v34, v35);
LABEL_19:
    v41 = v65;
    sub_100020D24(v40, v65, &qword_100134BD0, &qword_1000F44D8);
    v42 = sub_100003CDC(&qword_100134BD8, v39);
    v43 = 1;
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      return v43;
    }

    v44 = v39;
    v45 = v7;
    v46 = v70;
    v47 = *v41;
    v48 = v41[1];
    v49 = v63;
    sub_100047174(v41 + *(v42 + 48), v63, type metadata accessor for ActiveDriverInfo);
    v50 = v64;
    v51 = sub_1000618A8(v47, v48);
    v53 = v52;
    sub_1000128D8(v47, v48);
    if ((v53 & 1) == 0)
    {
      goto LABEL_28;
    }

    v7 = v45;
    sub_1000418E0(*(v50 + 56) + *(v46 + 72) * v51, v45, type metadata accessor for ActiveDriverInfo);
    if ((static URL.== infix(_:_:)() & 1) == 0 || ((v54 = *(active + 20), v55 = *(v45 + v54), v56 = *(v45 + v54 + 8), v57 = (v49 + v54), v55 != *v57) || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_1000471DC(v45, type metadata accessor for ActiveDriverInfo);
LABEL_28:
      sub_1000471DC(v49, type metadata accessor for ActiveDriverInfo);
      return 0;
    }

    sub_1000471DC(v45, type metadata accessor for ActiveDriverInfo);
    result = sub_1000471DC(v49, type metadata accessor for ActiveDriverInfo);
    v27 = v44;
    v26 = v62;
    v25 = v69;
  }

  if (v26 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v58 = sub_100003CDC(&qword_100134BD8, v27);
      v39 = v27;
      v40 = v66;
      (*(*(v58 - 8) + 56))(v66, 1, 1, v58);
      v69 = 0;
      v21 = v30;
      goto LABEL_19;
    }

    v32 = *(v60 + 8 * v31);
    ++v21;
    if (v32)
    {
      v69 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100045F4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10004617C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100046708(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000128D8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100045F4C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000128D8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10004630C(unint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100046388(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1000464D8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1000464D8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100046570(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1000465E4(result, a2, a3, v7) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100046570(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10004630C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000465E4(unint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v6 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v14[2] = v4;
      v14[3] = v5;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v14[0] = a2;
        v14[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v6 != (HIBYTE(a3) & 0xF) && (*(v14 + v6) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v6 - 1;
            v12 = *(&v13 + v6-- + 7) & 0xC0;
          }

          while (v12 == 128);
          return v8 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v7 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v6 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = result >> 16;
        v7 = _StringObject.sharedUTF8.getter();
        v6 = v13;
        if (v13 == v11)
        {
          goto LABEL_14;
        }
      }

      if ((*(v7 + v6) & 0xC0) == 0x80)
      {
        do
        {
          v8 = v6 - 1;
          v9 = *(v7 - 1 + v6--) & 0xC0;
        }

        while (v9 == 128);
        return v8 << 16;
      }

LABEL_14:
      v8 = v6;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 != v10)
    {

      return _StringGuts.foreignScalarAlign(_:)(a4);
    }
  }

  return result;
}

uint64_t sub_100046708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100045F4C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000467C0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DriverBinEntry(0) + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a1 + v4) == *(a2 + v4) && *(a1 + v4 + 8) == *(a2 + v4 + 8);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for ApplicationRecord(0);
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_10001A6CC(*(v5 + v8[6]), *(v6 + v8[6])) & 1) == 0 || !sub_10006475C(*(v5 + v8[7]), *(v5 + v8[7] + 8), *(v6 + v8[7]), *(v6 + v8[7] + 8)) || !sub_10006475C(*(v5 + v8[8]), *(v5 + v8[8] + 8), *(v6 + v8[8]), *(v6 + v8[8] + 8)) || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_1000468FC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100047120();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {

    sub_1000128D8(a1, a2);
  }

  else
  {
    v6 = *&v13[8];
    v3 = *v13;
    if (__PAIR128__(0x80000001001038C0, 0xD000000000000024) == *&v13[8] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000128D8(a1, a2);
    }

    else
    {

      *v13 = 0;
      *&v13[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v8._countAndFlagsBits = 0xD000000000000028;
      v8._object = 0x80000001001059C0;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 0xD000000000000024;
      v9._object = 0x80000001001038C0;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 0x20646E756F66202CLL;
      v10._object = 0xE800000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v6;
      v11._object = *&v13[16];
      String.append(_:)(v11);

      sub_10001449C();
      swift_allocError();
      *v12 = *v13;
      *(v12 + 16) = *v13;
      *(v12 + 32) = *&v13[16];
      *(v12 + 48) = v14;
      *(v12 + 64) = v15;
      *(v12 + 72) = 50;
      swift_willThrow();
      sub_1000128D8(a1, a2);
    }
  }

  return v3;
}

uint64_t sub_100046B20(uint64_t a1)
{
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v2._countAndFlagsBits = 0x73656972746E6520;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  sub_100042148(a1);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t sub_100046C08(void *a1)
{
  v3 = sub_100003CDC(&qword_100135480, &qword_1000F53E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100003C4C(a1, v8);
  sub_100046E0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100003CDC(&qword_100135490, &qword_1000F53E8);
    v10[7] = 0;
    sub_100046E60();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_100046E0C()
{
  result = qword_100135488;
  if (!qword_100135488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135488);
  }

  return result;
}

unint64_t sub_100046E60()
{
  result = qword_100135498;
  if (!qword_100135498)
  {
    sub_100009FA4(&qword_100135490, &qword_1000F53E8);
    sub_1000470D8(&qword_1001354A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000470D8(&qword_1001354A8, type metadata accessor for DriverBinEntry, &unk_1000F52EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135498);
  }

  return result;
}

uint64_t type metadata accessor for DriverBinEntry(uint64_t a1)
{
  result = qword_100135558;
  if (!qword_100135558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100046F98()
{
  result = qword_1001354B8;
  if (!qword_1001354B8)
  {
    sub_100009FA4(&qword_100135490, &qword_1000F53E8);
    sub_1000470D8(&qword_1001354C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000470D8(&qword_1001354C8, type metadata accessor for DriverBinEntry, &unk_1000F52C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354B8);
  }

  return result;
}

unint64_t sub_100047084()
{
  result = qword_1001354E0;
  if (!qword_1001354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354E0);
  }

  return result;
}

uint64_t sub_1000470D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100047120()
{
  result = qword_1001354F8;
  if (!qword_1001354F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001354F8);
  }

  return result;
}

uint64_t sub_100047174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000471DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100047270(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ApplicationRecord(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for URL();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_10004740C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ApplicationRecord(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for URL();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1000475A0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ApplicationRecord(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Date();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100047658()
{
  result = qword_1001355A0;
  if (!qword_1001355A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A0);
  }

  return result;
}

unint64_t sub_1000476B0()
{
  result = qword_1001355A8;
  if (!qword_1001355A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355A8);
  }

  return result;
}

unint64_t sub_100047708()
{
  result = qword_1001355B0;
  if (!qword_1001355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B0);
  }

  return result;
}

unint64_t sub_100047760()
{
  result = qword_1001355B8;
  if (!qword_1001355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355B8);
  }

  return result;
}

unint64_t sub_1000477B8()
{
  result = qword_1001355C0;
  if (!qword_1001355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C0);
  }

  return result;
}

unint64_t sub_100047810()
{
  result = qword_1001355C8;
  if (!qword_1001355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001355C8);
  }

  return result;
}

uint64_t sub_100047864(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65626D754E6E6962 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F636552707061 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5255646567617473 && a2 == 0xE90000000000004CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542646567617473 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_100047A20(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3, v4);
  v41 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v39 = v10;
  v33[1] = v1;
  v46 = _swiftEmptyArrayStorage;
  sub_1000635C4(0, v11, 0);
  v12 = v46;
  v13 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v15 = v7;
  v16 = result;
  v17 = 0;
  v40 = v15;
  v37 = v15 + 32;
  v38 = (v15 + 16);
  v34 = a1 + 72;
  v35 = v11;
  v36 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v44 = v17;
    v45 = v20;
    v21 = v41;
    sub_100014718(*(a1 + 56) + *(v42 + 72) * v16, v41, type metadata accessor for DriverBinEntry);
    v22 = v39;
    (*v38)(v39, v21 + *(v43 + 24), v6);
    sub_100052CD4(v21, type metadata accessor for DriverBinEntry);
    v46 = v12;
    v23 = v6;
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000635C4((v24 > 1), v25 + 1, 1);
      v12 = v46;
    }

    v12[2] = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v22, v23);
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    v6 = v23;
    v13 = v36;
    v26 = *(v36 + 8 * v19);
    if ((v26 & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v16 & 0x3F));
    if (v27)
    {
      v18 = __clz(__rbit64(v27)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v19 << 6;
      v29 = v19 + 1;
      v30 = (v34 + 8 * v19);
      while (v29 < (v18 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000147E0(v16, v45, 0);
          v18 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v16, v45, 0);
    }

LABEL_4:
    v17 = v44 + 1;
    v16 = v18;
    if (v44 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100047DE8(uint64_t a1)
{
  v42 = type metadata accessor for URL();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v34 = v1;
  v48 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v6, 0);
  v7 = v48;
  v8 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v39 = v3 + 8;
  v40 = v3 + 16;
  v35 = a1 + 64;
  v36 = v6;
  v37 = v3;
  v38 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v43 = v11;
    v44 = v14;
    v15 = *(a1 + 48) + *(v3 + 72) * v10;
    v16 = *(v3 + 16);
    v45 = v7;
    v18 = v41;
    v17 = v42;
    v16(v41, v15, v42);
    v46 = 8224;
    v47 = 0xE200000000000000;
    v19._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v19);

    v20 = v3;
    v21 = v46;
    v22 = v47;
    v23 = v18;
    v7 = v45;
    result = (*(v20 + 8))(v23, v17);
    v48 = v7;
    v25 = v7[2];
    v24 = v7[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_1000635A4((v24 > 1), v25 + 1, 1);
      v7 = v48;
    }

    v7[2] = v25 + 1;
    v26 = &v7[2 * v25];
    v26[4] = v21;
    v26[5] = v22;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v38;
    v27 = *(v38 + 8 * v13);
    if ((v27 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v13 << 6;
      v30 = v13 + 1;
      v31 = (v35 + 8 * v13);
      while (v30 < (v12 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1000147E0(v10, v44, 0);
          v12 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v10, v44, 0);
    }

LABEL_4:
    v11 = v43 + 1;
    v10 = v12;
    v3 = v37;
    if (v43 + 1 == v36)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

_OWORD *sub_100048114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10000B48C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100038828(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_10000A184(a1, &qword_1001343C8, &unk_1000F3CA0);
    v7 = sub_100061698(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100039DA4();
        v11 = v13;
      }

      sub_10000B48C((*(v11 + 56) + 32 * v9), v14);
      sub_100036EFC(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_10000A184(v14, &qword_1001343C8, &unk_1000F3CA0);
  }

  return result;
}

uint64_t sub_100048218(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003CDC(&qword_1001354F0, &qword_1000F5408);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DriverBinEntry(0);
  __chkstk_darwin(v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000A184(a1, &qword_1001354F0, &qword_1000F5408);
    sub_100036744(v8, a2);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000A184(v8, &qword_1001354F0, &qword_1000F5408);
  }

  else
  {
    sub_10004F64C(a1, v12, type metadata accessor for DriverBinEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_100038AA4(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for UUID();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_100048438(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ApplicationRecord(0);
  __chkstk_darwin(v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000A184(a1, &qword_1001342D8, &unk_100101820);
    sub_100036A38(a2, a3, v10);
    sub_1000128D8(a2, a3);
    return sub_10000A184(v10, &qword_1001342D8, &unk_100101820);
  }

  else
  {
    sub_10004F64C(a1, v14, type metadata accessor for ApplicationRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100039288(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000128D8(a2, a3);
    *v3 = v19;
  }

  return result;
}

uint64_t sub_100048614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100009F34(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1000398B8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000A184(a1, &qword_1001342A8, &unk_1000F39C0);
    sub_100036D08(a2, a3, v9);

    return sub_10000A184(v9, &qword_1001342A8, &unk_1000F39C0);
  }

  return result;
}

uint64_t sub_100048734@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v7 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v12);
  v14 = &v19[-v13];
  v15 = *a1;
  swift_beginAccess();
  sub_100014894(v4 + v15, v14, &unk_1001389D0, &qword_1000F4F60);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a4, v14, v16);
  }

  sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
  URL.appendingPathComponent(_:)();
  (*(v17 + 16))(v11, a4, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  swift_beginAccess();
  sub_100052E00(v11, v4 + v15);
  return swift_endAccess();
}

char *sub_100048948()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  [*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock) lock];
  v8 = (v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  v9 = *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo);
  if (v9)
  {
    v10 = *(v0 + v7);

    [v10 unlock];
    return v9;
  }

  v52 = v7;
  if (qword_100133AD8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000144F0(v11, qword_10014E9C8);

  v53 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54[0] = v16;
    *v15 = 136315138;
    sub_1000486E4(v6);
    v17 = URL.path.getter();
    v51 = v1;
    v19 = v18;
    (*(v3 + 8))(v6, v2);
    v20 = sub_1000E3AF8(v17, v19, v54);
    v1 = v51;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Loading dextbin info, reading plist file from %s", v15, 0xCu);
    sub_100003C90(v16);
  }

  sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(v54);
  v21 = v55;
  v22 = v56;
  sub_100003C4C(v54, v55);
  sub_1000486E4(v6);
  v23 = URL.path.getter();
  v25 = v24;
  (*(v3 + 8))(v6, v2);
  v26 = (*(v22 + 16))(v23, v25, 0, v21, v22);
  v28 = v27;

  sub_100003C90(v54);
  if (v28 >> 60 != 15)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Loading dextbin info, decoding plist", v41, 2u);
    }

    sub_100041D48(v26, v28);
    v9 = sub_1000468FC(v26, v28);
    v44 = v43;
    v46 = v45;
    sub_100014988(v26, v28);
    v47 = *v8;
    v48 = v8[1];
    v49 = v8[2];
    *v8 = v9;
    v8[1] = v44;
    v8[2] = v46;

    sub_10004F708(v47, v48, v49);
    v50 = *(v1 + v52);
    goto LABEL_16;
  }

  v29 = errno.getter();
  result = strerror(v29);
  if (result)
  {
    v31 = String.init(cString:)();
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54[0] = v37;
      *v36 = 136315138;
      v38 = sub_1000E3AF8(v31, v33, v54);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "contentsOfFile failed to read plist: %s", v36, 0xCu);
      sub_100003C90(v37);
    }

    else
    {
    }

    v42 = v52;
    v9 = sub_10003E338(_swiftEmptyArrayStorage);
    v50 = *(v1 + v42);
LABEL_16:
    [v50 unlock];
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100048FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = type metadata accessor for ApplicationRecord(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v11 = v10 - 8;
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v27 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  sub_100014718(a2, &v18[*(v11 + 56)], type metadata accessor for DriverBinEntry);
  sub_100014894(v18, v15, &unk_1001373B0, &unk_1000F3A40);
  v21 = &v15[*(v11 + 56)];
  v22 = type metadata accessor for DriverBinEntry(0);
  sub_100014718(v21 + *(v22 + 20), v9, type metadata accessor for ApplicationRecord);
  sub_100052CD4(v21, type metadata accessor for DriverBinEntry);
  v23 = &v9[*(v6 + 40)];
  v24 = *v23;
  v25 = v23[1];
  sub_1000146C4(*v23, v25);
  sub_100052CD4(v9, type metadata accessor for ApplicationRecord);
  LOBYTE(v11) = sub_10006475C(v24, v25, *(v28 + *(v6 + 40)), *(v28 + *(v6 + 40) + 8));
  sub_1000128D8(v24, v25);
  sub_10000A184(v18, &unk_1001373B0, &unk_1000F3A40);
  (*(v20 + 8))(v15, v19);
  return v11 & 1;
}

char *sub_100049250()
{
  v1 = v0;
  v378 = type metadata accessor for ApplicationRecord(0);
  v373 = *(v378 - 8);
  v3 = __chkstk_darwin(v378, v2);
  v387 = &v346 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v346 - v7;
  __chkstk_darwin(v6, v9);
  v372 = &v346 - v10;
  v11 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v382 = &v346 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v381 = &v346 - v16;
  v367 = type metadata accessor for DriverBinEntry(0);
  v376 = *(v367 - 8);
  v18 = __chkstk_darwin(v367, v17);
  v384 = &v346 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v361 = &v346 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v357 = &v346 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v393 = &v346 - v28;
  __chkstk_darwin(v27, v29);
  v375 = &v346 - v30;
  v390 = type metadata accessor for UUID();
  v377 = *(v390 - 8);
  v32 = __chkstk_darwin(v390, v31);
  v395 = &v346 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32, v34);
  v362 = &v346 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v346 - v39;
  v42 = __chkstk_darwin(v38, v41);
  v391 = &v346 - v43;
  __chkstk_darwin(v42, v44);
  v374 = &v346 - v45;
  v46 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v48 = __chkstk_darwin(v46 - 8, v47);
  v50 = &v346 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v51);
  v388 = &v346 - v52;
  active = type metadata accessor for ActiveDriverInfo(0);
  v392 = *(active - 8);
  __chkstk_darwin(active - 8, v54);
  v394 = (&v346 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v369 = type metadata accessor for URL();
  v371 = *(v369 - 8);
  v57 = __chkstk_darwin(v369, v56);
  v348 = &v346 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v57, v59);
  v349 = (&v346 - v61);
  v63 = __chkstk_darwin(v60, v62);
  v350 = (&v346 - v64);
  v66 = __chkstk_darwin(v63, v65);
  v354 = &v346 - v67;
  __chkstk_darwin(v66, v68);
  v70 = &v346 - v69;
  v399 = _swiftEmptyArrayStorage;
  v360 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock;
  [*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_recursiveLock) lock];
  sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF9D4(&v400);
  v71 = *(&v401 + 1);
  v72 = v402;
  sub_100003C4C(&v400, *(&v401 + 1));
  (*(v72 + 24))(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, _swiftEmptyArrayStorage, 1, v71, v72);
  v368 = v0;
  v364 = v8;
  v389 = v50;
  v356 = v40;

  sub_100003C90(&v400);
  v87 = 0;
  v88 = v392;
  while (1)
  {
    v392 = v87;
    v91 = sub_100048948();
    v353 = v97;
    v358 = v98;
    v359 = sub_10003E338(_swiftEmptyArrayStorage);
    v396 = v359;
    v397 = 0xD000000000000024;
    v347 = 0x80000001001038C0;
    v398 = 0x80000001001038C0;
    sub_10004D334(v91);
    v99 = v369;
    if (!*(v1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_activeDriversStateManager))
    {
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      *&v400 = 0;
      *(&v400 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      *&v400 = 0xD00000000000002DLL;
      *(&v400 + 1) = 0x8000000100105990;
      sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v345._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v345);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_197:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v100 = sub_10001E490();
    v101 = v100;
    v102 = *(v100 + 16);
    if (v102)
    {
      v103 = sub_100032594(*(v100 + 16), 0);
      v104 = sub_1000591AC(&v400, v103 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v102, v101);
      sub_1000145A4(v400);
      if (v104 != v102)
      {
        goto LABEL_189;
      }

      v99 = v369;
    }

    else
    {

      v103 = _swiftEmptyArrayStorage;
    }

    v105 = v103[2];
    v366 = v91;
    if (v105)
    {
      *&v400 = _swiftEmptyArrayStorage;
      sub_1000635C4(0, v105, 0);
      v106 = v400;
      v107 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v386 = v103;
      v108 = v103 + v107;
      v109 = v88[9];
      v110 = (v371 + 16);
      do
      {
        v111 = v394;
        sub_100014718(v108, v394, type metadata accessor for ActiveDriverInfo);
        (*v110)(v70, v111, v99);
        sub_100052CD4(v111, type metadata accessor for ActiveDriverInfo);
        *&v400 = v106;
        v113 = v106[2];
        v112 = v106[3];
        if (v113 >= v112 >> 1)
        {
          sub_1000635C4((v112 > 1), v113 + 1, 1);
          v106 = v400;
        }

        v106[2] = v113 + 1;
        (*(v371 + 32))(v106 + ((*(v371 + 80) + 32) & ~*(v371 + 80)) + *(v371 + 72) * v113, v70, v99);
        v108 += v109;
        --v105;
      }

      while (v105);

      v1 = v368;
      v91 = v366;
      v50 = v389;
    }

    else
    {

      v106 = _swiftEmptyArrayStorage;
    }

    v114 = sub_1000EB530(v106);

    v116 = v392;
    v380 = sub_10004EB00(v115, v114);

    v117 = sub_10008101C(v91);
    v118 = sub_1000EB530(v117);

    v351 = v114;
    v119 = sub_10004F0D8(v114, v1, v118);
    v365 = v116;
    v1 = v119;

    v120 = *(v1 + 16);
    v352 = v118;
    v355 = v1;
    if (v120)
    {
      if (qword_100133AD8 != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_20;
    }

LABEL_25:
    v140 = v390;
    v141 = *(v380 + 64);
    v363 = v380 + 64;
    v142 = 1 << *(v380 + 32);
    v143 = -1;
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    v94 = v143 & v141;
    v144 = (v142 + 63) >> 6;
    v394 = (v377 + 16);
    v392 = (v377 + 32);
    v386 = (v377 + 8);

    v87 = 0;
    *&v145 = 136315394;
    v370 = v145;
    v91 = v393;
    v385 = v144;
LABEL_28:
    v146 = v87;
    while (1)
    {
      if (!v94)
      {
        if (v144 <= v146 + 1)
        {
          v149 = v146 + 1;
        }

        else
        {
          v149 = v144;
        }

        v87 = (v149 - 1);
        v150 = v391;
        v151 = &unk_1000F3A40;
        v152 = v395;
        while (1)
        {
          v148 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            break;
          }

          if (v148 >= v144)
          {
            v182 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
            (*(*(v182 - 8) + 56))(v50, 1, 1, v182);
            v94 = 0;
            goto LABEL_41;
          }

          v94 = *(v363 + 8 * v148);
          v146 = (v146 + 1);
          if (v94)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v148 = v146;
LABEL_40:
      v153 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v154 = v153 | (v148 << 6);
      v155 = v380;
      v156 = v377;
      (*(v377 + 16))(v374, *(v380 + 48) + *(v377 + 72) * v154, v140);
      v157 = v375;
      sub_100014718(*(v155 + 56) + *(v376 + 72) * v154, v375, type metadata accessor for DriverBinEntry);
      v158 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v159 = *(v158 + 48);
      v50 = v389;
      (*(v156 + 32))();
      sub_10004F64C(v157, v50 + v159, type metadata accessor for DriverBinEntry);
      (*(*(v158 - 8) + 56))(v50, 0, 1, v158);
      v87 = v148;
      v91 = v393;
      v152 = v395;
      v150 = v391;
LABEL_41:
      v160 = v388;
      sub_100020D24(v50, v388, &qword_1001342E0, &unk_1000F3A30);
      v161 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v161 - 8) + 48))(v160, 1, v161) == 1)
      {
        break;
      }

      v162 = *(v161 + 48);
      (*v392)(v150, v160, v140);
      sub_10004F64C(v160 + v162, v91, type metadata accessor for DriverBinEntry);
      if (static UUID.== infix(_:_:)())
      {
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v183 = type metadata accessor for Logger();
        sub_1000144F0(v183, qword_10014E9C8);
        v184 = v357;
        sub_100014718(v91, v357, type metadata accessor for DriverBinEntry);
        v70 = *v394;
        v185 = v356;
        (*v394)(v356, v391, v140);
        v186 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v186, v50))
        {
          v187 = swift_slowAlloc();
          v346 = v70;
          v188 = v187;
          v189 = swift_slowAlloc();
          v383 = v87;
          v404 = v189;
          *v188 = v370;
          *&v400 = 0;
          *(&v400 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(27);

          strcpy(&v400, "Staged bundle ");
          HIBYTE(v400) = -18;
          v190 = v367;
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v191._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v191);

          v192._countAndFlagsBits = 0x70706120726F6620;
          v192._object = 0xE900000000000020;
          String.append(_:)(v192);
          v193 = *(v190 + 20);
          v91 = v393;
          String.append(_:)(*(v184 + v193));
          v195 = *(&v400 + 1);
          v194 = v400;
          sub_100052CD4(v184, type metadata accessor for DriverBinEntry);
          v196 = sub_1000E3AF8(v194, v195, &v404);

          *(v188 + 4) = v196;
          *(v188 + 12) = 2080;
          sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v197 = dispatch thunk of CustomStringConvertible.description.getter();
          v199 = v198;
          v379 = *v386;
          v379(v185, v390);
          v200 = sub_1000E3AF8(v197, v199, &v404);
          v140 = v390;

          *(v188 + 14) = v200;
          _os_log_impl(&_mh_execute_header, v186, v50, "Copying old active bin entry %s with bin number %s", v188, 0x16u);
          swift_arrayDestroy();
          v87 = v383;

          v70 = v346;
        }

        else
        {

          v379 = *v386;
          v379(v185, v140);
          sub_100052CD4(v184, type metadata accessor for DriverBinEntry);
        }

        v1 = v362;
        (v70)(v362, v91, v140);
        if (*(v359 + 16))
        {

          sub_1000615C4(v1);
          v202 = v201;

          if (v202)
          {
            goto LABEL_196;
          }
        }

        sub_100014718(v91, v361, type metadata accessor for DriverBinEntry);
        v203 = v396;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v400 = v203;
        v205 = sub_1000615C4(v1);
        v207 = *(v203 + 16);
        v208 = (v206 & 1) == 0;
        v209 = __OFADD__(v207, v208);
        v210 = v207 + v208;
        if (v209)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          swift_once();
LABEL_20:
          v121 = type metadata accessor for Logger();
          v122 = sub_1000144F0(v121, qword_10014E9C8);

          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v392 = swift_slowAlloc();
            *&v400 = v392;
            *v125 = 136315138;
            v394 = v122;
            v126 = v365;
            v127 = sub_100047DE8(v1);
            v365 = v126;
            v404 = v127;
            sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
            sub_100018594();
            v128 = BidirectionalCollection<>.joined(separator:)();
            v130 = v129;

            v131 = sub_1000E3AF8(v128, v130, &v400);

            *(v125 + 4) = v131;
            _os_log_impl(&_mh_execute_header, v123, v124, "Found actively used drivers that are missing:\n%s", v125, 0xCu);
            sub_100003C90(v392);
          }

          v132 = v358;

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v400 = v136;
            *v135 = 136315138;
            sub_100042B90(v91, v353, v132);
            v139 = sub_1000E3AF8(v137, v138, &v400);

            *(v135 + 4) = v139;
            _os_log_impl(&_mh_execute_header, v133, v134, "%s", v135, 0xCu);
            sub_100003C90(v136);
          }

          goto LABEL_25;
        }

        v95 = v206;
        if (*(v203 + 24) >= v210)
        {
          v144 = v385;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v215 = v205;
            sub_10003A100();
            v144 = v385;
            v205 = v215;
            v91 = v393;
          }

          v140 = v390;
          v212 = v400;
          if ((v95 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100033310(v210, isUniquelyReferenced_nonNull_native);
          v205 = sub_1000615C4(v362);
          if ((v95 & 1) != (v211 & 1))
          {
            goto LABEL_197;
          }

          v140 = v390;
          v144 = v385;
          v212 = v400;
          if ((v95 & 1) == 0)
          {
LABEL_59:
            v212[(v205 >> 6) + 8] |= 1 << v205;
            v92 = v205;
            v90 = v362;
            (v70)(v212[6] + *(v377 + 72) * v205, v362, v140);
            sub_10004F64C(v361, v212[7] + *(v376 + 72) * v92, type metadata accessor for DriverBinEntry);
            v213 = v212[2];
            v209 = __OFADD__(v213, 1);
            v93 = v213 + 1;
            if (v209)
            {
              __break(1u);
LABEL_192:
              v92 = sub_100030EA0((v93 > 1), v95, 1, v92);
              goto LABEL_5;
            }

            v212[2] = v93;
            v144 = v385;
            goto LABEL_65;
          }
        }

        sub_100052D34(v361, v212[7] + *(v376 + 72) * v205);
        v90 = v362;
LABEL_65:
        v359 = v212;
        v396 = v212;
        v214 = v379;
        v379(v90, v140);
        sub_100052CD4(v91, type metadata accessor for DriverBinEntry);
        v214(v391, v140);
        v50 = v389;
        goto LABEL_28;
      }

      if (qword_100133AD8 != -1)
      {
        swift_once();
      }

      v163 = type metadata accessor for Logger();
      sub_1000144F0(v163, qword_10014E9C8);
      v164 = v384;
      sub_100014718(v91, v384, type metadata accessor for DriverBinEntry);
      (*v394)(v152, v150, v140);
      v165 = v150;
      v166 = v164;
      v167 = v152;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v379 = swift_slowAlloc();
        v404 = v379;
        *v170 = v370;
        *&v400 = 0;
        *(&v400 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        strcpy(&v400, "Staged bundle ");
        HIBYTE(v400) = -18;
        v171 = v367;
        sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v172._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v172);

        v173._countAndFlagsBits = 0x70706120726F6620;
        v173._object = 0xE900000000000020;
        String.append(_:)(v173);
        String.append(_:)(*(v166 + *(v171 + 20)));
        v175 = *(&v400 + 1);
        v174 = v400;
        sub_100052CD4(v166, type metadata accessor for DriverBinEntry);
        v176 = sub_1000E3AF8(v174, v175, &v404);

        *(v170 + 4) = v176;
        *(v170 + 12) = 2080;
        sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v177 = dispatch thunk of CustomStringConvertible.description.getter();
        v179 = v178;
        v383 = v87;
        v180 = *v386;
        (*v386)(v395, v390);
        v181 = sub_1000E3AF8(v177, v179, &v404);
        v50 = v389;

        *(v170 + 14) = v181;
        _os_log_impl(&_mh_execute_header, v168, v169, "Internal error: Bin entry %s was inserted with incorrect bin number %s", v170, 0x16u);
        swift_arrayDestroy();

        v140 = v390;
        sub_100052CD4(v393, type metadata accessor for DriverBinEntry);
        v180(v391, v140);
        v91 = v393;
        v146 = v383;
      }

      else
      {

        v147 = *v386;
        (*v386)(v167, v140);
        sub_100052CD4(v166, type metadata accessor for DriverBinEntry);
        sub_100052CD4(v91, type metadata accessor for DriverBinEntry);
        v147(v165, v140);
        v146 = v87;
      }

      v144 = v385;
    }

    v216 = *&v368[OBJC_IVAR____TtC10driverkitd16DriverBinManager_applicationManager];
    if (!v216)
    {
      goto LABEL_194;
    }

    v217 = v364;
    v152 = v382;
    if (*(v216 + 88))
    {
      v218 = *(v216 + 88);
    }

    else
    {

      sub_10001B0B4();
      v218 = v219;
      *(v216 + 88) = v219;
    }

    v151 = (v218 + 8);
    v220 = 1 << *(v218 + 32);
    v221 = -1;
    if (v220 < 64)
    {
      v221 = ~(-1 << v220);
    }

    v94 = v221 & v218[8];
    v393 = (v220 + 63) >> 6;
    v394 = v218;

    v1 = 0;
    v140 = &qword_1001349F8;
    v395 = v151;
LABEL_75:
    if (!v94)
    {
      if (v393 <= v1 + 1)
      {
        v223 = v1 + 1;
      }

      else
      {
        v223 = v393;
      }

      v224 = v223 - 1;
      while (1)
      {
        v222 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_176;
        }

        if (v222 >= v393)
        {
          v87 = &qword_1000F41A0;
          v248 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
          (*(*(v248 - 8) + 56))(v152, 1, 1, v248);
          v94 = 0;
          v1 = v224;
          goto LABEL_86;
        }

        v94 = *&v151[8 * v222];
        ++v1;
        if (v94)
        {
          v1 = v222;
          goto LABEL_85;
        }
      }
    }

    v222 = v1;
LABEL_85:
    v225 = __clz(__rbit64(v94));
    v94 &= v94 - 1;
    v226 = v225 | (v222 << 6);
    v227 = (v394[6] + 16 * v226);
    v228 = *v227;
    v229 = v227[1];
    v230 = v372;
    sub_100014718(v394[7] + *(v373 + 72) * v226, v372, type metadata accessor for ApplicationRecord);
    v87 = &qword_1000F41A0;
    v231 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
    v232 = *(v231 + 48);
    *v152 = v228;
    *(v152 + 1) = v229;
    sub_10004F64C(v230, &v152[v232], type metadata accessor for ApplicationRecord);
    v233 = *(*(v231 - 8) + 56);
    v234 = v231;
    v140 = &qword_1001349F8;
    v233(v152, 0, 1, v234);
    sub_1000146C4(v228, v229);
LABEL_86:
    v235 = v381;
    sub_100020D24(v152, v381, &qword_1001349F0, &unk_1000F56C0);
    v236 = sub_100003CDC(&qword_1001349F8, &qword_1000F41A0);
    if ((*(*(v236 - 8) + 48))(v235, 1, v236) == 1)
    {
      break;
    }

    v70 = *v235;
    v237 = *(v235 + 8);
    sub_10004F64C(v235 + *(v236 + 48), v217, type metadata accessor for ApplicationRecord);
    v238 = (v217 + *(v378 + 32));
    v239 = *v238;
    v91 = v238[1];
    v240 = v91 >> 62;
    v241 = v237 >> 62;
    if (v91 >> 62 == 3)
    {
      v242 = 0;
      if (v239)
      {
        goto LABEL_103;
      }

      if (v91 != 0xC000000000000000)
      {
        goto LABEL_103;
      }

      if (v237 >> 62 != 3)
      {
        goto LABEL_103;
      }

      v242 = 0;
      if (v70 || v237 != 0xC000000000000000)
      {
        goto LABEL_103;
      }

LABEL_73:
      sub_10004FED4(v217, v366, &v396, &v399);
      sub_1000128D8(v70, v237);
LABEL_74:
      sub_100052CD4(v217, type metadata accessor for ApplicationRecord);
      v152 = v382;
      v151 = v395;
      goto LABEL_75;
    }

    if (v240 > 1)
    {
      if (v240 == 2)
      {
        v247 = *(v239 + 16);
        v246 = *(v239 + 24);
        v209 = __OFSUB__(v246, v247);
        v242 = v246 - v247;
        if (v209)
        {
          goto LABEL_183;
        }

LABEL_103:
        if (v241 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v242 = 0;
        if (v241 <= 1)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v240)
      {
        v242 = BYTE6(v91);
        if (v241 > 1)
        {
          goto LABEL_97;
        }

LABEL_104:
        if (!v241)
        {
          v245 = BYTE6(v237);
          goto LABEL_106;
        }

        if (__OFSUB__(HIDWORD(v70), v70))
        {
          goto LABEL_181;
        }

        if (v242 != HIDWORD(v70) - v70)
        {
          goto LABEL_137;
        }

LABEL_112:
        if (v242 < 1)
        {
          goto LABEL_73;
        }

        if (v240 > 1)
        {
          if (v240 != 2)
          {
            *(&v400 + 6) = 0;
            *&v400 = 0;
            sub_1000146C4(v70, v237);
            goto LABEL_136;
          }

          v249 = *(v239 + 16);
          v50 = *(v239 + 24);
          sub_1000146C4(v70, v237);
          v250 = __DataStorage._bytes.getter();
          if (v250)
          {
            v251 = __DataStorage._offset.getter();
            if (__OFSUB__(v249, v251))
            {
              goto LABEL_187;
            }

            v250 += v249 - v251;
          }

          v209 = __OFSUB__(v50, v249);
          v140 = (v50 - v249);
          if (v209)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (!v240)
          {
            *&v400 = v239;
            WORD4(v400) = v91;
            BYTE10(v400) = BYTE2(v91);
            BYTE11(v400) = BYTE3(v91);
            BYTE12(v400) = BYTE4(v91);
            BYTE13(v400) = BYTE5(v91);
            sub_1000146C4(v70, v237);
LABEL_136:
            v256 = v365;
            sub_100045F4C(&v400, v70, v237, &v404);
            v365 = v256;
            sub_1000128D8(v70, v237);
            if (v404)
            {
              goto LABEL_73;
            }

LABEL_137:
            if (qword_100133AD8 != -1)
            {
              swift_once();
            }

            v257 = type metadata accessor for Logger();
            sub_1000144F0(v257, qword_10014E9C8);
            v91 = v387;
            sub_100014718(v217, v387, type metadata accessor for ApplicationRecord);
            sub_1000146C4(v70, v237);
            v258 = Logger.logObject.getter();
            v259 = static os_log_type_t.error.getter();
            sub_1000128D8(v70, v237);
            if (os_log_type_enabled(v258, v259))
            {
              v87 = swift_slowAlloc();
              *&v400 = swift_slowAlloc();
              *v87 = v370;
              v260 = sub_100019D24();
              v262 = v261;
              sub_100052CD4(v387, type metadata accessor for ApplicationRecord);
              v263 = sub_1000E3AF8(v260, v262, &v400);

              *(v87 + 4) = v263;
              *(v87 + 6) = 2080;
              sub_1000146C4(v70, v237);
              v264 = Data.description.getter();
              v91 = v265;
              sub_1000128D8(v70, v237);
              v266 = sub_1000E3AF8(v264, v91, &v400);

              *(v87 + 14) = v266;
              _os_log_impl(&_mh_execute_header, v258, v259, "Application %s has unexpected unique identifier, expected %s", v87, 0x16u);
              swift_arrayDestroy();
              v217 = v364;

              sub_1000128D8(v70, v237);
            }

            else
            {
              sub_1000128D8(v70, v237);

              sub_100052CD4(v91, type metadata accessor for ApplicationRecord);
            }

            v140 = &qword_1001349F8;
            goto LABEL_74;
          }

          v50 = v239;
          v252 = v239 >> 32;
          v140 = (v252 - v50);
          if (v252 < v50)
          {
            goto LABEL_184;
          }

          sub_1000146C4(v70, v237);
          v250 = __DataStorage._bytes.getter();
          if (v250)
          {
            v253 = __DataStorage._offset.getter();
            if (__OFSUB__(v50, v253))
            {
              goto LABEL_188;
            }

            v250 += v50 - v253;
          }
        }

        __DataStorage._length.getter();
        v254 = v250;
        v255 = v365;
        sub_100045F4C(v254, v70, v237, &v400);
        v365 = v255;
        sub_1000128D8(v70, v237);
        v217 = v364;
        v140 = &qword_1001349F8;
        if (v400)
        {
          goto LABEL_73;
        }

        goto LABEL_137;
      }

      LODWORD(v242) = HIDWORD(v239) - v239;
      if (__OFSUB__(HIDWORD(v239), v239))
      {
        goto LABEL_182;
      }

      v242 = v242;
      if (v241 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_97:
    if (v241 != 2)
    {
      if (!v242)
      {
        goto LABEL_73;
      }

      goto LABEL_137;
    }

    v244 = *(v70 + 2);
    v243 = *(v70 + 3);
    v209 = __OFSUB__(v243, v244);
    v245 = v243 - v244;
    if (!v209)
    {
LABEL_106:
      if (v242 == v245)
      {
        goto LABEL_112;
      }

      goto LABEL_137;
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    swift_once();
    v73 = type metadata accessor for Logger();
    sub_1000144F0(v73, qword_10014E9C8);

    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    v76 = os_log_type_enabled(v74, v75);
    v386 = v140;
    if (v76)
    {
      v77 = swift_slowAlloc();
      *&v400 = swift_slowAlloc();
      *v77 = 136315394;
      LODWORD(v385) = v75;
      v78 = URL.path.getter();
      v80 = sub_1000E3AF8(v78, v79, &v400);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2080;
      v396 = v140;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v81 = String.init<A>(describing:)();
      v83 = sub_1000E3AF8(v81, v82, &v400);

      *(v77 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v74, v385, "Failed to read directory %s: %s. Attempting to create directory", v77, 0x16u);
      swift_arrayDestroy();
    }

    sub_100003C4C((v1 + 16), *(v1 + 40));
    sub_1000DF9D4(&v400);
    v84 = *(&v401 + 1);
    v85 = v402;
    sub_100003C4C(&v400, *(&v401 + 1));
    v86 = sub_10003E834(_swiftEmptyArrayStorage);
    (*(v85 + 48))(v1 + v94, 1, v86, v84, v85);
    v87 = 0;

    sub_100003C90(&v400);
    *&v400 = 0;
    *(&v400 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v400 = 0xD000000000000015;
    *(&v400 + 1) = 0x8000000100105AA0;
    sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v89);

    v91 = *(&v400 + 1);
    v90 = v400;
    v92 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v94 = *(v92 + 16);
    v93 = *(v92 + 24);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      goto LABEL_192;
    }

LABEL_5:
    v50 = v389;
    v88 = v392;

    *(v92 + 16) = v95;
    v96 = (v92 + 16 * v94);
    *(v96 + 4) = v90;
    *(v96 + 5) = v91;
    v399 = v92;
    v1 = v368;
  }

  v91 = v396;
  v267 = v397;
  v94 = v398;

  sub_10004D334(v91);
  if ((sub_100044880(v91, v366) & 1) == 0)
  {

    p_ivars = (&ApprovalSettingsStateManager + 48);
LABEL_148:
    v269 = v399;
    if (!*(v399 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v269 = sub_100030EA0(0, 1, 1, v269);
      }

      v271 = *(v269 + 2);
      v270 = *(v269 + 3);
      if (v271 >= v270 >> 1)
      {
        v269 = sub_100030EA0((v270 > 1), v271 + 1, 1, v269);
      }

      *(v269 + 2) = v271 + 1;
      v272 = &v269[16 * v271];
      *(v272 + 4) = 0xD000000000000012;
      *(v272 + 5) = 0x8000000100105AC0;
      v399 = v269;
    }

    goto LABEL_155;
  }

  p_ivars = &ApprovalSettingsStateManager.ivars;
  if (v267 == v353 && v94 == v358)
  {

    goto LABEL_155;
  }

  v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v273 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_155:
  v395 = v399;
  if (!*(v399 + 2))
  {

    [*&v368[v360] unlock];

    return 0;
  }

  v151 = v368;
  if (p_ivars[347] != -1)
  {
    swift_once();
  }

  v274 = type metadata accessor for Logger();
  v275 = sub_1000144F0(v274, qword_10014E9C8);
  v276 = Logger.logObject.getter();
  v277 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v276, v277))
  {
    v278 = swift_slowAlloc();
    *v278 = 0;
    _os_log_impl(&_mh_execute_header, v276, v277, "Saving dextbin info, encoding", v278, 2u);
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *&v400 = v91;
  *(&v400 + 1) = v267;
  *&v401 = v94;
  sub_10004F6B4();
  v279 = v365;
  v280 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v152 = v279;
  if (v279)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
LABEL_172:
    v320 = sub_10003E338(_swiftEmptyArrayStorage);
    v321 = &v151[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
    v323 = *&v151[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
    v322 = *&v151[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8];
    v324 = *&v151[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16];
    *v321 = v320;
    v321[1] = 0xD000000000000024;
    v321[2] = v347;
    sub_10004F708(v323, v322, v324);
    swift_errorRetain();
    v325 = Logger.logObject.getter();
    v326 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      v328 = swift_slowAlloc();
      *&v400 = v328;
      *v327 = 136315138;
      v404 = v152;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v329 = String.init<A>(describing:)();
      v331 = sub_1000E3AF8(v329, v330, &v400);
      v151 = v368;

      *(v327 + 4) = v331;
      _os_log_impl(&_mh_execute_header, v325, v326, "Can't save dextbin info: %s", v327, 0xCu);
      sub_100003C90(v328);
    }

    v332 = v360;

    [*&v151[v332] unlock];

    return &off_100126020;
  }

  v389 = v267;
  v390 = 0;
  v393 = v280;
  v394 = v281;

  v392 = v275;
  v283 = Logger.logObject.getter();
  v284 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v283, v284))
  {
    v285 = swift_slowAlloc();
    *v285 = 0;
    _os_log_impl(&_mh_execute_header, v283, v284, "Writing new dextbin info contents", v285, 2u);
    v151 = v368;
  }

  sub_100003C4C(v151 + 2, *(v151 + 5));
  sub_1000DF9D4(&v400);
  v286 = *(&v401 + 1);
  v287 = v402;
  sub_100003C4C(&v400, *(&v401 + 1));
  v288 = v354;
  sub_100048708(v354);
  v289 = URL.path.getter();
  v291 = v290;
  v292 = *(v371 + 8);
  v371 += 8;
  v391 = v292;
  (v292)(v288, v369);
  v294 = v393;
  v293 = v394;
  sub_1000146C4(v393, v394);
  v295 = sub_10003E834(_swiftEmptyArrayStorage);
  LOBYTE(v286) = (*(v287 + 40))(v289, v291, v294, v293, v295, v286, v287);

  sub_1000128D8(v294, v293);

  sub_100003C90(&v400);
  if ((v286 & 1) == 0)
  {
    v304 = errno.getter();
    if (!strerror(v304))
    {
      goto LABEL_195;
    }

    v305 = String.init(cString:)();
    v307 = v306;
    *&v400 = 0;
    *(&v400 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v400 = 0x6946657461657263;
    *(&v400 + 1) = 0xEB0000000020656CLL;
    v308 = v354;
    v151 = v368;
    sub_100048708(v354);
    v309 = URL.path.getter();
    v311 = v310;
    (v391)(v308, v369);
    v312._countAndFlagsBits = v309;
    v312._object = v311;
    String.append(_:)(v312);

    v313._countAndFlagsBits = 0x3A64656C69616620;
    v313._object = 0xEF206F6E72726520;
    String.append(_:)(v313);
    v314._countAndFlagsBits = v305;
    v314._object = v307;
    String.append(_:)(v314);

    v315 = v400;
    sub_10001449C();
    v152 = swift_allocError();
    *v316 = v315;
    v317 = v403;
    v319 = v401;
    v318 = v402;
    *(v316 + 16) = v400;
    *(v316 + 32) = v319;
    *(v316 + 48) = v318;
    *(v316 + 64) = v317;
    *(v316 + 72) = 19;
    swift_willThrow();
    sub_1000128D8(v393, v394);
    goto LABEL_172;
  }

  v296 = Logger.logObject.getter();
  v297 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v296, v297))
  {
    v298 = swift_slowAlloc();
    *v298 = 0;
    _os_log_impl(&_mh_execute_header, v296, v297, "Replacing old dextbin info contents", v298, 2u);
  }

  v151 = v368;
  sub_100003C4C(v368 + 2, *(v368 + 5));
  sub_1000DF9D4(&v400);
  v299 = *(&v401 + 1);
  v300 = v402;
  sub_100003C4C(&v400, *(&v401 + 1));
  v87 = v350;
  sub_1000486E4(v350);
  v140 = v349;
  sub_100048708(v349);
  v301 = v390;
  (*(v300 + 88))(v87, v140, 0, 0, 0, 0, v299, v300);
  v152 = v301;
  if (v301)
  {
    sub_1000128D8(v393, v394);
    v302 = v369;
    v303 = v391;
    (v391)(v140, v369);
    (v303)(v87, v302);

    sub_100003C90(&v400);
    goto LABEL_172;
  }

LABEL_177:
  v333 = v140;
  v334 = v369;
  v335 = v391;
  (v391)(v333, v369);
  (v335)(v87, v334);
  sub_100003C90(&v400);
  sub_100003C4C(v151 + 2, *(v151 + 5));
  sub_1000DF9D4(&v400);
  v336 = *(&v401 + 1);
  v337 = v402;
  sub_100003C4C(&v400, *(&v401 + 1));
  v338 = v348;
  sub_100048708(v348);
  (*(v337 + 104))(v338, v336, v337);
  if (v152)
  {

    sub_1000128D8(v393, v394);
    (v335)(v338, v369);
  }

  else
  {
    (v335)(v338, v369);
    sub_1000128D8(v393, v394);
  }

  sub_100003C90(&v400);
  v339 = v368;
  v340 = &v368[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
  v341 = *&v368[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo];
  v342 = *&v368[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8];
  v343 = *&v368[OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16];
  v344 = v389;
  *v340 = v91;
  v340[1] = v344;
  v340[2] = v94;
  sub_10004F708(v341, v342, v343);
  [*(v339 + v360) unlock];
  return v395;
}