unint64_t sub_10041342C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D78, &qword_1007C0260);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, v13, &qword_100936D80, &qword_1007C0268);
      result = sub_100412148(v13);
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
      *(v3[7] + 8 * result) = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100413554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936CE8, &qword_1007C0218);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100412298(v6);
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

unint64_t sub_100413644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C518(&qword_100936DF0, &qword_1007C02B8);
  v3 = sub_1007546B4();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10041218C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10041218C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100413748(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936DB0, &unk_1007D1050);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = sub_100412104(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100413848(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E28, &qword_1007C02E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E30, &unk_1007D1080);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E28, &qword_1007C02E0);
      result = sub_100412228(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Accessory(0);
      result = sub_100372EAC(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
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

unint64_t sub_100413A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936E50, &unk_1007D10B0);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100412104(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100413B30(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E40, &qword_1007C02E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E48, &qword_1007C02F0);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E40, &qword_1007C02E8);
      result = sub_1004123FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1007417F4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
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

void *sub_100413D18(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C518(&qword_100936D40, &qword_1007D1040);
  v3 = sub_1007546B4();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 7);
  v8 = sub_1004125A4(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    *(v13 + 1) = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1004125A4(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100413E5C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936D98, &qword_1007C0278);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DA0, &qword_1007C0280);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936D98, &qword_1007C0278);
      v11 = *v5;
      result = sub_100412104(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_100752914();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_10041404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D88, &qword_1007C0270);
    v3 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1003861D0(v5, v6);
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

unint64_t sub_100414150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936CF8, &qword_1007C0220);
    v3 = sub_1007546B4();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *(i + 1);
      v15 = *i;
      result = sub_10041264C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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

unint64_t sub_10041424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936DA8, &qword_1007C0288);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_100412104(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
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

unint64_t sub_10041434C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D28, &unk_1007D1030);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1004126C0(v5, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_100414444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D58, &qword_1007C0250);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100412298(v6);
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

unint64_t sub_100414554(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000C518(a2, a3);
    v9 = sub_1007546B4();
    v10 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_100412298(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10000C610(&v18, (v9[7] + 32 * result));
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

unint64_t sub_10041466C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936CD8, &qword_1007C0210);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E68, &qword_1007C0308);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936CD8, &qword_1007C0210);
      result = sub_100412148(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_100741264();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
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

uint64_t sub_100414864()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041489C()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100414900(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936D08, &qword_1007C0230);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936D10, &qword_1007C0238);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936D08, &qword_1007C0230);
      result = sub_10041276C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10074F7D4();
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

unint64_t sub_100414AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100934890, qword_1007BC158);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, &v13, &qword_10092C200, &qword_1007B0C58);
      v5 = v13;
      v6 = v14;
      result = sub_1003861D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C610(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100414C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D00, &qword_1007C0228);
    v3 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003861D0(v5, v6);
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

unint64_t sub_100414D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&unk_10092DCE0, &unk_1007B2370);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, v13, &qword_100927768, qword_1007AAE20);
      result = sub_100412148(v13);
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
      result = sub_10000C610(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100414E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936E00, &unk_1007D10A0);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_100412104(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100414F4C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936B88, &qword_1007BF9C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936D48, &qword_1007C0240);
    v7 = sub_1007546B4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936B88, &qword_1007BF9C0);
      result = sub_100412914(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = sub_100744EA4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      v17 = (v7[7] + 16 * v14);
      v18 = *(v8 + 1);
      *v17 = *v8;
      v17[1] = v18;
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

unint64_t sub_100415150(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C518(a2, a3);
  v5 = sub_1007546B4();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_100412104(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_100412104(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100415244(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E10, &qword_1007C02C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E18, &qword_1007C02D0);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E10, &qword_1007C02C8);
      result = sub_100412840(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100742F74();
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

unint64_t sub_100415440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000C518(a2, a3);
    v5 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_1003861D0(v7, v8);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100415550(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C518(a2, a3);
  v5 = sub_1007546B4();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_100412104(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
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
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_100412104(v6);
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

unint64_t sub_100415650(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936DD8, &qword_1007C02A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DE0, &qword_1007C02A8);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936DD8, &qword_1007C02A0);
      result = sub_100412B90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100752C84();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012160(&v5[v8], v7[7] + 40 * v13);
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

unint64_t sub_100415840(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936DB8, &qword_1007C0290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DC0, &qword_1007C0298);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936DB8, &qword_1007C0290);
      result = sub_100412ABC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100752C34();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012160(&v5[v8], v7[7] + 40 * v13);
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

uint64_t sub_100415A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100415AE0()
{
  off_100936E78 = 0;
  swift_unknownObjectWeakInit();
  return result;
}

double sub_100415AF4(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  v15 = type metadata accessor for AppEventView(0);

  return sub_100194FE8(v11, a8, a6, v14, a3, v15, ObjectType);
}

id sub_100415B78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100195300(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_100415BD0(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_10000C888(a1, v8);

  return sub_10019564C(v10, a2, v5, v8, v9, v7);
}

uint64_t sub_100415D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100415D88(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  v13 = [a6 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_100753954();

  if ((v15 & 1) == 0)
  {
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_100536A04(&unk_10097D3C0, a6, v12, a2);
    if (qword_100920458 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v20 = sub_10000D0FC(v19, qword_10097E0D8);
    sub_10010F91C(v20, a1, a5, a6, ObjectType, v12, a2);
    goto LABEL_28;
  }

  v16 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + 32;
    do
    {
      sub_10000C824(v18, v34);
      sub_100012160(v34, v32);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_1007428B4();
      if ((swift_dynamicCast() & 1) != 0 && v33)
      {
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v16 = v35;
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  if (!(v16 >> 62))
  {
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v29 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v30 = [v29 absoluteDimension:?];
    v31 = sub_100749A04();

    return v31;
  }

  v21 = sub_100754664();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView(0);
  if (v21 >= 1)
  {
    v23 = result;
    v24 = 0;
    v25 = 0.0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v26 = sub_100754574();
      }

      else
      {
        v26 = *(v16 + 8 * v24 + 32);
      }

      ++v24;
      sub_100194FE8(v26, a6, a5, v12, a2, v23, ObjectType);
      v28 = v27;

      if (v25 <= v28)
      {
        v25 = v28;
      }
    }

    while (v21 != v24);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

double sub_1004162D4(__n128 a1)
{
  v2 = v1;
  v3 = sub_100745334();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002920B8();
  sub_10074FB64();
  sub_100747C44();
  if (swift_dynamicCastClass())
  {
    v7 = sub_100747C34();
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
      do
      {
        sub_1007442C4();
        sub_1007526E4();
        v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32GridTodayBrickCollectionViewCell_grid];
        v21[2] = v27;
        v22 = v9;
        sub_100747C24();
        v10 = (*(v4 + 88))(v6, v3);
        if (v10 != enum case for ArtworkGridType.small(_:))
        {
          if (v10 == enum case for ArtworkGridType.large(_:))
          {
            v11 = 1;
            goto LABEL_12;
          }

          if (v10 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v11 = 2;
            goto LABEL_12;
          }

          if (v10 == enum case for ArtworkGridType.mixed(_:))
          {
            v11 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v18 = *(v4 + 8);
          v4 += 8;
          v18(v6, v3);
        }

        v11 = 0;
LABEL_12:
        v21[1] = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
        v12 = v22;
        v22[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType] = v11;
        sub_100602594();
        [v12 setNeedsLayout];
        v13 = sub_100747C34();
        if (v13 >> 62)
        {
          v2 = sub_100754664();
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v22[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v2;
        sub_100602764();
        v14 = sub_100747C34();
        v15 = v14;
        if (v14 >> 62)
        {
          v3 = sub_100754664();
          if (!v3)
          {
LABEL_35:

            return result;
          }
        }

        else
        {
          v3 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v3)
          {
            goto LABEL_35;
          }
        }

        v6 = 0;
        v23 = v15 & 0xFFFFFFFFFFFFFF8;
        v24 = v15 & 0xC000000000000001;
        v21[0] = v3;
        while (v24)
        {
          sub_100754574();
          v16 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_10074EF64())
          {
            v2 = v22;
            sub_10074F374();
            v26 = 0;
            memset(v25, 0, sizeof(v25));
            v4 = swift_allocObject();
            *(v4 + 16) = v2;
            *(v4 + 24) = v6;
            v17 = v2;
            sub_1007441F4();

            v3 = v21[0];

            sub_100416858(v25);
          }

          else
          {
          }

          ++v6;
          if (v16 == v3)
          {
            goto LABEL_35;
          }
        }

        if (v6 < *(v23 + 16))
        {

          v16 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v19 = sub_100754664();
      }

      while (v19);
    }
  }

  return result;
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_100936EF8;
  if (!qword_100936EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100416820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100416858(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009276E0, &unk_1007A5C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_100741E54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741C54();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_10074C3E4();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_10000C518(&qword_100923590, &unk_1007A6860);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_100741EC4();

    v32 = sub_100741D14();
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "onLayoutEnvironment>16";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007458B4(v35, v98);
    v36 = sub_100753064();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];

    sub_10074EF34();
    if (v38)
    {
      v39 = sub_100753064();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_100741D24();
    if (v41)
    {
      v42 = sub_100753064();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_1000F4700();
    if (sub_10074EF04())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_100742E24();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_100745E94();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_10074F8B4();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_1007455E4();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_100749EA4();

      sub_10000C8CC(v95, &unk_100923520, &qword_1007A5A70);
      sub_10000C8CC(v50, &qword_100923590, &unk_1007A6860);
      sub_10000C8CC(v23, &unk_100925520, &unk_1007A8120);
      sub_10000C8CC(v26, &unk_1009259A0, &unk_1007B0610);
      sub_10000C8CC(v29, &unk_100925530, &unk_1007A8130);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_10074EDF4();

    v54 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_10041AA54(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_10074A9C4();
    sub_10015DE40(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10000C8CC(v55, &unk_100925540, &qword_1007A8140);
    [v52 setHidden:0];
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    v59 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_100743384(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_100743384(v97, v62);
    sub_1007433C4();
    sub_10041AA54(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744274();
    v91 = v60;
    sub_100744274();
    if (qword_100920240 != -1)
    {
      swift_once();
    }

    v90 = qword_10097DA98;
    v63 = v93;
    sub_100741D34();
    v64 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_100275D50(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_1006C2A3C(93.0, 93.0, v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_100275D50(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_100741E04();
    v74 = v73;
    sub_100741E44();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

double CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v6);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100741ED4();
  if (swift_dynamicCast())
  {
    v5 = sub_100741EC4();

    sub_1006C2A3C(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_100743384(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
  sub_1007433C4();
  sub_10041AA54(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  return sub_100744274();
}

double static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v3)
  {
    sub_100741EC4();
    v1 = sub_1006C301C(93.0, 93.0);

    v2._rawValue = v1;
    sub_100744224(v2);
  }

  return result;
}

double sub_10041787C(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v139 = a3;
  v154 = a1;
  v138 = sub_100750CC4();
  v158 = *(v138 - 8);
  __chkstk_darwin(v138);
  v124 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100750CB4();
  v157 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100750C64();
  v156 = *(v137 - 8);
  __chkstk_darwin(v137);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100750D04();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v125 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007479B4();
  v132 = *(v11 - 8);
  v133 = v11;
  __chkstk_darwin(v11);
  v140 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v131 = &v112 - v14;
  v153 = sub_10074CD14();
  v155 = *(v153 - 8);
  __chkstk_darwin(v153);
  v146 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100750304();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100741E54();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  sub_100741E14();
  (*(v21 + 8))(v23, v20);
  v136 = sub_100750F34();
  swift_allocObject();
  v130 = sub_100750F14();
  v159 = a2;
  sub_100741AA4();
  LODWORD(v152) = enum case for FontSource.useCase(_:);
  v24 = *(v17 + 104);
  v150 = v17 + 104;
  v151 = v24;
  v142 = v16;
  v24(v19);
  v25 = v139;
  v26.super.isa = v139;
  v27.super.isa = sub_1007502F4(v26).super.isa;
  v28 = *(v17 + 8);
  v148 = v17 + 8;
  v149 = v28;
  v28(v19, v16);
  v29 = sub_100741D14();
  v30 = "onLayoutEnvironment>16";
  if (v29)
  {
    v30 = "ultType.Heading.InAppPurchase";
    v31._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v31._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v31._object = (v30 | 0x8000000000000000);
  v179._countAndFlagsBits = 0;
  v179._object = 0xE000000000000000;
  sub_1007458B4(v31, v179);
  v141 = v32;
  v33 = v27.super.isa;
  sub_100741B24();
  v34 = sub_10074F3F4();
  v177 = v34;
  v147 = sub_10041AA54(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v178 = v147;
  v35 = sub_10000D134(v176);
  LODWORD(v144) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = *(v34 - 8);
  v143 = *(v36 + 104);
  v145 = (v36 + 104);
  v143(v35);
  sub_10074FC74();
  sub_10000C620(v176);
  v37 = v146;
  v120 = v33;
  sub_10074CD04();
  sub_10074CCE4();
  v141 = *(v155 + 8);
  v155 += 8;
  v38 = v37;
  v39 = v153;
  (v141)(v38, v153);
  sub_100741B84();
  v40 = v142;
  v151(v19, v152, v142);
  v41.super.isa = v25;
  isa = sub_1007502F4(v41).super.isa;
  v149(v19, v40);
  sub_10074EF34();
  v43 = isa;
  sub_100741B14();
  v174 = v34;
  v175 = v147;
  v44 = sub_10000D134(v173);
  (v143)(v44, v144, v34);
  sub_10074FC74();
  sub_10000C620(v173);
  v45 = v146;
  v119 = v43;
  sub_10074CD04();
  sub_10074CCE4();
  (v141)(v45, v39);
  sub_100741AC4();
  v46 = v142;
  v151(v19, v152, v142);
  v47 = v139;
  v48.super.isa = v139;
  v49 = sub_1007502F4(v48).super.isa;
  v149(v19, v46);
  sub_100741D24();
  v50 = v49;
  v51.super.isa = v47;
  sub_100741B74(v51);
  v171 = v34;
  v172 = v147;
  v52 = sub_10000D134(v170);
  (v143)(v52, v144, v34);
  sub_10074FC74();
  sub_10000C620(v170);
  v118 = v50;
  sub_10074CD04();
  sub_10074CCE4();
  (v141)(v45, v153);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v53 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v53 = qword_10093FF58;
  }

  v54 = v133;
  v55 = sub_10000D0FC(v133, v53);
  v56 = v132;
  v57 = v140;
  (*(v132 + 16))(v140, v55, v54);
  (*(v56 + 32))(v131, v57, v54);
  sub_100747964();
  sub_100747994();
  v58 = v136;
  swift_allocObject();
  v59 = sub_100750F14();
  v169[4] = &protocol witness table for LayoutViewPlaceholder;
  v169[3] = v58;
  v169[0] = v130;
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v58;
  v168[0] = v59;
  v117 = v59;
  sub_10000C518(&unk_100923060, qword_1007A5CA0);
  v60 = *(sub_100750CF4() - 8);
  v129 = *(v60 + 72);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v115 = 4 * v129;
  v62 = swift_allocObject();
  v116 = v62;
  *(v62 + 16) = xmmword_1007AB1A0;
  v63 = v62 + v61;

  sub_100741A94();
  v166 = &type metadata for CGFloat;
  v167 = &protocol witness table for CGFloat;
  v165[0] = v64;
  sub_100741B54();
  v114 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v65 = v156;
  v66 = *(v156 + 104);
  v136 = v156 + 104;
  v140 = v66;
  v67 = v121;
  v66();
  v68 = sub_10000C518(&unk_100944F30, &unk_1007ABDD0);
  v69 = *(v157 + 72);
  v141 = *(v157 + 80);
  v142 = v68;
  v70 = v157;
  v134 = (v141 + 32) & ~v141;
  v154 = 2 * v69;
  v155 = 3 * v69;
  v153 = v69;
  v71 = swift_allocObject();
  v152 = xmmword_1007A5620;
  *(v71 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v161 = v71;
  v150 = sub_10041AA54(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v149 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
  v151 = sub_100016BFC();
  v73 = v122;
  v72 = v123;
  sub_1007543A4();
  LODWORD(v148) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v158;
  v146 = *(v158 + 104);
  v147 = v158 + 104;
  v75 = v124;
  v76 = v138;
  v146(v124);
  v135 = v63;
  sub_100750CE4();
  v77 = *(v74 + 8);
  v158 = v74 + 8;
  v145 = v77;
  v77(v75, v76);
  v78 = *(v70 + 8);
  v157 = v70 + 8;
  v144 = v78;
  v78(v73, v72);
  v79 = *(v65 + 8);
  v156 = v65 + 8;
  v143 = v79;
  (v79)(v67, v137);
  sub_10000C8CC(v164, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v165);
  v80 = v177;
  v81 = v178;
  v82 = sub_10000C888(v176, v177);
  v166 = v80;
  v167 = *(v81 + 8);
  v83 = sub_10000D134(v165);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_100741AF4();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v128 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v140)(v67);
  v84 = swift_allocObject();
  *(v84 + 16) = v152;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v160 = v84;
  sub_1007543A4();
  v85 = v138;
  (v146)(v75, v148, v138);
  v86 = v129;
  sub_100750CE4();
  v87 = v85;
  v145(v75, v85);
  v144(v73, v72);
  v88 = v137;
  (v143)(v67, v137);
  sub_10000C8CC(&v161, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v164);
  sub_10000C620(v165);
  v113 = 2 * v86;
  v89 = v174;
  v90 = v175;
  v91 = sub_10000C888(v173, v174);
  v166 = v89;
  v167 = *(v90 + 8);
  v92 = sub_10000D134(v165);
  (*(*(v89 - 8) + 16))(v92, v91, v89);
  sub_100741AE4();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v93 = swift_allocObject();
  *(v93 + 16) = v152;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v160 = v93;
  sub_1007543A4();
  (v146)(v75, v148, v87);
  v94 = v113;
  sub_100750CE4();
  v145(v75, v87);
  v144(v73, v72);
  v95 = v88;
  (v143)(v67, v88);
  sub_10000C8CC(&v161, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v164);
  sub_10000C620(v165);
  v129 += v94;
  v96 = v171;
  v97 = v172;
  v98 = sub_10000C888(v170, v171);
  v166 = v96;
  v167 = *(v97 + 8);
  v99 = sub_10000D134(v165);
  (*(*(v96 - 8) + 16))(v99, v98, v96);
  sub_100741B04();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v100 = swift_allocObject();
  *(v100 + 16) = v152;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v160 = v100;
  sub_1007543A4();
  v101 = v138;
  (v146)(v75, v148, v138);
  sub_100750CE4();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10000C8CC(&v161, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v164);
  sub_10000C620(v165);
  sub_100741B54();
  memset(v164, 0, sizeof(v164));
  (v140)(v67, v114, v95);
  v102 = swift_allocObject();
  *(v102 + 16) = v152;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v161 = v102;
  sub_1007543A4();
  (v146)(v75, v148, v101);
  sub_100750CE4();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10000C8CC(v164, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v165);
  v103 = v125;
  sub_100750CD4();
  sub_10000C620(v168);
  sub_10000C620(v169);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1007A5CF0;
  v105 = v139;
  *(v104 + 32) = v139;
  v106 = v105;
  v107 = sub_100751044();
  v108 = v127;
  sub_100750404();
  v110 = v109;

  (*(v126 + 8))(v103, v108);
  (*(v132 + 8))(v131, v133);
  sub_10000C620(v170);
  sub_10000C620(v173);
  sub_10000C620(v176);
  return v110;
}

double sub_100418DA4(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v172 = a3;
  v176 = a1;
  v148 = sub_100750F54();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v128 - v9;
  v145 = sub_100750D04();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v160 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_100750CC4();
  v183 = *(v181 - 8);
  __chkstk_darwin(v181);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100750CB4();
  v184 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_100750C64();
  v182 = *(v178 - 8);
  __chkstk_darwin(v178);
  v135 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750F84();
  v141 = *(v14 - 8);
  v142 = v14;
  __chkstk_darwin(v14);
  v140 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007479B4();
  v158 = *(v16 - 8);
  v159 = v16;
  __chkstk_darwin(v16);
  v163 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v157 = &v128 - v19;
  v177 = sub_10074CD14();
  *&v180 = *(v177 - 8);
  __chkstk_darwin(v177);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100750304();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100741E54();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  sub_100741E14();
  (*(v27 + 8))(v29, v26);
  v155 = sub_100750F34();
  swift_allocObject();
  v156 = sub_100750F14();
  sub_100741AA4();
  LODWORD(v175) = enum case for FontSource.useCase(_:);
  v30 = *(v23 + 104);
  v173 = v23 + 104;
  *&v174 = v30;
  v164 = v22;
  v30(v25);
  v31.super.isa = a3;
  v32.super.isa = sub_1007502F4(v31).super.isa;
  v33 = *(v23 + 8);
  v170 = v23 + 8;
  v171 = v33;
  v33(v25, v22);
  v34 = sub_100741D14();
  v35 = "onLayoutEnvironment>16";
  if (v34)
  {
    v35 = "ultType.Heading.InAppPurchase";
    v36._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v36._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v36._object = (v35 | 0x8000000000000000);
  v211._countAndFlagsBits = 0;
  v211._object = 0xE000000000000000;
  v165 = sub_1007458B4(v36, v211);
  v37 = v32.super.isa;
  sub_100741B24();
  v38 = sub_10074F3F4();
  v209 = v38;
  v169 = sub_10041AA54(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v210 = v169;
  v39 = sub_10000D134(v208);
  LODWORD(v167) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v40 = *(v38 - 8);
  v166 = *(v40 + 104);
  v168 = v40 + 104;
  v166(v39);
  sub_10074FC74();
  sub_10000C620(v208);
  v162 = v21;
  v139 = v37;
  sub_10074CD04();
  sub_10074CCE4();
  v41 = *(v180 + 8);
  *&v180 = v180 + 8;
  v165 = v41;
  v42 = v21;
  v43 = v177;
  v41(v42, v177);
  v179 = a2;
  sub_100741B84();
  v44 = v164;
  (v174)(v25, v175, v164);
  v45.super.isa = v172;
  isa = sub_1007502F4(v45).super.isa;
  v171(v25, v44);
  sub_10074EF34();
  v47 = isa;
  sub_100741B14();
  v206 = v38;
  v207 = v169;
  v48 = sub_10000D134(v205);
  (v166)(v48, v167, v38);
  sub_10074FC74();
  sub_10000C620(v205);
  v49 = v162;
  v134 = v47;
  sub_10074CD04();
  sub_10074CCE4();
  v165(v49, v43);
  sub_100741AC4();
  v50 = v164;
  (v174)(v25, v175, v164);
  v51 = v172;
  v52.super.isa = v172;
  v53 = sub_1007502F4(v52).super.isa;
  v171(v25, v50);
  sub_100741D24();
  v54 = v53;
  v55.super.isa = v51;
  sub_100741B74(v55);
  v203 = v38;
  v204 = v169;
  v56 = sub_10000D134(v202);
  (v166)(v56, v167, v38);
  sub_10074FC74();
  sub_10000C620(v202);
  v133 = v54;
  sub_10074CD04();
  sub_10074CCE4();
  v165(v49, v177);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v57 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v57 = qword_10093FF58;
  }

  v58 = v159;
  v59 = sub_10000D0FC(v159, v57);
  v60 = v158;
  v61 = v163;
  (*(v158 + 16))(v163, v59, v58);
  (*(v60 + 32))(v157, v61, v58);
  sub_100747964();
  sub_100747994();
  v62 = v155;
  swift_allocObject();
  v132 = sub_100750F14();
  v201[5] = v156;
  v201[4] = &protocol witness table for LayoutViewPlaceholder;
  v201[3] = v62;
  v201[0] = v132;

  sub_100741AD4();
  sub_10000C888(v198, v199);
  sub_100750574();
  sub_100741A94();
  v153 = sub_100751034();
  v154 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v63 = swift_allocObject();
  v180 = xmmword_1007A5CF0;
  *(v63 + 16) = xmmword_1007A5CF0;
  *(v63 + 32) = v51;
  v131 = v51;
  v64 = sub_100751044();
  sub_10074FC64();

  sub_10000C620(v198);
  sub_10000C518(&unk_100923060, qword_1007A5CA0);
  v65 = *(sub_100750CF4() - 8);
  v151 = *(v65 + 72);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  v130 = v67;
  *(v67 + 16) = xmmword_1007A97A0;
  v166 = (v67 + v66);
  sub_10000C888(v208, v209);
  sub_1007503C4();
  sub_100741AF4();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  LODWORD(v152) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v68 = v182;
  v69 = *(v182 + 104);
  v150 = v182 + 104;
  v161 = v69;
  v70 = v135;
  v69(v135);
  v71 = sub_10000C518(&unk_100944F30, &unk_1007ABDD0);
  v72 = *(v184 + 72);
  v162 = *(v184 + 80);
  v163 = v71;
  v149 = (v162 + 32) & ~v162;
  v176 = 2 * v72;
  v177 = 3 * v72;
  v175 = v72;
  v73 = swift_allocObject();
  v174 = xmmword_1007A5620;
  *(v73 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v189 = v73;
  v172 = sub_10041AA54(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v171 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
  v173 = sub_100016BFC();
  v74 = v136;
  v75 = v137;
  sub_1007543A4();
  LODWORD(v170) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v76 = v183;
  v77 = *(v183 + 104);
  v168 = v183 + 104;
  v169 = v77;
  v78 = v138;
  v79 = v181;
  v77(v138);
  sub_100750CE4();
  v80 = *(v76 + 8);
  v183 = v76 + 8;
  v167 = v80;
  v80(v78, v79);
  v81 = *(v184 + 8);
  v184 += 8;
  v165 = v81;
  v81(v74, v75);
  v82 = *(v68 + 8);
  v182 = v68 + 8;
  v164 = v82;
  v83 = v178;
  v82(v70, v178);
  sub_10000C8CC(&v192, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v195);
  sub_10000C620(v198);
  v84 = v206;
  v85 = v207;
  v86 = sub_10000C888(v205, v206);
  v199 = v84;
  v200 = v85[1];
  v87 = sub_10000D134(v198);
  (*(*(v84 - 8) + 16))(v87, v86, v84);
  sub_100741AE4();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v174;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v189 = v88;
  sub_1007543A4();
  v89 = v181;
  v169(v78, v170, v181);
  v90 = v151;
  sub_100750CE4();
  v167(v78, v89);
  v165(v74, v75);
  v91 = v70;
  v164(v70, v83);
  sub_10000C8CC(&v192, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v195);
  sub_10000C620(v198);
  v129 = 2 * v90;
  v92 = v203;
  v93 = v204;
  v94 = sub_10000C888(v202, v203);
  v199 = v92;
  v200 = v93[1];
  v95 = sub_10000D134(v198);
  (*(*(v92 - 8) + 16))(v95, v94, v92);
  sub_100741B04();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v96 = swift_allocObject();
  *(v96 + 16) = v174;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v189 = v96;
  sub_1007543A4();
  v97 = v181;
  v169(v78, v170, v181);
  v98 = v129;
  sub_100750CE4();
  v167(v78, v97);
  v165(v74, v75);
  v99 = v178;
  v164(v91, v178);
  sub_10000C8CC(&v192, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(v195);
  sub_10000C620(v198);
  v152 = v98 + v151;
  sub_100741B34();
  sub_100741A94();
  v196 = &type metadata for CGFloat;
  v197 = &protocol witness table for CGFloat;
  v195[0] = v100;
  v161(v91, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v99);
  v101 = swift_allocObject();
  *(v101 + 16) = v174;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v192 = v101;
  sub_1007543A4();
  v102 = v181;
  v169(v78, v170, v181);
  sub_100750CE4();
  v167(v78, v102);
  v165(v74, v75);
  v164(v91, v99);
  sub_10000C620(v198);
  sub_10000C8CC(v195, &qword_100931390, &qword_1007ABDE0);
  v103 = v160;
  sub_100750CD4();
  sub_100741A94();
  v104 = swift_allocObject();
  *(v104 + 16) = v180;
  v105 = v131;
  *(v104 + 32) = v131;
  v106 = v105;
  v107 = sub_100751044();
  sub_10074FC64();

  sub_100741A94();
  v108 = swift_allocObject();
  *(v108 + 16) = v180;
  *(v108 + 32) = v106;
  v109 = v106;
  v110 = sub_100751044();
  sub_10074FC64();

  sub_100741A94();
  v111 = swift_allocObject();
  *(v111 + 16) = v180;
  *(v111 + 32) = v109;
  v112 = v109;
  v113 = sub_100751044();
  sub_10074FC64();

  sub_100741B64();
  sub_10000C888(v198, v199);
  sub_100750574();
  sub_10000C620(v198);
  sub_1007503C4();
  v114 = v145;
  v196 = v145;
  v197 = &protocol witness table for VerticalFlowLayout;
  v115 = sub_10000D134(v195);
  v116 = v143;
  (*(v143 + 16))(v115, v103, v114);
  sub_10000C824(v198, &v192);
  v191 = &protocol witness table for Double;
  v190 = &type metadata for Double;
  v189 = 0;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v117 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v118 = *(v146 + 104);
  v119 = v148;
  v118(v144, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v148);
  v185[3] = sub_1007507D4();
  v185[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v185);
  sub_1007507C4();
  v118(v147, v117, v119);
  v120 = v140;
  sub_100750F74();
  sub_10000C620(v198);
  (*(v116 + 8))(v160, v114);

  sub_10000C620(v201);
  v121 = swift_allocObject();
  *(v121 + 16) = v180;
  *(v121 + 32) = v112;
  v122 = v112;
  v123 = sub_100751044();
  sub_10041AA54(&qword_100936F08, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
  v124 = v142;
  sub_100750404();
  v126 = v125;

  (*(v141 + 8))(v120, v124);
  (*(v158 + 8))(v157, v159);
  sub_10000C620(v202);
  sub_10000C620(v205);
  sub_10000C620(v208);
  return v126;
}

double _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0F8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_100741E54();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100741B94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_100747C14();
  __chkstk_darwin(v10 - 8);
  v28 = sub_10074F704();
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v3;
  v14 = sub_100741EC4();

  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_100746914();

  v15 = v29;
  sub_10074F674();
  v17 = v16;
  v19 = v18;
  if (sub_100753804())
  {
    sub_100741DD4();
    sub_100741E04();
    sub_100741E44();
    sub_100741B44();
    v20 = sub_10041787C(v14, v6, v15, v17, v19);

    v21 = *(v4 + 8);
    v22 = v25;
    v21(v6, v25);
    (*(v26 + 8))(v2, v27);
    v21(v9, v22);
  }

  else
  {
    v20 = sub_100418DA4(v14, v9, v15, v17, v19);

    (*(v4 + 8))(v9, v25);
  }

  (*(v11 + 8))(v13, v28);
  return v20;
}

uint64_t sub_10041AA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10041AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = xmmword_1007C0480;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 1;
  v8 = 16 * v4 + 40;
  while (1)
  {
    if (v4 == 3)
    {
      sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70, &unk_1007AC470);
      sub_10010ABC4();
      sub_100752FF4();

      return;
    }

    if (v7 == ++v4)
    {
      break;
    }

    v9 = v8 + 16;
    v10 = *&v15[v8];
    v8 += 16;
    if (v10)
    {
      v11 = *&v15[v9 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1002554F8(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1002554F8((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
}

unint64_t sub_10041AE34(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SearchBar();
  v2 = objc_msgSendSuper2(&v9, "keyCommands");
  if (v2)
  {
    v3 = v2;
    sub_100016C60(0, &unk_100926F50, UIKeyCommand_ptr);
    v4 = sub_1007532A4();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v10 = v4;
  v5 = UIKeyInputEscape;
  v11._object = 0x80000001007699B0;
  v11._countAndFlagsBits = 0xD000000000000035;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1007458B4(v11, v12);
  v6 = sub_100753064();

  v7 = [objc_opt_self() keyCommandWithInput:v5 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v6];

  sub_100753284();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return v10;
}

void sub_10041B08C()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v29._object = 0x800000010077BC00;
    v29._countAndFlagsBits = 0xD000000000000012;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007458B4(v29, v31);
    v3 = sub_100753064();
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    *(inited + 40) = v2;
    v5 = NSFontAttributeName;
    v6 = v2;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    type metadata accessor for Key(0);
    sub_100168B0C();
    isa = sub_100752F34().super.isa;

    [v3 sizeWithAttributes:isa];
    v9 = v8;

    v10 = [v0 searchTextField];
    v11 = [v0 searchTextField];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v10 textRectForBounds:{v13, v15, v17, v19}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    if (ceil(v9) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x800000010077BC20;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_1007458B4(v30, v32);
    }

    v28 = sub_100753064();

    [v0 setPlaceholder:v28];
  }
}

id sub_10041B348(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10041B3B4()
{
  result = qword_100936F38;
  if (!qword_100936F38)
  {
    sub_100746BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F38);
  }

  return result;
}

uint64_t sub_10041B40C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100752624();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100752DA4();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    sub_100752DB4();
    return (*(v4 + 8))(v7, v3);
  }
}

double sub_10041B544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_100752F44();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

id sub_10041B5F8()
{
  v0 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_100749404();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100741264();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v11 = sub_100752DE4();
  sub_100746BB4();
  sub_1007493F4();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_100144D70(v2);
    sub_10041B968();
    swift_allocError();
    sub_100752DA4();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_100741204(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_10041B9BC;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10041B544;
    aBlock[3] = &unk_100875410;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_10041B968()
{
  result = qword_100936F40;
  if (!qword_100936F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F40);
  }

  return result;
}

double sub_10041B9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10041B9F0()
{
  result = qword_100936F48;
  if (!qword_100936F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F48);
  }

  return result;
}

void sub_10041BA44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100922CA0, &unk_1007A56C0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074D904();
        sub_1004211EC(&qword_100938F40, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100938F40, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041C0D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100926268, qword_1007C06D0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_100421258;
      v14[1] = v13;
      v17 = v12;

      sub_1000164A8(v15, v16);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100938FA0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v18, v19);
    v20 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v20);
    sub_1000164A8(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v21 = objc_allocWithZone(sub_100750FC4());
    v22 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v22);
    sub_10074C0A4();
    sub_1004211EC(&qword_100938FA0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_10041C618(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100926C68, &qword_1007AA018);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_100421258;
      v14[1] = v13;
      v17 = v12;

      sub_1000164A8(v15, v16);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&unk_100926D30, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v18, v19);
    v20 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v20);
    sub_1000164A8(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v21 = objc_allocWithZone(sub_100750FC4());
    v22 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v22);
    sub_10074C5B4();
    sub_1004211EC(&unk_100926D30, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_10041CB60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100927D78, &unk_1007C06C0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074D994();
        sub_1004211EC(&qword_1009390F0, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_1009390F0, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041D1EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_10092BAF0, &qword_1007B0270);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074CA04();
        sub_1004211EC(&qword_100939030, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100939030, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041D878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&unk_10092D480, &unk_1007C06B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074E4D4();
        sub_1004211EC(&qword_100938F80, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100938F80, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041DF04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009360B8, &unk_1007BE1D0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074BF94();
        sub_1004211EC(&qword_100937508, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100937508, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041E590(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100933EA0, &unk_1007BB0B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074C964();
        sub_1004211EC(&qword_100937510, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100937510, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100421258;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041EC1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009374D0, &qword_1007C0698);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_10074B964();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v48 = objc_allocWithZone(sub_100750FC4());
      v49 = sub_100750FB4();
      v50 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_10074B964();

        sub_10074D5D4();
        sub_1004211EC(&qword_100938F60, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_100748C54();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100938F60, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v31, v32);
    v33 = sub_100751054();
    v34 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_10074B964();

      sub_1000164A8(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_100420F2C;
    v27[1] = v26;
    v30 = v25;

    sub_1000164A8(v28, v29);
  }

  sub_10074B824();
}

void sub_10041F2A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009324A0, &qword_1007B9668);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_100421258;
      v14[1] = v13;
      v17 = v12;

      sub_1000164A8(v15, v16);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_100751094();
    sub_1004211EC(&qword_100938FC0, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_10001B5AC(v18, v19);
    v20 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v20);
    sub_1000164A8(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v21 = objc_allocWithZone(sub_100750FC4());
    v22 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v22);
    sub_10074DEE4();
    sub_1004211EC(&qword_100938FC0, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

double sub_10041F7F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_10074B834();

    if (v5)
    {
      sub_100746BF4();
    }
  }

  return result;
}

char *sub_10041F880(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_100980270 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10074D4D4();
  sub_100752764();
  sub_100752D34();
  *(v2 + qword_100936F50) = v11;

  v5 = sub_10046CCB8(a1, a2);
  v6 = *&v5[qword_10097EE38];
  v7 = v5;
  v8 = v6;

  sub_100749AD4();

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A6580;
  *(v9 + 32) = sub_1007519E4();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = sub_100751544();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  sub_100753704();

  swift_unknownObjectRelease();

  return v7;
}

void sub_10041FA2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752AC4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    sub_100752A84();
    sub_10000C8CC(v26, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    (*(v8 + 8))(v11, v7);
    sub_10000C518(&unk_1009249D0, qword_1007A7B10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007A6580;
    *(v20 + 32) = sub_1007519E4();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = sub_100751554();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753704();
    swift_unknownObjectRelease();

    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v21 = sub_100750B04();
    sub_10000D0FC(v21, qword_1009820F8);
    sub_1007502D4();
    sub_100750564();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10041FE28(void *a1)
{
  v1 = a1;
  sub_10041FA2C();
}

void sub_10041FED4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

void sub_10042001C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10074D4C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10074D484();
  (*(v11 + 8))(v13, v10);
}

void sub_100420180(void *a1)
{
  v1 = a1;
  sub_100420158();
}

uint64_t sub_1004201F0(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10074D4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v6 + v15, v22);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
    v18 = a2;
    v19 = v7;
    sub_10000C888(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_100742974();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000C620(v21);
  }

  else
  {
    v16 = sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10074D484();
  return (*(v8 + 8))(v10, v7);
}

void sub_100420484(void *a1)
{
  v1 = a1;
  sub_1004201C8();
}

id sub_1004204CC()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000C518(&qword_100922CE0, &qword_1007A56D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5620;
  sub_10000C518(&qword_1009374F8, &unk_1007C06A0);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10074DB94();
  v4 = sub_100420FF0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_1004211EC(&qword_100922CF8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "me\t");
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_1004211EC(&qword_1009374E8, type metadata accessor for SearchFocusDiffablePageViewController, &unk_1007B7520);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v2 + 64) = sub_10074E2F4();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10074D7C4();
    swift_allocObject();
    v8 = sub_10074D7B4();
    sub_1006B7418();
    if (swift_dynamicCastClass())
    {
      sub_10074D794();
      sub_10074D7A4();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10042076C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_100420F9C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1004207A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1004211EC(&qword_1009374E8, type metadata accessor for SearchFocusDiffablePageViewController, &unk_1007B7520);
  sub_10074DA64();
  v3 = sub_10074DA44();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  v4 = sub_10074DA34();
  v21[3] = swift_getObjectType();
  v21[0] = v4;
  sub_10000C5B4(v20, v19);
  sub_10000C610(v19, v17);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_100254A80((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    *&v5[2 * v7 + 4] = v15;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v21, v19);
  sub_10000C610(v19, v17);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v18)
  {
    v16 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100254A80(0, v5[2] + 1, 1, v5);
    }

    v9 = v5[2];
    v8 = v5[3];
    v10 = v16;
    if (v9 >= v8 >> 1)
    {
      v14 = sub_100254A80((v8 > 1), v9 + 1, 1, v5);
      v10 = v16;
      v5 = v14;
    }

    v5[2] = v9 + 1;
    *&v5[2 * v9 + 4] = v10;
  }

  swift_arrayDestroy();
  v11 = *(v1 + qword_10097EE58);
  v12 = type metadata accessor for SearchFocusLayoutSectionProvider(0);
  swift_allocObject();

  result = sub_10021CC04(v22, v5, v11);
  a1[3] = v12;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_100420A80@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  swift_allocObject();
  v4 = sub_100744584();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_100420F48();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100420B28(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_100980270];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100420BD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1004211EC(&qword_1009374D8, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider, &unk_1007CE068);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_100420C8C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009374D0, &qword_1007C0698);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_10041EC1C(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10074D464();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100420DC4()
{

  v1 = v0 + qword_100980270;

  return sub_10000C4F0(v1);
}

uint64_t sub_100420E04(uint64_t a1)
{

  v2 = a1 + qword_100980270;

  return sub_10000C4F0(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController(uint64_t a1)
{
  result = qword_100936F80;
  if (!qword_100936F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100420EF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100420F48()
{
  result = qword_1009374E0;
  if (!qword_1009374E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009374E0);
  }

  return result;
}

unint64_t sub_100420F9C()
{
  result = qword_1009374F0;
  if (!qword_1009374F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009374F0);
  }

  return result;
}

unint64_t sub_100420FF0()
{
  result = qword_100937500;
  if (!qword_100937500)
  {
    sub_10000C724(&qword_1009374F8, &unk_1007C06A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937500);
  }

  return result;
}

void sub_100421054(void *a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v6 = sub_100750B04();
  sub_10000D0FC(v6, qword_1009820F8);
  sub_1007502D4();
  sub_100750564();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004211EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MSODiffablePageViewController(uint64_t a1)
{
  result = qword_100937540;
  if (!qword_100937540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004212B0(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = sub_10074F654();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v10 - 8);
  v51 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = v40 - v13;
  __chkstk_darwin(v14);
  v49 = v40 - v15;
  __chkstk_darwin(v16);
  v45 = v40 - v17;
  __chkstk_darwin(v18);
  v44 = v40 - v19;
  __chkstk_darwin(v20);
  v43 = v40 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v26 = *(sub_10074F584() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_1007A5620;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_1007C0730, xmmword_1007C0720);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  v40[1] = v29;
  sub_10074F544();
  v57 = 0x3FF0000000000000;
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_1007C0750, xmmword_1007C0740);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  sub_10074F544();
  v57 = 0x3FF0000000000000;
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_1007C0770, xmmword_1007C0760);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  sub_10074F544();
  return v47;
}

uint64_t sub_1004219F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980278);
  sub_10000D0FC(v4, qword_100980278);
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009807C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_100421C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10074AB44();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = sub_100750304();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel;
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_1009807C8);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = sub_100745C84();
  v25 = objc_allocWithZone(v24);
  v26 = sub_100745C74();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  if (qword_100921308 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v19, qword_100981650);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = sub_100745C74();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView(0);
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v37 = v35;
  v38 = sub_100753E04();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel];
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_100920140;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_10097D258;
    *(inited + 64) = sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr);
    *(inited + 40) = v44;
    v45 = v44;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = sub_100753064();

    type metadata accessor for Key(0);
    sub_100168B0C();
    isa = sub_100752F34().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1007A6580;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_100920140;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_10097D258;
    v57 = sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = sub_100753DF4();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_100413A18(v52);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510, &unk_1007A6620);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = sub_100753064();

    type metadata accessor for Key(0);
    sub_100168B0C();
    v63 = sub_100752F34().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_100920D78;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_10000D0FC(v79, qword_100980640);
  v69 = v80;
  sub_1001154F8(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_1002FE2B0(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

void sub_1004226E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView(0);
  v21.receiver = v0;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v22);
  if (qword_100920D78 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_10000D0FC(v10, qword_100980640);
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_100980620);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100422F20;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100045E0C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_1008756A8;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_100422A18(char *a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel];
  [a1 bounds];
  [v14 sizeThatFits:{v15, v16}];
  v18 = v17;
  v20 = v19;
  v21 = v13 + v19;
  [a1 bounds];
  v22 = (CGRectGetWidth(v32) - v11) * 0.5;
  [a1 bounds];
  [v7 setFrame:{v22, (CGRectGetHeight(v33) - v21) * 0.5, v11, v13}];
  [a1 bounds];
  Width = CGRectGetWidth(v34);
  [v7 lastBaselineMaxY];
  v25 = v24;
  if (qword_100920BD0 != -1)
  {
    swift_once();
  }

  v26 = sub_100750B04();
  sub_10000D0FC(v26, qword_100980278);
  v27 = [a1 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_100422CE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView(uint64_t a1)
{
  result = qword_100937B68;
  if (!qword_100937B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100422E30(uint64_t a1)
{
  result = sub_100750B04();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100422EE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100422F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100422F50()
{
  v1 = sub_10074AB44();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel;
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_1009807C8);
  v16 = *(v14 - 8);
  v30 = *(v16 + 16);
  v30(v5, v15, v14);
  v17 = *(v16 + 56);
  v17(v5, 0, 1, v14);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v19 = *(v35 + 104);
  v32 = v1;
  v35 += 104;
  v19(v33, enum case for DirectionalTextAlignment.none(_:), v1);
  v20 = sub_100745C84();
  v21 = objc_allocWithZone(v20);
  v22 = sub_100745C74();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  if (qword_100921308 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v14, qword_100981650);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = sub_100745C74();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10042341C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_100749AF4());
  *&v4[v14] = sub_100749AE4();
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_100920BD8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
  v22 = qword_100937B80;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016C60(0, &qword_10092B280, UIImage_ptr), v25 = v22, v26 = sub_100753FC4(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_100920BE0;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100937B88);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_10037FD1C(v12);

  v34 = qword_100920BE8;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_10021AC00(qword_100937BA0, v68);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_10021AC5C(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_10021ACB8(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_100920BF0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v29, qword_100937BC8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1001BBA8C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_100424BA4();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_10074E264();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_10074E204();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_1007539D4();
  v60 = sub_100753064();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_1007539D4();
  v64 = sub_100753064();

  sub_1007539D4();
  v65 = sub_100753064();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_100423C08()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_10074E224();

    if (swift_weakLoadStrong())
    {
      sub_10074B544();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_10074B554();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100423CD8()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_100937B80 = v5;
  return result;
}

void sub_100423DE4()
{
  qword_100937BB8 = &type metadata for CGFloat;
  unk_100937BC0 = &protocol witness table for CGFloat;
  qword_100937BA0[0] = 0x4008000000000000;
}

uint64_t sub_100423E20()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100937BE0);
  v1 = sub_10000D0FC(v0, qword_100937BE0);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100423EE8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_100920BF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100937BE0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_100750B04();
  v12 = &protocol witness table for StaticDimension;
  sub_10000D134(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000D134(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  sub_100012160(&v13, &unk_100937BF8);
  return sub_100012160(&v10, &unk_100937C20);
}

id sub_1004240E4(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_1004241C0()
{
  v1 = v0;
  v2 = sub_100750354();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750304();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A014();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v47 - v9;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v16 = sub_100747064();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v20;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v49 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v59 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v16, qword_10097E3A8);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_100746FD4();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v29 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v29 = qword_10093FF58;
    }

    v30 = sub_10000D0FC(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v47;
    (*(v11 + 32))(v47, v31, v10);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v11 + 8))(v32, v10);
  }

  sub_100746F14();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v59, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  v67[3] = type metadata accessor for ImageHeadingView();
  v67[4] = &protocol witness table for UIView;
  v67[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  v66[3] = type metadata accessor for SearchHeadingView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v34;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v64[0] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100016C60(0, &qword_100929830, UICollectionView_ptr);
    v35 = v33;
    v36 = v34;
    sub_1007503E4();
    v64[3] = sub_1007507D4();
    v64[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v64);
    sub_1007507C4();
    if (qword_100920BF0 == -1)
    {
LABEL_16:
      v37 = sub_100750534();
      v38 = sub_10000D0FC(v37, qword_100937BC8);
      v39 = v48;
      (*(*(v37 - 8) + 16))(v48, v38, v37);
      v41 = v50;
      v40 = v51;
      (*(v50 + 104))(v39, enum case for FontSource.useCase(_:), v51);
      v63[3] = sub_100750B04();
      v63[4] = &protocol witness table for StaticDimension;
      sub_10000D134(v63);
      v61 = v40;
      v62 = &protocol witness table for FontSource;
      v42 = sub_10000D134(v60);
      (*(v41 + 16))(v42, v39, v40);
      sub_100750B14();
      (*(v41 + 8))(v39, v40);
      v61 = &type metadata for CGFloat;
      v62 = &protocol witness table for CGFloat;
      v60[0] = 0x4030000000000000;
      v43 = v53;
      sub_10074A004();
      v45 = v54;
      v44 = v55;
      (*(v54 + 16))(v52, v43, v55);
      sub_10000C824(v67, v64);
      sub_10000C824(v66, v63);
      sub_10000C824(v65, v60);
      sub_10074A034();
      swift_allocObject();
      v64[0] = sub_10074A024();
      (*(v45 + 8))(v43, v44);
      sub_10000C620(v65);
      sub_10000C620(v66);
      sub_10000C620(v67);
      sub_100426E4C(&qword_10092E2D8, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
      v46 = v56;
      sub_100751124();
      (*(v57 + 8))(v46, v58);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
}

id sub_100424BA4()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_100425610;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002B6430;
  v7[3] = &unk_1008757A0;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

unsigned __int8 *sub_100424CD0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
    v6 = *&result[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = [result contentView];

      if (v8)
      {
        [v8 layoutMargins];
        v11 = sub_1004262D0(v5, v6, a2, v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v15 = v12;
          v16 = v12;

          aBlock[4] = sub_100426784;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1005D5E28;
          aBlock[3] = &unk_1008757C8;
          v17 = _Block_copy(aBlock);

          [v16 setVisibleItemsInvalidationHandler:v17];

          _Block_release(v17);
          v8 = v16;
        }

        else
        {
          v15 = 0;
        }

        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100424EB8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v7 = Strong;

    if (v6)
    {
      sub_10074B544();
      sub_100744F54();
    }
  }
}

id sub_100425180(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100425300(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_100423C08();

  return result;
}

void (*sub_100425364(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1004253FC;
}

void sub_1004253FC(void **a1, char a2, __n128 a3)
{
  v4 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_100423C08();
  }

  free(v4);
}

uint64_t sub_100425484()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1004254E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

uint64_t sub_1004255A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004255D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100425618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100425630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v85 = a8;
  v84 = a7;
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v78 = a1;
  v16 = sub_100750304();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v86 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074A014();
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v89 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v72 - v21;
  v94 = sub_10074CD14();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ImageHeadingView();
  if (qword_100920BD8 != -1)
  {
    swift_once();
  }

  v24 = qword_100937B80;
  if (qword_100920BE0 != -1)
  {
    swift_once();
  }

  v83 = sub_100750534();
  sub_10000D0FC(v83, qword_100937B88);
  if (qword_100920BE8 != -1)
  {
    swift_once();
  }

  v25 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v26 = [a15 traitCollection];
  v93 = v25;
  v27 = sub_100753C14();

  v28 = objc_opt_self();
  v76 = v27;
  v29 = [v28 configurationWithFont:v27];
  v30 = [v24 imageByApplyingSymbolConfiguration:v29];
  v31 = v30;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_100750F34();
  swift_allocObject();
  v33 = sub_100750F14();

  v95 = a15;
  v34 = [a15 traitCollection];
  sub_100753C14();

  v35 = sub_10074F3F4();
  *(&v104 + 1) = v35;
  v75 = sub_100426E4C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v105 = v75;
  v36 = sub_10000D134(&v103);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v74 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = v37 + 104;
  v73 = v38;
  v38(v36);
  sub_10074FC74();
  sub_10000C620(&v103);
  sub_10074CD04();
  v39 = sub_10074CCF4();
  v41 = v40;
  v42 = *(v96 + 8);
  v96 += 8;
  v42(v23, v94);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_100380868(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_100937BA0, &v103);

  swift_unknownObjectRelease();
  sub_1001A41D4(&v103, &v108);
  v44 = swift_allocObject();
  sub_100219FC4(&v108, (v44 + 16));
  swift_allocObject();
  v78 = sub_100750EF4();

  swift_unknownObjectRelease();

  sub_10000C620(&v103);
  if (qword_100920BF0 != -1)
  {
    swift_once();
  }

  v45 = v83;
  v46 = sub_10000D0FC(v83, qword_100937BC8);
  if (qword_100920BF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v45, qword_100937BE0);
  if (qword_100920C00 != -1)
  {
    swift_once();
  }

  v47 = [v95 traitCollection];
  v77 = v46;
  sub_100753C14();

  *(&v104 + 1) = v35;
  *&v105 = v75;
  v48 = sub_10000D134(&v103);
  v73(v48, v74, v35);
  sub_10074FC74();
  sub_10000C620(&v103);
  sub_10074CD04();
  v49 = sub_10074CCF4();
  v51 = v50;
  v42(v23, v94);
  v52 = swift_allocObject();
  v53 = v82;
  *(v52 + 16) = v81;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_100750EF4();
  sub_1001BD96C(&unk_100937BF8, &v103);
  v55 = swift_allocObject();
  v56 = v106;
  *(v55 + 48) = v105;
  *(v55 + 64) = v56;
  *(v55 + 80) = v107;
  v57 = v104;
  *(v55 + 16) = v103;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_100750EF4();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v84 & 1;
  *(v59 + 32) = v85;
  swift_allocObject();
  v60 = sub_100750EF4();
  *(&v104 + 1) = v32;
  *&v105 = &protocol witness table for LayoutViewPlaceholder;
  v102[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v103 = v78;
  v109 = v32;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v58;
  v102[3] = v32;
  v102[0] = v60;
  v101[3] = sub_1007507D4();
  v101[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v101);

  sub_1007507C4();
  v61 = v86;
  (*(*(v45 - 8) + 16))(v86, v77, v45);
  v63 = v87;
  v62 = v88;
  (*(v87 + 104))(v61, enum case for FontSource.useCase(_:), v88);
  v100[3] = sub_100750B04();
  v100[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v100);
  v98 = v62;
  v99 = &protocol witness table for FontSource;
  v64 = sub_10000D134(v97);
  (*(v63 + 16))(v64, v61, v62);
  sub_100750B14();
  (*(v63 + 8))(v61, v62);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97[0] = 0x4030000000000000;
  v65 = v90;
  sub_10074A004();
  v67 = v91;
  v66 = v92;
  (*(v91 + 16))(v89, v65, v92);
  sub_10000C824(&v103, v101);
  sub_10000C824(&v108, v100);
  sub_10000C824(v102, v97);
  sub_10074A034();
  swift_allocObject();
  v68 = sub_10074A024();
  (*(v67 + 8))(v65, v66);
  sub_10000C620(v102);
  sub_10000C620(&v108);
  sub_10000C620(&v103);
  *&v103 = v68;
  sub_100426E4C(&qword_10092E2A0, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_100750404();
  v70 = v69;

  return v70;
}

void sub_1004261E0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_100749AF4());
  *(v0 + v2) = sub_100749AE4();
  sub_100754644();
  __break(1u);
}

id sub_1004262D0(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v15 = v8;
  v16 = sub_100753064();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v17;
  sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_100753294().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_10042678C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000C518(&unk_10092E290, &qword_1007C08F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10000C518(&qword_100937CD0, &qword_1007B3030);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_1007518A4();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_100752564();
        v19 = sub_10074EDC4();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1007526C4();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_1003C0E00(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_100923960;
        v17 = &qword_1007A6240;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &unk_10092E290;
    v17 = &qword_1007C08F0;
    v18 = v7;
LABEL_7:
    sub_10000C8CC(v18, v16, v17);
  }
}

uint64_t sub_100426B10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_10092E290, &qword_1007C08F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = sub_10000C518(&qword_100937CD0, &qword_1007B3030);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-1] - v9;
  v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v11)
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
    return sub_10000C8CC(v5, &unk_10092E290, &qword_1007C08F0);
  }

  v12 = v11;
  sub_1007518A4();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000C8CC(v5, &unk_10092E290, &qword_1007C08F0);
  }

  result = (*(v7 + 32))(v10, v5, v6);
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v15[3] = sub_10074EFD4();
    v15[4] = sub_100426E4C(&qword_1009340B0, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

    sub_100752564();
    sub_10074E254();

    (*(v7 + 8))(v10, v6);
    return sub_10000C620(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100426D7C()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100426DB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100426DEC()
{
  sub_10000C620((v0 + 16));
  sub_10000C620((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100426E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100426EA8()
{
  result = qword_100937CD8;
  if (!qword_100937CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937CD8);
  }

  return result;
}

double sub_100426F50()
{
  v31 = sub_10074F704();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100749A94();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  v5 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100747C14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745324();
  sub_100427414(&qword_100926328, &type metadata accessor for UpsellBreakout, &protocol conformance descriptor for UpsellBreakout);
  sub_1007468B4();
  v13 = v33;
  if (!v33)
  {
    return 0.0;
  }

  sub_100746884();
  sub_100747C04();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  sub_1007525B4();

  (*(v6 + 8))(v8, v5);

  sub_100752DF4();
  sub_100427414(&qword_100935530, &type metadata accessor for NilState, &protocol conformance descriptor for NilState);
  v14 = v25;
  sub_1007468E4();
  v15 = v28;
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v17 = v16;
  v19 = v18;
  (*(v29 + 8))(v1, v31);
  v20 = sub_10007DC04();
  sub_1003C5678(v17, v19, v13, v20);
  v22 = v21;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v15, v32);
  (*(v26 + 8))(v14, v27);
  return v22;
}

uint64_t sub_100427414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100427460(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_100750634();
    swift_getWitnessTable();
    v1 = sub_1007512F4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

void sub_100427648(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)], *((swift_isaMask & *a1) + 0x50));
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  sub_1000164A8(*v2, v2[1]);

  swift_unknownObjectRelease();

  v3 = *((swift_isaMask & *a1) + 0xB0);
  swift_getAssociatedTypeWitness();
  sub_100750634();
  swift_getWitnessTable();
  v4 = sub_1007512F4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((swift_isaMask & *a1) + 0xD0)];
}

uint64_t sub_100427880()
{
  result = [v0 isTracking];
  if ((result & 1) == 0)
  {
    result = [v0 isDragging];
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      sub_100750634();
      swift_getWitnessTable();
      sub_1007512F4();
      sub_100751294();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1004279A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100740EA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v8 = a1;
  sub_100427880();

  return (*(v5 + 8))(v7, v4);
}

id sub_100427A8C(char a1)
{
  [v1 setContentSize:{0.0, 0.0}];
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = a1;
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_100427B18(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100427C64(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100427B18(a3);
}

id sub_100427CD0(void *a1)
{
  v1 = a1;
  v2 = sub_100427D04();

  return v2;
}

id sub_100427D04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

void sub_100427D3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_100427D90(a3);
}

id sub_100427D90(id a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "semanticContentAttribute");
  v7.receiver = v1;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, "setSemanticContentAttribute:", a1);
  if (v4 != a1)
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_100427EB8(void *a1)
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5A00;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000040;
  *(v2 + 40) = 0x800000010077C040;
  v3 = a1;
  sub_100754494();

  return result;
}

double sub_100427F68(void *a1)
{
  v1 = a1;
  v2 = sub_100427FAC(v1);

  return v2;
}

CGFloat sub_100427FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, &v1[*((v3 & v2) + 0x60)], v4, v6);
  (*(*((v3 & v2) + 0x58) + 24))(v10, v4);
  (*(v5 + 8))(v8, v4);
  return UIViewNoIntrinsicMetric;
}

CGFloat sub_100428140(uint64_t a1, CGFloat Width)
{
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - v8;
  if (Width < COERCE_DOUBLE(1))
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v7 = swift_isaMask & *v2;
  }

  (*(v6 + 16))(v9, &v2[*(v7 + 96)], v5);
  (*(*(v4 + 88) + 24))(v20, v5);
  (*(v6 + 8))(v9, v5);
  return Width;
}

double sub_100428384(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = sub_100428140(v3, a2);

  return v4;
}

uint64_t sub_1004283D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v17 - v8;
  v10 = *((v4 & v3) + 0x60);
  v11 = *(v6 + 16);
  v11(v17 - v8, &v2[v10], v5, v7);
  v12 = *((v4 & v3) + 0x58);
  v13 = (*(v12 + 32))(v5, v12);
  v14 = *(v6 + 8);
  v14(v9, v5);
  (v11)(v9, &v2[v10], v5);
  (*(v12 + 24))(v17, v5, v12);
  result = (v14)(v9, v5);
  v16 = ceil(v13 / v17[9]);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1004285DC(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x50);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(a1).n128_u64[0];
  v8 = v42 - v7;
  v9 = [v1 contentSize];
  if (v11 == 0.0 && v10 == 0.0)
  {
    v12 = sub_1004283D8(v9);
    v13 = *((swift_isaMask & *v1) + 0x60);
    v47 = *(v5 + 16);
    v42[1] = v5 + 16;
    v43 = v13;
    v14 = v13;
    v47(v8, v1 + v13, v4);
    v49 = *(v3 + 88);
    v15 = v49 + 24;
    v16 = *(v49 + 24);
    v16(v50, v4);
    v48 = v15;
    v17 = v16;
    v18 = *(v5 + 8);
    v44 = v16;
    v45 = v18;
    v18(v8, v4);
    v19 = v50[9];
    v20 = v47;
    v47(v8, v1 + v14, v4);
    v17(v51, v4, v49);
    v21 = v45;
    v45(v8, v4);
    v46 = v5 + 8;
    v22 = *&v51[1];
    v20(v8, v1 + v43, v4);
    v23 = v44;
    v44(v52, v4, v49);
    v21(v8, v4);
    v24 = v22 + *&v52[3] + 0.0;
    v25 = v43;
    v26 = v20;
    v20(v8, v1 + v43, v4);
    v23(v53, v4, v49);
    v27 = v45;
    v45(v8, v4);
    v28 = v24 + *&v53[4] * v12;
    v26(v8, v1 + v25, v4);
    v29 = v49;
    v30 = v44;
    v44(v54, v4, v49);
    v27(v8, v4);
    v31 = v28 + (v12 + -1.0) * *&v54[6];
    v32 = v47;
    v47(v8, v1 + v25, v4);
    v30(v55, v4, v29);
    v33 = v45;
    v45(v8, v4);
    v34 = v55[0];
    v32(v8, v1 + v25, v4);
    v35 = v49;
    v36 = v44;
    v44(v56, v4, v49);
    v33(v8, v4);
    v37 = v34 + *&v56[2] + 0.0;
    v38 = v43;
    v47(v8, v1 + v43, v4);
    v36(v57, v4, v35);
    v39 = v45;
    v45(v8, v4);
    v40 = v37 + *&v57[5] * v19;
    v47(v8, v1 + v38, v4);
    v44(v58, v4, v49);
    v39(v8, v4);
    sub_100428B64([v1 setContentSize:{v31, v40 + (v19 + -1.0) * *&v58[7]}]);
    v41 = (v1 + *((swift_isaMask & *v1) + 0xA8));
    if ((v41[2] & 1) == 0)
    {
      [v2 setContentOffset:{*v41, v41[1]}];
      *v41 = 0.0;
      v41[1] = 0.0;
      *(v41 + 16) = 1;
      if (*(v2 + *((swift_isaMask & *v2) + 0x88)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100744F44();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_100428B64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v26 - v8;
  v10 = *(v6 + 16);
  v28 = *((v4 & v3) + 0x60);
  v29 = v10;
  (v10)(v9, v2 + v28, v5, v7);
  v11 = *((v4 & v3) + 0x58);
  v12 = *(v11 + 24);
  v12(v30, v5, v11);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *&v30[4] + *&v30[6];
  [v2 frame];
  Width = CGRectGetWidth(v33);
  result = [v2 contentInset];
  v18 = ceil((Width - v17) / v14);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v13;
  v19 = v12;
  v20 = v18;
  v21 = *(v2 + *((swift_isaMask & *v2) + 0x70));
  if (*(v2 + *((swift_isaMask & *v2) + 0x78)) == 1)
  {
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (!v22)
    {
      if (v23 + 0x4000000000000000 >= 0)
      {
        v24 = 2 * v23;
        v29(v9, v2 + v28, v5);
        v19(v31, v5, v11);
        result = v27(v9, v5);
        if ((v24 * v32) >> 64 == (v24 * v32) >> 63)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = 2 * v21;
  v29(v9, v2 + v28, v5);
  v19(v31, v5, v11);
  result = v27(v9, v5);
  if ((v25 * v32) >> 64 != (v25 * v32) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v20, v25 * v32))
  {
LABEL_12:
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    sub_100750634();
    swift_getWitnessTable();
    sub_1007512F4();
    sub_1007512A4();
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_100428F84(uint64_t a1, double a2)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47 - v13;
  [v3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 16);
  v54 = *((swift_isaMask & *v3) + 0x60);
  v55 = v23;
  v23(v14, v3 + v54, v7);
  v24 = *((v6 & v5) + 0x58);
  v25 = *(v24 + 32);
  v26 = v25(v7, v24);
  v53 = *(v8 + 8);
  v53(v14, v7);
  if (v26 >= 1)
  {
    v59.origin.x = v16;
    v59.origin.y = v18;
    v59.size.width = v20;
    v59.size.height = v22;
    if (!CGRectIsEmpty(v59))
    {
      v50 = v24 + 32;
      v51 = v25;
      v48 = v10;
      v27 = v54;
      v55(v14, v3 + v54, v7);
      v28 = *(v24 + 24);
      v28(v56, v7, v24);
      v29 = v53;
      v53(v14, v7);
      v30 = v56[4] + v56[6];
      v31 = v3 + v27;
      v32 = v55;
      v55(v14, v31, v7);
      v28(v57, v7, v24);
      v29(v14, v7);
      v49 = v57[9];
      v32(v14, v3 + v54, v7);
      v28(v58, v7, v24);
      v29(v14, v7);
      v33 = *&v58[3];
      v34 = 0.0;
      if (a2 >= 0.0)
      {
        v34 = a2;
      }

      v35 = v34 + *&v58[1];
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      v37 = floor(v35 / v30);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = floor((v35 + Width - v33) / v30);
          if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v38 > -9.22337204e18)
            {
              if (v38 < 9.22337204e18)
              {
                v39 = v37;
                v40 = v38;
                if (v52)
                {
                  v41 = *(v3 + *((swift_isaMask & *v3) + 0x70));
                  v42 = __OFSUB__(v39, v41);
                  v39 -= v41;
                  v43 = v51;
                  if (v42)
                  {
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v42 = __OFADD__(v40, v41);
                  v40 += v41;
                  if (v42)
                  {
LABEL_29:
                    __break(1u);
                    return;
                  }

                  v44 = v49;
                }

                else
                {
                  v43 = v51;
                  v44 = v49;
                }

                if ((v39 * v44) >> 64 == (v39 * v44) >> 63)
                {
                  v52 = v39 * v44;
                  v45 = v3 + v54;
                  v46 = v48;
                  v55(v48, v45, v7);
                  v43(v7, v24);
                  v53(v46, v7);
                  if ((v40 * v44) >> 64 == (v40 * v44) >> 63)
                  {
                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void sub_1004294D4(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  v3 = v2[10];
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v34 - v7;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v1;
  v10 = v2[12];
  v12 = v4 + 16;
  v11 = *(v4 + 16);
  v40 = v5;
  v45 = v11;
  (v11)(v8, &v1[v10], v3, v6);
  v13 = v2[11];
  v14 = (*(v13 + 32))(v3, v13);
  v16 = *(v4 + 8);
  v15 = v4 + 8;
  v43 = v16;
  v16(v8, v3);
  if (v14 <= v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45(v8, &v9[v10], v3);
  v38 = v12;
  v44 = v10;
  v17 = v9;
  v41 = v9;
  v42 = v15;
  v18 = *(v13 + 24);
  v18(v46, v3, v13);
  v19 = v43;
  v43(v8, v3);
  v20 = v17 + v44;
  v21 = v45;
  v45(v8, v20, v3);
  v18(v47, v3, v13);
  v19(v8, v3);
  v22 = v44;
  v21(v8, &v41[v44], v3);
  v18(v48, v3, v13);
  v43(v8, v3);
  if (!v49)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v49;
  v23 = v41;
  v45(v8, &v41[v22], v3);
  v36 = v18;
  v37 = v13 + 24;
  v18(v50, v3, v13);
  v24 = v43;
  v43(v8, v3);
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34[1] = v40 % v51;
  v35 = v40 / v35;
  v39 = v13;
  if (v35 < 1)
  {
    v26 = v44;
    v28 = v45;
    v27 = v36;
    if (v40 % v51)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v25 = v40 % v51;
    v45(v8, &v23[v44], v3);
    v36(v52, v3, v13);
    v24(v8, v3);
    if (v25)
    {
      v26 = v44;
      v23 = v41;
      v27 = v36;
LABEL_9:
      v45(v8, &v23[v26], v3);
      v27(v53, v3, v39);
      v43(v8, v3);
      v26 = v44;
      v28 = v45;
      v45(v8, &v23[v44], v3);
      goto LABEL_12;
    }

    v26 = v44;
    v28 = v45;
    v23 = v41;
    v27 = v36;
  }

  v28(v8, &v23[v26], v3);
LABEL_12:
  v27(v54, v3, v39);
  v43(v8, v3);
  if ((v55 & 1) == 0)
  {
    return;
  }

  v28(v8, &v23[v26], v3);
  v29 = v39;
  v27(v56, v3, v39);
  v30 = v43;
  v43(v8, v3);
  if (!v57)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if ((v40 + 1) % v57)
  {
    v31 = v29;
    v32 = v23;
    v33 = v31;
    v45(v8, &v32[v44], v3);
    v27(v58, v3, v33);
    v30(v8, v3);
  }
}

void sub_100429AAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v1) + 0x50);
  v60 = *(v3 - 8);
  __chkstk_darwin(ObjectType);
  v63 = v48 - v4;
  v7 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  *&v8 = __chkstk_darwin(AssociatedTypeWitness).n128_u64[0];
  v66 = v48 - v9;
  v70.receiver = v1;
  v70.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v70, "layoutSubviews", v8);
  sub_1004285DC(v10);
  [v1 contentOffset];
  sub_100428F84(1, v11);
  v13 = v12;
  v15 = v14;
  v16 = *((swift_isaMask & *v1) + 0xB8);
  swift_beginAccess();
  v58 = v16;
  v17 = *(v1 + v16);
  v64 = v7;
  v62 = v3;
  v57 = swift_getAssociatedTypeWitness();
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v49 = *((swift_isaMask & *v1) + 0xA0);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  while (v20)
  {
LABEL_10:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = *(*(v17 + 48) + ((v23 << 9) | (8 * v25)));
    if ((*(v1 + v49) & 1) == 0 && v26 >= v13 && v26 < v15)
    {
      continue;
    }

    sub_10042A208(v26, v22);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  if (v13 == v15)
  {
LABEL_17:
    *(v1 + v49) = 0;
    return;
  }

  if (v15 < v13)
  {
    goto LABEL_35;
  }

  if (v13 < v15)
  {
    v28 = *v1;
    v67 = *((swift_isaMask & *v1) + 0x60);
    v29 = v1 + *((swift_isaMask & v28) + 0xC0);
    v48[0] = v1 + *((swift_isaMask & v28) + 0xC8);
    v61 = (v60 + 2);
    v54 = v64 + 40;
    ++v60;
    v53 = v64 + 56;
    v48[1] = v64 + 72;
    v52 = (v65 + 8);
    v55 = v15;
    v50 = v1;
    v51 = v29;
    do
    {
      swift_beginAccess();
      v68 = v13;
      sub_100752F84();
      v30 = v69;
      swift_endAccess();
      if (v30)
      {
      }

      else
      {
        v65 = sub_10042A6E0(v13);
        v31 = v62;
        v32 = *v61;
        v33 = v63;
        (*v61)(v63, v1 + v67, v62);
        v34 = v64;
        v35 = v66;
        (*(v64 + 40))(v13, v31, v64);
        v36 = *v60;
        (*v60)(v33, v31);
        v37 = v1 + v67;
        v38 = v51;
        v59 = v32;
        v32(v33, v37, v31);
        v39 = v65;
        (*(v34 + 56))(v35, v13, v65, v31, v34);
        v40 = v31;
        v41 = v36;
        v36(v33, v40);
        if ((v38[8] & 1) != 0 || v13 != *v38)
        {
          v15 = v55;
          if (*(v48[0] + 8))
          {
            (*v52)(v66, AssociatedTypeWitness);

            v1 = v50;
          }

          else
          {
            v1 = v50;
            if (v13 == *v48[0])
            {
              v46 = v62;
              v45 = v63;
              v59(v63, v50 + v67, v62);
              v47 = v66;
              (*(v64 + 72))(2, v39, v66, v46);

              v41(v45, v46);
              (*v52)(v47, AssociatedTypeWitness);
            }

            else
            {
              (*v52)(v66, AssociatedTypeWitness);
            }
          }
        }

        else
        {
          v1 = v50;
          v43 = v62;
          v42 = v63;
          v59(v63, v50 + v67, v62);
          v44 = v66;
          (*(v64 + 72))(1, v39, v66, v43);

          v41(v42, v43);
          (*v52)(v44, AssociatedTypeWitness);
          v15 = v55;
        }
      }

      ++v13;
    }

    while (v15 != v13);
    goto LABEL_17;
  }

LABEL_36:
  __break(1u);
}

void sub_10042A208(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = *((swift_isaMask & *v2) + 0x58);
  v6 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v34 = v32 - v8;
  v38 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = v32 - v13;
  v39 = a1;
  v40 = a1;
  swift_beginAccess();
  v36 = v5;
  v14 = swift_getAssociatedTypeWitness();
  sub_100752F74();
  sub_100752F64();
  swift_endAccess();
  v15 = v41;
  if (v41)
  {
    v16 = &v2[*((swift_isaMask & *v2) + 0xC0)];
    if ((v16[8] & 1) == 0 && *v16 == v39 || (v17 = &v2[*((swift_isaMask & *v2) + 0xC8)], (v17[8] & 1) == 0) && *v17 == v39)
    {
      v18 = *((swift_isaMask & *v2) + 0x60);
      v32[0] = AssociatedTypeWitness;
      v19 = v38;
      v20 = *(v38 + 16);
      v33 = v41;
      v21 = v37;
      v20(v37, &v3[v18], v6);
      v22 = &v3[v18];
      v23 = v11;
      v20(v11, v22, v6);
      v32[1] = v14;
      v24 = v35;
      v25 = v36;
      v26 = v34;
      (*(v36 + 40))(v39, v6, v36);
      v27 = *(v19 + 8);
      v27(v23, v6);
      (*(v25 + 72))(0, v33, v26, v6, v25);
      (*(v24 + 8))(v26, v32[0]);
      v28 = v21;
      v15 = v33;
      v27(v28, v6);
    }

    v41 = v15;
    swift_beginAccess();
    sub_100750634();
    swift_getWitnessTable();
    sub_1007512F4();
    v29 = sub_1007512D4();
    swift_endAccess();
    if (v29)
    {
      v30 = v37;
      v31 = v38;
      (*(v38 + 16))(v37, &v3[*((swift_isaMask & *v3) + 0x60)], v6);
      (*(v36 + 64))(v15, v6);

      (*(v31 + 8))(v30, v6);
    }

    else
    {
    }
  }
}

id sub_10042A6E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v19 - v8;
  swift_beginAccess();
  v10 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_100750634();
  swift_getWitnessTable();
  sub_1007512F4();
  sub_1007512C4();
  swift_endAccess();
  v11 = v21;
  if (v21)
  {
    v12 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, &v2[*((swift_isaMask & *v2) + 0x60)], v6);
    v13 = (*(v10 + 48))(v6, v10);
    (*(v7 + 8))(v9, v6);
    v12 = v13;
    [v2 addSubview:v12];
    v11 = 0;
  }

  v14 = v11;
  v15 = v12;
  sub_1004294D4(a1);
  [v15 setFrame:?];
  [v15 setAutoresizingMask:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  [v15 setSemanticContentAttribute:{objc_msgSendSuper2(&v20, "semanticContentAttribute")}];
  v17 = [v15 layer];
  [v17 setFlipsHorizontalAxis:{objc_msgSend(v15, "effectiveUserInterfaceLayoutDirection") == 1}];

  v21 = v15;
  v19[1] = a1;
  swift_beginAccess();
  sub_100752F74();
  sub_100752F94();
  swift_endAccess();
  return v15;
}

void sub_10042AA50(void *a1)
{
  v1 = a1;
  sub_100429AAC();
}

uint64_t sub_10042AA98(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & *v3) + 0x50);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v33 - v11;
  sub_1004285DC(v13);
  v15 = v10 + 16;
  v14 = *(v10 + 16);
  v39 = *((swift_isaMask & *v3) + 0x60);
  v40 = v14;
  v14(v12, &v3[v39], v9);
  v16 = *((v8 & v7) + 0x58);
  v17 = *(v16 + 24);
  v17(v41, v9, v16);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *v41;
  v20 = *&v41[1];
  [v4 contentSize];
  v48.size.width = v21;
  v48.size.height = v22;
  v48.origin.x = v20;
  v48.origin.y = v19;
  v47.x = a2;
  v47.y = a3;
  if (!CGRectContainsPoint(v48, v47))
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v37 = v16;
  v38 = v18;
  v17(v42, v9, v16);
  result = v38(v12, v9);
  v24 = floor((a2 - v20) / (*&v42[4] + *&v42[6]));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  if (v24 < 0 || sub_1004283D8(result) <= v25)
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v17(v43, v9, v37);
  result = v38(v12, v9);
  v26 = floor((a3 - v19) / (*&v43[5] + *&v43[7]));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v12;
  v28 = v40;
  if (v26 < 0)
  {
    return 0;
  }

  v35 = v25;
  v36 = v26;
  v29 = v39;
  v33[1] = v15;
  v40(v27, &v4[v39], v9);
  v30 = v37;
  v34 = v17;
  v17(v44, v9, v37);
  v31 = v38;
  v38(v27, v9);
  if (v44[9] <= v36)
  {
    return 0;
  }

  v28(v27, &v4[v29], v9);
  v34(v45, v9, v30);
  result = v31(v27, v9);
  v32 = v35 * v46;
  if ((v35 * v46) >> 64 != (v35 * v46) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_10042AEDC()
{
  [v0 contentOffset];
  sub_100428F84(0, v1);
  v4 = (v3 - v2);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_1006312A4(v3 - v2, 0);
    if (sub_10042C3F4(v8, (v7 + 4), v4, v5, v6) != v4)
    {
      __break(1u);
    }
  }
}

void sub_10042AF78(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = *((swift_isaMask & v3) + 0x58);
  v7 = *((swift_isaMask & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = *(v7 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v13);
  v19 = &v29 - v15;
  v20 = &v2[*((v4 & v3) + 0xC0)];
  if ((v20[8] & 1) == 0)
  {
    v21 = *v20;
    if ((*v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v33 = v17;
      v34 = v16;
      v35 = v14;
      v22 = *(v9 + 16);
      v30 = *(v5 + 96);
      v31 = v22;
      (v22)(&v29 - v15, &v2[v30], v7, v18);
      v23 = (*(v6 + 32))(v7, v6);
      v32 = *(v9 + 8);
      v32(v19, v7);
      if (v21 < v23)
      {
        swift_beginAccess();
        v36 = v21;
        swift_getAssociatedTypeWitness();
        sub_100752F84();
        v24 = v37;
        if (v37)
        {
          swift_endAccess();
          v29 = v21;
          v26 = v30;
          v25 = v31;
          v31(v19, &v2[v30], v7);
          v25(v12, &v2[v26], v7);
          v27 = v33;
          (*(v6 + 40))(v29, v7, v6);
          v28 = v32;
          v32(v12, v7);
          (*(v6 + 72))(1, v24, v27, v7, v6);

          (*(v34 + 8))(v27, v35);
          v28(v19, v7);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10042B34C(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = *((swift_isaMask & v3) + 0x58);
  v7 = *((swift_isaMask & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = *(v7 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v13);
  v19 = &v29 - v15;
  v20 = &v2[*((v4 & v3) + 0xC8)];
  if ((v20[8] & 1) == 0)
  {
    v21 = *v20;
    if ((*v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v33 = v17;
      v34 = v16;
      v35 = v14;
      v22 = *(v9 + 16);
      v30 = *(v5 + 96);
      v31 = v22;
      (v22)(&v29 - v15, &v2[v30], v7, v18);
      v23 = (*(v6 + 32))(v7, v6);
      v32 = *(v9 + 8);
      v32(v19, v7);
      if (v21 < v23)
      {
        swift_beginAccess();
        v36 = v21;
        swift_getAssociatedTypeWitness();
        sub_100752F84();
        v24 = v37;
        if (v37)
        {
          swift_endAccess();
          v29 = v21;
          v26 = v30;
          v25 = v31;
          v31(v19, &v2[v30], v7);
          v25(v12, &v2[v26], v7);
          v27 = v33;
          (*(v6 + 40))(v29, v7, v6);
          v28 = v32;
          v32(v12, v7);
          (*(v6 + 72))(2, v24, v27, v7, v6);

          (*(v34 + 8))(v27, v35);
          v28(v19, v7);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10042B720(uint64_t a1, char a2, __n128 a3)
{
  sub_10042CE7C(a3);
  v7 = v3 + *((swift_isaMask & *v3) + 0xC8);
  *v7 = a1;
  v7[8] = a2 & 1;

  sub_10042B34C(v6);
}

void sub_10042B794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (swift_isaMask & *v2);
  v7 = v6[26];
  v8 = *(v2 + v7);
  if (!v8 || [v8 phase] == 3 || (v9 = *(v2 + v7)) != 0 && objc_msgSend(v9, "phase") == 4)
  {
    v10 = sub_100669078(a1);
    if (v10)
    {
      v11 = v10;
      [v10 locationInView:v2];
      v13 = v12;
      v15 = v14;
      v16 = [v2 hitTest:a2 withEvent:?];
      if (v16 && (sub_100016C60(0, &qword_100922300, UIView_ptr), v17 = v16, v18 = v2, v19 = sub_100753FC4(), v17, v18, (v19 & 1) != 0) || (v21 = sub_10042D21C(v16, v6[10], v6[11]), (v21 & 1) == 0))
      {
        v22 = 0;
        v24 = 1;
      }

      else
      {
        v22 = sub_10042AA98(v21, v13, v15);
        v24 = v23;
      }

      sub_10042CB14(v20);
      v25 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v25 = v22;
      v25[8] = v24 & 1;
      sub_10042AF78(v26);

      v27 = *(v3 + v7);
      *(v3 + v7) = v11;
    }
  }

  sub_10042BE4C(v3, a1, a2, &selRef_touchesBegan_withEvent_);
}

void sub_10042B9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & v5) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v46 - v9;
  v11 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v46 - v15;
  v17 = *((v6 & v5) + 0xD0);
  v18 = *(v3 + v17);
  if (v18)
  {
    v52 = v14;
    v19 = v18;
    if ((sub_1002A4ED0(v19, a1) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = *(v3 + v17);
    *(v3 + v17) = 0;

    v22 = v3 + *((swift_isaMask & *v3) + 0xC0);
    if (v22[8] & 1) != 0 || (v51 = *v22, ([v3 isDragging]))
    {
      sub_10042CB14(v21);
      v23 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v23 = 0;
      v23[8] = 1;
      sub_10042AF78(v24);
      sub_10042CE7C(v25);
      v26 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v26 = 0;
      v26[8] = 1;
      sub_10042B34C(v27);
      goto LABEL_6;
    }

    sub_10042CB14(v21);
    v28 = v3 + *((swift_isaMask & *v3) + 0xC0);
    *v28 = 0;
    v28[8] = 1;
    sub_10042AF78(v29);
    sub_10042CE7C(v30);
    v31 = v3 + *((swift_isaMask & *v3) + 0xC8);
    *v31 = v51;
    v31[8] = 0;
    sub_10042B34C(v32);
    v33 = swift_isaMask & *v3;
    v34 = v3 + *(v33 + 0x68);
    v50 = *v34;
    if (!v50)
    {
      goto LABEL_6;
    }

    v47 = *(v34 + 1);
    (*(v8 + 16))(v10, v3 + *(v33 + 96), v7);
    v35 = *(v11 + 40);
    v48 = v11 + 40;
    v49 = v35;

    v36 = v11;
    v37 = v47;
    v49(v51, v7, v36);
    (*(v8 + 8))(v10, v7);
    v38 = v50;
    v39 = v50(v16, v51);
    (*(v13 + 8))(v16, v52);
    if (v39)
    {
      sub_10042CB14(v40);
      v41 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v41 = 0;
      v41[8] = 1;
      sub_10042AF78(v42);
      sub_10042CE7C(v43);
      v44 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v44 = 0;
      v44[8] = 1;
      sub_10042B34C(v45);
    }

    sub_1000164A8(v38, v37);
  }

LABEL_7:
  sub_10042BE4C(v3, a1, v53, &selRef_touchesEnded_withEvent_);
}

void sub_10042BE4C(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *a1;
  v8 = swift_isaMask;
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  isa = sub_100753474().super.isa;
  v11 = type metadata accessor for HorizontalShelfView(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v10);
  v12.receiver = a1;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, *a4, isa, a3);
}

double sub_10042BF40(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_10042BFF0(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0xD0);
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  sub_10042CB14(v7);
  v8 = v2 + *((swift_isaMask & *v2) + 0xC0);
  *v8 = 0;
  v8[8] = 1;
  sub_10042AF78(v9);
  sub_10042CE7C(v10);
  v11 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v11 = 0;
  v11[8] = 1;
  sub_10042B34C(v12);
  sub_10042BE4C(v2, a1, a2, &selRef_touchesCancelled_withEvent_);
}

uint64_t sub_10042C18C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_10042C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100752FA4();

  return sub_10042C26C(a1, v6, a2, a3);
}

unint64_t sub_10042C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_100753014();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_10042C3F4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10042C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_100753354())
  {
    sub_1007546C4();
    v13 = sub_1007546B4();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_100753374();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_100753334())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_100754564();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10042C210(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_10042C77C(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_100750634();
  __chkstk_darwin(v6);
  v7 = (v2 + *((v4 & v3) + 0x68));
  *v7 = 0;
  v7[1] = 0;
  *(v2 + *((swift_isaMask & *v2) + 0x70)) = 1;
  *(v2 + *((swift_isaMask & *v2) + 0x78)) = 0;
  v8 = *((swift_isaMask & *v2) + 0x80);
  v9 = objc_allocWithZone(sub_100749AF4());
  *(v2 + v8) = sub_100749AE4();
  v10 = (v2 + *((swift_isaMask & *v2) + 0x88));
  *v10 = 0;
  v10[1] = 0;
  *(v2 + *((swift_isaMask & *v2) + 0x90)) = 0;
  *(v2 + *((swift_isaMask & *v2) + 0x98)) = 0;
  *(v2 + *((swift_isaMask & *v2) + 0xA0)) = 0;
  v11 = v2 + *((swift_isaMask & *v2) + 0xA8);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_100750624();
  swift_getWitnessTable();
  sub_1007512E4();
  v12 = *((swift_isaMask & *v2) + 0xB8);
  swift_getTupleTypeMetadata2();
  v13 = sub_100753314();
  v14 = sub_10042C490(v13, &type metadata for Int, AssociatedTypeWitness, &protocol witness table for Int);

  *(v2 + v12) = v14;
  v15 = v2 + *((swift_isaMask & *v2) + 0xC0);
  *v15 = 0;
  v15[8] = 1;
  v16 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v16 = 0;
  v16[8] = 1;
  *(v2 + *((swift_isaMask & *v2) + 0xD0)) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10042CB14(__n128 a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = &v1[*((v3 & v2) + 0xC0)];
  if ((v16[8] & 1) == 0)
  {
    v26 = v13;
    v27 = v12;
    v17 = *v16;
    swift_beginAccess();
    v28 = v17;
    swift_getAssociatedTypeWitness();
    sub_100752F84();
    v18 = v29;
    if (v29)
    {
      swift_endAccess();
      v19 = *((swift_isaMask & *v1) + 0x60);
      v24 = v17;
      v25 = AssociatedTypeWitness;
      v20 = *(v7 + 16);
      v20(v15, &v1[v19], v5);
      v20(v10, &v1[v19], v5);
      v21 = v26;
      (*(v4 + 40))(v24, v5, v4);
      v22 = *(v7 + 8);
      v22(v10, v5);
      (*(v4 + 72))(0, v18, v21, v5, v4);

      (*(v27 + 8))(v21, v25);
      v22(v15, v5);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_10042CE7C(__n128 a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = &v1[*((v3 & v2) + 0xC8)];
  if ((v16[8] & 1) == 0)
  {
    v30 = v13;
    v31 = v12;
    v17 = *v16;
    swift_beginAccess();
    v32 = v17;
    swift_getAssociatedTypeWitness();
    sub_100752F84();
    v18 = v33;
    if (v33)
    {
      swift_endAccess();
      v19 = *v1;
      v20 = &v1[*((swift_isaMask & *v1) + 0xC0)];
      v21 = *v20;
      v28 = v20[8];
      v27 = v17 == v21;
      v22 = *((swift_isaMask & v19) + 0x60);
      v29 = AssociatedTypeWitness;
      v26 = v17;
      v23 = *(v7 + 16);
      v23(v15, &v1[v22], v5);
      v23(v10, &v1[v22], v5);
      v24 = v30;
      (*(v4 + 40))(v26, v5, v4);
      v25 = *(v7 + 8);
      v25(v10, v5);
      (*(v4 + 72))(v27 & ~v28, v18, v24, v5, v4);

      (*(v31 + 8))(v24, v29);
      v25(v15, v5);
    }

    else
    {
      swift_endAccess();
    }
  }
}

unint64_t sub_10042D21C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (!a1)
  {
    return 0;
  }

  v7 = v6;
  swift_getAssociatedTypeWitness();
  while (1)
  {
    v9 = swift_dynamicCastUnknownClass();
    v8 = v9 != 0;
    if (v9)
    {
      break;
    }

    type metadata accessor for HorizontalShelfView(0, a2, a3, v10);
    if (swift_dynamicCastClass())
    {
      break;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if ([v11 isTracking])
      {
        break;
      }
    }

    v8 = [v7 superview];

    v7 = v8;
    if (!v8)
    {
      return v8;
    }
  }

  return v8;
}

void sub_10042D358(double *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v37 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10042AEDC();
  v15 = v14;

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = *a1;
    v18 = swift_unknownObjectUnownedLoadStrong();
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    Width = CGRectGetWidth(v40);
    if (v17 > 0.0)
    {
      v28 = Width;
      v29 = swift_unknownObjectUnownedLoadStrong();
      [v29 contentSize];
      v31 = v30;

      if (v17 < v31 - v28)
      {
        v32 = swift_unknownObjectUnownedLoadStrong();
        (*(v10 + 16))(v12, &v32[*((swift_isaMask & *v32) + 0x60)], v9);
        (*(*(*&v8 + 88) + 24))(v37, v9);

        (*(v10 + 8))(v12, v9);
        v33 = v38 + v39;
        v34 = a2;
        if (a2 == 0.0)
        {
          v34 = v4[3];
        }

        v35 = fmod(v17, v38 + v39);
        if (v34 >= 0.0)
        {
          v36 = v33 - v35 + *a1;
        }

        else
        {
          v36 = *a1 - v35;
        }

        *a1 = v36;
        v4[3] = a2;
        v4[4] = a3;
      }
    }
  }
}

unint64_t sub_10042D614()
{
  result = qword_100937DE8;
  if (!qword_100937DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DE8);
  }

  return result;
}

uint64_t sub_10042D668(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_100741264();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10042D728, 0, 0);
}

id sub_10042D728()
{
  if (sub_1007466E4())
  {
    v1 = sub_100753094();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_10000C610((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_100746704())
  {
    v5 = sub_100753094();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_10000C610((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 112), v5, v7, v8);
  }

  v9 = sub_1007466F4();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_100753094();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_10000C610((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_100752F34().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_100746714();
    sub_100741204(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_100752624();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042DA58(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A27FC;

  return sub_10042D668(a1, v4);
}

unint64_t sub_10042DAFC()
{
  result = qword_100937DF0;
  if (!qword_100937DF0)
  {
    sub_100746734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DF0);
  }

  return result;
}

uint64_t sub_10042DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10042DBA8();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10042DBA8()
{
  result = qword_100937DF8;
  if (!qword_100937DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DF8);
  }

  return result;
}

uint64_t sub_10042DBFC()
{
  v0 = sub_100751344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751374();
  sub_100039C50(v4, qword_1009802A8);
  sub_10000D0FC(v4, qword_1009802A8);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = sub_1007507D4();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v7);
  sub_1007507C4();
  return sub_100751354();
}

void sub_10042DD34()
{
  v1 = v0;
  v2 = sub_100751374();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_100920C08 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_10000D0FC(v4, qword_1009802A8);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = sub_100753FC4();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView(0);
    v14 = v14;
    v23 = v22;
    v24 = sub_100753FC4();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_10042E030()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_1009802D8 = v0;
  unk_1009802E0 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_1009802C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10042E0EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_10000D198();
  v18 = sub_100753E54();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10025F574(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100980CF0);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = sub_10074F164();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_100260550();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = sub_100753DF4();
  [v43 setTextColor:v44];

  v45 = sub_100753E54();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_10042E718()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}