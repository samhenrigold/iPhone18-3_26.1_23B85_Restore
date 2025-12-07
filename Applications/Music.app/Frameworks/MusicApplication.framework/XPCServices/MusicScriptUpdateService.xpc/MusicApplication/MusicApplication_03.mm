void sub_10003C9C0(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_100017CC8(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_100132530(result, a2, 1, a3, a4);
  *v4 = v6;
}

unint64_t sub_10003CA9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601C38, &qword_1004C95E0);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1000346EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003CB90(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_1006019C0, &unk_1004C9148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_10003CC4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003CC78()
{

  return swift_deallocObject();
}

uint64_t sub_10003CCB0()
{

  return sub_1004BA324();
}

uint64_t sub_10003CD14()
{

  return swift_deallocObject();
}

uint64_t sub_10003CD4C()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return sub_1004BA314();
  }

  return result;
}

unint64_t sub_10003CD80()
{
  result = qword_1006019D8;
  if (!qword_1006019D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006019D8);
  }

  return result;
}

unint64_t sub_10003CDD8()
{
  result = qword_1006019E0;
  if (!qword_1006019E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006019E0);
  }

  return result;
}

uint64_t sub_10003CE2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10003CE74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003CED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003CF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003CF74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003CFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003D0E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1004B6D14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601B58, &qword_1004C9518);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003BED8(v5, v6, sub_100034AC0);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601C18, &qword_1004C95D0);
    v3 = sub_1004BD6F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F778(v4, v13, &unk_100601C20, &qword_1004C95D8);
      result = sub_100034774(v13);
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
      result = sub_10003E13C(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601C00, &qword_1004C95B8);
    v3 = sub_1004BD6F4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1000347B8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10003D498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100003ABC(&qword_100601B50, &qword_1004C9510);
  v3 = sub_1004BD6F4();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1000347B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1000347B8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003D5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601BF8, &qword_1004C95B0);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003BED8(v5, v6, sub_100034AC0);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D6C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&unk_100601BD0, &qword_1004C9590);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003BED8(v5, v6, sub_100034AC0);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D7D4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100600D10, &qword_1004C66C0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003ABC(&qword_100600D18, &qword_1004C66C8);
    v7 = sub_1004BD6F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F778(v9, v5, &qword_100600D10, &qword_1004C66C0);
      result = sub_100034820(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004B6D14();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D9BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100003ABC(&qword_100601BF0, &qword_1004C95A8);
    v5 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_10003E428(v9, v10);
      result = sub_10003BED8(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003DADC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100601BC0, &qword_1004C9580);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003ABC(&qword_100601BC8, &qword_1004C9588);
    v7 = sub_1004BD6F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F778(v9, v5, &qword_100601BC0, &qword_1004C9580);
      result = sub_100034820(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004B6D14();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
      result = sub_10003E14C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003DCE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601B30, &unk_1004C9500);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1000348F4(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003DDDC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100601B60, &qword_1004C9520);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003ABC(&qword_100601B20, &unk_1004C94F0);
    v7 = sub_1004BD6F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F778(v9, v5, &qword_100601B60, &qword_1004C9520);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003BED8(*v5, v12, sub_100034AC0);
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
      v18 = sub_1004B7B14();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E024(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100003ABC(a2, a3);
    v9 = sub_1004BD6F4();
    v10 = a1 + 32;

    while (1)
    {
      sub_10000F778(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1000349C4(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10003E13C(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

_OWORD *sub_10003E13C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003E14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E32C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
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

  result = sub_1004BD6A4();
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
    v13 = sub_1004BD6A4();
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

uint64_t sub_10003E428(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10003E4EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  v9 = sub_1000133B0(a5);
  return sub_10004AD80(a1, v9, a4);
}

uint64_t sub_10003E5C8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100003ABC(&qword_100601C60, &qword_1004D0A70) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10003E6D0, 0, 0);
}

uint64_t sub_10003E6D0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000F778(v4, v2, &qword_100601C60, &qword_1004D0A70);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100025B04(v2, v7 + v6, &qword_100601C60, &qword_1004D0A70);
  sub_1001FA838(0, 0, v1, &unk_1004C9C00, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003E82C(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100003ABC(&qword_100601C68, &qword_1004C98A0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10003E934, 0, 0);
}

uint64_t sub_10003E934()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000F778(v4, v2, &qword_100601C68, &qword_1004C98A0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100025B04(v2, v7 + v6, &qword_100601C68, &qword_1004C98A0);
  sub_1001FA838(0, 0, v1, &unk_1004C9C10, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003EA90(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100003ABC(&qword_100601DE0, &unk_1004D0810) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10003EB98, 0, 0);
}

uint64_t sub_10003EB98()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000F778(v4, v2, &qword_100601DE0, &unk_1004D0810);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100025B04(v2, v7 + v6, &qword_100601DE0, &unk_1004D0810);
  sub_1001FA838(0, 0, v1, &unk_1004C9B10, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003ECF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_100151788(a1, 1);
}

uint64_t sub_10003EDAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_100152CA8(a1, 1);
}

uint64_t sub_10003EE64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000136EC;

  return sub_1001679D4(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a7;
  v56 = a6;
  v53 = a4;
  v54 = a5;
  v49 = a2;
  v12 = sub_1004B8104();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin();
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v50 = v14;
  v52 = *(v14 - 8);
  v15 = v52;
  __chkstk_darwin();
  v48 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100601C40, &unk_1004C9830);
  __chkstk_darwin();
  v51 = &v45 - v17;
  v18 = type metadata accessor for Actions.PlaybackContext(0);
  v19 = v18[5];
  (*(v15 + 56))(&a8[v19], 1, 1, v14);
  v20 = &a8[v18[6]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a8[v18[7]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a8 = a1;
  sub_10003F42C(a2, &a8[v19], &qword_100601C40, &unk_1004C9830);
  v23 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 2);
  v25 = *(v20 + 3);
  v26 = a3;
  v27 = a3;
  v28 = v53;
  v29 = v54;
  v30 = v56;
  sub_10003F380(v27, v53, v54, v56);
  v31 = v24;
  v32 = v49;
  sub_10003F3E0(v23, v22, v31, v25);
  v33 = v26;
  *v20 = v26;
  *(v20 + 1) = v28;
  *(v20 + 2) = v29;
  *(v20 + 3) = v30;
  v35 = v50;
  v34 = v51;
  sub_10003F42C(v55, v21, &qword_100601C48, &unk_1004D50E0);
  sub_10000F778(v32, v34, &qword_100601C40, &unk_1004C9830);
  if ((*(v52 + 48))(v34, 1, v35) == 1)
  {
    sub_10003F3E0(v33, v28, v54, v56);
    sub_100007214(v55, &qword_100601C48, &unk_1004D50E0);
    sub_100007214(v32, &qword_100601C40, &unk_1004C9830);
    v32 = v34;
  }

  else
  {
    v36 = v28;
    v37 = v48;
    sub_10004AD80(v34, v48, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v45;
      v39 = v46;
      v40 = v47;
      (*(v46 + 32))(v45, v37, v47);
      v41 = sub_1004B80D4();
      (*(v39 + 8))(v38, v40);
    }

    else
    {
      v41 = *v37;
    }

    sub_10003F494(v34);
    v42 = v54;
    v43 = v56;
    sub_1001F7864(v33, v36, v54, v56);
    sub_10003F3E0(v33, v36, v42, v43);

    sub_100007214(v55, &qword_100601C48, &unk_1004D50E0);
  }

  return sub_100007214(v32, &qword_100601C40, &unk_1004C9830);
}

uint64_t type metadata accessor for Actions.PlaybackContext(uint64_t a1)
{
  result = qword_100601D80;
  if (!qword_100601D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_10003F3CC(a3, a4);
  }
}

uint64_t sub_10003F3CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003E428(result, a2);
  }

  return result;
}

void sub_10003F3E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100004D7C(a3, a4);
  }
}

uint64_t sub_10003F42C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003ABC(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003F494(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext(0) + 24);
  v2 = *v1;
  sub_10003F380(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v6 = sub_1004B8104();
  v27 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  v15 = type metadata accessor for Actions.PlaybackContext(0);
  v16 = v4 + *(v15 + 24);
  sub_10003F3E0(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
  v17 = v28;
  v18 = v29;
  *v16 = a1;
  *(v16 + 8) = v17;
  v19 = v30;
  *(v16 + 16) = v18;
  *(v16 + 24) = v19;
  v20 = *(v15 + 20);
  if (!(*(v10 + 48))(v4 + v20, 1, v9))
  {
    v21 = v27;
    sub_10004AD80(v4 + v20, v14, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_10004AD80(v14, v12, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v21 + 32))(v8, v12, v6);
      v22 = sub_1004B80D4();
      (*(v21 + 8))(v8, v6);
      sub_10003F494(v14);
    }

    else
    {
      sub_10003F494(v14);
      v22 = *v12;
    }

    v23 = *v16;
    v24 = *(v16 + 8);
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    sub_10003F380(*v16, v24, v25, v26);
    sub_1001F7864(v23, v24, v25, v26);
    sub_10003F3E0(v23, v24, v25, v26);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004B8104();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext(0);
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_10003FA70;
}

void sub_10003FA70(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_10004AD80(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_10004AD80(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = sub_1004B80D4();
        (*(v11 + 8))(v10, v12);
        sub_10003F494(v9);
      }

      else
      {
        sub_10003F494(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_10003F380(*v14, v16, v17, v18);
      sub_1001F7864(v15, v16, v17, v18);
      sub_10003F3E0(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a2;
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  __chkstk_darwin();
  v9 = &v108 - v8;
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v11 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v13 = a1[4];
  sub_100009178(a1, v12);
  v14 = __chkstk_darwin();
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v115 = type metadata accessor for Actions.PlaybackContext;
  sub_10004AD80(a2, v11, type metadata accessor for Actions.PlaybackContext);
  v18 = a3;
  v113 = a3;
  sub_100047AC4(a3, &v153);
  v19 = a4;
  v112 = a4;
  v109 = v9;
  sub_10000F778(a4, v9, &qword_100601C50, &unk_1004C9840);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v16, 0, v11, &v153, v9, v12, v13, &v118);
  sub_10009C3FC(&v118, &v120);
  v169[0] = v118;
  sub_100047B20(v169);
  v168 = v119;
  sub_100007214(&v168, &unk_100606160, &qword_1004CAC60);

  v114 = sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v20 = swift_allocObject();
  v116 = xmmword_1004C50A0;
  *(v20 + 16) = xmmword_1004C50A0;
  LOBYTE(a4) = BYTE8(v124);
  v21 = swift_allocObject();
  v22 = v127;
  *(v21 + 112) = v126;
  *(v21 + 128) = v22;
  *(v21 + 144) = v128;
  v23 = v123;
  *(v21 + 48) = v122;
  *(v21 + 64) = v23;
  v24 = v125;
  *(v21 + 80) = v124;
  *(v21 + 96) = v24;
  v25 = v121;
  *(v21 + 16) = v120;
  *(v21 + 32) = v25;
  v26 = swift_allocObject();
  v27 = v127;
  *(v26 + 112) = v126;
  *(v26 + 128) = v27;
  *(v26 + 144) = v128;
  v28 = v123;
  *(v26 + 48) = v122;
  *(v26 + 64) = v28;
  v29 = v125;
  *(v26 + 80) = v124;
  *(v26 + 96) = v29;
  v30 = v121;
  *(v26 + 16) = v120;
  *(v26 + 32) = v30;
  v31 = swift_allocObject();
  v32 = v127;
  *(v31 + 112) = v126;
  *(v31 + 128) = v32;
  *(v31 + 144) = v128;
  v33 = v123;
  *(v31 + 48) = v122;
  *(v31 + 64) = v33;
  v34 = v125;
  *(v31 + 80) = v124;
  *(v31 + 96) = v34;
  v35 = v121;
  *(v31 + 16) = v120;
  *(v31 + 32) = v35;
  v110 = v20;
  *(v20 + 32) = a4;
  *(v20 + 40) = sub_100047B78;
  *(v20 + 48) = v21;
  *(v20 + 56) = sub_100047B80;
  *(v20 + 64) = v26;
  *(v20 + 72) = &unk_1004C9860;
  *(v20 + 80) = v31;
  v36 = a1[3];
  v37 = a1[4];
  sub_100009178(a1, v36);
  v38 = __chkstk_darwin();
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v38);
  v42 = v111;
  v43 = v11;
  sub_10004AD80(v111, v11, v115);
  sub_100047AC4(v18, &v142);
  v44 = v109;
  sub_10000F778(v19, v109, &qword_100601C50, &unk_1004C9840);
  sub_10000F778(&v120, &v153, &qword_100601C58, &qword_1004D0AC0);
  sub_10000F778(&v120, &v153, &qword_100601C58, &qword_1004D0AC0);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v40, 2, v43, &v142, v44, v36, v37, &v129);
  sub_10009C3FC(&v129, &v131);
  v167 = v129;
  sub_100047B20(&v167);
  v166 = v130;
  sub_100007214(&v166, &unk_100606160, &qword_1004CAC60);

  v45 = swift_allocObject();
  *(v45 + 16) = v116;
  LOBYTE(v40) = BYTE8(v135);
  v46 = swift_allocObject();
  v47 = v138;
  *(v46 + 112) = v137;
  *(v46 + 128) = v47;
  *(v46 + 144) = v139;
  v48 = v134;
  *(v46 + 48) = v133;
  *(v46 + 64) = v48;
  v49 = v136;
  *(v46 + 80) = v135;
  *(v46 + 96) = v49;
  v50 = v132;
  *(v46 + 16) = v131;
  *(v46 + 32) = v50;
  v51 = swift_allocObject();
  v52 = v138;
  *(v51 + 112) = v137;
  *(v51 + 128) = v52;
  *(v51 + 144) = v139;
  v53 = v134;
  *(v51 + 48) = v133;
  *(v51 + 64) = v53;
  v54 = v136;
  *(v51 + 80) = v135;
  *(v51 + 96) = v54;
  v55 = v132;
  *(v51 + 16) = v131;
  *(v51 + 32) = v55;
  v56 = swift_allocObject();
  v57 = v138;
  *(v56 + 112) = v137;
  *(v56 + 128) = v57;
  *(v56 + 144) = v139;
  v58 = v134;
  *(v56 + 48) = v133;
  *(v56 + 64) = v58;
  v59 = v136;
  *(v56 + 80) = v135;
  *(v56 + 96) = v59;
  v60 = v132;
  *(v56 + 16) = v131;
  *(v56 + 32) = v60;
  *(v45 + 32) = v40;
  *(v45 + 40) = sub_10004AFA0;
  *(v45 + 48) = v46;
  *(v45 + 56) = sub_10004AFB8;
  *(v45 + 64) = v51;
  *(v45 + 72) = &unk_1004C9870;
  *(v45 + 80) = v56;
  v61 = a1[3];
  v62 = a1[4];
  sub_100009178(a1, v61);
  v63 = __chkstk_darwin();
  v65 = &v108 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v63);
  sub_10004AD80(v42, v43, v115);
  sub_100047AC4(v113, &v142);
  sub_10000F778(v112, v44, &qword_100601C50, &unk_1004C9840);
  sub_10000F778(&v131, &v153, &qword_100601C58, &qword_1004D0AC0);
  sub_10000F778(&v131, &v153, &qword_100601C58, &qword_1004D0AC0);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v65, 1, v43, &v142, v44, v61, v62, &v140);
  sub_10009C3FC(&v140, &v142);
  v165 = v140;
  sub_100047B20(&v165);
  v164 = v141;
  sub_100007214(&v164, &unk_100606160, &qword_1004CAC60);

  v67 = swift_allocObject();
  *(v67 + 16) = v116;
  LOBYTE(v19) = BYTE8(v146);
  v68 = swift_allocObject();
  v69 = v149;
  *(v68 + 112) = v148;
  *(v68 + 128) = v69;
  *(v68 + 144) = v150;
  v70 = v145;
  *(v68 + 48) = v144;
  *(v68 + 64) = v70;
  v71 = v147;
  *(v68 + 80) = v146;
  *(v68 + 96) = v71;
  v72 = v143;
  *(v68 + 16) = v142;
  *(v68 + 32) = v72;
  v73 = swift_allocObject();
  v74 = v149;
  *(v73 + 112) = v148;
  *(v73 + 128) = v74;
  *(v73 + 144) = v150;
  v75 = v145;
  *(v73 + 48) = v144;
  *(v73 + 64) = v75;
  v76 = v147;
  *(v73 + 80) = v146;
  *(v73 + 96) = v76;
  v77 = v143;
  *(v73 + 16) = v142;
  *(v73 + 32) = v77;
  v78 = swift_allocObject();
  v79 = v149;
  *(v78 + 112) = v148;
  *(v78 + 128) = v79;
  *(v78 + 144) = v150;
  v80 = v145;
  *(v78 + 48) = v144;
  *(v78 + 64) = v80;
  v81 = v147;
  *(v78 + 80) = v146;
  *(v78 + 96) = v81;
  v82 = v143;
  *(v78 + 16) = v142;
  *(v78 + 32) = v82;
  *(v67 + 32) = v19;
  *(v67 + 40) = sub_10004AFA0;
  *(v67 + 48) = v68;
  *(v67 + 56) = sub_10004AFB8;
  *(v67 + 64) = v73;
  *(v67 + 72) = &unk_1004C9878;
  *(v67 + 80) = v78;
  v83 = a1[3];
  v84 = a1[4];
  sub_100009178(a1, v83);
  v85 = __chkstk_darwin();
  v87 = &v108 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87, v85);
  sub_10004AD80(v111, v43, v115);
  sub_100047AC4(v113, v117);
  sub_10000F778(v112, v44, &qword_100601C50, &unk_1004C9840);
  sub_10000F778(&v142, &v153, &qword_100601C58, &qword_1004D0AC0);
  sub_10000F778(&v142, &v153, &qword_100601C58, &qword_1004D0AC0);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v87, 3, v43, v117, v44, v83, v84, &v151);
  sub_10009C3FC(&v151, &v153);
  v163 = v151;
  sub_100047B20(&v163);
  v162 = v152;
  sub_100007214(&v162, &unk_100606160, &qword_1004CAC60);

  v89 = swift_allocObject();
  *(v89 + 16) = v116;
  LOBYTE(v19) = BYTE8(v157);
  v90 = swift_allocObject();
  v91 = v160;
  *(v90 + 112) = v159;
  *(v90 + 128) = v91;
  *(v90 + 144) = v161;
  v92 = v156;
  *(v90 + 48) = v155;
  *(v90 + 64) = v92;
  v93 = v158;
  *(v90 + 80) = v157;
  *(v90 + 96) = v93;
  v94 = v154;
  *(v90 + 16) = v153;
  *(v90 + 32) = v94;
  v95 = swift_allocObject();
  v96 = v160;
  *(v95 + 112) = v159;
  *(v95 + 128) = v96;
  *(v95 + 144) = v161;
  v97 = v156;
  *(v95 + 48) = v155;
  *(v95 + 64) = v97;
  v98 = v158;
  *(v95 + 80) = v157;
  *(v95 + 96) = v98;
  v99 = v154;
  *(v95 + 16) = v153;
  *(v95 + 32) = v99;
  v100 = swift_allocObject();
  v101 = v160;
  *(v100 + 112) = v159;
  *(v100 + 128) = v101;
  *(v100 + 144) = v161;
  v102 = v156;
  *(v100 + 48) = v155;
  *(v100 + 64) = v102;
  v103 = v158;
  *(v100 + 80) = v157;
  *(v100 + 96) = v103;
  v104 = v154;
  *(v100 + 16) = v153;
  *(v100 + 32) = v104;
  *(v89 + 32) = v19;
  *(v89 + 40) = sub_10004AFA0;
  *(v89 + 48) = v90;
  *(v89 + 56) = sub_10004AFB8;
  *(v89 + 64) = v95;
  *(v89 + 72) = &unk_1004C9880;
  *(v89 + 80) = v100;
  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1004C50B0;
  *(v105 + 32) = v110;
  *(v105 + 40) = v45;
  *(v105 + 48) = v67;
  *(v105 + 56) = v89;
  sub_10000F778(&v153, v117, &qword_100601C58, &qword_1004D0AC0);
  sub_10000F778(&v153, v117, &qword_100601C58, &qword_1004D0AC0);
  v106 = sub_100024A8C();
  swift_setDeallocating();
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v106;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v77 = a3;
  v78 = a4;
  v86 = a2;
  v9 = sub_100003ABC(&qword_100601C60, &qword_1004D0A70);
  v10 = *(v9 - 8);
  v79 = (v9 - 8);
  v83 = v10;
  v82 = *(v10 + 64);
  __chkstk_darwin();
  v85 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v68 - v12;
  __chkstk_darwin();
  v81 = &v68 - v13;
  __chkstk_darwin();
  v80 = &v68 - v14;
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  __chkstk_darwin();
  v16 = &v68 - v15;
  v17 = sub_100003ABC(&qword_100601C68, &qword_1004C98A0) - 8;
  v70 = *v17;
  v18 = *(v70 + 64);
  __chkstk_darwin();
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v68 - v19;
  __chkstk_darwin();
  v69 = &v68 - v20;
  __chkstk_darwin();
  v22 = &v68 - v21;
  v76 = a1;
  v23 = a1[3];
  inited = a1[4];
  sub_100009178(a1, v23);
  v24 = __chkstk_darwin();
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  sub_100047AC4(a3, v90);
  v72 = v16;
  sub_10000F778(a4, v16, &qword_100601C50, &unk_1004C9840);
  v28 = v86;

  v30 = v87;
  v29 = v88;
  sub_10002F518(v87, v88);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v26, v28, v90, v16, v30, v29, v23, inited, v22);
  v22[*(v17 + 44)] = 7;
  *&v22[*(v17 + 52)] = 0x4014000000000000;
  v31 = &v22[*(v17 + 48)];
  *v31 = sub_1001C4374;
  v31[1] = 0;
  v32 = &v22[*(v17 + 56)];
  *v32 = &unk_1004D2580;
  *(v32 + 1) = 0;
  v33 = &v22[*(v17 + 60)];
  *v33 = &unk_1004D2588;
  *(v33 + 1) = 0;
  v75 = sub_100003ABC(&qword_100601358, &qword_1004C9850);
  inited = swift_initStackObject();
  v74 = xmmword_1004C50A0;
  *(inited + 16) = xmmword_1004C50A0;
  v34 = v69;
  sub_10000F778(v22, v69, &qword_100601C68, &qword_1004C98A0);
  v35 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v36 = swift_allocObject();
  sub_100025B04(v34, v36 + v35, &qword_100601C68, &qword_1004C98A0);
  v37 = v71;
  sub_10000F778(v22, v71, &qword_100601C68, &qword_1004C98A0);
  v38 = swift_allocObject();
  sub_100025B04(v37, v38 + v35, &qword_100601C68, &qword_1004C98A0);
  v39 = v73;
  sub_10000F778(v22, v73, &qword_100601C68, &qword_1004C98A0);
  v40 = swift_allocObject();
  sub_100025B04(v39, v40 + v35, &qword_100601C68, &qword_1004C98A0);
  v41 = inited;
  *(inited + 32) = 7;
  v41[5] = sub_100047D28;
  v41[6] = v36;
  v41[7] = sub_100047DC8;
  v41[8] = v38;
  v41[9] = &unk_1004C98B0;
  v41[10] = v40;
  sub_100007214(v22, &qword_100601C68, &qword_1004C98A0);
  v42 = v76[3];
  v43 = v76[4];
  sub_100009178(v76, v42);
  v44 = __chkstk_darwin();
  (*(v46 + 16))(&v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  sub_100047AC4(v77, v90);
  v47 = v72;
  sub_10000F778(v78, v72, &qword_100601C50, &unk_1004C9840);
  v48 = v86;

  v50 = v87;
  v49 = v88;
  sub_10002F518(v87, v88);
  v51 = v80;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v48, v90, v47, v50, v49, v42, v43, v80);
  v52 = v79;
  *(v51 + v79[11]) = 8;
  *(v51 + v52[13]) = 0x4014000000000000;
  v53 = (v51 + v52[12]);
  v54 = v51;
  *v53 = sub_1001C45C4;
  v53[1] = 0;
  v55 = (v51 + v52[14]);
  *v55 = &unk_1004D25B0;
  v55[1] = 0;
  v56 = (v51 + v52[15]);
  *v56 = &unk_1004D25B8;
  v56[1] = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = v74;
  v58 = v81;
  sub_10000F778(v51, v81, &qword_100601C60, &qword_1004D0A70);
  v59 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v88 = swift_allocObject();
  sub_100025B04(v58, v88 + v59, &qword_100601C60, &qword_1004D0A70);
  v60 = v84;
  sub_10000F778(v51, v84, &qword_100601C60, &qword_1004D0A70);
  v61 = swift_allocObject();
  sub_100025B04(v60, v61 + v59, &qword_100601C60, &qword_1004D0A70);
  v62 = v85;
  sub_10000F778(v51, v85, &qword_100601C60, &qword_1004D0A70);
  v63 = swift_allocObject();
  sub_100025B04(v62, v63 + v59, &qword_100601C60, &qword_1004D0A70);
  *(v57 + 32) = 8;
  v64 = v88;
  *(v57 + 40) = sub_100047EDC;
  *(v57 + 48) = v64;
  *(v57 + 56) = sub_100047F7C;
  *(v57 + 64) = v61;
  *(v57 + 72) = &unk_1004C98C0;
  *(v57 + 80) = v63;
  sub_100007214(v54, &qword_100601C60, &qword_1004D0A70);
  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1004C50C0;
  *(v65 + 32) = inited;
  *(v65 + 40) = v57;
  v66 = sub_100024A8C();
  swift_setDeallocating();
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  swift_arrayDestroy();
  return v66;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v196 = a7;
  *&v197 = a6;
  v194 = a3;
  v195 = a5;
  v185 = a4;
  v9 = sub_1004BB8E4();
  v181 = *(v9 - 8);
  v182 = v9;
  __chkstk_darwin();
  v183 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  __chkstk_darwin();
  v190 = (&v177 - v11);
  v12 = sub_1004BBA84();
  v187 = *(v12 - 8);
  v188 = v12;
  __chkstk_darwin();
  v193 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BB434();
  v192 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  __chkstk_darwin();
  v18 = &v177 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = a1[5];
  sub_100009178(a1, v20);
  v22 = __chkstk_darwin();
  v24 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  sub_100047AC4(v194, &v218);
  sub_10000F778(v196, v18, &qword_100601C50, &unk_1004C9840);
  v189 = v18;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v24, a2, &v218, v195, v197, v18, v20, v19, &v225, v21);
  LOBYTE(v228) = 0;
  *(&v228 + 1) = sub_10004B4C4;
  *&v229 = 0;
  *(&v229 + 1) = 0x4014000000000000;
  *&v230 = &unk_1004C9C68;
  *(&v230 + 1) = 0;
  *&v231 = &unk_1004C9C70;
  *(&v231 + 1) = 0;
  sub_10004826C(a1, &v218);
  swift_unknownObjectRetain();
  v191 = a2;

  v195 = sub_100003ABC(&qword_100601C70, &qword_1004C98D0);
  if (swift_dynamicCast())
  {
    v26 = (*(v192 + 8))(v16, v14);
    v27 = (v225)(v26);
    if (v28 == 1)
    {
      v29 = 0;
      goto LABEL_6;
    }

    sub_1000130F8(v27, v28);
  }

  v29 = 1;
LABEL_6:
  v192 = sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v30 = swift_allocObject();
  v197 = xmmword_1004C50A0;
  *(v30 + 16) = xmmword_1004C50A0;
  v31 = v228;
  v32 = swift_allocObject();
  v33 = v230;
  v32[5] = v229;
  v32[6] = v33;
  v32[7] = v231;
  v34 = v226;
  v32[1] = v225;
  v32[2] = v34;
  v35 = v228;
  v32[3] = v227;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v230;
  v36[5] = v229;
  v36[6] = v37;
  v36[7] = v231;
  v38 = v226;
  v36[1] = v225;
  v36[2] = v38;
  v39 = v228;
  v36[3] = v227;
  v36[4] = v39;
  v40 = swift_allocObject();
  v41 = v230;
  v40[5] = v229;
  v40[6] = v41;
  v40[7] = v231;
  v42 = v226;
  v40[1] = v225;
  v40[2] = v42;
  v43 = v228;
  v40[3] = v227;
  v40[4] = v43;
  *(v30 + 32) = v31;
  *(v30 + 40) = sub_1000482D0;
  *(v30 + 48) = v32;
  *(v30 + 56) = sub_10004AFF8;
  *(v30 + 64) = v36;
  *(v30 + 72) = &unk_1004C98E0;
  *(v30 + 80) = v40;
  v186 = v30;
  if (v29)
  {
    v44 = a1[3];
    v45 = a1[4];
    v46 = a1[5];
    sub_100009178(a1, v44);
    v47 = __chkstk_darwin();
    v49 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49, v47);
    v51 = v194;
    sub_100047AC4(v194, &v218);
    v52 = v196;
    v53 = v189;
    sub_10000F778(v196, v189, &qword_100601C50, &unk_1004C9840);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v49, v191, &v218, v53, v44, v45, v46, &v211);
    v204 = v211;
    v205 = v212;
    v206 = v213;
    LOBYTE(v207) = 49;
    *(&v207 + 1) = sub_10004B4C4;
    *&v208 = 0;
    *(&v208 + 1) = 0x4014000000000000;
    *&v209 = &unk_1004CA008;
    *(&v209 + 1) = 0;
    *&v210 = &unk_1004CA010;
    *(&v210 + 1) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v197;
    v55 = swift_allocObject();
    v56 = v209;
    v55[5] = v208;
    v55[6] = v56;
    v55[7] = v210;
    v57 = v205;
    v55[1] = v204;
    v55[2] = v57;
    v58 = v207;
    v55[3] = v206;
    v55[4] = v58;
    v59 = swift_allocObject();
    v60 = v209;
    v59[5] = v208;
    v59[6] = v60;
    v59[7] = v210;
    v61 = v205;
    v59[1] = v204;
    v59[2] = v61;
    v62 = v207;
    v59[3] = v206;
    v59[4] = v62;
    v63 = swift_allocObject();
    v64 = v209;
    v63[5] = v208;
    v63[6] = v64;
    v63[7] = v210;
    v65 = v205;
    v63[1] = v204;
    v63[2] = v65;
    v66 = v207;
    v63[3] = v206;
    v63[4] = v66;
    v184 = v54;
    *(v54 + 32) = 49;
    *(v54 + 40) = sub_10004854C;
    *(v54 + 48) = v55;
    *(v54 + 56) = sub_10004AFF8;
    *(v54 + 64) = v59;
    *(v54 + 72) = &unk_1004C9940;
    *(v54 + 80) = v63;
    v67 = a1[3];
    v68 = a1[4];
    v69 = a1[5];
    sub_100009178(a1, v67);
    v70 = __chkstk_darwin();
    v72 = &v177 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v70);
    sub_100047AC4(v51, &v218);
    v74 = v52;
    v75 = v53;
    sub_10000F778(v74, v53, &qword_100601C50, &unk_1004C9840);
    v76 = v191;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v72, v191, 0, &v218, v75, v67, v68, v69, &v198);
    v211 = v198;
    v212 = v199;
    v213 = v200;
    LOBYTE(v214) = 48;
    *(&v214 + 1) = sub_10004B4C4;
    *&v215 = 0;
    *(&v215 + 1) = 0x4014000000000000;
    *&v216 = &unk_1004CA760;
    *(&v216 + 1) = 0;
    *&v217 = &unk_1004CA768;
    *(&v217 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v197;
    v78 = swift_allocObject();
    v79 = v216;
    v78[5] = v215;
    v78[6] = v79;
    v78[7] = v217;
    v80 = v212;
    v78[1] = v211;
    v78[2] = v80;
    v81 = v214;
    v78[3] = v213;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v216;
    v82[5] = v215;
    v82[6] = v83;
    v82[7] = v217;
    v84 = v212;
    v82[1] = v211;
    v82[2] = v84;
    v85 = v214;
    v82[3] = v213;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v216;
    v86[5] = v215;
    v86[6] = v87;
    v86[7] = v217;
    v88 = v212;
    v86[1] = v211;
    v86[2] = v88;
    v89 = v214;
    v86[3] = v213;
    v86[4] = v89;
    *(v77 + 32) = 48;
    *(v77 + 40) = sub_100048624;
    *(v77 + 48) = v78;
    *(v77 + 56) = sub_10004AFF8;
    *(v77 + 64) = v82;
    *(v77 + 72) = &unk_1004C9950;
    *(v77 + 80) = v86;
    v90 = a1[3];
    v179 = a1[4];
    v180 = v77;
    v178 = a1[5];
    sub_100009178(a1, v90);
    v177 = &v177;
    v91 = __chkstk_darwin();
    v93 = &v177 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v93, v91);
    sub_100047AC4(v51, &v198);
    sub_10000F778(v196, v75, &qword_100601C50, &unk_1004C9840);

    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);

    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);
    sub_10000F778(&v204, &v218, &qword_100601CA8, &qword_1004D09D0);
    sub_10000F778(&v211, &v218, &qword_100601CB0, &qword_1004C9960);

    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);
    sub_10000F778(&v204, &v218, &qword_100601CA8, &qword_1004D09D0);
    sub_10000F778(&v211, &v218, &qword_100601CB0, &qword_1004C9960);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v93, v76, &v198, v189, v90, v179, v178, &v201);
    v218 = v201;
    v219 = v202;
    v220 = v203;
    LOBYTE(v221) = 1;
    *(&v221 + 1) = sub_10004B4C4;
    *&v222 = 0;
    *(&v222 + 1) = 0x4014000000000000;
    *&v223 = &unk_1004CA3F8;
    *(&v223 + 1) = 0;
    *&v224 = &unk_1004CA400;
    *(&v224 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v197;
    v96 = swift_allocObject();
    v97 = v223;
    v96[5] = v222;
    v96[6] = v97;
    v96[7] = v224;
    v98 = v219;
    v96[1] = v218;
    v96[2] = v98;
    v99 = v221;
    v96[3] = v220;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v223;
    v100[5] = v222;
    v100[6] = v101;
    v100[7] = v224;
    v102 = v219;
    v100[1] = v218;
    v100[2] = v102;
    v103 = v221;
    v100[3] = v220;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v223;
    v104[5] = v222;
    v104[6] = v105;
    v104[7] = v224;
    v106 = v219;
    v104[1] = v218;
    v104[2] = v106;
    v107 = v221;
    v104[3] = v220;
    v104[4] = v107;
    *(v95 + 32) = 1;
    *(v95 + 40) = sub_1000486F8;
    *(v95 + 48) = v96;
    *(v95 + 56) = sub_10004AFF8;
    *(v95 + 64) = v100;
    *(v95 + 72) = &unk_1004C9970;
    *(v95 + 80) = v104;
    sub_100003ABC(&qword_100601260, &unk_1004C8080);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1004C5070;
    *(v108 + 32) = v184;
    *(v108 + 40) = v180;
    *(v108 + 48) = v95;
    sub_10000F778(&v218, &v198, &qword_100601CB8, &qword_1004D0590);
    sub_10000F778(&v218, &v198, &qword_100601CB8, &qword_1004D0590);
    v184 = sub_100024A8C();
    swift_setDeallocating();
    sub_100003ABC(&qword_100601268, &unk_1004C9890);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);
    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);
    sub_10000F778(&v225, &v218, &qword_100601C78, &qword_1004C98E8);
    v184 = _swiftEmptyArrayStorage;
  }

  v109 = v187;
  v110 = v188;
  v111 = v193;
  sub_10004826C(a1, &v218);
  sub_100003ABC(&qword_100601C80, &qword_1004C98F0);
  v112 = swift_dynamicCast();
  v113 = v190;
  if (v112)
  {
    sub_1000495C8(&v211, &v204);
    sub_10000F778(v185, &v201, &qword_100601C90, &qword_1004C9900);
    if (*(&v202 + 1))
    {
      sub_100013414(&v201, &v198);
      v114 = *(&v205 + 1);
      v187 = *(&v206 + 1);
      v188 = v206;
      v115 = sub_100009178(&v204, *(&v205 + 1));
      v116 = v109;
      v117 = *(&v199 + 1);
      v118 = v200;
      v119 = a1;
      v120 = sub_100009178(&v198, *(&v199 + 1));
      sub_100047AC4(v194, &v211);
      v121 = v110;
      v122 = v189;
      sub_10000F778(v196, v189, &qword_100601C50, &unk_1004C9840);
      v176 = v118;
      v109 = v116;
      v123 = v120;
      a1 = v119;
      v124 = v122;
      v110 = v121;
      v125 = v117;
      v111 = v193;
      sub_10005B0A4(v115, &v211, v123, v124, v114, v125, v188, v187, &v218, v176);
      LOBYTE(v221) = 11;
      *(&v221 + 1) = sub_10004B4C4;
      *&v222 = 0;
      *(&v222 + 1) = 0x4014000000000000;
      *&v223 = &unk_1004C9DF8;
      *(&v223 + 1) = 0;
      *&v224 = &unk_1004C9E00;
      *(&v224 + 1) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v197;
      v127 = swift_allocObject();
      v128 = v223;
      v127[5] = v222;
      v127[6] = v128;
      v127[7] = v224;
      v129 = v219;
      v127[1] = v218;
      v127[2] = v129;
      v130 = v221;
      v127[3] = v220;
      v127[4] = v130;
      v131 = swift_allocObject();
      v132 = v223;
      v131[5] = v222;
      v131[6] = v132;
      v131[7] = v224;
      v133 = v219;
      v131[1] = v218;
      v131[2] = v133;
      v134 = v221;
      v131[3] = v220;
      v131[4] = v134;
      v135 = swift_allocObject();
      v136 = v223;
      v135[5] = v222;
      v135[6] = v136;
      v135[7] = v224;
      v137 = v219;
      v135[1] = v218;
      v135[2] = v137;
      v138 = v221;
      v135[3] = v220;
      v135[4] = v138;
      *(v126 + 32) = 11;
      *(v126 + 40) = sub_100048478;
      *(v126 + 48) = v127;
      *(v126 + 56) = sub_10004AFF8;
      *(v126 + 64) = v131;
      *(v126 + 72) = &unk_1004C9928;
      *(v126 + 80) = v135;
      sub_100003ABC(&qword_100601260, &unk_1004C8080);
      v139 = swift_allocObject();
      *(v139 + 16) = v197;
      *(v139 + 32) = v126;
      v140 = v139 + 32;
      sub_10000F778(&v218, &v211, &qword_100601CA0, &qword_1004C9930);
      sub_10000F778(&v218, &v211, &qword_100601CA0, &qword_1004C9930);
      v141 = sub_100024A8C();
      swift_setDeallocating();
      sub_100007214(v140, &qword_100601268, &unk_1004C9890);
      v113 = v190;
      swift_deallocClassInstance();
      sub_100004C6C(&v198);
      sub_100004C6C(&v204);
      goto LABEL_15;
    }

    sub_100007214(&v201, &qword_100601C90, &qword_1004C9900);
    sub_100004C6C(&v204);
  }

  else
  {
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    sub_100007214(&v211, &qword_100601C88, &qword_1004C98F8);
  }

  v141 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_10004826C(a1, &v218);
  v142 = swift_dynamicCast();
  v143 = *(v109 + 56);
  if ((v142 & 1) == 0)
  {
    v143(v113, 1, 1, v110);
    v170 = &qword_100603CB0;
    v171 = &qword_1004CB660;
    v172 = v113;
LABEL_20:
    sub_100007214(v172, v170, v171);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v143(v113, 0, 1, v110);
  (*(v109 + 32))(v111, v113, v110);
  sub_10000F778(v185, &v198, &qword_100601C90, &qword_1004C9900);
  if (!*(&v199 + 1))
  {
    (*(v109 + 8))(v111, v110);
    v170 = &qword_100601C90;
    v171 = &qword_1004C9900;
    v172 = &v198;
    goto LABEL_20;
  }

  sub_100013414(&v198, &v204);
  v144 = *(&v205 + 1);
  v145 = v206;
  v146 = sub_100009178(&v204, *(&v205 + 1));
  v147 = *(v109 + 16);
  v148 = v109;
  v149 = v183;
  v147(v183, v111, v110);
  (*(v181 + 104))(v149, enum case for Playlist.Folder.Item.playlist(_:), v182);
  v150 = __chkstk_darwin();
  v152 = &v177 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v153 + 16))(v152, v146, v144, v150);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v149, v191, v152, v144, v145, &v211);
  v218 = v211;
  v219 = v212;
  v220 = v213;
  LOBYTE(v221) = 20;
  *(&v221 + 1) = sub_10007677C;
  *&v222 = 0;
  *(&v222 + 1) = 0x4014000000000000;
  *&v223 = &unk_1004CA540;
  *(&v223 + 1) = 0;
  *&v224 = &unk_1004CA548;
  *(&v224 + 1) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v197;
  v155 = swift_allocObject();
  v156 = v223;
  v155[5] = v222;
  v155[6] = v156;
  v155[7] = v224;
  v157 = v219;
  v155[1] = v218;
  v155[2] = v157;
  v158 = v221;
  v155[3] = v220;
  v155[4] = v158;
  v159 = swift_allocObject();
  v160 = v223;
  v159[5] = v222;
  v159[6] = v160;
  v159[7] = v224;
  v161 = v219;
  v159[1] = v218;
  v159[2] = v161;
  v162 = v221;
  v159[3] = v220;
  v159[4] = v162;
  v163 = swift_allocObject();
  v164 = v223;
  v163[5] = v222;
  v163[6] = v164;
  v163[7] = v224;
  v165 = v219;
  v163[1] = v218;
  v163[2] = v165;
  v166 = v221;
  v163[3] = v220;
  v163[4] = v166;
  *(v154 + 32) = 20;
  *(v154 + 40) = sub_1000483A4;
  *(v154 + 48) = v155;
  *(v154 + 56) = sub_10004AFF8;
  *(v154 + 64) = v159;
  *(v154 + 72) = &unk_1004C9910;
  *(v154 + 80) = v163;
  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v167 = swift_allocObject();
  *(v167 + 16) = v197;
  *(v167 + 32) = v154;
  v168 = v167 + 32;
  sub_10000F778(&v218, &v211, &qword_100601C98, &qword_1004D0A20);

  sub_10000F778(&v218, &v211, &qword_100601C98, &qword_1004D0A20);
  v169 = sub_100024A8C();
  swift_setDeallocating();
  sub_100007214(v168, &qword_100601268, &unk_1004C9890);
  swift_deallocClassInstance();
  (*(v148 + 8))(v193, v110);
  sub_100004C6C(&v204);
LABEL_21:
  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_1004C50B0;
  *(v173 + 32) = v186;
  *(v173 + 40) = v184;
  *(v173 + 48) = v141;
  *(v173 + 56) = v169;
  v174 = sub_100024A8C();
  sub_100007214(&v225, &qword_100601C78, &qword_1004C98E8);
  swift_setDeallocating();
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v174;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v130 = a6;
  v115 = a4;
  v128 = a2;
  v120 = a1;
  v9 = sub_1004BB8E4();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin();
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BB904();
  v126 = *(v11 - 8);
  v127 = v11;
  __chkstk_darwin();
  v122 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v12;
  __chkstk_darwin();
  v129 = &v109 - v13;
  v14 = *(sub_100003ABC(&qword_100601CC0, &qword_1004C9980) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v119 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v109 - v16;
  sub_10000F778(a1, &v109 - v16, &qword_100601CC0, &qword_1004C9980);
  v123 = a3;
  sub_100047AC4(a3, &v153);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100025B04(v17, v21 + v18, &qword_100601CC0, &qword_1004C9980);
  *(v21 + v19) = 0;
  v22 = (v21 + v20);
  v124 = a5;
  v23 = v130;
  *v22 = a5;
  v22[1] = v23;
  sub_100048998(&v153, v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v153 = sub_1000487CC;
  *(&v153 + 1) = v128;
  *&v154 = &unk_1004C9988;
  *(&v154 + 1) = v21;
  *&v155 = &unk_1004CA558;
  *(&v155 + 1) = 0;
  LOBYTE(v156) = 10;
  *(&v156 + 1) = sub_10007677C;
  *&v157 = 0;
  *(&v157 + 1) = 0x4014000000000000;
  *&v158 = &unk_1004CA560;
  *(&v158 + 1) = 0;
  *&v159 = &unk_1004CA568;
  *(&v159 + 1) = 0;
  v24 = sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v25 = swift_allocObject();
  v125 = xmmword_1004C50A0;
  *(v25 + 16) = xmmword_1004C50A0;
  v26 = swift_allocObject();
  v27 = v158;
  v26[5] = v157;
  v26[6] = v27;
  v26[7] = v159;
  v28 = v154;
  v26[1] = v153;
  v26[2] = v28;
  v29 = v156;
  v26[3] = v155;
  v26[4] = v29;
  v30 = swift_allocObject();
  v31 = v158;
  v30[5] = v157;
  v30[6] = v31;
  v30[7] = v159;
  v32 = v154;
  v30[1] = v153;
  v30[2] = v32;
  v33 = v156;
  v30[3] = v155;
  v30[4] = v33;
  v34 = swift_allocObject();
  v35 = v158;
  v34[5] = v157;
  v34[6] = v35;
  v34[7] = v159;
  v36 = v154;
  v34[1] = v153;
  v34[2] = v36;
  v37 = v156;
  v34[3] = v155;
  v34[4] = v37;
  *(v25 + 32) = 10;
  *(v25 + 40) = sub_100048B30;
  *(v25 + 48) = v26;
  *(v25 + 56) = sub_10004AFF8;
  *(v25 + 64) = v30;
  *(v25 + 72) = &unk_1004C9998;
  *(v25 + 80) = v34;
  v38 = v119;
  sub_10000F778(v120, v119, &qword_100601CC0, &qword_1004C9980);
  v39 = v126;
  v40 = v127;
  if ((*(v126 + 48))(v38, 1) == 1)
  {
    sub_10000F778(&v153, &v146, &qword_100601CC8, &qword_1004C99A0);

    sub_10000F778(&v153, &v146, &qword_100601CC8, &qword_1004C99A0);
    sub_10002F518(v124, v130);
    sub_100007214(v38, &qword_100601CC0, &qword_1004C9980);
    v41 = _swiftEmptyArrayStorage;
  }

  else
  {
    v42 = *(v39 + 32);
    v43 = v129;
    v121 = v24;
    v42(v129, v38, v40);
    v112 = v42;
    v113 = v39 + 32;
    v44 = *(v39 + 16);
    v119 = v25;
    v120 = v39 + 16;
    v45 = v122;
    v46 = v40;
    v44(v122, v43, v40);
    v110 = v44;
    sub_100047AC4(v123, &v146);
    v47 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v111 = *(v39 + 80);
    v114 += 7;
    v48 = (v114 + v47) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v46;
    v51 = v46;
    v25 = v119;
    v42((v49 + v47), v45, v50);
    sub_100048998(&v146, v49 + v48);
    v52 = v128;
    *&v132 = sub_1000487CC;
    *(&v132 + 1) = v128;
    *&v133 = &unk_1004C99A8;
    *(&v133 + 1) = v49;
    *&v134 = &unk_1004CA578;
    *(&v134 + 1) = 0;
    LOBYTE(v135) = 19;
    *(&v135 + 1) = sub_10007677C;
    *&v136 = 0;
    *(&v136 + 1) = 0x4014000000000000;
    *&v137 = &unk_1004CA580;
    *(&v137 + 1) = 0;
    *&v138 = &unk_1004CA588;
    *(&v138 + 1) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = v125;
    v54 = swift_allocObject();
    v55 = v137;
    v54[5] = v136;
    v54[6] = v55;
    v54[7] = v138;
    v56 = v133;
    v54[1] = v132;
    v54[2] = v56;
    v57 = v135;
    v54[3] = v134;
    v54[4] = v57;
    v58 = swift_allocObject();
    v59 = v137;
    v58[5] = v136;
    v58[6] = v59;
    v58[7] = v138;
    v60 = v133;
    v58[1] = v132;
    v58[2] = v60;
    v61 = v135;
    v58[3] = v134;
    v58[4] = v61;
    v62 = swift_allocObject();
    v63 = v137;
    v62[5] = v136;
    v62[6] = v63;
    v62[7] = v138;
    v64 = v133;
    v62[1] = v132;
    v62[2] = v64;
    v65 = v135;
    v62[3] = v134;
    v62[4] = v65;
    *(v53 + 32) = 19;
    *(v53 + 40) = sub_100048DE0;
    *(v53 + 48) = v54;
    *(v53 + 56) = sub_10004AFF8;
    *(v53 + 64) = v58;
    *(v53 + 72) = &unk_1004C99B8;
    *(v53 + 80) = v62;
    v66 = v115[3];
    v67 = v115[4];
    v68 = sub_100009178(v115, v66);
    v69 = v118;
    v44(v118, v129, v51);
    (*(v116 + 104))(v69, enum case for Playlist.Folder.Item.folder(_:), v117);
    v70 = __chkstk_darwin();
    v72 = &v109 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v68, v66, v70);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v69, v52, v72, v66, v67, &v146);
    v139 = v146;
    v140 = v147;
    v141 = v148;
    LOBYTE(v142) = 20;
    *(&v142 + 1) = sub_10007677C;
    *&v143 = 0;
    *(&v143 + 1) = 0x4014000000000000;
    *&v144 = &unk_1004CA540;
    *(&v144 + 1) = 0;
    *&v145 = &unk_1004CA548;
    *(&v145 + 1) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v125;
    v75 = swift_allocObject();
    v76 = v144;
    v75[5] = v143;
    v75[6] = v76;
    v75[7] = v145;
    v77 = v140;
    v75[1] = v139;
    v75[2] = v77;
    v78 = v142;
    v75[3] = v141;
    v75[4] = v78;
    v79 = swift_allocObject();
    v80 = v144;
    v79[5] = v143;
    v79[6] = v80;
    v79[7] = v145;
    v81 = v140;
    v79[1] = v139;
    v79[2] = v81;
    v82 = v142;
    v79[3] = v141;
    v79[4] = v82;
    v83 = swift_allocObject();
    v84 = v144;
    v83[5] = v143;
    v83[6] = v84;
    v83[7] = v145;
    v85 = v140;
    v83[1] = v139;
    v83[2] = v85;
    v86 = v142;
    v83[3] = v141;
    v83[4] = v86;
    *(v74 + 32) = 20;
    *(v74 + 40) = sub_10004AFA4;
    *(v74 + 48) = v75;
    *(v74 + 56) = sub_10004AFF8;
    *(v74 + 64) = v79;
    *(v74 + 72) = &unk_1004C99C0;
    *(v74 + 80) = v83;
    v87 = v122;
    v88 = v127;
    v110(v122, v129, v127);
    sub_100047AC4(v123, &v146);
    v89 = (v111 + 24) & ~v111;
    v90 = (v114 + v89) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    *(v91 + 16) = v52;

    v112(v91 + v89, v87, v88);
    sub_100048998(&v146, v91 + v90);
    *&v146 = sub_100048EB4;
    *(&v146 + 1) = v52;
    *&v147 = &unk_1004C99C8;
    *(&v147 + 1) = v91;
    *&v148 = &unk_1004CA598;
    *(&v148 + 1) = 0;
    LOBYTE(v149) = 50;
    *(&v149 + 1) = sub_10007677C;
    *&v150 = 0;
    *(&v150 + 1) = 0x4014000000000000;
    *&v151 = &unk_1004CA5A0;
    *(&v151 + 1) = 0;
    *&v152 = &unk_1004CA5A8;
    *(&v152 + 1) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v125;
    v93 = swift_allocObject();
    v94 = v151;
    v93[5] = v150;
    v93[6] = v94;
    v93[7] = v152;
    v95 = v147;
    v93[1] = v146;
    v93[2] = v95;
    v96 = v149;
    v93[3] = v148;
    v93[4] = v96;
    v97 = swift_allocObject();
    v98 = v151;
    v97[5] = v150;
    v97[6] = v98;
    v97[7] = v152;
    v99 = v147;
    v97[1] = v146;
    v97[2] = v99;
    v100 = v149;
    v97[3] = v148;
    v97[4] = v100;
    v101 = swift_allocObject();
    v102 = v151;
    v101[5] = v150;
    v101[6] = v102;
    v101[7] = v152;
    v103 = v147;
    v101[1] = v146;
    v101[2] = v103;
    v104 = v149;
    v101[3] = v148;
    v101[4] = v104;
    *(v92 + 32) = 50;
    *(v92 + 40) = sub_1000490D8;
    *(v92 + 48) = v93;
    *(v92 + 56) = sub_10004AFF8;
    *(v92 + 64) = v97;
    *(v92 + 72) = &unk_1004C99D8;
    *(v92 + 80) = v101;
    sub_100003ABC(&qword_100601260, &unk_1004C8080);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1004C5070;
    *(v105 + 32) = v53;
    *(v105 + 40) = v74;
    *(v105 + 48) = v92;
    swift_retain_n();
    sub_10000F778(&v153, v131, &qword_100601CC8, &qword_1004C99A0);
    sub_10000F778(&v132, v131, &qword_100601CD0, &qword_1004C99E0);
    sub_10000F778(&v139, v131, &qword_100601C98, &qword_1004D0A20);
    sub_10000F778(&v146, v131, &qword_100601CD8, &qword_1004C99E8);

    sub_10000F778(&v153, v131, &qword_100601CC8, &qword_1004C99A0);
    sub_10000F778(&v132, v131, &qword_100601CD0, &qword_1004C99E0);
    sub_10000F778(&v139, v131, &qword_100601C98, &qword_1004D0A20);
    sub_10000F778(&v146, v131, &qword_100601CD8, &qword_1004C99E8);
    sub_10002F518(v124, v130);
    v41 = sub_100024A8C();
    swift_setDeallocating();
    sub_100003ABC(&qword_100601268, &unk_1004C9890);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v126 + 8))(v129, v127);
  }

  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1004C50C0;
  *(v106 + 32) = v25;
  *(v106 + 40) = v41;
  v107 = sub_100024A8C();
  swift_setDeallocating();
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v107;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v149 = a7;
  v139 = a5;
  v140 = a6;
  v143 = a4;
  v144 = a2;
  v146 = a3;
  v151 = a9;
  v152 = a10;
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  __chkstk_darwin();
  v153 = &v138 - v16;
  v17 = a1;
  v150 = a1;
  v18 = a1[3];
  *&v154 = v17[4];
  sub_100009178(v17, v18);
  v19 = __chkstk_darwin();
  v21 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  sub_10001342C(a3, &v182);
  sub_10000F778(a4, &v175, &qword_100601CE0, &qword_1004C99F0);
  sub_100047AC4(a7, &v189);
  v23 = a8;
  v24 = v153;
  sub_10000F778(a8, v153, &qword_100601C50, &unk_1004C9840);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v21, a2, &v182, &v175, &v189, v24, a9, a10, &v168, v18, v154);
  LOBYTE(v171) = 2;
  *(&v171 + 1) = sub_10007677C;
  *&v172 = 0;
  *(&v172 + 1) = 0x4014000000000000;
  *&v173 = &unk_1004CBF20;
  *(&v173 + 1) = 0;
  *&v174 = &unk_1004CBF28;
  *(&v174 + 1) = 0;
  v25 = sub_100003ABC(&qword_100601358, &qword_1004C9850);
  v26 = swift_allocObject();
  v154 = xmmword_1004C50A0;
  *(v26 + 16) = xmmword_1004C50A0;
  v27 = swift_allocObject();
  v28 = v173;
  v27[5] = v172;
  v27[6] = v28;
  v27[7] = v174;
  v29 = v169;
  v27[1] = v168;
  v27[2] = v29;
  v30 = v171;
  v27[3] = v170;
  v27[4] = v30;
  v31 = swift_allocObject();
  v32 = v173;
  v31[5] = v172;
  v31[6] = v32;
  v31[7] = v174;
  v33 = v169;
  v31[1] = v168;
  v31[2] = v33;
  v34 = v171;
  v31[3] = v170;
  v31[4] = v34;
  v35 = swift_allocObject();
  v36 = v173;
  v35[5] = v172;
  v35[6] = v36;
  v35[7] = v174;
  v37 = v169;
  v35[1] = v168;
  v35[2] = v37;
  v38 = v171;
  v35[3] = v170;
  v35[4] = v38;
  *(v26 + 32) = 2;
  *(v26 + 40) = sub_1000491AC;
  *(v26 + 48) = v27;
  *(v26 + 56) = sub_10004AFF8;
  *(v26 + 64) = v31;
  *(v26 + 72) = &unk_1004C9A00;
  *(v26 + 80) = v35;
  v147 = v26;
  v39 = v150[3];
  v40 = v150[4];
  v41 = v150;
  sub_100009178(v150, v39);
  v42 = __chkstk_darwin();
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v42);
  sub_10001342C(v146, &v182);
  v46 = v143;
  sub_10000F778(v143, &v156, &qword_100601CE0, &qword_1004C99F0);
  sub_100047AC4(v149, &v189);
  v142 = v23;
  v47 = v153;
  sub_10000F778(v23, v153, &qword_100601C50, &unk_1004C9840);
  v48 = v144;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v44, v144, &v182, &v156, &v189, v47, v151, v152, &v175, v39, v40);
  LOBYTE(v178) = 3;
  *(&v178 + 1) = sub_10007677C;
  *&v179 = 0;
  *(&v179 + 1) = 0x4014000000000000;
  *&v180 = &unk_1004CBF50;
  *(&v180 + 1) = 0;
  *&v181 = &unk_1004CBF58;
  *(&v181 + 1) = 0;
  v148 = v25;
  v49 = swift_allocObject();
  *(v49 + 16) = v154;
  v50 = swift_allocObject();
  v51 = v180;
  v50[5] = v179;
  v50[6] = v51;
  v50[7] = v181;
  v52 = v176;
  v50[1] = v175;
  v50[2] = v52;
  v53 = v178;
  v50[3] = v177;
  v50[4] = v53;
  v54 = swift_allocObject();
  v55 = v180;
  v54[5] = v179;
  v54[6] = v55;
  v54[7] = v181;
  v56 = v176;
  v54[1] = v175;
  v54[2] = v56;
  v57 = v178;
  v54[3] = v177;
  v54[4] = v57;
  v58 = swift_allocObject();
  v59 = v180;
  v58[5] = v179;
  v58[6] = v59;
  v58[7] = v181;
  v60 = v176;
  v58[1] = v175;
  v58[2] = v60;
  v61 = v178;
  v58[3] = v177;
  v58[4] = v61;
  *(v49 + 32) = 3;
  *(v49 + 40) = sub_100049280;
  *(v49 + 48) = v50;
  *(v49 + 56) = sub_10004AFF8;
  *(v49 + 64) = v54;
  *(v49 + 72) = &unk_1004C9A10;
  *(v49 + 80) = v58;
  v146 = v49;
  v62 = v41[3];
  v63 = v41[4];
  sub_100009178(v41, v62);
  v64 = __chkstk_darwin();
  v66 = &v138 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v67 + 16))(v66, v64);
  sub_10000F778(v46, &v189, &qword_100601CE0, &qword_1004C99F0);
  v68 = v23;
  v69 = v153;
  sub_10000F778(v68, v153, &qword_100601C50, &unk_1004C9840);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v66, v48, &v189, v69, v62, v63, &v182);
  LOBYTE(v185) = 36;
  *(&v185 + 1) = sub_10007677C;
  *&v186 = 0;
  *(&v186 + 1) = 0x4014000000000000;
  *&v187 = &unk_1004CBF80;
  *(&v187 + 1) = 0;
  *&v188 = &unk_1004CBF88;
  *(&v188 + 1) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v154;
  v71 = swift_allocObject();
  v72 = v187;
  v71[5] = v186;
  v71[6] = v72;
  v71[7] = v188;
  v73 = v183;
  v71[1] = v182;
  v71[2] = v73;
  v74 = v185;
  v71[3] = v184;
  v71[4] = v74;
  v75 = swift_allocObject();
  v76 = v187;
  v75[5] = v186;
  v75[6] = v76;
  v75[7] = v188;
  v77 = v183;
  v75[1] = v182;
  v75[2] = v77;
  v78 = v185;
  v75[3] = v184;
  v75[4] = v78;
  v79 = swift_allocObject();
  v80 = v187;
  v79[5] = v186;
  v79[6] = v80;
  v79[7] = v188;
  v81 = v183;
  v79[1] = v182;
  v79[2] = v81;
  v82 = v185;
  v79[3] = v184;
  v79[4] = v82;
  *(v70 + 32) = 36;
  *(v70 + 40) = sub_100049354;
  *(v70 + 48) = v71;
  *(v70 + 56) = sub_100049388;
  *(v70 + 64) = v75;
  *(v70 + 72) = &unk_1004C9A20;
  *(v70 + 80) = v79;
  v145 = v70;
  v83 = v41[3];
  v141 = v41[4];
  sub_100009178(v41, v83);
  v84 = __chkstk_darwin();
  v86 = &v138 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 16))(v86, v84);
  sub_10000F778(v46, &v156, &qword_100601CE0, &qword_1004C99F0);
  sub_10000F778(v142, v69, &qword_100601C50, &unk_1004C9840);
  v88 = v48;
  swift_retain_n();
  v90 = v151;
  v89 = v152;
  sub_10002F518(v151, v152);
  sub_10000F778(&v168, &v189, &qword_100601CE8, &qword_1004D0930);
  sub_10000F778(&v175, &v189, &qword_100601CF0, &unk_1004C9A30);
  sub_10000F778(&v182, &v189, &qword_100601CF8, &qword_1004D08E0);

  sub_10000F778(&v168, &v189, &qword_100601CE8, &qword_1004D0930);
  sub_10002F518(v90, v89);
  sub_10000F778(&v175, &v189, &qword_100601CF0, &unk_1004C9A30);
  sub_10000F778(&v182, &v189, &qword_100601CF8, &qword_1004D08E0);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v86, v48, v153, v83, v141, &v189);
  LOBYTE(v192) = 37;
  *(&v192 + 1) = sub_10007677C;
  *&v193 = 0;
  *(&v193 + 1) = 0x4014000000000000;
  *&v194 = &unk_1004CBFB0;
  *(&v194 + 1) = 0;
  *&v195 = &unk_1004CBFB8;
  *(&v195 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v154;
  v92 = swift_allocObject();
  v93 = v194;
  v92[5] = v193;
  v92[6] = v93;
  v92[7] = v195;
  v94 = v190;
  v92[1] = v189;
  v92[2] = v94;
  v95 = v192;
  v92[3] = v191;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v194;
  v96[5] = v193;
  v96[6] = v97;
  v96[7] = v195;
  v98 = v190;
  v96[1] = v189;
  v96[2] = v98;
  v99 = v192;
  v96[3] = v191;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v194;
  v100[5] = v193;
  v100[6] = v101;
  v100[7] = v195;
  v102 = v190;
  v100[1] = v189;
  v100[2] = v102;
  v103 = v192;
  v100[3] = v191;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = sub_10004942C;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_10004AFF8;
  *(v91 + 64) = v96;
  *(v91 + 72) = &unk_1004C9A48;
  *(v91 + 80) = v100;
  sub_10001342C(v150, &v163);
  sub_10000F778(&v189, &v156, &qword_100601D00, &qword_1004C9A50);
  sub_10000F778(&v189, &v156, &qword_100601D00, &qword_1004C9A50);
  sub_100003ABC(&qword_100601D08, &qword_1004C9A58);
  sub_100003ABC(&qword_100601D10, &qword_1004C9A60);
  if (swift_dynamicCast())
  {
    sub_1000495C8(v162, &v164);
    v104 = v165;
    v105 = v166;
    v106 = v167;
    sub_100009178(&v164, v165);
    v107 = __chkstk_darwin();
    v109 = &v138 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109, v107);
    sub_100047AC4(v149, &v156);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v139;
    v113 = v140;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v156 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v88, sub_100049618, v111, &v156, v104, v105, v106);
    *(&v156 + 1) = v114;
    *&v157 = v115;
    *(&v157 + 1) = v116;
    LOBYTE(v158) = 38;
    *(&v158 + 1) = sub_10004B4C4;
    *&v159 = 0;
    *(&v159 + 1) = 0x4014000000000000;
    *&v160 = &unk_1004CC130;
    *(&v160 + 1) = 0;
    *&v161 = &unk_1004CC138;
    *(&v161 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v154;
    v118 = swift_allocObject();
    v119 = v159;
    v118[3] = v158;
    v118[4] = v119;
    v120 = v161;
    v118[5] = v160;
    v118[6] = v120;
    v121 = v157;
    v118[1] = v156;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v159;
    v122[3] = v158;
    v122[4] = v123;
    v124 = v161;
    v122[5] = v160;
    v122[6] = v124;
    v125 = v157;
    v122[1] = v156;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v159;
    v126[3] = v158;
    v126[4] = v127;
    v128 = v161;
    v126[5] = v160;
    v126[6] = v128;
    v129 = v157;
    v126[1] = v156;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = sub_10004962C;
    *(v117 + 48) = v118;
    *(v117 + 56) = sub_100049634;
    *(v117 + 64) = v122;
    *(v117 + 72) = &unk_1004C9A78;
    *(v117 + 80) = v126;
    sub_100003ABC(&qword_100601260, &unk_1004C8080);
    v130 = swift_allocObject();
    *(v130 + 16) = v154;
    *(v130 + 32) = v117;
    v131 = v130 + 32;
    sub_10000F778(&v156, v155, &qword_100601D20, &qword_1004C9A80);

    sub_10000F778(&v156, v155, &qword_100601D20, &qword_1004C9A80);

    v132 = sub_100024A8C();
    swift_setDeallocating();
    sub_100007214(v131, &qword_100601268, &unk_1004C9890);
    swift_deallocClassInstance();
    sub_100004C6C(&v164);
  }

  else
  {
    memset(v162, 0, sizeof(v162));
    sub_100007214(v162, &qword_100601D18, &qword_1004C9A68);
    v132 = _swiftEmptyArrayStorage;
  }

  sub_100003ABC(&qword_100601260, &unk_1004C8080);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1004C50D0;
  v134 = v146;
  *(v133 + 32) = v147;
  v135 = v145;
  *(v133 + 40) = v134;
  *(v133 + 48) = v135;
  *(v133 + 56) = v91;
  *(v133 + 64) = v132;
  v136 = sub_100024A8C();
  swift_setDeallocating();
  sub_100003ABC(&qword_100601268, &unk_1004C9890);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v136;
}

uint64_t sub_100044BB0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  v9 = sub_1000133B0(v12);
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  v10 = a2(v12);
  sub_100004C6C(v12);
  return v10;
}

uint64_t sub_100044C4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[8];
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 3);
  *(v9 + 48) = *(a1 + 2);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  sub_10004AF8C(v4);
}

uint64_t sub_100044D1C(uint64_t a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_100044DE0, 0, 0);
}

uint64_t sub_100044DE0()
{
  v1 = *(v0 + 288);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  sub_10000F778(v0 + 16, v0 + 152, &qword_100601C58, &qword_1004D0AC0);
  sub_1001FA838(0, 0, v1, &unk_1004C9C20, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100044F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_100044FF4;

  return sub_100150230(a1, 1);
}

uint64_t sub_100044FF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000450E8(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000451A4, 0, 0);
}

uint64_t sub_1000451A4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601C98, &qword_1004D0A20);
  sub_1001FA838(0, 0, v1, &unk_1004C9BE0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000452D0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_1001541C8(a1, 1);
}

uint64_t sub_1000453A8(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100045464, 0, 0);
}

uint64_t sub_100045464()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CA0, &qword_1004C9930);
  sub_1001FA838(0, 0, v1, &unk_1004C9BD0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100045590(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_1001556A8(a1, 1);
}

uint64_t sub_100045668(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100045724, 0, 0);
}

uint64_t sub_100045724()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CB8, &qword_1004D0590);
  sub_1001FA838(0, 0, v1, &unk_1004C9BA0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100045850(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_100156B88(a1, 1);
}

uint64_t sub_100045928(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000459E4, 0, 0);
}

uint64_t sub_1000459E4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CB0, &qword_1004C9960);
  sub_1001FA838(0, 0, v1, &unk_1004C9BB0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100045B10(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_100158068(a1, 1);
}

uint64_t sub_100045BE8(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100045CA4, 0, 0);
}

uint64_t sub_100045CA4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CA8, &qword_1004D09D0);
  sub_1001FA838(0, 0, v1, &unk_1004C9BC0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100045DD0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_100159548(a1, 1);
}

uint64_t sub_100045EA8(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100045F64, 0, 0);
}

uint64_t sub_100045F64()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601C78, &qword_1004C98E8);
  sub_1001FA838(0, 0, v1, &unk_1004C9BF0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046090(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_10015AA28(a1, 1);
}

uint64_t sub_100046168(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100046224, 0, 0);
}

uint64_t sub_100046224()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CD8, &qword_1004C99E8);
  sub_1001FA838(0, 0, v1, &unk_1004C9B70, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046350(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_10015BF08(a1, 1);
}

uint64_t sub_100046428(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000464E4, 0, 0);
}

uint64_t sub_1000464E4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CD0, &qword_1004C99E0);
  sub_1001FA838(0, 0, v1, &unk_1004C9B80, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046610(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_10015D3E8(a1, 1);
}

uint64_t sub_1000466E8(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000467A4, 0, 0);
}

uint64_t sub_1000467A4()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CC8, &qword_1004C99A0);
  sub_1001FA838(0, 0, v1, &unk_1004C9B90, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000468D0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_10015E8C8(a1, 1);
}

uint64_t sub_1000469A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;
}

uint64_t sub_100046A34(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_100046AE8, 0, 0);
}

uint64_t sub_100046AE8()
{
  v1 = *(v0 + 208);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  sub_10000F778(v0 + 16, v0 + 112, &qword_100601D20, &qword_1004C9A80);
  sub_1001FA838(0, 0, v1, &unk_1004C9B20, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046C0C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = sub_100046CDC;

  return sub_10015FDA8(a1, 1);
}

uint64_t sub_100046CDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100046DD0(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100046E8C, 0, 0);
}

uint64_t sub_100046E8C()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601D00, &qword_1004C9A50);
  sub_1001FA838(0, 0, v1, &unk_1004C9B30, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100046FB8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_100161224(a1, 1);
}

uint64_t sub_100047090(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_10004714C, 0, 0);
}

uint64_t sub_10004714C()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CF8, &qword_1004D08E0);
  sub_1001FA838(0, 0, v1, &unk_1004C9B40, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100047278(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100047350;

  return sub_100162704(a1, 1);
}

uint64_t sub_100047350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100047444(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100047500, 0, 0);
}

uint64_t sub_100047500()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CF0, &unk_1004C9A30);
  sub_1001FA838(0, 0, v1, &unk_1004C9B50, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10004762C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_100163BE4(a1, 1);
}

uint64_t sub_100047704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[5];
  a5[3] = a2;
  a5[4] = a3;
  v9 = swift_allocObject();
  *a5 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = *(a1 + 1);
  *(v9 + 40) = *(a1 + 3);
  *(v9 + 56) = v8;
}

uint64_t sub_10004779C(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_100047858, 0, 0);
}

uint64_t sub_100047858()
{
  v1 = *(v0 + 240);
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000F778(v0 + 16, v0 + 128, &qword_100601CE8, &qword_1004D0930);
  sub_1001FA838(0, 0, v1, &unk_1004C9B60, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100047984(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_10004AF9C;

  return sub_1001650C4(a1, 1);
}

uint64_t sub_100047A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003ABC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100047B84()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100044D1C(v0 + 16);
}

uint64_t sub_100047C24()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

uint64_t sub_100047C88()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100047DDC()
{
  v2 = *(sub_100003ABC(&qword_100601C68, &qword_1004C98A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001384C;

  return sub_10003E82C(v0 + v3);
}

uint64_t sub_100047F90(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(a1, a2);
  v4 = *(v3 - 8);
  return (*(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v3 + 40)))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_100047FFC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100003ABC(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1004B7994();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_100048194()
{
  v2 = *(sub_100003ABC(&qword_100601C60, &qword_1004D0A70) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001384C;

  return sub_10003E5C8(v0 + v3);
}

uint64_t sub_10004826C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048304()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100045EA8((v0 + 16));
}

uint64_t sub_1000483D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_1000450E8((v0 + 16));
}

uint64_t sub_1000484AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_1000453A8((v0 + 16));
}

uint64_t sub_100048584()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100045BE8((v0 + 16));
}

uint64_t sub_100048658()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100045928((v0 + 16));
}

uint64_t sub_10004872C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100045668((v0 + 16));
}

uint64_t sub_1000487D4()
{
  v1 = *(sub_100003ABC(&qword_100601CC0, &qword_1004C9980) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1004BB904();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_100048974(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_100048974(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t sub_1000489F4()
{
  v2 = *(sub_100003ABC(&qword_100601CC0, &qword_1004C9980) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10001384C;

  return sub_10006F84C(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_100048B64()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_1000466E8((v0 + 16));
}

uint64_t sub_100048C04()
{
  v1 = sub_1004BB904();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_100048974(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100048CE0()
{
  v2 = *(sub_1004BB904() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001384C;

  return sub_1000712C0(v0 + v3, v0 + v4);
}

uint64_t sub_100048E14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100046428((v0 + 16));
}

uint64_t sub_100048EBC()
{
  v1 = sub_1004BB904();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_100048974(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100048FD4()
{
  v2 = *(sub_1004BB904() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001384C;

  return sub_10007376C(v5, v0 + v3, v0 + v4);
}

uint64_t sub_10004910C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100046168((v0 + 16));
}

uint64_t sub_1000491E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_10004779C((v0 + 16));
}

uint64_t sub_1000492B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100047444((v0 + 16));
}

uint64_t sub_10004938C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000136EC;

  return sub_100047090((v0 + 16));
}

uint64_t sub_100049460()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_1000494C8()
{

  return swift_deallocObject();
}

uint64_t sub_100049528()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100046DD0((v0 + 16));
}

_OWORD *sub_1000495C8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1000495E0()
{

  return swift_deallocObject();
}

uint64_t sub_100049634()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_100049694()
{

  return swift_deallocObject();
}

uint64_t sub_1000496EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100046A34((v0 + 16));
}

uint64_t sub_1000497B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_100601C40, &unk_1004C9830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100049880(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100601C40, &unk_1004C9830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100049930(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaybackController(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1000499E4(319);
    if (v3 <= 0x3F)
    {
      sub_100049A3C();
      if (v4 <= 0x3F)
      {
        sub_100049A8C(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000499E4(uint64_t a1)
{
  if (!qword_100601D90)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_100601D90);
    }
  }
}

void sub_100049A3C()
{
  if (!qword_100601D98)
  {
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_100601D98);
    }
  }
}

void sub_100049A8C(uint64_t a1)
{
  if (!qword_100601DA0)
  {
    sub_100003B68(&unk_100601DA8, &qword_1004D3430);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_100601DA0);
    }
  }
}

uint64_t sub_100049B00()
{
  v1 = *(sub_100003ABC(&qword_100601DE0, &unk_1004D0810) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100049C8C(uint64_t a1)
{
  sub_100003ABC(&qword_100601DE0, &unk_1004D0810);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_10003EE64(a1);
}

uint64_t sub_100049D88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100049DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100046C0C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100049EAC()
{

  return swift_deallocObject();
}

uint64_t sub_100049EF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100046FB8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100049FB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100047278(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A07C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_10004762C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100047984(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100046350(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100046610(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A38C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1000468D0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100045850(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A514(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100045B10(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A5D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100045DD0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A69C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100045590(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1000452D0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A824()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004A88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100046090(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10004A950()
{

  return swift_deallocObject();
}

uint64_t sub_10004A9C0(uint64_t a1)
{
  sub_100003ABC(&qword_100601C60, &qword_1004D0A70);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_10003ECF4(a1);
}

uint64_t sub_10004AAE4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100003ABC(a1, a2) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_1004B7994();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_10004AC84(uint64_t a1)
{
  sub_100003ABC(&qword_100601C68, &qword_1004C98A0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_10003EDAC(a1);
}

uint64_t sub_10004AD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004ADE8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004AE68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100044F14(a1, v4, v5, v1 + 32);
}

uint64_t sub_10004AF2C()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id sub_10004AF8C(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t (**a9)()@<X8>, uint64_t a10)
{
  v37 = a8;
  v38 = a4;
  v40 = a3;
  v41 = a6;
  v39 = a5;
  v44 = a2;
  v36[0] = a1;
  v42 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v36 - v15;
  (*(v12 + 16))(v36 - v15, v14);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v36[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v43;
  *(v21 + v20) = v44;
  v22(v23, v36[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v36[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v39;
  v22(v28 + v24, v43, a7);
  *(v28 + v25) = v44;
  sub_100048998(v40, v28 + v36[0]);
  sub_100025B04(v41, v28 + v27, &qword_100601C50, &unk_1004C9840);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_1004C9C50;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v35 = v42;
  *v42 = sub_10004BBEC;
  v35[1] = v21;
  v35[2] = &unk_1004C9C40;
  v35[3] = v28;
  v35[4] = &unk_1004C9C60;
  v35[5] = v33;
  return result;
}

uint64_t static Actions.AddToLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004C9C68;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004C9C70;
  *(a2 + 104) = 0;
}

uint64_t sub_10004B4EC(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000136EC;

  return v5();
}

uint64_t sub_10004B5D4(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return v4();
}

uint64_t sub_10004B6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004C9C68;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004C9C70;
  *(a2 + 104) = 0;
}

unint64_t sub_10004B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a2;
  v32 = sub_1004BB0E4();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin();
  v11 = &v29 - v10;
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BB434();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin();
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 + 16);
  v33 = a1;
  v22(v16, a1, a3, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v13, 1, 1, v17);
    sub_100007214(v13, &qword_100601E48, &qword_1004C9DA0);
    goto LABEL_5;
  }

  v24(v13, 0, 1, v17);
  (*(v18 + 32))(v21, v13, v17);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v18 + 8))(v21, v17);
  if (v25 != 1)
  {
LABEL_5:
    sub_1004B76B4();
    v27 = v32;
    sub_1004BAF94();
    (*(v34 + 8))(v8, v27);
    v26 = sub_10004C25C();
    (*(v30 + 8))(v11, v31);
    return v26;
  }

  return 0;
}

uint64_t sub_10004BB58()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v39 = a1;
  v38 = sub_1004BB0E4();
  v1 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v3 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v27 - v4;
  v34 = sub_1004BB4D4();
  v5 = *(v34 - 8);
  __chkstk_darwin();
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100601DF0, &qword_1004C9C80);
  __chkstk_darwin();
  v9 = &v27 - v8;
  sub_100003ABC(&qword_100601DF8, &qword_1004C9C88);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v27 - v14;
  sub_1004BB414();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007214(v11, &qword_100601DF8, &qword_1004C9C88);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_10005247C(&qword_100601E08, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC724();
  sub_1004BC764();
  if (v40[0] == v40[4])
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v28 = v13;
  (*(v13 + 16))(v9, v15, v12);
  v17 = *(v7 + 36);
  v27 = v15;
  sub_1004BC724();
  sub_1004BC764();
  if (*&v9[v17] == v40[0])
  {
LABEL_11:
    sub_100007214(v9, &qword_100601DF0, &qword_1004C9C80);
    (*(v28 + 8))(v27, v12);
    return 2;
  }

  else
  {
    v31 = (v5 + 8);
    v32 = (v5 + 16);
    v29 = (v3 + 8);
    v30 = (v1 + 8);
    v18 = v33;
    while (1)
    {
      v19 = sub_1004BC844();
      v20 = v34;
      (*v32)(v18);
      v19(v40, 0);
      sub_1004BC774();
      v21 = v37;
      sub_1004B76B4();
      v22 = v35;
      v23 = v38;
      sub_1004BAF94();
      (*v31)(v18, v20);
      (*v30)(v21, v23);
      v24 = sub_10004C25C();
      v26 = v25;
      (*v29)(v22, v36);
      if (v26 == 1)
      {
        break;
      }

      sub_1000130F8(v24, v26);
      sub_1004BC764();
      if (*&v9[v17] == v40[0])
      {
        goto LABEL_11;
      }
    }

    sub_100007214(v9, &qword_100601DF0, &qword_1004C9C80);
    (*(v28 + 8))(v27, v12);
    return 1;
  }
}

unint64_t sub_10004C25C()
{
  v1 = v0;
  v2 = sub_1004BB0F4();
  v27 = *(v2 - 8);
  __chkstk_darwin();
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_1004BB0D4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = &v26 - v15;
  (*(v13 + 16))(&v26 - v15, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v7 + 32))(v11, v16, v6);
    (*(v7 + 16))(v9, v11, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v7 + 96))(v9, v6);
      v19 = v27;
      (*(v27 + 32))(v5, v9, v2);
      v20 = v26;
      (*(v19 + 16))(v26, v5, v2);
      v21 = (*(v19 + 88))(v20, v2);
      if (v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1004BD404(24);

        v28 = 0xD000000000000016;
        v29 = 0x80000001004FC8B0;
        sub_10005242C(&qword_100601E38, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
        v30._countAndFlagsBits = sub_1004BD934();
        sub_1004BC024(v30);

        v22 = v28;
        v23 = *(v19 + 8);
        v23(v5, v2);
        (*(v7 + 8))(v11, v6);
        v23(v20, v2);
        return v22;
      }

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v11, v6);
      return 0;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v7 + 8))(v11, v6);
      return 0xD000000000000012;
    }

    else
    {
      if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v7 + 8))(v11, v6);
        return 0xD000000000000010;
      }

      v25 = *(v7 + 8);
      v25(v11, v6);
      v25(v9, v6);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = sub_1004BB0F4();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = sub_100003ABC(&qword_100601E40, &qword_1004C9D98);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = sub_1004BB0E4();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  sub_100003ABC(&qword_100601DF8, &qword_1004C9C88);
  v8[119] = swift_task_alloc();
  v14 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = sub_1004BB434();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  sub_100003ABC(&qword_100601E50, &qword_1004C9DA8);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(sub_10004CE54, 0, 0);
}

uint64_t sub_10004CE54()
{
  v102 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    sub_1004BC474();
    *(v0 + 1112) = sub_1004BC464();
    v2 = sub_1004BC3E4();
    v4 = v3;
    v5 = sub_10004DC2C;
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  sub_100051DEC(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v100 = *(*(v0 + 864) + 56);
    v100(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      sub_1004BB414();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v79 = *(v0 + 976);
        v80 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v79, *(v0 + 952), *(v0 + 960));
        v101[0] = _swiftEmptyArrayStorage;

        LOBYTE(v79) = sub_100051E40(v79, v80, v101);

        if (v79)
        {
          v81 = *(v0 + 1024);
          v82 = *(v0 + 1016);
          v83 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v82 + 8))(v81, v83);
        }

        else
        {
          if (*(v101[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v101[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v84 = 0;
          }

          else
          {
            v84 = 1;
          }

          v85 = *(v0 + 1080);
          v86 = *(v0 + 1072);
          v87 = *(v0 + 1024);
          v88 = *(v0 + 1016);
          v89 = *(v0 + 1008);
          v90 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v88 + 8))(v87, v89);
          sub_100007214(v85, &qword_100601E50, &qword_1004C9DA8);
          v100(v86, v84, 1, v90);
          sub_100025B04(v86, v85, &qword_100601E50, &qword_1004C9DA8);
        }

LABEL_21:
        v38 = *(v0 + 1080);
        v39 = *(v0 + 1056);
        v40 = *(v0 + 896);
        v41 = *(v0 + 880);
        v42 = *(v0 + 864);
        v43 = *(v0 + 856);
        v97 = *(v42 + 104);
        v97(v39, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v43);
        v100(v39, 0, 1, v43);
        v99 = v41;
        v44 = *(v41 + 48);
        sub_10000F778(v38, v40, &qword_100601E50, &qword_1004C9DA8);
        sub_10000F778(v39, v40 + v44, &qword_100601E50, &qword_1004C9DA8);
        v45 = *(v42 + 48);
        if (v45(v40, 1, v43) == 1)
        {
          v46 = *(v0 + 856);
          sub_100007214(*(v0 + 1056), &qword_100601E50, &qword_1004C9DA8);
          if (v45(v40 + v44, 1, v46) == 1)
          {
            sub_100007214(*(v0 + 896), &qword_100601E50, &qword_1004C9DA8);
LABEL_35:
            *(v0 + 1136) = sub_1004BC474();
            *(v0 + 1144) = sub_1004BC464();
            v70 = sub_1004BC3E4();
            v8 = v71;
            *(v0 + 1152) = v70;
            *(v0 + 1160) = v71;
            v6 = sub_10004EA38;
            v7 = v70;
            goto LABEL_4;
          }
        }

        else
        {
          v47 = *(v0 + 856);
          sub_10000F778(*(v0 + 896), *(v0 + 1048), &qword_100601E50, &qword_1004C9DA8);
          v48 = v45(v40 + v44, 1, v47);
          v49 = *(v0 + 1056);
          v50 = *(v0 + 1048);
          if (v48 != 1)
          {
            v95 = v45;
            v93 = *(v0 + 896);
            v66 = *(v0 + 872);
            v67 = *(v0 + 864);
            v68 = *(v0 + 856);
            (*(v67 + 32))(v66, v40 + v44, v68);
            sub_10005242C(&qword_100601E60, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v92 = sub_1004BBD84();
            v69 = *(v67 + 8);
            v69(v66, v68);
            sub_100007214(v49, &qword_100601E50, &qword_1004C9DA8);
            v69(v50, v68);
            sub_100007214(v93, &qword_100601E50, &qword_1004C9DA8);
            if (v92)
            {
              goto LABEL_35;
            }

LABEL_27:
            v53 = *(v0 + 1080);
            v54 = *(v0 + 1040);
            v55 = *(v0 + 888);
            v56 = *(v0 + 856);
            v97(v54, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v56);
            v100(v54, 0, 1, v56);
            v57 = *(v99 + 48);
            sub_10000F778(v53, v55, &qword_100601E50, &qword_1004C9DA8);
            sub_10000F778(v54, v55 + v57, &qword_100601E50, &qword_1004C9DA8);
            if (v95(v55, 1, v56) == 1)
            {
              v58 = *(v0 + 856);
              sub_100007214(*(v0 + 1040), &qword_100601E50, &qword_1004C9DA8);
              if (v95(v55 + v57, 1, v58) == 1)
              {
                sub_100007214(*(v0 + 888), &qword_100601E50, &qword_1004C9DA8);
LABEL_37:
                *(v0 + 1192) = sub_1004BC474();
                *(v0 + 1200) = sub_1004BC464();
                v2 = sub_1004BC3E4();
                v4 = v78;
                v5 = sub_10004ED10;
                goto LABEL_3;
              }
            }

            else
            {
              v59 = *(v0 + 856);
              sub_10000F778(*(v0 + 888), *(v0 + 1032), &qword_100601E50, &qword_1004C9DA8);
              v60 = v95(v55 + v57, 1, v59);
              v61 = *(v0 + 1040);
              v62 = *(v0 + 1032);
              if (v60 != 1)
              {
                v72 = *(v0 + 888);
                v73 = *(v0 + 872);
                v74 = *(v0 + 864);
                v75 = *(v0 + 856);
                (*(v74 + 32))(v73, v55 + v57, v75);
                sub_10005242C(&qword_100601E60, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
                v76 = sub_1004BBD84();
                v77 = *(v74 + 8);
                v77(v73, v75);
                sub_100007214(v61, &qword_100601E50, &qword_1004C9DA8);
                v77(v62, v75);
                sub_100007214(v72, &qword_100601E50, &qword_1004C9DA8);
                if (v76)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = sub_1004BC474();
                *(v0 + 1224) = sub_1004BC464();
                v2 = sub_1004BC3E4();
                v4 = v65;
                v5 = sub_10004F34C;
                goto LABEL_3;
              }

              v63 = *(v0 + 864);
              v64 = *(v0 + 856);
              sub_100007214(*(v0 + 1040), &qword_100601E50, &qword_1004C9DA8);
              (*(v63 + 8))(v62, v64);
            }

            sub_100007214(*(v0 + 888), &qword_100601E40, &qword_1004C9D98);
            goto LABEL_33;
          }

          v51 = *(v0 + 864);
          v52 = *(v0 + 856);
          sub_100007214(*(v0 + 1056), &qword_100601E50, &qword_1004C9DA8);
          (*(v51 + 8))(v50, v52);
        }

        v95 = v45;
        sub_100007214(*(v0 + 896), &qword_100601E40, &qword_1004C9D98);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &qword_100601DF8;
      v32 = &qword_1004C9C88;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &qword_100601E48;
      v32 = &qword_1004C9DA0;
    }

    sub_100007214(v30, v31, v32);
LABEL_20:
    v94 = *(v0 + 1064);
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    v96 = *(v0 + 928);
    v98 = *(v0 + 1080);
    v35 = *(v0 + 920);
    v36 = *(v0 + 912);
    v37 = *(v0 + 904);
    sub_1004B76B4();
    sub_1004BAF94();
    (*(v36 + 8))(v35, v37);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v94);
    (*(v34 + 8))(v33, v96);
    sub_100007214(v98, &qword_100601E50, &qword_1004C9DA8);
    sub_100025B04(v94, v98, &qword_100601E50, &qword_1004C9DA8);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
  sub_100052188(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10004DC2C()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(sub_10004DCC8, 0, 0);
}

uint64_t sub_10004DCC8()
{
  v100 = v0;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100051DEC(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
    sub_100052188(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v98 = *(*(v0 + 864) + 56);
  v98(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &qword_100601E48;
    v25 = &qword_1004C9DA0;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  sub_1004BB414();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &qword_100601DF8;
    v25 = &qword_1004C9C88;
LABEL_12:
    sub_100007214(v23, v24, v25);
LABEL_14:
    v92 = *(v0 + 1064);
    v26 = *(v0 + 944);
    v27 = *(v0 + 936);
    v94 = *(v0 + 928);
    v96 = *(v0 + 1080);
    v28 = *(v0 + 920);
    v29 = *(v0 + 912);
    v30 = *(v0 + 904);
    sub_1004B76B4();
    sub_1004BAF94();
    (*(v29 + 8))(v28, v30);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v92);
    (*(v27 + 8))(v26, v94);
    sub_100007214(v96, &qword_100601E50, &qword_1004C9DA8);
    sub_100025B04(v92, v96, &qword_100601E50, &qword_1004C9DA8);
    goto LABEL_15;
  }

  v78 = *(v0 + 976);
  v79 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
  v99[0] = _swiftEmptyArrayStorage;

  LOBYTE(v78) = sub_100051E40(v78, v79, v99);

  if (v78)
  {
    v80 = *(v0 + 1024);
    v81 = *(v0 + 1016);
    v82 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v81 + 8))(v80, v82);
  }

  else
  {
    if (*(v99[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v99[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = *(v0 + 1080);
    v85 = *(v0 + 1072);
    v86 = *(v0 + 1024);
    v87 = *(v0 + 1016);
    v88 = *(v0 + 1008);
    v89 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v87 + 8))(v86, v88);
    sub_100007214(v84, &qword_100601E50, &qword_1004C9DA8);
    v98(v85, v83, 1, v89);
    sub_100025B04(v85, v84, &qword_100601E50, &qword_1004C9DA8);
  }

LABEL_15:
  v31 = *(v0 + 1080);
  v32 = *(v0 + 1056);
  v33 = *(v0 + 896);
  v34 = *(v0 + 880);
  v35 = *(v0 + 864);
  v36 = *(v0 + 856);
  v95 = *(v35 + 104);
  v95(v32, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v36);
  v98(v32, 0, 1, v36);
  v97 = v34;
  v37 = *(v34 + 48);
  sub_10000F778(v31, v33, &qword_100601E50, &qword_1004C9DA8);
  sub_10000F778(v32, v33 + v37, &qword_100601E50, &qword_1004C9DA8);
  v38 = *(v35 + 48);
  if (v38(v33, 1, v36) != 1)
  {
    v40 = *(v0 + 856);
    sub_10000F778(*(v0 + 896), *(v0 + 1048), &qword_100601E50, &qword_1004C9DA8);
    v41 = v38(v33 + v37, 1, v40);
    v42 = *(v0 + 1056);
    v43 = *(v0 + 1048);
    if (v41 != 1)
    {
      v93 = v38;
      v91 = *(v0 + 896);
      v62 = *(v0 + 872);
      v63 = *(v0 + 864);
      v64 = *(v0 + 856);
      (*(v63 + 32))(v62, v33 + v37, v64);
      sub_10005242C(&qword_100601E60, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v90 = sub_1004BBD84();
      v65 = *(v63 + 8);
      v65(v62, v64);
      sub_100007214(v42, &qword_100601E50, &qword_1004C9DA8);
      v65(v43, v64);
      sub_100007214(v91, &qword_100601E50, &qword_1004C9DA8);
      if (v90)
      {
        goto LABEL_29;
      }

LABEL_21:
      v46 = *(v0 + 1080);
      v47 = *(v0 + 1040);
      v48 = *(v0 + 888);
      v49 = *(v0 + 856);
      v95(v47, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v49);
      v98(v47, 0, 1, v49);
      v50 = *(v97 + 48);
      sub_10000F778(v46, v48, &qword_100601E50, &qword_1004C9DA8);
      sub_10000F778(v47, v48 + v50, &qword_100601E50, &qword_1004C9DA8);
      if (v93(v48, 1, v49) == 1)
      {
        v51 = *(v0 + 856);
        sub_100007214(*(v0 + 1040), &qword_100601E50, &qword_1004C9DA8);
        if (v93(v48 + v50, 1, v51) == 1)
        {
          sub_100007214(*(v0 + 888), &qword_100601E50, &qword_1004C9DA8);
LABEL_31:
          *(v0 + 1192) = sub_1004BC474();
          *(v0 + 1200) = sub_1004BC464();
          v58 = sub_1004BC3E4();
          v60 = v77;
          v61 = sub_10004ED10;
          goto LABEL_32;
        }
      }

      else
      {
        v52 = *(v0 + 856);
        sub_10000F778(*(v0 + 888), *(v0 + 1032), &qword_100601E50, &qword_1004C9DA8);
        v53 = v93(v48 + v50, 1, v52);
        v54 = *(v0 + 1040);
        v55 = *(v0 + 1032);
        if (v53 != 1)
        {
          v71 = *(v0 + 888);
          v72 = *(v0 + 872);
          v73 = *(v0 + 864);
          v74 = *(v0 + 856);
          (*(v73 + 32))(v72, v48 + v50, v74);
          sub_10005242C(&qword_100601E60, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
          v75 = sub_1004BBD84();
          v76 = *(v73 + 8);
          v76(v72, v74);
          sub_100007214(v54, &qword_100601E50, &qword_1004C9DA8);
          v76(v55, v74);
          sub_100007214(v71, &qword_100601E50, &qword_1004C9DA8);
          if (v75)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = sub_1004BC474();
          *(v0 + 1224) = sub_1004BC464();
          v58 = sub_1004BC3E4();
          v60 = v59;
          v61 = sub_10004F34C;
LABEL_32:
          v69 = v61;
          v70 = v58;
          v68 = v60;
          goto LABEL_33;
        }

        v56 = *(v0 + 864);
        v57 = *(v0 + 856);
        sub_100007214(*(v0 + 1040), &qword_100601E50, &qword_1004C9DA8);
        (*(v56 + 8))(v55, v57);
      }

      sub_100007214(*(v0 + 888), &qword_100601E40, &qword_1004C9D98);
      goto LABEL_27;
    }

    v44 = *(v0 + 864);
    v45 = *(v0 + 856);
    sub_100007214(*(v0 + 1056), &qword_100601E50, &qword_1004C9DA8);
    (*(v44 + 8))(v43, v45);
LABEL_20:
    v93 = v38;
    sub_100007214(*(v0 + 896), &qword_100601E40, &qword_1004C9D98);
    goto LABEL_21;
  }

  v39 = *(v0 + 856);
  sub_100007214(*(v0 + 1056), &qword_100601E50, &qword_1004C9DA8);
  if (v38(v33 + v37, 1, v39) != 1)
  {
    goto LABEL_20;
  }

  sub_100007214(*(v0 + 896), &qword_100601E50, &qword_1004C9DA8);
LABEL_29:
  *(v0 + 1136) = sub_1004BC474();
  *(v0 + 1144) = sub_1004BC464();
  v66 = sub_1004BC3E4();
  v68 = v67;
  *(v0 + 1152) = v66;
  *(v0 + 1160) = v67;
  v69 = sub_10004EA38;
  v70 = v66;
LABEL_33:

  return _swift_task_switch(v69, v70, v68);
}

uint64_t sub_10004EA38(uint64_t a1)
{
  v2 = v1[82];
  v3 = sub_1004BC464();
  v1[146] = v3;
  v4 = swift_task_alloc();
  v1[147] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[148] = v5;
  *v5 = v1;
  v5[1] = sub_10004EB48;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 609, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v4, &type metadata for Bool);
}

uint64_t sub_10004EB48()
{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(sub_10004ECA8, v3, v2);
}

uint64_t sub_10004ECA8()
{

  return _swift_task_switch(sub_1000524F0, 0, 0);
}

uint64_t sub_10004ED10()
{

  sub_100114418(0, v0 + 448);

  return _swift_task_switch(sub_10004ED84, 0, 0);
}

uint64_t sub_10004ED84(uint64_t a1)
{
  *(v1 + 1208) = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_10004EE10, v3, v2);
}

uint64_t sub_10004EE10()
{
  v1 = *(v0 + 656);

  v2 = sub_1000C88F4((v0 + 448), 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1006000B8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100607AD0);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 656);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = sub_10023620C;
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = sub_10023720C;
    *(v0 + 544) = &unk_1005A99A0;
    v14 = _Block_copy((v0 + 520));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_100047AC4(v12, v0 + 272);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_100048998(v0 + 272, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_100052410, v16);
    sub_10003CC4C(v5, v6);

    sub_100052310(v0 + 448);
    v19 = sub_10004F100;
  }

  else
  {
    sub_1002346EC(v2, *(v0 + 480), 1, 0, 0);

    sub_100052310(v0 + 448);
    v19 = sub_1000524F0;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_10004F100()
{
  sub_100007214(*(v0 + 1080), &qword_100601E50, &qword_1004C9DA8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004F34C()
{
  v1 = *(v0 + 848);

  sub_100178D50(v1, 0);
  sub_1000522B0(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_10004F3E4, 0, 0);
}

uint64_t sub_10004F3E4()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_10000F778(*(v0 + 664), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100007214(*(v0 + 808), &qword_100601C50, &unk_1004C9840);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    sub_100187F94(v5, v5);
    swift_allocObject();
    v7 = sub_1004BC2C4();
    v4(v8, v6, v5);
    v9 = sub_100150204(v7, v5);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = sub_1004BC3B4();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_1000500A0;
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 672);
    sub_1000521DC(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v16);
    *(v0 + 1240) = v17;
    v18 = sub_1004B6B04();
    *(v0 + 1248) = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    *(v0 + 1256) = v20;
    *(v0 + 1264) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v15, 1, 1, v18);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v16);
    *(inited + 40) = v22;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = sub_100029080(inited);
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v24;
    *(v0 + 610) = v25;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = sub_1004BC464();
    v27 = sub_1004BC3E4();

    return _swift_task_switch(sub_10004F734, v27, v26);
  }
}

uint64_t sub_10004F734()
{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  sub_100025B04(v4, v5 + v6[7], &qword_100600DE0, &unk_1004C66D0);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v18, v17, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v18, v17, v16, SBYTE1(v16));

    sub_1000522B0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 736), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000522B0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    sub_100007214(*(v0 + 728), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    sub_10000F778(v36 + v14[6], *(v0 + 784), &qword_100600DE0, &unk_1004C66D0);
    sub_1000522B0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  sub_100025B04(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 720), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000522B0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000522B0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 704), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000522B0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000522B0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  sub_1000521DC(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000522B0(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_10004FF28, 0, 0);
}

uint64_t sub_10004FF28()
{
  sub_1000522B0(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  sub_100187F94(v2, v2);
  swift_allocObject();
  v4 = sub_1004BC2C4();
  v1(v5, v3, v2);
  v6 = sub_100150204(v4, v2);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = sub_1004BC3B4();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1000500A0;
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

uint64_t sub_1000500A0(uint64_t a1)
{
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v3 = sub_1000501DC;
  }

  else
  {

    v3 = sub_1000524F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000501DC()
{
  sub_100007214(*(v0 + 1080), &qword_100601E50, &qword_1004C9DA8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050430()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_100048974(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_1004B6B04();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100050760()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1000136EC;

  return sub_10004C87C(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t sub_1000508F0(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v33 = a3;
  v34 = a2;
  sub_100003ABC(&qword_100601E50, &qword_1004C9DA8);
  __chkstk_darwin();
  v4 = &v33 - v3;
  v38 = sub_1004BB0F4();
  v5 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v33 - v7;
  v8 = sub_1004BB0E4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  sub_1004B76B4();
  sub_1004BB4D4();
  sub_1004BAF94();
  (*(v9 + 8))(v11, v8);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v4);
  v17 = v38;
  if ((*(v5 + 48))(v4, 1, v38) == 1)
  {
    sub_100007214(v4, &qword_100601E50, &qword_1004C9DA8);
  }

  else
  {
    v18 = v35;
    v34 = *(v5 + 32);
    v34(v35, v4, v17);
    (*(v5 + 16))(v37, v18, v17);
    v19 = v33;
    v20 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v19;
    }

    else
    {
      v20 = sub_100018260(0, v20[2] + 1, 1, v20);
      v22 = v19;
      *v19 = v20;
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      *v22 = sub_100018260((v23 > 1), v24 + 1, 1, v20);
    }

    v25 = v38;
    (*(v5 + 8))(v35, v38);
    v26 = *v22;
    *(v26 + 16) = v24 + 1;
    v34((v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24), v37, v25);
  }

  v27 = v36;
  (*(v13 + 16))(v36, v16, v12);
  v28 = (*(v13 + 88))(v27, v12);
  v29 = v28;
  v30 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v28 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v31 = *(v13 + 8);
    v31(v16, v12);
    v31(v27, v12);
    return v29 != v30;
  }

  if (v28 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    return v29 != v30;
  }

  result = sub_1004BD9B4();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = sub_1004BB0D4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4, v12);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v11, v8);
      v16 = sub_1004BB0F4();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v11, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_1004BB0F4();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_100051108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1004BC474();
  v2[4] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000511A0, v4, v3);
}

uint64_t sub_1000511A0()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100051234()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10005126C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000136EC;

  return sub_100051108(v2, v3);
}

uint64_t sub_100051304(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000513EC;

  return v4();
}

uint64_t sub_1000513EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000514E4()
{

  return swift_deallocObject();
}

uint64_t sub_10005151C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_100051304(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100051CB8;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004FC840;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004FC840;
  return sub_1000524E8;
}

uint64_t (*sub_1000518F8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1000524E8;
}

uint64_t (*sub_10005199C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004FC840;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004FC840;
  return sub_1000524E8;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  sub_1004BDBA4();
  sub_1004BDBB4(a1);
  return sub_1004BDBF4();
}

uint64_t _s9MusicCore7ActionsO12AddToLibraryO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100051C80()
{

  return swift_deallocObject();
}

unint64_t sub_100051CCC()
{
  result = qword_100601E30;
  if (!qword_100601E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601E30);
  }

  return result;
}

uint64_t sub_100051D30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100051D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100051E40(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = sub_1004BB4D4();
  v4 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_100003ABC(&qword_100601DF0, &qword_1004C9C80) - 8;
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6, v11);
  sub_10005247C(&qword_100601E68, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC124();
  v14 = *(v10 + 44);
  sub_10005247C(&qword_100601E08, &protocol conformance descriptor for MusicItemCollection<A>);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    sub_1004BC764();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = sub_1004BC844();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    sub_1004BC774();
    v20 = v33;
    v21 = sub_1000508F0(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  sub_100007214(v13, &qword_100601DF0, &qword_1004C9C80);
  return v31 != v15;
}

uint64_t sub_1000521DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100052244(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_100052270(result, a2, a3);
  }

  return result;
}

void *sub_100052270(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000522B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005237C()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10005242C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1004BB0F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005247C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(&qword_100601E00, &qword_1004C9C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = sub_10005B0A4(a1, a3, a4, a5, a6, a7, a8, a10, v19, a11);
  (*(*(a7 - 8) + 8))(a4, a7, v16);

  (*(*(a6 - 8) + 8))(a1, a6);
  v17 = v19[1];
  *a9 = v19[0];
  a9[1] = v17;
  result = *&v20;
  a9[2] = v20;
  return result;
}

uint64_t static Actions.AddToPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004C9DF8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004C9E00;
  *(a2 + 104) = 0;
}

uint64_t sub_10005268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004C9DF8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004C9E00;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_100051CB8;
}

uint64_t (*sub_1000527F4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_1000524E8;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v75 = a7;
  v78 = a6;
  v79 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a8;
  v95 = sub_1004BB0E4();
  v9 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v71 - v14;
  __chkstk_darwin();
  v72 = &v71 - v15;
  __chkstk_darwin();
  v17 = &v71 - v16;
  v74 = v18;
  __chkstk_darwin();
  v99 = &v71 - v19;
  sub_100003ABC(&qword_100601E70, &qword_1004C9E08);
  __chkstk_darwin();
  v71 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v71 - v21;
  __chkstk_darwin();
  v24 = &v71 - v23;
  v25 = __chkstk_darwin();
  v27 = &v71 - v26;
  v81 = v12;
  v91 = *(v12 + 56);
  v92 = v12 + 56;
  v91(&v71 - v26, 1, 1, v11, v25);
  v96 = a1;
  v90 = *(a1 + 16);
  if (v90)
  {
    v28 = 0;
    result = v96 + 32;
    v88 = (v9 + 8);
    v86 = (v81 + 88);
    v87 = (v81 + 16);
    v93 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v30 = (v81 + 8);
    v84 = (v81 + 48);
    v83 = (v81 + 32);
    v85 = v24;
    v89 = v27;
    while (v28 < *(v96 + 16))
    {
      v97 = result;
      v98 = v28;
      sub_10004826C(result, v100);
      sub_100009178(v100, v100[3]);
      v33 = v94;
      sub_1004B76B4();
      v34 = v30;
      v35 = v11;
      v36 = v99;
      v37 = v95;
      sub_1004BAF94();
      sub_100004C6C(v100);
      (*v88)(v33, v37);
      v38 = v36;
      v11 = v35;
      v30 = v34;
      (*v87)(v17, v38, v11);
      v39 = (*v86)(v17, v11);
      v40 = *v34;
      if (v39 == v93)
      {
        v40(v99, v11);

        v40(v17, v11);
        sub_100007214(v89, &qword_100601E70, &qword_1004C9E08);
        v44 = v81;
        v46 = v11;
        v49 = v72;
        (*(v81 + 104))(v72, v93, v11);
        goto LABEL_15;
      }

      v40(v17, v11);
      v27 = v89;
      sub_100025B04(v89, v22, &qword_100601E70, &qword_1004C9E08);
      v41 = *v84;
      if ((*v84)(v22, 1, v11) == 1)
      {
        v31 = v85;
        (*v83)(v85, v99, v11);
        v42 = v41(v22, 1, v11);
        v32 = v98;
        if (v42 != 1)
        {
          sub_100007214(v22, &qword_100601E70, &qword_1004C9E08);
        }
      }

      else
      {
        v40(v99, v11);
        v31 = v85;
        (*v83)(v85, v22, v11);
        v32 = v98;
      }

      v28 = v32 + 1;
      (v91)(v31, 0, 1, v11);
      sub_100025B04(v31, v27, &qword_100601E70, &qword_1004C9E08);
      result = v97 + 48;
      if (v90 == v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v43 = v71;
    sub_100025B04(v27, v71, &qword_100601E70, &qword_1004C9E08);
    v44 = v81;
    v45 = *(v81 + 48);
    v46 = v11;
    if (v45(v43, 1, v11) == 1)
    {
      v47 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v48 = sub_1004BB0D4();
      v49 = v72;
      (*(*(v48 - 8) + 104))(v72, v47, v48);
      (*(v44 + 104))(v49, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v11);
      v50 = v45(v43, 1, v11) == 1;
      v51 = v43;
      v52 = v74;
      if (!v50)
      {
        sub_100007214(v51, &qword_100601E70, &qword_1004C9E08);
      }
    }

    else
    {
      v49 = v72;
      (*(v44 + 32))(v72, v43, v11);
LABEL_15:
      v52 = v74;
    }

    v53 = v73;
    (*(v44 + 16))(v73, v49, v46);
    v54 = *(v44 + 80);
    v99 = swift_allocObject();
    v55 = *(v44 + 32);
    v55(&v99[(v54 + 16) & ~v54], v53, v46);
    v55(v82, v49, v46);
    v56 = (v54 + 32) & ~v54;
    v57 = (v52 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 103) & 0xFFFFFFFFFFFFFFF8;
    v59 = v78;
    v60 = *(v78 - 8);
    v61 = (v58 + *(v60 + 80) + 8) & ~*(v60 + 80);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v59;
    *(v62 + 24) = v63;
    v55((v62 + v56), v82, v46);
    sub_100048998(v76, v62 + v57);
    v64 = v96;
    *(v62 + v58) = v96;
    (*(v60 + 32))(v62 + v61, v77, v59);
    v65 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
    v66 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v67 = (*(v65 + 64) + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_100025B04(v79, v68 + v66, &qword_100601C50, &unk_1004C9840);
    *(v68 + v67) = v64;

    v69 = v80;
    v70 = v99;
    *v80 = sub_10005B3C0;
    v69[1] = v70;
    v69[2] = &unk_1004C9E18;
    v69[3] = v62;
    v69[4] = &unk_1004C9E28;
    v69[5] = v68;
  }

  return result;
}

unint64_t sub_1000532A4(uint64_t a1)
{
  v2 = sub_1004BB0F4();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin();
  v53 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v50 = &v47 - v5;
  v6 = sub_1004BB0D4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v47 - v15;
  v16 = __chkstk_darwin();
  v18 = &v47 - v17;
  v19 = *(v13 + 16);
  v49 = a1;
  v19(&v47 - v17, a1, v12, v16);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v20 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (qword_1005FFD38 != -1)
      {
        swift_once();
      }

      v29 = sub_1004B80B4();
      sub_100007084(v29, static Logger.actions);
      v30 = v48;
      (v19)(v48, v49, v12);
      v31 = sub_1004B8094();
      v32 = sub_1004BC994();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v33 = 136315138;
        LODWORD(v52) = v32;
        (v19)(v47, v30, v12);
        v34 = sub_1004BBF04();
        v36 = v35;
        v37 = *(v13 + 8);
        v37(v30, v12);
        v38 = sub_100012018(v34, v36, &v54);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v52, "Unknown status=%s", v33, 0xCu);
        sub_100004C6C(v53);
      }

      else
      {

        v37 = *(v13 + 8);
        v37(v30, v12);
      }

      v28 = 0x206E776F6E6B6E55;
      v37(v18, v12);
      return v28;
    }

    return 0;
  }

  (*(v13 + 96))(v18, v12);
  (*(v7 + 32))(v11, v18, v6);
  (*(v7 + 16))(v9, v11, v6);
  v21 = (*(v7 + 88))(v9, v6);
  if (v21 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v28 = 0xD000000000000010;
      (*(v7 + 8))(v11, v6);
      return v28;
    }

    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v39 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v40 = *(v7 + 8);
    v41 = v21;
    v40(v11, v6);
    if (v41 != v39)
    {
      v28 = 0x206E776F6E6B6E55;
      v40(v9, v6);
      return v28;
    }

    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v22 = v52;
  v23 = v50;
  v24 = v9;
  v25 = v51;
  (*(v52 + 32))(v50, v24, v51);
  v26 = v53;
  (*(v22 + 16))(v53, v23, v25);
  v27 = (*(v22 + 88))(v26, v25);
  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001CLL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001ELL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000014;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000025;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v22 + 8))(v23, v25);
LABEL_27:
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000016;
  }

  else
  {
    v28 = 0x206E776F6E6B6E55;
    v43 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v44 = v23;
    v45 = *(v22 + 8);
    v46 = v27;
    v45(v44, v25);
    (*(v7 + 8))(v11, v6);
    if (v46 != v43)
    {
      v45(v53, v25);
    }
  }

  return v28;
}

uint64_t sub_100053C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = sub_1004BB244();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = sub_100003ABC(&qword_100601EE8, &qword_1004C9EC8);
  v6[77] = swift_task_alloc();
  sub_100003ABC(&qword_100601EF0, &qword_1004C9ED0);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = sub_1004BB4D4();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = sub_100003ABC(&qword_100601DF0, &qword_1004C9C80);
  v6[85] = swift_task_alloc();
  sub_100003ABC(&qword_100601DF8, &qword_1004C9C88);
  v6[86] = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  sub_100003ABC(&qword_100601E50, &qword_1004C9DA8);
  v6[92] = swift_task_alloc();
  v10 = sub_1004BB0F4();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_100053F6C, 0, 0);
}

uint64_t sub_100053F6C()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 448);
          sub_100052188(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (qword_1005FFD38 != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = sub_1004B80B4();
          sub_100007084(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = sub_1004B8094();
          v47 = sub_1004BC994();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            sub_10005BB24(&qword_100601E38, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = sub_1004BD934();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = sub_100012018(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            sub_100004C6C(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = sub_1004BC474();
      *(v0 + 824) = sub_1004BC464();
      v21 = sub_1004BC3E4();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = sub_1000551F0;
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = sub_1004BC474();
    *(v0 + 800) = sub_1004BC464();
    v17 = sub_1004BC3E4();
    v19 = v18;
    v20 = sub_100054CB4;
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  sub_100007214(*(v0 + 736), &qword_100601E50, &qword_1004C9DA8);
  sub_1004BAA94();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    sub_100009178((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = sub_1000554CC;
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (qword_100600718 != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  sub_10005247C(&qword_100601E68, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC124();
  v40 = *(v39 + 36);
  sub_10005247C(&qword_100601E08, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC764();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    sub_100007214(*(v0 + 680), &qword_100601DF0, &qword_1004C9C80);
    *(v0 + 888) = sub_1004BC474();
    *(v0 + 896) = sub_1004BC464();
    v17 = sub_1004BC3E4();
    v19 = v41;
    v20 = sub_100056000;
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = sub_1004BC844();
    (*v93)(v66);
    v69(v0 + 496, 0);
    sub_1004BC774();
    sub_1004BB4A4();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    sub_10000F778(v98, v95, &qword_100601EF0, &qword_1004C9ED0);
    sub_10000F778(v67, v95 + v70, &qword_100601EF0, &qword_1004C9ED0);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    sub_10000F778(*(v0 + 616), *(v0 + 624), &qword_100601EF0, &qword_1004C9ED0);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      sub_100007214(*(v0 + 632), &qword_100601EF0, &qword_1004C9ED0);
      sub_100007214(v76, &qword_100601EF0, &qword_1004C9ED0);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    sub_10005BB24(&qword_100601EF8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
    v85 = sub_1004BBD84();
    v82 = *v86;
    (*v86)(v80, v81);
    sub_100007214(v77, &qword_100601EF0, &qword_1004C9ED0);
    sub_100007214(v76, &qword_100601EF0, &qword_1004C9ED0);
    (*v89)(v74, v75);
    v82(v78, v81);
    sub_100007214(v99, &qword_100601EF0, &qword_1004C9ED0);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    sub_1004BC764();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  sub_100007214(*(v0 + 632), &qword_100601EF0, &qword_1004C9ED0);
  sub_100007214(v64, &qword_100601EF0, &qword_1004C9ED0);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    sub_100007214(*(v0 + 616), &qword_100601EE8, &qword_1004C9EC8);
    goto LABEL_32;
  }

  sub_100007214(*(v0 + 616), &qword_100601EF0, &qword_1004C9ED0);
LABEL_41:
  sub_100007214(*(v0 + 680), &qword_100601DF0, &qword_1004C9C80);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = sub_100009178(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = sub_10005653C;
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

uint64_t sub_100054CB4()
{

  sub_100114418(0, v0 + 280);

  return _swift_task_switch(sub_100054D28, 0, 0);
}

uint64_t sub_100054D28(uint64_t a1)
{
  *(v1 + 808) = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100054DB4, v3, v2);
}

uint64_t sub_100054DB4()
{
  v1 = *(v0 + 544);

  v2 = sub_1000C88F4((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1006000B8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100607AD0);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_10023620C;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_10023720C;
    *(v0 + 424) = &unk_1005A9C40;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_100047AC4(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_100048998(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10005BC70, v16);
    sub_10003CC4C(v5, v6);

    sub_100052310(v0 + 280);
    v19 = sub_10005509C;
  }

  else
  {
    sub_1002346EC(v2, *(v0 + 312), 1, 0, 0);

    sub_100052310(v0 + 280);
    v19 = sub_10005BC68;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_10005509C()
{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000551F0(uint64_t a1)
{
  v2 = v1[68];
  v3 = sub_1004BC464();
  v1[106] = v3;
  v4 = swift_task_alloc();
  v1[107] = v4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[108] = v5;
  *v5 = v1;
  v5[1] = sub_100055304;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 489, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v4, &type metadata for Bool);
}

uint64_t sub_100055304()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(sub_100055464, v3, v2);
}

uint64_t sub_100055464()
{

  return _swift_task_switch(sub_10005BC68, 0, 0);
}

uint64_t sub_1000554CC()
{

  return _swift_task_switch(sub_1000555C8, 0, 0);
}

uint64_t sub_1000555C8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1004BAA94();
    if (v4(v3, 1, v2) != 1)
    {
      sub_100007214(v0[86], &qword_100601DF8, &qword_1004C9C88);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  sub_1004BAAB4();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (qword_100600718 != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    sub_10005247C(&qword_100601E68, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004BC124();
    v27 = *(v26 + 36);
    sub_10005247C(&qword_100601E08, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004BC764();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      sub_100007214(v0[85], &qword_100601DF0, &qword_1004C9C80);
      v0[111] = sub_1004BC474();
      v0[112] = sub_1004BC464();
      v29 = sub_1004BC3E4();

      return _swift_task_switch(sub_100056000, v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = sub_1004BC844();
      (*v63)(v36);
      v39(v0 + 62, 0);
      sub_1004BC774();
      sub_1004BB4A4();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      sub_10000F778(v67, v65, &qword_100601EF0, &qword_1004C9ED0);
      sub_10000F778(v37, v65 + v40, &qword_100601EF0, &qword_1004C9ED0);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      sub_10000F778(v0[77], v0[78], &qword_100601EF0, &qword_1004C9ED0);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        sub_100007214(v0[79], &qword_100601EF0, &qword_1004C9ED0);
        sub_100007214(v46, &qword_100601EF0, &qword_1004C9ED0);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        sub_100007214(v0[77], &qword_100601EE8, &qword_1004C9EC8);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      sub_10005BB24(&qword_100601EF8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v55 = sub_1004BBD84();
      v52 = *v56;
      (*v56)(v50, v51);
      sub_100007214(v47, &qword_100601EF0, &qword_1004C9ED0);
      sub_100007214(v46, &qword_100601EF0, &qword_1004C9ED0);
      (*v59)(v44, v45);
      v52(v48, v51);
      sub_100007214(v68, &qword_100601EF0, &qword_1004C9ED0);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      sub_1004BC764();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    sub_100007214(v0[79], &qword_100601EF0, &qword_1004C9ED0);
    sub_100007214(v34, &qword_100601EF0, &qword_1004C9ED0);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      sub_100007214(v0[77], &qword_100601EF0, &qword_1004C9ED0);
LABEL_30:
      sub_100007214(v0[85], &qword_100601DF0, &qword_1004C9C80);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = sub_100009178(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = sub_10005653C;
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  sub_100009178((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = sub_1000554CC;
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}

uint64_t sub_100056000()
{

  sub_100114418(0, v0 + 208);

  return _swift_task_switch(sub_100056074, 0, 0);
}

uint64_t sub_100056074(uint64_t a1)
{
  *(v1 + 904) = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100056100, v3, v2);
}

uint64_t sub_100056100()
{
  v1 = *(v0 + 544);

  v2 = sub_1000C88F4((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1006000B8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100607AD0);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_10023620C;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_10023720C;
    *(v0 + 376) = &unk_1005A9BF0;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_100047AC4(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_100048998(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10005BB20, v16);
    sub_10003CC4C(v5, v6);

    sub_100052310(v0 + 208);
    v19 = sub_1000563E8;
  }

  else
  {
    sub_1002346EC(v2, *(v0 + 240), 1, 0, 0);

    sub_100052310(v0 + 208);
    v19 = sub_10005BC58;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_1000563E8()
{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005653C()
{

  return _swift_task_switch(sub_10005BC58, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_1004BB9B4();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_100003ABC(&qword_100601E78, &unk_1004CE320);
  v3[10] = swift_task_alloc();
  v6 = sub_1004BBA44();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_100003ABC(&qword_100601E80, &qword_1004C9E38);
  v3[15] = swift_task_alloc();
  v7 = sub_1004BB4D4();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_100003ABC(&qword_100601E88, &qword_1004CB610);
  v3[19] = swift_task_alloc();
  v8 = sub_1004BAD04();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100003ABC(&qword_100601E90, &qword_1004CB6E0);
  v3[24] = swift_task_alloc();
  v9 = sub_1004BB384();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_100003ABC(&qword_100601DF8, &qword_1004C9C88);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  v3[36] = swift_task_alloc();
  v11 = sub_1004BBA84();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = sub_1004BB434();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_100056C34, 0, 0);
}

uint64_t sub_100056C34()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    sub_100003ABC(&qword_100603C50, &unk_1004CB550);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_1004C4D40;
    sub_100003ABC(&qword_100601EB8, &qword_1004C9E50);
    *(v13 + 32) = sub_1004BAA24();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = sub_10005BB24(&qword_100601EC0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    *v14 = v0;
    v14[1] = sub_100057C44;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  sub_100007214(v19, &qword_100601E48, &qword_1004C9DA0);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = sub_100003ABC(&qword_100603C50, &unk_1004CB550);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_1004C4D40;
    v0[63] = sub_100003ABC(&qword_100601EA8, &qword_1004C9E48);
    *(v29 + 32) = sub_1004BAA34();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_100057FA4;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  sub_100007214(v34, &qword_100603CB0, &qword_1004CB660);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    sub_100003ABC(&qword_100601EA0, &qword_1004C9E40);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1004C50A0;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    sub_1004BAA94();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  sub_100007214(v51, &qword_100601E90, &qword_1004CB6E0);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    sub_100003ABC(&qword_100601EA0, &qword_1004C9E40);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004C50A0;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    sub_1004BAA94();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  sub_100007214(v67, &qword_100601E88, &qword_1004CB610);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    sub_100003ABC(&qword_100601EA0, &qword_1004C9E40);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1004C50A0;
    (*(v76 + 16))(v81 + v80, v75, v77);
    sub_1004BAA94();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    sub_100007214(v83, &qword_100601E80, &qword_1004C9E38);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      sub_1004BB9C4();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        sub_100003ABC(&qword_100601EA0, &qword_1004C9E40);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004C50A0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (qword_1005FFD38 != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = sub_1004B80B4();
          sub_100007084(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = sub_1004B8094();
          v119 = sub_1004BC994();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            sub_1004BB9C4();
            sub_10005BB24(&qword_100601E98, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = sub_1004BD934();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = sub_100012018(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            sub_100004C6C(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        sub_100003ABC(&qword_100601EA0, &qword_1004C9E40);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004C50A0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      sub_1004BAA94();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      sub_100007214(v110, &qword_100601E78, &unk_1004CE320);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

uint64_t sub_100057C44()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100059780;
  }

  else
  {
    v2 = sub_100057D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100057D74(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v4 = v1[52];
  v5 = v1[53];
  sub_1004BB414();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100057FA4()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_100058484;
  }

  else
  {
    v2 = sub_1000580D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000580D4()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  sub_1004BBA54();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    sub_100007214(v0[35], &qword_100601DF8, &qword_1004C9C88);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    sub_1004BBA54();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = sub_1004BAAA4();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_1004C4D40;
  sub_1004BAA34();
  v12 = sub_1004BABB4();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = sub_1000588E0;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_100058484()
{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_1004B80B4();
  sub_100007084(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_1004BBF04();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100012018(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v19 = sub_1004BBF04();
    v21 = sub_100012018(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000588E0()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_100058E28;
  }

  else
  {
    v2 = sub_100058A10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058A10(uint64_t a1)
{
  v2 = v1[66];
  v4 = v1[38];
  v3 = v1[39];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[29];
  sub_1004BBA54();
  v8 = *(v4 + 8);
  v1[73] = v8;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = v2(v6, 1, v7);
  v10 = v1[29];
  if (v9 == 1)
  {
    v11 = v1[66];
    v12 = v1[34];
    sub_1004BAA94();
    if (v11(v12, 1, v10) != 1)
    {
      sub_100007214(v1[34], &qword_100601DF8, &qword_1004C9C88);
    }
  }

  else
  {
    (*(v1[30] + 32))(v1[32], v1[34], v1[29]);
  }

  if (sub_1004BAAA4())
  {
    v13 = swift_task_alloc();
    v1[75] = v13;
    v14 = sub_10005BB24(&qword_100601EB0, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v13 = v1;
    v13[1] = sub_10005929C;
    v15 = v1[33];
    v16 = v1[29];

    return MusicItemCollection.nextBatch<>(limit:)(v15, 10000, 0, v16, v14);
  }

  else
  {
    v17 = v1[73];
    v18 = v1[41];
    v19 = v1[37];
    v20 = v1[32];
    v21 = v1[29];
    v22 = v1[30];
    v23 = v1[3];
    v17(v1[40], v19);
    v17(v18, v19);
    (*(v22 + 32))(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);

    v24 = v1[1];

    return v24();
  }
}

uint64_t sub_100058E28()
{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_1004B80B4();
  sub_100007084(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = sub_1004B8094();
  v11 = sub_1004BC984();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = sub_1004BBF04();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_100012018(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v22 = sub_1004BBF04();
    v24 = sub_100012018(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_10005929C()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100059BDC;
  }

  else
  {
    v2 = sub_1000593B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000593B0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    sub_100007214(v1, &qword_100601DF8, &qword_1004C9C88);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    sub_1004BAAB4();
    v3(v4, v2);
  }

  if (sub_1004BAAA4())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = sub_10005BB24(&qword_100601EB0, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v5 = v0;
    v5[1] = sub_10005929C;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100059780()
{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_1004B80B4();
  sub_100007084(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_1004BBF04();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100012018(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v19 = sub_1004BBF04();
    v21 = sub_100012018(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100059BDC()
{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = sub_1004B80B4();
  sub_100007084(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = sub_1004B8094();
  v12 = sub_1004BC984();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = sub_1004BBF04();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_100012018(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v23 = sub_1004BBF04();
    v25 = sub_100012018(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10005A05C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10005A26C, 0, 0);
}

uint64_t sub_10005A26C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000F778(*(v0 + 96), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 224), &qword_100601C50, &unk_1004C9840);
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 104);
  sub_1000521DC(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    sub_10005BAA4(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = *(v6 + 56);
  sub_100009178((v6 + 32), v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
  *(v0 + 264) = v8;
  v9 = sub_1004B6B04();
  *(v0 + 272) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  sub_100003ABC(&qword_100601E58, &qword_1004CA360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  v13 = *(v6 + 56);
  sub_100009178((v6 + 32), v13);
  *(inited + 32) = MusicItem.metricsContentType.getter(v13);
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_1004C4F70;
  *(inited + 72) = 1;
  *(v0 + 296) = sub_100029080(inited);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  *(v0 + 328) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1004BC474();
  *(v0 + 320) = sub_1004BC464();
  v19 = sub_1004BC3E4();

  return _swift_task_switch(sub_10005A5D4, v19, v18);
}

uint64_t sub_10005A5D4()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_10000F778(v36 + v14[6], *(v0 + 200), &qword_100600DE0, &unk_1004C66D0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100025B04(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 120), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_10005AD8C, 0, 0);
}