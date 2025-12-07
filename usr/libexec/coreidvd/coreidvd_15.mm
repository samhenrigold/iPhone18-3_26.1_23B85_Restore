unint64_t sub_10016D25C(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003B2F0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100166B5C(v14, a3 & 1);
      result = sub_10003B2F0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for DIUploadContainer(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10016FC4C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
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

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10016D3F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003ADCC(a2, a3);
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
      sub_1001719C8(&type metadata accessor for RecipientEncryptionCertificate, &qword_1008347A0, &unk_1006DA610);
      goto LABEL_7;
    }

    sub_10016A30C(v15, a4 & 1, &type metadata accessor for RecipientEncryptionCertificate, &qword_1008347A0, &unk_1006DA610);
    v26 = sub_10003ADCC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
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
    v20 = type metadata accessor for RecipientEncryptionCertificate();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10016ECD4(v12, a2, a3, a1, v18, &type metadata accessor for RecipientEncryptionCertificate);
}

uint64_t sub_10016D5E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10003ADCC(a2, a3);
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
      sub_10016AE54(v20, a4 & 1, a5, a6);
      v15 = sub_10003ADCC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100172088(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *sub_10016D780(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10004062C();
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
      sub_100170B74();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100168890(v13, a3 & 1);
    v8 = sub_10004062C();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
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
    sub_10000BB78(v19);

    return sub_10001F348(a1, v19);
  }

  else
  {
    sub_10016EBCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_10016D8C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10003B6E4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
      return sub_1000B2764(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_1008335C0, &qword_1006DA7B0);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_100171048();
    goto LABEL_7;
  }

  sub_100169008(v13, a3 & 1);
  v20 = sub_10003B6E4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_10016EC34(v10, a2, a1, v16);
}

unint64_t sub_10016DA1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003B6E4(a2);
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
    sub_10017126C();
    result = v17;
    goto LABEL_8;
  }

  sub_1001693F4(v14, a3 & 1);
  result = sub_10003B6E4(a2);
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
    *(v19[6] + result) = a2;
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

unint64_t sub_10016DB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10003B6E4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100169720(v16, a4 & 1);
      result = sub_10003B6E4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1001713B8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_10016DCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10003ADCC(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_100169D44(v20, a6 & 1);
      v15 = sub_10003ADCC(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100171690();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_10016DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8, uint64_t *a9)
{
  v10 = v9;
  v17 = *v9;
  v18 = sub_10003ADCC(a5, a6);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a7 & 1) == 0)
  {
    if (v25 < v23 || (a7 & 1) != 0)
    {
      sub_10016A040(v23, a7 & 1, a8, a9);
      v18 = sub_10003ADCC(a5, a6);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_100171844(a8, a9);
      v18 = v26;
    }
  }

  v28 = *v10;
  if (v24)
  {
    v29 = (v28[7] + 32 * v18);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v31 = (v28[6] + 16 * v18);
  *v31 = a5;
  v31[1] = a6;
  v32 = (v28[7] + 32 * v18);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = a4;
  v33 = v28[2];
  v22 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

uint64_t sub_10016E05C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003ADCC(a2, a3);
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
      sub_1001719C8(&type metadata accessor for MobileDocumentProviderRegisteredApplication, &qword_1008348C8, &unk_1006DA6D0);
      goto LABEL_7;
    }

    sub_10016A30C(v15, a4 & 1, &type metadata accessor for MobileDocumentProviderRegisteredApplication, &qword_1008348C8, &unk_1006DA6D0);
    v26 = sub_10003ADCC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
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
    v20 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10016ECD4(v12, a2, a3, a1, v18, &type metadata accessor for MobileDocumentProviderRegisteredApplication);
}

unint64_t sub_10016E238(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10003ADCC(a1, a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_10016B4D0(v18, a3 & 1);
      result = sub_10003ADCC(a1, a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_10017248C();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a4;
    v24[1] = a5;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a1;
  v25[1] = a2;
  v26 = (v23[7] + 16 * result);
  *v26 = a4;
  v26[1] = a5;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

uint64_t sub_10016E3B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10003ADCC(a2, a3);
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
      sub_10016BB38(v20, a4 & 1, a5, a6);
      v15 = sub_10003ADCC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100172804(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_10016E56C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003ADCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10016B77C(v16, a4 & 1);
      v11 = sub_10003ADCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1001725F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    return sub_1000B2764(a1, v21[7] + 96 * v11, &unk_100849FC0, &qword_1006C9540);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 96 * v11);
  v25 = a1[1];
  *v24 = *a1;
  v24[1] = v25;
  v26 = a1[2];
  v27 = a1[3];
  v28 = a1[4];
  *(v24 + 73) = *(a1 + 73);
  v24[3] = v27;
  v24[4] = v28;
  v24[2] = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v30;
}

unint64_t sub_10016E724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10003ADCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10016C088(v16, a4 & 1);
      result = sub_10003ADCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100172AD4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10016E888(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  result = sub_100175124(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
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

uint64_t sub_10016E934(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001F358(a4, a5[7] + 40 * a1);
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

_OWORD *sub_10016E9A4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001F348(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10016EA10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IQCType();
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

unint64_t sub_10016EACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10016EB14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ISO18013KnownDocTypes();
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

_OWORD *sub_10016EBCC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10001F348(a3, (a4[7] + 32 * a1));
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

uint64_t sub_10016EC34(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  result = sub_100174FE8(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10016ECD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_10016ED88(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 96 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 73) = *(a4 + 73);
  v8 = a4[4];
  v6[3] = a4[3];
  v6[4] = v8;
  v6[2] = a4[2];
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *sub_10016EE08()
{
  v1 = v0;
  v2 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_100834990, &qword_1006DA820);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001750BC(*(v4 + 56) + v26, v30, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100175124(v25, *(v27 + 56) + v26, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

id sub_10016F09C()
{
  v1 = v0;
  sub_100007224(&qword_100833A48, &unk_1006BF8B0);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10016F1FC()
{
  v1 = v0;
  sub_100007224(&qword_100834898, &qword_1006C00D0);
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

  return result;
}

void *sub_10016F394()
{
  v1 = v0;
  sub_100007224(&qword_100834738, &unk_1006DA620);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v22 = 40 * v17;
        sub_100020260(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001F358(v25, *(v4 + 56) + v22);
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

void *sub_10016F53C()
{
  v1 = v0;
  sub_100007224(&qword_100849420, &qword_1006DA510);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_10016F6B4()
{
  v1 = v0;
  sub_100007224(&qword_1008346F8, &qword_1006DA530);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10001F2EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001F348(v25, (*(v4 + 56) + v22));
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

id sub_10016F880()
{
  v1 = v0;
  sub_100007224(&qword_1008348F8, &qword_1006C0110);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

char *sub_10016F9DC()
{
  v1 = v0;
  v31 = type metadata accessor for IQCType();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_100834918, &qword_1006C0120);
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

void *sub_10016FC4C()
{
  v1 = v0;
  sub_100007224(&qword_10083C228, &unk_1006DA800);
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

void *sub_10016FDA8()
{
  v1 = v0;
  v2 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_1008348D8, &unk_1006DA710);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001750BC(*(v4 + 56) + v26, v30, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100175124(v25, *(v27 + 56) + v26, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_100170000()
{
  v1 = v0;
  sub_100007224(&qword_10083C238, &qword_1006DA830);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;

        result = sub_10000B8B8(v24, v25);
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

void *sub_100170194()
{
  v1 = v0;
  sub_100007224(&qword_10083C240, &qword_1006DA838);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1000B2D34(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 152;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v43 = *(v21 + 64);
      v44 = v24;
      v42 = v23;
      v26 = *(v21 + 112);
      v25 = *(v21 + 128);
      v27 = *(v21 + 96);
      v48 = *(v21 + 144);
      v46 = v26;
      v47 = v25;
      v45 = v27;
      v28 = *(v21 + 16);
      v39 = *v21;
      v40 = v28;
      v41 = v22;
      v29 = (*(v4 + 48) + v17);
      *v29 = v20;
      v29[1] = v19;
      v30 = *(v4 + 56) + v16;
      v31 = v40;
      *v30 = v39;
      *(v30 + 16) = v31;
      v32 = v41;
      v33 = v42;
      v34 = v44;
      *(v30 + 64) = v43;
      *(v30 + 80) = v34;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      *(v30 + 144) = v48;
      *(v30 + 112) = v36;
      *(v30 + 128) = v37;
      *(v30 + 96) = v35;
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

void *sub_100170388()
{
  v1 = v0;
  sub_100007224(&qword_100834978, &qword_1006C0160);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1000F059C(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 152;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v43 = *(v21 + 64);
      v44 = v24;
      v42 = v23;
      v26 = *(v21 + 112);
      v25 = *(v21 + 128);
      v27 = *(v21 + 96);
      v48 = *(v21 + 144);
      v46 = v26;
      v47 = v25;
      v45 = v27;
      v28 = *(v21 + 16);
      v39 = *v21;
      v40 = v28;
      v41 = v22;
      v29 = (*(v4 + 48) + v17);
      *v29 = v20;
      v29[1] = v19;
      v30 = *(v4 + 56) + v16;
      v31 = v40;
      *v30 = v39;
      *(v30 + 16) = v31;
      v32 = v41;
      v33 = v42;
      v34 = v44;
      *(v30 + 64) = v43;
      *(v30 + 80) = v34;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      *(v30 + 144) = v48;
      *(v30 + 112) = v36;
      *(v30 + 128) = v37;
      *(v30 + 96) = v35;
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

void *sub_10017061C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, unint64_t))
{
  v36 = a4;
  v7 = v4;
  v35 = a1(0);
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v33 - v8;
  sub_100007224(a2, a3);
  v9 = *v4;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33[0] = v7;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v33[1] = v38 + 32;
    v33[2] = v38 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v38;
        v27 = *(v38 + 72) * v25;
        v28 = v34;
        v29 = v35;
        (*(v38 + 16))(v34, *(v9 + 48) + v27, v35);
        v25 *= 40;
        sub_100020260(*(v9 + 56) + v25, v40);
        v30 = v9;
        v31 = v37;
        (*(v26 + 32))(*(v37 + 48) + v27, v28, v29);
        v32 = *(v31 + 56);
        v9 = v30;
        result = v36(v40, v32 + v25);
        v20 = v39;
      }

      while (v39);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v33[0];
        v11 = v37;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v39 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

void *sub_1001708B8()
{
  v1 = v0;
  v2 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_100834730, &qword_1006C0028);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001750BC(*(v4 + 56) + v26, v30, type metadata accessor for DigitalPresentmentEligibleProposalData);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100175124(v25, *(v27 + 56) + v26, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

id sub_100170B74()
{
  v1 = v0;
  sub_100007224(&qword_100834708, &qword_1006C0008);
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
        sub_10001F2EC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10001F348(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

char *sub_100170CF4()
{
  v1 = v0;
  v41 = type metadata accessor for DIPSignpost();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DIPSignpost.Config();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083C108, &qword_1006DA688);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
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

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void *sub_100171048()
{
  v1 = v0;
  v2 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  sub_100007224(&qword_10083C1F8, &qword_1006DA7B8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_10000BBC4(*(v5 + 56) + v22, v4, &qword_1008335C0, &qword_1006DA7B0);
        *(*(v7 + 48) + v20) = v21;
        result = sub_100174FE8(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_10017126C()
{
  v1 = v0;
  sub_100007224(&qword_10083C200, &qword_1006DA7C0);
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_1001713B8()
{
  v1 = v0;
  sub_100007224(&qword_10083C208, &qword_1006DA7C8);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_100171520()
{
  v1 = v0;
  sub_100007224(&qword_1008348A8, &qword_1006C00E0);
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_100171690()
{
  v1 = v0;
  sub_100007224(&qword_100834948, &qword_1006DA7A0);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
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

void *sub_100171844(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 32;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
        v29 = (*(v6 + 48) + v20);
        *v29 = v23;
        v29[1] = v22;
        v30 = (*(v6 + 56) + v19);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;
        v30[3] = v28;
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

  return result;
}

void *sub_1001719C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_100007224(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_100171C50()
{
  v1 = v0;
  sub_100007224(&qword_10083C048, &qword_1006DA540);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_10000B8B8(v19, *(&v19 + 1));
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

void *sub_100171DC0()
{
  v1 = v0;
  sub_100007224(&qword_100834760, &qword_1006DA550);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_100171F0C()
{
  v1 = v0;
  sub_100007224(&qword_100834768, &unk_1006DA5B0);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100172088(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

  return result;
}

void *sub_100172210(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_100007224(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_10017248C()
{
  v1 = v0;
  sub_100007224(&qword_10083C100, &qword_1006DA680);
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

  return result;
}

void *sub_1001725F4()
{
  v1 = v0;
  sub_100007224(&qword_100834828, &qword_1006C0090);
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 96;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 64);
        *(v38 + 9) = *(v19 + v17 + 73);
        v37 = v24;
        v38[0] = v25;
        v26 = *(v19 + v17 + 16);
        v34 = *(v19 + v17);
        v35 = v26;
        v36 = v23;
        v27 = (*(v4 + 48) + v18);
        *v27 = v22;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        v29 = v35;
        *v28 = v34;
        v28[1] = v29;
        v30 = v36;
        v31 = v37;
        v32 = v38[0];
        *(v28 + 73) = *(v38 + 9);
        v28[3] = v31;
        v28[4] = v32;
        v28[2] = v30;

        result = sub_10000BBC4(&v34, &v33, &unk_100849FC0, &qword_1006C9540);
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

void *sub_100172804(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

  return result;
}

id sub_100172978(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

        result = v22;
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

  return result;
}

void *sub_100172AD4()
{
  v1 = v0;
  sub_100007224(&qword_100834820, &qword_1006C0088);
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

  return result;
}

void *sub_100172C3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C230, &qword_1006DA828, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_100172C80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C1B8, &unk_1006DA750, &type metadata accessor for IQComplexSignal);
  *v3 = result;
  return result;
}

void *sub_100172CC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C1B0, &unk_1006DFB80, &type metadata accessor for IQSignal);
  *v3 = result;
  return result;
}

void *sub_100172D08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C1A8, &unk_1006DA740, &type metadata accessor for IQACode);
  *v3 = result;
  return result;
}

char *sub_100172D4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001737B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100172D6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001738BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100172D8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174074(a1, a2, a3, *v3, &qword_10083A9B0, &unk_1006DFA50, &qword_10083C0A0, &unk_1006DA5C0);
  *v3 = result;
  return result;
}

void *sub_100172DCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174300(a1, a2, a3, *v3, &qword_10083C070, &unk_1006DA570, &qword_10083C078, &unk_1006E4F40);
  *v3 = result;
  return result;
}

void *sub_100172E0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C090, &unk_1006DFA40, &type metadata accessor for ISO18013ReaderRequest.DocRequest);
  *v3 = result;
  return result;
}

void *sub_100172E50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001741CC(a1, a2, a3, *v3, &qword_10083C168, &qword_1006DA6E8, &qword_10083C170, &unk_1006DA6F0);
  *v3 = result;
  return result;
}

void *sub_100172E90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083B238, &qword_1006D9660, &type metadata accessor for DocumentRequest);
  *v3 = result;
  return result;
}

void *sub_100172ED4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C138, &qword_1006DA6C0, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  *v3 = result;
  return result;
}

void *sub_100172F18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C128, &qword_1006DA6B0, type metadata accessor for DigitalPresentmentEligibleProposalData);
  *v3 = result;
  return result;
}

void *sub_100172F5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C030, &qword_1006DA518, &type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential);
  *v3 = result;
  return result;
}

char *sub_100172FA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001739E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100172FC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100173AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100172FE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001741CC(a1, a2, a3, *v3, &qword_10083C190, &qword_1006DA728, &qword_1008375E0, &qword_1006C9820);
  *v3 = result;
  return result;
}

char *sub_100173020(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100173BEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100173040(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C0E8, &unk_1006DC520, &type metadata accessor for ProofingSession);
  *v3 = result;
  return result;
}

void *sub_100173084(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C1D0, &unk_1006DA770, &type metadata accessor for ProofingSession.UploadAsset);
  *v3 = result;
  return result;
}

void *sub_1001730C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001741CC(a1, a2, a3, *v3, &qword_10083C158, &qword_1006DA6E0, &qword_10083C160, &qword_1006DECE0);
  *v3 = result;
  return result;
}

void *sub_100173108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083B230, &qword_1006D9658, &type metadata accessor for CredentialPresentmentRequest.UseCase);
  *v3 = result;
  return result;
}

char *sub_10017314C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100173D14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10017316C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C178, &qword_1006DA700, type metadata accessor for MobileDocumentProviderApplication);
  *v3 = result;
  return result;
}

void *sub_1001731B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C180, &qword_1006DA708, &type metadata accessor for ExtensionIdentity);
  *v3 = result;
  return result;
}

void *sub_1001731F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C150, &qword_1006DFB10, &type metadata accessor for MobileDocumentRegistration);
  *v3 = result;
  return result;
}

char *sub_100173238(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100173E20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100173258(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C120, &unk_1006DA6A0, &type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
  *v3 = result;
  return result;
}

void *sub_10017329C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C118, &qword_1006DA698, &type metadata accessor for MobileDocumentReaderCertificateResponse.StatusItem);
  *v3 = result;
  return result;
}

char *sub_1001732E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100173F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100173300(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001741CC(a1, a2, a3, *v3, &qword_10083C088, &qword_1006DA588, &qword_100837278, &unk_1006DA590);
  *v3 = result;
  return result;
}

void *sub_100173340(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C060, &unk_1006DA560, &type metadata accessor for COSE_Sign1);
  *v3 = result;
  return result;
}

void *sub_100173384(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C080, &qword_1006DA580, &type metadata accessor for ISO18013ReaderAuthentication);
  *v3 = result;
  return result;
}

void *sub_1001733C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C140, &qword_1006DA6C8, &type metadata accessor for MobileDocumentElement);
  *v3 = result;
  return result;
}

void *sub_10017340C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174074(a1, a2, a3, *v3, &qword_100838818, &unk_1006D0F90, &qword_100838820, &unk_1006DB6B0);
  *v3 = result;
  return result;
}

void *sub_10017344C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C0A8, &unk_1006DFA60, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
  *v3 = result;
  return result;
}

void *sub_100173490(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001741CC(a1, a2, a3, *v3, &qword_10083C0B0, &qword_1006DA5D0, &qword_10083C0B8, &qword_1006DA5D8);
  *v3 = result;
  return result;
}

void *sub_1001734D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C0C0, &unk_1006DA5E0, &type metadata accessor for ISO18013ReaderRequest.ElementReference);
  *v3 = result;
  return result;
}

void *sub_100173514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174300(a1, a2, a3, *v3, &qword_10083C250, &qword_1006DA848, &qword_10083C258, &qword_1006DA850);
  *v3 = result;
  return result;
}

void *sub_100173554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001744E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100173574(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100173594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174758(a1, a2, a3, *v3, &qword_10083C0D8, &qword_1006DA600, &type metadata accessor for IdentityDocumentElement);
  *v3 = result;
  return result;
}

char *sub_1001735D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001735F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100173618(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100173638(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174C64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100173658(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100007224(&qword_10083C198, &qword_1006DA730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007224(&qword_10083C1A0, &qword_1006DA738);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001737B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001738BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C220, &unk_1006DA7F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001739E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C1F0, &qword_1006DA7A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100173AE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C188, &qword_1006DA720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100173BEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C1E0, &qword_1006DA790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100173D14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100173E20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C050, &qword_1006DA548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100173F2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C098, &unk_1006DA5A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100174074(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100007224(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007224(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001741CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100007224(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007224(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100174300(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007224(a5, a6);
  v16 = *(sub_100007224(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100007224(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1001744E8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100007224(&qword_10083C260, &qword_1006DA858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100007224(&qword_10083C268, &unk_1006DA860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100174630(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C110, &qword_1006DA690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100174758(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007224(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100174934(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1004CFB84();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100174A34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C1D8, &unk_1006DA780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100174B44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C0F8, &unk_1006DA650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100174C64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083C0F0, &unk_1006DA630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100174DAC(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for DigitalPresentmentUIPresenter();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator] = 0;
  sub_100007224(&qword_10083C038, &unk_1006DA520);
  swift_allocObject();
  v16 = AsyncPromise.init()();
  *&v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_uiResultPromise] = v16;
  v17 = &v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_externalizedContext];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_archivedSessionToken];
  *v18 = a6;
  *(v18 + 1) = a7;
  sub_100020260(a1, v28);
  v19 = type metadata accessor for DaemonAnalytics();
  v20 = objc_allocWithZone(type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate(0));
  sub_10000B8B8(a2, a3);
  sub_10000B8B8(a2, a3);

  sub_1000363B4(a6, a7);

  v21 = sub_100122F7C(v28, a2, a3, v16, v19, &off_100817930, a5);

  sub_10000B90C(a2, a3);
  *&v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_privateDelegate] = v21;
  sub_100020260(a4, &v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider]);
  *&v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_eligibleProposalData] = a5;
  *&v15[OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_signpostManager] = a8;
  v27.receiver = v15;
  v27.super_class = v14;
  v22 = objc_msgSendSuper2(&v27, "init");
  sub_10000BB78(a4);
  sub_10000BB78(a1);
  return v22;
}

uint64_t sub_100174F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100174FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100175058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001750BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100175124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017518C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001751EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1001752AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentUIResult(uint64_t a1)
{
  result = qword_10083C2C8;
  if (!qword_10083C2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017539C(uint64_t a1)
{
  result = type metadata accessor for DigitalPresentmentResponse();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DigitalPresentmentEligibleProposalData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100175420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getErrorValue();

  return dispatch thunk of Error._code.getter();
}

unint64_t sub_100175490(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003BBE4(a1, a2, v4);
}

unint64_t sub_100175508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10017643C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100175490(v13, v14);
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

uint64_t sub_100175618(uint64_t a1)
{
  v1 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v11 = 0x6E776F6E6B6E55;
    sub_1000451E8(v3);
    type metadata accessor for DIIdentityError(0);
    v33 = 0;
    sub_100175508(_swiftEmptyArrayStorage);
    sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v34;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v8, v10, v4);
    v14 = (*(v5 + 88))(v8, v4);
    if (v14 == enum case for DIPError.Code.missingEntitlement(_:))
    {
      type metadata accessor for DIIdentityFatalError(0);
      v33 = 0;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x80000001007027B0;
      v15 = *(v5 + 8);
      v12 = v34;
      v15(v10, v4);
      v11 = 0xD000000000000048;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.networkTimeOut(_:) || v14 == enum case for DIPError.Code.serverUnavailable(_:))
    {
      v11 = 0xD000000000000013;
      type metadata accessor for DIIdentityError(0);
      v33 = 3;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x8000000100702A10;
      v17 = *(v5 + 8);
      v12 = v34;
      v17(v10, v4);
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentNoCredentialAvailable(_:))
    {
      goto LABEL_13;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentRequestAlreadyInProgress(_:))
    {
      type metadata accessor for DIIdentityError(0);
      v33 = 5;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x80000001007029D0;
      v19 = *(v5 + 8);
      v12 = v34;
      v19(v10, v4);
      v11 = 0xD00000000000001BLL;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentNoElementsRequested(_:))
    {
      type metadata accessor for DIIdentityError(0);
      v33 = 4;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x80000001007029F0;
      v20 = *(v5 + 8);
      v12 = v34;
      v20(v10, v4);
      v11 = 0xD000000000000015;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:) || v14 == enum case for DIPError.Code.digitalPresentmentAppCancelled(_:))
    {
      goto LABEL_13;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentInvalidNonce(_:))
    {
      v11 = 0x2064696C61766E49;
      type metadata accessor for DIIdentityError(0);
      v33 = 6;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v24 = *(v5 + 8);
      v12 = v34;
      v24(v10, v4);
      v13 = 0xED000065636E6F6ELL;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentInvalidElement(_:))
    {
      v11 = 0x2064696C61766E49;
      type metadata accessor for DIIdentityError(0);
      v33 = 7;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v25 = *(v5 + 8);
      v12 = v34;
      v25(v10, v4);
      v13 = 0xEF746E656D656C65;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantID(_:))
    {
      type metadata accessor for DIIdentityFatalError(0);
      v33 = 1;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x8000000100702960;
      v26 = *(v5 + 8);
      v12 = v34;
      v26(v10, v4);
      v11 = 0xD00000000000006FLL;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentNotLoggedInWithPasscode(_:))
    {
      goto LABEL_13;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentNotAvailableOnIPad(_:))
    {
      type metadata accessor for DIIdentityError(0);
      v33 = 1;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v27 = *(v5 + 8);
      v12 = v34;
      v27(v10, v4);
      v13 = 0xED0000646574726FLL;
      v11 = 0x7070757320746F4ELL;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentBiometricsPermissionDenied(_:))
    {
LABEL_13:
      type metadata accessor for DIIdentityError(0);
      v33 = 2;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v18 = *(v5 + 8);
      v12 = v34;
      v18(v10, v4);
      v13 = 0xE900000000000064;
      v11 = 0x656C6C65636E6143;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:))
    {
      type metadata accessor for DIIdentityFatalError(0);
      v33 = 2;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x8000000100702860;
      v28 = *(v5 + 8);
      v12 = v34;
      v28(v10, v4);
      v11 = 0xD0000000000000F2;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentInvalidFirstPartyValue(_:))
    {
      type metadata accessor for DIIdentityFatalError(0);
      v33 = 3;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x8000000100702800;
      v29 = *(v5 + 8);
      v12 = v34;
      v29(v10, v4);
      v11 = 0xD000000000000053;
      goto LABEL_18;
    }

    if (v14 == enum case for DIPError.Code.digitalPresentmentRegionNotSupported(_:))
    {
      type metadata accessor for DIIdentityError(0);
      v33 = 8;
      sub_100175508(_swiftEmptyArrayStorage);
      sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = 0x8000000100702780;
      v30 = *(v5 + 8);
      v12 = v34;
      v30(v10, v4);
      v11 = 0xD000000000000026;
      goto LABEL_18;
    }

    v11 = 0x6E776F6E6B6E55;
    type metadata accessor for DIIdentityError(0);
    v33 = 0;
    sub_100175508(_swiftEmptyArrayStorage);
    sub_1001763F4(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = *(v5 + 8);
    v12 = v34;
    v31(v10, v4);
    v31(v8, v4);
  }

  v13 = 0xE700000000000000;
LABEL_18:
  sub_10017639C();
  swift_getErrorValue();
  v21 = dispatch thunk of Error._domain.getter();
  __chkstk_darwin(v21);
  *(&v32 - 4) = v12;
  *(&v32 - 3) = v11;
  *(&v32 - 2) = v13;
  v22 = static NSError.mapFromError(_:domain:mapper:)();

  return v22;
}

unint64_t sub_10017639C()
{
  result = qword_1008453F0;
  if (!qword_1008453F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008453F0);
  }

  return result;
}

uint64_t sub_1001763F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017643C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834450, &unk_1006BFED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1001764AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v24[3] = *v1;
  v5 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  __chkstk_darwin(v12 - 8);
  v24[4] = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[2];
  v15 = *(v14 + 16);
  if (v15)
  {
    v24[1] = a1;
    v24[2] = v1;
    v31 = _swiftEmptyArrayStorage;
    v25 = v15;
    result = sub_100172F5C(0, v15, 0);
    v17 = 0;
    v18 = v31;
    v19 = *(v6 + 80);
    v26 = v9;
    v27 = v14 + ((v19 + 32) & ~v19);
    v24[5] = v9 + 32;
    while (v17 < *(v14 + 16))
    {
      sub_1001774B0(v27 + *(v6 + 72) * v17, v8);
      sub_1001767EC(v8, &v30, v11);
      if (v3)
      {
        sub_100177514(v8);
      }

      v29 = 0;
      v20 = v11;
      sub_100177514(v8);
      v31 = v18;
      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        sub_100172F5C((v21 > 1), v22 + 1, 1);
        v18 = v31;
      }

      ++v17;
      v18[2] = v22 + 1;
      v23 = v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22;
      v11 = v20;
      result = (*(v26 + 32))(v23, v20, v28);
      v3 = v29;
      if (v25 == v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_100176F44();
    if (v3)
    {
    }

    else
    {
      return IdentityDocumentPresentmentConfiguration.init(eligibleCredentials:relyingParty:)();
    }
  }

  return result;
}

uint64_t sub_1001767EC@<X0>(char **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v25 = a3;
  v4 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = __chkstk_darwin(v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v25 - v7);
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ISO18013KnownDocTypes();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  ISO18013KnownDocTypes.init(rawValue:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000BE18(v14, &qword_10083AE00, &qword_1006D9ED0);
    (*(v10 + 104))(v30, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v19 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    result = swift_willThrow();
LABEL_5:
    *v31 = v19;
    return result;
  }

  (*(v16 + 32))(v18, v14, v15);
  v21 = v29;
  sub_100176C9C(v8);
  v19 = v21;
  if (v21)
  {
    result = (*(v16 + 8))(v18, v15);
    goto LABEL_5;
  }

  v30 = *a1;
  v23 = v26;
  v22 = v27;
  v24 = *(v26 + 16);
  v31 = v8;
  v24(v28);
  if (*(a1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) + 20)))
  {

    v22 = v27;
  }

  else
  {

    ISO18013KnownDocTypes.localizedTestDocumentTitle.getter();
  }

  IdentityDocumentPresentmentConfiguration.Credential.init(credentialIdentifier:elementCategoryGroups:localizedPassName:passIdentifier:)();
  (*(v23 + 8))(v31, v22);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_100176C9C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083C3C0, &unk_1006DAA10);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  ISO18013KnownDocTypes.rawValue.getter();

  IdentityDocumentElementCategoryGroups.init(documentType:documentElements:)();
  v10 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v9, v10);
  }

  sub_10000BE18(v9, &qword_10083C3C0, &unk_1006DAA10);
  (*(v4 + 104))(v6, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100176F44()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  if (((*(v0 + 89) | ((*(v0 + 93) | (*(v0 + 95) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    return static IdentityDocumentPresentmentConfiguration.RelyingParty.web(brandIdentifier:displayOrigin:)();
  }

  if (*(v0 + 88))
  {
    return static IdentityDocumentPresentmentConfiguration.RelyingParty.firstPartyService(nameOverride:usageDescription:)();
  }

  v19 = v3;
  v22 = v0;
  type metadata accessor for DigitalPresentmentCallingAppDataProvider();
  inited = swift_initStackObject();
  inited[2] = v7;
  inited[3] = v6;
  inited[4] = v9;
  inited[5] = v8;
  GSMainScreenScaleFactor();
  sub_100128240(&v20);
  if (*(&v20 + 1))
  {
    v18[2] = v20;
    v19 = *&v21[0];
    v12 = v22;
    v13 = v22[15];
    v14 = v22[16];
    v15 = v22[17];
    v16 = v22[18];
    v18[1] = v22[19];
    v17 = v21[0];
    *(v22 + 15) = v20;
    *(v12 + 17) = v17;
    *(v12 + 145) = *(v21 + 9);

    sub_1000B00AC(v13, v14, v15, v16);
    static IdentityDocumentPresentmentConfiguration.RelyingParty.application(applicationIdentifier:localizedName:usageDescription:)();
  }

  else
  {
    (*(v2 + 104))(v5, enum case for DIPError.Code.digitalPresentmentRelyingPartyNil(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1001771F8()
{

  sub_100177570(v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14]);
  sub_1000B00AC(v0[15], v0[16], v0[17], v0[18]);

  return swift_deallocClassInstance();
}

uint64_t sub_100177298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1001772E8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10017737C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(v3 + 128);
  v6 = *(v3 + 136);
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  v9 = *(v3 + 160);
  sub_1000AB7D8(v4, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

__n128 sub_1001773F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 145) = 0u;
  v15 = *(a6 + 16);
  *(v14 + 56) = *a6;
  *(v14 + 72) = v15;
  result = *(a6 + 32);
  v17 = *(a6 + 48);
  *(v14 + 88) = result;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 104) = v17;
  *a7 = v14;
  return result;
}

uint64_t sub_1001774B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177514(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100177570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
  }
}

unint64_t sub_1001775D0()
{
  v1 = type metadata accessor for DIPError.Code();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BundleRecord();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  __chkstk_darwin(v7);
  v25 = &v23 - v10;
  v12 = v0[4];
  v11 = v0[5];
  if ((v12 != 0xD000000000000023 || 0x80000001006F9E20 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v12 != 0xD000000000000023 || 0x8000000100702BF0 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000BA08(v0 + 6, v0[9]);
    v22 = v29;
    dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
    if (v22)
    {
      goto LABEL_9;
    }

    v9 = v6;
LABEL_11:
    v16 = v23;
    v15 = v24;
    v17 = v25;
    (*(v23 + 32))(v25, v9, v24);
    v18 = BundleRecord.localizedIdentityUsageDescription.getter();
    if (v19)
    {
      v14 = v18;
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        (*(v16 + 8))(v17, v15);
        return v14;
      }

      (*(v26 + 104))(v28, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v27);
      v14 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      (*(v26 + 104))(v28, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v27);
      v14 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v16 + 8))(v25, v15);
    return v14;
  }

  sub_10000BA08(v0 + 6, v0[9]);
  v13 = v29;
  dispatch thunk of BundleRecordFetching.record(withApplicationIdentifier:)();
  if (!v13)
  {

    goto LABEL_11;
  }

LABEL_9:
  (*(v26 + 104))(v28, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v27);
  swift_errorRetain();
  v14 = sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v14;
}

__n128 sub_100177B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100177BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100177BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100177C4C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityBiometricStoreHelper();
  v4 = swift_allocObject();
  sub_10017ABC8();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.userInitiated(_:), v0);
  v5 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  *(v4 + 24) = v5;
  result = [objc_allocWithZone(DCBiometricStore) init];
  *(v4 + 16) = result;
  qword_100882220 = v4;
  return result;
}

uint64_t sub_100177DA8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100177EC8;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E8, &unk_1006DAB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10017AD7C;
  v0[13] = &unk_10080A190;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100177EC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10017808C;
  }

  else
  {
    v2 = sub_100177FD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100177FD8()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aclData];

    v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xF000000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v1, v4);
}

uint64_t sub_10017808C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001780FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001781C0, 0, 0);
}

uint64_t sub_1001781C0()
{
  v1 = v0[20];
  if (v1 > 2)
  {
    (*(v0[23] + 104))(v0[24], enum case for DIPError.Code.internalError(_:), v0[22]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v2 = *(v0[21] + 16);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[25] = isa;
    v0[2] = v0;
    v0[3] = sub_10017841C;
    v4 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100429100;
    v0[13] = &unk_10080A168;
    v0[14] = v4;
    [v2 setGlobalAuthACL:isa ofType:v1 + 1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10017841C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100178598;
  }

  else
  {
    v2 = sub_10017852C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017852C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100178598(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100178610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_100178638, 0, 0);
}

uint64_t sub_100178638()
{
  v1 = *(v0[23] + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100178798;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E0, &unk_1006DAB20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100178990;
  v0[13] = &unk_10080A140;
  v0[14] = v4;
  [v1 setModifiedGlobalAuthACL:isa externalizedLAContext:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100178798()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100178918;
  }

  else
  {
    v2 = sub_1001788A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001788A8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100178918(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100178990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for UUID();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100178A70()
{
  v1[10] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100178BB0, 0, 0);
}

uint64_t sub_100178BB0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching template UUIDs for binding details", v4, 2u);
  }

  v5 = v1[19];
  v6 = v1[14];
  v7 = v1[15];

  v8 = *(v7 + 8);
  v1[20] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[21] = v9;
  *v9 = v1;
  v9[1] = sub_100178CE4;

  return sub_100179764();
}

uint64_t sub_100178CE4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[22] = a1;
  v5[23] = v2;

  if (v2)
  {
    v6 = sub_1001791B4;
  }

  else
  {
    v5[24] = a2;
    v6 = sub_100178E0C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100178E0C()
{
  v1 = v0[22];
  if (v0[24] <= 0)
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v0[25] = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching Identity credentials for binding details", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[14];

  v5(v6, v7);
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_100178F9C;

  return sub_10017AE08();
}

uint64_t sub_100178F9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {

    v5 = sub_10017948C;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_1001790CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001790CC()
{
  sub_10017AC2C(*(v0 + 224));

  v1 = objc_allocWithZone(type metadata accessor for IdentityBindingDetails());
  v2 = IdentityBindingDetails.init(templateUUIDs:passDescriptions:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001791B4(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v1[20];
    v4 = v1[17];
    v5 = v1[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieving bound template UUIDs for binding details, %s", v6, 0xCu);
    sub_10000BB78(v7);

    v16(v4, v5);
  }

  else
  {
    v11 = v1[20];
    v12 = v1[17];
    v13 = v1[14];

    v11(v12, v13);
  }

  (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.internalError(_:), v1[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_10017948C(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v1[20];
    v4 = v1[16];
    v5 = v1[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieving identity credentials for binding details, %s", v6, 0xCu);
    sub_10000BB78(v7);

    v16(v4, v5);
  }

  else
  {
    v11 = v1[20];
    v12 = v1[16];
    v13 = v1[14];

    v11(v12, v13);
  }

  (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.internalError(_:), v1[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_100179784()
{
  v1 = *(v0[21] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001798A4;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4D8, &qword_1006DAB18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100179A40;
  v0[13] = &unk_10080A118;
  v0[14] = v2;
  [v1 globalAuthACLTemplateUUIDsAndCredentialCountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001798A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1001799D4;
  }

  else
  {
    v2 = sub_1001799B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001799D4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100179A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a5)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    type metadata accessor for UUID();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100179B38()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100179C54, 0, 0);
}

uint64_t sub_100179C54(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCASDCertificate called", v4, 2u);
  }

  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];
  v8 = v1[20];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 16);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_100179E18;
  v10 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004B1218;
  v1[13] = &unk_10080A0F0;
  v1[14] = v10;
  [v9 getCASDCertificate:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100179E18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100179FAC;
  }

  else
  {
    v2 = sub_100179F28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100179F28()
{
  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100179FAC(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  swift_willThrow();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_10017A124()
{
  v1[19] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10017A240, 0, 0);
}

uint64_t sub_10017A240(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchProgenitorKeyAttestation called", v4, 2u);
  }

  v6 = v1[24];
  v5 = v1[25];
  v7 = v1[23];
  v8 = v1[19];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 16);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10017A404;
  v10 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_10083C4D0, &unk_1006DAB00);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10017AD7C;
  v1[13] = &unk_10080A0C8;
  v1[14] = v10;
  [v9 getGlobalProgenitorKeyAttestation:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10017A404()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10017A5DC;
  }

  else
  {
    v2 = sub_10017A514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017A514()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) attestationData];

    v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xF000000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v1, v4);
}

uint64_t sub_10017A5DC(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  swift_willThrow();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_10017A75C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10017A82C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017A890()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10017A94C, 0, 0);
}

uint64_t sub_10017A94C()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017AAA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100103B8C;

  return sub_100179B38();
}

uint64_t sub_10017AB38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10017AD78;

  return sub_10017A124();
}

unint64_t sub_10017ABC8()
{
  result = qword_100845BD0;
  if (!qword_100845BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100845BD0);
  }

  return result;
}

uint64_t sub_10017AC2C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    sub_100511C48(v8, v7);
    v10 = v9;

    ++v1;
    v5 += 2;
    if (v10)
    {
      v12 = *(v10 + 40);
      v11 = *(v10 + 48);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003C5110(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_1003C5110((v13 > 1), v14 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_10017AD80()
{
  type metadata accessor for IdentityCredentialStoreHelper();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithPartitions:isa];

  *(v0 + 16) = v3;
  qword_100882228 = v0;
}

uint64_t sub_10017AE28()
{
  v1 = *(v0[19] + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10017AF70;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100506480;
  v0[13] = &unk_10080A1B8;
  v0[14] = v3;
  [v1 credentialIdentifiersInPartitions:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10017AF70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10017B138;
  }

  else
  {
    v2 = sub_10017B080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017B080()
{
  v1 = *(v0 + 144);
  if (*(v1 + 16) && (v2 = sub_10003ADCC(0x797469746E656469, 0xE800000000000000), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10017B138(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10017B1E4()
{
  v1[31] = v0;
  v2 = type metadata accessor for Logger();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[38] = v4;
  v1[39] = *(v4 - 8);
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_10017B35C, 0, 0);
}

uint64_t sub_10017B35C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceBiomeDataExpiration.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_10017B5AC;

    return sub_10017EA14();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[31];
    v0[43] = v0[9];

    sub_100031918((v0 + 2));
    v8 = swift_allocObject();
    v0[44] = v8;
    *(v8 + 16) = sub_10017F7D8;
    *(v8 + 24) = v7;
    swift_retain_n();
    v9 = swift_task_alloc();
    v0[45] = v9;
    *v9 = v0;
    v9[1] = sub_10017B8E0;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 47, sub_10017F7F4, v8, &type metadata for Bool);
  }
}

uint64_t sub_10017B5AC()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return _swift_task_switch(sub_10017B710, 0, 0);
  }
}

void sub_10017B710()
{
  v1._countAndFlagsBits = 0x6166316233343530;
  v2._object = 0x80000001007032B0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000003ALL;
  logMilestone(tag:description:)(v1, v2);
  v3 = v0[42];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_100031B5C(&v4[4], (v0 + 2));
  os_unfair_lock_unlock(v4 + 54);
  if (!v3)
  {
    v5 = v0[31];
    v0[43] = v0[9];

    sub_100031918((v0 + 2));
    v6 = swift_allocObject();
    v0[44] = v6;
    *(v6 + 16) = sub_10017F7D8;
    *(v6 + 24) = v5;
    swift_retain_n();
    v7 = swift_task_alloc();
    v0[45] = v7;
    *v7 = v0;
    v7[1] = sub_10017B8E0;

    AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 47, sub_10017F7F4, v6, &type metadata for Bool);
  }
}

uint64_t sub_10017B8E0()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017BA78, 0, 0);
  }

  else
  {

    v3 = *(v2 + 376);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_10017BA78()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v12 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[39];

  (*(v4 + 104))(v2, enum case for DIPError.Code.biomeDataSharingUnableToCheckUserConsent(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v15 + 16);
  v6(v7, v1, v3);
  _StringGuts.grow(_:)(43);

  swift_getErrorValue();
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v13 + 8))(v12, v14);

  swift_allocError();
  v6(v9, v1, v3);
  swift_willThrow();

  (*(v15 + 8))(v1, v3);

  v10 = v0[1];

  return v10(0);
}

void sub_10017BD6C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = a2;
  v49 = a3;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for Date();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = v52;
  v21 = sub_100578014();
  if (v20)
  {
    return;
  }

  v44 = a1;
  v45 = v14;
  v47 = v9;
  v48 = v10;
  v22 = v50;
  v52 = 0;
  if (!v21)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "User consent doesn't exist. hasUserConsent -> FALSE", v34, 2u);
    }

    (*(v11 + 8))(v19, v48);
    goto LABEL_12;
  }

  v46 = v21;
  v23 = [v21 optInDate];
  if (!v23)
  {
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "User consent date doesn't exist. hasUserConsent -> FALSE", v37, 2u);
    }

    (*(v11 + 8))(v17, v48);
LABEL_12:
    *v49 = 0;
    return;
  }

  v24 = v47;
  v25 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v22;
  v27 = *(v22 + 16);
  v28 = v7;
  v29 = v26;
  v27(v6, v24, v28);
  (*(v29 + 56))(v6, 0, 1, v28);

  v30 = v52;
  v31 = sub_10017F818(v6);
  v52 = v30;
  if (v30)
  {

    sub_100103444(v6);
    (*(v29 + 8))(v24, v28);
  }

  else
  {
    v38 = v31;
    sub_100103444(v6);

    if (v38)
    {

      v39 = v52;
      sub_1002FEF78();
      if (v39)
      {
        (*(v29 + 8))(v47, v28);
      }

      else
      {

        sub_1005783D4();
        (*(v29 + 8))(v47, v28);

        *v49 = 0;
      }
    }

    else
    {
      v40 = v45;
      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "User Consent exists. hasUserConsent -> TRUE", v43, 2u);
      }

      (*(v11 + 8))(v40, v48);
      (*(v29 + 8))(v47, v28);
      *v49 = 1;
    }
  }
}

uint64_t sub_10017C2F0()
{
  v1[32] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10017C418, 0, 0);
}

uint64_t sub_10017C418()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceBiomeDataExpiration.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[40] = v4;
    *v4 = v0;
    v4[1] = sub_10017C668;

    return sub_10017EA14();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[32];
    v0[42] = v0[9];

    sub_100031918((v0 + 2));
    v8 = swift_allocObject();
    v0[43] = v8;
    *(v8 + 16) = sub_10017F72C;
    *(v8 + 24) = v7;
    swift_retain_n();
    v9 = swift_task_alloc();
    v0[44] = v9;
    *v9 = v0;
    v9[1] = sub_10017C9FC;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 30, sub_10017F748, v8, &type metadata for IdentityProofingDataSharingUserConsent);
  }
}

uint64_t sub_10017C668()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10017C7C4, 0, 0);
  }
}

void sub_10017C7C4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "user consent date has been set to 91 days back from today.", v4, 2u);
  }

  v5 = v1[39];
  v6 = v1[36];
  v7 = v1[37];

  (*(v7 + 8))(v5, v6);
  v8 = v1[41];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 54);
  if (!v8)
  {
    v10 = v1[32];
    v1[42] = v1[9];

    sub_100031918((v1 + 2));
    v11 = swift_allocObject();
    v1[43] = v11;
    *(v11 + 16) = sub_10017F72C;
    *(v11 + 24) = v10;
    swift_retain_n();
    v12 = swift_task_alloc();
    v1[44] = v12;
    *v12 = v1;
    v12[1] = sub_10017C9FC;

    AsyncCoreDataContainer.performWrite<A>(_:)(v1 + 30, sub_10017F748, v11, &type metadata for IdentityProofingDataSharingUserConsent);
  }
}

uint64_t sub_10017C9FC()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017CB90, 0, 0);
  }

  else
  {

    v3 = v2[30];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10017CB90()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = v0[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error while fetching user consent %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[37];
    v11 = v0[38];
    v13 = v0[36];

    (*(v12 + 8))(v11, v13);
  }

  (*(v0[34] + 104))(v0[35], enum case for DIPError.Code.biomeDataSharingIdentityPassDoesntExist(_:), v0[33]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

void sub_10017CEA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v112 = a2;
  v114 = a3;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v107 = &v98 - v5;
  v6 = type metadata accessor for DIPError.Code();
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin(v6);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Date();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v116 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v98 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v98 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v98 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v98 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v98 - v26;
  __chkstk_darwin(v25);
  v29 = &v98 - v28;
  v30 = v118;
  v31 = sub_100578014();
  if (v30)
  {
    return;
  }

  v104 = v27;
  v105 = v24;
  v102 = v12;
  v103 = v21;
  v100 = a1;
  v101 = v18;
  v99 = v15;
  v106 = v9;
  v33 = v114;
  v32 = v115;
  v118 = 0;
  if (!v31)
  {
    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "User consent doesn't exist", v56, 2u);
    }

    (*(v116 + 8))(v29, v106);
    goto LABEL_12;
  }

  v34 = v31;
  v35 = [v31 optInDate];
  if (!v35)
  {
    v57 = v104;
    defaultLogger()();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v110;
    if (v60)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "User consent date doesn't exist. Exiting with an error as the Date should always exist if consent exists.", v62, 2u);
    }

    (*(v116 + 8))(v57, v106);
    (*(v108 + 104))(v61, enum case for DIPError.Code.biomeDataSharingUserConsentDateDoesntExist(_:), v109);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v104 = v34;
  v36 = v113;
  v37 = v35;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v105;
  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Checking if the 90 retention period has elapsed...", v41, 2u);
  }

  v42 = v116 + 8;
  v43 = *(v116 + 8);
  v43(v38, v106);
  v44 = v104;
  v45 = [v104 credentialIdentifier];
  if (!v45)
  {
    (*(v108 + 104))(v110, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v109);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v111 + 8))(v36, v32);
    return;
  }

  v98 = v43;
  v116 = v42;
  v46 = v45;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v111;
  v51 = v107;
  (*(v111 + 16))(v107, v36, v32);
  (*(v50 + 56))(v51, 0, 1, v32);

  v52 = v118;
  v53 = sub_10017F818(v51);
  v118 = v52;
  if (v52)
  {

    sub_100103444(v51);
    (*(v50 + 8))(v36, v32);
    return;
  }

  v63 = v53;
  v105 = v47;
  sub_100103444(v51);

  if (v63)
  {

    v64 = v118;
    sub_1002FEF78();
    if (v64)
    {
      (*(v50 + 8))(v113, v32);
LABEL_21:

      return;
    }

    sub_1005783D4();
    v84 = v104;
    (*(v50 + 8))(v113, v32);

    *v33 = 1;
    return;
  }

  v65 = v103;
  defaultLogger()();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v68 = v49;
  if (os_log_type_enabled(v66, v67))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "Retention timeline looks good. Checking if the user has withdrawn the consent", v69, 2u);
    v65 = v103;
  }

  v70 = v65;
  v71 = v106;
  v72 = v98;
  v98(v70, v106);
  v73 = v104;
  if (![v104 optInStatus])
  {

    v79 = v102;
    defaultLogger()();
    v80 = v73;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 67109120;
      *(v83 + 4) = [v80 optInStatus];

      _os_log_impl(&_mh_execute_header, v81, v82, "Consent has been withdrawn. Current status is %{BOOL}d", v83, 8u);
      v71 = v106;
    }

    else
    {
    }

    v72(v79, v71);
    (*(v50 + 8))(v113, v115);
LABEL_12:
    *v33 = 1;
    return;
  }

  v74 = v105;
  v75 = sub_100315D5C(v105, v49);
  if ((v75 & 0x100) == 0)
  {

    defaultLogger()();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "No Identity Pass exists.", v78, 2u);
      v71 = v106;
    }

    v72(v101, v71);
    (*(v50 + 8))(v36, v115);
LABEL_41:
    *v33 = 0;
    return;
  }

  if (v75)
  {
    v85 = v99;
    defaultLogger()();

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = v74;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v117[0] = v90;
      *v89 = 136315138;
      v91 = sub_100141FE4(v88, v68, v117);
      v92 = v85;
      v93 = v91;

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v86, v87, "Matching pass exists for %s. Returning the consent as share", v89, 0xCu);
      sub_10000BB78(v90);

      v98(v92, v106);
    }

    else
    {

      v72(v85, v71);
    }

    (*(v50 + 8))(v113, v115);
    goto LABEL_41;
  }

  v94 = v118;
  sub_1002FEF78();
  v95 = v115;
  if (v94)
  {
    (*(v50 + 8))(v36, v115);

    goto LABEL_21;
  }

  v117[0] = 0;
  v117[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v96._countAndFlagsBits = 0xD000000000000039;
  v96._object = 0x80000001007031C0;
  String.append(_:)(v96);
  v97._countAndFlagsBits = v105;
  v97._object = v49;
  String.append(_:)(v97);

  v118 = v117[0];
  (*(v108 + 104))(v110, enum case for DIPError.Code.biomeDataSharingIdentityPassDoesntExist(_:), v109);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v50 + 8))(v36, v95);
}

void sub_10017DD54(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100578014();
  if (!v2)
  {
    v12 = v11;
    v23 = v6;
    v24 = v3;
    v25 = v4;
    if (v11)
    {
      v13 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      v14 = v13 == IdentityProofingDataSharingUserConsent.rawValue.getter();
      sub_10057ED84(v14);
      sub_1005783D4();
      v15 = v23;
      defaultLogger()();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136315138;
        v20 = IdentityProofingDataSharingUserConsent.debugDescription.getter();
        v22 = sub_100141FE4(v20, v21, &v27);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Successfully updated the user's consent to %s", v18, 0xCu);
        sub_10000BB78(v19);
      }

      (*(v25 + 8))(v15, v24);
    }

    else
    {
      (*(v8 + 104))(v10, enum case for DIPError.Code.missingProofingMetadata(_:), v7);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_10017E0FC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v65 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Calendar.Component();
  v73 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Calendar();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v6 - 8);
  v67 = v55 - v7;
  v8 = type metadata accessor for Date();
  v66 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v55 - v13;
  __chkstk_darwin(v12);
  v16 = v55 - v15;
  v17 = type metadata accessor for DIPError.Code();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1;
  v22 = v74;
  v23 = sub_100578014();
  if (!v22)
  {
    v60 = v14;
    v61 = v18;
    v62 = v17;
    v24 = v71;
    v25 = v72;
    v26 = v73;
    v56 = v11;
    v57 = v16;
    v74 = v20;
    v58 = v21;
    if (v23)
    {
      v55[1] = 0;
      v59 = v23;
      static Calendar.current.getter();
      v27 = v26;
      v28 = v69;
      (*(v26 + 104))(v25, enum case for Calendar.Component.day(_:), v69);
      v29 = v60;
      Date.init()();
      v30 = v67;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v31 = v66;
      v32 = *(v66 + 8);
      v33 = v29;
      v34 = v8;
      v35 = v8;
      v36 = v66 + 8;
      v32(v33, v35);
      (*(v27 + 8))(v25, v28);
      (*(v68 + 8))(v24, v70);
      v37 = (*(v31 + 48))(v30, 1, v34);
      v38 = v74;
      if (v37 == 1)
      {
        sub_100103444(v30);
        (*(v61 + 104))(v38, enum case for DIPError.Code.biomeDataSharingUserConsentDateDoesntExist(_:), v62);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v74 = v32;
        v39 = *(v31 + 32);
        v40 = v31;
        v41 = v57;
        v39(v57, v30, v34);
        v42 = v65;
        defaultLogger()();
        v43 = v56;
        (*(v40 + 16))(v56, v41, v34);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v73 = v36;
          v47 = v46;
          v48 = swift_slowAlloc();
          v75 = v48;
          *v47 = 136315138;
          sub_10017F790(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v43;
          v52 = v51;
          v53 = v74;
          v74(v50, v34);
          v54 = sub_100141FE4(v49, v52, &v75);

          *(v47 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v44, v45, "Setting the consent date to %s", v47, 0xCu);
          sub_10000BB78(v48);

          (*(v63 + 8))(v65, v64);
        }

        else
        {

          v53 = v74;
          v74(v43, v34);
          (*(v63 + 8))(v42, v64);
        }

        sub_10057EF08(v41);
        sub_1005783D4();
        v53(v41, v34);
      }
    }

    else
    {
      (*(v61 + 104))(v74, enum case for DIPError.Code.proofingBiomeDataDoesntExist(_:), v62);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10017E98C()
{

  sub_10000BB78((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_10017EA14()
{
  v1 = type metadata accessor for Logger();
  v0[31] = v1;
  v0[32] = *(v1 - 8);
  v0[33] = swift_task_alloc();

  return _swift_task_switch(sub_10017EAD0, 0, 0);
}

uint64_t sub_10017EAD0()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v0[34] = v0[9];

  sub_100031918((v0 + 2));
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10017EC1C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v2, sub_10017E9F8, 0, &type metadata for () + 8);
}

uint64_t sub_10017EC1C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10017ED9C;
  }

  else
  {

    v2 = sub_10017ED38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017ED38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017ED9C()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v15 = v0[33];
    v4 = v0[31];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error while force setting user consent in internal settings %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10017EF7C(uint64_t a1)
{
  v1[27] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_10017F098, 0, 0);
}

uint64_t sub_10017F098(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[32];
  v5 = v1[33];
  v7 = v1[31];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = IdentityProofingDataSharingUserConsent.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "User has changed the consent to %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v13 + 54);
  sub_1000318FC(&v13[4], (v1 + 2));
  os_unfair_lock_unlock(v13 + 54);
  v14 = v1[27];
  v1[34] = v1[9];

  sub_100031918((v1 + 2));
  v15 = swift_allocObject();
  v1[35] = v15;
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  v1[36] = v16;
  *(v16 + 16) = sub_10017F6BC;
  *(v16 + 24) = v15;

  v17 = swift_task_alloc();
  v1[37] = v17;
  *v17 = v1;
  v17[1] = sub_10017F35C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v17, sub_10017F710, v16, &type metadata for () + 8);
}

uint64_t sub_10017F35C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_10017F4FC;
  }

  else
  {

    v2 = sub_10017F48C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F48C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017F4FC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10017F6D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10017F748@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_10017F790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_10017F818(uint64_t a1)
{
  v72 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v65 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v60 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v61 = &v58 - v20;
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  defaultLogger()();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v59 = v11;
    v26 = v10;
    v27 = v25;
    *v25 = 134217984;
    *(v25 + 4) = 90;

    _os_log_impl(&_mh_execute_header, v23, v24, "The retentionPeriodInDays is %ld", v27, 0xCu);
    v10 = v26;
    v11 = v59;
  }

  else
  {
  }

  v30 = *(v16 + 8);
  v29 = v16 + 8;
  v28 = v30;
  v30(v22, v15);
  sub_1001800D0(v72, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v63 = v28;
    v64 = v29;
    v65 = v15;
    (*(v11 + 32))(v73, v9, v10);
    v32 = v67;
    static Calendar.current.getter();
    sub_100007224(&qword_1008334A0, &qword_1006BF610);
    v33 = type metadata accessor for Calendar.Component();
    v72 = v10;
    v34 = v33;
    v35 = *(v33 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006BF520;
    (*(v35 + 104))(v37 + v36, enum case for Calendar.Component.day(_:), v34);
    sub_1003A92C4(v37);
    swift_setDeallocating();
    v38 = v34;
    v39 = v72;
    (*(v35 + 8))(v37 + v36, v38);
    swift_deallocClassInstance();
    v40 = v62;
    Date.init()();
    v41 = v66;
    Calendar.dateComponents(_:from:to:)();

    v42 = *(v11 + 8);
    v42(v40, v39);
    (*(v70 + 8))(v32, v71);
    v43 = DateComponents.day.getter();
    LOBYTE(v37) = v44;
    (*(v68 + 8))(v41, v69);
    if (v37)
    {
      v45 = 90;
    }

    else
    {
      v45 = v43;
    }

    v31 = v45 > 89;
    if (v45 < 90)
    {
      v46 = v60;
      defaultLogger()();
      v47 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v47, v55))
      {
LABEL_16:

        v63(v46, v65);
        v42(v73, v39);
        return v31;
      }

      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v45;
      v50 = "Retention period has not elapsed...The gap between dates is %ld";
      v51 = v55;
      v52 = v47;
      v53 = v56;
      v54 = 12;
    }

    else
    {
      v46 = v61;
      defaultLogger()();

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v47, v48))
      {

        goto LABEL_16;
      }

      v49 = swift_slowAlloc();
      *v49 = 134218240;
      *(v49 + 4) = 90;

      *(v49 + 12) = 2048;
      *(v49 + 14) = v45;
      v50 = "The %ld day retention period has elapsed. The gap between dates is -> %ld";
      v51 = v48;
      v52 = v47;
      v53 = v49;
      v54 = 22;
    }

    _os_log_impl(&_mh_execute_header, v52, v51, v50, v53, v54);
    v39 = v72;

    goto LABEL_16;
  }

  sub_100103444(v9);
  v31 = v65;
  (*(v63 + 13))(v65, enum case for DIPError.Code.identityProofingDataSharingConsentDateDoesntExist(_:), v64);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v31;
}

uint64_t sub_1001800D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10018027C, 0, 0);
}

uint64_t sub_10018027C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Check if there are any pending provisionings for identity type", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[6];

  v9 = *(v7 + 8);
  v1[17] = v9;
  v9(v5, v6);
  v10 = v8[6];
  v11 = v8[7];
  sub_10000BA08(v8 + 3, v10);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v1[18] = v13;
  v17 = (*(v11 + 32) + **(v11 + 32));
  v15 = swift_task_alloc();
  v1[19] = v15;
  *v15 = v1;
  v15[1] = sub_10018046C;

  return v17(v12, v14, v10, v11);
}

uint64_t sub_10018046C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10018058C, 0, 0);
}

uint64_t sub_10018058C(uint64_t a1)
{
  if (v1[20])
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Pending Provisionings exists for identity type.", v4, 2u);
    }

    v5 = v1[17];
    v6 = v1[15];
    v7 = v1[7];

    v5(v6, v7);
    v8 = swift_task_alloc();
    v1[21] = v8;
    *v8 = v1;
    v8[1] = sub_10018080C;
    v9 = v1[4];
    v10 = v1[5];
    v11 = v1[3];

    return sub_100181C28(v11, v9, v10);
  }

  else
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[17];
    v17 = v1[9];
    v18 = v1[7];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "There are no pending provisionings for identity type", v19, 2u);
    }

    v16(v17, v18);

    v20 = v1[1];

    return v20(0);
  }
}

uint64_t sub_10018080C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = sub_100181268;
  }

  else
  {
    v5 = sub_100180924;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100180924(uint64_t a1)
{
  v84 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[22];
    v4 = v1[23];
    v78 = v1[17];
    v6 = v1[14];
    v7 = v1[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v83[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(v5, v4, v83);
    _os_log_impl(&_mh_execute_header, v2, v3, "Filter the Pending Provisionings based on the credential identifier: %s of the identity credential type", v8, 0xCu);
    sub_10000BB78(v9);

    v78(v6, v7);
  }

  else
  {
    v10 = v1[17];
    v11 = v1[14];
    v12 = v1[7];

    v10(v11, v12);
  }

  v13 = v1[20];
  if (v13 >> 62)
  {
    goto LABEL_30;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    v16 = v1[24];
    v17 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v13 + 32);
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v1[20];
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v19 = v1[22];
  v20 = v1[23];
  v79 = v18;
  v83[0] = v18;
  v21 = sub_100181338(v83, v19, v20);
  if (v16)
  {
    goto LABEL_10;
  }

  if (v21)
  {
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v14 != 1)
    {
      goto LABEL_18;
    }

LABEL_31:

    v28 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
    if (v28)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = _swiftEmptyArrayStorage[2];
    }

    if (v29 <= 0)
    {

      defaultLogger()();

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v1[23];
      if (v53)
      {
        v55 = v1[22];
        v82 = v1[17];
        v56 = v1[10];
        v57 = v1[7];
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v83[0] = v59;
        *v58 = 136315138;
        v60 = sub_100141FE4(v55, v54, v83);

        *(v58 + 4) = v60;
        v61 = "PendingProvisioning doesn't exist for the credential identifier %s";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v51, v52, v61, v58, 0xCu);
        sub_10000BB78(v59);

        v82(v56, v57);
LABEL_57:
        v69 = 0;
LABEL_58:

        v73 = v1[1];

        v73(v69);
        return;
      }

      v70 = v1[17];
      v71 = v1[10];
LABEL_56:
      v72 = v1[7];

      v70(v71, v72);
      goto LABEL_57;
    }

    defaultLogger()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v1[22];
      v32 = v1[23];
      v76 = v1[13];
      v80 = v1[17];
      v74 = v1[7];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v83[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100141FE4(v33, v32, v83);
      _os_log_impl(&_mh_execute_header, v30, v31, "Pending provisionings exists for the credential Identifier %s", v34, 0xCu);
      sub_10000BB78(v35);

      v80(v76, v74);
      if (!v28)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v62 = v1[17];
      v63 = v1[13];
      v64 = v1[7];

      v62(v63, v64);
      if (!v28)
      {
LABEL_39:
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_40:

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!_swiftEmptyArrayStorage[2])
            {
              __break(1u);
              return;
            }

            v36 = _swiftEmptyArrayStorage[4];
          }

          v37 = v36;

          v38 = [v37 status];
          defaultLogger()();
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.debug.getter();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v1[17];
          v43 = v1[12];
          v44 = v1[7];
          if (v41)
          {
            v81 = v1[12];
            v45 = swift_slowAlloc();
            v77 = v44;
            v46 = swift_slowAlloc();
            v83[0] = v46;
            *v45 = 136315138;
            v1[2] = v38;
            type metadata accessor for PKPendingProvisioningStatus(0);
            v47 = String.init<A>(describing:)();
            v75 = v42;
            v49 = v38;
            v50 = sub_100141FE4(v47, v48, v83);

            *(v45 + 4) = v50;
            v38 = v49;
            _os_log_impl(&_mh_execute_header, v39, v40, "The provisioning status of the pending provisioning is %s", v45, 0xCu);
            sub_10000BB78(v46);

            v75(v81, v77);
          }

          else
          {

            v42(v43, v44);
          }

          v69 = (v38 - 1) < 4;
          goto LABEL_58;
        }

        goto LABEL_49;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_40;
    }

LABEL_49:

    defaultLogger()();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v65 = os_log_type_enabled(v51, v52);
    v66 = v1[23];
    if (v65)
    {
      v67 = v1[22];
      v82 = v1[17];
      v56 = v1[11];
      v57 = v1[7];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v83[0] = v59;
      *v58 = 136315138;
      v68 = sub_100141FE4(v67, v66, v83);

      *(v58 + 4) = v68;
      v61 = "unable to retrieve the first pending provisioning for credential identifier %s";
      goto LABEL_51;
    }

    v70 = v1[17];
    v71 = v1[11];
    goto LABEL_56;
  }

  if (v14 == 1)
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v13 + 40);
  v23 = 1;
  while (v17)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

LABEL_24:
    v26 = v1[22];
    v27 = v1[23];
    v79 = v24;
    v83[0] = v24;
    if (sub_100181338(v83, v26, v27))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v23;
    ++v22;
    if (v25 == v14)
    {
      goto LABEL_31;
    }
  }

  if (v23 >= *(v15 + 16))
  {
    goto LABEL_29;
  }

  v24 = *v22;
  v25 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_10:
}