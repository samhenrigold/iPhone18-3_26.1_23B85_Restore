unint64_t sub_10003C6B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v15 = ~v3;
    v16 = a1;
    while (1)
    {
      v5 = *(*(v17 + 48) + v4);
      v18 = v4;
      if (v5 <= 1)
      {
        v7 = *(*(v17 + 48) + v4) ? 0xEE006B636142746ELL : 0xEF746E6F7246746ELL;
        v6 = 0x656D75636F446469;
      }

      else if (v5 == 2)
      {
        v7 = 0xE600000000000000;
        v6 = 0x6569666C6573;
      }

      else
      {
        v6 = v5 == 3 ? 0x7373656E6576696CLL : 0x7261696C69787561;
        v7 = v5 == 3 ? 0xED00006F65646956 : 0xEE006F6564695679;
      }

      if (v16 == 3)
      {
        v8 = 0x7373656E6576696CLL;
      }

      else
      {
        v8 = 0x7261696C69787561;
      }

      if (v16 == 3)
      {
        v9 = 0xED00006F65646956;
      }

      else
      {
        v9 = 0xEE006F6564695679;
      }

      if (v16 == 2)
      {
        v8 = 0x6569666C6573;
        v9 = 0xE600000000000000;
      }

      v10 = v16 ? 0xEE006B636142746ELL : 0xEF746E6F7246746ELL;
      v11 = v16 <= 1 ? 0x656D75636F446469 : v8;
      v12 = v16 <= 1 ? v10 : v9;
      if (v6 == v11 && v7 == v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v18;
      }

      v4 = (v18 + 1) & v15;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v18;
  }

  return v4;
}

unint64_t sub_10003C8BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10003C9C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008341D0, &unk_1006BF8D0);
      result = sub_10003AF10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10001F358(&v5[v8], v7[7] + 40 * v13);
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

unint64_t sub_10003CBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834998, &qword_1006C0178);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

void *sub_10003CCE4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_1008348E0, &qword_1006C00F8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10003AFE4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
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
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10003AFE4(v4);
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

unint64_t sub_10003CE0C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834988, &qword_1006C0170);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834990, &qword_1006DA820);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834988, &qword_1006C0170);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
      result = sub_1000405C4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
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

unint64_t sub_10003D01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834898, &qword_1006C00D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10003B078(v5);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100833A48, &unk_1006BF8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10003B028(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_10003D21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100849420, &qword_1006DA510);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003D358(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348E8, &qword_1006C0100);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_1008348F0, &qword_1006C0108);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008348E8, &qword_1006C0100);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for IdentityProofingDisplayMessage();
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

unint64_t sub_10003D56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834738, &unk_1006DA620);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v13, &qword_100834740, &qword_1006C0030);
      v5 = v13;
      v6 = v14;
      result = sub_10003B8DC(v13, v14, &String.hash(into:), sub_10003BBE4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001F358(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10003D6C8(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008347B8, &qword_1006C0048);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_1008347C0, &qword_1006C0050);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008347B8, &qword_1006C0048);
      result = sub_10003B100(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IdentityKeyGenerationOption();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v13, &qword_100834450, &unk_1006BFED0);
      v5 = v13;
      v6 = v14;
      result = sub_10003B8DC(v13, v14, &String.hash(into:), sub_10003BBE4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001F348(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003DA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008348F8, &qword_1006C0110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10003B1D8(v6);
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

unint64_t sub_10003DB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, v13, &qword_100834720, &qword_1006DA4F0);
      result = sub_10003AECC(v13);
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
      result = sub_10001F348(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003DC5C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834910, &qword_1006C0118);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834918, &qword_1006C0120);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834910, &qword_1006C0118);
      result = sub_10003B21C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IQCType();
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

unint64_t sub_10003DE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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

unint64_t sub_10003DF90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003E0B4(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348D0, &qword_1006C00F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_1008348D8, &unk_1006DA710);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008348D0, &qword_1006C00F0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
      result = sub_1000405C4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
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

unint64_t sub_10003E2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008347E0, &qword_1006C0060);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v11, &qword_10084A0B0, &qword_1006E9E50);
      v5 = v11;
      result = sub_10003B35C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001F348(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003E414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_100834978, &qword_1006C0160);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 176);
  v42 = *(a1 + 160);
  v43 = v4;
  v44 = *(a1 + 192);
  v5 = *(a1 + 112);
  v38 = *(a1 + 96);
  v39 = v5;
  v6 = *(a1 + 144);
  v40 = *(a1 + 128);
  v41 = v6;
  v7 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v7;
  v8 = *(a1 + 80);
  v36 = *(a1 + 64);
  v37 = v8;
  v10 = *(&v34 + 1);
  v9 = v34;
  sub_10000BBC4(&v34, v33, &qword_100834980, &qword_1006C0168);
  result = sub_10003B8DC(v9, v10, &String.hash(into:), sub_10003BBE4);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 200);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 152 * result;
    v16 = v36;
    *v15 = v35;
    *(v15 + 16) = v16;
    v17 = v37;
    v18 = v38;
    v19 = v40;
    *(v15 + 64) = v39;
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    *(v15 + 144) = v44;
    *(v15 + 112) = v21;
    *(v15 + 128) = v22;
    *(v15 + 96) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v26 = (v13 + 168);
    v27 = v13[9];
    v42 = v13[8];
    v43 = v27;
    v44 = *(v13 + 20);
    v28 = v13[5];
    v38 = v13[4];
    v39 = v28;
    v29 = v13[7];
    v40 = v13[6];
    v41 = v29;
    v30 = v13[1];
    v34 = *v13;
    v35 = v30;
    v31 = v13[3];
    v36 = v13[2];
    v37 = v31;
    v10 = *(&v34 + 1);
    v9 = v34;
    sub_10000BBC4(&v34, v33, &qword_100834980, &qword_1006C0168);
    result = sub_10003B8DC(v9, v10, &String.hash(into:), sub_10003BBE4);
    v13 = v26;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003E654(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834798, &qword_1006D4940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_1008347A0, &unk_1006DA610);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834798, &qword_1006D4940);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for RecipientEncryptionCertificate();
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

unint64_t sub_10003E87C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003E9C8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834728, &qword_1006C0020);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834730, &qword_1006C0028);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834728, &qword_1006C0020);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
      result = sub_1000405C4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for DigitalPresentmentEligibleProposalData);
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

unint64_t sub_10003EBD8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834960, &qword_1006C0150);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834968, &qword_1006C0158);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834960, &qword_1006C0150);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for CredentialPresentmentElementRequestInfo();
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

unint64_t sub_10003EE10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100007224(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_10003B580(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10001F348(&v18, (v9[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003EF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834860, &qword_1006C00B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003F064(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834950, &qword_1006C0140);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834958, &qword_1006C0148);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834950, &qword_1006C0140);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for IQACode();
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

unint64_t sub_10003F278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008348A8, &qword_1006C00E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_10003B580(v7);
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

unint64_t sub_10003F378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834948, &qword_1006DA7A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_10003F4CC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834928, &qword_1006C0130);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834930, &qword_1006C0138);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_100834928, &qword_1006C0130);
      result = sub_10003B808(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EncryptedMessageEntity();
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

unint64_t sub_10003F6C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v7 = *(i - 5);
      v8 = *(i - 4);
      v10 = *(i - 3);
      v9 = *(i - 2);
      v12 = *(i - 1);
      v11 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
      if (v14)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v5[6] + 16 * result);
      *v15 = v7;
      v15[1] = v8;
      v16 = (v5[7] + 32 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v12;
      v16[3] = v11;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v5[2] = v19;
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

unint64_t sub_10003F808(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348C0, &qword_1006C00E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_1008348C8, &unk_1006DA6D0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008348C0, &qword_1006C00E8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10003B8DC(*v5, v12, &String.hash(into:), sub_10003BBE4);
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
      v18 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
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

unint64_t sub_10003FA1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834760, &qword_1006DA550);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10003AFE4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_10003FB10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834768, &unk_1006DA5B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003FC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_100834828, &qword_1006C0090);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32[0] = v4;
  *(v32 + 9) = *(a1 + 121);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_10000BBC4(&v27, v26, &qword_100834830, &qword_1006EA0E0);
  result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 96 * result);
    v14 = v29;
    *v13 = v28;
    v13[1] = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32[0];
    *(v13 + 73) = *(v32 + 9);
    v13[3] = v16;
    v13[4] = v17;
    v13[2] = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v11 + 7;
    v22 = v11[5];
    v31 = v11[4];
    v32[0] = v22;
    *(v32 + 9) = *(v11 + 89);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_10000BBC4(&v27, v26, &qword_100834830, &qword_1006EA0E0);
    result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003FE88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834840, &qword_1006C0098);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10003B580(v6);
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

unint64_t sub_10003FFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834820, &qword_1006C0088);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_1000400C4(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008347F8, &qword_1006C0068);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&qword_100834800, &qword_1006C0070);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008347F8, &qword_1006C0068);
      result = sub_10003B3AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ECIESOption();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000402AC(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v9, v5, &qword_1008341D0, &unk_1006BF8D0);
      result = sub_10003A9CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10001F358(&v5[v8], v7[7] + 40 * v13);
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

uint64_t sub_1000404B8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834450, &unk_1006BFED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004057C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000405C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v10 = type metadata accessor for DIPError.Code();
  v6[6] = v10;
  v6[7] = *(v10 - 8);
  v6[8] = swift_task_alloc();
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_1000407F0;

  return v13(a2, a3, a5);
}

uint64_t sub_1000407F0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100040940, 0, 0);
  }
}

uint64_t sub_100040940()
{
  v1 = COSE_Sign1.payload.getter();
  if (v2 >> 60 == 15)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.coseCannotParseResponse(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v3 = v1;
    v4 = v2;
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    CBORDecoder.init()();
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    sub_10000BD94(v3, v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100040B28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for DIPError.Code();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_100040C1C;

  return sub_100041294(a1);
}

uint64_t sub_100040C1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_100041144;
  }

  else
  {
    v5 = sub_100040D48;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100040D48()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v0[8] + 32);
    }

    v4 = v0[9];

    COSESignatureValidator.validateSignature(of:with:)();
    if (!v4)
    {

      v9 = v0[1];
      goto LABEL_12;
    }

    v10 = *(v0[5] + 104);
    v10(v0[6], enum case for DIPError.Code.coseInvalidSignature(_:), v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = enum case for DIPError.Code.coseInvalidResponse(_:);
  }

  else
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[4];

    v5 = enum case for DIPError.Code.coseInvalidResponse(_:);
    v10 = *(v6 + 104);
    v10(v7, enum case for DIPError.Code.coseInvalidResponse(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v10(v0[6], v5, v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];
LABEL_12:

  return v9();
}

uint64_t sub_100041144()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.coseInvalidResponse(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100041294(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100041354, v1, 0);
}

uint64_t sub_100041354()
{
  if (COSE_Sign1.x509Chain.getter())
  {
    v1 = decodeCertificateChain(fromDER:)();
    v0[15] = v1;
    v4 = v0[11];
    v5 = v1;

    v6 = OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
    swift_beginAccess();
    sub_100020260(v4 + v6, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    sub_10000BA08(v0 + 2, v7);
    v9 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1000415AC;

    return dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(v5, v4 + v9, v7, v8);
  }

  else
  {
    (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.coseInvalidResponse(_:), v0[12]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1000415AC(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[11];

  if (v1)
  {
    v6 = sub_100041790;
  }

  else
  {
    v4[18] = a1;
    v6 = sub_100041704;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100041704()
{
  v1 = v0[18];
  sub_10000BB78(v0 + 2);
  v2 = SecTrustRef.certificateChain.getter();

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100041790()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_10000BB78(v0 + 2);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000418EC()
{
  v1 = OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator;
  v2 = type metadata accessor for COSESignatureValidator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier));
  v3 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
  v4 = type metadata accessor for DIPCertUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TrustValidator(uint64_t a1)
{
  result = qword_100834A88;
  if (!qword_100834A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041A08(uint64_t a1)
{
  result = type metadata accessor for COSESignatureValidator();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DIPCertUsage();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100041AF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_100040B28(a1);
}

uint64_t sub_100041B8C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return _swift_task_switch(sub_100041BAC, v3, 0);
}

uint64_t sub_100041BAC()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
  swift_beginAccess();
  sub_10001F370(v1, *(v1 + 24));
  dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  v14 = type metadata accessor for TrustValidator(0);
  *v13 = v7;
  v13[1] = sub_100027B9C;

  return sub_100040664(a1, a2, v14, a3, a7, a4);
}

uint64_t sub_100041D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100041F04;

  return sub_100040664(a1, a2, a6, a3, a7, a4);
}

uint64_t sub_100041E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  v14 = type metadata accessor for KRLTrustValidator();
  *v13 = v7;
  v13[1] = sub_100041F04;

  return sub_100040664(a1, a2, v14, a3, a7, a4);
}

uint64_t sub_100041F18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_100042014;

  return sub_100042908(a1, a2);
}

uint64_t sub_100042014(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_100042600;
  }

  else
  {
    v4 = sub_100042128;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100042128()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];

    v10 = enum case for DIPError.Code.vicalInvalidDocument(_:);
    (*(v8 + 104))(v7, enum case for DIPError.Code.vicalInvalidDocument(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[5] + 104))(v0[6], v10, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10004247C;
  v6 = v0[2];
  v5 = v0[3];

  return sub_10004412C(v6, v3, v5);
}

uint64_t sub_10004247C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100042780;
  }

  else
  {
    v2 = sub_100042590;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100042590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042600()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100042780()
{
  (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.vicalInvalidDocument(_:), *(v0 + 32));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042908(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[16] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for Milestone();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100042B24, 0, 0);
}

uint64_t sub_100042B24()
{
  v61 = v0;
  v1 = objc_opt_self();
  v0[28] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.forceOCSPRejection.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v52 = enum case for DIPError.Code.revokedCertificate(_:);
    (*(v0[26] + 104))(v0[27]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v50 = 60;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = v0[25];
    v6 = v0[20];
    v54 = v0[26];
    v56 = v0[21];
    v7 = v0[16];
    v58 = v0[15];
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = *(v9 - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v8, v9);
    swift_errorRetain();
    Error.dipErrorCode.getter();
    (*(v10 + 8))(v11, v9);
    v53 = *(v54 + 104);
    v53(v6, enum case for DIPError.Code.coseInvalidResponse(_:), v5);
    (*(v54 + 56))(v6, 0, 1, v5);
    v12 = *(v58 + 48);
    sub_100044D38(v56, v7);
    sub_100044D38(v6, v7 + v12);
    v13 = *(v54 + 48);
    v14 = v13(v7, 1, v5);
    v15 = v0[25];
    v59 = v13;
    if (v14 == 1)
    {
      v16 = v0[21];
      sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v16, &qword_10083B020, &unk_1006D8ED0);
      if (v13(v7 + v12, 1, v15) == 1)
      {
        sub_10000BE18(v0[16], &qword_10083B020, &unk_1006D8ED0);

LABEL_12:
        v53(v0[27], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[25]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        v50 = 68;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_13:
        v30 = v0[25];
        v31 = v0[18];
        static DIPOIDVerifier.getSpecificCertificateError(_:)();
        swift_getErrorValue();
        Error.dipErrorCode.getter();
        if (v59(v31, 1, v30) == 1)
        {
LABEL_14:
          static VICALMilestone.documentSignerCertificateUntrusted.getter();
          goto LABEL_19;
        }

        v33 = v0[25];
        v32 = v0[26];
        v34 = v0[17];
        sub_100044D38(v0[18], v34);
        v35 = (*(v32 + 88))(v34, v33);
        if (v35 == v52)
        {
          static VICALMilestone.documentSignerCertificateRevoked.getter();
        }

        else
        {
          if (v35 != enum case for DIPError.Code.expiredCertificate(_:))
          {
            (*(v0[26] + 8))(v0[17], v0[25]);
            goto LABEL_14;
          }

          static VICALMilestone.documentSignerCertificateExpired.getter();
        }

LABEL_19:
        v36 = v0[28];
        v37 = v0[23];
        v38 = v0[24];
        v39 = v0[22];
        v40 = v0[18];
        Milestone.log()();
        (*(v37 + 8))(v38, v39);
        sub_10000BE18(v40, &qword_10083B020, &unk_1006D8ED0);
        v41 = [v36 standardUserDefaults];
        v42._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableTrustValidation.getter();
        LOBYTE(v39) = NSUserDefaults.internalBool(forKey:)(v42);

        if (v39)
        {
          v43 = v0[13];
          v44 = v0[14];
          v45 = v0[12];
          defaultLogger()();
          DIPLogError(_:message:log:)();
          (*(v43 + 8))(v44, v45);
          v46 = COSE_Sign1.x509Chain.getter();
          if (v46 && (v60[1] = v46, sub_100044AB4(v60), , (v47 = v60[0]) != 0))
          {
          }

          else
          {

            v47 = _swiftEmptyArrayStorage;
          }

          v49 = v0[1];

          return v49(v47);
        }

        else
        {
          v53(v0[27], enum case for DIPError.Code.internalError(_:), v0[25]);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v48 = v0[1];

          return v48();
        }
      }
    }

    else
    {
      sub_100044D38(v0[16], v0[19]);
      if (v13(v7 + v12, 1, v15) != 1)
      {
        v24 = v0[26];
        v25 = v0[27];
        v26 = v0[25];
        v51 = v0[20];
        v27 = v0[19];
        v55 = v0[21];
        v57 = v0[16];
        (*(v24 + 32))(v25, v7 + v12, v26);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v24 + 8);
        v29(v25, v26);
        sub_10000BE18(v51, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v55, &qword_10083B020, &unk_1006D8ED0);
        v29(v27, v26);
        sub_10000BE18(v57, &qword_10083B020, &unk_1006D8ED0);

        if ((v28 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v21 = v0[25];
      v20 = v0[26];
      v22 = v0[21];
      v23 = v0[19];
      sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v22, &qword_10083B020, &unk_1006D8ED0);
      (*(v20 + 8))(v23, v21);
    }

    sub_10000BE18(v0[16], &qword_100834B60, &qword_1006C0310);

    goto LABEL_13;
  }

  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_100043594;
  v18 = v0[10];

  return sub_100041294(v18);
}

uint64_t sub_100043594(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1000437C8;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1000436BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000436BC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  static VICALMilestone.documentSignerCertificateTrusted.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000437C8()
{
  v52 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[20];
  v47 = v0[21];
  v49 = v0[16];
  v50 = v0[15];
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v4, v5);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v6 + 8))(v7, v5);
  v46 = *(v1 + 104);
  v46(v3, enum case for DIPError.Code.coseInvalidResponse(_:), v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v8 = *(v50 + 48);
  sub_100044D38(v47, v49);
  sub_100044D38(v3, v49 + v8);
  v9 = *(v1 + 48);
  v10 = v9(v49, 1, v2);
  v11 = v0[25];
  if (v10 != 1)
  {
    sub_100044D38(v0[16], v0[19]);
    if (v9(v49 + v8, 1, v11) != 1)
    {
      v17 = v0[26];
      v18 = v0[27];
      v19 = v0[25];
      v44 = v0[20];
      v45 = v0[21];
      v20 = v0[19];
      v48 = v0[16];
      (*(v17 + 32))(v18, v49 + v8, v19);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v17 + 8);
      v22(v18, v19);
      sub_10000BE18(v44, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v45, &qword_10083B020, &unk_1006D8ED0);
      v22(v20, v19);
      sub_10000BE18(v48, &qword_10083B020, &unk_1006D8ED0);

      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[21];
    v16 = v0[19];
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v15, &qword_10083B020, &unk_1006D8ED0);
    (*(v13 + 8))(v16, v14);
LABEL_6:
    sub_10000BE18(v0[16], &qword_100834B60, &qword_1006C0310);

    goto LABEL_9;
  }

  v12 = v0[21];
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v12, &qword_10083B020, &unk_1006D8ED0);
  if (v9(v49 + v8, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(v0[16], &qword_10083B020, &unk_1006D8ED0);

LABEL_8:
  v46(v0[27], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[25]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_9:
  v23 = v0[25];
  v24 = v0[18];
  static DIPOIDVerifier.getSpecificCertificateError(_:)();
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if (v9(v24, 1, v23) == 1)
  {
LABEL_10:
    static VICALMilestone.documentSignerCertificateUntrusted.getter();
    goto LABEL_15;
  }

  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[17];
  sub_100044D38(v0[18], v27);
  v28 = (*(v25 + 88))(v27, v26);
  if (v28 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    static VICALMilestone.documentSignerCertificateRevoked.getter();
  }

  else
  {
    if (v28 != enum case for DIPError.Code.expiredCertificate(_:))
    {
      (*(v0[26] + 8))(v0[17], v0[25]);
      goto LABEL_10;
    }

    static VICALMilestone.documentSignerCertificateExpired.getter();
  }

LABEL_15:
  v29 = v0[28];
  v30 = v0[23];
  v31 = v0[24];
  v32 = v0[22];
  v33 = v0[18];
  Milestone.log()();
  (*(v30 + 8))(v31, v32);
  sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
  v34 = [v29 standardUserDefaults];
  v35._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableTrustValidation.getter();
  LOBYTE(v32) = NSUserDefaults.internalBool(forKey:)(v35);

  if (v32)
  {
    v36 = v0[13];
    v37 = v0[14];
    v38 = v0[12];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    (*(v36 + 8))(v37, v38);
    v39 = COSE_Sign1.x509Chain.getter();
    if (v39 && (v51[1] = v39, sub_100044AB4(v51), , (v40 = v51[0]) != 0))
    {
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
    }

    v43 = v0[1];

    return v43(v40);
  }

  else
  {
    v46(v0[27], enum case for DIPError.Code.internalError(_:), v0[25]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_10004412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for Milestone();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000442F0, a3, 0);
}

uint64_t sub_1000442F0()
{
  COSESignatureValidator.validateSignature(of:with:)();

  return _swift_task_switch(sub_1000444B4, 0, 0);
}

uint64_t sub_1000444B4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  static VICALMilestone.documentSignatureValid.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100044578()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  swift_getErrorValue();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v4, v5);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v6 + 8))(v7, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);
  sub_100044D38(*(v0 + 104), v10);
  v11 = (*(v9 + 88))(v10, v8);
  if (v11 == enum case for DIPError.Code.coseInvalidPublicKey(_:))
  {
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidPublicKey(_:), *(v0 + 112));
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
LABEL_6:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    goto LABEL_7;
  }

  if (v11 == enum case for DIPError.Code.coseInvalidResponse(_:))
  {
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidDocument(_:), *(v0 + 112));
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    goto LABEL_6;
  }

  (*(*(v0 + 120) + 8))(*(v0 + 96), *(v0 + 112));
LABEL_7:
  sub_10000BE18(*(v0 + 104), &qword_10083B020, &unk_1006D8ED0);

  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableSignatureValidation.getter();
  v14 = NSUserDefaults.internalBool(forKey:)(v13);

  if (v14)
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidSignature(_:), *(v0 + 112));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

void *sub_100044AB4@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = decodeCertificateChain(fromDER:)();
  if (v2)
  {
    defaultLogger()();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "VICALTrustValidator failed to decode certificate chain: %@", v11, 0xCu);
      sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);
    }

    (*(v5 + 8))(v7, v4);

    result = _swiftEmptyArrayStorage;
  }

  *a2 = result;
  return result;
}

uint64_t sub_100044C9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100041F18(a1, v4);
}

uint64_t sub_100044D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100044DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  DIPError.Code.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000451E8(v5);
    return -8000;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -8007;
  }

  else if (v14 == enum case for DIPError.Code.untrustedCertificate(_:) || v14 == enum case for DIPError.Code.secTrustGetCertificateFailure(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -8002;
  }

  else if (v14 == enum case for DIPError.Code.docUploadNoAssetsProvided(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -8005;
  }

  else if (v14 == enum case for DIPError.Code.docUploadUnrecognizedRecipient(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -8004;
  }

  else if (v14 == enum case for DIPError.Code.docUploadUnrecognizedAssetType(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -8006;
  }

  else
  {
    if (v14 != enum case for DIPError.Code.docUploadUnrecognizedEncryptionAlgorithm(_:))
    {
      v16 = *(v7 + 8);
      v16(v12, v6);
      v16(v10, v6);
      return -8000;
    }

    (*(v7 + 8))(v12, v6);
    return -8008;
  }
}

uint64_t sub_1000451E8(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100045250()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000452BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100045320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000453C8(uint64_t a1)
{
  v2 = sub_100049AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045404(uint64_t a1)
{
  v2 = sub_100049AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - v4;
  v5 = sub_100007224(&qword_100834E60, &qword_1006C0438);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DocUploadHandler.DocUploadResult(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_100049AE4();
  v12 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v17;
    sub_100049B38(&qword_100834E68, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_100049B88(v11, v16);
  }

  return sub_10000BB78(a1);
}

uint64_t sub_1000456CC(void *a1)
{
  v2 = sub_100007224(&qword_100834E48, &qword_1006C0430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_100049AE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007224(&qword_100833680, &qword_1006C4A20);
  sub_100049B38(&qword_100834E58, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10004583C(void *a1, uint64_t a2)
{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

unint64_t sub_1000458BC(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_16:
    v10 = a2;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v10;
    v4 = v11;
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  while (v4 != result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = result;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      result = v7;
      a2 = v8;
      if (v9 == v8)
      {
LABEL_12:
        sub_1005920E4(result);
      }
    }

    else
    {
      if (result >= *(v3 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(v2 + 8 * result + 32) == a2)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(result++, 1))
    {
      goto LABEL_15;
    }
  }

  return result;
}

unint64_t *sub_1000459BC(unint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        v6 = *(v4 + 16);
        os_unfair_lock_lock((v6 + 20));
        *(v6 + 16) = 1;
        os_unfair_lock_unlock((v6 + 20));

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = (v3 + 1);
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100045AB8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for HPKESuiteKwV1();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for DIPOIDVerifier();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for DIPCertUsage();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for EncryptedMessageEntity();
  v3[41] = v8;
  v3[42] = *(v8 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[45] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v3[46] = v9;
  v3[47] = *(v9 - 8);
  v3[48] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[52] = v11;
  v3[53] = *(v11 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_100045EA4, 0, 0);
}

uint64_t sub_100045EA4(uint64_t a1)
{
  v148 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DocUploadHandler.uploadAssets: entered.", v4, 2u);
  }

  v5 = v1[62];
  v6 = v1[52];
  v7 = v1[53];
  v8 = v1[25];

  v9 = *(v7 + 8);
  v1[63] = v9;
  v9(v5, v6);
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    static DaemonSignposts.uploadAssetsAPI.getter();
    DIPSignpost.init(_:)();
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "DocUploadHandler.uploadAssets: Mapping recipient string to EncryptedMessageEntity", v12, 2u);
    }

    v13 = v1[60];
    v14 = v1[52];
    v15 = v1[44];
    v16 = v1[26];

    v9(v13, v14);
    v17 = [v16 recipient];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_10004891C(v18, v20, v15);
    v22 = v1[43];
    v21 = v1[44];
    v23 = v1[41];
    v24 = v1[42];

    defaultLogger()();
    (*(v24 + 16))(v22, v21, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v1[59];
    v29 = v1[52];
    v31 = v1[42];
    v30 = v1[43];
    v32 = v1[41];
    if (v27)
    {
      v33 = swift_slowAlloc();
      v137 = v26;
      v34 = swift_slowAlloc();
      v147[0] = v34;
      *v33 = 136315138;
      v142 = v29;
      v144 = v9;
      v35 = EncryptedMessageEntity.rawValue.getter();
      v139 = v28;
      v37 = v36;
      v38 = *(v31 + 8);
      v38(v30, v32);
      v39 = v35;
      v9 = v144;
      v40 = sub_100141FE4(v39, v37, v147);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v25, v137, "DocUploadHandler.uploadAssets: recipientString mapped to %s", v33, 0xCu);
      sub_10000BB78(v34);
      v41 = v38;

      v42 = v142;
      v43 = v139;
    }

    else
    {

      v41 = *(v31 + 8);
      v41(v30, v32);
      v43 = v28;
      v42 = v29;
    }

    v9(v43, v42);
    v1[64] = v41;
    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "DocUploadHandler.uploadAssets: Mapping encryptionVersion string to HPKEEncryptionParamsAlgorithmIdentifier", v46, 2u);
    }

    v47 = v1[58];
    v48 = v1[52];
    v49 = v1[26];

    v9(v47, v48);
    v50 = [v49 encryptionVersion];
    if (v50)
    {
      v51 = v50;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    sub_100048D40(v52, v54, v1[40]);
    v56 = v1[39];
    v55 = v1[40];
    v57 = v1[37];
    v58 = v1[38];

    defaultLogger()();
    (*(v58 + 16))(v56, v55, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v1[57];
    v63 = v1[52];
    v65 = v1[38];
    v64 = v1[39];
    v66 = v1[37];
    if (v61)
    {
      v140 = v1[52];
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v147[0] = v68;
      *v67 = 136315138;
      v145 = v9;
      v69 = HPKEEncryptionParamsAlgorithmIdentifier.rawValue.getter();
      v138 = v62;
      v71 = v70;
      v135 = v60;
      v72 = *(v65 + 8);
      v72(v64, v66);
      v73 = v69;
      v9 = v145;
      v74 = sub_100141FE4(v73, v71, v147);

      *(v67 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v59, v135, "DocUploadHandler.uploadAssets: Encryption Version maps to %s", v67, 0xCu);
      sub_10000BB78(v68);

      v75 = v138;
      v76 = v140;
    }

    else
    {

      v72 = *(v65 + 8);
      v72(v64, v66);
      v75 = v62;
      v76 = v63;
    }

    v9(v75, v76);
    v1[65] = v72;
    defaultLogger()();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "DocUploadHandler.uploadAssets: Transforming certificate chain.", v79, 2u);
    }

    v80 = v1[56];
    v81 = v1[52];
    v83 = v1[35];
    v82 = v1[36];
    v84 = v1[34];
    v85 = v1[26];

    v9(v80, v81);
    v86 = [v85 certificateChain];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v83 + 104))(v82, enum case for DIPCertUsage.inoEncryption(_:), v84);
    decodeCertificateChain(fromDER:)();

    v1[14] = type metadata accessor for DateProvider();
    v1[15] = &protocol witness table for DateProvider;
    sub_100032DBC(v1 + 11);
    DateProvider.init()();
    DIPOIDVerifier.init(dateProvider:)();
    v87 = DIPOIDVerifier.verifyChain(_:forUsage:)();
    v1[66] = v87;
    v141 = v87;
    v146 = v9;
    v88 = v1[35];
    v136 = v1[36];
    v90 = v1[33];
    v89 = v1[34];
    v92 = v1[31];
    v91 = v1[32];
    v93 = v1[29];
    v94 = v1[30];
    v95 = v1[28];

    (*(v91 + 8))(v90, v92);
    (*(v88 + 8))(v136, v89);
    HPKESuiteKwV1.init(pkISm:info:)();
    v1[19] = v95;
    v1[20] = &protocol witness table for HPKESuiteKwV1;
    v96 = sub_100032DBC(v1 + 16);
    (*(v93 + 16))(v96, v94, v95);
    type metadata accessor for CloudKitUploadBuilder();
    inited = swift_initStackObject();
    v1[67] = inited;
    *(inited + 16) = sub_10003CDF8(_swiftEmptyArrayStorage);
    *(inited + 24) = sub_10003CE0C(_swiftEmptyArrayStorage);
    sub_10001F358(v1 + 8, inited + 32);
    defaultLogger()();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "DocUploadHandler.uploadAssets: Creating upload assets.", v100, 2u);
    }

    v101 = v1[55];
    v102 = v1[52];
    v104 = v1[25];
    v103 = v1[26];

    v146(v101, v102);
    sub_100049340(v104, inited, [v103 base64EncodingEnabled]);
    v105 = v1[26];
    v106._countAndFlagsBits = 0x6230383239373539;
    v107._countAndFlagsBits = 0xD000000000000039;
    v107._object = 0x80000001006FCFD0;
    v106._object = 0xE800000000000000;
    logMilestone(tag:description:)(v106, v107);
    v108 = [v105 container];
    v109 = swift_task_alloc();
    v1[68] = v109;
    *v109 = v1;
    v109[1] = sub_100046F4C;
    v110 = v1[44];
    v111 = v1[40];

    return sub_1000477D0(inited, v108, v110, v111, v141);
  }

  defaultLogger()();
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&_mh_execute_header, v113, v114, "DocUploadHandler.uploadAssets: assets array is empty, throwing error.", v115, 2u);
  }

  v116 = v1[61];
  v117 = v1[52];
  v119 = v1[50];
  v118 = v1[51];
  v120 = v1[49];

  v9(v116, v117);
  v121._countAndFlagsBits = 0x3238616232623337;
  v122._countAndFlagsBits = 0xD000000000000031;
  v122._object = 0x80000001006FD010;
  v121._object = 0xE800000000000000;
  logMilestone(tag:description:)(v121, v122);
  (*(v119 + 104))(v118, enum case for DIPError.Code.docUploadNoAssetsProvided(_:), v120);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();

  v125 = os_log_type_enabled(v123, v124);
  v126 = v1[63];
  v127 = v1[54];
  v128 = v1[52];
  if (v125)
  {
    v143 = v1[63];
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v147[0] = v130;
    *v129 = 136315138;
    swift_getErrorValue();
    v131 = Error.localizedDescription.getter();
    v133 = sub_100141FE4(v131, v132, v147);

    *(v129 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v123, v124, "DocUploadHandler.uploadAssets: Failed: Calling completion callback with error: %s", v129, 0xCu);
    sub_10000BB78(v130);

    v143(v127, v128);
  }

  else
  {

    v126(v127, v128);
  }

  swift_willThrow();

  v134 = v1[1];

  return v134();
}

uint64_t sub_100046F4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 552) = v2;

  if (v2)
  {
    v7 = sub_1000472D0;
  }

  else
  {
    *(v6 + 560) = a2;
    *(v6 + 568) = a1;
    v7 = sub_100047084;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100047084()
{
  v1 = v0[67];
  v2 = v0[66];
  v17 = v0[65];
  v18 = v0[64];
  v4 = v0[47];
  v3 = v0[48];
  v16 = v0[46];
  v15 = v0[44];
  v14 = v0[41];
  v13 = v0[40];
  v5 = v0[37];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  swift_setDeallocating();

  sub_10000BB78((v1 + 32));
  (*(v7 + 8))(v6, v8);
  v17(v13, v5);
  v18(v15, v14);
  (*(v4 + 8))(v3, v16);

  v9 = v0[1];
  v10 = v0[71];
  v11 = v0[70];

  return v9(v10, v11);
}

uint64_t sub_1000472D0()
{
  v31 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v3 = v0[47];
  v4 = v0[48];
  v29 = v0[46];
  v24 = v0[41];
  v25 = v0[44];
  v23 = v0[40];
  v5 = v0[37];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  swift_setDeallocating();

  sub_10000BB78((v1 + 32));
  (*(v6 + 8))(v7, v8);
  v26(v23, v5);
  v27(v25, v24);
  (*(v3 + 8))(v4, v29);
  defaultLogger()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = v0[63];
    v11 = v0[54];
    v12 = v0[52];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "DocUploadHandler.uploadAssets: Failed: Calling completion callback with error: %s", v13, 0xCu);
    sub_10000BB78(v14);

    v28(v11, v12);
  }

  else
  {
    v18 = v0[63];
    v19 = v0[54];
    v20 = v0[52];

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

void sub_100047668()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DocUploadHandler.cancelPendingUploads: Signaling cancel.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v9 + 24));
  sub_1000459BC((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_1000477D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v6[27] = type metadata accessor for DocUploadHandler.DocUploadResult(0);
  v6[28] = swift_task_alloc();
  v7 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000479E8, 0, 0);
}

uint64_t sub_1000479E8()
{
  v35 = v0;
  v1 = v0[26];
  static DaemonSignposts.uploadAssetsCloudKitRequest.getter();
  DIPSignpost.init(_:)();
  v2 = type metadata accessor for DocUploadHandler.UploadRequestToken();
  v3 = swift_allocObject();
  v0[43] = v3;
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  v5 = *(v1 + 16);
  v0[44] = v5;
  v6 = *(v5 + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_100049298((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DocUploadHandler.startUploadTask: Saving assets to CloudKit.", v9, 2u);
  }

  v10 = v0[38];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[21];

  v14 = *(v11 + 8);
  v0[45] = v14;
  v14(v10, v12);
  swift_beginAccess();
  v16 = *(v13 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v32 = v2;
    v18 = sub_1003BE178(v15);
    v33 = sub_1003BC1B0(&v34, v18 + 4, v17, v16);
    v19 = v34;

    v20 = sub_10001FA6C(v19);
    if (v33 != v17)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v2 = v32;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v0[46] = v18;
  v28 = v0[22];
  v0[5] = v2;
  v0[6] = &off_1007FD9B8;
  v0[2] = v3;

  v29 = sub_10002F89C(v28);
  v0[47] = v29;
  v30 = swift_task_alloc();
  v0[48] = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v18;
  *(v30 + 32) = 257;
  *(v30 + 40) = v0 + 2;
  v20 = swift_task_alloc();
  v0[49] = v20;
  *v20 = v0;
  v20[1] = sub_100047D20;
  v25 = sub_1000492B4;
  v24 = 0x80000001006FCEC0;
  v27 = &type metadata for () + 8;
  v21 = 0;
  v22 = 0;
  v23 = 0xD00000000000003FLL;
  v26 = v30;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_100047D20()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10004861C;
  }

  else
  {

    v2 = sub_100047E48;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100047E48()
{
  v68 = v0;

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  v1._countAndFlagsBits = 0x3532616566656666;
  v2._object = 0x80000001006FCF00;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v1, v2);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DocUploadHandler.startUploadTask: Creating encrypted message.", v5, 2u);
  }

  v6 = v0[45];
  v7 = v0[37];
  v8 = v0[32];
  v9 = v0[31];
  v63 = v0[25];
  v65 = v0[50];
  v10 = v0[23];

  v6(v7, v8);
  v11 = type metadata accessor for TopekaHPKEEncryptor();
  inited = swift_initStackObject();
  v0[10] = v11;
  v0[11] = &off_1007FD940;
  v0[7] = inited;
  sub_100008B9C(0, v10, v63, v9);
  if (v65)
  {
    sub_10000BB78(v0 + 7);
    defaultLogger()();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[45];
    v29 = v0[34];
    v30 = v0[32];
    if (v27)
    {
      v66 = v0[34];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_100141FE4(v33, v34, &v67);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "DocUploadHandler.startUploadTask: Failed Either Saving or creating Encrypted Message, calling completion callback with error: %s", v31, 0xCu);
      sub_10000BB78(v32);

      v28(v66, v30);
    }

    else
    {

      v28(v29, v30);
    }

    v36 = v0[44];
    swift_willThrow();
    v37 = *(v36 + 16);
    os_unfair_lock_lock((v37 + 24));
    sub_1000492C8((v37 + 16));
    v38 = v0[42];
    v39 = v0[40];
    v40 = v0[41];
    os_unfair_lock_unlock((v37 + 24));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v40 + 8))(v38, v39);

    v41 = v0[1];

    v41();
  }

  else
  {
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[28];
    v15 = v0[29];
    sub_10000BB78(v0 + 7);
    v17._countAndFlagsBits = 0x3436323964633733;
    v18._countAndFlagsBits = 0xD00000000000003FLL;
    v18._object = 0x80000001006FCF40;
    v17._object = 0xE800000000000000;
    logMilestone(tag:description:)(v17, v18);
    (*(v14 + 16))(v16, v13, v15);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "DocUploadHandler.startUploadTask: Attemping to encode results into JSON.", v21, 2u);
    }

    v22 = v0[45];
    v23 = v0[36];
    v24 = v0[32];

    v22(v23, v24);
    sub_100049A9C(&qword_100834DA8, type metadata accessor for DocUploadHandler.DocUploadResult, &unk_1006C0408);
    v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v60 = v42;
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "DocUploadHandler.startUploadTask: Success: Calling completion callback with encoded JSON.", v45, 2u);
    }

    v46 = v0[45];
    v64 = v0[44];
    v47 = v0[35];
    v48 = v0[32];
    v49 = v0[30];
    v50 = v0[28];
    v61 = v0[29];
    v62 = v0[31];

    v46(v47, v48);
    v51._countAndFlagsBits = 0x6530636335323062;
    v52._countAndFlagsBits = 0xD000000000000048;
    v52._object = 0x80000001006FCF80;
    v51._object = 0xE800000000000000;
    logMilestone(tag:description:)(v51, v52);

    sub_1000492E4(v50);
    (*(v49 + 8))(v62, v61);
    v53 = *(v64 + 16);
    v54 = (v53 + 24);
    os_unfair_lock_lock((v53 + 24));
    sub_100049DD4((v53 + 16));
    v55 = v0[42];
    v56 = v0[40];
    v57 = v0[41];
    os_unfair_lock_unlock(v54);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v57 + 8))(v55, v56);

    v58 = v0[1];

    v58(v59, v60);
  }
}

uint64_t sub_10004861C()
{
  v22 = v0;

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = v0[34];
    v20 = v0[45];
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100141FE4(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "DocUploadHandler.startUploadTask: Failed Either Saving or creating Encrypted Message, calling completion callback with error: %s", v4, 0xCu);
    sub_10000BB78(v5);

    v20(v19, v3);
  }

  else
  {
    v9 = v0[45];
    v10 = v0[34];
    v11 = v0[32];

    v9(v10, v11);
  }

  v12 = v0[44];
  swift_willThrow();
  v13 = *(v12 + 16);
  os_unfair_lock_lock((v13 + 24));
  sub_1000492C8((v13 + 16));
  v14 = v0[42];
  v15 = v0[40];
  v16 = v0[41];
  os_unfair_lock_unlock((v13 + 24));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v16 + 8))(v14, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10004891C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;

  v22 = a1;
  EncryptedMessageEntity.init(rawValue:)();
  v15 = type metadata accessor for EncryptedMessageEntity();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    return (*(v16 + 32))(a3, v14, v15);
  }

  sub_10000BE18(v14, &qword_100834D98, &unk_1006C03B0);
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(v22, a2, &v26);
    _os_log_impl(&_mh_execute_header, v17, v18, "DocUploadHandler.mapRecipientString: Failure mapping recipient string (%s) to an entity.", v19, 0xCu);
    sub_10000BB78(v20);
  }

  (*(v9 + 8))(v11, v8);
  (*(v23 + 104))(v25, enum case for DIPError.Code.docUploadUnrecognizedRecipient(_:), v24);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100048D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100834D90, &qword_1006C03A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  if (a2)
  {
    v26 = v6;
    v27 = v8;

    HPKEEncryptionParamsAlgorithmIdentifier.init(rawValue:)();
    v15 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_10000BE18(v14, &qword_100834D90, &qword_1006C03A8);
      defaultLogger()();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100141FE4(a1, a2, &v30);
        _os_log_impl(&_mh_execute_header, v17, v18, "DocUploadHandler.mapEncryptionVersionString: Failure mapping encryption string (%s) to an algorithm identifier.", v19, 0xCu);
        sub_10000BB78(v20);
      }

      (*(v28 + 8))(v11, v9);
      v21._countAndFlagsBits = 0x6537383763616665;
      v22._countAndFlagsBits = 0xD00000000000004BLL;
      v22._object = 0x80000001006FCE10;
      v21._object = 0xE800000000000000;
      logMilestone(tag:description:)(v21, v22);
      (*(v29 + 104))(v27, enum case for DIPError.Code.docUploadUnrecognizedEncryptionAlgorithm(_:), v26);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      return (*(v16 + 32))(a3, v14, v15);
    }
  }

  else
  {
    v24 = enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_KW_v1(_:);
    v25 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
    return (*(*(v25 - 8) + 104))(a3, v24, v25);
  }
}

uint64_t type metadata accessor for DocUploadHandler.DocUploadResult(uint64_t a1)
{
  result = qword_100834E08;
  if (!qword_100834E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000492E4(uint64_t a1)
{
  v2 = type metadata accessor for DocUploadHandler.DocUploadResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100049340(unint64_t a1, uint64_t a2, int a3)
{
  v42 = a3;
  v41 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  defaultLogger()();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = a1 >> 62;
  v40 = v8;
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    if (v17)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 1024;
    *(v18 + 14) = v42 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "DocUploadHandler.prepareAssetsForUpload: Preparing %ld for upload with base64 encoding set to : %{BOOL}d", v18, 0x12u);

    v8 = v40;
  }

  else
  {
  }

  v20 = *(v9 + 8);
  v37 = v9 + 8;
  v35 = v20;
  v20(v13, v8);
  if (v17)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v34 = v7;
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v23 = *(a1 + 8 * j + 32);
      }

      v24 = v23;
      v7 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      v25 = [v23 type];
      if (v25 > 3)
      {
        v26 = v36;
        defaultLogger()();
        v27 = v24;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          *(v30 + 4) = [v27 type];

          _os_log_impl(&_mh_execute_header, v28, v29, "DocUploadHandler.prepareAssetsForUpload: Couldn't map DIAssetType (%ld) to UploadAsset.AssetType", v30, 0xCu);
        }

        else
        {

          v28 = v27;
        }

        v31 = v34;
        v32 = v39;
        v33 = v40;

        v35(v26, v33);
        (*(v38 + 104))(v31, enum case for DIPError.Code.docUploadUnrecognizedAssetType(_:), v32);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_22:

        return;
      }

      sub_100007284(v24, v42 & 1, v25);
      if (v3)
      {
        goto LABEL_22;
      }

      if (v7 == i)
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

uint64_t sub_10004985C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000498E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100049964(uint64_t a1)
{
  sub_1000499D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000499D0(uint64_t a1)
{
  if (!qword_100834E18)
  {
    type metadata accessor for ProofingData(255);
    sub_100049A9C(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
    sub_100049A9C(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);
    v1 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap();
    if (!v2)
    {
      atomic_store(v1, &qword_100834E18);
    }
  }
}

uint64_t sub_100049A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100049AE4()
{
  result = qword_100834E50;
  if (!qword_100834E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E50);
  }

  return result;
}

uint64_t sub_100049B38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_100833680, &qword_1006C4A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocUploadHandler.DocUploadResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DocUploadHandler.DocUploadResult.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DocUploadHandler.DocUploadResult.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100049CD0()
{
  result = qword_100834E70;
  if (!qword_100834E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E70);
  }

  return result;
}

unint64_t sub_100049D28()
{
  result = qword_100834E78;
  if (!qword_100834E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E78);
  }

  return result;
}

unint64_t sub_100049D80()
{
  result = qword_100834E80;
  if (!qword_100834E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E80);
  }

  return result;
}

uint64_t sub_100049DF0(void *a1)
{
  v3 = sub_100007224(&qword_100834E98, &unk_1006C06A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_10004D6E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_10004A000(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004A014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10004A05C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10004A0BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10004A0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10004A120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10004A198()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004A20C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10004A250()
{
  v1 = 0x6E6F6973726576;
  v2 = 1684955506;
  if (*v0 == 2)
  {
    v2 = 0x656D697464;
  }

  if (*v0)
  {
    v1 = 0x656D697473;
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

uint64_t sub_10004A2B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004D290(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004A2E8(uint64_t a1)
{
  v2 = sub_10004D6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A324(uint64_t a1)
{
  v2 = sub_10004D6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004A360@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10004D3F0(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_10004A3BC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 50;
  }

  else
  {
    v2 = 49;
  }

  if (*a2)
  {
    v3 = 50;
  }

  else
  {
    v3 = 49;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10004A428()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004A484(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10004A4C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004A51C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8A28, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10004A57C(uint64_t *a1@<X8>)
{
  v2 = 49;
  if (*v1)
  {
    v2 = 50;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10004A598()
{
  BYTE8(v11) = 0;
  _StringGuts.grow(_:)(117);
  v1._countAndFlagsBits = 0x5547746E65696C43;
  v1._object = 0xEB00000000204449;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 120));
  v2._countAndFlagsBits = 0x6F6973726576202ELL;
  v2._object = 0xEC000000203D206ELL;
  String.append(_:)(v2);
  *&v11 = *v0;
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x3D2064697364202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x203D2064696D202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 0x444970696863202CLL;
  v5._object = 0xEB00000000203D20;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 40));
  v6._countAndFlagsBits = 0x3D2064696365202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + 56));
  v7._countAndFlagsBits = 0x726576726573202CLL;
  v7._object = 0xEF203D20656D6954;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + 72));
  v8._countAndFlagsBits = 0x656369766564202CLL;
  v8._object = 0xEF203D20656D6954;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + 88));
  v9._countAndFlagsBits = 0x3D20646E6172202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  String.append(_:)(*(v0 + 104));
  return *(&v11 + 1);
}

uint64_t sub_10004A7A0()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_10004A7D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10004D0CC(v11, v13) & 1;
}

uint64_t sub_10004A858@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  object = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v65[0] = v2[1];
  v11 = v2[1];
  v12 = v2[2];
  v64 = v10;
  v13 = v2[4];
  v63 = v2[3];
  v14 = v2[3];
  v62 = v13;
  v15 = a1[2];
  v61 = a1[1];
  v16 = a1[1];
  v17 = a1[2];
  v60 = v15;
  v59 = a1[3];
  *&v58[7] = v11;
  v56 = v14;
  v57 = v12;
  v18 = v2[4];
  v54 = v16;
  v55 = v18;
  v52 = a1[3];
  v53 = v17;
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006C0560;
  *(v19 + 32) = 49;
  *(v19 + 40) = 0xE100000000000000;
  v20 = v2[2];
  *(v19 + 48) = v2[1];
  *(v19 + 64) = v20;
  v21 = v2[4];
  *(v19 + 80) = v2[3];
  *(v19 + 96) = v21;
  v22 = a1[2];
  *(v19 + 112) = a1[1];
  *(v19 + 128) = v22;
  *(v19 + 144) = a1[3];
  *&v46[0] = v19;
  sub_10004D7A0(v65, &v48);
  sub_10004D7A0(&v64, &v48);
  sub_10004D7A0(&v63, &v48);
  sub_10004D7A0(&v62, &v48);
  sub_10004D7A0(&v61, &v48);
  sub_10004D7A0(&v60, &v48);
  sub_10004D7A0(&v59, &v48);
  sub_10004D7A0(v65, &v48);
  sub_10004D7A0(&v64, &v48);
  sub_10004D7A0(&v63, &v48);
  sub_10004D7A0(&v62, &v48);
  sub_10004D7A0(&v61, &v48);
  sub_10004D7A0(&v60, &v48);
  sub_10004D7A0(&v59, &v48);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;

  (*(v7 + 8))(v9, v6);
  if (v25 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v27 = DigestSha256();

    if (v27)
    {
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = Data._Representation.subscript.getter();
      v33 = v32;
      v34 = Data.base64EncodedString(options:)(0);
      object = v34._object;
      sub_10000BD94(v23, v25);
      sub_10000B90C(v31, v33);
      sub_10000B90C(v28, v30);
      *(v46 + 1) = *v58;
      *(&v46[1] + 8) = v57;
      *(&v46[2] + 8) = v56;
      *(&v46[3] + 8) = v55;
      *(&v46[4] + 8) = v54;
      *(&v46[5] + 8) = v53;
      *(&v46[6] + 8) = v52;
      *&v49[15] = *&v58[15];
      *v49 = *v58;
      *&v49[23] = v57;
      *&v49[39] = v56;
      *&v49[55] = v55;
      *&v49[71] = v54;
      LOBYTE(v46[0]) = 0;
      *&v46[1] = *&v58[15];
      *(&v46[7] + 1) = v34._countAndFlagsBits;
      v47 = object;
      v48 = 0;
      *&v49[87] = v53;
      *&v49[103] = v52;
      countAndFlagsBits = v34._countAndFlagsBits;
      v51 = object;
      sub_10004D8B4(v46, &v45);
      result = sub_10004D8EC(&v48);
      v36 = v46[7];
      v37 = v42;
      *(v42 + 96) = v46[6];
      *(v37 + 112) = v36;
      *(v37 + 128) = v47;
      v38 = v46[3];
      *(v37 + 32) = v46[2];
      *(v37 + 48) = v38;
      v39 = v46[5];
      *(v37 + 64) = v46[4];
      *(v37 + 80) = v39;
      v40 = v46[1];
      *v37 = v46[0];
      *(v37 + 16) = v40;
      return result;
    }

    sub_10000BD94(v23, v25);
  }

  sub_10004D860(v65);
  sub_10004D860(&v64);
  sub_10004D860(&v63);
  sub_10004D860(&v62);
  sub_10004D860(&v61);
  sub_10004D860(&v60);
  sub_10004D860(&v59);
  (*(v43 + 104))(object, enum case for DIPError.Code.internalError(_:), v44);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_10004ADF8(uint64_t a1)
{
  v2[80] = v1;
  v2[79] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[81] = v3;
  v2[82] = *(v3 - 8);
  v2[83] = swift_task_alloc();
  v4 = type metadata accessor for String.Encoding();
  v2[84] = v4;
  v2[85] = *(v4 - 8);
  v2[86] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[87] = v5;
  v2[88] = *(v5 - 8);
  v2[89] = swift_task_alloc();
  v8 = (*v1 + **v1);
  v6 = swift_task_alloc();
  v2[90] = v6;
  *v6 = v2;
  v6[1] = sub_10004AFFC;

  return v8();
}

uint64_t sub_10004AFFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[91] = a1;
  v4[92] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10004B160, 0, 0);
  }
}

uint64_t sub_10004B160(uint64_t a1)
{
  v2 = *(v1 + 712);
  v3 = *(v1 + 704);
  v4 = *(v1 + 696);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v1 + 616) = v6;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v12 + 16) = 6;
  *(v12 + 36) = 0;
  *(v12 + 32) = 0;
  v13 = SecRandomCopyBytes(kSecRandomDefault, 6uLL, (v12 + 32));
  v14 = *(v1 + 736);
  if (v13)
  {
    v15 = v13;
    v16 = *(v1 + 664);
    v17 = *(v1 + 656);
    v18 = *(v1 + 648);

    (*(v17 + 104))(v16, enum case for DIPError.Code.systemSecError(_:), v18);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v19 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF520;
    v22 = v21 + v20;
    v23 = v22 + v19[14];
    v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    *(v23 + 24) = &type metadata for Int32;
    *(v23 + 32) = &protocol witness table for Int32;
    *v23 = v15;
    sub_10003C9C0(v21);
    swift_setDeallocating();
    sub_10000BE18(v22, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v51 = *(v1 + 8);
    goto LABEL_12;
  }

  v62 = v9;
  v56 = *(v1 + 728);
  v58 = *(v1 + 688);
  v59 = *(v1 + 680);
  v60 = *(v1 + 672);
  v61 = v11;
  v26 = *(v1 + 640);
  v27 = sub_10034C158(v12);
  v29 = v28;

  v30 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v27, v29);
  *(v1 + 424) = v26[1];
  *(v1 + 440) = v26[2];
  *(v1 + 456) = v26[3];
  *(v1 + 472) = v26[4];
  *&v63[7] = v26[1];
  v64 = v26[2];
  v65 = v26[3];
  v66 = v26[4];
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006C0560;
  *(v31 + 32) = 49;
  *(v31 + 40) = 0xE100000000000000;
  *(v31 + 48) = v26[1];
  *(v31 + 64) = v26[2];
  *(v31 + 80) = v26[3];
  *(v31 + 96) = v26[4];
  *(v31 + 112) = v56;
  *(v31 + 120) = v14;
  *(v31 + 128) = v9;
  *(v31 + 136) = v61;
  *(v31 + 144) = v30;
  *(v1 + 624) = v31;
  sub_10004D7A0(v1 + 424, v1 + 488);
  sub_10004D7A0(v1 + 440, v1 + 504);
  sub_10004D7A0(v1 + 456, v1 + 520);
  sub_10004D7A0(v1 + 472, v1 + 536);
  sub_10004D7A0(v1 + 424, v1 + 552);
  sub_10004D7A0(v1 + 440, v1 + 568);
  sub_10004D7A0(v1 + 456, v1 + 584);
  sub_10004D7A0(v1 + 472, v1 + 600);

  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v32 = String.data(using:allowLossyConversion:)();
  v34 = v33;

  (*(v59 + 8))(v58, v60);
  if (v34 >> 60 == 15)
  {
LABEL_10:
    v52 = *(v1 + 664);
    v53 = *(v1 + 656);
    v54 = *(v1 + 648);
    sub_10004D860(v1 + 424);
    sub_10004D860(v1 + 440);
    sub_10004D860(v1 + 456);
    sub_10004D860(v1 + 472);

    (*(v53 + 104))(v52, enum case for DIPError.Code.internalError(_:), v54);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_11;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = DigestSha256();

  if (!v36)
  {
    sub_10000BD94(v32, v34);
    goto LABEL_10;
  }

  v55 = *(v1 + 728);
  v57 = *(v1 + 736);
  v37 = *(v1 + 632);
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = Data._Representation.subscript.getter();
  v43 = v42;
  v44 = Data.base64EncodedString(options:)(0);
  sub_10000BD94(v32, v34);
  sub_10000B90C(v41, v43);
  sub_10000B90C(v38, v40);
  *(v1 + 153) = *v63;
  *(v1 + 176) = v64;
  *(v1 + 192) = v65;
  *(v1 + 208) = v66;
  *(v1 + 32) = *&v63[15];
  *(v1 + 17) = *v63;
  *(v1 + 40) = v64;
  *(v1 + 56) = v65;
  *(v1 + 152) = 0;
  *(v1 + 168) = *&v63[15];
  *(v1 + 224) = v55;
  *(v1 + 232) = v57;
  *(v1 + 240) = v62;
  *(v1 + 248) = v61;
  *(v1 + 256) = v30;
  *(v1 + 272) = v44;
  *(v1 + 16) = 0;
  *(v1 + 72) = v66;
  *(v1 + 88) = v55;
  *(v1 + 96) = v57;
  *(v1 + 104) = v62;
  *(v1 + 112) = v61;
  *(v1 + 120) = v30;
  *(v1 + 136) = v44;
  sub_10004D8B4(v1 + 152, v1 + 288);
  sub_10004D8EC(v1 + 16);
  *v37 = *(v1 + 152);
  v45 = *(v1 + 184);
  v46 = *(v1 + 216);
  v47 = *(v1 + 168);
  *(v37 + 48) = *(v1 + 200);
  *(v37 + 64) = v46;
  *(v37 + 16) = v47;
  *(v37 + 32) = v45;
  v48 = *(v1 + 264);
  v49 = *(v1 + 248);
  v50 = *(v1 + 232);
  *(v37 + 128) = *(v1 + 280);
  *(v37 + 96) = v49;
  *(v37 + 112) = v48;
  *(v37 + 80) = v50;

  v51 = *(v1 + 8);
LABEL_12:

  return v51();
}

uint64_t sub_10004BA48(uint64_t a1)
{
  v2[80] = v1;
  v2[79] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[81] = v3;
  v2[82] = *(v3 - 8);
  v2[83] = swift_task_alloc();
  v4 = type metadata accessor for String.Encoding();
  v2[84] = v4;
  v2[85] = *(v4 - 8);
  v2[86] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v2[87] = swift_task_alloc();
  sub_100007224(&qword_100834EA8, &qword_1006C06C8);
  v2[88] = swift_task_alloc();
  sub_100007224(&unk_10084A190, &unk_1006C06D0);
  v2[89] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v2[90] = v5;
  v2[91] = *(v5 - 8);
  v2[92] = swift_task_alloc();
  v6 = type metadata accessor for DateComponents();
  v2[93] = v6;
  v2[94] = *(v6 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[97] = v7;
  v2[98] = *(v7 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v10 = (*v1 + **v1);
  v8 = swift_task_alloc();
  v2[101] = v8;
  *v8 = v2;
  v8[1] = sub_10004BDC8;

  return v10();
}

uint64_t sub_10004BDC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[102] = a1;
  v4[103] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10004BFAC, 0, 0);
  }
}

void sub_10004BFAC(uint64_t a1)
{
  v2 = *(v1 + 736);
  v3 = *(v1 + 728);
  v112 = *(v1 + 720);
  v118 = *(v1 + 712);
  v123 = *(v1 + 704);
  Date.init()();
  static Calendar.current.getter();
  sub_100007224(&qword_1008334A0, &qword_1006BF610);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF740;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for Calendar.Component.minute(_:), v4);
  v10(v9 + v6, enum case for Calendar.Component.second(_:), v4);
  sub_1003A92C4(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v11 = *(v3 + 8);
  v11(v2, v112);
  (*(v3 + 56))(v118, 1, 1, v112);
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 56))(v123, 1, 1, v12);
  v13 = DateComponents.minute.getter();
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v15 == 0x8000000000000000)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = DateComponents.second.getter();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v18 == 0x8000000000000000)
  {
    goto LABEL_26;
  }

  v19 = *(v1 + 784);
  v20 = *(v1 + 776);
  v21 = *(v1 + 736);
  v22 = *(v1 + 720);
  v23 = *(v1 + 696);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Calendar.current.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v11(v21, v22);
  v24 = (*(v19 + 48))(v23, 1, v20);
  v25 = *(v1 + 784);
  v26 = *(v1 + 776);
  if (v24 == 1)
  {
    v113 = *(v1 + 768);
    v119 = *(v1 + 800);
    v27 = *(v1 + 752);
    v104 = *(v1 + 744);
    v108 = *(v1 + 760);
    v28 = *(v1 + 696);
    v29 = *(v1 + 664);
    v30 = *(v1 + 656);
    v31 = *(v1 + 648);

    sub_10000BE18(v28, &unk_100849400, &unk_1006BFBB0);
    (*(v30 + 104))(v29, enum case for DIPError.Code.unexpectedDeviceState(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v32 = *(v27 + 8);
    v32(v108, v104);
    v32(v113, v104);
    (*(v25 + 8))(v119, v26);
LABEL_21:

    v82 = *(v1 + 8);
    goto LABEL_22;
  }

  (*(v25 + 32))(*(v1 + 792), *(v1 + 696), *(v1 + 776));
  Date.timeIntervalSince1970.getter();
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  *(v1 + 616) = v33;
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v37 + 16) = 6;
  *(v37 + 36) = 0;
  *(v37 + 32) = 0;
  v38 = SecRandomCopyBytes(kSecRandomDefault, 6uLL, (v37 + 32));
  v39 = *(v1 + 824);
  if (v38)
  {
    v40 = v38;
    v41 = *(v1 + 784);
    v101 = *(v1 + 776);
    v102 = *(v1 + 792);
    v114 = *(v1 + 768);
    v120 = *(v1 + 800);
    v42 = *(v1 + 752);
    v105 = *(v1 + 744);
    v109 = *(v1 + 760);
    v43 = *(v1 + 664);
    v44 = *(v1 + 656);
    v45 = *(v1 + 648);

    (*(v44 + 104))(v43, enum case for DIPError.Code.systemSecError(_:), v45);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v46 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v47 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1006BF520;
    v49 = v48 + v47;
    v50 = v49 + v46[14];
    v51 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v52 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v52 - 8) + 104))(v49, v51, v52);
    *(v50 + 24) = &type metadata for Int32;
    *(v50 + 32) = &protocol witness table for Int32;
    *v50 = v40;
    sub_10003C9C0(v48);
    swift_setDeallocating();
    sub_10000BE18(v49, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v53 = *(v41 + 8);
    v53(v102, v101);
    v54 = *(v42 + 8);
    v54(v109, v105);
    v54(v114, v105);
    v53(v120, v101);
    goto LABEL_21;
  }

  v103 = *(v1 + 816);
  v106 = *(v1 + 688);
  v110 = *(v1 + 680);
  v115 = *(v1 + 672);
  v121 = v34;
  v55 = *(v1 + 640);
  v124 = v36;
  v56 = sub_10034C158(v37);
  v58 = v57;

  v59 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v56, v58);
  *(v1 + 424) = v55[1];
  *(v1 + 440) = v55[2];
  *(v1 + 456) = v55[3];
  *(v1 + 472) = v55[4];
  *&v125[7] = v55[1];
  v126 = v55[2];
  v127 = v55[3];
  v128 = v55[4];
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1006C0560;
  *(v60 + 32) = 49;
  *(v60 + 40) = 0xE100000000000000;
  *(v60 + 48) = v55[1];
  *(v60 + 64) = v55[2];
  *(v60 + 80) = v55[3];
  *(v60 + 96) = v55[4];
  *(v60 + 112) = v103;
  *(v60 + 120) = v39;
  *(v60 + 128) = v121;
  *(v60 + 136) = v36;
  *(v60 + 144) = v59;
  *(v1 + 624) = v60;
  sub_10004D7A0(v1 + 424, v1 + 488);
  sub_10004D7A0(v1 + 440, v1 + 504);
  sub_10004D7A0(v1 + 456, v1 + 520);
  sub_10004D7A0(v1 + 472, v1 + 536);
  sub_10004D7A0(v1 + 424, v1 + 552);
  sub_10004D7A0(v1 + 440, v1 + 568);
  sub_10004D7A0(v1 + 456, v1 + 584);
  sub_10004D7A0(v1 + 472, v1 + 600);

  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v61 = String.data(using:allowLossyConversion:)();
  v63 = v62;

  (*(v110 + 8))(v106, v115);
  if (v63 >> 60 == 15)
  {
LABEL_20:
    v122 = *(v1 + 800);
    v100 = *(v1 + 792);
    v83 = *(v1 + 784);
    v99 = *(v1 + 776);
    v111 = *(v1 + 760);
    v117 = *(v1 + 768);
    v84 = *(v1 + 752);
    v107 = *(v1 + 744);
    v85 = *(v1 + 664);
    v86 = *(v1 + 656);
    v87 = *(v1 + 648);
    sub_10004D860(v1 + 424);
    sub_10004D860(v1 + 440);
    sub_10004D860(v1 + 456);
    sub_10004D860(v1 + 472);

    (*(v86 + 104))(v85, enum case for DIPError.Code.internalError(_:), v87);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v88 = *(v83 + 8);
    v88(v100, v99);
    v89 = *(v84 + 8);
    v89(v111, v107);
    v89(v117, v107);
    v88(v122, v99);
    goto LABEL_21;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v65 = DigestSha256();

  if (!v65)
  {
    sub_10000BD94(v61, v63);
    goto LABEL_20;
  }

  v90 = *(v1 + 816);
  v91 = *(v1 + 824);
  v95 = *(v1 + 792);
  v92 = *(v1 + 784);
  v93 = *(v1 + 776);
  v97 = *(v1 + 768);
  v98 = *(v1 + 800);
  v116 = *(v1 + 760);
  v94 = *(v1 + 752);
  v96 = *(v1 + 744);
  v66 = *(v1 + 632);
  v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = Data._Representation.subscript.getter();
  v72 = v71;
  v73 = Data.base64EncodedString(options:)(0);
  sub_10000BD94(v61, v63);
  sub_10000B90C(v70, v72);
  sub_10000B90C(v67, v69);
  *(v1 + 153) = *v125;
  *(v1 + 176) = v126;
  *(v1 + 192) = v127;
  *(v1 + 208) = v128;
  *(v1 + 32) = *&v125[15];
  *(v1 + 17) = *v125;
  *(v1 + 40) = v126;
  *(v1 + 56) = v127;
  *(v1 + 152) = 0;
  *(v1 + 168) = *&v125[15];
  *(v1 + 224) = v90;
  *(v1 + 232) = v91;
  *(v1 + 240) = v121;
  *(v1 + 248) = v124;
  *(v1 + 256) = v59;
  *(v1 + 272) = v73;
  *(v1 + 16) = 0;
  *(v1 + 72) = v128;
  *(v1 + 88) = v90;
  *(v1 + 96) = v91;
  *(v1 + 104) = v121;
  *(v1 + 112) = v124;
  *(v1 + 120) = v59;
  *(v1 + 136) = v73;
  sub_10004D8B4(v1 + 152, v1 + 288);
  sub_10004D8EC(v1 + 16);
  v74 = *(v92 + 8);
  v74(v95, v93);
  v75 = *(v94 + 8);
  v75(v116, v96);
  v75(v97, v96);
  v74(v98, v93);
  *v66 = *(v1 + 152);
  v76 = *(v1 + 168);
  v77 = *(v1 + 184);
  v78 = *(v1 + 216);
  *(v66 + 48) = *(v1 + 200);
  *(v66 + 64) = v78;
  *(v66 + 16) = v76;
  *(v66 + 32) = v77;
  v79 = *(v1 + 264);
  v80 = *(v1 + 232);
  v81 = *(v1 + 248);
  *(v66 + 128) = *(v1 + 280);
  *(v66 + 96) = v81;
  *(v66 + 112) = v79;
  *(v66 + 80) = v80;

  v82 = *(v1 + 8);
LABEL_22:

  v82();
}

uint64_t sub_10004CF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10004DF20(a1, v27);
  if (!v28)
  {
    result = sub_10000BE18(v27, &qword_100834EB0, &qword_1006E78F0);
    goto LABEL_8;
  }

  sub_100007224(&qword_100834EB8, &qword_1006C06F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v12[0] = v18;
  v12[1] = v19;
  v12[2] = v20;
  v12[3] = v21;
  if (v18)
  {
    v4 = 50;
  }

  else
  {
    v4 = 49;
  }

  v5 = *(&v13 + 1);
  v7 = *(&v14 + 1);
  v6 = v14;
  v10 = *(&v15 + 1);
  v8 = v15;
  v9 = v16;

  result = sub_10004D8EC(v12);
  v11 = 0xE100000000000000;
LABEL_9:
  *a2 = v4;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v9;
  return result;
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = 50;
  }

  else
  {
    v4 = 49;
  }

  if (*a2)
  {
    v5 = 50;
  }

  else
  {
    v5 = 49;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10004D290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000)
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

uint64_t sub_10004D3F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100834E88, &qword_1006C0698);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10004D6E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_10004D738(&v28, v32);
  sub_10000BB78(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_10004D770(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_10004D6E4()
{
  result = qword_100834E90;
  if (!qword_100834E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E90);
  }

  return result;
}

unint64_t sub_10004D7FC()
{
  result = qword_100848930;
  if (!qword_100848930)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848930);
  }

  return result;
}

uint64_t sub_10004D91C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v51 = a3;
  v66 = a1;
  v52 = a5;
  v49 = type metadata accessor for DIPError.Code();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v5;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v58[0] = v19;
    *v18 = 136315138;
    if (a2)
    {
      v20 = 0x73656E755469;
    }

    else
    {
      v20 = 0x64756F6C4369;
    }

    v21 = sub_100141FE4(v20, 0xE600000000000000, v58);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Ignoring primaryDSID configured for %s for DIPClientGUIDFactory", v18, 0xCu);
    sub_10000BB78(v19);

    a4 = v17;
    v6 = v47;
  }

  (*(v11 + 8))(v13, v10);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v58, v59);
  v22 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountDSID()();
  if (v6)
  {
    sub_10000BB78(v58);
    goto LABEL_8;
  }

  v25 = v22;
  v47 = v23;
  sub_10000BB78(v58);
  if (qword_100832CC0 == -1)
  {
    v26 = sub_100597000();
    if (v27)
    {
LABEL_13:
      v28 = v27;
      v29 = v66;
      v30 = a4;
      v46 = a4;
      v31 = v66[3];
      v50 = v26;
      sub_10000BA08(v66, v31);
      v58[0] = dispatch thunk of DeviceInformationProviding.chipID.getter();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v32;
      sub_10000BA08(v29, v29[3]);
      v58[0] = dispatch thunk of DeviceInformationProviding.uniqueChipID.getter();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = v51;
      *&v53 = v51;
      *(&v53 + 1) = v30;
      v37 = v47;
      *&v54 = v25;
      *(&v54 + 1) = v47;
      v38 = v50;
      *&v55 = v50;
      *(&v55 + 1) = v28;
      v44 = v25;
      v39 = v49;
      v45 = v28;
      v40 = v48;
      *&v56 = v49;
      *(&v56 + 1) = v48;
      *&v57 = v33;
      *(&v57 + 1) = v34;
      sub_10004DEB8(&v53, v58);
      sub_10000BB78(v29);
      v58[0] = v36;
      v58[1] = v46;
      v58[2] = v44;
      v59 = v37;
      v60 = v38;
      v61 = v45;
      v62 = v39;
      v63 = v40;
      v64 = v33;
      v65 = v35;
      result = sub_10004DEF0(v58);
      v41 = v56;
      v42 = v52;
      v52[2] = v55;
      v42[3] = v41;
      v42[4] = v57;
      v43 = v54;
      *v42 = v53;
      v42[1] = v43;
      return result;
    }
  }

  else
  {
    swift_once();
    v26 = sub_100597000();
    if (v27)
    {
      goto LABEL_13;
    }
  }

  (*(v48 + 104))(v50, enum case for DIPError.Code.unexpectedDeviceState(_:), v49);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_8:
  sub_10000BB78(v66);

  if (!v6)
  {
  }

  return result;
}

uint64_t sub_10004DF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834EB0, &qword_1006E78F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10004DF90(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10004DFC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10004E00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPClientGUIDSeeds.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DIPClientGUIDSeeds.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10004E1D0()
{
  result = qword_100834EC0;
  if (!qword_100834EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834EC0);
  }

  return result;
}

unint64_t sub_10004E228()
{
  result = qword_100834EC8;
  if (!qword_100834EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834EC8);
  }

  return result;
}

unint64_t sub_10004E280()
{
  result = qword_100834ED0;
  if (!qword_100834ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCoreDataStore.StoreType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncCoreDataStore.StoreType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E434()
{
  result = qword_100834ED8;
  if (!qword_100834ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834ED8);
  }

  return result;
}

uint64_t sub_10004E488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837760, &qword_1006C9900);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1930();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10004E61C(void *a1)
{
  v3 = sub_100007224(&qword_1008376B8, &qword_1006C9890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10004E83C()
{
  if (*v0)
  {
    return 0x4974736575716572;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_10004E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
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

uint64_t sub_10004E980(uint64_t a1)
{
  v2 = sub_1000B1930();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E9BC(uint64_t a1)
{
  v2 = sub_1000B1930();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E9F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008218C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10004EA48()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F43737574617473;
  v4 = 0x7574617453627573;
  if (v1 != 4)
  {
    v4 = 0x654D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4974736575716572;
  if (v1 != 1)
  {
    v5 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004EB38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000823FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004EB6C(uint64_t a1)
{
  v2 = sub_1000B1504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004EBA8(uint64_t a1)
{
  v2 = sub_1000B1504();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004EBE4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100082624(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10004EC48(void *a1)
{
  v3 = sub_100007224(&qword_100837690, &qword_1006C9878);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10004EDE8()
{
  v1 = 0x6449656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6E49746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

uint64_t sub_10004EE54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100082AC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004EE88(uint64_t a1)
{
  v2 = sub_1000B1424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004EEC4(uint64_t a1)
{
  v2 = sub_1000B1424();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004EF00@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100082BE8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_10004EF5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10004EFD0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004F100(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EncodingError();
  v23 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v24 = &v22 - v10;
  v11 = sub_100007224(&qword_100836F88, &unk_1006C95E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  sub_10000BA08(a1, a1[3]);
  sub_1000ACA60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v3[1];
  v28 = *v3;
  v29 = v15;
  v31 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    (*(v12 + 8))(v14, v11);
    v17 = v24;
    *&v28 = v2;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {

      v19 = v22;
      v18 = v23;
      (*(v23 + 32))(v22, v17, v7);
      swift_allocError();
      (*(v18 + 16))(v20, v19, v7);
      (*(v25 + 104))(v27, enum case for DIPError.Code.jsonEncodingFailed(_:), v26);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v18 + 8))(v19, v7);
    }

    else
    {

      (*(v25 + 104))(v27, enum case for DIPError.Code.workflowRecommendationRequestEncodingFailed(_:), v26);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v16 = v3[3];
    v28 = v3[2];
    v29 = v16;
    v30 = v3[4];
    v31 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v28) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v28) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v28) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v28 = *(v3 + 16);
    v31 = 5;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v28) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v28) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v28 = *(v3 + 20);
    v31 = 8;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    sub_1000AC57C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v28) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v28 = *(v3 + 22);
    v31 = 10;
    sub_100007224(&qword_100836F98, &qword_1006DC5A0);
    sub_1000ACAB4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_10004F8D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4874736575716572;
    v7 = 0x72656469766F7270;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 1919248756;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696C696261706163;
    v2 = 0x6563697665447369;
    if (a1 != 9)
    {
      v2 = 0x747865746E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    v4 = 0x756F4365636E6F6ELL;
    if (a1 != 6)
    {
      v4 = 0x6F436E6F69676572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10004FA78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100082DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004FAA0(uint64_t a1)
{
  v2 = sub_1000ACA60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004FADC(uint64_t a1)
{
  v2 = sub_1000ACA60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004FB18()
{
  v1 = *v0;

  return v1;
}

double sub_10004FB64@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100083184(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_10004FBFC(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008377C0, &qword_1006C9930);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD0D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v2 + 14);
    v16[7] = 2;
    type metadata accessor for LegacyWorkflowPackage(0);
    sub_10009F43C(&qword_1008377C8, type metadata accessor for LegacyWorkflowPackage, &unk_1006C196C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10004FE8C()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10004FF00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100083D10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004FF28(uint64_t a1)
{
  v2 = sub_1000AD0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004FF64(uint64_t a1)
{
  v2 = sub_1000AD0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004FFA0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100083A04(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_100050048@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E3C(*a1);
  *a2 = result;
  return result;
}

void sub_100050078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xD000000000000011;
    v9 = 0x80000001006F8BE0;
    if (v2 != 6)
    {
      v8 = 0xD000000000000014;
      v9 = 0x80000001006F8C00;
    }

    v10 = 0xD000000000000011;
    v11 = 0x80000001006F8BB0;
    if (v2 != 4)
    {
      v10 = 0x656D737365737361;
      v11 = 0xEF7344495547746ELL;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if (*v1 <= 5u)
    {
      v9 = v11;
    }

    *a1 = v12;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xED00006E69616843;
    v4 = 0xE600000000000000;
    v5 = 0x7365636E6F6ELL;
    if (v2 != 2)
    {
      v5 = 0x726F576F73726570;
      v4 = 0xED0000776F6C666BLL;
    }

    if (*v1)
    {
      v3 = 0xE800000000000000;
    }

    if (*v1 <= 1u)
    {
      v6 = 0x776F6C666B726F77;
    }

    else
    {
      v6 = v5;
    }

    if (*v1 <= 1u)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_100050190()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0xD000000000000011;
    if (v1 != 6)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000011;
    if (v1 != 4)
    {
      v5 = 0x656D737365737361;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x7365636E6F6ELL;
    if (v1 != 2)
    {
      v2 = 0x726F576F73726570;
    }

    if (*v0 <= 1u)
    {
      return 0x776F6C666B726F77;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1000502A0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000502D4(uint64_t a1)
{
  v2 = sub_10007FCD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050310(uint64_t a1)
{
  v2 = sub_10007FCD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005034C(uint64_t a1)
{
  v116 = v1;
  v117 = v2;
  v3 = __chkstk_darwin(a1);
  v4 = sub_100007224(&unk_100839970, &qword_1006C19C0);
  __chkstk_darwin(v4 - 8);
  v101 = &v99 - v5;
  v6 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v6 - 8);
  v104 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost();
  v102 = *(v8 - 8);
  v103 = v8;
  __chkstk_darwin(v8);
  v105 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v108 = *(v10 - 8);
  v109 = v10;
  __chkstk_darwin(v10);
  v112 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100835538, &qword_1006C19C8);
  __chkstk_darwin(v12 - 8);
  v106 = &v99 - v13;
  v14 = sub_100007224(&qword_100835540, &qword_1006C19D0);
  v15 = __chkstk_darwin(v14 - 8);
  v110 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v99 - v17;
  v111 = type metadata accessor for Logger();
  v114 = *(v111 - 8);
  v18 = __chkstk_darwin(v111);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v99 - v22;
  __chkstk_darwin(v21);
  v25 = &v99 - v24;
  v26 = sub_100007224(&qword_100835548, &qword_1006C19D8);
  v113 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v99 - v27;
  v29 = v3[3];
  v115 = v3;
  sub_10000BA08(v3, v29);
  sub_10007FCD8();
  v30 = v117;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v117 = v30;
  if (!v30)
  {
    v32 = v112;
    v99 = v20;
    LOBYTE(v119[0]) = 0;
    if (KeyedDecodingContainer.contains(_:)())
    {
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      v35 = os_log_type_enabled(v33, v34);
      v31 = v116;
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "decoding legacy", v36, 2u);
      }

      (*(v114 + 8))(v25, v111);
      LOBYTE(v118) = 0;
      v37 = v117;
      KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
      v117 = v37;
      if (!v37)
      {
        v100 = v28;
        v110 = v26;
        sub_10000BA08(v119, v119[3]);
        v38 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
        if ((v39 & 1) == 0 && v38 > 2)
        {
          (*(v108 + 104))(v32, enum case for DIPError.Code.serverResponseInconsistent(_:), v109);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v40 = swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          v117 = v40;
          swift_willThrow();
LABEL_17:
          (*(v113 + 8))(v100, v110);
          sub_10000BB78(v119);
          goto LABEL_45;
        }

        v52 = sub_100007224(&unk_100839980, &qword_1006C0A08);
        sub_10001F370(v119, v119[3]);
        sub_1000BA30C(&qword_100835568, &unk_100839980, &qword_1006C0A08, &protocol conformance descriptor for JWSSignedJSON<A>);
        v53 = v107;
        v54 = v117;
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v117 = v54;
        if (v54)
        {
          goto LABEL_17;
        }

        (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
        sub_1000B1FC8(v53, v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
        sub_100007224(&unk_1008399E0, &qword_1006C0A10);
        sub_10001F370(v119, v119[3]);
        sub_1000BA30C(&qword_100835570, &unk_1008399E0, &qword_1006C0A10, &protocol conformance descriptor for JWSSignedJSON<A>);
        v72 = v106;
        v73 = v117;
        dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
        v117 = v73;
        if (v73)
        {
          (*(v113 + 8))(v100, v110);
          sub_10000BB78(v119);
          v74 = &qword_100835540;
          v75 = &qword_1006C19D0;
          v76 = (v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow);
LABEL_44:
          sub_10000BE18(v76, v74, v75);
          goto LABEL_45;
        }

        sub_1000B1FC8(v72, v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);
        sub_10000BB78(v119);
        v57 = v113;
        v42 = v114;
        v26 = v110;
LABEL_20:
        LOBYTE(v119[0]) = 4;
        v58 = v100;
        v59 = v117;
        v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v62 = v59;
        if (v59)
        {
          (*(v57 + 8))(v58, v26);
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v117 = v59;
          goto LABEL_33;
        }

        v67 = (v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile);
        *v67 = v60;
        v67[1] = v61;
        sub_100007224(&qword_100834EA0, &qword_1006C06B0);
        LOBYTE(v118) = 5;
        sub_10007FD2C();
        v68 = v26;
        v116 = 0;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v117 = 0;
        *(v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentGUIDs) = v119[0];
        LOBYTE(v119[0]) = 6;
        v69 = v117;
        v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v117 = v69;
        if (v69)
        {
          (*(v57 + 8))(v58, v26);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v63 = 1;
LABEL_32:
          v62 = v116;
LABEL_33:
          sub_10000BE18(v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
          sub_10000BE18(v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);
          if (v62)
          {
            if (v63)
            {
              goto LABEL_35;
            }
          }

          else
          {

            if (v63)
            {
LABEL_35:

              if ((v64 & 1) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_41;
            }
          }

          if (!v64)
          {
LABEL_36:
            if (v65)
            {
              goto LABEL_37;
            }

            goto LABEL_42;
          }

LABEL_41:

          if (v65)
          {
LABEL_37:

            if ((v66 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_43:
            memcpy(v119, (v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), 0x2181uLL);
            v74 = &qword_100839990;
            v75 = &unk_1006C19E0;
            v76 = v119;
            goto LABEL_44;
          }

LABEL_42:
          if (!v66)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v77 = (v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL);
        *v77 = v70;
        v77[1] = v71;
        v121 = 7;
        sub_10007FDA8();
        v78 = v117;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v117 = v78;
        if (v78)
        {
          (*(v57 + 8))(v58, v26);
          v65 = 0;
          v66 = 0;
          v63 = 1;
          v64 = 1;
          goto LABEL_32;
        }

        memcpy((v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), v119, 0x2181uLL);
        v120 = 2;
        v79 = v117;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v117 = v79;
        if (v79)
        {
          (*(v57 + 8))(v58, v26);
          v65 = 0;
          v63 = 1;
          v64 = 1;
LABEL_31:
          v66 = 1;
          goto LABEL_32;
        }

        v100 = v58;
        *(v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces) = v118;
        static DaemonSignposts.configureDecodePersoWorkflow.getter();
        DIPSignpost.init(_:)();
        v83 = [objc_opt_self() standardUserDefaults];
        v84._countAndFlagsBits = static DaemonInternalDefaultsKeys.ignorePersoWorkflow.getter();
        v85 = NSUserDefaults.internalBool(forKey:)(v84);

        if (v85)
        {
          v86 = v99;
          defaultLogger()();
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&_mh_execute_header, v87, v88, "Skipping perso workflow due to user defaults settings", v89, 2u);
            v86 = v99;
          }

          (*(v42 + 8))(v86, v111);
          v90 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow;
          v91 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
          (*(*(v91 - 8) + 56))(v31 + v90, 1, 1, v91);
        }

        else
        {
          sub_100007224(&qword_1008399A0, &qword_1006D48E0);
          LOBYTE(v118) = 3;
          sub_1000BA30C(&qword_100835560, &qword_1008399A0, &qword_1006D48E0, &protocol conformance descriptor for JWSSignedJSON<A>);
          v92 = v100;
          v93 = v101;
          v94 = v117;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v117 = v94;
          if (v94)
          {
            (*(v102 + 8))(v105, v103);
            (*(v57 + 8))(v92, v68);
            v63 = 1;
            v64 = 1;
            v65 = 1;
            goto LABEL_31;
          }

          sub_1000B1FC8(v93, v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, &unk_100839970, &qword_1006C19C0);
        }

        v95 = v68;
        v97 = v102;
        v96 = v103;
        v98 = v105;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v97 + 8))(v98, v96);
        (*(v57 + 8))(v100, v95);
        v81 = v115;
        goto LABEL_46;
      }

LABEL_14:
      (*(v113 + 8))(v28, v26);
      goto LABEL_45;
    }

    LOBYTE(v119[0]) = 1;
    v41 = KeyedDecodingContainer.contains(_:)();
    v31 = v116;
    v42 = v114;
    if (v41)
    {
      v43 = v23;
      defaultLogger()();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "decoding LegacyINOWorkflow", v46, 2u);
      }

      (*(v42 + 8))(v43, v111);
      v47 = sub_100007224(&unk_100839980, &qword_1006C0A08);
      LOBYTE(v119[0]) = 1;
      sub_1000BA30C(&qword_100835568, &unk_100839980, &qword_1006C0A08, &protocol conformance descriptor for JWSSignedJSON<A>);
      v48 = v110;
      v49 = v117;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v117 = v49;
      if (v49)
      {
        goto LABEL_14;
      }

      v100 = v28;
      (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
      sub_1000B1FC8(v48, v31 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
    }

    else
    {
      v100 = v28;
      v50 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow;
      v51 = sub_100007224(&unk_100839980, &qword_1006C0A08);
      (*(*(v51 - 8) + 56))(v31 + v50, 1, 1, v51);
    }

    v55 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow;
    v56 = sub_100007224(&unk_1008399E0, &qword_1006C0A10);
    (*(*(v56 - 8) + 56))(v31 + v55, 1, 1, v56);
    v57 = v113;
    goto LABEL_20;
  }

  v31 = v116;
LABEL_45:
  v80 = v115;
  type metadata accessor for LegacyWorkflowPackage(0);
  swift_deallocPartialClassInstance();
  v81 = v80;
LABEL_46:
  sub_10000BB78(v81);
  return v31;
}

uint64_t sub_100051440(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);

  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, &unk_100839970, &qword_1006C19C0);
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), 0x2181uLL);
  sub_10000BE18(__dst, &qword_100839990, &unk_1006C19E0);
  return v1;
}

uint64_t sub_10005155C(uint64_t a1)
{
  sub_100051440(a1);

  return swift_deallocClassInstance();
}

void sub_1000515DC(uint64_t a1)
{
  sub_1000A5F34(319, &qword_100834F18, &unk_100839980, &qword_1006C0A08, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_100834F20, &unk_1008399E0, &qword_1006C0A10, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000A5F34(319, &unk_100834F28, &qword_1008399A0, &qword_1006D48E0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100051784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LegacyWorkflowPackage(0);
  v5 = swift_allocObject();
  result = sub_10005034C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1000517E0(void *a1)
{
  v2 = sub_100007224(&qword_100835578, &qword_1006C19F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_10007FCD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = 1;
  sub_100007224(&unk_100839980, &qword_1006C0A08);
  sub_1000BA30C(&qword_100835580, &unk_100839980, &qword_1006C0A08, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10005197C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008378A0, &qword_1006C99A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B20EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  sub_1000ACB5C(&qword_10084A240, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for InputValidationRequestV1(0);
    v10[5] = 2;
    type metadata accessor for EncryptionParamsAlgorithmIdentifier();
    sub_10009F43C(&qword_1008378A8, &type metadata accessor for EncryptionParamsAlgorithmIdentifier, &protocol conformance descriptor for EncryptionParamsAlgorithmIdentifier);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[4] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100051C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100007224(&qword_1008360B0, &qword_1006C4F88);
  __chkstk_darwin(v3 - 8);
  v30 = &v25 - v4;
  v32 = sub_100007224(&qword_100837890, &qword_1006C9998);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v25 - v5;
  v7 = type metadata accessor for InputValidationRequestV1(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  v11 = *(v8 + 32);
  v12 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[*(v8 + 36)];
  *v13 = 0;
  v13[1] = 0;
  sub_10000BA08(a1, a1[3]);
  sub_1000B20EC();
  v31 = v6;
  v14 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v24 = a1;
  }

  else
  {
    v26 = v13;
    v27 = v11;
    v33 = a1;
    v15 = v29;
    v16 = v30;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    v37 = 0;
    sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    v17 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *v10 = v38;
    v36 = 1;
    *(v10 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v10 + 2) = v18;
    v35 = 2;
    sub_10009F43C(&qword_100839800, &type metadata accessor for EncryptionParamsAlgorithmIdentifier, &protocol conformance descriptor for EncryptionParamsAlgorithmIdentifier);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v16, &v10[v27], &qword_1008360B0, &qword_1006C4F88);
    v34 = 3;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    (*(v15 + 8))(v17, v32);
    v23 = v26;
    *v26 = v20;
    v23[1] = v22;
    sub_10009ED78(v10, v28, type metadata accessor for InputValidationRequestV1);
    v24 = v33;
  }

  sub_10000BB78(v24);
  return sub_10009EDE0(v10, type metadata accessor for InputValidationRequestV1);
}

unint64_t sub_100052014()
{
  v1 = 0x7461447475706E69;
  v2 = 0x654B63696C627570;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1000520A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100083E88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000520C8(uint64_t a1)
{
  v2 = sub_1000B20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052104(uint64_t a1)
{
  v2 = sub_1000B20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000521B8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837878, &qword_1006C9988);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[15] = 0;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  sub_1000ACB5C(&qword_10084A240, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for InputValidationRequestV3(0);
    v10[14] = 1;
    sub_100007224(&unk_100836080, &qword_1006C4F30);
    sub_1000BA30C(&qword_100837880, &unk_100836080, &qword_1006C4F30, &protocol conformance descriptor for EncryptedDataContainer<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000523D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100007224(&qword_100836008, &unk_1006C4F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100007224(&qword_100837860, &qword_1006C9980);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for InputValidationRequestV3(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  v14 = *(v11 + 28);
  v15 = sub_100007224(&unk_100836080, &qword_1006C4F30);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = a1[3];
  v24 = a1;
  sub_10000BA08(a1, v16);
  sub_1000B2098();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v14;
    v17 = v22;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    v26 = 0;
    sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    v18 = v23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *v13 = v27;
    v25 = 1;
    sub_1000BA30C(&qword_100837870, &unk_100836080, &qword_1006C4F30, &protocol conformance descriptor for EncryptedDataContainer<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v9, v18);
    sub_1000B2764(v6, &v13[v20], &qword_100836008, &unk_1006C4F00);
    sub_10009ED78(v13, v21, type metadata accessor for InputValidationRequestV3);
  }

  sub_10000BB78(v24);
  return sub_10009EDE0(v13, type metadata accessor for InputValidationRequestV3);
}

uint64_t sub_100052750(void *a1)
{
  v3 = sub_100007224(&qword_100837888, &qword_1006C9990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100052914()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7461447475706E69;
  }
}

uint64_t sub_100052958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447475706E69 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE3F0 == a2)
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

uint64_t sub_100052A44(uint64_t a1)
{
  v2 = sub_1000B2098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052A80(uint64_t a1)
{
  v2 = sub_1000B2098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100052B04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10009F43C(a3, a4, a5);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v8;
}

unint64_t sub_100052BE4()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x657A696C61636F6CLL;
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

uint64_t sub_100052C7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100084008(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100052CA4(uint64_t a1)
{
  v2 = sub_1000AD194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052CE0(uint64_t a1)
{
  v2 = sub_1000AD194();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100052D1C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008418C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_100052D78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008377A8, &qword_1006C9928);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B19D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100007224(&qword_100837790, &qword_1006C9920);
    sub_1000B1B0C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100052F38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008383D8, &qword_1006CFD08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA5A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000530CC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836C30, &qword_1006C94F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAC1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_100007224(&qword_100836C18, &qword_1006C94E8);
  sub_1000AAD8C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10[5] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10[4] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10[3] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10[2] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10[1] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100053324(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835920, &qword_1006C1B70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009FAC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v18 = *(v3 + 24);
    LOBYTE(v15[0]) = 2;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    sub_10009F9F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 48);
    v21[0] = *(v3 + 32);
    v21[1] = v9;
    v11 = *(v3 + 32);
    v10 = *(v3 + 48);
    v22[0] = *(v3 + 64);
    *(v22 + 9) = *(v3 + 73);
    v18 = v11;
    v19 = v10;
    v20[0] = *(v3 + 64);
    *(v20 + 9) = *(v3 + 73);
    v17 = 3;
    sub_10000BBC4(v21, v15, &qword_100835910, &qword_1006C1B68);
    sub_10009FBD8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15[0] = v18;
    v15[1] = v19;
    *v16 = v20[0];
    *&v16[9] = *(v20 + 9);
    sub_10000BE18(v15, &qword_100835910, &qword_1006C1B68);
    v14 = *(v3 + 96);
    HIBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 104);
    HIBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100053660(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008358E0, &qword_1006C1B58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_10009F81C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10009F99C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    sub_10009F9F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10005380C()
{
  if (*v0)
  {
    return 0x7373416567616D69;
  }

  else
  {
    return 0x6568636163657270;
  }
}

uint64_t sub_10005385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6568636163657270 && a2 == 0xEE006769666E6F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465)
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

uint64_t sub_100053944(uint64_t a1)
{
  v2 = sub_1000B19D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053980(uint64_t a1)
{
  v2 = sub_1000B19D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000539BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100084448(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100053A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001006FE390 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100053AB4(uint64_t a1)
{
  v2 = sub_1000B1984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053AF0(uint64_t a1)
{
  v2 = sub_1000B1984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100053BB4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 30771;
  }

  else
  {
    v2 = 30770;
  }

  if (*a2)
  {
    v3 = 30771;
  }

  else
  {
    v3 = 30770;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100053C20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100053C7C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100053CBC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100053D20(uint64_t *a1@<X8>)
{
  v2 = 30770;
  if (*v1)
  {
    v2 = 30771;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_100053D3C()
{
  if (*v0)
  {
    return 30771;
  }

  else
  {
    return 30770;
  }
}

uint64_t sub_100053D60(uint64_t a1)
{
  v2 = sub_1000BA5A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053D9C(uint64_t a1)
{
  v2 = sub_1000BA5A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100053DD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008383C8, &qword_1006CFD00, sub_1000BA5A0, &type metadata for IdentityProofingImageAsset.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100053E54()
{
  v1 = *v0;
  v2 = 0x7365726975716572;
  v3 = 0x6C61756E614D7263;
  if (v1 != 5)
  {
    v3 = 0x6B6174655278616DLL;
  }

  v4 = 0x756F656D69547263;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100053F5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100084658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100053F90(uint64_t a1)
{
  v2 = sub_1000AAC1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053FCC(uint64_t a1)
{
  v2 = sub_1000AAC1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100054008@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000848C8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10005406C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6863746177;
  if (v2 != 1)
  {
    v4 = 28004;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
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
  v8 = 0x6863746177;
  if (*a2 != 1)
  {
    v8 = 28004;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100054148()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000541D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10005424C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000542D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084C60(*a1);
  *a2 = result;
  return result;
}

void sub_100054304(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6863746177;
  if (v2 != 1)
  {
    v5 = 28004;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000543FC()
{
  v1 = *v0;
  v2 = 0x6F69676552627573;
  v3 = 0x436E616353636F64;
  v4 = 0x6761506863746177;
  if (v1 != 4)
  {
    v4 = 0x616E696761506D64;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0x6974616E69676170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000544E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100084CAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005450C(uint64_t a1)
{
  v2 = sub_10009FAC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054548(uint64_t a1)
{
  v2 = sub_10009FAC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100054584@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100084ED4(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1000545F0()
{
  if (*v0)
  {
    return 0x6974616E69676170;
  }

  else
  {
    return 0x676E69666F6F7270;
  }
}

uint64_t sub_100054638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69666F6F7270 && a2 == 0xEC00000065707954;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974616E69676170 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_100054720(uint64_t a1)
{
  v2 = sub_10009F81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005475C(uint64_t a1)
{
  v2 = sub_10009F81C();

  return CodingKey.debugDescription.getter(a1, v2);
}