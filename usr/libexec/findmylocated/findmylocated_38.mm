void sub_1004525D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000110D8(a3, a4);
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
      sub_100202A1C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10022C6A4(v18, a5 & 1);
    v13 = sub_1000110D8(a3, a4);
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
    sub_10023388C(v13, a3, a4, a1, a2, v23);
  }
}

void sub_100452778(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100202BF8();
      goto LABEL_7;
    }

    sub_10022C9B4(v15, a4 & 1);
    v25 = sub_1000110D8(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
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
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Handle();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_100233908(v12, a2, a3, a1, v18);
}

void sub_1004528F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_100203024();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022D0C4(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
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
    sub_100004984(v22);

    sub_10004B064(a1, v22);
  }

  else
  {
    sub_1002339B8(v11, a2, a3, a1, v21);
  }
}

void sub_100452A48(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10020337C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022D678(v16, a3 & 1);
    v11 = sub_1000110D8(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
  }

  else
  {
    sub_100233A24(v11, a1, a2, v21, a4);
  }
}

uint64_t sub_100452BC4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1001FD93C(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_7;
    }

    v35();
    v32 = sub_1001FD93C(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v37(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = *(v24 + 56);
  v26 = v36(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

void sub_100452DF4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100203520();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022DDE8(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_100233A98(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_100452F28(__int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100203AB0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022E428(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 2 * v11) = a1;
  }

  else
  {
    sub_100233AE0(v11, a2, a3, a1, v21);
  }
}

void sub_100453058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1000110D8(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_100203C18();
      v15 = v23;
      goto LABEL_8;
    }

    sub_10022E6E0(v20, a6 & 1);
    v15 = sub_1000110D8(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_100233B28(v15, a4, a5, a1, a2, a3, v25);
  }
}

void sub_1004531CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000110D8(a3, a4);
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
      sub_100203DB0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10022E9B8(v18, a5 & 1);
    v13 = sub_1000110D8(a3, a4);
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
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;

    sub_100139360(v25, v26);
  }

  else
  {
    sub_100233B7C(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_100453364(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1001FDA54(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100203F50();
      goto LABEL_7;
    }

    sub_10022EC9C(v15, a4 & 1);
    v22 = sub_1001FDA54(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) - 8) + 72) * v12;

    return sub_1004557A0(a1, v20);
  }

LABEL_13:
  sub_100233BD0(v12, a2, a3, a1, v18);

  return sub_100005F6C(a2, a3);
}

void sub_1004534D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
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
      v20 = type metadata accessor for SecureLocationsSubscription(0);
      sub_1004556D0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SecureLocationsSubscription);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1002041B8();
    goto LABEL_7;
  }

  sub_10022F01C(v15, a4 & 1);
  v21 = sub_1000110D8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100233C8C(v12, a2, a3, a1, v18);
}

uint64_t sub_100453644(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Destination();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FDA80(a2);
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
      sub_100204410();
      goto LABEL_7;
    }

    sub_10022F398(v17, a3 & 1);
    v22 = sub_1001FDA80(a2);
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
      return sub_100233CB8(v14, v11, a1, v20);
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

void sub_100453810(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_1002045A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022FA14(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
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
    sub_100241518();
  }
}

uint64_t sub_100453958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Friend();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FDC28(a2);
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
      sub_100204710();
      goto LABEL_7;
    }

    sub_10022FCBC(v17, a3 & 1);
    v28 = sub_1001FDC28(a2);
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
      return sub_100233D18(v14, v11, a1, v20);
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
  v22 = type metadata accessor for FriendshipAction();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_100453B5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
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
      v20 = type metadata accessor for FenceRecord(0);
      sub_1004556D0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FenceRecord);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100204774();
    goto LABEL_7;
  }

  sub_100230540(v15, a4 & 1);
  v21 = sub_1000110D8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100233D44(v12, a2, a3, a1, v18);
}

void *sub_100453CC8(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_1002049CC();
      goto LABEL_7;
    }

    sub_10023057C(v17, a3 & 1);
    v23 = sub_1001FD868(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100233E1C(v14, v11, a1, v20);
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
  v21 = v20[7] + 584 * v14;

  return sub_100455604(a1, v21);
}

void sub_100453ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1000110D8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1000110D8(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_100454044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_100204DE0();
      goto LABEL_7;
    }

    sub_100231058(v17, a3 & 1);
    v28 = sub_1001FD868(a2);
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
      return sub_100233EE4(v14, v11, a1, v20);
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
  v22 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100454254(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_100204E04();
      goto LABEL_7;
    }

    sub_10023107C(v17, a3 & 1);
    v23 = sub_1001FD868(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100233EF8(v14, v11, a1, v20);
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
  v21 = (v20[7] + 40 * v14);
  sub_100004984(v21);

  return sub_100010BD4(a1, v21);
}

uint64_t sub_100454430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  Priority = type metadata accessor for LocatePriority();
  v11 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1001FDF60(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_10020508C();
      goto LABEL_9;
    }

    sub_100231460(v19, a5 & 1);
    v22 = sub_1001FDF60(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v28;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, Priority);
    return sub_100233FBC(v16, v13, v28, v24, a3, v25);
  }
}

uint64_t sub_100454624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClientID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FDB54(a2);
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
      sub_1002055D4();
      goto LABEL_7;
    }

    sub_100231C50(v17, a3 & 1);
    v28 = sub_1001FDB54(a2);
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
      return sub_100234090(v14, v11, a1, v20);
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
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100454828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1001FD868(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_10020596C();
      goto LABEL_9;
    }

    sub_1002320F8(v19, a5 & 1);
    v22 = sub_1001FD868(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v28;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_1002341BC(v16, v13, v28, v24, a3, v25);
  }
}

void sub_100454A28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD93C(a2);
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
      sub_100205330();
      goto LABEL_7;
    }

    sub_100231874(v17, a3 & 1);
    v21 = sub_1001FD93C(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100234290(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
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

uint64_t sub_100454C34(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1001FD868(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_9;
    }

    v30();
    v23 = sub_1001FD868(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v31(v17, v14, v25, v26);
  }
}

uint64_t sub_100454E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_1002063A8();
      goto LABEL_7;
    }

    sub_10023304C(v17, a3 & 1);
    v28 = sub_1001FD868(a2);
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
      return sub_100234420(v14, v11, a1, v20);
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
  v22 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100455034(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_1002063CC();
      goto LABEL_7;
    }

    sub_100233514(v17, a3 & 1);
    v28 = sub_1001FD868(a2);
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
      return sub_100234434(v14, v11, a1, v20);
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
  v22 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100455244(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001FD868(a2);
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
      sub_1002063F0();
      goto LABEL_7;
    }

    sub_100233538(v17, a3 & 1);
    v28 = sub_1001FD868(a2);
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
      return sub_100234448(v14, v11, a1, v20);
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
  v22 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_100455454(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1001FE034(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100206760();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10023355C(v13, a3 & 1);
    v8 = sub_1001FE034(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100011D18();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100004984(v19);

    return sub_10004B064(a1, v19);
  }

  else
  {
    sub_100234564(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100455594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100455660(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004556D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100455738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004557A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LocationSharingReminderNotification(uint64_t a1)
{
  result = qword_1005B3D38;
  if (!qword_1005B3D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100455908(uint64_t a1)
{
  type metadata accessor for LocalUserNotificationCategory();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_10044FDB8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004559B4(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for Destination.DestinationType();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for DaemonActor();
  *(v2 + 64) = static DaemonActor.shared.getter();
  sub_10034109C();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100455AE0, v5, v4);
}

uint64_t sub_100455AE0()
{

  v1 = qword_1005B5D40;
  if (qword_1005B5D40)
  {
    v2 = qword_1005B5D40;
  }

  else
  {
    v3 = [objc_allocWithZone(CNContactStore) init];
    v4 = qword_1005B5D40;
    qword_1005B5D40 = v3;
    v2 = v3;

    v1 = 0;
  }

  *(v0 + 72) = v2;
  v5 = v1;

  return _swift_task_switch(sub_100455BCC, 0, 0);
}

uint64_t sub_100455BCC(uint64_t a1)
{
  v80 = v1;
  v2 = v1;
  v4 = *(v1 + 6);
  v3 = *(v1 + 7);
  v5 = *(v1 + 5);
  Destination.type.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == enum case for Destination.DestinationType.email(_:))
  {
    Destination.destination.getter();
    v7._countAndFlagsBits = 0x3A6F746C69616DLL;
    v7._object = 0xE700000000000000;
    v8 = String.deletingPrefix(_:)(v7);
    countAndFlagsBits = v8._countAndFlagsBits;

    v10 = objc_opt_self();
    object = v8._object;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 predicateForContactsMatchingEmailAddress:v11];
  }

  else
  {
    if (v6 != enum case for Destination.DestinationType.phoneNumber(_:))
    {
      if (qword_1005A8590 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_10000A6F0(v57, qword_1005E0CC8);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Unexpected destination type!", v60, 2u);
      }

      v62 = *(v1 + 6);
      v61 = *(v1 + 7);
      v63 = *(v1 + 5);

      (*(v62 + 8))(v61, v63);
      countAndFlagsBits = 0;
      i = 0xE000000000000000;
      goto LABEL_38;
    }

    Destination.destination.getter();
    v13._countAndFlagsBits = 980182388;
    v13._object = 0xE400000000000000;
    v14 = String.deletingPrefix(_:)(v13);
    countAndFlagsBits = v14._countAndFlagsBits;

    v15 = objc_opt_self();
    v16 = objc_allocWithZone(CNPhoneNumber);
    object = v14._object;
    v17 = String._bridgeToObjectiveC()();
    v11 = [v16 initWithStringValue:v17];

    v12 = [v15 predicateForContactsMatchingPhoneNumber:v11];
  }

  v18 = *(v1 + 9);
  v19 = v12;

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 descriptorForRequiredKeysForStyle:0];
  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004D02F0;
  *(v23 + 32) = v22;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005B3D80, &qword_1004D62F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v2 + 2) = 0;
  v25 = [v18 unifiedContactsMatchingPredicate:v21 keysToFetch:isa error:v2 + 16];

  v26 = *(v2 + 2);
  if (v25)
  {
    v74 = v21;
    sub_1003410F4();
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v26;

    v78 = v27;
    if (v27 >> 62)
    {
      goto LABEL_36;
    }

    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = object; v29; i = object)
    {
      object = i;
      v77 = v2;
      v72 = countAndFlagsBits;
      countAndFlagsBits = 0;
      v31 = v78 & 0xC000000000000001;
      while (1)
      {
        if (v31)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (countAndFlagsBits >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v32 = *(v78 + 8 * countAndFlagsBits + 32);
        }

        v33 = v32;
        v34 = countAndFlagsBits + 1;
        if (__OFADD__(countAndFlagsBits, 1))
        {
          break;
        }

        if (v77[80] == 1)
        {
          v35 = [v32 givenName];
          v36 = v29;
          v37 = v31;
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v2 = v20;
          v40 = v39;

          v41 = HIBYTE(v40) & 0xF;
          v42 = v38 & 0xFFFFFFFFFFFFLL;
          v31 = v37;
          v29 = v36;
          v43 = (v40 & 0x2000000000000000) == 0;
          v20 = v2;
          if (v43)
          {
            v41 = v42;
          }

          if (v41)
          {
            v2 = v77;
            v67 = *(v77 + 9);

            v68 = [v33 givenName];
            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            i = v69;

            swift_unknownObjectRelease();
            goto LABEL_38;
          }
        }

        v44 = [v20 stringFromContact:v33 style:0];
        if (v44)
        {
          v64 = v44;
          v2 = v77;
          v65 = *(v77 + 9);

          countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          i = v66;

          swift_unknownObjectRelease();
          goto LABEL_38;
        }

        ++countAndFlagsBits;
        if (v34 == v29)
        {
          v2 = v77;

          swift_unknownObjectRelease();
          i = object;
          countAndFlagsBits = v72;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v45 = v26;
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005E0CC8);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v2 + 9);
    if (v50)
    {
      v75 = v21;
      v52 = swift_slowAlloc();
      v73 = countAndFlagsBits;
      v53 = swift_slowAlloc();
      v79 = v53;
      *v52 = 136315138;
      *(v2 + 3) = v46;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v54 = String.init<A>(describing:)();
      v56 = sub_10000D01C(v54, v55, &v79);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error matching contacts: %s", v52, 0xCu);
      sub_100004984(v53);
      countAndFlagsBits = v73;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    i = object;
  }

LABEL_38:

  v70 = *(v2 + 1);

  return v70(countAndFlagsBits, i);
}

uint64_t sub_1004563C8()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HandleType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v10 = (v0 + *(type metadata accessor for RedStripeNotification(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  *(inited + 32) = v12;
  *(inited + 40) = v11;

  Friend.type.getter();
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for HandleType.follower(_:) || v13 == enum case for HandleType.following(_:) || (v13 != enum case for HandleType.futureFollower(_:) ? (v16 = v13 == enum case for HandleType.futureFollowing(_:)) : (v16 = 1), !v16 ? (v17 = v13 == enum case for HandleType.pendingOffer(_:)) : (v17 = 1), v17))
  {
    (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.redStripe(_:), v1);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v4, v1);
    sub_10025854C(inited);
    swift_setDeallocating();
    sub_10007C2B8(inited + 32);
    v14 = String.init(format:arguments:)();
  }

  else
  {

    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0CC8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unexpected friend type!", v21, 2u);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  return v14;
}

uint64_t sub_100456778()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HandleType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v10 = (v0 + *(type metadata accessor for RedStripeNotification(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  *(inited + 32) = v12;
  *(inited + 40) = v11;

  Friend.type.getter();
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for HandleType.follower(_:) || v13 == enum case for HandleType.following(_:) || (v13 != enum case for HandleType.futureFollower(_:) ? (v16 = v13 == enum case for HandleType.futureFollowing(_:)) : (v16 = 1), !v16 ? (v17 = v13 == enum case for HandleType.pendingOffer(_:)) : (v17 = 1), v17))
  {
    (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.redStripe(_:), v1);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v4, v1);
    sub_10025854C(inited);
    swift_setDeallocating();
    sub_10007C2B8(inited + 32);
    v14 = String.init(format:arguments:)();
  }

  else
  {

    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0CC8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unexpected friend type!", v21, 2u);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  return v14;
}

uint64_t type metadata accessor for RedStripeNotification(uint64_t a1)
{
  result = qword_1005B3DE8;
  if (!qword_1005B3DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100456B9C(uint64_t a1)
{
  result = type metadata accessor for LocalUserNotificationCategory();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Friend();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100456C60(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_10004B564(&qword_1005B3E90, &qword_1004D8F88);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_10004B564(&qword_1005B3E98, &qword_1004D8F90);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_10004B564(&qword_1005B3EA0, &qword_1004D8F98);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10004B564(&qword_1005B3EA8, &qword_1004D8FA0);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_10004B564(&qword_1005B3EB0, &qword_1004D8FA8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_100011AEC(a1, a1[3]);
  sub_100457BC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_100457C6C();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_100457C18();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_100457CC0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_100457D14();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10045709C()
{
  v1 = 0x656C706F6570;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x797465666173;
  }

  if (*v0)
  {
    v1 = 0x73656369766564;
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

uint64_t sub_10045710C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10045742C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100457134(uint64_t a1)
{
  v2 = sub_100457BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457170(uint64_t a1)
{
  v2 = sub_100457BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004571AC(uint64_t a1)
{
  v2 = sub_100457CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004571E8(uint64_t a1)
{
  v2 = sub_100457CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100457224(uint64_t a1)
{
  v2 = sub_100457C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457260(uint64_t a1)
{
  v2 = sub_100457C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10045729C(uint64_t a1)
{
  v2 = sub_100457D14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004572D8(uint64_t a1)
{
  v2 = sub_100457D14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100457314(uint64_t a1)
{
  v2 = sub_100457C18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457350(uint64_t a1)
{
  v2 = sub_100457C18();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10045738C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100457584(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1004573D8()
{
  result = qword_1005B3E30;
  if (!qword_1005B3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E30);
  }

  return result;
}

uint64_t sub_10045742C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797465666173 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_100457584(void *a1)
{
  v39 = sub_10004B564(&qword_1005B3E38, &qword_1004D8F58);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v31 - v2;
  v40 = sub_10004B564(&qword_1005B3E40, &qword_1004D8F60);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v31 - v3;
  v4 = sub_10004B564(&qword_1005B3E48, &qword_1004D8F68);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_10004B564(&qword_1005B3E50, &qword_1004D8F70);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10004B564(&qword_1005B3E58, &qword_1004D8F78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_100011AEC(a1, v14);
  sub_100457BC4();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_10046AF6C();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_100457CC0();
        v29 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_100457D14();
        v23 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_100004984(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_100457C6C();
      v28 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_100457C18();
      v30 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = type metadata accessor for DecodingError();
  swift_allocError();
  v11 = v25;
  sub_10004B564(&qword_1005B3E68, &qword_1004D8F80);
  *v11 = &type metadata for UserNotificationDestination;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v24 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_100004984(v44);
  return v11;
}

unint64_t sub_100457BC4()
{
  result = qword_1005B3E60;
  if (!qword_1005B3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E60);
  }

  return result;
}

unint64_t sub_100457C18()
{
  result = qword_1005B3E70;
  if (!qword_1005B3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E70);
  }

  return result;
}

unint64_t sub_100457C6C()
{
  result = qword_1005B3E78;
  if (!qword_1005B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E78);
  }

  return result;
}

unint64_t sub_100457CC0()
{
  result = qword_1005B3E80;
  if (!qword_1005B3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E80);
  }

  return result;
}

unint64_t sub_100457D14()
{
  result = qword_1005B3E88;
  if (!qword_1005B3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E88);
  }

  return result;
}

unint64_t sub_100457DBC()
{
  result = qword_1005B3EB8;
  if (!qword_1005B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EB8);
  }

  return result;
}

unint64_t sub_100457E14()
{
  result = qword_1005B3EC0;
  if (!qword_1005B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EC0);
  }

  return result;
}

unint64_t sub_100457E6C()
{
  result = qword_1005B3EC8;
  if (!qword_1005B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EC8);
  }

  return result;
}

unint64_t sub_100457EC4()
{
  result = qword_1005B3ED0;
  if (!qword_1005B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3ED0);
  }

  return result;
}

unint64_t sub_100457F1C()
{
  result = qword_1005B3ED8;
  if (!qword_1005B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3ED8);
  }

  return result;
}

unint64_t sub_100457F74()
{
  result = qword_1005B3EE0;
  if (!qword_1005B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EE0);
  }

  return result;
}

unint64_t sub_100457FCC()
{
  result = qword_1005B3EE8;
  if (!qword_1005B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EE8);
  }

  return result;
}

unint64_t sub_100458024()
{
  result = qword_1005B3EF0;
  if (!qword_1005B3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EF0);
  }

  return result;
}

unint64_t sub_10045807C()
{
  result = qword_1005B3EF8;
  if (!qword_1005B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EF8);
  }

  return result;
}

unint64_t sub_1004580D4()
{
  result = qword_1005B3F00;
  if (!qword_1005B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3F00);
  }

  return result;
}

unint64_t sub_10045812C()
{
  result = qword_1005B3F08;
  if (!qword_1005B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3F08);
  }

  return result;
}

uint64_t sub_100458184()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CC8);
  sub_10000A6F0(v0, qword_1005E0CC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100458204()
{
  type metadata accessor for UserNotificationPublisher();
  result = swift_initStaticObject();
  qword_1005E0CE0 = result;
  return result;
}

uint64_t sub_100458230(id *a1, void *a2)
{
  v4 = type metadata accessor for LocalUserNotificationCategory();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  v10 = [v36 request];
  v11 = [v10 identifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = a2[3];
  v16 = a2[4];
  sub_100011AEC(a2, v15);
  (*(v16 + 16))(v15, v16);
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  if (v12 == v17 && v14 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = 0;
    if ((v21 & 1) == 0)
    {
      return v22 & 1;
    }
  }

  v23 = [v36 request];
  v24 = [v23 content];

  v25 = [v24 categoryIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = a2[3];
  v30 = a2[4];
  sub_100011AEC(a2, v29);
  v31 = v37;
  (*(v30 + 8))(v29, v30);
  v32 = LocalUserNotificationCategory.rawValue.getter();
  v34 = v33;
  (*(v38 + 8))(v31, v39);
  if (v26 == v32 && v28 == v34)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v22 & 1;
}

uint64_t sub_1004585BC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100458618(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for UserNotificationService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1004586C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UserNotificationService();
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100458784(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for UserNotificationService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10045882C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for UserNotificationService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1004588D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for UserNotificationService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_10045897C()
{
  type metadata accessor for UserNotificationService();
  sub_100458A38(&qword_1005AD530, &unk_1004D9448);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100458A38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserNotificationService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100458ABC(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_10004B564(a3, a4);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v10 + 144);
  *(v10 + 144) = 0x8000000000000000;
  a5(v17, a6, isUniquelyReferenced_nonNull_native);
  *(v10 + 144) = v30;
  swift_endAccess();
  if (qword_1005A8110 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005B15F0);
  (*(v14 + 16))(v16, a6, v13);
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v22 = 136446466;
    sub_10045E3E4(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v26 = sub_10000D01C(v23, v25, v31);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    swift_getObjectType();
    v27 = _typeName(_:qualified:)();
    v29 = sub_10000D01C(v27, v28, v31);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Added client: %{public}s, of type: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_100458E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_100458ED0, a3, 0);
}

uint64_t sub_100458ED0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_100430004(v1, &unk_1004D9688, v4);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100458FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for UUID();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_1004590D4;

  return daemon.getter();
}

uint64_t sub_1004590D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_1004592C4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004592C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1004594F0;
    v6 = 0;
  }

  else
  {

    *(v4 + 80) = a1;
    *(v4 + 88) = sub_10045E3E4(&qword_1005B4178, v7, type metadata accessor for SecureLocationService, &unk_1004D9548);
    v5 = sub_100459438;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100459438()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_100458ABC(v0[11], &qword_1005B41F0, &qword_1004D9690, sub_100454BF4, v1);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10005921C, 0, 0);
}

uint64_t sub_1004594F0()
{

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to IDS service: %@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004596A8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100459774, v2, 0);
}

uint64_t sub_100459774()
{
  v31 = v0;
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B4088);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10045E3E4(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "STUB: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_100459A60()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100459AC4(uint64_t a1, uint64_t a2)
{
  result = sub_10045E3E4(&qword_1005B4178, a2, type metadata accessor for SecureLocationService, &unk_1004D9548);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100459B20()
{
  result = qword_1005B4180;
  if (!qword_1005B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4180);
  }

  return result;
}

uint64_t sub_100459B74(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SecureLocationService();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100459C1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1004596A8(a1, a2);
}

uint64_t sub_100459CC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SecureLocationService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100459D68(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for SecureLocationService();
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100459E30(uint64_t a1, uint64_t a2)
{
  sub_10045E3E4(&qword_1005B41D0, a2, type metadata accessor for SecureLocationService, &unk_1004D9618);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100459F38;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100459F38()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 16);

    return _swift_task_switch(sub_10004B074, v4, 0);
  }
}

uint64_t sub_10045A06C()
{
  type metadata accessor for SecureLocationService();
  sub_10045E3E4(&qword_1005AD528, v0, type metadata accessor for SecureLocationService, &unk_1004D95B8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10045A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10045A1E4, v3, 0);
}

uint64_t sub_10045A1E4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for Account();
  (*(*(v8 - 8) + 16))(v2, v7, v8);
  v9 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(v2 + v10, v6, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Destination();
  (*(*(v13 - 8) + 16))(v2 + v12, v5, v13);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_10046B228(v2, v1, type metadata accessor for SecureLocationsRelayedMessage);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_10046B040(v1, v16 + v15, type metadata accessor for SecureLocationsRelayedMessage);
  sub_1001D7F30(0, 0, v4, &unk_1004D96E8, v16);

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayedMessage);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10045A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for RemoveSecureLocationsKeyEnvelope(0);
  v6[24] = swift_task_alloc();
  v6[25] = type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0);
  v6[26] = swift_task_alloc();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();
  v11 = type metadata accessor for HashedAdvertisement();
  v6[33] = v11;
  v12 = *(v11 - 8);
  v6[34] = v12;
  v6[35] = *(v12 + 64);
  v6[36] = swift_task_alloc();
  v13 = type metadata accessor for PrivateKey();
  v6[37] = v13;
  v14 = *(v13 - 8);
  v6[38] = v14;
  v6[39] = *(v14 + 64);
  v6[40] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v6[41] = v15;
  v16 = *(v15 - 8);
  v6[42] = v16;
  v6[43] = *(v16 + 64);
  v6[44] = swift_task_alloc();
  v17 = type metadata accessor for MessageContext();
  v6[45] = v17;
  v18 = *(v17 - 8);
  v6[46] = v18;
  v6[47] = *(v18 + 64);
  v6[48] = swift_task_alloc();
  v6[49] = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  v6[50] = swift_task_alloc();
  v19 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v6[51] = v19;
  v6[52] = *(v19 - 8);
  v6[53] = swift_task_alloc();
  v20 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v6[54] = v20;
  v6[55] = *(v20 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_10045A974, v5, 0);
}

uint64_t sub_10045A974()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10001DF0C(&qword_1005B4200, &qword_1005AB918, &unk_1004C5800, &protocol conformance descriptor for Message<A>);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10001DF0C(&qword_1005B4208, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);

  sub_1000049D0(v1, v3);

  (*(v9 + 32))(v6, v7, v8);
  Message.type.getter();
  v10 = *(v0 + 660);
  v11 = Message.version.getter();
  if (v10)
  {
    if (v10 == 1)
    {
      if (v11 == 1)
      {
        v12 = swift_task_alloc();
        *(v0 + 544) = v12;
        *v12 = v0;
        v13 = sub_10045BDFC;
LABEL_13:
        v12[1] = v13;

        return daemon.getter();
      }
    }

    else if (v11 == 1)
    {
      v12 = swift_task_alloc();
      *(v0 + 600) = v12;
      *v12 = v0;
      v13 = sub_10045C6F8;
      goto LABEL_13;
    }
  }

  else if (v11 == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 488) = v12;
    *v12 = v0;
    v13 = sub_10045B14C;
    goto LABEL_13;
  }

  v14 = *(v0 + 480);
  v15 = *(v0 + 432);
  v16 = *(v0 + 440);
  sub_10046B7A8(*(v0 + 88));
  (*(v16 + 8))(v14, v15);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10045B14C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 496) = a1;

  v3 = swift_task_alloc();
  *(v2 + 504) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_10045B330;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045B330(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[14];

    return _swift_task_switch(sub_10045CFEC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[66] = v6;
    *v6 = v4;
    v6[1] = sub_10045B4BC;

    return sub_10001CC28();
  }
}

uint64_t sub_10045B4BC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 536) = a1;

  return _swift_task_switch(sub_10045B5D4, v2, 0);
}

uint64_t sub_10045B5D4()
{
  v73 = v0;
  v1 = v0[65];
  sub_10045E3E4(&qword_1005AAC80, 255, type metadata accessor for SecureLocationsKeyUpdateEnvelope, &unk_1004D9C38);
  sub_10045E3E4(&qword_1005AAC88, 255, type metadata accessor for SecureLocationsKeyUpdateEnvelope, &unk_1004D9C10);
  Message.extract<A>()();
  if (v1)
  {

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v2 = v0[60];
    v3 = v0[58];
    v4 = v0[54];
    v5 = v0[55];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);
    (*(v5 + 16))(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[60];
    v11 = v0[58];
    v12 = v0[54];
    v13 = v0[55];
    if (v9)
    {
      v14 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v14 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v10;
      v17 = v16;
      v18 = *(v13 + 8);
      v18(v11, v12);
      v19 = sub_10000D01C(v15, v17, v72);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to decode SecureLocationsKeyUpdateEnvelope from %s", v14, 0xCu);
      sub_100004984(v67);

      v18(v69, v12);
    }

    else
    {

      v39 = *(v13 + 8);
      v39(v11, v12);
      v39(v10, v12);
    }
  }

  else
  {
    v71 = v0[67];
    v63 = v0[55];
    v64 = v0[54];
    v65 = v0[60];
    v20 = v0[49];
    v60 = v0[50];
    v21 = v0[46];
    v22 = v0[44];
    v46 = v0[48];
    v47 = v22;
    v50 = v0[43];
    v51 = v0[47];
    v24 = v0[41];
    v23 = v0[42];
    v44 = v0[45];
    v45 = v24;
    v25 = v0[40];
    v52 = v0[39];
    v27 = v0[37];
    v26 = v0[38];
    v48 = v27;
    v49 = v25;
    v70 = v0[36];
    v66 = v0[34];
    v68 = v0[33];
    v56 = v0[32];
    v62 = v0[31];
    v28 = (v60 + v20[5]);
    v55 = *(v60 + v20[6]);
    v53 = v28[1];
    v54 = *v28;
    v29 = v20[7];
    v42 = v20[8];
    v61 = v0[30];
    v57 = v0[29];
    v58 = v0[27];
    v59 = v0[28];
    (*(v21 + 16))();
    (*(v23 + 16))(v22, v60, v24);
    v43 = v26;
    (*(v26 + 16))(v25, v60 + v29, v27);
    (*(v66 + 16))(v70, v60 + v42, v68);
    v30 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v31 = (v51 + *(v23 + 80) + v30) & ~*(v23 + 80);
    v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v26 + 80) + v33 + 8) & ~*(v26 + 80);
    v35 = (v52 + *(v66 + 80) + v34) & ~*(v66 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v71;
    (*(v21 + 32))(v36 + v30, v46, v44);
    (*(v23 + 32))(v36 + v31, v47, v45);
    v37 = (v36 + v32);
    *v37 = v54;
    v37[1] = v53;
    *(v36 + v33) = v55;
    (*(v43 + 32))(v36 + v34, v49, v48);
    (*(v66 + 32))(v36 + v35, v70, v68);
    v0[6] = sub_10046BD8C;
    v0[7] = v36;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100020828;
    v0[5] = &unk_10059C900;
    v38 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10045E3E4(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v59 + 8))(v57, v58);
    (*(v62 + 8))(v56, v61);
    (*(v63 + 8))(v65, v64);

    sub_10046AFA0(v60, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_10045BDFC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 552) = a1;

  v3 = swift_task_alloc();
  *(v2 + 560) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_10045BFE0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045BFE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {
    v5 = v3[14];

    return _swift_task_switch(sub_10045D354, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[73] = v6;
    *v6 = v4;
    v6[1] = sub_10045C16C;

    return sub_10001CC28();
  }
}

uint64_t sub_10045C16C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_10045C284, v2, 0);
}

uint64_t sub_10045C284()
{
  v30 = v0;
  v1 = v0[72];
  sub_10045E3E4(&qword_1005B4228, 255, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope, &unk_1004D9C88);
  sub_10045E3E4(&qword_1005B4230, 255, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope, &unk_1004D9C60);
  Message.extract<A>()();
  if (v1)
  {

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v2 = v0[60];
    v3 = v0[57];
    v4 = v0[54];
    v5 = v0[55];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);
    (*(v5 + 16))(v3, v2, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[60];
    v11 = v0[57];
    v12 = v0[54];
    v13 = v0[55];
    if (v9)
    {
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v14 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v10;
      v17 = v16;
      v18 = *(v13 + 8);
      v18(v11, v12);
      v19 = sub_10000D01C(v15, v17, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v14, 0xCu);
      sub_100004984(v27);

      v18(v28, v12);
    }

    else
    {

      v24 = *(v13 + 8);
      v24(v11, v12);
      v24(v10, v12);
    }
  }

  else
  {
    v20 = v0[60];
    v21 = v0[54];
    v22 = v0[55];
    v23 = v0[26];
    sub_10047195C(v0[13], v23, *(v23 + *(v0[25] + 20)));

    sub_10046AFA0(v23, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
    (*(v22 + 8))(v20, v21);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10045C6F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 608) = a1;

  v3 = swift_task_alloc();
  *(v2 + 616) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_10045C8DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045C8DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  if (v1)
  {
    v5 = v3[14];

    return _swift_task_switch(sub_10045D6BC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[80] = v6;
    *v6 = v4;
    v6[1] = sub_10045CA68;

    return sub_10001CC28();
  }
}

uint64_t sub_10045CA68(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_10045CB80, v2, 0);
}

uint64_t sub_10045CB80()
{
  v30 = v0;
  v1 = v0[79];
  sub_10045E3E4(&qword_1005B4218, 255, type metadata accessor for RemoveSecureLocationsKeyEnvelope, &unk_1004D9CD8);
  sub_10045E3E4(&qword_1005B4220, 255, type metadata accessor for RemoveSecureLocationsKeyEnvelope, &unk_1004D9CB0);
  Message.extract<A>()();
  if (v1)
  {

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v2 = v0[60];
    v4 = v0[55];
    v3 = v0[56];
    v5 = v0[54];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);
    (*(v4 + 16))(v3, v2, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[60];
    v12 = v0[55];
    v11 = v0[56];
    v13 = v0[54];
    if (v9)
    {
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v14 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v10;
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_10000D01C(v15, v17, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v14, 0xCu);
      sub_100004984(v27);

      v18(v28, v13);
    }

    else
    {

      v24 = *(v12 + 8);
      v24(v11, v13);
      v24(v10, v13);
    }
  }

  else
  {
    v20 = v0[60];
    v21 = v0[54];
    v22 = v0[55];
    v23 = v0[24];
    sub_100471DE0(v0[13], v23);

    sub_10046AFA0(v23, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
    (*(v22 + 8))(v20, v21);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10045CFEC()
{
  v24 = v0;

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = v0[58];
  v4 = v0[54];
  v3 = v0[55];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005B4088);
  (*(v3 + 16))(v2, v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[60];
  v10 = v0[58];
  v12 = v0[54];
  v11 = v0[55];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to decode SecureLocationsKeyUpdateEnvelope from %s", v13, 0xCu);
    sub_100004984(v22);

    v17(v9, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
    v19(v9, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10045D354()
{
  v24 = v0;

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005B4088);
  (*(v3 + 16))(v2, v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[60];
  v10 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v13, 0xCu);
    sub_100004984(v22);

    v17(v9, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
    v19(v9, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10045D6BC()
{
  v24 = v0;

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005B4088);
  (*(v2 + 16))(v3, v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[60];
  v11 = v0[55];
  v10 = v0[56];
  v12 = v0[54];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v13, 0xCu);
    sub_100004984(v22);

    v17(v9, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
    v19(v9, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10045DA24(uint64_t a1)
{
  v2[2] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[3] = swift_task_alloc();
  v3 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10045DB30, v1, 0);
}

uint64_t sub_10045DB30()
{
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Relaying account changes to BA", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v0[2];

  *v6 = v9;
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_10046B228(v6, v5, type metadata accessor for SecureLocationsRelayedMessage);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_10046B040(v5, v12 + v11, type metadata accessor for SecureLocationsRelayedMessage);

  sub_1001D7F30(0, 0, v8, &unk_1004D96C0, v12);

  sub_10046AFA0(v6, type metadata accessor for SecureLocationsRelayedMessage);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10045DD88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10045DE94, v1, 0);
}

uint64_t sub_10045DE94()
{
  *(v0[3] + 128) = v0[2];

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Relaying device changes to BA", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  *v6 = v9;
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_10046B228(v6, v5, type metadata accessor for SecureLocationsRelayedMessage);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_10046B040(v5, v12 + v11, type metadata accessor for SecureLocationsRelayedMessage);

  sub_1001D7F30(0, 0, v8, &unk_1004D96B0, v12);

  sub_10046AFA0(v6, type metadata accessor for SecureLocationsRelayedMessage);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10045E104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_10045A0D4(a1, a2, a3);
}

uint64_t sub_10045E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_10045A458(a1, a2, a3, a4, a5);
}

uint64_t sub_10045E274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10045DA24(a1);
}

uint64_t sub_10045E308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10045DD88(a1);
}

uint64_t sub_10045E3E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10045E474(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionMessagingInvite();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for BeaconSharingSessionContext(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10045E5F0, v1, 0);
}

uint64_t sub_10045E5F0()
{
  v45 = v0;
  sub_10045E3E4(&qword_1005AB8E8, 255, type metadata accessor for BeaconSharingSessionContext, &unk_1004C5964);
  SessionMessagingInvite.context<A>()();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  sub_10046B040(v0[14], v1, type metadata accessor for BeaconSharingSessionContext);
  sub_10046B228(v1, v2, type metadata accessor for BeaconSharingSessionContext);
  (*(v5 + 32))(v3, v2, v4);
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  v13 = v0[2];
  v14 = type metadata accessor for Logger();
  v0[16] = sub_10000A6F0(v14, qword_1005E0DE0);
  (*(v9 + 16))(v6, v7, v8);
  (*(v11 + 16))(v10, v13, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[10];
  if (v17)
  {
    log = v15;
    v43 = v16;
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];
    v39 = v0[6];
    v41 = v0[5];
    v42 = v0[4];
    v22 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v22 = 141558787;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_10045E3E4(&qword_1005A9260, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_10000D01C(v23, v25, v44);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2081;
    SessionMessagingInvite.accountScopedFromID.getter();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v19, v21);
    (*(v41 + 8))(v39, v42);
    v31 = sub_10000D01C(v28, v30, v44);

    *(v22 + 34) = v31;
    _os_log_impl(&_mh_execute_header, log, v43, "Incoming .meDevice invitation for %{private,mask.hash}s from %{private,mask.hash}s", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[7];
    v33 = v0[8];
    v35 = v0[5];
    v34 = v0[6];
    v36 = v0[4];

    (*(v35 + 8))(v34, v36);
    v26 = *(v33 + 8);
    v26(v18, v32);
  }

  v0[17] = v26;
  v37 = swift_task_alloc();
  v0[18] = v37;
  *v37 = v0;
  v37[1] = sub_10045EC0C;

  return daemon.getter();
}

uint64_t sub_10045EC0C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_10045EDF0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10045EDF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[3];

    return _swift_task_switch(sub_10045F36C, v6, 0);
  }

  else
  {

    v4[22] = a1;
    v7 = swift_task_alloc();
    v4[23] = v7;
    *v7 = v5;
    v7[1] = sub_10045EF7C;

    return sub_10001CC28();
  }
}

uint64_t sub_10045EF7C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10045F094, v2, 0);
}

uint64_t sub_10045F094()
{
  v0[25] = *(v0[24] + 32);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10045F14C;
  v2 = v0[11];
  v3 = v0[2];

  return sub_100126914(v3, v2);
}

uint64_t sub_10045F14C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10045F278, v1, 0);
}

uint64_t sub_10045F278()
{

  v1 = *(v0 + 120);
  (*(v0 + 136))(*(v0 + 88), *(v0 + 56));
  sub_10046AFA0(v1, type metadata accessor for BeaconSharingSessionContext);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10045F36C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get location service: %@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  v6 = *(v0 + 120);
  (*(v0 + 136))(*(v0 + 88), *(v0 + 56));
  sub_10046AFA0(v6, type metadata accessor for BeaconSharingSessionContext);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10045F568()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for SecureLocationsRelayedMessage(0);
  sub_10045E3E4(&qword_1005B41F8, 255, type metadata accessor for SecureLocationsRelayedMessage, &unk_1004D9D00);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = [objc_allocWithZone(SPSecureLocationsManager) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = sub_10045F870;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000A8DE8;
  v0[5] = &unk_10059C860;
  v6 = _Block_copy(v0 + 2);
  [v4 processIDSServiceMessage:isa completion:v6];
  _Block_release(v6);

  sub_1000049D0(v1, v3);

  v7 = v0[1];

  return v7();
}

void sub_10045F870(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Relayed IDS message to SPD", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to relay IDS message to SPD: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

LABEL_10:

    return;
  }
}

uint64_t sub_10045FAC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SecureLocationsRelayActionResponse(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for SecureLocationsRelayAction(0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10045FB88, v2, 0);
}

uint64_t sub_10045FB88()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v0[9] = PropertyListDecoder.init()();
  sub_10045E3E4(&qword_1005B41D8, 255, type metadata accessor for SecureLocationsRelayAction, &unk_1004D9D50);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10045FE40;
  v2 = v0[8];
  v3 = v0[6];

  return sub_100460490(v3, v2);
}

uint64_t sub_10045FE40()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100460280;
  }

  else
  {
    v4 = sub_10045FF6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10045FF6C()
{
  v1 = v0[11];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10045E3E4(&qword_1005B41E0, 255, type metadata accessor for SecureLocationsRelayActionResponse, &unk_1004D9D28);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = v1;
  v6 = v0[8];
  v7 = v0[6];

  if (v5)
  {
    sub_10046AFA0(v7, type metadata accessor for SecureLocationsRelayActionResponse);
    sub_10046AFA0(v6, type metadata accessor for SecureLocationsRelayAction);
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005B4088);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "processIDSServiceMessage failed with %{public}@", v11, 0xCu);
      sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
    }

    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_10046AFA0(v7, type metadata accessor for SecureLocationsRelayActionResponse);
    sub_10046AFA0(v6, type metadata accessor for SecureLocationsRelayAction);

    v16 = v0[1];

    return v16(v2, v4);
  }
}

uint64_t sub_100460280()
{
  v1 = *(v0 + 64);

  sub_10046AFA0(v1, type metadata accessor for SecureLocationsRelayAction);
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005B4088);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "processIDSServiceMessage failed with %{public}@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100460490(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Destination();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for SecureLocationsRelayAction(0);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004606F4, v2, 0);
}

uint64_t sub_1004606F4()
{
  sub_10046B228(*(v0 + 80), *(v0 + 240), type metadata accessor for SecureLocationsRelayAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10046B040(*(v0 + 240), *(v0 + 152), type metadata accessor for SecureLocationsRelayAction.SendMessage);
        v2 = swift_task_alloc();
        *(v0 + 424) = v2;
        *v2 = v0;
        v3 = sub_100462134;
      }

      else
      {
        (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 240), *(v0 + 160));
        v2 = swift_task_alloc();
        *(v0 + 504) = v2;
        *v2 = v0;
        v3 = sub_100463320;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      (*(*(v0 + 168) + 32))(*(v0 + 192), *(v0 + 240), *(v0 + 160));
      v2 = swift_task_alloc();
      *(v0 + 376) = v2;
      *v2 = v0;
      v3 = sub_1004619E4;
    }

    else
    {
      sub_10046B040(*(v0 + 240), *(v0 + 224), type metadata accessor for SecureLocationsRelayAction.HasCapability);
      v2 = swift_task_alloc();
      *(v0 + 248) = v2;
      *v2 = v0;
      v3 = sub_100460B08;
    }

LABEL_14:
    v2[1] = v3;

    return daemon.getter();
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      **(v0 + 72) = *(*(v0 + 88) + 128);
      type metadata accessor for SecureLocationsRelayActionResponse(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_18;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 240), *(v0 + 160));
    v2 = swift_task_alloc();
    *(v0 + 552) = v2;
    *v2 = v0;
    v3 = sub_100463AFC;
    goto LABEL_14;
  }

  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
LABEL_18:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100460B08(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100460D24;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100460D24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 88);

  if (v1)
  {
    v6 = sub_1004643CC;
  }

  else
  {
    v6 = sub_100460EA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100460EA0()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = sub_100209F8C(_swiftEmptyArrayStorage);
  v4 = *(v2 + *(v1 + 20));
  v0[36] = v4;
  v5 = *(v4 + 16);
  v0[37] = v5;

  v6 = v0[34];
  if (v5)
  {
    v7 = v0[21];
    v0[38] = v3;
    v0[39] = 0;
    if (!*(v4 + 16))
    {
      __break(1u);
    }

    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[20];
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v0[40] = *(v11 + 56);
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v0[41] = v12;
    v0[42] = v11 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v4 + v13, v10);
    v12(v9, v8, v10);

    return _swift_task_switch(sub_100461120, v6, 0);
  }

  else
  {
    v14 = v0[9];
    sub_10046AFA0(v0[28], type metadata accessor for SecureLocationsRelayAction.HasCapability);

    *v14 = v3;
    type metadata accessor for SecureLocationsRelayActionResponse(0);
    swift_storeEnumTagMultiPayload();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100461120()
{
  v1 = async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:);
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_100461200;
  v3 = v0[28];
  v4 = v0[26];

  return ((&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + v1))(v4, v3);
}

uint64_t sub_100461200(char a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = *(v3 + 272);

    v5 = sub_100461378;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 88);
    v5 = sub_1004615B4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100461378()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[11];
  v5 = *(v3 + 8);
  v0[45] = v5;
  v0[46] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);

  return _swift_task_switch(sub_100461440, v4, 0);
}

uint64_t sub_100461440()
{
  v1 = v0[45];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[20];

  v1(v3, v4);
  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction.HasCapability);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004615B4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v1;
  v4 = sub_1001FDA80(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    __break(1u);
LABEL_21:
    v42 = v4;
    sub_100205C18();
    v4 = v42;
    goto LABEL_8;
  }

  LOBYTE(v2) = v5;
  if (*(*(v0 + 304) + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v10 = *(v0 + 200);
  sub_100232514(v9, isUniquelyReferenced_nonNull_native);
  v4 = sub_1001FDA80(v10);
  if ((v2 & 1) != (v11 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v13 = *(v0 + 64);
  v14 = *(v0 + 624);
  if (v2)
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    *(v13[7] + v4) = v14;
    v19 = *(v18 + 8);
    v19(v15, v17);
    v19(v16, v17);
  }

  else
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 320);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v13[(v4 >> 6) + 8] |= 1 << v4;
    v26 = v4;
    v20(v13[6] + v21 * v4, v22, v24);
    *(v13[7] + v26) = v14;
    v27 = *(v25 + 8);
    v27(v22, v24);
    v27(v23, v24);
    v28 = v13[2];
    v8 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v8)
    {
      __break(1u);
      goto LABEL_23;
    }

    v13[2] = v29;
  }

  v30 = *(v0 + 312) + 1;
  if (v30 == *(v0 + 296))
  {
    v31 = *(v0 + 72);
    sub_10046AFA0(*(v0 + 224), type metadata accessor for SecureLocationsRelayAction.HasCapability);

    *v31 = v13;
    type metadata accessor for SecureLocationsRelayActionResponse(0);
    swift_storeEnumTagMultiPayload();

    v32 = *(v0 + 8);

    return v32();
  }

  *(v0 + 304) = v13;
  *(v0 + 312) = v30;
  v33 = *(v0 + 288);
  if (v30 >= *(v33 + 16))
  {
LABEL_23:
    __break(1u);
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  v37 = *(v36 + 16);
  v36 += 16;
  v39 = *(v0 + 200);
  v38 = *(v0 + 208);
  v40 = *(v36 + 56);
  *(v0 + 320) = v40;
  v41 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64)) + v40 * v30;
  *(v0 + 328) = v37;
  *(v0 + 336) = v36 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v38, v41, v35);
  v37(v39, v38, v35);

  return _swift_task_switch(sub_100461120, v34, 0);
}

uint64_t sub_1004619E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 384) = a1;

  v3 = swift_task_alloc();
  *(v2 + 392) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100461C00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100461C00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);

    v6 = sub_10046451C;
    v7 = v5;
  }

  else
  {

    *(v4 + 408) = a1;
    v6 = sub_100461D9C;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100461D9C()
{
  v1 = async function pointer to dispatch thunk of QueryController.isRegistered(destination:);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_100461E78;
  v3 = *(v0 + 192);

  return ((&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + v1))(v3);
}

uint64_t sub_100461E78(char a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 625) = a1;

  return _swift_task_switch(sub_100461FBC, v2, 0);
}

uint64_t sub_100461FBC()
{
  v1 = *(v0 + 625);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v2, v3);
  *v5 = v1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100462134(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 432) = a1;

  v3 = swift_task_alloc();
  *(v2 + 440) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100462350;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100462350(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v5 = *(v3 + 88);

  if (v1)
  {
    v6 = sub_100464668;
  }

  else
  {
    v6 = sub_1004624CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004624CC()
{
  v1 = *(v0 + 144);
  if (*(*(v0 + 152) + *(v1 + 20) + 8) >> 60 == 15)
  {
    v2 = *(v0 + 448);
    *(v0 + 620) = *(v1 + 24);
    v3 = sub_100462DD0;
LABEL_6:

    return _swift_task_switch(v3, v2, 0);
  }

  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 48) = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v0 + 48];

  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = v7;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10004B564(&qword_1005B2590, &qword_1004D72F0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 448);
      v9 = *(v0 + 144);
      *(v0 + 464) = *(v0 + 56);
      *(v0 + 616) = *(v9 + 24);
      v3 = sub_1004627CC;
      goto LABEL_6;
    }

    sub_1000F7A28();
    swift_allocError();
    *v11 = 12;
  }

  else
  {
    v10 = v7;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  v12 = *(v0 + 152);

  sub_10046AFA0(v12, type metadata accessor for SecureLocationsRelayAction.SendMessage);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004627CC()
{
  v1 = v0;
  v2 = *(v0 + 616);
  v3 = *(v0 + 152);
  v4 = swift_task_alloc();
  v1[59] = v4;
  *v4 = v1;
  v4[1] = sub_1004628BC;
  v5 = v1[58];
  v6 = v1[19];
  v7 = v1[16];

  return InternetMessaging.send(message:metadata:messageOptions:)(v7, v6, v5, v3 + v2);
}

uint64_t sub_1004628BC()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = sub_100462BDC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100462A30;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100462A30()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[14];

  sub_10046AFA0(v1, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v6 = *(v5 + 32);
  v6(v2, v3, v4);
  v6(v0[9], v0[17], v0[13]);
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100462BDC()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_100462C74, v1, 0);
}

uint64_t sub_100462C74()
{
  v1 = *(v0 + 152);

  sub_10046AFA0(v1, type metadata accessor for SecureLocationsRelayAction.SendMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100462DD0()
{
  v1 = v0;
  v2 = *(v0 + 620);
  v3 = *(v0 + 152);
  v4 = swift_task_alloc();
  v1[61] = v4;
  *v4 = v1;
  v4[1] = sub_100462EBC;
  v5 = v1[19];
  v6 = v1[15];

  return InternetMessaging.send(message:messageOptions:)(v6, v5, v3 + v2);
}

uint64_t sub_100462EBC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_1004631C4;
  }

  else
  {
    v4 = sub_100463014;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100463014()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_10046AFA0(v1, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v6 = *(v4 + 32);
  v6(v2, v3, v5);
  v6(v0[9], v0[17], v0[13]);
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004631C4()
{
  v1 = *(v0 + 152);

  sub_10046AFA0(v1, type metadata accessor for SecureLocationsRelayAction.SendMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100463320(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 512) = a1;

  v3 = swift_task_alloc();
  *(v2 + 520) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_10046353C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10046353C(uint64_t a1)
{
  v4 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  if (v1)
  {
    v5 = v4[11];

    v6 = sub_1004647B8;
    v7 = v5;
  }

  else
  {

    v6 = sub_1004636D8;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1004636D8()
{
  *(v0 + 544) = *(*(v0 + 528) + 128);
  sub_10004B564(&qword_1005AD570, &qword_1004C9BC8);
  sub_10001DF0C(&qword_1005B41E8, &qword_1005AD570, &qword_1004C9BC8, &protocol conformance descriptor for InternetMessaging<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004637DC, v2, v1);
}

uint64_t sub_1004637DC()
{
  v1 = *(v0 + 88);
  dispatch thunk of InternetMessaging.myAccountScopedDestination.getter();

  return _swift_task_switch(sub_10046387C, v1, 0);
}

uint64_t sub_10046387C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9280, &qword_1004C27F8);
    Destination.destination.getter();
  }

  else
  {
    v4 = Destination.destination.getter();
    v6 = v5;
    v7 = *(v2 + 8);
    v7(v3, v1);
    v8 = Destination.destination.getter();
    if (v6)
    {
      if (v4 == v8 && v6 == v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v15 = *(v0 + 184);
      v16 = *(v0 + 160);

      v7(v15, v16);
      goto LABEL_12;
    }
  }

  v12 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);

  (*(v14 + 8))(v12, v13);

  v11 = 0;
LABEL_12:
  **(v0 + 72) = v11 & 1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100463AFC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 560) = a1;

  v3 = swift_task_alloc();
  *(v2 + 568) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100463D18;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100463D18(uint64_t a1)
{
  v4 = *v2;
  v4[72] = a1;
  v4[73] = v1;

  if (v1)
  {
    v5 = v4[11];

    v6 = sub_100464904;
    v7 = v5;
  }

  else
  {

    v6 = sub_100463EB4;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100463EB4()
{
  v1 = async function pointer to dispatch thunk of QueryController.partitionByCapability(destination:);
  v2 = swift_task_alloc();
  *(v0 + 592) = v2;
  *v2 = v0;
  v2[1] = sub_100463F90;
  v3 = *(v0 + 176);

  return ((&async function pointer to dispatch thunk of QueryController.partitionByCapability(destination:) + v1))(v3);
}

uint64_t sub_100463F90(uint64_t a1)
{
  v4 = *v2;
  v4[75] = v1;

  v5 = v4[11];
  if (v1)
  {
    v6 = sub_100464270;
  }

  else
  {
    v4[76] = a1;
    v6 = sub_1004640F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004640F8()
{
  v1 = v0[76];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[9];

  (*(v3 + 8))(v2, v4);
  *v5 = v1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100464270()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004643CC()
{
  sub_10046AFA0(*(v0 + 224), type metadata accessor for SecureLocationsRelayAction.HasCapability);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046451C()
{
  (*(v0[21] + 8))(v0[24], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100464668()
{
  sub_10046AFA0(*(v0 + 152), type metadata accessor for SecureLocationsRelayAction.SendMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004647B8()
{
  (*(v0[21] + 8))(v0[23], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100464904()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100464A50(void *a1)
{
  v3 = sub_10004B564(&qword_1005B4B18, &qword_1004D9E88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_10046DE7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Account();
  sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account, &protocol conformance descriptor for Account);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
    v8[14] = 1;
    type metadata accessor for UUID();
    sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 2;
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100464CD4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AD8, &qword_1004D9E70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10046D7B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Account();
  sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account, &protocol conformance descriptor for Account);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
    LOBYTE(v13) = 1;
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    sub_10004B564(&qword_1005AB918, &unk_1004C5800);
    sub_10001DF0C(&qword_1005B4200, &qword_1005AB918, &unk_1004C5800, &protocol conformance descriptor for Message<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 3;
    sub_100005F6C(v13, v11);
    sub_10046D808();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v13, v14);
    LOBYTE(v13) = 4;
    type metadata accessor for MessageContext();
    sub_10045E3E4(&qword_1005B4AF8, 255, &type metadata accessor for MessageContext, &protocol conformance descriptor for MessageContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100465030(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4B38, &qword_1004D9E98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10046DF24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10004B564(&qword_1005B4B48, &qword_1004D9EA0);
  sub_10046DF78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10046518C(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4B28, &qword_1004D9E90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10046DED0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10004B564(&qword_1005B49B8, &qword_1004D9E00);
  sub_10046D060();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

double sub_1004652E8(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4A20, &qword_1004D9E18);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v34 - v3;
  v4 = sub_10004B564(&qword_1005B4A28, &qword_1004D9E20);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v40 = &v34 - v5;
  v6 = sub_10004B564(&qword_1005B4A30, &qword_1004D9E28);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v39 = &v34 - v7;
  v37 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  __chkstk_darwin(v37);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005B4A38, &qword_1004D9E30);
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SecureLocationsRelayedMessage(0);
  __chkstk_darwin(v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10004B564(&qword_1005B4A40, &qword_1004D9E38);
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  sub_100011AEC(a1, a1[3]);
  sub_10046D46C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10046B228(v48, v17, type metadata accessor for SecureLocationsRelayedMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v25 = *v17;
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v51) = 2;
      sub_10046D568();
      v26 = v40;
      v27 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v25;
      sub_10046D5BC();
      v28 = v44;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v43;
    }

    else
    {
      LOBYTE(v51) = 3;
      sub_10046D4C0();
      v26 = v45;
      v27 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v25;
      sub_10046D514();
      v28 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v46;
    }

    (*(v29 + 8))(v26, v28);
    (*(v49 + 8))(v20, v27);
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = v38;
    sub_10046B040(v17, v38, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
    LOBYTE(v51) = 1;
    sub_10046D610();
    v31 = v39;
    v32 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005B4A78, 255, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived, &unk_1004D9A48);
    v33 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v41 + 8))(v31, v33);
    sub_10046AFA0(v30, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
    (*(v49 + 8))(v20, v32);
  }

  else
  {
    sub_10046B040(v17, v14, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    LOBYTE(v51) = 0;
    sub_10046D664();
    v22 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005B4A88, 255, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered, &unk_1004D99D0);
    v23 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v11, v23);
    sub_10046AFA0(v14, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    (*(v49 + 8))(v20, v22);
  }

  return result;
}

uint64_t sub_100465A40()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x44496D6F7266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_100465A9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10046D85C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100465AC4(uint64_t a1)
{
  v2 = sub_10046DE7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465B00(uint64_t a1)
{
  v2 = sub_10046DE7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465B54()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6567617373656DLL;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616E6974736564;
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

uint64_t sub_100465BF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10046D978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100465C20(uint64_t a1)
{
  v2 = sub_10046D7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465C5C(uint64_t a1)
{
  v2 = sub_10046D7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100465CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100465D50(uint64_t a1)
{
  v2 = sub_10046DF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465D8C(uint64_t a1)
{
  v2 = sub_10046DF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100465DFC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100465E84(uint64_t a1)
{
  v2 = sub_10046DED0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465EC0(uint64_t a1)
{
  v2 = sub_10046DED0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465F24(uint64_t a1)
{
  v2 = sub_10046D568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465F60(uint64_t a1)
{
  v2 = sub_10046D568();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100465F9C()
{
  v1 = 0x526567617373656DLL;
  v2 = 0x73746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x4373656369766564;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100466040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10046DB2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100466068(uint64_t a1)
{
  v2 = sub_10046D46C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004660A4(uint64_t a1)
{
  v2 = sub_10046D46C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004660E0(uint64_t a1)
{
  v2 = sub_10046D4C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046611C(uint64_t a1)
{
  v2 = sub_10046D4C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100466158(uint64_t a1)
{
  v2 = sub_10046D664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100466194(uint64_t a1)
{
  v2 = sub_10046D664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004661D0(uint64_t a1)
{
  v2 = sub_10046D610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046620C(uint64_t a1)
{
  v2 = sub_10046D610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100466260(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005B4B10, &qword_1004D9E80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100011AEC(a1, a1[3]);
  sub_10046DE28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100005F6C(a2, a3);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004663C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for MessagingCapability();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B4B58, &qword_1004D9EA8);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  HasCapability = type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
  __chkstk_darwin(HasCapability);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_10046E030();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v21 = HasCapability;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_10045E3E4(&qword_1005B4B68, 255, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
  v28 = 1;
  sub_10046E084();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_10046B228(v18, v22, type metadata accessor for SecureLocationsRelayAction.HasCapability);
  sub_100004984(a1);
  return sub_10046AFA0(v18, type metadata accessor for SecureLocationsRelayAction.HasCapability);
}

uint64_t sub_100466768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = type metadata accessor for MessagingOptions();
  v24 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v22 - v7;
  v30 = sub_10004B564(&qword_1005B4B78, &qword_1004D9EB8);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  sub_100011AEC(a1, v13);
  sub_10046E13C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v31);
  }

  v22 = v5;
  v23 = v10;
  v14 = v12;
  v16 = v26;
  v15 = v27;
  v17 = v28;
  LOBYTE(v32) = 0;
  sub_10001DF0C(&qword_1005AB928, &qword_1005AB918, &unk_1004C5800, &protocol conformance descriptor for Message<A>);
  v18 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v15 + 32);
  v29 = v6;
  v19(v14, v18, v6);
  v33 = 1;
  sub_10046E190();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v23;
  *(v14 + *(v23 + 20)) = v32;
  LOBYTE(v32) = 2;
  sub_10045E3E4(&qword_1005B4B90, 255, &type metadata accessor for MessagingOptions, &protocol conformance descriptor for MessagingOptions);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v30);
  (*(v24 + 32))(v14 + *(v20 + 24), v22, v17);
  sub_10046B228(v14, v25, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  sub_100004984(v31);
  return sub_10046AFA0(v14, type metadata accessor for SecureLocationsRelayAction.SendMessage);
}

uint64_t sub_100466C30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = sub_10004B564(&qword_1005B48C8, &qword_1004D9D78);
  v102 = *(v3 - 8);
  v103 = v3;
  __chkstk_darwin(v3);
  v109 = &v85 - v4;
  v5 = sub_10004B564(&qword_1005B48D0, &qword_1004D9D80);
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  __chkstk_darwin(v5);
  v111 = &v85 - v7;
  v8 = sub_10004B564(&qword_1005B48D8, &qword_1004D9D88);
  v104 = *(v8 - 8);
  v105 = v8;
  __chkstk_darwin(v8);
  v117 = &v85 - v9;
  v101 = sub_10004B564(&qword_1005B48E0, &qword_1004D9D90);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v110 = &v85 - v10;
  v98 = sub_10004B564(&qword_1005B48E8, &qword_1004D9D98);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v116 = &v85 - v11;
  v96 = sub_10004B564(&qword_1005B48F0, &qword_1004D9DA0);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v115 = &v85 - v12;
  v94 = sub_10004B564(&qword_1005B48F8, &qword_1004D9DA8);
  v95 = *(v94 - 8);
  __chkstk_darwin(v94);
  v114 = &v85 - v13;
  v92 = sub_10004B564(&qword_1005B4900, &qword_1004D9DB0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v108 = &v85 - v14;
  v113 = sub_10004B564(&qword_1005B4908, &unk_1004D9DB8);
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v16 = &v85 - v15;
  v112 = type metadata accessor for SecureLocationsRelayAction(0);
  v17 = __chkstk_darwin(v112);
  v93 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v85 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v85 - v29;
  __chkstk_darwin(v28);
  v32 = &v85 - v31;
  v33 = a1[3];
  v120 = a1;
  sub_100011AEC(a1, v33);
  sub_10046CC70();
  v34 = v121;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v121 = v34;
  if (!v34)
  {
    v85 = v30;
    v86 = v27;
    v87 = v24;
    v88 = v21;
    v36 = v114;
    v35 = v115;
    v37 = v116;
    v38 = v117;
    v89 = v32;
    v39 = v119;
    v40 = v113;
    v90 = v16;
    v41 = KeyedDecodingContainer.allKeys.getter();
    if (*(v41 + 16) != 1 || (v42 = *(v41 + 32), v42 == 8))
    {
      v48 = type metadata accessor for DecodingError();
      v49 = swift_allocError();
      v51 = v50;
      sub_10004B564(&qword_1005B3E68, &qword_1004D8F80);
      *v51 = v112;
      v52 = v90;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v48 - 8) + 104))(v51, enum case for DecodingError.typeMismatch(_:), v48);
      v121 = v49;
      swift_willThrow();
      (*(v118 + 8))(v52, v40);
      goto LABEL_10;
    }

    if (*(v41 + 32) <= 3u)
    {
      v43 = v90;
      if (*(v41 + 32) <= 1u)
      {
        if (*(v41 + 32))
        {
          v123 = 1;
          sub_10046CEBC();
          v73 = v121;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v46 = v118;
          v121 = v73;
          if (!v73)
          {
            (*(v95 + 8))(v36, v94);
            (*(v46 + 8))(v43, v40);
            swift_unknownObjectRelease();
            v47 = v89;
            goto LABEL_39;
          }
        }

        else
        {
          v122 = 0;
          sub_10046CF10();
          v44 = v108;
          v45 = v121;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v46 = v118;
          v121 = v45;
          if (!v45)
          {
            (*(v91 + 8))(v44, v92);
            (*(v46 + 8))(v43, v40);
            swift_unknownObjectRelease();
            v47 = v89;
LABEL_39:
            swift_storeEnumTagMultiPayload();
LABEL_47:
            sub_10046B040(v47, v39, type metadata accessor for SecureLocationsRelayAction);
            return sub_100004984(v120);
          }
        }

        (*(v46 + 8))(v43, v40);
        goto LABEL_10;
      }

      if (v42 == 2)
      {
        v124 = 2;
        sub_10046CE68();
        v61 = v35;
        v62 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v121 = v62;
        if (!v62)
        {
          type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
          sub_10045E3E4(&qword_1005B4950, 255, type metadata accessor for SecureLocationsRelayAction.HasCapability, &unk_1004D9958);
          v63 = v85;
          v64 = v96;
          v65 = v121;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v66 = v118;
          v121 = v65;
          if (v65)
          {
            (*(v97 + 8))(v61, v64);
            (*(v66 + 8))(v43, v40);
            goto LABEL_10;
          }

          (*(v97 + 8))(v61, v64);
          (*(v66 + 8))(v43, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v84 = v63;
LABEL_46:
          v47 = v89;
          sub_10046B040(v84, v89, type metadata accessor for SecureLocationsRelayAction);
          goto LABEL_47;
        }

LABEL_34:
        (*(v118 + 8))(v43, v40);
        goto LABEL_10;
      }

      v125 = 3;
      sub_10046CE14();
      v77 = v37;
      v78 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v121 = v78;
      if (v78)
      {
        goto LABEL_34;
      }

      type metadata accessor for Destination();
      sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v79 = v86;
      v80 = v98;
      v81 = v121;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v121 = v81;
      if (v81)
      {
        (*(v99 + 8))(v77, v80);
        goto LABEL_34;
      }

      (*(v99 + 8))(v77, v80);
      (*(v118 + 8))(v43, v40);
      swift_unknownObjectRelease();
LABEL_45:
      swift_storeEnumTagMultiPayload();
      v84 = v79;
      goto LABEL_46;
    }

    v54 = v118;
    if (*(v41 + 32) > 5u)
    {
      if (v42 != 6)
      {
        v129 = 7;
        sub_10046CCC4();
        v82 = v109;
        v56 = v90;
        v83 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v121 = v83;
        if (!v83)
        {
          (*(v102 + 8))(v82, v103);
          (*(v54 + 8))(v56, v40);
          swift_unknownObjectRelease();
          v47 = v89;
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v128 = 6;
      sub_10046CD18();
      v67 = v90;
      v68 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v121 = v68;
      if (!v68)
      {
        type metadata accessor for Destination();
        sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
        v69 = v93;
        v70 = v106;
        v71 = v111;
        v72 = v121;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v121 = v72;
        if (!v72)
        {
          (*(v107 + 8))(v71, v70);
          (*(v54 + 8))(v67, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v47 = v89;
          sub_10046B040(v69, v89, type metadata accessor for SecureLocationsRelayAction);
          v39 = v119;
          goto LABEL_47;
        }

        (*(v107 + 8))(v71, v70);
      }
    }

    else
    {
      if (v42 == 4)
      {
        v126 = 4;
        sub_10046CDC0();
        v55 = v110;
        v56 = v90;
        v57 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v121 = v57;
        if (!v57)
        {
          type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
          sub_10045E3E4(&qword_1005B4938, 255, type metadata accessor for SecureLocationsRelayAction.SendMessage, &unk_1004D9930);
          v58 = v87;
          v59 = v101;
          v60 = v121;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v121 = v60;
          if (!v60)
          {
            (*(v100 + 8))(v55, v59);
            (*(v54 + 8))(v90, v40);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v84 = v58;
            goto LABEL_46;
          }

          (*(v100 + 8))(v55, v59);
          (*(v54 + 8))(v90, v40);
LABEL_10:
          swift_unknownObjectRelease();
          return sub_100004984(v120);
        }

LABEL_36:
        (*(v54 + 8))(v56, v40);
        goto LABEL_10;
      }

      v127 = 5;
      sub_10046CD6C();
      v67 = v90;
      v74 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v121 = v74;
      if (!v74)
      {
        type metadata accessor for Destination();
        sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
        v75 = v105;
        v76 = v121;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v121 = v76;
        if (!v76)
        {
          (*(v104 + 8))(v38, v75);
          (*(v54 + 8))(v67, v40);
          swift_unknownObjectRelease();
          v79 = v88;
          goto LABEL_45;
        }

        (*(v104 + 8))(v38, v75);
      }
    }

    (*(v54 + 8))(v67, v40);
    goto LABEL_10;
  }

  return sub_100004984(v120);
}

void sub_100467CDC(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4968, &qword_1004D9DC8);
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v53 = &v40 - v3;
  v4 = type metadata accessor for UUID();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B4970, &qword_1004D9DD0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v40 - v7;
  v8 = sub_10004B564(&qword_1005B4978, &qword_1004D9DD8);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v40 - v9;
  v10 = sub_10004B564(&qword_1005B4980, &qword_1004D9DE0);
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v40 - v11;
  v42 = sub_10004B564(&qword_1005B4988, &qword_1004D9DE8);
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v40 - v12;
  v14 = sub_10004B564(&qword_1005B4990, &qword_1004D9DF0);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for SecureLocationsRelayActionResponse(0);
  __chkstk_darwin(v17);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_10004B564(&qword_1005B4998, &qword_1004D9DF8);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v21 = &v40 - v20;
  sub_100011AEC(a1, a1[3]);
  sub_10046CF64();
  v59 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10046B228(v61, v19, type metadata accessor for SecureLocationsRelayActionResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      LOBYTE(v62) = 1;
      sub_10046D3C4();
      v37 = v59;
      v36 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v41 + 8))(v13, v38);
      (*(v58 + 8))(v37, v36);
      return;
    }

    v23 = *v19;
    if (EnumCaseMultiPayload == 1)
    {
      LOBYTE(v62) = 2;
      sub_10046D2B0();
      v24 = v43;
      v26 = v59;
      v25 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v23;
      sub_10004B564(&qword_1005B4A00, &qword_1004D9E10);
      sub_10046D304();
      v27 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v44;
    }

    else
    {
      LOBYTE(v62) = 3;
      sub_10046D118();
      v24 = v46;
      v26 = v59;
      v25 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v23;
      sub_10004B564(&qword_1005B49D8, &qword_1004D9E08);
      sub_10046D16C();
      v27 = v48;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v47;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v39 = *v19;
    LOBYTE(v62) = 4;
    sub_10046D00C();
    v24 = v49;
    v26 = v59;
    v25 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v39;
    sub_10004B564(&qword_1005B49B8, &qword_1004D9E00);
    sub_10046D060();
    v27 = v51;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v50;
LABEL_12:
    (*(v28 + 8))(v24, v27);
    (*(v58 + 8))(v26, v25);

    return;
  }

  v30 = v59;
  v29 = v60;
  if (EnumCaseMultiPayload == 4)
  {
    v32 = v54;
    v31 = v55;
    v33 = v52;
    (*(v54 + 32))(v52, v19, v55);
    LOBYTE(v62) = 5;
    sub_10046CFB8();
    v34 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v34, v35);
    (*(v32 + 8))(v33, v31);
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_10046D418();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v40 + 8))(v16, v14);
  }

  (*(v58 + 8))(v30, v29);
}

uint64_t sub_1004685E4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AD0, &qword_1004D9E68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_10046D760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(updated + 24));
    v11[15] = 2;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[14] = 3;
    type metadata accessor for PrivateKey();
    sub_10045E3E4(&qword_1005AAB68, 255, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[13] = 4;
    type metadata accessor for HashedAdvertisement();
    sub_10045E3E4(&qword_1005AAB70, 255, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1004688DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = type metadata accessor for HashedAdvertisement();
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PrivateKey();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10004B564(&qword_1005B4AC0, &qword_1004D9E60);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v26 - v8;
  updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  __chkstk_darwin(updated);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_10046D760();
  v38 = v9;
  v13 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_100004984(a1);
  }

  else
  {
    v14 = v5;
    v28 = updated;
    v16 = v34;
    v15 = v35;
    v46 = 0;
    sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v6;
    v18 = v12;
    (*(v16 + 32))(v12, v37, v17);
    v45 = 1;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v28;
    v21 = &v18[*(v28 + 20)];
    *v21 = v19;
    v21[1] = v22;
    v44 = 2;
    sub_1000F1240();
    v37 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = a1;
    *&v18[*(v20 + 24)] = v41;
    v43 = 3;
    sub_10045E3E4(&qword_1005AAB38, 255, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    v27 = v14;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v18;
    (*(v33 + 32))(&v18[*(v20 + 28)], v27, v15);
    v42 = 4;
    sub_10045E3E4(&qword_1005AAB40, 255, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    v25 = v31;
    v24 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v36 + 8))(v38, v39);
    (*(v29 + 32))(v23 + *(v28 + 32), v25, v24);
    sub_10046B228(v23, v30, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    sub_100004984(v40);
    sub_10046AFA0(v23, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  }
}

uint64_t sub_100468F78(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AB8, &qword_1004D9E58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_10046D70C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0) + 20));
    v10[15] = 1;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10046914C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for UUID();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B4AA8, &qword_1004D9E50);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  updated = type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0);
  __chkstk_darwin(updated);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_10046D70C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v21 = updated;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1000F1240();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_10046B228(v18, v22, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
  sub_100004984(a1);
  return sub_10046AFA0(v18, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
}

uint64_t sub_1004694D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B4A90, &qword_1004D9E40);
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RemoveSecureLocationsKeyEnvelope(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_10046D6B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v16;
    v12 = v17;
    sub_10045E3E4(&qword_1005AAB30, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v8, v6);
    (*(v13 + 32))(v11, v19, v4);
    sub_10046B040(v11, v12, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
  }

  return sub_100004984(a1);
}

void sub_100469784(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10046980C(uint64_t a1)
{
  v2 = sub_10046DE28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469848(uint64_t a1)
{
  v2 = sub_10046DE28();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100469884@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10046DCB4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1004698CC()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x696C696261706163;
  }
}

void sub_100469914(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1004699FC(uint64_t a1)
{
  v2 = sub_10046E030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469A38(uint64_t a1)
{
  v2 = sub_10046E030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469A8C()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_100469AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10047026C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100469B10(uint64_t a1)
{
  v2 = sub_10046E13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469B4C(uint64_t a1)
{
  v2 = sub_10046E13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469BA0(uint64_t a1)
{
  v2 = sub_10046CCC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469BDC(uint64_t a1)
{
  v2 = sub_10046CCC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100469C18()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x63697665446C6C61;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0x7373654D646E6573;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6261706143736168;
  if (v1 != 2)
  {
    v5 = 0x7473696765527369;
  }

  if (*v0)
  {
    v2 = 1886352499;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100469D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100470384(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100469D54(uint64_t a1)
{
  v2 = sub_10046CC70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469D90(uint64_t a1)
{
  v2 = sub_10046CC70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469DCC(uint64_t a1)
{
  v2 = sub_10046CE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469E08(uint64_t a1)
{
  v2 = sub_10046CE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469E44(uint64_t a1)
{
  v2 = sub_10046CD6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469E80(uint64_t a1)
{
  v2 = sub_10046CD6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469EBC(uint64_t a1)
{
  v2 = sub_10046CE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469EF8(uint64_t a1)
{
  v2 = sub_10046CE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469F34(uint64_t a1)
{
  v2 = sub_10046CD18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469F70(uint64_t a1)
{
  v2 = sub_10046CD18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100469FAC(uint64_t a1)
{
  v2 = sub_10046CDC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100469FE8(uint64_t a1)
{
  v2 = sub_10046CDC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A024(uint64_t a1)
{
  v2 = sub_10046CF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A060(uint64_t a1)
{
  v2 = sub_10046CF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A09C(uint64_t a1)
{
  v2 = sub_10046CEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A0D8(uint64_t a1)
{
  v2 = sub_10046CEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A12C(uint64_t a1)
{
  v2 = sub_10046D2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A168(uint64_t a1)
{
  v2 = sub_10046D2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A1A4(uint64_t a1)
{
  v2 = sub_10046D3C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A1E0(uint64_t a1)
{
  v2 = sub_10046D3C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10046A21C()
{
  v1 = 1684631414;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0x73656369766564;
  if (v2 != 4)
  {
    v4 = 1684632949;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1819242338;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10046A2C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100470638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10046A2F0(uint64_t a1)
{
  v2 = sub_10046CF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A32C(uint64_t a1)
{
  v2 = sub_10046CF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A368(uint64_t a1)
{
  v2 = sub_10046D118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A3A4(uint64_t a1)
{
  v2 = sub_10046D118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A3E0(uint64_t a1)
{
  v2 = sub_10046D00C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A41C(uint64_t a1)
{
  v2 = sub_10046D00C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10046A458(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10046A4D8(uint64_t a1)
{
  v2 = sub_10046CFB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A514(uint64_t a1)
{
  v2 = sub_10046CFB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A550(uint64_t a1)
{
  v2 = sub_10046D418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A58C(uint64_t a1)
{
  v2 = sub_10046D418();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10046A5E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

Swift::Int sub_10046A658()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 10);
  return Hasher._finalize()();
}

_DWORD *sub_10046A69C@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 10;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10046A788()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7865646E69;
  v4 = 0x4B65746176697270;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10046A830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100470834(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10046A858(uint64_t a1)
{
  v2 = sub_10046D760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046A894(uint64_t a1)
{
  v2 = sub_10046D760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046A900()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_10046A93C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10046AA1C(uint64_t a1)
{
  v2 = sub_10046D70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046AA58(uint64_t a1)
{
  v2 = sub_10046D70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10046AADC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10046AB64(uint64_t a1)
{
  v2 = sub_10046D6B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046ABA0(uint64_t a1)
{
  v2 = sub_10046D6B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046ABDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t sub_10046ACA4(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4AA0, &qword_1004D9E48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100011AEC(a1, a1[3]);
  sub_10046D6B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10046AE20()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CE8);
  sub_10000A6F0(v0, qword_1005E0CE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10046AEA4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B4088);
  v1 = sub_10000A6F0(v0, qword_1005B4088);
  if (qword_1005A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0CE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10046AF6C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046AFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10046B040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B0A8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100003690;

  return sub_100458E30(a1, a2, v2);
}

uint64_t sub_10046B154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100458FE4(a1, v4, v5, v6);
}

uint64_t sub_10046B228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10046B2D0(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10045F548(a1, v6, v7, v1 + v5);
}

uint64_t sub_10046B3C0()
{
  v1 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }

      v7 = type metadata accessor for Account();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
      v9 = v8[5];
      v10 = type metadata accessor for Destination();
      (*(*(v10 - 8) + 8))(v5 + v9, v10);
      v11 = v8[6];
      v12 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
      (*(*(v12 - 8) + 8))(v5 + v11, v12);
      sub_1000049D0(*(v5 + v8[7]), *(v5 + v8[7] + 8));
      v13 = v8[8];
      v14 = type metadata accessor for MessageContext();
    }

    else
    {
      v15 = type metadata accessor for Account();
      (*(*(v15 - 8) + 8))(v0 + v3, v15);
      v16 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
      v17 = *(v16 + 20);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      v13 = *(v16 + 24);
      v14 = type metadata accessor for Destination();
    }

    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

LABEL_10:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10046B658(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayedMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_10045F548(a1, v6, v7, v1 + v5);
}

void sub_10046B7A8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  if (qword_1005A85A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0CE8);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v10(v6, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136446466;
    Message.type.getter();
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v8, v2);
    v18 = sub_10000D01C(v14, v16, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    v19 = Message.version.getter();
    v17(v6, v2);
    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported version of %{public}s: %ld", v13, 0x16u);
    sub_100004984(v22);
  }

  else
  {
    v20 = *(v3 + 8);
    v20(v6, v2);

    v20(v8, v2);
  }
}

uint64_t sub_10046BA80(uint64_t a1)
{
  v1 = objc_opt_self();
  sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19 = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:&v19];

  v4 = v19;
  if (v3)
  {

    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005B4088);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v10 = 136315394;
      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = sub_10000D01C(v13, v15, &v19);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to convert %s to JSON: %@", v10, 0x16u);
      sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v12);
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

uint64_t sub_10046BD8C()
{
  v1 = *(type metadata accessor for MessageContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PrivateKey() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for HashedAdvertisement() - 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + v6);
  v14 = *(v0 + v6 + 8);
  v15 = *(v0 + v7);
  v16 = v0 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100475834(v12, v0 + v2, v0 + v5, v13, v14, v15, v0 + v9, v16);
}

uint64_t sub_10046BF7C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrivateKey();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HashedAdvertisement();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10046C058(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10046C0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10046C160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10046C1D0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10046C264(uint64_t a1)
{
  type metadata accessor for Account();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Destination();
    if (v2 <= 0x3F)
    {
      sub_10046C320(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MessageContext();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10046C320(uint64_t a1)
{
  if (!qword_1005B4468)
  {
    sub_100459B20();
    v1 = type metadata accessor for Message();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B4468);
    }
  }
}

uint64_t sub_10046C37C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10046C3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10046C494(uint64_t a1)
{
  result = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10046C564(uint64_t a1)
{
  type metadata accessor for MessagingCapability();
  if (v1 <= 0x3F)
  {
    sub_10046C5E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10046C5E8(uint64_t a1)
{
  if (!qword_1005B4650)
  {
    type metadata accessor for Destination();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B4650);
    }
  }
}

uint64_t sub_10046C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10046C760()
{
  if (!qword_1005B46E8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B46E8);
    }
  }
}

uint64_t sub_10046C7B0(uint64_t a1)
{
  result = type metadata accessor for SecureLocationsRelayAction.HasCapability(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Destination();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SecureLocationsRelayAction.SendMessage(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10046C840(uint64_t a1)
{
  sub_10046C8E8(319);
  if (v1 <= 0x3F)
  {
    sub_10046C988(319);
    if (v2 <= 0x3F)
    {
      sub_10046CA34(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10046C8E8(uint64_t a1)
{
  if (!qword_1005B4848)
  {
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AADF8, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B4848);
    }
  }
}

void sub_10046C988(uint64_t a1)
{
  if (!qword_1005B4850)
  {
    sub_10004B610(&qword_1005B4858, &qword_1004D9928);
    sub_10001DF0C(&qword_1005B4860, &qword_1005B4858, &qword_1004D9928, &protocol conformance descriptor for Set<A>);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B4850);
    }
  }
}

void sub_10046CA34(uint64_t a1)
{
  if (!qword_1005B4868)
  {
    type metadata accessor for Device();
    sub_10045E3E4(&qword_1005A9250, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B4868);
    }
  }
}

unint64_t sub_10046CB14()
{
  result = qword_1005B48A8;
  if (!qword_1005B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48A8);
  }

  return result;
}

unint64_t sub_10046CB6C()
{
  result = qword_1005B48B0;
  if (!qword_1005B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48B0);
  }

  return result;
}

unint64_t sub_10046CBC4()
{
  result = qword_1005B48B8;
  if (!qword_1005B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48B8);
  }

  return result;
}

unint64_t sub_10046CC1C()
{
  result = qword_1005B48C0;
  if (!qword_1005B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B48C0);
  }

  return result;
}

unint64_t sub_10046CC70()
{
  result = qword_1005B4910;
  if (!qword_1005B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4910);
  }

  return result;
}

unint64_t sub_10046CCC4()
{
  result = qword_1005B4918;
  if (!qword_1005B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4918);
  }

  return result;
}

unint64_t sub_10046CD18()
{
  result = qword_1005B4920;
  if (!qword_1005B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4920);
  }

  return result;
}

unint64_t sub_10046CD6C()
{
  result = qword_1005B4928;
  if (!qword_1005B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4928);
  }

  return result;
}

unint64_t sub_10046CDC0()
{
  result = qword_1005B4930;
  if (!qword_1005B4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4930);
  }

  return result;
}

unint64_t sub_10046CE14()
{
  result = qword_1005B4940;
  if (!qword_1005B4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4940);
  }

  return result;
}

unint64_t sub_10046CE68()
{
  result = qword_1005B4948;
  if (!qword_1005B4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4948);
  }

  return result;
}

unint64_t sub_10046CEBC()
{
  result = qword_1005B4958;
  if (!qword_1005B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4958);
  }

  return result;
}

unint64_t sub_10046CF10()
{
  result = qword_1005B4960;
  if (!qword_1005B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4960);
  }

  return result;
}

unint64_t sub_10046CF64()
{
  result = qword_1005B49A0;
  if (!qword_1005B49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49A0);
  }

  return result;
}

unint64_t sub_10046CFB8()
{
  result = qword_1005B49A8;
  if (!qword_1005B49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49A8);
  }

  return result;
}

unint64_t sub_10046D00C()
{
  result = qword_1005B49B0;
  if (!qword_1005B49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49B0);
  }

  return result;
}

unint64_t sub_10046D060()
{
  result = qword_1005B49C0;
  if (!qword_1005B49C0)
  {
    sub_10004B610(&qword_1005B49B8, &qword_1004D9E00);
    sub_10045E3E4(&qword_1005B49C8, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49C0);
  }

  return result;
}

unint64_t sub_10046D118()
{
  result = qword_1005B49D0;
  if (!qword_1005B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49D0);
  }

  return result;
}

unint64_t sub_10046D16C()
{
  result = qword_1005B49E0;
  if (!qword_1005B49E0)
  {
    sub_10004B610(&qword_1005B49D8, &qword_1004D9E08);
    sub_10046D1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49E0);
  }

  return result;
}

unint64_t sub_10046D1F8()
{
  result = qword_1005B49E8;
  if (!qword_1005B49E8)
  {
    sub_10004B610(&qword_1005B4858, &qword_1004D9928);
    sub_10045E3E4(&qword_1005B49F0, 255, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49E8);
  }

  return result;
}

unint64_t sub_10046D2B0()
{
  result = qword_1005B49F8;
  if (!qword_1005B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B49F8);
  }

  return result;
}

unint64_t sub_10046D304()
{
  result = qword_1005B4A08;
  if (!qword_1005B4A08)
  {
    sub_10004B610(&qword_1005B4A00, &qword_1004D9E10);
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A08);
  }

  return result;
}

unint64_t sub_10046D3C4()
{
  result = qword_1005B4A10;
  if (!qword_1005B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A10);
  }

  return result;
}

unint64_t sub_10046D418()
{
  result = qword_1005B4A18;
  if (!qword_1005B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A18);
  }

  return result;
}

unint64_t sub_10046D46C()
{
  result = qword_1005B4A48;
  if (!qword_1005B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A48);
  }

  return result;
}

unint64_t sub_10046D4C0()
{
  result = qword_1005B4A50;
  if (!qword_1005B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A50);
  }

  return result;
}

unint64_t sub_10046D514()
{
  result = qword_1005B4A58;
  if (!qword_1005B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A58);
  }

  return result;
}

unint64_t sub_10046D568()
{
  result = qword_1005B4A60;
  if (!qword_1005B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A60);
  }

  return result;
}

unint64_t sub_10046D5BC()
{
  result = qword_1005B4A68;
  if (!qword_1005B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A68);
  }

  return result;
}

unint64_t sub_10046D610()
{
  result = qword_1005B4A70;
  if (!qword_1005B4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A70);
  }

  return result;
}

unint64_t sub_10046D664()
{
  result = qword_1005B4A80;
  if (!qword_1005B4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A80);
  }

  return result;
}

unint64_t sub_10046D6B8()
{
  result = qword_1005B4A98;
  if (!qword_1005B4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4A98);
  }

  return result;
}

unint64_t sub_10046D70C()
{
  result = qword_1005B4AB0;
  if (!qword_1005B4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AB0);
  }

  return result;
}

unint64_t sub_10046D760()
{
  result = qword_1005B4AC8;
  if (!qword_1005B4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AC8);
  }

  return result;
}

unint64_t sub_10046D7B4()
{
  result = qword_1005B4AE0;
  if (!qword_1005B4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AE0);
  }

  return result;
}

unint64_t sub_10046D808()
{
  result = qword_1005B4AF0;
  if (!qword_1005B4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4AF0);
  }

  return result;
}

uint64_t sub_10046D85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10046D978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10046DB2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004EAA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526567617373656DLL && a2 == 0xEF64657669656365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xEF6465676E616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4373656369766564 && a2 == 0xEE006465676E6168)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_10046DCB4(void *a1)
{
  v3 = sub_10004B564(&qword_1005B4B00, &qword_1004D9E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100011AEC(a1, a1[3]);
  sub_10046DE28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100004984(a1);
  }

  return v7;
}

unint64_t sub_10046DE28()
{
  result = qword_1005B4B08;
  if (!qword_1005B4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B08);
  }

  return result;
}

unint64_t sub_10046DE7C()
{
  result = qword_1005B4B20;
  if (!qword_1005B4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B20);
  }

  return result;
}

unint64_t sub_10046DED0()
{
  result = qword_1005B4B30;
  if (!qword_1005B4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B30);
  }

  return result;
}

unint64_t sub_10046DF24()
{
  result = qword_1005B4B40;
  if (!qword_1005B4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B40);
  }

  return result;
}

unint64_t sub_10046DF78()
{
  result = qword_1005B4B50;
  if (!qword_1005B4B50)
  {
    sub_10004B610(&qword_1005B4B48, &qword_1004D9EA0);
    sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account, &protocol conformance descriptor for Account);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B50);
  }

  return result;
}

unint64_t sub_10046E030()
{
  result = qword_1005B4B60;
  if (!qword_1005B4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B60);
  }

  return result;
}

unint64_t sub_10046E084()
{
  result = qword_1005B4B70;
  if (!qword_1005B4B70)
  {
    sub_10004B610(&qword_1005A9288, &qword_1004D9EB0);
    sub_10045E3E4(&qword_1005AAB48, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B70);
  }

  return result;
}

unint64_t sub_10046E13C()
{
  result = qword_1005B4B80;
  if (!qword_1005B4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B80);
  }

  return result;
}

unint64_t sub_10046E190()
{
  result = qword_1005B4B88;
  if (!qword_1005B4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B88);
  }

  return result;
}

unint64_t sub_10046E3D8()
{
  result = qword_1005B4B98;
  if (!qword_1005B4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4B98);
  }

  return result;
}

unint64_t sub_10046E430()
{
  result = qword_1005B4BA0;
  if (!qword_1005B4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BA0);
  }

  return result;
}

unint64_t sub_10046E488()
{
  result = qword_1005B4BA8;
  if (!qword_1005B4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BA8);
  }

  return result;
}

unint64_t sub_10046E4E0()
{
  result = qword_1005B4BB0;
  if (!qword_1005B4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BB0);
  }

  return result;
}

unint64_t sub_10046E538()
{
  result = qword_1005B4BB8;
  if (!qword_1005B4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BB8);
  }

  return result;
}

unint64_t sub_10046E590()
{
  result = qword_1005B4BC0;
  if (!qword_1005B4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BC0);
  }

  return result;
}

unint64_t sub_10046E5E8()
{
  result = qword_1005B4BC8;
  if (!qword_1005B4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BC8);
  }

  return result;
}

unint64_t sub_10046E640()
{
  result = qword_1005B4BD0;
  if (!qword_1005B4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BD0);
  }

  return result;
}

unint64_t sub_10046E698()
{
  result = qword_1005B4BD8;
  if (!qword_1005B4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BD8);
  }

  return result;
}

unint64_t sub_10046E6F0()
{
  result = qword_1005B4BE0;
  if (!qword_1005B4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BE0);
  }

  return result;
}

unint64_t sub_10046E748()
{
  result = qword_1005B4BE8;
  if (!qword_1005B4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BE8);
  }

  return result;
}

unint64_t sub_10046E7A0()
{
  result = qword_1005B4BF0;
  if (!qword_1005B4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BF0);
  }

  return result;
}

unint64_t sub_10046E7F8()
{
  result = qword_1005B4BF8;
  if (!qword_1005B4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4BF8);
  }

  return result;
}

unint64_t sub_10046E850()
{
  result = qword_1005B4C00;
  if (!qword_1005B4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C00);
  }

  return result;
}

unint64_t sub_10046E8A8()
{
  result = qword_1005B4C08;
  if (!qword_1005B4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C08);
  }

  return result;
}

unint64_t sub_10046E900()
{
  result = qword_1005B4C10;
  if (!qword_1005B4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C10);
  }

  return result;
}

unint64_t sub_10046E958()
{
  result = qword_1005B4C18;
  if (!qword_1005B4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C18);
  }

  return result;
}

unint64_t sub_10046E9B0()
{
  result = qword_1005B4C20;
  if (!qword_1005B4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C20);
  }

  return result;
}

unint64_t sub_10046EA08()
{
  result = qword_1005B4C28;
  if (!qword_1005B4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C28);
  }

  return result;
}

unint64_t sub_10046EA60()
{
  result = qword_1005B4C30;
  if (!qword_1005B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C30);
  }

  return result;
}

unint64_t sub_10046EAB8()
{
  result = qword_1005B4C38;
  if (!qword_1005B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C38);
  }

  return result;
}

unint64_t sub_10046EB10()
{
  result = qword_1005B4C40;
  if (!qword_1005B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C40);
  }

  return result;
}

unint64_t sub_10046EB68()
{
  result = qword_1005B4C48;
  if (!qword_1005B4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C48);
  }

  return result;
}

unint64_t sub_10046EBC0()
{
  result = qword_1005B4C50;
  if (!qword_1005B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C50);
  }

  return result;
}

unint64_t sub_10046EC18()
{
  result = qword_1005B4C58;
  if (!qword_1005B4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C58);
  }

  return result;
}

unint64_t sub_10046EC70()
{
  result = qword_1005B4C60;
  if (!qword_1005B4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C60);
  }

  return result;
}

unint64_t sub_10046ECC8()
{
  result = qword_1005B4C68;
  if (!qword_1005B4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C68);
  }

  return result;
}

unint64_t sub_10046ED20()
{
  result = qword_1005B4C70;
  if (!qword_1005B4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C70);
  }

  return result;
}

unint64_t sub_10046ED78()
{
  result = qword_1005B4C78;
  if (!qword_1005B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C78);
  }

  return result;
}

unint64_t sub_10046EDD0()
{
  result = qword_1005B4C80;
  if (!qword_1005B4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C80);
  }

  return result;
}

unint64_t sub_10046EE28()
{
  result = qword_1005B4C88;
  if (!qword_1005B4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C88);
  }

  return result;
}

unint64_t sub_10046EE80()
{
  result = qword_1005B4C90;
  if (!qword_1005B4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C90);
  }

  return result;
}

unint64_t sub_10046EED8()
{
  result = qword_1005B4C98;
  if (!qword_1005B4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4C98);
  }

  return result;
}

unint64_t sub_10046EF30()
{
  result = qword_1005B4CA0;
  if (!qword_1005B4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CA0);
  }

  return result;
}

unint64_t sub_10046EF88()
{
  result = qword_1005B4CA8;
  if (!qword_1005B4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CA8);
  }

  return result;
}

unint64_t sub_10046EFE0()
{
  result = qword_1005B4CB0;
  if (!qword_1005B4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CB0);
  }

  return result;
}

unint64_t sub_10046F038()
{
  result = qword_1005B4CB8;
  if (!qword_1005B4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CB8);
  }

  return result;
}

unint64_t sub_10046F090()
{
  result = qword_1005B4CC0;
  if (!qword_1005B4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CC0);
  }

  return result;
}

unint64_t sub_10046F0E8()
{
  result = qword_1005B4CC8;
  if (!qword_1005B4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CC8);
  }

  return result;
}

unint64_t sub_10046F140()
{
  result = qword_1005B4CD0;
  if (!qword_1005B4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CD0);
  }

  return result;
}

unint64_t sub_10046F198()
{
  result = qword_1005B4CD8;
  if (!qword_1005B4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CD8);
  }

  return result;
}

unint64_t sub_10046F1F0()
{
  result = qword_1005B4CE0;
  if (!qword_1005B4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CE0);
  }

  return result;
}

unint64_t sub_10046F248()
{
  result = qword_1005B4CE8;
  if (!qword_1005B4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CE8);
  }

  return result;
}

unint64_t sub_10046F2A0()
{
  result = qword_1005B4CF0;
  if (!qword_1005B4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CF0);
  }

  return result;
}

unint64_t sub_10046F2F8()
{
  result = qword_1005B4CF8;
  if (!qword_1005B4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4CF8);
  }

  return result;
}

unint64_t sub_10046F350()
{
  result = qword_1005B4D00;
  if (!qword_1005B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D00);
  }

  return result;
}

unint64_t sub_10046F3A8()
{
  result = qword_1005B4D08;
  if (!qword_1005B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D08);
  }

  return result;
}

unint64_t sub_10046F400()
{
  result = qword_1005B4D10;
  if (!qword_1005B4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D10);
  }

  return result;
}

unint64_t sub_10046F458()
{
  result = qword_1005B4D18;
  if (!qword_1005B4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D18);
  }

  return result;
}

unint64_t sub_10046F4B0()
{
  result = qword_1005B4D20;
  if (!qword_1005B4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D20);
  }

  return result;
}

unint64_t sub_10046F508()
{
  result = qword_1005B4D28;
  if (!qword_1005B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D28);
  }

  return result;
}

unint64_t sub_10046F560()
{
  result = qword_1005B4D30;
  if (!qword_1005B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D30);
  }

  return result;
}

unint64_t sub_10046F5B8()
{
  result = qword_1005B4D38;
  if (!qword_1005B4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D38);
  }

  return result;
}

unint64_t sub_10046F610()
{
  result = qword_1005B4D40;
  if (!qword_1005B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D40);
  }

  return result;
}

unint64_t sub_10046F668()
{
  result = qword_1005B4D48;
  if (!qword_1005B4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D48);
  }

  return result;
}

unint64_t sub_10046F6C0()
{
  result = qword_1005B4D50;
  if (!qword_1005B4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D50);
  }

  return result;
}

unint64_t sub_10046F718()
{
  result = qword_1005B4D58;
  if (!qword_1005B4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D58);
  }

  return result;
}

unint64_t sub_10046F770()
{
  result = qword_1005B4D60;
  if (!qword_1005B4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D60);
  }

  return result;
}

unint64_t sub_10046F7C8()
{
  result = qword_1005B4D68;
  if (!qword_1005B4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D68);
  }

  return result;
}

unint64_t sub_10046F820()
{
  result = qword_1005B4D70;
  if (!qword_1005B4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D70);
  }

  return result;
}

unint64_t sub_10046F878()
{
  result = qword_1005B4D78;
  if (!qword_1005B4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D78);
  }

  return result;
}

unint64_t sub_10046F8D0()
{
  result = qword_1005B4D80;
  if (!qword_1005B4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D80);
  }

  return result;
}

unint64_t sub_10046F928()
{
  result = qword_1005B4D88;
  if (!qword_1005B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D88);
  }

  return result;
}

unint64_t sub_10046F980()
{
  result = qword_1005B4D90;
  if (!qword_1005B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D90);
  }

  return result;
}

unint64_t sub_10046F9D8()
{
  result = qword_1005B4D98;
  if (!qword_1005B4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4D98);
  }

  return result;
}

unint64_t sub_10046FA30()
{
  result = qword_1005B4DA0;
  if (!qword_1005B4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4DA0);
  }

  return result;
}