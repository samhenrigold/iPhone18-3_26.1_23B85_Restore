unint64_t sub_10DE18(uint64_t a1)
{
  v2 = sub_BD88(&qword_945570, &qword_785350);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_945578, &qword_785358);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945570, &qword_785350);
      result = sub_663E34(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6] + 40 * result;
      v16 = *v5;
      v17 = *(v5 + 1);
      *(v15 + 32) = *(v5 + 4);
      *v15 = v16;
      *(v15 + 16) = v17;
      v18 = v7[7];
      v19 = sub_7570A0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v14, &v5[v8], v19);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
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

unint64_t sub_10E010(uint64_t a1)
{
  v2 = sub_BD88(&qword_945318, &qword_785178);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_945320, &qword_785180);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945318, &qword_785178);
      result = sub_6642F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_765790();
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

unint64_t sub_10E1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945370, &unk_7A3250);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, v14, &qword_940758, &unk_7851D0);
      result = sub_663E34(v14, v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_13310(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10E334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945548, &qword_79E360);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_663D5C(v5);
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

unint64_t sub_10E41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945540, &unk_785330);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_663D5C(v5);
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

unint64_t sub_10E4FC(uint64_t a1)
{
  v2 = sub_BD88(&unk_945530, &qword_785320);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_955950, &qword_785328);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &unk_945530, &qword_785320);
      result = sub_664498(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = sub_757640();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      *(v7[7] + 16 * v14) = *&v5[v8];
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

unint64_t sub_10E6E4(uint64_t a1)
{
  v2 = sub_BD88(&qword_945478, &qword_7852A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_945480, &qword_7852A8);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945478, &qword_7852A0);
      result = sub_66456C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_758DC0();
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

unint64_t sub_10E8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_955910, &qword_7851F0);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, &v13, &unk_9453B0, &unk_7851F8);
      v5 = v13;
      v6 = v14;
      result = sub_3DF2F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_13310(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10EA10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_BD88(a2, a3);
    v5 = sub_76A8B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_3DF2F8(v7, v8);
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

unint64_t sub_10EB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945380, &unk_79E2E0);
    v3 = sub_76A8B0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_3DF2F8(v5, v6);
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

unint64_t sub_10EC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945408, &unk_785240);
    v3 = sub_76A8B0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_66523C();
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

unint64_t sub_10ED08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_9453F8, &qword_785230);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, &v11, &qword_945400, &qword_785238);
      v5 = v11;
      result = sub_66523C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_13310(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10EE30(uint64_t a1)
{
  v2 = sub_BD88(&qword_9453E0, &qword_785218);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9453E8, &qword_785220);
    v7 = sub_76A8B0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9453E0, &qword_785218);
      result = sub_6643C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_75AD00();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
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

unint64_t sub_10F020(uint64_t a1)
{
  v2 = sub_BD88(&qword_9454E0, &qword_7852F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9454E8, &qword_7852F8);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9454E0, &qword_7852F0);
      result = sub_664714(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_768E20();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10914(&v5[v8], v7[7] + 40 * v13);
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

unint64_t sub_10F210(uint64_t a1)
{
  v2 = sub_BD88(&qword_9454D0, &qword_7852E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9454D8, &qword_7852E8);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9454D0, &qword_7852E0);
      result = sub_664640(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_768DD0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10914(&v5[v8], v7[7] + 40 * v13);
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

void *sub_10F414(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_BD88(a2, a3);
  v5 = sub_76A8B0();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_663D5C(v6);
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

    v10 = sub_663D5C(v6);
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

unint64_t sub_10F514(uint64_t a1)
{
  v2 = sub_BD88(&qword_9455A0, qword_785370);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_955960, &unk_79E370);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9455A0, qword_785370);
      v11 = *v5;
      v12 = v5[1];
      result = sub_3DF2F8(*v5, v12);
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
      v18 = sub_764CF0();
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

unint64_t sub_10F714(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_BD88(a2, a3);
  v5 = sub_76A8B0();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_663D5C(v6);
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
    result = sub_663D5C(v6);
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

uint64_t sub_10F808(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10F868()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FF0();
  byte_99AF70 = 1;
  qword_99AF78 = result;
  return result;
}

char *sub_10F8B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  v13 = sub_75FC90();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = sub_75BB00();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77D9F0;
  *(v25 + 32) = v24;
  v45 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77D9F0;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_77D9F0;
  *(v29 + 32) = v28;
  sub_BD88(&qword_94DC60, &qword_7854E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  sub_3CFB24(inited);
  v35 = v34;
  swift_setDeallocating();
  sub_BD88(&unk_945390, &unk_7851E0);
  result = swift_arrayDestroy();
  if (v35 >> 62)
  {
    result = sub_76A860();
    v37 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v37 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (!v37)
    {
      goto LABEL_10;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v37; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = sub_76A770();
    }

    else
    {
      v39 = *(v35 + 8 * i + 32);
    }

    v40 = v39;
    [v22 addSubview:{v39, v45}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v41 = *&v22[v23];
  if (qword_93C380 != -1)
  {
    v44 = *&v22[v23];
    swift_once();
    v41 = v44;
  }

  v42 = qword_9455C0;
  [v41 setTintColor:{qword_9455C0, v45}];
  [*&v22[v46] setSemanticContentAttribute:3];
  [*&v22[v46] setTintColor:v42];
  sub_10FD74();
  sub_BD88(&qword_9477F0, qword_780200);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_77B6D0;
  *(v43 + 32) = sub_767B80();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v22;
}

id sub_10FD74()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v8._object = 0x80000000007CF720;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_75B750(v8, v9);
  v2 = sub_769210();

  [v1 setText:v2];

  if (qword_93C380 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_9455C0];
  [v1 setNumberOfLines:1];
  sub_766B40();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v3 = sub_760500();
  v4 = sub_BE38(v3, qword_99BB30);
  v7[3] = v3;
  v7[4] = sub_DC39C();
  v5 = sub_B1B4(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_75BA60();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_10FF10()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A20();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v4 = sub_760500();
  sub_BE38(v4, qword_99BB30);
  v5.super.isa = v3;
  v6.super.isa = sub_7604E0(v5).super.isa;
  v7 = [v2 preferredContentSizeCategory];
  v8 = sub_769B20();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [objc_opt_self() configurationWithFont:v6.super.isa scale:v9];

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v12 = v10;
  [v11 setPreferredSymbolConfiguration:v12];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v12];
}

void sub_110224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_769210();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_11028C(uint64_t a1)
{
  sub_10974(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return sub_767670();
}

id sub_1102E0()
{
  if (qword_93C368 != -1)
  {
    swift_once();
  }

  v1 = qword_99AF78;
  byte_9455B8 = byte_99AF70;
  qword_9455C0 = qword_99AF78;

  return v1;
}

uint64_t sub_110354()
{
  ObjectType = swift_getObjectType();
  v18 = sub_7664F0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763D60();
  __chkstk_darwin(v5 - 8);
  v17 = sub_763D70();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = sub_75BB20();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_763D50();
  sub_763D20();
  sub_75D650();
  sub_763D40();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_110614(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_763D60();
  __chkstk_darwin(v4 - 8);
  v5 = sub_763D70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v19 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
  v20 = &protocol witness table for UIView;
  v18[10] = &protocol witness table for UIView;
  v18[11] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v18[9] = v19;
  v18[6] = v10;
  v11 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v18[4] = sub_75BB20();
  v18[5] = &protocol witness table for UILabel;
  v18[1] = v11;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  sub_763D50();
  sub_763D20();
  sub_763D30();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView(uint64_t a1)
{
  result = qword_945610;
  if (!qword_945610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_110978(uint64_t a1)
{
  sub_DBB44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_110A40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0, qword_783DC0);
}

uint64_t sub_110AA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0, qword_783DC0);
  return swift_endAccess();
}

uint64_t sub_110B84(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_110C50(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_110D10()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_110D54(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_110E04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0, &unk_77E240);
}

uint64_t sub_110E6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0, &unk_77E240);
  return swift_endAccess();
}

double sub_110F60(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v79 = a2;
  v66 = a1;
  v4 = sub_763D60();
  __chkstk_darwin(v4 - 8);
  v75 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_763D70();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_766D20();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_766C00();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v64 - v10;
  __chkstk_darwin(v11);
  v81 = &v64 - v12;
  v65 = sub_766D70();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767030();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  sub_767020();
  sub_766B40();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v25 = sub_760500();
  v26 = sub_BE38(v25, qword_99BB30);
  v90[3] = v25;
  v90[4] = sub_DC39C();
  v27 = sub_B1B4(v90);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  sub_766F80();
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_BEB8(v90);
  sub_767010();
  v80 = v15;
  v69 = v16 + 8;
  v68 = v28;
  v28(v21, v15);
  LOBYTE(v29._countAndFlagsBits) = sub_75D700();
  v29._object = 0x80000000007CF720;
  if (v29._countAndFlagsBits)
  {
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    sub_762F40(v29);
  }

  else
  {
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    sub_75B750(v29, v91);
  }

  v30 = v70;
  v31 = *(v16 + 16);
  v70 = v24;
  v31(v21, v24, v80);
  sub_766D50();
  sub_766D90();
  sub_766D40();
  (*(v64 + 8))(v14, v65);
  v32 = v67;
  sub_766BF0();
  v33 = v79;
  v34 = [v79 traitCollection];
  v35.super.isa = sub_769A20();
  isa = v35.super.isa;
  v37.super.isa = sub_7604E0(v35).super.isa;
  v38 = [v34 preferredContentSizeCategory];
  v39 = sub_769B20();

  if (v39)
  {
    v40 = 3;
  }

  else
  {
    v40 = 1;
  }

  v41 = [objc_opt_self() configurationWithFont:v37.super.isa scale:v40];

  v42 = v81;
  sub_766BE0();

  v43 = v82;
  v44 = v74;
  v67 = *(v82 + 8);
  v66 = v82 + 8;
  (v67)(v32, v74);
  if (qword_93C370 != -1)
  {
    swift_once();
  }

  v45 = qword_9455A8;
  v46 = *(v43 + 16);
  v82 = v43 + 16;
  v46(v30, v42, v44);
  v47 = v45;
  v48 = v71;
  sub_766D30();
  v49 = [v33 traitCollection];
  sub_766D10();
  v65 = v50;
  v64 = v51;

  v52 = *(v72 + 8);
  v53 = v73;
  v52(v48, v73);
  if (qword_93C378 != -1)
  {
    swift_once();
  }

  v54 = qword_9455B0;
  v46(v30, v42, v44);
  v55 = v54;
  sub_766D30();
  v56 = [v33 traitCollection];
  sub_766D10();

  v52(v48, v53);
  v57 = sub_7670D0();
  swift_allocObject();
  v58 = sub_7670A0();
  swift_allocObject();
  v59 = sub_7670A0();
  v88 = v57;
  v89 = &protocol witness table for LayoutViewPlaceholder;
  v86 = &protocol witness table for LayoutViewPlaceholder;
  v87 = v58;
  v85 = v57;
  v84 = v59;
  sub_134D8(v90, v83);

  sub_763D50();
  v60 = v76;
  sub_763D20();
  sub_763D30();
  v62 = v61;

  (*(v77 + 8))(v60, v78);
  (v67)(v81, v44);
  sub_BEB8(v90);
  v68(v70, v80);
  return v62;
}

id sub_11197C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  LOBYTE(v4._countAndFlagsBits) = sub_75D700();
  v4._object = 0x80000000007CF720;
  if (v4._countAndFlagsBits)
  {
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    sub_762F40(v4);
  }

  else
  {
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_75B750(v4, v16);
  }

  v5 = sub_769210();

  [v3 setText:v5];

  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_93C378 != -1)
  {
    swift_once();
  }

  v7 = qword_9455B0;
  v8 = [v6 layer];
  [v8 removeAllAnimations];

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [v6 setImage:v9];
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_93C370 != -1)
  {
    swift_once();
  }

  v11 = qword_9455A8;
  v12 = [v10 layer];
  [v12 removeAllAnimations];

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return [v10 setImage:v13];
}

uint64_t sub_111B44()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_945620);
  sub_BE38(v0, qword_945620);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_111CA8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v29 = a1;
  sub_75CE20();
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E788);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_766CA0();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_766CB0();
  v25 = v3[1];
  v25(v5, v2);
  sub_75CE50();
  if (qword_93D548 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99E7E8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_766CB0();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_75CEE0();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v32);
  v15(v18, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CE60();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_BE38(v24, qword_99E6E0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v32);
  v28(v21, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  return sub_75CEF0();
}

char *sub_112194(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = sub_75CF00();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = sub_768C60();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_760AD0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_99F568);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(sub_75BB20());
  v81 = v23;
  v34 = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  sub_768C10();
  sub_10A2C(v85, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v86, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_11D37C(v43);

  v44 = qword_93C388;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_BE38(v83, qword_945620);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_93D500;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_BE38(v80, qword_99E710);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  sub_75BA40();

  v62 = qword_93D528;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_BE38(v57, qword_99E788);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  sub_75BA40();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_112B88(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = sub_769210();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = sub_769210();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_112D2C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_112EBC(double a1, double a2)
{
  v5 = sub_112FF4(1, a1, a2);
  v6 = sub_112FF4(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = sub_769210();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = sub_769210();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_112FF4(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_BE70(0, &qword_945820, NSNumber_ptr);
  isa = sub_76A190(v7 / v8).super.super.isa;
  v10 = sub_76A190(0.3 / v8).super.super.isa;
  v11 = sub_769210();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77FA60;
  v16 = 0.0;
  *(v15 + 32) = sub_76A190(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = sub_76A190(1.0);
  v19 = sub_769450().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_BD88(&qword_941C10, &qword_781230);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_782440;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = sub_769450().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1133D8(char *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

uint64_t sub_113798()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v62 = sub_75D850();
  v3 = *(v62 - 8);
  __chkstk_darwin(v62);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v60 - v7;
  v8 = sub_75CF00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v60 - v14;
  v65.receiver = v1;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  sub_75D650();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v63 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  sub_11E030(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v64 = v8;
  v31(v11, v15, v8);
  v32 = sub_75CE70();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v35 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v35 = qword_946938;
    }

    v36 = v62;
    v37 = sub_BE38(v62, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v61;
    (*(v3 + 32))(v61, v38, v36);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v3 + 8))(v39, v36);
  }

  sub_75CDB0();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v64;
  v42(v11, v64);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v63];
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  v47 = CGRectGetMidY(v67) - v44 * 0.5;
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v68), v44}];

  v48 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  v52 = CGRectGetMinX(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  MinY = CGRectGetMinY(v70);
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v71) - v50) * 0.5;
  v72.origin.x = v18;
  v72.origin.y = v20;
  v72.size.width = v22;
  v72.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v72), v50}];

  v55 = &v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {
    v58 = *(v55 + 1);

    v57(v59);
    return sub_F704(v57, v58);
  }

  return result;
}

void sub_11403C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v200 = a6;
  v208 = a2;
  v11 = a5;
  v12 = sub_7652D0();
  __chkstk_darwin(v12 - 8);
  v199 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_75CF00();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_765240();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_765920();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v189 = &v183 - v18;
  v212 = sub_764CF0();
  v207 = *(v212 - 1);
  __chkstk_darwin(v212);
  v188 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v211 = &v183 - v21;
  v22 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v22 - 8);
  v206 = &v183 - v23;
  v24 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v24 - 8);
  v205 = &v183 - v25;
  v26 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v26 - 8);
  v204 = &v183 - v27;
  v28 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v28 - 8);
  v203 = &v183 - v29;
  v30 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v30 - 8);
  v202 = &v183 - v31;
  v32 = sub_763750();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v201 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v35 - 8);
  v210 = &v183 - v36;
  v209 = sub_765B10();
  v215 = *(v209 - 8);
  __chkstk_darwin(v209);
  v187 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v183 - v39;
  v41 = v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v218 = a4;
  v42 = sub_765AE0();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v43 layoutDirection];
  sub_769BB0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v213 = a1;
  v52 = sub_763450();
  v214 = v7;
  v216 = v52;
  v217 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = sub_765AB0();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v58 = v55;
    v57 = v57;
    v59 = sub_76A1C0();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_3E31BC();
  v58 = v55;
LABEL_13:

  v61 = v214;
  v62 = v217;
  v63 = *(*(*&v214[v217] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v64 = v218;
  v65 = sub_765AB0();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v67 = sub_765AF0();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = sub_765AF0();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = sub_765AB0();
  [v70 setTextColor:v71];

  v72 = v215;
  v73 = *(v215 + 16);
  v74 = v209;
  v186 = v215 + 16;
  v185 = v73;
  v73(v40, v64, v209);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v184 = v76;
  v77 = v76(v40, v74);
  v183 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v217;
    [*(v61 + v217) setOverrideUserInterfaceStyle:{0, v183}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v217;
      [*(v61 + v217) setOverrideUserInterfaceStyle:{2, v183}];
    }

    else
    {
      v78 = v217;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v217) setOverrideUserInterfaceStyle:{1, v183}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    v80 = sub_765AB0();
    [v79 setTintColor:v80];
  }

  v215 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v201, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v202;
  v82(v202, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_11683C(&unk_944E10, 255, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v210;
  sub_760940();
  v86 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView];
  v88 = sub_764EE0();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v90 = sub_758C70();
  v91 = v203;
  (*(*(v90 - 8) + 56))(v203, 1, 1, v90);
  v92 = sub_75BD30();
  v93 = v204;
  (*(*(v92 - 8) + 56))(v204, 1, 1, v92);
  v94 = sub_BD88(&unk_9457F0, qword_783FD0);
  v95 = v205;
  (*(*(v94 - 8) + 56))(v205, 1, 1, v94);
  v96 = sub_765870();
  v97 = v206;
  (*(*(v96 - 8) + 56))(v206, 1, 1, v96);
  sub_4A18A4(v216, v89, v85, v208, 1, 0, v91, v93, v97, v95);
  sub_10A2C(v97, &unk_9457D0, &unk_785630);
  v89[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v89 setNeedsLayout];
  sub_10A2C(v95, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v93, &unk_9457E0, &qword_785640);
  sub_10A2C(v91, &unk_94A780, &unk_788DC0);
  v98 = v211;
  sub_764F00();
  v99 = sub_764DE0();
  v101 = v100;
  v206 = sub_764E40();
  v103 = v102;
  v104 = sub_764E00();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v207;
    v108 = v188;
    (*(v207 + 16))(v188, v106, v212);
    sub_BD88(&unk_944300, &qword_77DEE0);
    sub_768900();
    sub_768ED0();
    v110 = aBlock;
    v109 = v220;
    type metadata accessor for CrossLinkPresenter(0);
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v182 = v110;
    v61 = v214;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v206, v103, v105 & 1, v84, &off_884798, v182, v109);
    (*(v107 + 8))(v211, v212);
    sub_10A2C(v210, &unk_948730, &qword_788DD0);
    v115 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v218;

    v117 = &unk_945000;
    v118 = &selRef_setTextAlignment_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_11EE80(0, 0);

    (*(v207 + 8))(v98, v212);
    sub_10A2C(v85, &unk_948730, &qword_788DD0);
    v117 = &unk_945000;
    v118 = &selRef_setTextAlignment_;
    v116 = v218;
  }

  v120 = v217;
  v121 = *(*(v61 + v217) + v117[304]);
  v122 = *(v121 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = sub_765AF0();
    [v123 v118[1]];

    v121 = *(*&v120[v61] + v117[304]);
  }

  v125 = &OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = sub_765AF0();
  [v127 v118[1]];

  v129 = *(*(*&v120[v61] + v117[304]) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_93D548;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = sub_7666D0();
    v133 = sub_BE38(v132, qword_99E7E8);
    v134 = *(v132 - 8);
    v135 = v189;
    (*(v134 + 16))(v189, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    sub_75BA40();

    v136 = *(*(*&v120[v61] + v117[304]) + *v125);
    v118 = &selRef_setTextAlignment_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = sub_765AB0();
    [v138 v118[1]];

    if (!sub_763460())
    {
      break;
    }

    v211 = *(v61 + v137);
    v140 = sub_7658D0();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v212 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_119AC;
    *(v142 + 24) = v117;
    v223 = sub_2636C;
    v224 = v142;
    aBlock = _NSConcreteStackBlock;
    v220 = 1107296256;
    v221 = sub_10C1C;
    v222 = &unk_8844B8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v212 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v211;
      [v211 setAttributedText:v120];

      v61 = v214;
      v144 = *&v214[v137];
      v145 = v190;
      sub_765930();
      v146 = v191;
      v147 = v192;
      v148 = (*(v191 + 88))(v145, v192);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v217;
        v116 = v218;
      }

      else
      {
        v120 = v217;
        v116 = v218;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_112EBC(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  sub_763450();
  v150 = sub_764EE0();

  if (v150)
  {
    v151 = v193;
    sub_765250();
    v152 = sub_765210();
    (*(v194 + 8))(v151, v195);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v197;
    v156 = v153 + v154;
    v157 = v196;
    v158 = v198;
    (*(v197 + 16))(v196, v156, v198);
    sub_75CDD0();
    (*(v155 + 8))(v157, v158);
    sub_765330();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v159 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_759210();
    sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v161 = v160;
    sub_75A050();

    v162 = sub_7651A0();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = sub_763440();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_77D9F0;
    *(v171 + 32) = v168;
    sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
    isa = sub_769450().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v187;
  v174 = v209;
  v185(v187, v116, v209);
  v175 = v184(v173, v174);
  if (v175 == HIDWORD(v183) || v175 == v183)
  {
    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:sub_763430() & 1];

    return;
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = sub_763440();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_77D9F0;
    *(v179 + 32) = v177;
    sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
    v180 = v177;
    v181 = sub_769450().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v220 = 0xE000000000000000;
  sub_76A730(44);

  aBlock = 0xD00000000000002ALL;
  v220 = 0x80000000007CF650;
  v225._countAndFlagsBits = sub_765B00();
  sub_769370(v225);

  sub_76A840();
  __break(1u);
}

void sub_115CB4()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_7591B0();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759210();
  sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_75A0C0();
}

void sub_115E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v24);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_765B70();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_765B60(), , v13))
      {
        sub_763470();
        if (swift_dynamicCastClass())
        {
          sub_763450();
          sub_764E50();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_75F4B0();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1161BC(char *a1, char a2)
{
  if (a2)
  {
    sub_1133D8(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1161F4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4, v5);
}

double sub_116240()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_75CDD0();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

double sub_1163C4(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_116424(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_1164BC()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_116518(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_1165D8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_10914(v7, v5 + 32);
  return sub_1169AC;
}

void sub_1166A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759050();

  v6 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759210();
  sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_75A0C0();
}

uint64_t sub_116798(uint64_t a1, uint64_t a2)
{
  result = sub_11683C(&qword_945710, a2, type metadata accessor for TodayCardMarketingLockupOverlayView, &unk_785544);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11683C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_116884()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1168DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1168F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11692C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_116964()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1169B8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_116AA0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_116BD8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_76A770();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = sub_76A770();
LABEL_26:
        LOBYTE(v4) = sub_7F668(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v18 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_7F668(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_116E14(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_76A860();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_76A860();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = sub_76A770();
          goto LABEL_25;
        }
      }

      if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_116FE8(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_76A770();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = sub_76A770();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v21 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_11724C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_396E8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_76A770();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_76A770();
LABEL_26:
        v17 = v16;
        v18 = sub_76A1C0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_76A1C0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_11748C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_117570(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    v22 = a3;
    result = sub_76A860();
    a3 = v22;
    if (v9 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v9 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v11 = a1;
  }

  if (v8)
  {
    v12 = v11;
  }

  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v13 = a2;
  }

  if (a2 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    a3(0);
    v15 = a2 & 0xC000000000000001;
    v16 = 4;
    v8 = v9;
    while (1)
    {
      v17 = v16 - 4;
      v18 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v20 = a3;
        v21 = sub_76A860();
        a3 = v20;
        v9 = v21;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        if (v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        if (v15)
        {
LABEL_20:
          sub_76A770();
          goto LABEL_25;
        }
      }

      if (v17 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_11ACB0(a4, a5, a6);
      v19 = sub_7691C0();

      if (v19)
      {
        ++v16;
        if (v18 != v8)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11777C(uint64_t a1, uint64_t a2)
{
  v4 = sub_764CF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_11ACB0(&qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v22 = sub_7691C0();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_117990(void *a1, char *a2)
{
  v285 = a2;
  v246 = sub_768C60();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v242 = &v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v243 = &v233 - v6;
  __chkstk_darwin(v7);
  v244 = &v233 - v8;
  v265 = sub_761CE0();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v266 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_761D00();
  v270 = *(v10 - 8);
  __chkstk_darwin(v10);
  v269 = &v233 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_760AD0();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = &v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v259 = &v233 - v14;
  v268 = sub_75C420();
  v267 = *(v268 - 8);
  __chkstk_darwin(v268);
  v258 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v263 = &v233 - v17;
  __chkstk_darwin(v18);
  v257 = &v233 - v19;
  v256 = sub_76A920();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v254 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_7656C0();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v251 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_759DA0();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v233 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_764930();
  v274 = *(v280 - 8);
  __chkstk_darwin(v280);
  v235 = &v233 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v273);
  v281 = &v233 - v24;
  v25 = sub_BD88(&unk_94F1F0, &qword_782290);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v272 = (&v233 - v27);
  v28 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v28);
  v30 = &v233 - v29;
  v31 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v31 - 8);
  v33 = &v233 - v32;
  v34 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v34 - 8);
  v241 = &v233 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v271 = (&v233 - v37);
  __chkstk_darwin(v38);
  v278 = &v233 - v39;
  sub_759DF0();
  sub_11ACB0(&qword_945830, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v40 = a1;
  sub_75C750();
  v41 = v289;
  if (!v289)
  {
    return;
  }

  v238 = v10;
  v42 = sub_527DE4();
  v43 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = v285;

  sub_56FA00(v43);

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v42;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v44 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v285 = v42;
  [v42 pageMarginInsets];
  [v44 setSectionInset:?];

  v282 = v2;
  sub_56F8F4(v45, v46);
  v47 = sub_759DE0();
  v48 = sub_759D80();
  v240 = sub_759D90();
  v275 = v49;
  v276 = v41;
  v247 = sub_759DC0();
  v279 = v50;
  v234 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v51 = swift_allocObject();
  v233 = xmmword_77D9F0;
  *(v51 + 16) = xmmword_77D9F0;
  *(v51 + 32) = v47;
  v283 = v47;

  v284 = v48;
  v236 = sub_117570(v48, v51, &type metadata accessor for MediaPlatform, &qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);

  swift_getKeyPath();
  sub_75C7B0();

  sub_2C88C(&v30[*(v28 + 48)], v33);
  v52 = (*(v26 + 48))(v33, 1, v25);
  v277 = v40;
  if (v52 == 1)
  {
    sub_10A2C(v30, &qword_963790, qword_77EBC0);
    sub_10A2C(v33, &qword_963790, qword_77EBC0);
    v53 = v26;
    v54 = v25;
    v55 = v274;
    v56 = v278;
    v57 = v280;
    v239 = v274[7];
    v239(v278, 1, 1, v280);
  }

  else
  {
    swift_getKeyPath();
    v56 = v278;
    sub_768750();

    (*(v26 + 8))(v33, v25);
    v53 = v26;
    v54 = v25;
    v55 = v274;
    v57 = v280;
    v239 = v274[7];
    v239(v56, 0, 1, v280);
    sub_10A2C(v30, &qword_963790, qword_77EBC0);
  }

  swift_getKeyPath();
  v58 = v272;
  sub_75C7B0();

  swift_getKeyPath();
  v59 = v271;
  sub_768750();

  v61 = *(v53 + 8);
  v60 = v53 + 8;
  v61(v58, v54);
  v239(v59, 0, 1, v57);
  v62 = v273[12];
  v63 = v56;
  v64 = v56;
  v65 = v281;
  sub_1ED18(v63, v281, &qword_951BE0, &unk_782280);
  sub_1ED18(v59, v65 + v62, &qword_951BE0, &unk_782280);
  v66 = v55[6];
  v67 = v66(v65, 1, v57);
  v280 = v284 >> 62;
  if (v67 == 1)
  {
    sub_10A2C(v59, &qword_951BE0, &unk_782280);
    v68 = v281;
    sub_10A2C(v64, &qword_951BE0, &unk_782280);
    v69 = v66(v68 + v62, 1, v57);
    v70 = v284;
    if (v69 == 1)
    {
      sub_10A2C(v68, &qword_951BE0, &unk_782280);
LABEL_22:
      LODWORD(v281) = 0;
      v78 = 1;
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v60 = v241;
  sub_1ED18(v65, v241, &qword_951BE0, &unk_782280);
  if (v66(v65 + v62, 1, v57) == 1)
  {
    sub_10A2C(v59, &qword_951BE0, &unk_782280);
    v68 = v281;
    sub_10A2C(v278, &qword_951BE0, &unk_782280);
    (v55[1])(v60, v57);
    v70 = v284;
LABEL_10:
    sub_10A2C(v68, &qword_945828, &unk_7AF320);
    goto LABEL_11;
  }

  v75 = v235;
  (v55[4])(v235, v65 + v62, v57);
  sub_11ACB0(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v76 = sub_7691C0();
  v77 = v55[1];
  v77(v75, v57);
  sub_10A2C(v59, &qword_951BE0, &unk_782280);
  sub_10A2C(v278, &qword_951BE0, &unk_782280);
  v77(v60, v57);
  sub_10A2C(v65, &qword_951BE0, &unk_782280);
  v70 = v284;
  if (v76)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (!v280)
  {
    v71 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
    if (v71)
    {
      goto LABEL_13;
    }

LABEL_24:

    goto LABEL_25;
  }

  v71 = sub_76A860();
  if (!v71)
  {
    goto LABEL_24;
  }

LABEL_13:
  v72 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    __break(1u);
  }

  else if ((v70 & 0xC000000000000001) == 0)
  {
    if ((v72 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v72 < *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)))
    {
      v73 = *(v70 + 8 * v72 + 32);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_89;
  }

  v73 = sub_76A770();
LABEL_18:
  *&v289 = v283;
  if (!v73)
  {
LABEL_25:

    goto LABEL_26;
  }

  *&v286 = v73;
  sub_75A360();
  sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v74 = sub_7691C0();

  if (v74)
  {
    goto LABEL_22;
  }

LABEL_26:
  v78 = 0;
  LODWORD(v281) = v236 ^ 1;
LABEL_27:
  v79 = v248;
  sub_759DB0();
  v80 = (*(v249 + 88))(v79, v250);
  LODWORD(v278) = v78;
  if (v80 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v265;
    v86 = v282;
    if (v80 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      sub_76A940();
      __break(1u);
      return;
    }

    v87 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
    v88 = *(v282 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
    if (v88)
    {
      [v88 removeFromSuperview];
      v89 = *(v86 + v87);
    }

    else
    {
      v89 = 0;
    }

    *(v86 + v87) = 0;

    [v86 setNeedsLayout];
    v274 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v130 = v251;
    sub_75C7B0();

    sub_765630();
    (*(v252 + 8))(v130, v253);
    if (v281)
    {
      if (qword_93D220 != -1)
      {
        swift_once();
      }

      [qword_956E70 size];
    }

    else
    {
      if (v280)
      {
        v131 = sub_76A860();
      }

      else
      {
        v131 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      }

      if (v131 > 1)
      {
        sub_75A360();
        v132 = swift_allocObject();
        *(v132 + 16) = v233;
        *(v132 + 32) = v283;

        v133 = sub_75A320();

        goto LABEL_64;
      }
    }

    sub_75A360();
    v133 = sub_75A320();
LABEL_64:

    if (qword_93D228 != -1)
    {
      swift_once();
    }

    v134 = sub_BE38(v85, qword_956E78);
    sub_761CD0();
    v135 = *(&v290 + 1);
    sub_B170(&v289, *(&v290 + 1));
    v136 = v254;
    sub_33964(v135);
    sub_766700();
    v138 = v137;
    (*(v255 + 8))(v136, v256);
    sub_4C4E08(v133, v138);
    sub_BEB8(&v289);
    if (v133 >> 62)
    {
      sub_76A860();
    }

    v139 = v261;

    v140 = v285;
    sub_75C410();
    v141 = sub_4C4AF8(v133, v140);

    v273 = v141;
    v142 = sub_761C90();
    if (qword_93D638 != -1)
    {
      swift_once();
    }

    v143 = sub_7666D0();
    v144 = sub_BE38(v143, qword_99EAA0);
    v145 = *(v143 - 8);
    v146 = v259;
    (*(v145 + 16))(v259, v144, v143);
    (*(v145 + 56))(v146, 0, 1, v143);
    (*(v260 + 104))(v262, enum case for DirectionalTextAlignment.none(_:), v139);
    v147 = sub_75BB20();
    v148 = objc_allocWithZone(v147);
    v149 = sub_75BB10();
    [v149 setAttributedText:v142];
    v272 = v142;
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v277 = qword_956E70;
    [qword_956E70 size];
    v150 = sub_7670D0();
    swift_allocObject();
    v151 = sub_7670B0();
    (*(v264 + 16))(v266, v134, v85);
    v152 = v267;
    v153 = v258;
    v154 = v268;
    (*(v267 + 16))(v263, v258, v268);
    *(&v290 + 1) = v147;
    v291 = &protocol witness table for UILabel;
    *&v289 = v149;
    *(&v287 + 1) = v150;
    v288 = &protocol witness table for LayoutViewPlaceholder;
    *&v286 = v151;
    v155 = v149;

    v156 = v269;
    sub_761CF0();
    [v285 pageMarginInsets];
    sub_769DA0();
    sub_11ACB0(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
    v117 = v238;
    sub_7665A0();
    sub_769DC0();
    v158 = v157;
    v160 = v159;

    (v270[1])(v156, v117);
    (*(v152 + 8))(v153, v154);
    v123 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
    v124 = v282;
    v161 = *(v282 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v161)
    {
      [v161 setFrame:{0.0, 0.0, v158, v160}];
      v126 = v283;
      v127 = v284;
      v122 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_79;
    }

    v128 = [objc_allocWithZone(v274) initWithFrame:{0.0, 0.0, v158, v160}];
    v129 = *(v124 + v123);
    v127 = v284;
    v122 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v129)
    {
      v117 = 0;
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v81 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v82 = v282;
  v83 = *(v282 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
  v60 = v265;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v82 + v81);
  }

  else
  {
    v84 = 0;
  }

  *(v82 + v81) = 0;

  [v82 setNeedsLayout];
  v57 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v90 = v251;
  sub_75C7B0();

  sub_765630();
  (*(v252 + 8))(v90, v253);
  if (v281)
  {
    if (qword_93D220 == -1)
    {
LABEL_36:
      [qword_956E70 size];
      goto LABEL_41;
    }

LABEL_89:
    swift_once();
    goto LABEL_36;
  }

  if (v280)
  {
    v91 = sub_76A860();
  }

  else
  {
    v91 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
  }

  if (v91 > 1)
  {
    sub_75A360();
    v92 = swift_allocObject();
    *(v92 + 16) = v233;
    *(v92 + 32) = v283;

    v93 = sub_75A320();

    goto LABEL_42;
  }

LABEL_41:
  sub_75A360();
  v93 = sub_75A320();
LABEL_42:

  if (qword_93D228 != -1)
  {
    swift_once();
  }

  v94 = sub_BE38(v60, qword_956E78);
  sub_761CD0();
  v95 = *(&v290 + 1);
  sub_B170(&v289, *(&v290 + 1));
  v96 = v254;
  sub_33964(v95);
  sub_766700();
  v98 = v97;
  (*(v255 + 8))(v96, v256);
  sub_4C4E08(v93, v98);
  sub_BEB8(&v289);
  if (v93 >> 62)
  {
    sub_76A860();
  }

  v99 = v261;

  v100 = v285;
  sub_75C410();
  v101 = sub_4C4AF8(v93, v100);

  v274 = v101;
  v102 = sub_761C90();
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v272 = v57;
  v103 = sub_7666D0();
  v104 = sub_BE38(v103, qword_99EAA0);
  v105 = *(v103 - 8);
  v106 = v259;
  (*(v105 + 16))(v259, v104, v103);
  (*(v105 + 56))(v106, 0, 1, v103);
  (*(v260 + 104))(v262, enum case for DirectionalTextAlignment.none(_:), v99);
  v107 = sub_75BB20();
  v108 = objc_allocWithZone(v107);
  v109 = sub_75BB10();
  [v109 setAttributedText:v102];
  v273 = v102;
  if (qword_93D220 != -1)
  {
    swift_once();
  }

  v277 = qword_956E70;
  [qword_956E70 size];
  v110 = sub_7670D0();
  swift_allocObject();
  v111 = sub_7670B0();
  (*(v264 + 16))(v266, v94, v60);
  v112 = v267;
  v113 = v257;
  v114 = v268;
  (*(v267 + 16))(v263, v257, v268);
  *(&v290 + 1) = v107;
  v291 = &protocol witness table for UILabel;
  *&v289 = v109;
  *(&v287 + 1) = v110;
  v288 = &protocol witness table for LayoutViewPlaceholder;
  *&v286 = v111;
  v115 = v109;

  v116 = v269;
  sub_761CF0();
  [v285 pageMarginInsets];
  sub_769DA0();
  sub_11ACB0(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
  v117 = v238;
  sub_7665A0();
  sub_769DC0();
  v119 = v118;
  v121 = v120;

  (v270[1])(v116, v117);
  (*(v112 + 8))(v113, v114);
  v122 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v123 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v124 = v282;
  v125 = *(v282 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v125)
  {
    v128 = [objc_allocWithZone(v272) initWithFrame:{0.0, 0.0, v119, v121}];
    v129 = *(v124 + v123);
    v127 = v284;
    if (!v129)
    {
      v117 = 0;
      goto LABEL_78;
    }

LABEL_75:
    [v129 removeFromSuperview];
    v117 = *(v124 + v123);
LABEL_78:
    v126 = v283;
    *(v124 + v123) = v128;
    v162 = v128;

    v163 = [v124 contentView];
    [v163 addSubview:v162];

    [v124 setNeedsLayout];
    goto LABEL_79;
  }

  [v125 setFrame:{0.0, 0.0, v119, v121}];
  v126 = v283;
  v127 = v284;
LABEL_79:
  v274 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v164 = *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v164)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v165 = swift_dynamicCastClass();
  if (!v165)
  {
    goto LABEL_123;
  }

  v166 = v165;
  if (v281)
  {
    goto LABEL_93;
  }

  if (v280)
  {
    if (sub_76A860() > 1)
    {
      goto LABEL_84;
    }

LABEL_93:

    v168 = 0;
    v167 = v127;
    goto LABEL_94;
  }

  if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) <= 1)
  {
    goto LABEL_93;
  }

LABEL_84:
  v167 = swift_allocObject();
  *(v167 + 16) = v233;
  *(v167 + 32) = v126;

  v168 = 1;
LABEL_94:
  v272 = v164;
  v169 = sub_4C4F08(v167);

  if (v168)
  {
    v170 = v240;
  }

  else
  {
    v170 = v247;
  }

  v172 = &v166[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text];
  *v172 = v170;
  v172[1] = v171;

  v173 = _swiftEmptyArrayStorage;
  *&v289 = _swiftEmptyArrayStorage;
  v174 = *(v169 + 2);
  v273 = v166;
  if (v174)
  {
    v175 = 0;
    v176 = v169 + 7;
    v269 = v174 - 1;
    v173 = _swiftEmptyArrayStorage;
    v270 = (v169 + 7);
    do
    {
      v271 = v173;
      v177 = &v176[4 * v175];
      v166 = v175;
      while (1)
      {
        if (v166 >= *(v169 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v178 = sub_769210();
        v179 = [objc_opt_self() _systemImageNamed:v178];

        if (v179)
        {
          break;
        }

LABEL_101:
        ++v166;
        v177 += 4;
        if (v174 == v166)
        {
          v166 = v273;
          v173 = v271;
          goto LABEL_113;
        }
      }

      if (qword_93D218 != -1)
      {
        swift_once();
      }

      v180 = [v179 imageWithTintColor:qword_99DFB8];

      if (!v180)
      {
        goto LABEL_101;
      }

      sub_769440();
      if (*(&dword_10 + (v289 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v289 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v175 = v166 + 1;
      sub_769500();
      v173 = v289;
      v181 = v269 == v166;
      v166 = v273;
      v176 = v270;
    }

    while (!v181);
  }

LABEL_113:
  v182 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images;
  *&v166[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images] = v173;

  v183 = *&v166[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView];
  if (v281)
  {
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v184 = v277;
  }

  else
  {
    v184 = 0;
  }

  [v183 setImage:v184];

  v185 = *&v166[v182];
  if (v185)
  {
    if (v185 >> 62)
    {
LABEL_131:
      v186 = sub_76A860();
    }

    else
    {
      v186 = *(&dword_10 + (v185 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v186 = 0;
  }

  *&v166[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges] = v186;
  v187 = v285;
  *&v166[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits] = v285;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_4C3A90();
  [v187 pageMarginInsets];
  [v166 setLayoutMargins:?];
  [v166 setNeedsLayout];
  v289 = 0u;
  v290 = 0u;
  v286 = 0u;
  v287 = 0u;
  v188 = v242;
  sub_768BD0();
  sub_10A2C(&v286, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
  *&v289 = v169;
  *(&v289 + 1) = sub_4C47E8;
  *&v290 = 0;

  sub_BD88(&qword_945848, &unk_785750);
  sub_11ABC8();
  v189 = sub_7691A0();
  v191 = v190;

  *(&v290 + 1) = &type metadata for String;
  *&v289 = v189;
  *(&v289 + 1) = v191;
  v192 = v243;
  sub_768C40();
  LOBYTE(v117) = v245 + 8;
  v122 = *(v245 + 8);
  v193 = v246;
  (v122)(v188, v246);
  sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
  *&v289 = v169;
  *(&v289 + 1) = sub_4C47F4;
  *&v290 = 0;
  v194 = sub_7691A0();
  v196 = v195;

  *(&v290 + 1) = &type metadata for String;
  *&v289 = v194;
  *(&v289 + 1) = v196;
  v197 = v244;
  sub_768C40();
  (v122)(v192, v193);
  sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (v122)(v197, v193);
  v124 = v282;
  v126 = v283;
  v127 = v284;
LABEL_123:
  v198 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v199 = *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v199 || (type metadata accessor for PlatformSelectorView(), (v200 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v122 = v200;
  if (v281)
  {
    goto LABEL_133;
  }

  if (v280)
  {
    if (sub_76A860() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v202 = 0;
    v201 = v127;
    goto LABEL_134;
  }

  if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v201 = swift_allocObject();
  *(v201 + 16) = v233;
  *(v201 + 32) = v126;

  v202 = 1;
LABEL_134:
  v272 = v198;
  v271 = v199;
  v127 = sub_4C4F08(v201);

  if (v202)
  {
    v203 = v240;
  }

  else
  {
    v203 = v247;
  }

  if (v202)
  {
    v204 = v275;
  }

  else
  {
    v204 = v279;
  }

  v205 = (v122 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text);
  *v205 = v203;
  v205[1] = v204;

  v206 = _swiftEmptyArrayStorage;
  *&v289 = _swiftEmptyArrayStorage;
  v207 = *(v127 + 16);
  v273 = v122;
  if (v207)
  {
    v198 = 0;
    v208 = (v127 + 56);
    v270 = (v207 - 1);
    v206 = _swiftEmptyArrayStorage;
    v117 = &__NSArray0__struct_ptr;
    v124 = &selRef_absoluteDimension_;
    v275 = (v127 + 56);
    do
    {
      v279 = v206;
      v126 = &v208[4 * v198];
      v122 = v198;
      while (1)
      {
        if (v122 >= *(v127 + 16))
        {
          __break(1u);
          goto LABEL_175;
        }

        v198 = *v126;

        v209 = sub_769210();
        v210 = [objc_opt_self() _systemImageNamed:v209];

        if (v210)
        {
          break;
        }

LABEL_144:
        v122 = (v122 + 1);
        v126 += 4;
        if (v207 == v122)
        {
          v122 = v273;
          v206 = v279;
          goto LABEL_156;
        }
      }

      if (qword_93D218 != -1)
      {
        swift_once();
      }

      v211 = [v210 imageWithTintColor:qword_99DFB8];

      if (!v211)
      {
        goto LABEL_144;
      }

      sub_769440();
      if (*(&dword_10 + (v289 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v289 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v198 = (v122 + 1);
      sub_769500();
      v206 = v289;
      v181 = v270 == v122;
      v122 = v273;
      v208 = v275;
    }

    while (!v181);
  }

LABEL_156:
  v212 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images;
  *(v122 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images) = v206;

  v213 = *(v122 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView);
  if (v281)
  {
    v124 = v282;
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v214 = v277;
  }

  else
  {
    v214 = 0;
    v124 = v282;
  }

  [v213 setImage:v214];

  v215 = *(v122 + v212);
  if (v215)
  {
    if (v215 >> 62)
    {
      goto LABEL_207;
    }

    v216 = *(&dword_10 + (v215 & 0xFFFFFFFFFFFFFF8));
  }

  else
  {
    v216 = 0;
  }

  while (1)
  {
    *(v122 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges) = v216;
    v217 = v285;
    *(v122 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits) = v285;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_4C3A90();
    [v217 pageMarginInsets];
    [v122 setLayoutMargins:?];
    [v122 setNeedsLayout];
    v289 = 0u;
    v290 = 0u;
    v286 = 0u;
    v287 = 0u;
    v218 = v242;
    sub_768BD0();
    sub_10A2C(&v286, &unk_93FBD0, &qword_77DFA0);
    sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
    *&v289 = v127;
    *(&v289 + 1) = sub_4C47E8;
    *&v290 = 0;

    sub_BD88(&qword_945848, &unk_785750);
    sub_11ABC8();
    v219 = sub_7691A0();
    v221 = v220;

    *(&v290 + 1) = &type metadata for String;
    *&v289 = v219;
    *(&v289 + 1) = v221;
    v117 = v243;
    sub_768C40();
    v122 = *(v245 + 8);
    v222 = v246;
    (v122)(v218, v246);
    sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
    *&v289 = v127;
    *(&v289 + 1) = sub_4C47F4;
    *&v290 = 0;
    v223 = sub_7691A0();
    v225 = v224;

    *(&v290 + 1) = &type metadata for String;
    *&v289 = v223;
    *(&v289 + 1) = v225;
    v226 = v244;
    sub_768C40();
    (v122)(v117, v222);
    sub_10A2C(&v289, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    (v122)(v226, v222);
    v126 = v283;
    v127 = v284;
    v198 = v272;
LABEL_166:
    if (v280)
    {
      break;
    }

    v227 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
    if (!v227)
    {
      goto LABEL_176;
    }

LABEL_168:
    if ((v127 & 0xC000000000000001) != 0)
    {

      v122 = sub_76A770();
      *&v289 = v126;
      if (!v122)
      {
        goto LABEL_177;
      }
    }

    else
    {
      if (!*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        v230 = sub_76A770();
LABEL_185:

        *&v289 = v126;
        if (v230)
        {
          *&v286 = v230;
          sub_75A360();
          sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
          v228 = sub_7691C0();

          if ((v117 & 1) == 0)
          {
            v231 = 0;
            goto LABEL_193;
          }
        }

        else
        {

          if ((v117 & 1) == 0)
          {
            goto LABEL_196;
          }

          v228 = 0;
        }

LABEL_192:
        v231 = *(v274 + v124) != 0;
LABEL_193:
        *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v231;
        sub_570B6C();
        if ((v228 & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_194:
        v232 = *(v198 + v124) != 0;
        goto LABEL_198;
      }

      v122 = *(v127 + 32);

      *&v289 = v126;
      if (!v122)
      {
        goto LABEL_177;
      }
    }

    *&v286 = v122;
    sub_75A360();
    sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);

    LOBYTE(v117) = sub_7691C0();

    if ((v278 & 1) == 0)
    {

      if (v117)
      {
        v228 = 1;
        goto LABEL_192;
      }

LABEL_189:
      *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_570B6C();
      goto LABEL_194;
    }

LABEL_180:
    v229 = v227 - 1;
    if (__OFSUB__(v227, 1))
    {
      goto LABEL_203;
    }

    if ((v127 & 0xC000000000000001) != 0)
    {
      goto LABEL_204;
    }

    if ((v229 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v229 < *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)))
    {
      v230 = *(v127 + 8 * v229 + 32);

      goto LABEL_185;
    }

    __break(1u);
LABEL_207:
    v216 = sub_76A860();
  }

LABEL_175:
  v227 = sub_76A860();
  if (v227)
  {
    goto LABEL_168;
  }

LABEL_176:

LABEL_177:
  if (!v278)
  {

    goto LABEL_189;
  }

  if (v227)
  {
    LOBYTE(v117) = 0;
    goto LABEL_180;
  }

LABEL_196:
  *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_570B6C();
LABEL_197:
  v232 = 0;
LABEL_198:
  *(v124 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v232;
  sub_570B80();
  [v124 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_11AA3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620, &unk_77E220);
}

uint64_t sub_11AAA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_11ABC8()
{
  result = qword_945850;
  if (!qword_945850)
  {
    sub_133D8(&qword_945848, &unk_785750);
    sub_11AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945850);
  }

  return result;
}

unint64_t sub_11AC4C()
{
  result = qword_945858;
  if (!qword_945858)
  {
    sub_133D8(&qword_945860, &unk_7AF840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945858);
  }

  return result;
}

uint64_t sub_11ACB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_11ACF8()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_8845E8 + *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = sub_759930();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_11AED4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_tapSize] = xmmword_785760;
  v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_11ACF8();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_11B1EC()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = sub_7699F0();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_11B598()
{
  result = qword_9458E0;
  if (!qword_9458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9458E0);
  }

  return result;
}

void sub_11B5EC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_tapSize) = xmmword_785760;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  sub_76A840();
  __break(1u);
}

char *sub_11B724(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99ECE0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v18] = sub_75BB10();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_75BA90();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_11BBA8(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = sub_767030();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = sub_766D70();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_767020();
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99ECE0);
  sub_766FF0();
  (*(v7 + 8))(v9, v6);
  sub_766D50();

  sub_766D90();
  v16 = [a3 traitCollection];
  sub_766D60();
  v18 = v17;

  (*(v12 + 8))(v14, v11);
  return v18;
}

void sub_11BE1C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99ECE0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

Class sub_11C090(double a1, uint64_t a2, Class *a3)
{
  sub_396E8();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  v10.super.isa = v7;
  v11.super.isa = v9;
  result = sub_76A0C0(v10, v11).super.isa;
  *a3 = result;
  return result;
}

char *sub_11C168(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_11C58C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView(uint64_t a1)
{
  result = qword_945948;
  if (!qword_945948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_11C664(uint64_t a1)
{
  sub_11C704(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_11C704(uint64_t a1)
{
  if (!qword_945958)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_945958);
    }
  }
}

uint64_t sub_11C75C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_11CAB4(v3 + v4, a1);
}

id sub_11C7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11.n128_u64[0] = *(a1 + *(v10 + 20));
  v12 = sub_51DB60(v11);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView];
  result = [v13 overrideUserInterfaceStyle];
  if (result != v12)
  {
    v15 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_11CAB4(v2 + v15, v9);
    v16 = *(v10 - 8);
    v17 = (*(v16 + 48))(v9, 1, v10);
    sub_11CB24(v9);
    if (v17 == 1)
    {
      [v13 setOverrideUserInterfaceStyle:v12];
    }

    else
    {
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      *(v19 + 24) = v12;
      aBlock[4] = sub_11CC98;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_884640;
      v20 = _Block_copy(aBlock);
      v21 = v2;

      [v18 transitionWithView:v13 duration:5308420 options:v20 animations:0 completion:0.4];
      _Block_release(v20);
    }

    sub_11CB8C(a1, v6);
    (*(v16 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_11CBF0(v6, v2 + v15);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_11CAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CB24(uint64_t a1)
{
  v2 = sub_BD88(&qword_94A490, &unk_7858C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11CB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CC60()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_11CCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_11CCCC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = sub_769A00();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    sub_769CF0();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    sub_766CC0();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  sub_769CA0();
  result = [v28 setFrame:?];
  if (v48)
  {
    sub_769CA0();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_11D210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_11D234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11D27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_11D2F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_11D314(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11D334(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_11D37C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_769B20();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_769B40();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_11D498()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766970();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v16);
  sub_766960();
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E848);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_766CA0();
  v15 = &protocol witness table for StaticDimension;
  sub_B1B4(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_B1B4(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v10);
  sub_766960();
  qword_99AFB8 = 0;
  unk_99AFC0 = 0;
  sub_34698(&v16, &unk_99AFC8);
  sub_34698(&v13, &unk_99AFF0);
  qword_99B020 = 0;
  unk_99B028 = 0;
  qword_99B018 = 2;
  return sub_34698(&v10, &unk_99B030);
}

uint64_t sub_11D6D8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CF00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v4, qword_99B898);
  (*(v5 + 16))(v7, v8, v4);
  sub_75CDD0();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99E848);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_766CA0();
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v19 = sub_766970();
  v20 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v18);
  sub_766960();
  qword_99B058 = v10;
  unk_99B060 = v12;
  sub_34698(&v24, &unk_99B068);
  sub_34698(&v21, &unk_99B090);
  qword_99B0C0 = 0;
  unk_99B0C8 = 0;
  qword_99B0B8 = 3;
  return sub_34698(&v18, &unk_99B0D0);
}

char *sub_11DA20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
  sub_759210();
  *&v4[v15] = sub_759020();
  v46 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_93D560 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99E830);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_75BB20();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_75BB10();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v16, qword_99E848);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_75BB10();
  v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView(0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_11E030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v57 = sub_7623A0();
  v53 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0, qword_783FD0);
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = sub_75D850();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_75CF00();
  v21 = *(*(v20 - 8) + 16);
  v54 = a1;
  v21(a1, v18 + v19, v20);
  v52 = v2;
  v22 = [v2 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v23 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v23 = qword_946938;
  }

  v24 = sub_BE38(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v50 = v17;
  v25(v17, v14, v11);
  v49 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_B170(v26, v26[3]);
    v48 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_75EC20();
    (*(v29 + 8))(v32, v27);
    v6 = v48;
  }

  v33 = v53;
  v34 = *(v53 + 104);
  v35 = v57;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v57);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  v36.n128_f64[0] = (*(v33 + 56))(v6, 0, 1, v35);
  sub_BE2F8(v36);
  v37 = v51;
  sub_760940();
  v38 = v50;
  sub_75D820();

  (*(v55 + 8))(v37, v56);
  (*(v12 + 8))(v38, v11);
  v39 = *(v18 + v49);
  type metadata accessor for BaseLockupView();
  sub_75D650();
  v40 = v39 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize;
  if (*(v39 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v41 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v39 + v41, v58);
    sub_B170(v58, v58[3]);
    sub_760DE0();
    v43 = v42;
    v45 = v44;
    sub_BEB8(v58);
    *v40 = v43;
    *(v40 + 8) = v45;
    *(v40 + 16) = 0;
  }

  return sub_75CE80();
}

uint64_t sub_11E7E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CF00();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_11E030(v10);
  v11 = [v1 traitCollection];
  v12 = sub_769A00();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_93C3A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_93C3A8 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_11FB04();
  sub_765470();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView(0);
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_75BB20();
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_11FB58(v39, &v49);
  sub_759210();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_766580();
  sub_11FBB4(v39);

  sub_75D650();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_769A00();

  v32 = v35;
  if (v16)
  {
    sub_12A084(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_12A5C8(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_11FC08(v40);
}

uint64_t sub_11ECC0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_BD88(&unk_94E620, qword_79B350);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_784250;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_11EDD8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_77B6C0;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

double sub_11EE80(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_11ECC0();
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v8 = *(v5 + 16);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v6++ + 32);
      if (v9)
      {
        v10 = v9;
        sub_769440();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        v2 = &v35;
        sub_769500();
        v7 = v35;
      }
    }

    v2 = sub_11EDD8();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v7 = sub_11EDD8();
    v11 = sub_11ECC0();
    v12 = 0;
    v2 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v13 = *(v11 + 16);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v14 = *(v11 + 8 * v12++ + 32);
      if (v14)
      {
        v15 = v14;
        sub_769440();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v2 = v35;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v7 >> 62)
      {
        goto LABEL_59;
      }

      v16 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v21 = sub_76A860();
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_61:
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v7;
    *(v31 + 24) = v2;
    v39 = sub_11FA9C;
    v40 = v31;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_23F0CC;
    v38 = &unk_8847F0;
    v32 = _Block_copy(&v35);

    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v39 = sub_11FAF4;
    v40 = v33;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_3D6D80;
    v38 = &unk_884840;
    v34 = _Block_copy(&v35);

    [v30 animateWithDuration:4 delay:v32 options:v34 animations:0.33 completion:0.0];
    _Block_release(v34);
    _Block_release(v32);
    return result;
  }

  v21 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_61;
  }

LABEL_33:
  v22 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v23 = sub_76A770();
    }

    else
    {
      if (v22 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_56;
      }

      v23 = *(v2 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    [v23 setHidden:0];

    ++v22;
    if (v25 == v21)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v16 = sub_76A860();
LABEL_21:
    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = sub_76A770();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_55;
          }

          v18 = *(v7 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_53;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v2 >> 62)
    {
      break;
    }

    v7 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_64;
    }

LABEL_43:
    v26 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v27 = sub_76A770();
      }

      else
      {
        if (v26 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setAlpha:1.0];
      [v28 setHidden:0];

      ++v26;
      if (v29 == v7)
      {
        goto LABEL_64;
      }
    }
  }

  v7 = sub_76A860();
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_64:

  return result;
}

void sub_11F424(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); j; j = sub_76A860())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_76A770();
      }

      else
      {
        if (k >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_11F5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (j >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
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

uint64_t sub_11F680(void *a1)
{
  sub_75CEB0();
  sub_BEB8(a1 + 15);
  sub_34698(&v6, (a1 + 15));
  v2 = sub_75CE70();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_75CE30();
  a1[12] = result;
  return result;
}

uint64_t sub_11F6DC(void *a1)
{
  sub_75CDD0();
  *a1 = v2;
  a1[1] = v3;
  sub_75CE10();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_BEB8(a1 + 2);
  sub_34698(&v9, (a1 + 2));
  sub_75CEB0();
  sub_BEB8(a1 + 15);
  sub_34698(&v9, (a1 + 15));
  v5 = sub_75CE70();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_75CE30();
  a1[12] = result;
  return result;
}

double sub_11F830()
{
  swift_beginAccess();

  return result;
}

double sub_11F878(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_11F934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v6 = sub_769210();
  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v8 = sub_769210();
  [v7 setText:v8];

  return [v4 setNeedsLayout];
}

uint64_t sub_11FA5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_11FAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_11FABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_11FB04()
{
  result = qword_9459C8;
  if (!qword_9459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9459C8);
  }

  return result;
}

void sub_11FC64()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
  sub_759210();
  *(v0 + v8) = sub_759020();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_93D560 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99E830);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_75BB20();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_75BB10();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99E848);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_75BB10();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_120000(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = sub_7652D0();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F748);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_75BB20());
  *&v5[v20] = sub_75BB10();
  v25 = type metadata accessor for IconSilhouetteView(0);
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_396E8();
  v30 = sub_76A090();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_120394()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView(0);
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  sub_7652A0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel];
  sub_75D650();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  sub_75D650();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  sub_75D650();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_1206C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconSilhouetteView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView(uint64_t a1)
{
  result = qword_945A00;
  if (!qword_945A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1207C8(uint64_t a1)
{
  result = sub_7652D0();
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

void sub_120874()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = sub_7652D0();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99F748);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

uint64_t sub_120B20()
{
  sub_BD88(&qword_9452E0, &unk_7940D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8, &unk_785090);
  result = swift_arrayDestroy();
  qword_945A10 = v1;
  return result;
}

uint64_t sub_120D3C(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_BD88(&qword_945A90, &unk_785AE0);
  sub_161DC(v5, a4);
  sub_BE38(v5, a4);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for CGPoint(0);
  return sub_7592C0();
}

char *sub_120DDC(double a1, double a2, double a3, double a4)
{
  v9 = sub_7599B0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView(0);
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_93C3B0;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0, qword_78B4B0);
  isa = sub_7690E0().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_12189C(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_BD88(&qword_9477F0, qword_780200);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77B6D0;
  *(v28 + 32) = sub_767B80();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v32);
  return v20;
}

uint64_t sub_1211BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1226FC(v1 + v3, a1);
}

uint64_t sub_121218(uint64_t a1)
{
  v3 = sub_7599B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  sub_1226FC(&v1[v16], v15);
  sub_1226FC(a1, v12);
  sub_1226FC(&v1[v16], v9);
  swift_beginAccess();
  sub_122760(v12, &v1[v16]);
  swift_endAccess();
  sub_1939E8(v9);
  sub_1227C4(v9);
  sub_1227C4(v12);
  sub_1226FC(&v1[v16], v12);
  LOBYTE(v9) = sub_19C74C(v12, v15);
  sub_1227C4(v12);
  if ((v9 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v17], v3);
    sub_12189C(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_1227C4(a1);
  return sub_1227C4(v15);
}

void sub_121494()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ArcadeHeaderView(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_122858;
  *(v3 + 24) = v2;
  v7[4] = sub_2EC28;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1EB578;
  v7[3] = &unk_8848B8;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_121610(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_121744(uint64_t a1, uint64_t a2)
{
  v5 = sub_7599B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191990(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_122550(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_12189C(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = sub_7599B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
    sub_BD88(&qword_941C10, &qword_781230);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_77E280;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = sub_769450().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = sub_769210();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
      sub_BD88(&qword_941C10, &qword_781230);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_77E280;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = sub_769450().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = sub_769210();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
        sub_BD88(&qword_941C10, &qword_781230);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_77E280;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = sub_769450().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
      sub_BD88(&qword_941C10, &qword_781230);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_77E280;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = sub_769450().super.isa;

      [v42 setColors:v59];

      if (qword_93C3B8 != -1)
      {
        swift_once();
      }

      v60 = sub_BD88(&qword_945A90, &unk_785AE0);
      sub_BE38(v60, qword_945A18);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      sub_7592B0();

      [v42 setStartPoint:{v84, v85}];
      if (qword_93C3C0 != -1)
      {
        swift_once();
      }

      sub_BE38(v60, qword_945A30);
      v83 = v62;
      v63 = v62;
      sub_7592B0();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = sub_769210();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_122550(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_12232C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
  v2 = sub_7599B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer);
}

id sub_1223A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView(uint64_t a1)
{
  result = qword_945A80;
  if (!qword_945A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1224AC(uint64_t a1)
{
  result = sub_7599B0();
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

uint64_t sub_122550(uint64_t a1)
{
  v2 = sub_7599B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_396E8();
      v8 = sub_76A0F0();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_1226FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_122760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1227C4(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_122820()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_122870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1228E0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v4, v0);
  qword_945AB0 = sub_768FF0();
  unk_945AB8 = &protocol witness table for OSLogger;
  sub_B1B4(qword_945A98);
  return sub_768FE0();
}

uint64_t sub_122A24(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v5 = sub_768F90();
  sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  sub_768900();
  sub_768ED0();
  v6 = v11[0];
  sub_122BC4(v11[0]);
  sub_123AAC(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_123B34(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  swift_retain_n();

  v9 = sub_769970();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_768F10();

  sub_BEB8(v11);
  return v5;
}

id sub_122BC4(void *a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_945AC8, &unk_785BA8);
  v10 = sub_768F90();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_768F60();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      v25 = sub_769970();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_123C1C;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_8849B0;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_123C40(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350, &unk_77F850);
      sub_4C874();
      sub_76A5A0();
      v22 = v25;
      sub_769980();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_93C3C8 != -1)
      {
        swift_once();
      }

      sub_B170(qword_945A98, qword_945AB0);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      sub_123B80();
      swift_allocError();
      sub_768F50();
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1230F0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a1;
  v33 = a3;
  v39 = a2;
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_758B40();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75F340();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760280();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7687B0();
  __chkstk_darwin(v16 - 8);
  v17 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v20 - 8);
  v22 = &v30 - v21;
  v23 = sub_765490();
  v26 = __chkstk_darwin(v23);
  if (*v38 == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v25 + 104))(&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_7570A0();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_759E30();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v41 = sub_7635D0();
    v40 = v33;

    sub_768790();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v30 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v31);
    (*(v32 + 104))(v36, enum case for FlowOrigin.inapp(_:), v35);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v29 = sub_758AD0();
    sub_72D7A8(v29, 1, v37);
    sub_768F00();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_768F60();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1236B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_123C88;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_123860;
  v11 = &unk_8849D8;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_123CB4;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_50614;
  v11 = &unk_884A00;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

void sub_123860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1238C8(uint64_t a1)
{
  if (qword_93C3C8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_945A98, qword_945AB0);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_B1B4(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_7685C0();
  sub_BDD0(v4);
  sub_768EA0();

  LOBYTE(v4[0]) = 0;
  return sub_768F60();
}

uint64_t sub_123AE4()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_123B80()
{
  result = qword_945AD0;
  if (!qword_945AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945AD0);
  }

  return result;
}

uint64_t sub_123BD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_123C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_123C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_123CD0()
{
  result = qword_945AD8;
  if (!qword_945AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945AD8);
  }

  return result;
}

char *sub_123D34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_124014(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_12407C(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v26 = a1;
  v27 = sub_762D10();
  v12 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v31);
  if ((a3 & 1) == 0)
  {
    sub_34630(v32);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99EA88);
  v16 = [a4 traitCollection];
  v17 = sub_769E10();

  sub_309E0(v31, v30);
  v18 = sub_7670D0();
  swift_allocObject();
  v19 = sub_767090();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = sub_7653B0();
  v29[3] = v20;
  v29[4] = sub_9BA34();
  v21 = sub_B1B4(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  sub_765C30();
  sub_BEB8(v29);

  sub_762D00();
  sub_762CE0();
  (*(v12 + 8))(v14, v27);
  swift_allocObject();
  v23 = sub_767090();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_34154(a4, v30, a5, a6);

  sub_30A3C(v30);
  sub_30A90(v31);
  return v24;
}

uint64_t sub_1243EC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_75D3C0();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7656A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v14 = v29;
  v15 = sub_7699E0();

  if (v15 & 1) != 0 && (swift_getKeyPath(), sub_75C7B0(), , v16 = v28, v17 = sub_769A00(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), sub_75C7B0(), , sub_7656B0(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = sub_765690(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    sub_75D3D0();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = sub_75D400();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t sub_124794@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A560;
  }

  return sub_BE140(v4, a1);
}

uint64_t sub_124884@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A6D0;
  }

  return sub_BE140(v4, a1);
}

double sub_124974()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == &dword_0 + 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1249D8()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_87DCB8;
  if (v2 != &dword_0 + 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = sub_769A00();

    if ((v5 & 1) == 0)
    {
      return &off_87DD18;
    }
  }

  return v3;
}

double sub_124A88(void *a1)
{
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    return 12.0;
  }

  sub_769A00();
  return 112.0;
}

id sub_124AEC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_99A560;
  }

  sub_BE140(v6, v24);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_99A6D0;
  }

  sub_BE140(v10, v24);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    sub_765970();
  }

  v16 = sub_17E84C();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_87DCB8;
  if (v18 != &dword_0 + 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = sub_769A00();

    if ((v21 & 1) == 0)
    {
      v19 = &off_87DD18;
    }
  }

  sub_3066F8(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_124EA0(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_75D850();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (sub_769A00())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_99A560;
  }

  v25 = v18;
  sub_BE140(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99A6D0;
  }

  sub_BE140(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_BB4E0(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_BE0EC(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (sub_769A00())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_BE140(v36, &v51);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v37 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v37 = qword_946938;
  }

  v38 = sub_BE38(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    sub_75D800();
    v40 = v39;
    sub_75D800();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_BE0EC(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_125820(v60, a1, v20 + v44, v35))) * 0.5;
  sub_B170(v61, v61[3]);
  sub_7666E0();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_BEB8(v61);
  sub_34698(&v51, v61);
  sub_B170(v58, v58[3]);
  sub_7666E0();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_BEB8(v58);
  sub_34698(&v51, v58);
  sub_BE140(v60, &v51);
  v48 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(&v51, v30 + v48);
  swift_endAccess();
  sub_BE140(v57, &v51);
  v49 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(&v51, v30 + v49);
  swift_endAccess();
  sub_BE0EC(v57);
  return sub_BE0EC(v60);
}

void sub_1254C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = sub_7596A0();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = sub_76A860();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == &dword_0 + 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = sub_7650D0();
  sub_765260();
  sub_7666A0();
  v23 = (v7 + 8);
  if (v22)
  {
    sub_766660();
  }

  else
  {
    sub_766650();
  }

  (*v23)(v9, v6);
}

double sub_125780(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == &dword_0 + 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_125820(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = 0.0;
  if ((sub_769A00() & 1) == 0)
  {
    sub_B170(a1 + 14, a1[17]);
    sub_766710();
    v9 = v8;
    sub_B170(a1 + 19, a1[22]);
    sub_766710();
    v11 = v9 + v10;
    sub_B170(a1 + 24, a1[27]);
    v12 = [v4 traitCollection];
    sub_766710();
    v14 = v13;

    if (v11 <= a4)
    {
      if (v11 + v14 <= a4)
      {
        return v14 * 0.5;
      }

      else
      {
        return (a4 - v11) * 0.5;
      }
    }
  }

  return v7;
}

id sub_1259BC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_125A70(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7593D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_7595E0();
  v15 = sub_7595D0();
  v17 = v16;
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99FA90);
  v20 = sub_48A83C(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  sub_75CD70();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  sub_75CCD0();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_125D4C()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_7573C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  sub_75D650();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_1261A0(&unk_99BE98, v28);
    v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = sub_75BB20();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1261A0(v28, v26);
    v13 = v12;
    sub_757390();
    LOBYTE(v12) = sub_7573A0();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_766A20();
      sub_1261FC(v28);
    }

    else
    {
      sub_1261FC(v28);
      sub_134D8(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_BEB8(v27);
    sub_75D650();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    sub_75D650();
    sub_270D88(v1, v29, v18, v19);
    v21 = v20;
    v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder);
    sub_75D650();
    MinX = CGRectGetMinX(v32);
    sub_75D650();
    Width = CGRectGetWidth(v33);
    sub_75D650();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_37538(v29);
  }

  return result;
}

id sub_1260FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_126250()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_7595E0();
  v7 = sub_7595D0();
  v9 = v8;
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99FA90);
  v12 = sub_48A83C(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_75CD70();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  sub_75CCD0();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  sub_76A840();
  __break(1u);
}

uint64_t sub_126484()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = sub_765610();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v15 = *(sub_765540() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_780120;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_62634();
  sub_7655B0();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  v47 = v6;
  sub_7655D0();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  sub_765500();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4034000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4034000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  (v30)(v3, v48, v29);
  sub_7697A0();
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4038000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4038000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_945B70 = v39;
  return result;
}

uint64_t sub_126EB8()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_765610();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v16 = *(sub_765540() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_780120;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_62634();
  sub_7655D0();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  v43 = v6;
  sub_7655D0();
  v41 = v15;
  v44 = v12;
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_7697A0();
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v34 = v9;
  sub_765500();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_945B78 = v39;
  return result;
}

uint64_t sub_1278C4()
{
  sub_127CD8(v0 + OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(uint64_t a1)
{
  result = qword_945BB0;
  if (!qword_945BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_12797C(uint64_t a1, uint64_t a2)
{
  sub_127A0C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_127A0C(uint64_t a1, uint64_t a2)
{
  if (!qword_94CAA0)
  {
    sub_757640();
    v2 = sub_76A480();
    if (!v3)
    {
      atomic_store(v2, &qword_94CAA0);
    }
  }
}

uint64_t sub_127A98(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v12[5] = a1;
  sub_127C1C();
  v7 = a1;
  sub_BD88(&qword_945C60, qword_785EB8);
  if (swift_dynamicCast())
  {
    sub_BEB8(v12);
    sub_75C830();
    v8 = sub_757640();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_757640();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_127C68(v6, v2 + v10);
  return swift_endAccess();
}

unint64_t sub_127C1C()
{
  result = qword_93FF60;
  if (!qword_93FF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93FF60);
  }

  return result;
}

uint64_t sub_127C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94EE60, qword_7841A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_127CD8(uint64_t a1)
{
  v2 = sub_BD88(&unk_94EE60, qword_7841A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_127D60(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93C3F0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99B138);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_127F3C()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99B138);
  v1 = sub_BE38(v0, qword_99B138);
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99F790);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1280BC()
{
  v1 = v0;
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v4 = qword_93C3F0;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  sub_BE38(v6, qword_99B138);
  v7 = [v1 traitCollection];
  v8 = sub_769E10();

  *(inited + 64) = v3;
  *(inited + 40) = v8;
  v9 = sub_10D028(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, qword_940F50, &qword_785170);
  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v11 = v10;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered) == 1)
  {
    [v10 setAlignment:1];
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = sub_7699F0();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAlignment:v14];
  }

  v28 = sub_BE70(0, &unk_959BA0, NSMutableParagraphStyle_ptr);
  *&v27 = v11;
  sub_13310(&v27, v26);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_4592E8(v26, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = v9;
  v29 = v9;
  v18 = NSForegroundColorAttributeName;
  v19 = [v1 tintColor];
  if (v19)
  {
    v20 = v19;
    v28 = sub_BE70(0, &qword_93E540, UIColor_ptr);
    *&v27 = v20;
    sub_13310(&v27, v26);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_4592E8(v26, v18, v21);

    v29 = v17;
  }

  else
  {
    sub_20619C(&v27);

    sub_10A2C(&v27, &unk_93FBD0, &qword_77DFA0);
  }

  v22 = objc_allocWithZone(NSAttributedString);

  v23 = sub_769210();

  type metadata accessor for Key(0);
  sub_1293AC(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  isa = sub_7690E0().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  sub_75BAC0();
  [v1 setNeedsLayout];
}

void sub_1284C8()
{
  ObjectType = swift_getObjectType();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1294A4;
  *(v4 + 24) = v3;
  v8[4] = sub_2EC28;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1EB578;
  v8[3] = &unk_884B80;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_128648(uint64_t a1, uint64_t a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel);
  sub_75D650();
  [v7 sizeThatFits:{v8, v9}];
  sub_75D650();
  CGRectGetWidth(v14);
  sub_75D650();
  CGRectGetMinX(v15);
  sub_75D650();
  CGRectGetMinY(v16);
  if (qword_93C3E0 != -1)
  {
    swift_once();
  }

  v10 = sub_766CA0();
  sub_BE38(v10, qword_99B108);
  sub_766470();
  v11 = [v7 traitCollection];
  sub_766C70();

  [v7 firstBaselineFromTop];
  (*(v4 + 8))(v6, v3);
  sub_75D650();
  sub_769D20();
  return [v7 setFrame:?];
}

void sub_12892C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel];
  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v4];
      v8 = [v4 length];
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_129434;
      *(v10 + 24) = v9;
      v14[4] = sub_12944C;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_2157DC;
      v14[3] = &unk_884B08;
      v11 = _Block_copy(v14);
      v12 = v7;
      v13 = v6;

      [v4 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v8 usingBlock:{0x100000, v11}];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        [v2 setAttributedText:v12];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_128BC0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text];
  *v1 = 0;
  *(v1 + 1) = 0;

  sub_1280BC();
  v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered] = 0;
  sub_1280BC();
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_F704(v3, v4);
}