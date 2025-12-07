void sub_10057A8EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002CFFF4();
      goto LABEL_7;
    }

    sub_100576AB0(v15, a4 & 1, &type metadata accessor for Date, &unk_1009763A0, &unk_1007F9590);
    v25 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_10057D278(v12, a2, a3, a1, v18, &type metadata accessor for Date);
}

void sub_10057AAF4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_100574A44(v16, a4 & 1);
      v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002D001C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_1005815DC(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 48 * v11);
  v25 = *a1;
  v26 = a1[2];
  v24[1] = a1[1];
  v24[2] = v26;
  *v24 = v25;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_10057ACD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      v20 = type metadata accessor for RegistrationState(0);
      sub_100581638(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RegistrationState);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1002D0350();
    goto LABEL_7;
  }

  sub_100572E2C(v15, a4 & 1, type metadata accessor for RegistrationState, &qword_100976310, &unk_10080AFF0, type metadata accessor for RegistrationState);
  v21 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
  sub_10057CDE8(v12, a2, a3, a1, v18, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState);
}

void sub_10057AEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_10057503C(v16, a4 & 1);
      v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002D05A8();
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

uint64_t sub_10057B0E4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570988(a2);
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
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1002D0D10();
    goto LABEL_7;
  }

  sub_100575B80(result, a3 & 1);
  result = sub_100570988(a2);
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
  return sub_10057D0BC(v14, v11, a1 & 1, v20);
}

void sub_10057B284(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_10057776C(v16, a4 & 1, &unk_100974720, &unk_10080B0A0);
      v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002D0F80();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
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

void sub_10057B4C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_100575F40(v22, a4 & 1, a6, a7);
      v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

void sub_10057B6B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002D1130();
      goto LABEL_7;
    }

    sub_1005761E0(v15, a4 & 1);
    v25 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
    v20 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_10057D174(v12, a2, a3, a1, v18);
}

void sub_10057B8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_100576818(v22, a4 & 1, a6, a7);
      v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;
    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v30;
}

void sub_10057BABC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002D1694();
      goto LABEL_7;
    }

    sub_100576AB0(v15, a4 & 1, &type metadata accessor for NWBrowser.Result, &qword_1009763D8, &unk_10080B080);
    v25 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
    v20 = type metadata accessor for NWBrowser.Result();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_10057D278(v12, a2, a3, a1, v18, &type metadata accessor for NWBrowser.Result);
}

void sub_10057BCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_100576E48(v22, a4 & 1, a6, a7);
      v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

uint64_t sub_10057BF04(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &Data.hash(into:), sub_100570EAC);
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
      sub_1005770E8(v16, a4 & 1);
      v11 = sub_100011780(a2, a3, &Data.hash(into:), sub_100570EAC);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1002D1ACC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  return sub_100294008(a2, a3);
}

uint64_t sub_10057C0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_10000EBD4(a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1002D1C3C();
      goto LABEL_9;
    }

    sub_100577394(v18, a4 & 1);
    v21 = sub_10000EBD4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_10057CD28(v15, v12, v23, a2, v24);
  }
}

void sub_10057C2B0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_10057776C(v16, a4 & 1, &qword_1009744A8, &unk_1007F64C0);
      v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002D1EBC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
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

unint64_t sub_10057C47C(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10057091C(a3);
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
      sub_100577A04(v16, a4 & 1);
      result = sub_10057091C(a3);
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
      sub_1002D2028();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
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

void sub_10057C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  ObjectType = swift_getObjectType();

  sub_10058131C(a1, a3, a4, v6, v5, ObjectType, a2);
}

void sub_10057C674(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
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
  v17 = sub_10000EBD4(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_7;
    }

    sub_100577F58(v20, a3 & 1, v30, v31);
    v26 = sub_10000EBD4(a2);
    if ((v21 & 1) == (v27 & 1))
    {
      v17 = v26;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a2, v11);
      sub_10057D32C(v17, v14, a1, v23, &type metadata accessor for UUID);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

void sub_10057C86C(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10057091C(a2);
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
      sub_100578334(v14, a3 & 1);
      v9 = sub_10057091C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1002D25B0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;

  swift_unknownObjectRelease();
}

void sub_10057C9B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000EBD4(a2);
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
      sub_1002D270C();
      goto LABEL_7;
    }

    sub_1005785C4(v17, a3 & 1);
    v21 = sub_10000EBD4(a2);
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
      sub_10057CC70(v14, v11, a1, v20);
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

  swift_unknownObjectRelease();
}

_OWORD *sub_10057CB84(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000106E0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10057CC00(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1002D6398(a4, (a5[7] + 48 * a1));
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

uint64_t sub_10057CC70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_10057CD28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_10057CDE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100581708(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_10057CE94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_10057CF94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_10057D0BC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_10057D174(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

unint64_t sub_10057D230(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_10057D278(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
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

uint64_t sub_10057D32C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void sub_10057D3E8(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_100026AC0(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1007FAD30;
      sub_100026AC0(0, 0xC000000000000000);
      sub_10057D780(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100026AC0(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  sub_100026AC0(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1007FAD30;
  sub_100026AC0(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

_BYTE *sub_10057D698@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1004E5318(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10057E97C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10057E9F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10057D72C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_10057D780(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

uint64_t (*sub_10057D85C(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v7[8] = sub_10057E2D4(v7);
  v7[9] = sub_10057DA18(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1005818A8;
}

uint64_t (*sub_10057D908(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v7[8] = sub_10057E2FC(v7);
  v7[9] = sub_10057DFF0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10057D9B4;
}

void sub_10057D9B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10057DA18(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for RegistrationState(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_10028088C(&unk_100976320, &qword_100810410) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_100581708(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for RegistrationState);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_10057DD7C;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_1002D0350();
      goto LABEL_16;
    }

    sub_100572E2C(v24, a4 & 1, type metadata accessor for RegistrationState, &qword_100976310, &unk_10080AFF0, type metadata accessor for RegistrationState);
    v28 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10057DD7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_10000FF90(v5, v6, &unk_100976320, &qword_100810410);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_100581708(v9, *(v2 + 6), type metadata accessor for RegistrationState);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_100581708(v13, v14, type metadata accessor for RegistrationState);
        sub_10057CDE8(v12, v16, v15, v14, v11, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_10000FF90(v5, v17, &unk_100976320, &qword_100810410);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_100581708(v9, *(v2 + 7), type metadata accessor for RegistrationState);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_100581708(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for RegistrationState);
      goto LABEL_10;
    }
  }

  sub_100005508(v9, &unk_100976320, &qword_100810410);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_10032B298(*(v20 + 48) + 16 * v19);
    sub_1002D4E60(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_100005508(v23, &unk_100976320, &qword_100810410);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_10057DFF0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
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
  v13 = sub_100011780(a2, a3, &Data.hash(into:), sub_100570EAC);
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
      sub_1002D1ACC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1005770E8(v18, a4 & 1);
    v13 = sub_100011780(a2, a3, &Data.hash(into:), sub_100570EAC);
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
  return sub_10057E198;
}

void sub_10057E198(uint64_t **a1, char a2)
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

    v7 = v6[6];
    v8 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v7 + 16 * v5) = v8;
    *(v6[7] + 8 * v5) = v3;
    v9 = v6[2];
    v10 = __OFADD__(v9, 1);
    v4 = v9 + 1;
    if (!v10)
    {
LABEL_13:
      v16 = v2[1];
      v17 = v2[2];
      v6[2] = v4;
      sub_100294008(v16, v17);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v11 = v2[4];
      v12 = *v2[3];
      sub_1005817CC(*(v12 + 48) + 16 * v11);
      sub_1002D58E4(v11, v12);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v13 = v6[6];
    v14 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v13 + 16 * v5) = v14;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v10 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v10)
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

uint64_t (*sub_10057E2D4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100581888;
}

uint64_t (*sub_10057E2FC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10057E324;
}

void *sub_10057E330@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(sub_10028088C(&qword_100983CB8, &unk_10080B050) + 48);

  result = sub_100292640(a4, a1, a2, v7);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_10057E3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 9)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_10057E44C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1000276B4(0, &qword_100983CB0, SFHUDBannerModel_ptr);
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

uint64_t sub_10057E55C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100406960(result, 1);

  return sub_10057E44C(v5, v3, 0);
}

uint64_t sub_10057E634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10057E764(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

unint64_t sub_10057E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Date();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
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
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10057E97C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10057E9F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10057EA7C(uint64_t a1)
{
  v9 = sub_10028088C(&qword_100983A98, &qword_10080AF30);
  v10 = sub_1005805AC();
  v8[0] = a1;
  v2 = sub_10002CDC0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10057D698(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000C60C(v8);
  return v5;
}

unint64_t sub_10057EB2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_10057EBEC(unint64_t a1)
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

      sub_10046ED30(&v6, v4);

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

uint64_t sub_10057ECC4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);

      sub_10046FBBC(&v7, v6, v5, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_10057ED80(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_10057EEB8(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_10057EEB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 40 * result;
  sub_10028088C(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10057EFEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_10057E634(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10057F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * a1);
  sub_10028088C(&unk_100974E50, &qword_1007FD600);
  swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      v15 = &v10[a3];
      v16 = (v9 + 32 + 8 * a2);
      if (v15 != v16 || v15 >= &v16[8 * v14])
      {
        memmove(v15, v16, 8 * v14);
      }

      v18 = *(v9 + 16);
      v11 = __OFADD__(v18, v12);
      v19 = v18 + v12;
      if (!v11)
      {
        *(v9 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

char *sub_10057F1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
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
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
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
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
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
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10057F2EC(uint64_t a1, uint64_t a2, void *a3)
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
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_100406960(result, 1);

  return sub_10057F1C0(v7, v6, 1, v4);
}

void sub_10057F3D8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void (*a9)(void))
{
  v32 = a7;
  v33 = a8;
  v34 = a5;
  v35 = a1;
  v31 = a9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  v19 = sub_10000EBD4(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v31();
      goto LABEL_9;
    }

    sub_100574174(v22, a3 & 1, v32, v33);
    v25 = sub_10000EBD4(a2);
    if ((v23 & 1) == (v26 & 1))
    {
      v19 = v25;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v27 = v35;
  v28 = *a4;
  if (v23)
  {
    v29 = (v28[7] + 16 * v19);
    *v29 = v35;
    v29[1] = a6;

    swift_unknownObjectRelease();
  }

  else
  {
    (*(v14 + 16))(v16, a2, v13);
    sub_10057F5D0(v19, v16, v27, v28, v34, a6);
  }
}

uint64_t sub_10057F5D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = type metadata accessor for UUID();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

BOOL _s16DaemoniOSLibrary21SDAirDropHashStoreCDBC7isEmptySbvg_0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v38 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = v38 - v9;
  __chkstk_darwin(v8);
  v12 = v38 - v11;
  v13 = sub_1001F149C();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v15 = *(v1 + 8);
  v15(v7, v0);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v15(v4, v0);
  v15(v12, v0);
  URL.path.getter();
  v15(v10, v0);
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v18 = String._bridgeToObjectiveC()();
  LODWORD(v14) = [v17 fileExistsAtPath:v18];

  if (!v14)
  {
    goto LABEL_12;
  }

  v19 = [v16 defaultManager];
  v20 = String._bridgeToObjectiveC()();

  v39[0] = 0;
  v21 = [v19 attributesOfItemAtPath:v20 error:v39];

  v22 = v39[0];
  if (!v21)
  {
    v33 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_14;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_10000D494(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v22;

  if (*(v23 + 16) && (v25 = sub_100570A5C(NSFileSize), (v26 & 1) != 0))
  {
    sub_10000C5B0(*(v23 + 56) + 32 * v25, v39);

    if (swift_dynamicCast())
    {
      v27 = v38[1];
      if (qword_100973A60 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_100983A80);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v29, v30, "HashDB size: %ld", v31, 0xCu);
      }

      return (v27 & 0xFFFFFFFFFFFFF7FFLL) == 0;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_14:
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100983A80);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unable to verify DB size", v37, 2u);
  }

  return 1;
}

uint64_t sub_10057FC30()
{
  v0 = type metadata accessor for URL();
  v1 = __chkstk_darwin(v0);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v40 = &v35 - v4;
  v5 = __chkstk_darwin(v3);
  v39 = &v35 - v6;
  v7 = __chkstk_darwin(v5);
  v38 = &v35 - v8;
  v9 = __chkstk_darwin(v7);
  v37 = &v35 - v10;
  __chkstk_darwin(v9);
  v12 = (v11 + 8);
  v13 = 3;
  v14 = &unk_1008D7C88;
  v36 = &v35 - v15;
  do
  {
    v43 = v13;
    v42 = *(v14 - 1);

    v18 = sub_1001F149C();
    if (!v18)
    {
      __break(1u);
    }

    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = v40;
    URL.init(fileURLWithPath:)();

    v21 = v38;
    URL.appendingPathComponent(_:)();
    v22 = *v12;
    (*v12)(v20, v0);
    v23 = v41;
    URL.appendingPathComponent(_:)();
    v24 = v12;
    v25 = v39;
    URL.appendingPathExtension(_:)();
    v22(v23, v0);
    v22(v25, v0);
    v26 = v37;
    URL.appendingPathComponent(_:)();
    v22(v21, v0);
    v27 = v36;
    URL.appendingPathExtension(_:)();

    v28 = v26;
    v12 = v24;
    v22(v28, v0);
    v29 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v44 = 0;
    LODWORD(v21) = [v29 removeItemAtURL:v31 error:&v44];

    if (v21)
    {
      v16 = v44;
    }

    else
    {
      v33 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v17 = v43;
    v22(v27, v0);
    v14 += 2;
    v13 = v17 - 1;
  }

  while (v17 != 1);
  return swift_arrayDestroy();
}

void sub_100580034()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 fileExistsAtPath:v1];

  if ((v2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
    v4 = String._bridgeToObjectiveC()();
    v11 = 0;
    v5 = [v3 startAtPath:v4 error:&v11];

    v6 = v11;
    if (v5 && (v11 = 0, v7 = v6, v8 = [v3 finishAndReturnError:&v11], v6 = v11, v8))
    {
      v9 = v11;
    }

    else
    {
      v10 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1005801A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = *a1;
  result = sub_10057E3AC(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 72 * result;
    while (v10 < v11)
    {
      result = *(v6 + v12 + 104);
      if (result != a2 || *(v6 + v12 + 112) != a3)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v14 = 72 * v9;
            v15 = v6 + 32 + 72 * v9;
            v40 = *v15;
            v16 = *(v15 + 16);
            v17 = *(v15 + 32);
            v18 = *(v15 + 48);
            v44 = *(v15 + 64);
            v42 = v17;
            v43 = v18;
            v41 = v16;
            v20 = *(v6 + v12 + 136);
            v19 = *(v6 + v12 + 152);
            v21 = *(v6 + v12 + 120);
            v49 = *(v6 + v12 + 168);
            v47 = v20;
            v48 = v19;
            v46 = v21;
            v45 = *(v6 + v12 + 104);
            sub_10055A394(&v40, v38);
            sub_10055A394(&v45, v38);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1002D65AC(v6);
              v6 = result;
            }

            if (v9 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v22 = v6 + v14;
            v36[0] = *(v6 + v14 + 32);
            v23 = *(v6 + v14 + 48);
            v24 = *(v6 + v14 + 64);
            v25 = *(v6 + v14 + 80);
            v37 = *(v6 + v14 + 96);
            v36[2] = v24;
            v36[3] = v25;
            v36[1] = v23;
            v27 = v47;
            v26 = v48;
            v28 = v46;
            *(v22 + 96) = v49;
            *(v22 + 64) = v27;
            *(v22 + 80) = v26;
            *(v22 + 48) = v28;
            *(v22 + 32) = v45;
            result = sub_100581820(v36);
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_26;
            }

            v29 = v6 + v12;
            v38[0] = *(v6 + v12 + 104);
            v30 = *(v6 + v12 + 120);
            v31 = *(v6 + v12 + 136);
            v32 = *(v6 + v12 + 152);
            v39 = *(v6 + v12 + 168);
            v38[2] = v31;
            v38[3] = v32;
            v38[1] = v30;
            v34 = v42;
            v33 = v43;
            v35 = v44;
            *(v29 + 120) = v41;
            *(v29 + 168) = v35;
            *(v29 + 152) = v33;
            *(v29 + 136) = v34;
            *(v29 + 104) = v40;
            result = sub_100581820(v38);
            *v50 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 72;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1005803F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  v14 = 72 * v12;
  v15 = v13 + 72 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1005804C8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1005805AC()
{
  result = qword_100983AA0;
  if (!qword_100983AA0)
  {
    sub_100280938(&qword_100983A98, &qword_10080AF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983AA0);
  }

  return result;
}

void *sub_100580610(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = __chkstk_darwin(v4 - 8);
  if (qword_100973A68 != -1)
  {
    v5 = swift_once();
  }

  LOBYTE(v18) = byte_1009A0C88;
  __chkstk_darwin(v5);
  *(&v18 - 2) = &v18;
  sub_100294008(a1, a2);
  result = sub_100570178(1, 0, sub_1005817B4, (&v18 - 4), a1, a2);
  if (result[2])
  {
    v7 = result;
    v8 = result[5];
    v18 = result[4];
    v19 = v8;
    sub_100294008(v18, v8);
    static String.Encoding.utf8.getter();
    sub_100423B84();
    v9 = String.init<A>(bytes:encoding:)();
    v11 = v10;
    result = sub_100026AC0(v18, v19);
    if (!v11)
    {
      v16 = 3;
      goto LABEL_9;
    }

    if (v7[2] >= 2uLL)
    {
      v12 = v7[6];
      v13 = v7[7];
      sub_100294008(v12, v13);

      v18 = v12;
      v19 = v13;
      static String.Encoding.utf8.getter();
      String.init<A>(bytes:encoding:)();
      v15 = v14;
      sub_100026AC0(v18, v19);
      if (v15)
      {
        return v9;
      }

      v16 = 4;
LABEL_9:

      sub_10055A164();
      swift_allocError();
      *v17 = v16;
      swift_willThrow();
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100580880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1005808FC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100580954()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1005809A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v30._countAndFlagsBits = a4;
  v30._object = a5;
  v29._countAndFlagsBits = a2;
  v29._object = a3;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100983A80);
  v14 = *(v10 + 16);
  v32 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v7;
    v18 = v17;
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v18 = 136315138;
    sub_10000D494(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v6;
    v22 = v21;
    (*(v10 + 8))(v12, v9);
    v23 = sub_10000C4E4(v19, v22, v33);
    v6 = v20;

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Writing hash database to: %s", v18, 0xCu);
    sub_10000C60C(v27);

    v7 = v28;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  strcpy(v33, "Long hashes:\n");
  HIWORD(v33[1]) = -4864;
  String.append(_:)(v29);
  v24._countAndFlagsBits = 0x682074726F68530ALL;
  v24._object = 0xEF0A3A7365687361;
  String.append(_:)(v24);
  String.append(_:)(v30);
  v25 = v31;
  static String.Encoding.utf8.getter();
  sub_10001229C();
  StringProtocol.write(to:atomically:encoding:)();
  (*(v7 + 8))(v25, v6);
}

uint64_t sub_100580DAC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_74;
    }

    v9 = a1[2];
    v8 = a1[3];
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 32)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 32)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (BYTE6(a2) != 32)
  {
LABEL_13:
    if (v7 == 2)
    {
      v27 = a1[2];
      v26 = a1[3];
      v10 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (!v10)
      {
LABEL_21:
        if (v25 == 2)
        {
          if (v7 == 2)
          {
            v30 = a1[2];
            v29 = a1[3];
            v10 = __OFSUB__(v29, v30);
            v28 = v29 - v30;
            if (!v10)
            {
              goto LABEL_30;
            }

            __break(1u);
          }

          else if (v7 == 1)
          {
            LODWORD(v28) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v28 = v28;
LABEL_30:
              if (v28 != 2)
              {
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              sub_1002F15B0(a1, a2);
              if (v4)
              {
LABEL_77:
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

              v31 = Data._Representation.subscript.getter();
              v32 = a4 >> 62;
              if ((a4 >> 62) <= 1)
              {
                if (v32)
                {
                  v33 = a3;
                  v34 = a3 >> 32;
                }

                else
                {
                  v33 = 0;
                  v34 = BYTE6(a4);
                }

LABEL_38:
                if (v34 >= 1 && v34 >= v33)
                {
                  v79 = v31;
                  v35 = Data._Representation.subscript.getter();
                  v37 = v36;
                  v38 = sub_100580610(v35, v36);
                  v40 = v39;
                  v42 = v41;
                  v44 = v43;
                  sub_100026AC0(v35, v37);
                  v78 = v38;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v46 = SFHexStringForData();

                  if (v46)
                  {
                    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v48 = v47;
                  }

                  else
                  {
                    v77 = 0;
                    v48 = 0;
                  }

                  v56 = v44;
                  sub_10028088C(&unk_100987410, &unk_1007FB010);
                  v57 = swift_allocObject();
                  *(v57 + 16) = xmmword_1007F5670;
                  *(v57 + 32) = v79;
                  v58 = sub_10057EA7C(v57);
                  v60 = v59;

                  v61 = Data._bridgeToObjectiveC()().super.isa;
                  sub_100026AC0(v58, v60);
                  v62 = SFHexStringForData();

                  if (v62)
                  {
                    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v65 = v64;
                  }

                  else
                  {
                    v63 = 0;
                    v65 = 0;
                  }

                  _StringGuts.grow(_:)(28);

                  if (v48)
                  {
                    v66 = v77;
                  }

                  else
                  {
                    v66 = 0x3E3F3F3F3CLL;
                  }

                  if (v48)
                  {
                    v67 = v48;
                  }

                  else
                  {
                    v67 = 0xE500000000000000;
                  }

                  v68 = v67;
                  String.append(_:)(*&v66);

                  v69._countAndFlagsBits = 0x3A626D6C202CLL;
                  v69._object = 0xE600000000000000;
                  String.append(_:)(v69);
                  if (v65)
                  {
                    v70 = v63;
                  }

                  else
                  {
                    v70 = 0x3E3F3F3F3CLL;
                  }

                  if (v65)
                  {
                    v71 = v65;
                  }

                  else
                  {
                    v71 = 0xE500000000000000;
                  }

                  v72 = v71;
                  String.append(_:)(*&v70);

                  v73._countAndFlagsBits = 0x3A646963202CLL;
                  v73._object = 0xE600000000000000;
                  String.append(_:)(v73);

                  v74._countAndFlagsBits = v78;
                  v74._object = v40;
                  String.append(_:)(v74);

                  v75._countAndFlagsBits = 0x3A702F65202CLL;
                  v75._object = 0xE600000000000000;
                  String.append(_:)(v75);

                  v76._countAndFlagsBits = v42;
                  v76._object = v56;
                  String.append(_:)(v76);
                  swift_bridgeObjectRelease_n();
LABEL_69:

                  return 14955;
                }

                goto LABEL_75;
              }

              if (v32 == 2)
              {
                v33 = *(a3 + 16);
                v34 = *(a3 + 24);
                goto LABEL_38;
              }

LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            goto LABEL_73;
          }

          v28 = BYTE6(a2);
          goto LABEL_30;
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (v7 == 1)
    {
      LODWORD(v25) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v25 = v25;
        goto LABEL_21;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v25 = BYTE6(a2);
    goto LABEL_21;
  }

LABEL_8:
  result = sub_100580610(a3, a4);
  if (!v4)
  {
    v16 = result;
    v17 = v14;
    v18 = v15;
    v19 = v13;
    v20 = Data._bridgeToObjectiveC()().super.isa;
    v21 = SFHexStringForData();

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    _StringGuts.grow(_:)(20);

    if (v24)
    {
      v49 = v22;
    }

    else
    {
      v49 = 0x3E3F3F3F3CLL;
    }

    if (v24)
    {
      v50 = v24;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    v51 = v50;
    String.append(_:)(*&v49);

    v52._countAndFlagsBits = 0x3A646963202CLL;
    v52._object = 0xE600000000000000;
    String.append(_:)(v52);

    v53._countAndFlagsBits = v16;
    v53._object = v19;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0x3A702F65202CLL;
    v54._object = 0xE600000000000000;
    String.append(_:)(v54);

    v55._countAndFlagsBits = v17;
    v55._object = v18;
    String.append(_:)(v55);
    swift_bridgeObjectRelease_n();
    goto LABEL_69;
  }

  return result;
}

void sub_10058131C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      sub_100577CA0(v19, a4 & 1);
      v14 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_1002D2190();
      v14 = v22;
    }
  }

  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    *v25 = a1;
    v25[1] = a7;

    swift_unknownObjectRelease();
    return;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v26 = (v24[6] + 16 * v14);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v24[7] + 16 * v14);
  *v27 = a1;
  v27[1] = a7;
  v28 = v24[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v29;
}

uint64_t sub_1005814F4(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_10057D72C(sub_1005815BC, v4, a1, a2);
}

uint64_t sub_10058154C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100581638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005816A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100581708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100581770(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1005818AC()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100581914(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100581938, 0, 0);
}

uint64_t sub_100581938()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100581A60;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100983CD8, &unk_10080B100);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008E7C18;
  v0[14] = v3;
  [v1 provisionPseudonymWithProperties:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100581A60(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_100581BA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(sub_100581BC4, 0, 0);
}

uint64_t sub_100581BC4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100581CEC;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B600, &unk_1007FEA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D59F8;
  v0[13] = &unk_1008E7BF0;
  v0[14] = v3;
  [v1 revokePseudonym:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100581CEC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 160);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

id sub_100581E08(double a1)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 pseudonymPropertiesWithFeatureID:v4 expiryDurationInSeconds:a1];

  return v5;
}

void sub_100581EB8(uint64_t a1)
{
  if (!qword_100983D50)
  {
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100983D50);
    }
  }
}

uint64_t sub_100581F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100582078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1005821CC(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v1 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100581EB8(319);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_1002F2B90(319, &unk_100983D58, &_s20IdentityShareRequestVN);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

Swift::Int sub_1005822C8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005823E4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100582524@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  v15 = a1(0);
  v16 = (v2 + *(v15 + 24));
  if (v16[1])
  {
    v17 = v15;
    v18 = *v16;
    sub_10000FF90(v2 + *(v15 + 28), v7, &qword_100983CE0, &qword_10080B110);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100005508(v7, &qword_100983CE0, &qword_10080B110);
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      v19 = (v2 + *(v17 + 32));
      v20 = v19[1];
      if (v20 >> 60 != 15)
      {
        v26[1] = v18;
        v25 = *v19;
        (*(v9 + 16))(v12, v14, v8);

        sub_1002A9924(v25, v20);

        SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
        (*(v9 + 8))(v14, v8);
        v21 = &enum case for SFAirDrop.ContactRequest.contact(_:);
        goto LABEL_7;
      }

      (*(v9 + 8))(v14, v8);
    }
  }

  v21 = &enum case for SFAirDrop.ContactRequest.notNeeded(_:);
LABEL_7:
  v22 = *v21;
  v23 = type metadata accessor for SFAirDrop.ContactRequest();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

unint64_t sub_10058280C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15ExchangeRequestVMa(0);
  v10 = (v1 + v9[5]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = (v1 + v9[6]);
    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = *v13;
    v14 = v9;

    v9 = v14;
  }

  sub_10000FF90(v1 + v9[7], v4, &qword_100983CE0, &qword_10080B110);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v25 = 0;
    v26 = 0xE000000000000000;

    _StringGuts.grow(_:)(45);

    v25 = 0xD000000000000020;
    v26 = 0x8000000100795A90;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544034336;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 23328;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_100584908(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v17 = v25;
    (*(v6 + 8))(v8, v5);
    return v17;
  }

  sub_100005508(v4, &qword_100983CE0, &qword_10080B110);
LABEL_7:
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v25 = 0xD000000000000020;
  v26 = 0x8000000100795A90;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x746E6F63206F6E20;
  v16._object = 0xEB00000000746361;
  String.append(_:)(v16);
  return v25;
}

unint64_t sub_100582C08()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s16ExchangeResponseVMa(0);
  v10 = (v1 + v9[5]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = (v1 + v9[6]);
    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = *v13;
    v14 = v9;

    v9 = v14;
  }

  sub_10000FF90(v1 + v9[7], v4, &qword_100983CE0, &qword_10080B110);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v25 = 0;
    v26 = 0xE000000000000000;

    _StringGuts.grow(_:)(46);

    v25 = 0xD000000000000021;
    v26 = 0x8000000100795AC0;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544034336;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 23328;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_100584908(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v17 = v25;
    (*(v6 + 8))(v8, v5);
    return v17;
  }

  sub_100005508(v4, &qword_100983CE0, &qword_10080B110);
LABEL_7:
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v25 = 0xD000000000000021;
  v26 = 0x8000000100795AC0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x746E6F63206F6E20;
  v16._object = 0xEB00000000746361;
  String.append(_:)(v16);
  return v25;
}

unint64_t sub_100583018@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100584C9C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100583048@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100584C9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100583070(uint64_t a1)
{
  v2 = sub_100584844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005830AC(uint64_t a1)
{
  v2 = sub_100584844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005830E8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100983E50, &unk_10080B240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_100584844();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26[0]) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s15ExchangeRequestVMa(0);
    LOBYTE(v26[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26[0]) = 3;
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    sub_100584908(&qword_100983E58, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v31 = *v10;
    v32 = v11;
    v34 = 4;
    sub_1002A9924(v31, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v31, v32);
    v12 = v3 + *(v9 + 36);
    v13 = *(v12 + 48);
    v14 = *(v12 + 16);
    v27 = *(v12 + 32);
    v28 = v13;
    v15 = *(v12 + 48);
    v29 = *(v12 + 64);
    v16 = *(v12 + 16);
    v26[0] = *v12;
    v26[1] = v16;
    v22 = v27;
    v23 = v15;
    v24 = *(v12 + 64);
    v30 = *(v12 + 80);
    v25 = *(v12 + 80);
    v20 = v26[0];
    v21 = v14;
    v33 = 5;
    sub_10000FF90(v26, v18, &qword_10097B208, &qword_1007FE5A8);
    sub_100567494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_100005508(v18, &qword_10097B208, &qword_1007FE5A8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005834A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10028088C(&qword_100983E38, &qword_10080B238);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v27 - v8;
  v10 = _s15ExchangeRequestVMa(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CDC0(a1, a1[3]);
  sub_100584844();
  v33 = v9;
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000C60C(a1);
  }

  v34 = v5;
  v14 = v30;
  LOBYTE(v35) = 0;
  sub_100584908(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 32))(v12, v15, v6);
  LOBYTE(v35) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = &v12[v10[5]];
  *v17 = v16;
  v17[1] = v18;
  LOBYTE(v35) = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = &v12[v10[6]];
  *v20 = v19;
  v20[1] = v21;
  type metadata accessor for SFAirDrop.ContactInfo.Handle();
  LOBYTE(v35) = 3;
  sub_100584908(&qword_100983E48, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
  v22 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100584898(v22, &v12[v10[7]]);
  v41 = 4;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v12[v10[8]] = v35;
  v41 = 5;
  sub_100566FA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v33, v32);
  v23 = &v12[v10[9]];
  v24 = v38;
  *(v23 + 2) = v37;
  *(v23 + 3) = v24;
  *(v23 + 4) = v39;
  *(v23 + 10) = v40;
  v25 = v36;
  *v23 = v35;
  *(v23 + 1) = v25;
  sub_1005849A4(v12, v28, _s15ExchangeRequestVMa);
  sub_10000C60C(a1);
  return sub_100584A0C(v12, _s15ExchangeRequestVMa);
}

uint64_t sub_100583AEC(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100583BE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100584CE8(*a1);
  *a2 = result;
  return result;
}

void sub_100583C14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x726566736E617254;
  v5 = 0xE600000000000000;
  v6 = 0x656C646E6148;
  v7 = 0x7461446472614356;
  v8 = 0x80000001007886E0;
  if (v2 == 4)
  {
    v8 = 0xE900000000000061;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6D614E6E65766947;
  if (v2 != 1)
  {
    v10 = 0x656D614E6C6C7546;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100583CDC()
{
  v1 = *v0;
  v2 = 0x726566736E617254;
  v3 = 0x656C646E6148;
  v4 = 0x7461446472614356;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6E65766947;
  if (v1 != 1)
  {
    v5 = 0x656D614E6C6C7546;
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

unint64_t sub_100583DA0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100584CE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100583DC8(uint64_t a1)
{
  v2 = sub_100584950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100583E04(uint64_t a1)
{
  v2 = sub_100584950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100583E40(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100983E70, &qword_10080B258);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_100584950();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26[0]) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s16ExchangeResponseVMa(0);
    LOBYTE(v26[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26[0]) = 3;
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    sub_100584908(&qword_100983E58, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v31 = *v10;
    v32 = v11;
    v34 = 4;
    sub_1002A9924(v31, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v31, v32);
    v12 = v3 + *(v9 + 36);
    v13 = *(v12 + 48);
    v14 = *(v12 + 16);
    v27 = *(v12 + 32);
    v28 = v13;
    v15 = *(v12 + 48);
    v29 = *(v12 + 64);
    v16 = *(v12 + 16);
    v26[0] = *v12;
    v26[1] = v16;
    v22 = v27;
    v23 = v15;
    v24 = *(v12 + 64);
    v30 = *(v12 + 80);
    v25 = *(v12 + 80);
    v20 = v26[0];
    v21 = v14;
    v33 = 5;
    sub_10000FF90(v26, v18, &qword_10097B208, &qword_1007FE5A8);
    sub_100567494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_100005508(v18, &qword_10097B208, &qword_1007FE5A8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100584200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10028088C(&qword_100983E60, &qword_10080B250);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v27 - v8;
  v10 = _s16ExchangeResponseVMa(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CDC0(a1, a1[3]);
  sub_100584950();
  v33 = v9;
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000C60C(a1);
  }

  v34 = v5;
  v14 = v30;
  LOBYTE(v35) = 0;
  sub_100584908(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 32))(v12, v15, v6);
  LOBYTE(v35) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = &v12[v10[5]];
  *v17 = v16;
  v17[1] = v18;
  LOBYTE(v35) = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = &v12[v10[6]];
  *v20 = v19;
  v20[1] = v21;
  type metadata accessor for SFAirDrop.ContactInfo.Handle();
  LOBYTE(v35) = 3;
  sub_100584908(&qword_100983E48, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
  v22 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100584898(v22, &v12[v10[7]]);
  v41 = 4;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v12[v10[8]] = v35;
  v41 = 5;
  sub_100566FA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v33, v32);
  v23 = &v12[v10[9]];
  v24 = v38;
  *(v23 + 2) = v37;
  *(v23 + 3) = v24;
  *(v23 + 4) = v39;
  *(v23 + 10) = v40;
  v25 = v36;
  *v23 = v35;
  *(v23 + 1) = v25;
  sub_1005849A4(v12, v28, _s16ExchangeResponseVMa);
  sub_10000C60C(a1);
  return sub_100584A0C(v12, _s16ExchangeResponseVMa);
}

unint64_t sub_100584844()
{
  result = qword_100983E40;
  if (!qword_100983E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E40);
  }

  return result;
}

uint64_t sub_100584898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100584908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100584950()
{
  result = qword_100983E68;
  if (!qword_100983E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E68);
  }

  return result;
}

uint64_t sub_1005849A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100584A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100584A90()
{
  result = qword_100983E78;
  if (!qword_100983E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E78);
  }

  return result;
}

unint64_t sub_100584AE8()
{
  result = qword_100983E80;
  if (!qword_100983E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E80);
  }

  return result;
}

unint64_t sub_100584B40()
{
  result = qword_100983E88;
  if (!qword_100983E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E88);
  }

  return result;
}

unint64_t sub_100584B98()
{
  result = qword_100983E90;
  if (!qword_100983E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E90);
  }

  return result;
}

unint64_t sub_100584BF0()
{
  result = qword_100983E98;
  if (!qword_100983E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E98);
  }

  return result;
}

unint64_t sub_100584C48()
{
  result = qword_100983EA0;
  if (!qword_100983EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983EA0);
  }

  return result;
}

unint64_t sub_100584C9C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7D00, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100584CE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7DB0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100584D54(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for SFPlatform();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v2[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_100584FCC, v8, 0);
}

uint64_t sub_100584FCC(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[24];
  v4 = v1[25];
  v6 = v1[22];
  v5 = v1[23];
  v7 = v1[21];
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.type.getter();
  v8 = *(v4 + 8);
  v1[29] = v8;
  v1[30] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v9 = (*(v6 + 88))(v5, v7);
  if (v9 == enum case for SFAirDrop.TransferType.linksWithExchange(_:))
  {
    (*(v1[22] + 8))(v1[23], v1[21]);
    goto LABEL_3;
  }

  if (v9 == enum case for SFAirDrop.TransferType.filesWithExchange(_:))
  {
    (*(v1[22] + 8))(v1[23], v1[21]);
    goto LABEL_8;
  }

  if (v9 == enum case for SFAirDrop.TransferType.exchange(_:))
  {
    (*(v1[22] + 8))(v1[23], v1[21]);
    if (qword_100973A88 != -1)
    {
      swift_once();
    }

    v19 = qword_100983ED0;
    goto LABEL_14;
  }

  if (v9 == enum case for SFAirDrop.TransferType.links(_:))
  {
LABEL_3:
    v11 = v1[19];
    v10 = v1[20];
    v12 = v1[18];
    static SFPlatform.watchOS.getter();
    v13 = static SFPlatform.isPlatform(_:)();
    (*(v11 + 8))(v10, v12);
    if ((v13 & 1) == 0)
    {
      if (qword_100973A80 != -1)
      {
        goto LABEL_36;
      }

      goto LABEL_16;
    }

LABEL_9:
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  if (v9 != enum case for SFAirDrop.TransferType.files(_:))
  {
    if (v9 != enum case for SFAirDrop.TransferType.peerPayment(_:))
    {
      v32 = v1[22];
      v31 = v1[23];
      v33 = v1[21];
      v1[9] = _swiftEmptyArrayStorage;
      (*(v32 + 8))(v31, v33);
      goto LABEL_18;
    }

    if (qword_100973A98 != -1)
    {
      swift_once();
    }

    v19 = qword_100983EE0;
LABEL_14:
    v1[9] = v19;

    goto LABEL_18;
  }

LABEL_8:
  v15 = v1[19];
  v14 = v1[20];
  v16 = v1[18];
  static SFPlatform.watchOS.getter();
  v17 = static SFPlatform.isPlatform(_:)();
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    goto LABEL_9;
  }

  if (qword_100973A78 != -1)
  {
    goto LABEL_36;
  }

LABEL_16:
  while (1)
  {

LABEL_17:
    v1[9] = v18;
LABEL_18:
    if (qword_100973A90 != -1)
    {
      swift_once();
    }

    sub_100403468(v20);
    v21 = v1[9];
    v1[31] = v21;
    v22 = v21[2];
    v1[32] = v22;
    if (!v22)
    {
      break;
    }

    v1[33] = 0;
    if (v21[2])
    {
      v23 = v21[4];
      v1[34] = v23;
      v24 = v21[5];
      v1[35] = v24;
      v25 = *(v24 + 40);
      v1[5] = v23;
      v1[6] = v24;
      sub_10002F604(v1 + 2);
      v25(v23, v24);
      SFAirDropReceive.Transfer.askRequest.getter();
      v34 = (*(v24 + 48) + **(v24 + 48));
      v26 = swift_task_alloc();
      v1[36] = v26;
      *v26 = v1;
      v26[1] = sub_100585518;
      v27 = v1[26];

      return v34(v27, v23, v24);
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  v29 = v1[10];

  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;

  v30 = v1[1];

  return v30();
}

uint64_t sub_100585518(char a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 192);
  *(*v1 + 296) = a1;

  v2(v4, v5);

  return _swift_task_switch(sub_10058569C, v3, 0);
}

uint64_t sub_10058569C()
{
  v41 = v0;
  if (*(v0 + 296))
  {

    if (qword_100973A70 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 120);
    v4 = *(v0 + 88);
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100983EA8);
    (*(v2 + 16))(v1, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      v10 = *(v0 + 112);
      v36 = *(v0 + 120);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v37 = *(v0 + 272);
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v13 = 136315394;
      v38 = v7;
      SFAirDropReceive.Transfer.id.getter();
      sub_1002891F4();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      (*(v8 + 8))(v9, v36);
      v17 = sub_10000C4E4(v14, v16, &v40);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v0 + 56) = v37;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000C4E4(v18, v19, &v40);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v6, v38, "Transfer %s using handler %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = *(v0 + 128);
      v25 = *(v0 + 136);
      v27 = *(v0 + 120);

      (*(v26 + 8))(v25, v27);
    }

    sub_1002A9938(v0 + 16, *(v0 + 80));
    sub_10000C60C((v0 + 16));
    goto LABEL_10;
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 264) + 1;
  result = sub_10000C60C((v0 + 16));
  if (v22 == v21)
  {
    v24 = *(v0 + 80);

    *(v24 + 32) = 0;
    *v24 = 0u;
    *(v24 + 16) = 0u;
LABEL_10:

    v28 = *(v0 + 8);

    return v28();
  }

  *(v0 + 264) = v22;
  v29 = *(v0 + 248);
  if (v22 >= *(v29 + 16))
  {
    __break(1u);
  }

  else
  {
    v30 = v29 + 16 * v22;
    v31 = *(v30 + 32);
    *(v0 + 272) = v31;
    v32 = *(v30 + 40);
    *(v0 + 280) = v32;
    v33 = *(v32 + 40);
    *(v0 + 40) = v31;
    *(v0 + 48) = v32;
    sub_10002F604((v0 + 16));
    v33(v31, v32);
    SFAirDropReceive.Transfer.askRequest.getter();
    v39 = (*(v32 + 48) + **(v32 + 48));
    v34 = swift_task_alloc();
    *(v0 + 288) = v34;
    *v34 = v0;
    v34[1] = sub_100585518;
    v35 = *(v0 + 208);

    return v39(v35, v31, v32);
  }

  return result;
}

uint64_t sub_100585B4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983EA8);
  v1 = sub_10000C4AC(v0, qword_100983EA8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100585C14()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B510;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerCalendarEvents();
  *(v0 + 40) = &off_1008E6578;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerContacts();
  *(v0 + 56) = &off_1008E64A0;
  *(v0 + 64) = type metadata accessor for SDAirDropContentHandlerNotes();
  *(v0 + 72) = &off_1008E09F0;
  *(v0 + 80) = type metadata accessor for SDAirDropContentHandlerPhotos(0);
  *(v0 + 88) = &off_1008ED238;
  *(v0 + 96) = type metadata accessor for SDAirDropContentHandlerProfiles();
  *(v0 + 104) = &off_1008ED6A0;
  *(v0 + 112) = type metadata accessor for SDAirDropContentHandlerVoiceMails();
  *(v0 + 120) = &off_1008E31E8;
  *(v0 + 128) = type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  *(v0 + 136) = &off_1008DAD40;
  *(v0 + 144) = type metadata accessor for SDAirDropContentHandlerWalletItems();
  *(v0 + 152) = &off_1008E57C8;
  *(v0 + 160) = type metadata accessor for SDAirDropContentHandlerPDFs();
  *(v0 + 168) = &off_1008E5E90;
  *(v0 + 176) = type metadata accessor for SDAirDropContentHandleriBooksItems();
  *(v0 + 184) = &off_1008D9000;
  *(v0 + 192) = type metadata accessor for SDAirDropContentHandlerIPA();
  *(v0 + 200) = &off_1008DEA88;
  *(v0 + 208) = type metadata accessor for SDAirDropContentHandlerPlaygroundItems();
  *(v0 + 216) = &off_1008E2620;
  result = type metadata accessor for SDAirDropContentHandlerGenericFiles();
  *(v0 + 224) = result;
  *(v0 + 232) = &off_1008E0860;
  qword_100983EC0 = v0;
  return result;
}

uint64_t sub_100585D6C()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B520;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerCredentialLinks();
  *(v0 + 40) = &off_1008E41C0;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerSharediCloudDocumentsLinks();
  *(v0 + 56) = &off_1008E9288;
  *(v0 + 64) = type metadata accessor for SDAirDropContentHandlerKeynoteLiveLinks();
  *(v0 + 72) = &off_1008E02C0;
  *(v0 + 80) = type metadata accessor for SDAirDropContentHandlerFindMyFriendsLinks();
  *(v0 + 88) = &off_1008DC180;
  *(v0 + 96) = type metadata accessor for SDAirDropContentHandleriWorkLinks();
  *(v0 + 104) = &off_1008DFAD8;
  *(v0 + 112) = type metadata accessor for SDAirDropContentHandlerAppStoreLinks();
  *(v0 + 120) = &off_1008DC970;
  *(v0 + 128) = type metadata accessor for SDAirDropContentHandlerPhoneLinks();
  *(v0 + 136) = &off_1008E56F0;
  *(v0 + 144) = type metadata accessor for SDAirDropContentHandleriBooksLinks();
  *(v0 + 152) = &off_1008EE418;
  *(v0 + 160) = type metadata accessor for SDAirDropContentHandlerPodcastsLinks();
  *(v0 + 168) = &off_1008DDCD8;
  *(v0 + 176) = type metadata accessor for SDAirDropContentHandleriTunesULinks();
  *(v0 + 184) = &off_1008DEC88;
  *(v0 + 192) = type metadata accessor for SDAirDropContentHandleriTunesStoreLinks();
  *(v0 + 200) = &off_1008ED7B8;
  *(v0 + 208) = type metadata accessor for SDAirDropContentHandleriLifeLinks();
  *(v0 + 216) = &off_1008EC950;
  *(v0 + 224) = type metadata accessor for SDAirDropContentHandlerMapsLinks();
  *(v0 + 232) = &off_1008DC368;
  *(v0 + 240) = type metadata accessor for SDAirDropContentHandlerNewsLinks();
  *(v0 + 248) = &off_1008EA370;
  *(v0 + 256) = type metadata accessor for SDAirDropContentHandleriCloudFamilyLinks();
  *(v0 + 264) = &off_1008DBA40;
  *(v0 + 272) = type metadata accessor for SDAirDropContentHandlerGenericLinks();
  *(v0 + 280) = &off_1008DE920;
  result = type metadata accessor for SDAirDropContentHandlerWebLinks();
  *(v0 + 288) = result;
  *(v0 + 296) = &off_1008DB4E8;
  qword_100983EC8 = v0;
  return result;
}

uint64_t sub_100585F3C()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007F8830;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerUnsupportedLinkType();
  *(v0 + 40) = &off_1008EC8B0;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
  *(v0 + 56) = &off_1008E3600;
  result = type metadata accessor for SDAirDropContentHandlerMixedTypes();
  *(v0 + 64) = result;
  *(v0 + 72) = &off_1008DBFF0;
  qword_100983ED8 = v0;
  return result;
}

uint64_t sub_100585FF4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F5670;
  result = a2(0);
  *(v7 + 32) = result;
  *(v7 + 40) = a3;
  *a4 = v7;
  return result;
}

uint64_t sub_1005860BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v10 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    return (*(a3 + 56))(a1, 1, a2, a3);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = SFLocalizedStringForKey();

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = (*(a3 + 56))(a1, 0, a2, a3);
  v16 = v15;
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007F5670;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100026764();
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  v18 = static String.localizedStringWithFormat(_:_:)();

  return v18;
}

uint64_t sub_1005862E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = SFAirDropReceive.AskRequest.senderIsMe.getter();
  static SFPlatform.macOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v9, v6);
  v12 = *(a3 + 56);
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v18 = v12(a1, 0, a2, a3);
      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      v22 = SFLocalizedStringForKey();

      if (v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1007F8A70;
      *(v30 + 56) = &type metadata for String;
      v31 = sub_100026764();
      *(v30 + 64) = v31;
      *(v30 + 32) = v18;
      *(v30 + 40) = v20;
      v32 = SFAirDropReceive.AskRequest.senderDisplayName.getter();
      *(v30 + 96) = &type metadata for String;
      *(v30 + 104) = v31;
      *(v30 + 72) = v32;
      *(v30 + 80) = v33;
      v23 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_15;
    }

    v24 = v12(a1, 1, a2, a3);
    v26 = v25;
    v27 = String._bridgeToObjectiveC()();
    v28 = SFLocalizedStringForKey();

    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1007F8A70;
    *(v34 + 56) = &type metadata for String;
    v35 = sub_100026764();
    *(v34 + 64) = v35;
    *(v34 + 32) = v24;
    *(v34 + 40) = v26;
    v36 = SFAirDropReceive.AskRequest.senderDisplayName.getter();
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v35;
    *(v34 + 72) = v36;
    *(v34 + 80) = v37;
    v23 = static String.localizedStringWithFormat(_:_:)();
LABEL_14:

LABEL_15:

    return v23;
  }

  if (v11)
  {
    v13 = v12(a1, 0, a2, a3);
    v15 = v14;
    v16 = String._bridgeToObjectiveC()();
    v17 = SFLocalizedStringForKey();

    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007F5670;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100026764();
    *(v29 + 32) = v13;
    *(v29 + 40) = v15;
    v23 = static String.localizedStringWithFormat(_:_:)();
    goto LABEL_14;
  }

  return v12(a1, 1, a2, a3);
}

uint64_t sub_100586750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  v8 = *(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8);
  v6[22] = v8;
  v6[23] = *(v8 + 64);
  v6[24] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[25] = swift_task_alloc();
  sub_10028088C(&qword_10097D430, &unk_100808E50);
  v6[26] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v12 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v6[39] = v12;
  v6[40] = *(v12 - 8);
  v6[41] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.AskRequest();
  v6[42] = v13;
  v6[43] = *(v13 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = *(a4 - 8);
  v6[46] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v6[47] = v14;
  v6[48] = *(v14 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.DeclineAction();
  v6[54] = v15;
  v6[55] = *(v15 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v16 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v6[58] = v16;
  v17 = *(v16 - 8);
  v6[59] = v17;
  v6[60] = *(v17 + 64);
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v6[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_100586C94, v18, 0);
}

void sub_100586C94()
{
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v1 = String._bridgeToObjectiveC()();
  v2 = SFLocalizedStringForKey();

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v5;
  }

  else
  {
    v6 = 0xE700000000000000;
    v3 = 0x656E696C636544;
  }

  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 472);
  v10 = *(v0 + 464);
  v11 = *(v0 + 424);
  v12 = *(v0 + 384);
  v13 = *(v0 + 360);
  v151 = *(v0 + 368);
  v150 = *(v0 + 168);
  v147 = *(v0 + 152);
  *v11 = v3;
  v11[1] = v6;
  v135 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v138 = *(v12 + 104);
  v138(v11);
  v145 = *(v9 + 16);
  v145(v8, v7, v10);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v153 = *(v9 + 80);
  v15 = swift_allocObject();
  v142 = v14;
  v146 = *(v9 + 32);
  v146(v15 + v14, v8, v10);

  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  (*(v13 + 16))(v151, v150, v147);
  sub_10028088C(&qword_100983FB0, &qword_10080B5F8);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 496);
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v19 = *(v0 + 336);
    sub_1000121F8((v0 + 56), v0 + 16);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v20);
    SFAirDropReceive.Transfer.askRequest.getter();
    (*(v21 + 8))(v17, v16, v20, v21);
    (*(v18 + 8))(v17, v19);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100005508(v0 + 56, &qword_100983FB8, &qword_10080B600);
    if (SFAirDropReceive.Transfer.isPreviewSensitive.getter())
    {
      v22 = sub_10049F1E0();
      if (v24 == 2)
      {
        sub_1003C3F0C(v22, v23, 2u);
        v25 = String._bridgeToObjectiveC()();
        v26 = SFLocalizedStringForKey();

        if (v26)
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v29 = 0xE800000000000000;
          v27 = 0x65756E69746E6F43;
        }

        v47 = *(v0 + 408);
        v46 = *(v0 + 416);
        v48 = *(v0 + 376);
        v49 = *(v0 + 384);
        *v47 = v27;
        v47[1] = v29;
        (v138)(v47, v135, v48);
        (*(v49 + 32))(v46, v47, v48);
        v44 = 0xEA00000000007974;
        v45 = 0x656661536D6D6F43;
      }

      else
      {
        sub_1003C3F0C(v22, v23, v24);
        v35 = String._bridgeToObjectiveC()();
        v36 = SFLocalizedStringForKey();

        if (v36)
        {
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
        }

        else
        {
          v39 = 0xE400000000000000;
          v37 = 2003789907;
        }

        v50 = *(v0 + 416);
        v51 = *(v0 + 400);
        v52 = *(v0 + 376);
        v53 = *(v0 + 384);
        *v51 = 0x6C6C69662E657965;
        v51[1] = 0xE800000000000000;
        v51[2] = v37;
        v51[3] = v39;
        (v138)(v51, enum case for SFAirDrop.ButtonConfiguration.symbolText(_:), v52);
        (*(v53 + 32))(v50, v51, v52);
        v44 = 0x8000000100795DF0;
        v45 = 0xD000000000000010;
      }
    }

    else
    {
      v30 = String._bridgeToObjectiveC()();
      v31 = SFLocalizedStringForKey();

      if (v31)
      {
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE600000000000000;
        v32 = 0x747065636341;
      }

      v40 = *(v0 + 416);
      v42 = *(v0 + 384);
      v41 = *(v0 + 392);
      v43 = *(v0 + 376);
      *v41 = v32;
      v41[1] = v34;
      (v138)(v41, v135, v43);
      (*(v42 + 32))(v40, v41, v43);
      v44 = 0xE700000000000000;
      v45 = 0x72616C75676552;
    }

    v136 = v45;
    v131 = *(v0 + 488);
    v133 = *(v0 + 496);
    v54 = *(v0 + 464);
    v56 = *(v0 + 416);
    v55 = *(v0 + 424);
    v58 = *(v0 + 376);
    v57 = *(v0 + 384);
    v59 = *(v0 + 320);
    v140 = *(v0 + 328);
    v148 = *(v0 + 312);
    v130 = *(v0 + 304);
    v60 = *(v0 + 296);
    v128 = *(v0 + 288);
    sub_10028088C(&qword_10097B140, &qword_1007FE418);
    v61._countAndFlagsBits = v136;
    v61._object = v44;
    String.append(_:)(v61);

    (*(v57 + 16))(v55, v56, v58);
    (*(v60 + 104))(v130, enum case for SFAirDropReceive.ItemDestination.default(_:), v128);
    v145(v131, v133, v54);
    v62 = swift_allocObject();
    v146(v62 + v142, v131, v54);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
    UUID.init()();
    (*(v59 + 104))(v140, enum case for SFAirDrop.AcceptAction.single<A>(_:), v148);
    sub_10028088C(&qword_100974EA8, &qword_1007F82E8);
    v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1007F5670;
    (*(v59 + 32))(v64 + v63, v140, v148);
    (*(v57 + 8))(v56, v58);
  }

  UUID.init()();
  static Date.now.getter();
  v65 = String._bridgeToObjectiveC()();
  v66 = SFLocalizedStringForKey();

  if (v66)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v67 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v69 = *(v0 + 344);
  v68 = *(v0 + 352);
  v70 = *(v0 + 336);
  if (v67)
  {
    sub_10049F300();
    v144 = v71;
    v149 = v72;
    v73 = *(v69 + 8);
    v73(v68, v70);
  }

  else
  {
    v74 = (*(*(v0 + 160) + 80))(*(v0 + 352), 0, *(v0 + 152));
    v76 = v75;
    v73 = *(v69 + 8);
    v73(v68, v70);
    if (v76)
    {
      v144 = v74;
      v149 = v76;
    }

    else
    {
      v77 = *(v0 + 352);
      v78 = *(v0 + 336);
      v79 = *(v0 + 160);
      v80 = *(v0 + 152);
      SFAirDropReceive.Transfer.askRequest.getter();
      v144 = (*(v79 + 56))(v77, 0, v80, v79);
      v149 = v81;
      v73(v77, v78);
    }
  }

  v82 = *(v0 + 352);
  v83 = *(v0 + 336);
  v84 = *(v0 + 160);
  v85 = *(v0 + 152);
  SFAirDropReceive.Transfer.askRequest.getter();
  (*(v84 + 88))(v82, v85, v84);
  v73(v82, v83);
  v86 = String._bridgeToObjectiveC()();
  v87 = SFLocalizedStringForKey();

  if (v87)
  {
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  *(v0 + 112) = v88;
  *(v0 + 120) = v90;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();
  v91 = *(v0 + 352);
  v92 = *(v0 + 336);

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1007F8A70;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.senderDisplayName.getter();
  v73(v91, v92);
  v94 = String._bridgeToObjectiveC()();

  v95 = SFTruncateAirDropSenderNameForUI();

  v124 = v73;
  if (v95)
  {
    v122 = *(v0 + 504);
    v139 = *(v0 + 496);
    v121 = *(v0 + 488);
    v123 = *(v0 + 472);
    v120 = *(v0 + 464);
    v143 = *(v0 + 456);
    v125 = *(v0 + 448);
    v137 = *(v0 + 440);
    v141 = *(v0 + 432);
    v132 = *(v0 + 352);
    v96 = *(v0 + 280);
    v112 = *(v0 + 336);
    v126 = *(v0 + 272);
    v97 = *(v0 + 248);
    v98 = *(v0 + 256);
    v118 = v97;
    v134 = *(v0 + 240);
    v100 = *(v0 + 216);
    v99 = *(v0 + 224);
    v116 = v99;
    v127 = *(v0 + 232);
    v129 = *(v0 + 208);
    v115 = *(v0 + 192);
    v119 = *(v0 + 184);
    v117 = *(v0 + 176);
    v113 = *(v0 + 200);
    v114 = *(v0 + 144);
    v152 = *(v0 + 128);

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    *(v93 + 56) = &type metadata for String;
    v104 = sub_100026764();
    *(v93 + 32) = v101;
    *(v93 + 40) = v103;
    *(v93 + 96) = &type metadata for String;
    *(v93 + 104) = v104;
    *(v93 + 64) = v104;
    *(v93 + 72) = v144;
    *(v93 + 80) = v149;
    static String.localizedStringWithFormat(_:_:)();

    (*(v98 + 16))(v126, v96, v97);
    (*(v99 + 16))(v127, v134, v100);
    (*(v137 + 16))(v125, v143, v141);
    UUID.init()();
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.items.getter();
    v124(v132, v112);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
    v105 = sub_10028088C(&qword_10097D440, &qword_100808E60);
    (*(*(v105 - 8) + 56))(v129, 0, 1, v105);
    SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
    v106 = type metadata accessor for TaskPriority();
    (*(*(v106 - 8) + 56))(v113, 1, 1, v106);
    sub_100592C6C(v114, v115);
    v145(v121, v139, v120);
    v107 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v108 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = v122;
    *(v109 + 24) = v107;
    sub_100592CDC(v115, v109 + v108);
    v146(v109 + ((v119 + v153 + v108) & ~v153), v121, v120);

    v110 = sub_1002B282C(0, 0, v113, &unk_10080B610, v109);
    (*(v116 + 8))(v134, v100);
    (*(v98 + 8))(v96, v118);
    (*(v137 + 8))(v143, v141);
    (*(v123 + 8))(v139, v120);
    *(v152 + *(sub_10028088C(&qword_100976908, &unk_100801D60) + 52)) = v110;

    v111 = *(v0 + 8);

    v111();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100587FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v60 = a5;
  v61 = a8;
  v58 = a6;
  v59 = a7;
  v57 = a4;
  v50._countAndFlagsBits = a2;
  v50._object = a3;
  v47 = a1;
  v62 = a9;
  v9 = type metadata accessor for SFProgressTask();
  v54 = *(v9 - 8);
  v55 = v9;
  v56 = *(v54 + 64);
  __chkstk_darwin(v9);
  v53 = v44 - v10;
  v51 = type metadata accessor for SFAirDropReceive.Transfer();
  v48 = *(v51 - 8);
  v52 = *(v48 + 64);
  __chkstk_darwin(v51);
  v49 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[1] = v16;
  __chkstk_darwin(v14);
  v18 = (v44 - v17);
  v19 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.id.getter();
  v23 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
  v25 = v24;
  (*(v20 + 8))(v22, v19);
  v63 = 0x2D6C65636E6143;
  v64 = 0xE700000000000000;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 45;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);

  String.append(_:)(v50);

  v50._countAndFlagsBits = v64;
  v50._object = v63;
  v28 = v18;
  *v18 = 0x662E657261757173;
  v18[1] = 0xEB000000006C6C69;
  v29 = v13;
  v30 = *(v13 + 104);
  v45 = v28;
  v46 = v12;
  v30(v28, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v12);
  (*(v13 + 16))(v16, v28, v12);
  v31 = v48;
  v32 = v49;
  v33 = v51;
  (*(v48 + 16))(v49, v47, v51);
  v34 = v53;
  v35 = v54;
  v36 = v55;
  (*(v54 + 16))(v53, v57, v55);
  v37 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v38 = (v52 + *(v35 + 80) + v37) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = v58;
  v41 = v59;
  *(v39 + 2) = v60;
  *(v39 + 3) = v40;
  v42 = v61;
  *(v39 + 4) = v41;
  *(v39 + 5) = v42;
  (*(v31 + 32))(&v39[v37], v32, v33);
  (*(v35 + 32))(&v39[v38], v34, v36);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  return (*(v29 + 8))(v45, v46);
}

uint64_t sub_100588474@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v113 = a2;
  v8 = v7;
  v117 = a6;
  v111 = a4;
  LODWORD(v120) = a3;
  v121 = a1;
  v103 = a7;
  v102 = type metadata accessor for SFAirDropReceive.Transfer();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v10;
  v109 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v11 - 8);
  v108 = v87 - v12;
  v13 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  __chkstk_darwin(v13 - 8);
  v97 = v87 - v14;
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15 - 8);
  v106 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = __chkstk_darwin(v17 - 8);
  v96 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = v87 - v20;
  v99 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v107 = v87 - v21;
  v95 = type metadata accessor for SFAirDropReceive.AskRequest();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v23 = *(v110 - 1);
  __chkstk_darwin(v110);
  v25 = (v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for SFAirDrop.DeclineAction();
  v118 = *(v26 - 8);
  v119 = v26;
  v27 = __chkstk_darwin(v26);
  v104 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v124 = v87 - v30;
  v31 = *(a5 - 8);
  v32 = __chkstk_darwin(v29);
  v34 = v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v87 - v35;
  v129 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v122 = *(v129 - 8);
  v37 = __chkstk_darwin(v129);
  v115 = v38;
  v116 = v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = v87 - v39;
  v41 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v112 = "AIRDROP_RECEIVING_TEXT";
  v123 = v40;
  v92 = v41;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v42 = *(v31 + 16);
  v42(v36, v8, a5);
  type metadata accessor for SDAirDropContentHandlerUnsupportedLinkType();
  if (swift_dynamicCast())
  {

    v43 = 1;
  }

  else
  {
    v42(v34, v8, a5);
    type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
    v43 = swift_dynamicCast();
    if (v43)
    {
      v44 = v43;

      v43 = v44;
    }
  }

  v45 = v123;
  v46 = v111;
  v111 = a5;
  v113 = sub_100590A64(v121, v113, v120 & 1, v46, v123, v43, a5);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  (*(v23 + 104))(v25, enum case for SFAirDrop.ButtonConfiguration.text(_:), v110);
  v47 = v122;
  v48 = *(v122 + 16);
  v49 = v116;
  v50 = v45;
  v51 = v129;
  v90 = v122 + 16;
  v89 = v48;
  v48(v116, v50, v129);
  v52 = *(v47 + 80);
  v53 = (v52 + 16) & ~v52;
  v54 = v52;
  v91 = v52 | 7;
  v55 = swift_allocObject();
  v57 = *(v47 + 32);
  v56 = v47 + 32;
  v110 = v57;
  v57(v55 + v53, v49, v51);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v58 = String._bridgeToObjectiveC()();
  v59 = SFLocalizedStringForKey();

  if (v59)
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v125 = v60;
  v126 = v62;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  v63 = v114;
  Optional.tryUnwrap(_:file:line:)();
  v64 = v129;
  v65 = v123;
  if (v63)
  {

    (*(v118 + 8))(v124, v119);
    return (*(v122 + 8))(v65, v64);
  }

  else
  {
    v112 = 0;
    v114 = v56;
    v88 = ~v54;

    v87[3] = v127;
    v87[2] = v128;
    v67 = v93;
    SFAirDropReceive.Transfer.askRequest.getter();
    v111 = (*(v117 + 72))(v67, v111);
    v87[1] = v68;
    v69 = *(v94 + 8);
    v117 = v54;
    v70 = v95;
    v69(v67, v95);
    UUID.init()();
    static Date.now.getter();
    (*(v118 + 16))(v104, v124, v119);
    UUID.init()();
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.items.getter();
    v69(v67, v70);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v71 = v97;
    SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
    v72 = sub_10028088C(&qword_10097D440, &qword_100808E60);
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
    v73 = 1800;
    if (v120)
    {
      v73 = 7;
    }

    v120 = v73;
    v74 = type metadata accessor for TaskPriority();
    (*(*(v74 - 8) + 56))(v108, 1, 1, v74);
    v75 = v116;
    v89(v116, v65, v129);
    v76 = v101;
    v77 = v102;
    (*(v101 + 16))(v109, v121, v102);
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v78 = static AirDropActor.shared;
    v79 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v80 = (v117 + 32) & v88;
    v81 = (v115 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + *(v76 + 80) + 8) & ~*(v76 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v78;
    *(v83 + 24) = v79;
    v84 = v129;
    v110(v83 + v80, v75, v129);
    *(v83 + v81) = v120;
    (*(v76 + 32))(v83 + v82, v109, v77);

    v85 = sub_1002B282C(0, 0, v108, &unk_10080B570, v83);
    (*(v118 + 8))(v124, v119);
    (*(v122 + 8))(v123, v84);
    v86 = v103;
    (*(v98 + 32))(v103, v107, v99);
    result = sub_10028088C(&qword_100976908, &unk_100801D60);
    *(v86 + *(result + 52)) = v85;
  }

  return result;
}

uint64_t sub_100589278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v71 = a1;
  v87 = a3;
  v70 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v74 = *(v70 - 8);
  __chkstk_darwin(v70);
  v77 = v3;
  v75 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v86 = v55 - v5;
  v67 = type metadata accessor for SFAirDropReceive.AskRequest();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  __chkstk_darwin(v7 - 8);
  v64 = v55 - v8;
  v9 = sub_10028088C(&qword_10097B128, &unk_1007FE3D8);
  __chkstk_darwin(v9 - 8);
  v62 = v55 - v10;
  v72 = type metadata accessor for SFInterventionWorkflow();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v81 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = __chkstk_darwin(v12);
  v80 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v55 - v15;
  v17 = type metadata accessor for UUID();
  v83 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v79 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v55 - v21;
  v57 = v55 - v21;
  __chkstk_darwin(v20);
  v24 = v55 - v23;
  v78 = sub_10028088C(&qword_100983FA0, &qword_10080B5B0);
  v25 = *(v78 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v78);
  v88 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v55 - v28;
  type metadata accessor for SFInterventionResponse();
  v82 = v29;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  UUID.init()();
  static Date.now.getter();
  v30 = *(v83 + 16);
  v30(v22, v24, v17);
  v31 = *(v84 + 16);
  v73 = v16;
  v31(v80, v16, v85);
  (*(v69 + 13))(v81, enum case for SFInterventionWorkflow.receive(_:), v72);
  v69 = v24;
  v72 = v17;
  v30(v79, v24, v17);
  v32 = *(v25 + 16);
  v55[1] = v25 + 16;
  v56 = v32;
  v33 = v88;
  v34 = v29;
  v35 = v78;
  (v32)(v88, v34, v78);
  v36 = *(v25 + 80);
  v58 = ~v36;
  v63 = v26;
  v59 = v36 | 7;
  v37 = swift_allocObject();
  v68 = v25;
  v38 = *(v25 + 32);
  v61 = v25 + 32;
  v60 = v38;
  v38(v37 + ((v36 + 16) & ~v36), v33, v35);
  sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v39 = v70;
  SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)();
  UUID.init()();
  v40 = v65;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.items.getter();
  (*(v66 + 8))(v40, v67);
  v41 = v64;
  SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
  v42 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = v74;
  SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)();
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v86, 1, 1, v44);
  v45 = v78;
  v56(v88, v82);
  v46 = v39;
  v47 = v75;
  (*(v43 + 16))();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v48 = static AirDropActor.shared;
  v49 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v50 = (v36 + 32) & v58;
  v51 = (v50 + v63 + *(v43 + 80)) & ~*(v43 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = v49;
  v60(v52 + v50, v88, v45);
  (*(v43 + 32))(v52 + v51, v47, v46);

  v53 = sub_1002B282C(0, 0, v86, &unk_10080B5C0, v52);
  (*(v84 + 8))(v73, v85);
  (*(v83 + 8))(v69, v72);
  (*(v68 + 8))(v82, v45);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v87 + *(result + 52)) = v53;
  return result;
}

uint64_t sub_100589CEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a2;
  v89 = a1;
  v102 = a3;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v101 = v82 - v4;
  v5 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  __chkstk_darwin(v5 - 8);
  v98 = v82 - v6;
  v95 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SFAirDropReceive.AskRequest();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v122 = v82 - v9;
  v116 = type metadata accessor for Date();
  v121 = *(v116 - 8);
  v10 = __chkstk_darwin(v116);
  v113 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = v82 - v12;
  v120 = type metadata accessor for UUID();
  v118 = *(v120 - 8);
  v13 = __chkstk_darwin(v120);
  v111 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v117 = v82 - v15;
  v123 = type metadata accessor for SFAirDrop.ContactRequest();
  v110 = *(v123 - 8);
  __chkstk_darwin(v123);
  v106 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v97 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = v82 - v17;
  v88 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v18 = *(v88 - 8);
  __chkstk_darwin(v88);
  v20 = (v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for SFAirDrop.DeclineAction();
  v96 = *(v114 - 8);
  v21 = __chkstk_darwin(v114);
  v90 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v128 = v82 - v23;
  v24 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v109 = v26;
  __chkstk_darwin(v27);
  v29 = v82 - v28;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v103 = v20;
  *v20 = 0x776F4E20746F4ELL;
  v20[1] = 0xE700000000000000;
  LODWORD(v86) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v30 = *(v18 + 104);
  v87 = (v18 + 104);
  v104 = v30;
  v30(v20);
  v31 = v25 + 16;
  v107 = *(v25 + 16);
  v32 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v24;
  v107(v32, v29, v24);
  v33 = *(v25 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = swift_allocObject();
  v93 = v25;
  v37 = v25 + 32;
  v36 = *(v25 + 32);
  v36(v35 + v34, v32, v24);
  v38 = v103;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  *v38 = 0x6572616853;
  v38[1] = 0xE500000000000000;
  (v104)(v38, v86, v88);
  v39 = type metadata accessor for SFAirDrop.ContactInfo();
  v40 = v106;
  (*(*(v39 - 8) + 16))(v106, v108, v39);
  (*(v110 + 13))(v40, enum case for SFAirDrop.ContactRequest.contact(_:), v123);
  v110 = v29;
  v41 = v29;
  v42 = v105;
  v43 = v112;
  v86 = v31;
  v107(v32, v41, v112);
  v104 = v33;
  v44 = swift_allocObject();
  v88 = v37;
  v87 = v36;
  v36(v44 + v34, v32, v43);
  v45 = sub_100592EB4(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v46 = sub_100592EB4(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v82[0] = sub_100592EB4(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v82[1] = v46;
  v82[2] = v45;
  v47 = v42;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v48 = v117;
  UUID.init()();
  v49 = v119;
  static Date.now.getter();
  (*(v118 + 16))(v111, v48, v120);
  (*(v121 + 16))(v113, v49, v116);
  v126 = 0;
  v127 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x6977206572616853;
  v50._object = 0xEB00000000206874;
  String.append(_:)(v50);
  v51 = v83;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.senderDisplayName.getter();
  (*(v84 + 8))(v51, v85);
  v52 = String._bridgeToObjectiveC()();

  v53 = SFTruncateAirDropSenderNameForUI();

  v91 = v32;
  if (v53)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v106 = ~v104;
  v124 = v54;
  v125 = v56;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v57._countAndFlagsBits = 63;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v103 = v126;
  v89 = v127;
  v126 = SFAirDrop.ContactInfo.fullName.getter();
  v127 = v58;
  v59._countAndFlagsBits = 10;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  v60 = v92;
  SFAirDrop.ContactInfo.handle.getter();
  sub_100592EB4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
  v61 = v95;
  v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v62);

  (*(v94 + 8))(v60, v61);
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v63 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v64 = *(v63 - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007F5670;
  v67 = v66 + v65;
  sub_10028088C(&qword_10097B298, &unk_1007FE640);
  v68 = v97;
  (*(v97 + 16))(v67, v47, v115);
  UUID.init()();
  (*(v64 + 104))(v67, enum case for SFAirDrop.AcceptAction.single<A>(_:), v63);
  v69 = v96;
  (*(v96 + 16))(v90, v128, v114);
  v70 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v70 - 8) + 56))(v98, 1, 1, v70);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v71 = type metadata accessor for TaskPriority();
  v72 = v101;
  (*(*(v71 - 8) + 56))(v101, 1, 1, v71);
  v73 = v91;
  v74 = v112;
  v107(v91, v110, v112);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v75 = static AirDropActor.shared;
  v76 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v77 = (v104 + 32) & v106;
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  *(v78 + 24) = v76;
  v87(v78 + v77, v73, v74);

  v79 = sub_1002B2B00(0, 0, v72, &unk_10080B5E8, v78);
  (*(v121 + 8))(v119, v116);
  (*(v118 + 8))(v117, v120);
  (*(v68 + 8))(v105, v115);
  (*(v69 + 8))(v128, v114);
  (*(v93 + 8))(v110, v74);
  v80 = v102;
  (*(v99 + 32))(v102, v122, v100);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v80 + *(result + 52)) = v79;
  return result;
}

void sub_10058ADEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v219 = a1;
  v209 = a2;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v197 = v170 - v3;
  v4 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  __chkstk_darwin(v4 - 8);
  v194 = v170 - v5;
  v208 = type metadata accessor for SFAirDrop.DeclineAction();
  v6 = *(v208 - 8);
  v7 = __chkstk_darwin(v208);
  v193 = v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v200 = v170 - v9;
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v190 = *(v10 - 8);
  __chkstk_darwin(v10);
  v191 = v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v206 = *(v12 - 8);
  __chkstk_darwin(v12);
  v216 = v170 - v13;
  v14 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v213 = *(v14 - 8);
  v214 = v14;
  v15 = __chkstk_darwin(v14);
  v185 = (v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v186 = (v170 - v18);
  v19 = __chkstk_darwin(v17);
  v199 = v170 - v20;
  v21 = __chkstk_darwin(v19);
  v201 = v170 - v22;
  v23 = __chkstk_darwin(v21);
  v184 = v170 - v24;
  v25 = __chkstk_darwin(v23);
  v183 = v170 - v26;
  __chkstk_darwin(v25);
  v198 = v170 - v27;
  v218 = type metadata accessor for SFAirDropReceive.AskRequest();
  v212 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for SFPlatform();
  v29 = *(v225 - 8);
  __chkstk_darwin(v225);
  v31 = v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Date();
  v221 = *(v32 - 8);
  v222 = v32;
  v33 = __chkstk_darwin(v32);
  v203 = v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = v170 - v35;
  v220 = type metadata accessor for UUID();
  v228 = *(v220 - 8);
  v37 = __chkstk_darwin(v220);
  v192 = v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v202 = v170 - v40;
  __chkstk_darwin(v39);
  v42 = v170 - v41;
  v227 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v223 = *(v227 - 8);
  v43 = __chkstk_darwin(v227);
  v215 = v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v44;
  __chkstk_darwin(v43);
  v233 = v170 - v45;
  v205 = v10;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v226 = v42;
  v46 = 0x706F7244726941;
  UUID.init()();
  v224 = v36;
  static Date.now.getter();
  v47 = String._bridgeToObjectiveC()();
  v48 = SFLocalizedStringForKey();

  if (v48)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v210 = v49;
  }

  else
  {
    v210 = 0xE700000000000000;
  }

  v207 = v12;
  v196 = v6;
  static SFPlatform.visionOS.getter();
  v50 = static SFPlatform.isPlatform(_:)();
  v51 = *(v29 + 8);
  v189 = v29 + 8;
  v188 = v51;
  v51(v31, v225);
  v195 = v46;
  if ((v50 & 1) == 0)
  {
    v57 = v217;
    SFAirDropReceive.Transfer.askRequest.getter();
    sub_10049F300();
    v182 = v58;
    v60 = v59;
    v187 = *(v212 + 8);
    v187(v57, v218);
    v61 = String._bridgeToObjectiveC()();
    v62 = SFLocalizedStringForKey();

    if (v62)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v70 = v228;
    v229 = v63;
    v230 = v65;
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    v71 = v211;
    Optional.tryUnwrap(_:file:line:)();
    if (v71)
    {

      (*(v221 + 8))(v224, v222);
      (*(v70 + 8))(v226, v220);
      goto LABEL_15;
    }

    v211 = v231;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1007F8A70;
    v83 = v217;
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.senderDisplayName.getter();
    v187(v83, v218);
    v84 = String._bridgeToObjectiveC()();

    v85 = SFTruncateAirDropSenderNameForUI();

    if (v85)
    {
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      *(v82 + 56) = &type metadata for String;
      v89 = sub_100026764();
      *(v82 + 32) = v86;
      *(v82 + 40) = v88;
      *(v82 + 96) = &type metadata for String;
      *(v82 + 104) = v89;
      v90 = v182;
      *(v82 + 64) = v89;
      *(v82 + 72) = v90;
      *(v82 + 80) = v60;
      v180 = static String.localizedStringWithFormat(_:_:)();
      v179 = v91;
      v81 = v213;
      goto LABEL_20;
    }

LABEL_42:
    __break(1u);
    return;
  }

  v52 = String._bridgeToObjectiveC()();
  v53 = SFLocalizedStringForKey();

  if (v53)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v66 = v213;
  v67 = v228;
  v68 = v226;
  v229 = v54;
  v230 = v56;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  v69 = v211;
  Optional.tryUnwrap(_:file:line:)();
  if (v69)
  {

    (*(v221 + 8))(v224, v222);
    (*(v67 + 8))(v68, v220);
LABEL_15:
    (*(v223 + 8))(v233, v227);
    return;
  }

  v72 = v66;

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1007F5670;
  v74 = v217;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.senderDisplayName.getter();
  v187 = *(v212 + 8);
  v187(v74, v218);
  v75 = String._bridgeToObjectiveC()();

  v76 = SFTruncateAirDropSenderNameForUI();

  if (!v76)
  {
    __break(1u);
    goto LABEL_42;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  *(v73 + 56) = &type metadata for String;
  *(v73 + 64) = sub_100026764();
  *(v73 + 32) = v77;
  *(v73 + 40) = v79;
  v180 = static String.localizedStringWithFormat(_:_:)();
  v179 = v80;
  v81 = v72;
LABEL_20:

  v92 = sub_10049F1E0();
  v181 = 0;
  v176 = v31;
  if (v94 == 2)
  {
    sub_1003C3F0C(v92, v93, 2u);
    v95 = String._bridgeToObjectiveC()();
    v96 = SFLocalizedStringForKey();

    if (v96)
    {
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
    }

    else
    {
      v99 = 0xE800000000000000;
      v97 = 0x65756E69746E6F43;
    }

    v105 = v183;
    *v183 = v97;
    *(v105 + 1) = v99;
    v106 = v214;
    v174 = v81[13];
    v174(v105, enum case for SFAirDrop.ButtonConfiguration.text(_:), v214);
    v107 = v198;
    v173 = v81[4];
    v173(v198, v105, v106);
    v108 = 0xEA00000000007974;
    v109 = 0x656661536D6D6F43;
  }

  else
  {
    sub_1003C3F0C(v92, v93, v94);
    v100 = String._bridgeToObjectiveC()();
    v101 = SFLocalizedStringForKey();

    if (v101)
    {
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
    }

    else
    {
      v104 = 0xE400000000000000;
      v102 = 2003789907;
    }

    v110 = v184;
    *v184 = 0x6C6C69662E657965;
    *(v110 + 1) = 0xE800000000000000;
    *(v110 + 2) = v102;
    *(v110 + 3) = v104;
    v106 = v214;
    v174 = v81[13];
    v174(v110, enum case for SFAirDrop.ButtonConfiguration.symbolText(_:), v214);
    v107 = v198;
    v173 = v81[4];
    v173(v198, v110, v106);
    v108 = 0x8000000100795DF0;
    v109 = 0xD000000000000010;
  }

  v231 = 0x2D747065636341;
  v232 = 0xE700000000000000;
  v111 = v108;
  String.append(_:)(*&v109);

  v170[0] = v232;
  v172 = v81[2];
  v170[1] = v81 + 2;
  v172(v201, v107, v106);
  (*(v190 + 13))(v191, enum case for SFAirDropReceive.ItemDestination.default(_:), v205);
  v112 = v223;
  v113 = *(v223 + 16);
  v114 = v215;
  v115 = v227;
  v184 = (v223 + 16);
  v183 = v113;
  (v113)(v215, v233, v227);
  v116 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v211 = *(v112 + 80);
  v170[2] = v116 + v204;
  v117 = swift_allocObject();
  v118 = *(v112 + 32);
  v171 = v116;
  v119 = v112 + 32;
  v120 = v118;
  v182 = v119;
  v118(v117 + v116, v114, v115);
  v121 = sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v122 = sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v175 = sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v177 = v122;
  v178 = v121;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v123 = v176;
  static SFPlatform.visionOS.getter();
  v124 = static SFPlatform.isPlatform(_:)();
  v188(v123, v225);
  v190 = v120;
  if (v124)
  {
    v125 = String._bridgeToObjectiveC()();
    v126 = SFLocalizedStringForKey();

    v127 = v220;
    v128 = v221;
    if (v126)
    {
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;
    }

    else
    {
      v131 = 0xE600000000000000;
      v129 = 0x6574656C6544;
    }

    v136 = v199;
    v137 = v186;
    v138 = v211;
    *v186 = v129;
    v139 = v222;
  }

  else
  {
    v132 = String._bridgeToObjectiveC()();
    v133 = SFLocalizedStringForKey();

    v127 = v220;
    v128 = v221;
    if (v133)
    {
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v135;
    }

    else
    {
      v131 = 0xE700000000000000;
      v134 = 0x656E696C636544;
    }

    v139 = v222;
    v138 = v211;
    v137 = v185;
    *v185 = v134;
    v136 = v199;
  }

  v225 = ~v138;
  v137[1] = v131;
  v141 = v213;
  v140 = v214;
  v174(v137, enum case for SFAirDrop.ButtonConfiguration.text(_:), v214);
  v173(v136, v137, v140);
  v172(v201, v136, v140);
  v142 = v215;
  v143 = v227;
  (v183)(v215, v233, v227);
  v144 = swift_allocObject();
  v190(v144 + v171, v142, v143);
  v145 = v127;
  v146 = v200;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  (*(v228 + 16))(v202, v226, v145);
  (*(v128 + 16))(v203, v224, v139);
  sub_10028088C(&qword_100974EA8, &qword_1007F82E8);
  v147 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v148 = *(v147 - 8);
  v149 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1007F5670;
  v151 = v150 + v149;
  sub_10028088C(&qword_10097B140, &qword_1007FE418);
  (*(v206 + 16))(v151, v216, v207);
  UUID.init()();
  (*(v148 + 104))(v151, enum case for SFAirDrop.AcceptAction.single<A>(_:), v147);
  v152 = v146;
  v153 = v141;
  v154 = v196;
  (*(v196 + 16))(v193, v152, v208);
  UUID.init()();
  v155 = v217;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.items.getter();
  v187(v155, v218);
  v156 = v194;
  SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
  v157 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v157 - 8) + 56))(v156, 0, 1, v157);
  v158 = v227;
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v159 = type metadata accessor for TaskPriority();
  v160 = v197;
  (*(*(v159 - 8) + 56))(v197, 1, 1, v159);
  v161 = v215;
  (v183)();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v162 = static AirDropActor.shared;
  v163 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v164 = (v211 + 32) & v225;
  v165 = swift_allocObject();
  *(v165 + 16) = v162;
  *(v165 + 24) = v163;
  v190(v165 + v164, v161, v158);

  v166 = sub_1002B282C(0, 0, v160, &unk_10080B5D8, v165);
  (*(v154 + 8))(v200, v208);
  v167 = v153[1];
  v168 = v214;
  v167(v199, v214);
  (*(v206 + 8))(v216, v207);
  v167(v198, v168);
  (*(v221 + 8))(v224, v222);
  (*(v228 + 8))(v226, v220);
  (*(v223 + 8))(v233, v158);
  v169 = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v209 + *(v169 + 52)) = v166;
}

uint64_t sub_10058C73C(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v26 = a5;
  v28 = a3;
  v29 = a2;
  v30 = a1;
  v7 = type metadata accessor for SFAirDrop.TransferType();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropReceive.AskRequest();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFPlatform();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.visionOS.getter();
  v18 = static SFPlatform.isPlatform(_:)();
  v19 = *(v15 + 8);
  v19(v17, v14);
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    if (v29)
    {
      v21 = a4;
    }

    else
    {
      v21 = v28 ^ 1 | a4;
    }

    static SFPlatform.macOS.getter();
    v22 = static SFPlatform.isPlatform(_:)();
    v19(v17, v14);
    if (v22)
    {
      v21 = (*(v27 + 32))(v26);
    }

    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.type.getter();
    (*(v11 + 8))(v13, v10);
    v23 = SFAirDrop.TransferType.isLinks.getter();
    (*(v31 + 8))(v9, v32);
    v20 = v21 & (v23 ^ 1);
  }

  return v20 & 1;
}

uint64_t sub_10058C9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983F80);
  v1 = sub_10000C4AC(v0, qword_100983F80);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10058CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  sub_10028088C(&unk_100983FC0, &qword_10080B618);
  v5[6] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  sub_10028088C(&qword_100976928, &qword_1007F98A8);
  v5[18] = swift_task_alloc();
  v10 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v5[21] = *(v11 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v5[24] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058CDB4, v12, 0);
}

uint64_t sub_10058CDB4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100592C6C(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[18], &qword_100976928, &qword_1007F98A8);
    SFProgressContinuation.task.getter();
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = sub_10058D0D4;
    v5 = v0[15];
    v6 = v0[3];

    return SFProgressTask.finalValue.getter(v6, v5);
  }

  else
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[20];
    v10 = v0[19];
    v11 = v0[11];
    v12 = v0[8];
    v26 = v0[10];
    v13 = v0[7];
    v25 = v0[5];
    v14 = *(v9 + 32);
    v14(v7, v0[18], v10);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    (*(v9 + 16))(v8, v7, v10);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    v0[27] = v17;
    v14(v17 + v16, v8, v10);
    (*(v12 + 16))(v26, v25, v13);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    v0[28] = v19;
    (*(v12 + 32))(v19 + v18, v26, v13);
    v20 = swift_task_alloc();
    v0[29] = v20;
    *v20 = v0;
    v20[1] = sub_10058D250;
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[12];

    return concurrentRace<A>(priority:operation:against:)(v21, v22, &unk_10080B628, v17, &unk_10080B638, v19, v23);
  }
}

uint64_t sub_10058D0D4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = v2[24];
  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v4 = sub_10058D5B0;
  }

  else
  {
    v4 = sub_10058D4EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10058D250()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 192);
  sub_100005508(*(v2 + 88), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_10058D7D8;
  }

  else
  {
    v4 = sub_10058D3E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10058D3E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  (*(v0[20] + 8))(v0[23], v0[19]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10058D4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058D5B0()
{
  v0[2] = v0[26];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  v4 = v0[6];
  if (v2)
  {
    v3(v4, 0, 1, v1);
    sub_100005508(v4, &unk_100983FC0, &qword_10080B618);
    swift_willThrow();
  }

  else
  {
    v3(v4, 1, 1, v1);
    sub_100005508(v4, &unk_100983FC0, &qword_10080B618);
    type metadata accessor for CancellationError();
    sub_100592EB4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10058D7D8()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v0[2] = v0[30];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  v4 = v0[6];
  if (v2)
  {
    v3(v4, 0, 1, v1);
    sub_100005508(v4, &unk_100983FC0, &qword_10080B618);
    swift_willThrow();
  }

  else
  {
    v3(v4, 1, 1, v1);
    sub_100005508(v4, &unk_100983FC0, &qword_10080B618);
    type metadata accessor for CancellationError();
    sub_100592EB4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10058DA18(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DB20, v4, 0);
}

uint64_t sub_10058DB20()
{
  sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10058DBE4;
  v2 = *(v0 + 32);

  return SFProgressTask.finalValue.getter(v0 + 16, v2);
}

uint64_t sub_10058DBE4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);

  v4 = (v3 + 8);
  if (v0)
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];

    (*v4)(v6, v7);
    v8 = sub_1005930D8;
    v9 = v5;
  }

  else
  {
    v11 = v2[6];
    v10 = v2[7];
    v12 = v2[4];

    (*v4)(v11, v12);
    v8 = sub_10058DD74;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10058DD74()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for SFAirDropReceive.Failure.askDismissed(_:), v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10058DE88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DF90, v4, 0);
}

uint64_t sub_10058DF90()
{
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003C1614;
  v2 = v0[4];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_10058E054(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *a2, v7);
  sub_10028088C(a3, a4);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_10058E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DF90, v6, 0);
}

uint64_t sub_10058E254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for SFInterventionResponse();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100983FA8, &qword_10080B5C8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058E3BC, v8, 0);
}

uint64_t sub_10058E3BC()
{
  sub_10028088C(&qword_100983FA0, &qword_10080B5B0);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_10058E47C;
  v2 = v0[7];
  v3 = v0[8];

  return SFProgressTask.finalValue.getter(v2, v3);
}

uint64_t sub_10058E47C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_10058E7FC;
  }

  else
  {
    v7 = sub_10058E604;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10058E604()
{
  v1 = (*(v0[6] + 88))(v0[7], v0[5]);
  if (v1 == enum case for SFInterventionResponse.accept(_:))
  {
    v2 = v0[4];
    v3 = v0[2];
    v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v4 - 8) + 16))(v3, v2, v4);

    v5 = v0[1];
LABEL_5:

    return v5();
  }

  if (v1 == enum case for SFInterventionResponse.reject(_:))
  {
    v6 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropReceive.Failure.declined(_:), v6);
    swift_willThrow();

    v5 = v0[1];
    goto LABEL_5;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10058E7FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropReceive.Transfer();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100983F80);
  (*(v10 + 16))(v12, a1, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v16 = 136315138;
    SFAirDropReceive.Transfer.id.getter();
    sub_100592EB4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v26 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
    v20 = sub_10000C4E4(v17, v19, &v29);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Transfer %s was cancelled.", v16, 0xCu);
    sub_10000C60C(v25);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v21 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, enum case for SFAirDropReceive.Failure.receiverCancelled(_:), v21);
  type metadata accessor for SFProgressTask();
  SFProgressTask.cancel(_:)();
}

uint64_t sub_10058EC48()
{
  v0 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100983F80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "openRequest was dismissed.", v7, 2u);
  }

  (*(v1 + 104))(v3, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.finish(with:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10058EE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for SFAirDropReceive.Transfer();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = *(v10 + 64);
  v6[13] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v6[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058EFC4, v11, 0);
}

uint64_t sub_10058EFC4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[6];
  v19 = v0[5];
  v8 = v0[3];
  v20 = v0[4];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v5);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v0[16] = v11;
  (*(v3 + 32))(v11 + v10, v2, v5);
  (*(v6 + 16))(v4, v19, v7);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 16) = v20;
  (*(v6 + 32))(v13 + v12, v4, v7);
  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *v14 = v0;
  v14[1] = sub_10058F1F0;
  v16 = v0[14];
  v17 = v0[2];

  return concurrentRace<A>(priority:operation:against:)(v17, v16, &unk_10080B580, v11, &unk_10080B590, v13, v15);
}

uint64_t sub_10058F1F0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 152) = v0;

  sub_100005508(v3, &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v5 = *(v2 + 120);

    return _swift_task_switch(sub_10058F3C8, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10058F3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058F440(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10041C3D8, v4, 0);
}

uint64_t sub_10058F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058F700, v7, 0);
}

uint64_t sub_10058F700(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  *(v1 + 120) = v6;
  *v6 = v1;
  v6[1] = sub_10058F7F4;

  return sub_10002ED10(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_10058F7F4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_10058FC60;
  }

  else
  {
    v7 = sub_10058F97C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10058F97C()
{
  v29 = v0;
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100983F80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v25 = v0[8];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315138;
    v26 = v7;
    SFAirDropReceive.Transfer.id.getter();
    sub_100592EB4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v25);
    v19 = sub_10000C4E4(v16, v18, &v28);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v26, ".waitingForOpenResponse request timeout for transfer %s", v15, 0xCu);
    sub_10000C60C(v27);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[2];
  v21 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
  v22 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v22 - 8) + 104))(v20, v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10058FC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = type metadata accessor for SFAirDropReceive.Transfer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1002A9938(a2, v19);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_1000121F8(v19, v16 + 16);
  *(v16 + 56) = a3;
  (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v13, &qword_100976160, &qword_1007F8770);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_10058FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100590030, v6, 0);
}

uint64_t sub_100590030()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  SFAirDropReceive.Transfer.receiveID.getter();
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10059017C;
  v5 = v0[7];
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_10059017C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  *(v4 + 88) = a1;
  *(v4 + 80) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_10059043C;
  }

  else
  {
    v9 = sub_100590310;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100590310()
{
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100983F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Move to App finished with success: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10059043C()
{
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100983F80);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Move to App threw error %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005905E8(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v31 = v3;
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v37 = &v30 - v5;
  v35 = type metadata accessor for UUID();
  v30 = *(v35 - 8);
  v6 = *(v30 + 64);
  v7 = __chkstk_darwin(v35);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v30 - v9;
  v10 = type metadata accessor for SFAirDrop.TransferType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDropReceive.AskRequest();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.type.getter();
  (*(v15 + 8))(v17, v14);
  LOBYTE(v17) = SFAirDrop.TransferType.isFiles.getter();
  result = (*(v11 + 8))(v13, v10);
  if (v17)
  {
    v19 = v36;
    SFAirDropReceive.Transfer.receiveID.getter();
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
    v21 = v32;
    v22 = v33;
    v23 = v34;
    (*(v33 + 16))(v32, a1, v34);
    v24 = v30;
    v25 = v35;
    (*(v30 + 16))(v8, v19, v35);
    v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v27 = (v31 + *(v24 + 80) + v26) & ~*(v24 + 80);
    v28 = swift_allocObject();
    (*(v22 + 32))(v28 + v26, v21, v23);
    (*(v24 + 32))(v28 + v27, v8, v25);
    v29 = v37;
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v29, &qword_100976160, &qword_1007F8770);
    return (*(v24 + 8))(v36, v25);
  }

  return result;
}

void *sub_100590A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v152 = a6;
  v165 = a5;
  v158 = a4;
  LODWORD(v155) = a3;
  v167 = a2;
  v145 = a1;
  v148 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v151 = *(v148 - 8);
  v8 = __chkstk_darwin(v148);
  v154 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v139 - v10;
  v147 = type metadata accessor for SFAirDropReceive.Transfer();
  v144 = *(v147 - 8);
  v11 = __chkstk_darwin(v147);
  v142 = v12;
  v149 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a7;
  v156 = *(a7 - 8);
  __chkstk_darwin(v11);
  v157 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v169 = *(v164 - 8);
  v162 = *(v169 + 64);
  __chkstk_darwin(v164);
  v163 = &v139 - v14;
  v174 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v168 = *(v174 - 8);
  v15 = __chkstk_darwin(v174);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v170 = (&v139 - v18);
  v19 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v20 = *(v19 - 8);
  v172 = v19;
  v173 = v20;
  v21 = __chkstk_darwin(v19);
  v150 = (&v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v171 = (&v139 - v23);
  v161 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v166 = *(v161 - 8);
  v24 = __chkstk_darwin(v161);
  v141 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v140 = &v139 - v27;
  v28 = __chkstk_darwin(v26);
  v146 = &v139 - v29;
  v30 = __chkstk_darwin(v28);
  v143 = &v139 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v139 - v33;
  __chkstk_darwin(v32);
  v36 = &v139 - v35;
  v37 = type metadata accessor for SFPlatform();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100981228, &qword_1008075A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007F8830;
  static SFPlatform.iOS.getter();
  static SFPlatform.watchOS.getter();
  static SFPlatform.visionOS.getter();
  v177 = v41;
  sub_100592EB4(&qword_100981230, &type metadata accessor for SFPlatform, &protocol conformance descriptor for SFPlatform);
  sub_10028088C(&qword_100981238, &qword_1008075A8);
  sub_100592524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = static SFPlatform.isPlatform(_:)();
  v43 = *(v38 + 8);
  v43(v40, v37);
  if (v42)
  {
    if (v155)
    {
      v44 = _swiftEmptyArrayStorage;
      v46 = v166;
      v45 = v167;
LABEL_21:
      (*(v156 + 16))(v157, v159, v160);
      sub_10028088C(&qword_100982538, &qword_100808E98);
      if (swift_dynamicCast())
      {
        sub_1000121F8(v175, &v177);
        v90 = v178;
        v91 = v179;
        sub_10002CDC0(&v177, v178);
        if ((*(v91 + 8))(v45, v90, v91))
        {
          v92 = 0x8000000100795D20;
          v93 = 0xD000000000000013;
          if (v152)
          {
            v93 = 0x662E7265646C6F66;
            v92 = 0xEB000000006C6C69;
          }

          v94 = v150;
          *v150 = v93;
          v94[1] = v92;
          v95 = v172;
          v96 = v173;
          (*(v173 + 104))(v94, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v172);
          v166 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
          (*(v96 + 16))(v171, v94, v95);
          v97 = v170;
          *v170 = 0xD000000000000034;
          v97[1] = 0x800000010078AA10;
          (*(v168 + 104))();
          sub_1002A9938(&v177, v175);
          v98 = v144;
          v99 = v147;
          (*(v144 + 16))(v149, v145, v147);
          v100 = v169;
          v101 = v163;
          v102 = v164;
          (*(v169 + 16))(v163, v165, v164);
          v103 = (*(v98 + 80) + 64) & ~*(v98 + 80);
          v104 = (v142 + *(v100 + 80) + v103) & ~*(v100 + 80);
          v105 = swift_allocObject();
          sub_1000121F8(v175, v105 + 16);
          *(v105 + 56) = v167;
          (*(v98 + 32))(v105 + v103, v149, v99);
          v106 = v161;
          (*(v100 + 32))(v105 + v104, v101, v102);
          sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
          sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
          sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);

          v107 = v143;
          SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
          UUID.init()();
          (*(v46 + 104))(v107, enum case for SFAirDrop.AcceptAction.single<A>(_:), v106);
          v108 = v146;
          (*(v46 + 16))(v146, v107, v106);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_10028E7FC(0, v44[2] + 1, 1, v44);
          }

          v110 = v44[2];
          v109 = v44[3];
          if (v110 >= v109 >> 1)
          {
            v44 = sub_10028E7FC((v109 > 1), v110 + 1, 1, v44);
          }

          (*(v46 + 8))(v107, v106);
          (*(v173 + 8))(v150, v172);
          v44[2] = v110 + 1;
          (*(v46 + 32))(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v110, v108, v106);
        }

        sub_10000C60C(&v177);
      }

      else
      {
        v176 = 0;
        memset(v175, 0, sizeof(v175));
        sub_100005508(v175, &qword_100982540, &unk_100808EA0);
      }

      return v44;
    }

    if (v152)
    {
      v59 = String._bridgeToObjectiveC()();
      v60 = SFLocalizedStringForKey();

      if (!v60)
      {
        v61 = 0xE700000000000000;
        v62 = 0x70704120746547;
LABEL_18:
        v155 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
        v81 = v171;
        v80 = v172;
        *v171 = v62;
        v81[1] = v61;
        (*(v173 + 104))(v81, enum case for SFAirDrop.ButtonConfiguration.text(_:), v80);
        (*(v168 + 16))(v170, v158, v174);
        v82 = v169;
        v83 = v163;
        v84 = v164;
        (*(v169 + 16))(v163, v165, v164);
        v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
        v86 = swift_allocObject();
        (*(v82 + 32))(v86 + v85, v83, v84);
        sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
        UUID.init()();
        v46 = v166;
        v87 = v161;
        (*(v166 + 104))(v36, enum case for SFAirDrop.AcceptAction.single<A>(_:), v161);
        (*(v46 + 16))(v34, v36, v87);
        v44 = sub_10028E7FC(0, 1, 1, _swiftEmptyArrayStorage);
        v89 = v44[2];
        v88 = v44[3];
        if (v89 >= v88 >> 1)
        {
          v44 = sub_10028E7FC((v88 > 1), v89 + 1, 1, v44);
        }

        v45 = v167;
        (*(v46 + 8))(v36, v87);
        v44[2] = v89 + 1;
        (*(v46 + 32))(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v89, v34, v87);
        goto LABEL_21;
      }
    }

    else
    {
      v63 = String._bridgeToObjectiveC()();
      v60 = SFLocalizedStringForKey();

      if (!v60)
      {
        v61 = 0xE400000000000000;
        v62 = 2003134806;
        goto LABEL_18;
      }
    }

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v64;

    goto LABEL_18;
  }

  static SFPlatform.macOS.getter();
  v47 = static SFPlatform.isPlatform(_:)();
  v43(v40, v37);
  if ((v47 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v48 = v168;
  v49 = *(v168 + 16);
  v50 = v158;
  v51 = v174;
  v49(v17, v158, v174);
  v52 = (*(v48 + 88))(v17, v51);
  v53 = enum case for SFAirDropReceive.ItemDestination.default(_:);
  (*(v48 + 8))(v17, v51);
  if (v52 != v53)
  {
    return _swiftEmptyArrayStorage;
  }

  v54 = String._bridgeToObjectiveC()();
  v55 = SFLocalizedStringForKey();

  if (v55)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v58 = 0xEE007265646E6946;
    v56 = 0x206E6920776F6853;
  }

  v65 = v171;
  *v171 = v56;
  v65[1] = v58;
  v66 = *(v173 + 104);
  LODWORD(v160) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v173 += 104;
  v159 = v66;
  v66(v65);
  v49(v170, v50, v174);
  v67 = v169;
  v68 = v163;
  v69 = v164;
  v156 = *(v169 + 16);
  (v156)(v163, v165, v164);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v71 = swift_allocObject();
  v72 = *(v67 + 32);
  v169 = v67 + 32;
  v155 = v72;
  v72(v71 + v70, v68, v69);
  v73 = sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v74 = sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v157 = sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v158 = v74;
  v167 = v73;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v75 = String._bridgeToObjectiveC()();
  v76 = SFLocalizedStringForKey();

  if (v76)
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
  }

  else
  {
    v79 = 0xE400000000000000;
    v77 = 1852141647;
  }

  v112 = v171;
  v111 = v172;
  *v171 = v77;
  v112[1] = v79;
  v159(v112, v160, v111);
  v113 = v170;
  *v170 = 0xD000000000000024;
  v113[1] = 0x8000000100795CB0;
  (*(v168 + 104))(v113, enum case for SFAirDropReceive.ItemDestination.customApp(_:), v174);
  v114 = v163;
  v115 = v164;
  (v156)(v163, v165, v164);
  v116 = swift_allocObject();
  v155(v116 + v70, v114, v115);
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v117 = String._bridgeToObjectiveC()();
  v118 = SFLocalizedStringForKey();

  if (v118)
  {
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;
  }

  else
  {
    v121 = 0xE700000000000000;
    v119 = 0x736E6F6974704FLL;
  }

  v122 = v166;
  v123 = v148;
  sub_10028088C(&qword_100983F98, &qword_10080B598);
  v125 = v171;
  v124 = v172;
  *v171 = v119;
  v125[1] = v121;
  v159(v125, v160, v124);
  sub_10028088C(&qword_100974F10, &qword_1007F8328);
  v126 = v151;
  v127 = *(v151 + 72);
  v128 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1007F8A70;
  v130 = v129 + v128;
  v131 = *(v126 + 16);
  v131(v130, v154, v123);
  v131(v130 + v127, v153, v123);
  v132 = v140;
  SFAirDrop.AcceptAction.Composite.init(buttonConfiguration:actions:)();
  UUID.init()();
  v133 = v161;
  (*(v122 + 104))(v132, enum case for SFAirDrop.AcceptAction.composite<A>(_:), v161);
  v134 = v141;
  (*(v122 + 16))(v141, v132, v133);
  v44 = sub_10028E7FC(0, 1, 1, _swiftEmptyArrayStorage);
  v136 = v44[2];
  v135 = v44[3];
  if (v136 >= v135 >> 1)
  {
    v44 = sub_10028E7FC((v135 > 1), v136 + 1, 1, v44);
  }

  (*(v122 + 8))(v132, v133);
  v137 = *(v151 + 8);
  v137(v154, v123);
  v137(v153, v123);
  v44[2] = v136 + 1;
  (*(v122 + 32))(v44 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v136, v134, v133);
  return v44;
}

uint64_t sub_100592174()
{
  sub_10028088C(&qword_10097D438, &unk_100801D30);

  return sub_10058EC48();
}

uint64_t sub_1005921E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100005C00;

  return sub_10058EE14(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_100592358(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058F440(a1, v1 + v5);
}

uint64_t sub_100592440(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10058F548(a1, v6, v1 + v5);
}

unint64_t sub_100592524()
{
  result = qword_100981240;
  if (!qword_100981240)
  {
    sub_100280938(&qword_100981238, &qword_1008075A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981240);
  }

  return result;
}

uint64_t sub_100592588(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v7 = *(v1 + 56);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10058FCDC(a1, v1 + 16, v7, v1 + v4, v8);
}

uint64_t sub_100592670(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10058FF30(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_10059276C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100983FA0, &qword_10080B5B0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10058E254(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1005928C8(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10058E14C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005929C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for SFProgressTask() - 8);
  v8 = v0 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10058E86C(v0 + v5, v8, v1, v2, v3);
}

uint64_t sub_100592ADC(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10052CC44(a1, v6, v7, v1 + v5);
}

uint64_t sub_100592C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100592CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100592D4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10058CAB8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100592EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100592EFC(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_1009764E8, &qword_1007F9790) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058DA18(a1, v1 + v5);
}

uint64_t sub_100592FE4(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058DE88(a1, v1 + v5);
}

double sub_1005930E8()
{
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100983FD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting to advertise for PIN Pairing", v3, 2u);
  }

  NWListener.stateUpdateHandler.setter();
  NWListener.newConnectionHandler.setter();
  NWListener.start(queue:)();
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  sub_1005C2A08();

  return sub_100593A30();
}

void sub_100593254()
{
  v1 = v0;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983FD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping temp pairing server", v5, 2u);
  }

  if (v1[9])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v1[9] = 0;
    swift_unknownObjectRelease();
  }

  NWListener.cancel()();
  v6 = v1[8];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    NWConnection.cancel()();
  }

LABEL_16:
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  sub_1005C2D24();
  v9 = v1[3];
  if (v9)
  {
    v10 = v1[4];

    v9(v11);

    sub_1002F5A40(v9, v10);
  }
}

uint64_t sub_1005934B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983FD0);
  v1 = sub_10000C4AC(v0, qword_100983FD0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100593578()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100282710(v0, qword_100983FE8);
  *sub_10000C4AC(v0, qword_100983FE8) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_100593608(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100983FD0);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_10000C4E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Pairing listener state changed: %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

void sub_100593878(void *a1)
{
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100983FD0);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Pairing listener new connection: %s", v3, 0xCu);
    sub_10000C60C(v4);
  }

  else
  {
  }
}

double sub_100593A30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = __chkstk_darwin(v2);
  v39 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v38 = &v32 - v5;
  v6 = type metadata accessor for DispatchTime();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = __chkstk_darwin(v6);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v35 = &v32 - v9;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v13 = *(v32 - 8);
  __chkstk_darwin(v32);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v0 + 72) = 0;
    swift_unknownObjectRelease();
  }

  sub_10042B59C();
  static OS_dispatch_source.TimerFlags.strict.getter();
  v20 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v19, v16);
  *(v1 + 72) = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1005943EC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8148;
  v23 = _Block_copy(aBlock);

  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v23);
  (*(v10 + 8))(v12, v33);
  (*(v13 + 8))(v15, v32);

  v24 = v34;
  static DispatchTime.now()();
  if (qword_100973AB0 != -1)
  {
    swift_once();
  }

  v25 = v41;
  sub_10000C4AC(v41, qword_100983FE8);
  v26 = v35;
  + infix(_:_:)();
  v27 = v37;
  v36 = *(v36 + 8);
  (v36)(v24, v37);
  v28 = v38;
  sub_1002EAB84(v38);
  v29 = v39;
  sub_1002EABF8(v39);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v30 = *(v40 + 8);
  v30(v29, v25);
  v30(v28, v25);
  (v36)(v26, v27);
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100593FCC(uint64_t a1)
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = qword_1009735E0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = static AirDropActor.shared;
    v9 = sub_10002CE80();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v5;

    sub_1002B3098(0, 0, v3, &unk_10080B6A0, v10);
  }

  return result;
}

uint64_t sub_10059415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005941F8, v5, 0);
}

uint64_t sub_1005941F8()
{
  sub_100594258();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100594258()
{
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100983FD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timer fired, stopping server", v3, 2u);
  }

  sub_100593254();
}

uint64_t sub_100594344()
{
  sub_1002F5A40(*(v0 + 24), *(v0 + 32));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100594394()
{
  sub_100594344();

  return swift_deallocClassInstance();
}

uint64_t sub_1005943F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10059415C(a1, v4, v5, v6);
}

uint64_t sub_1005944AC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100594568()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009840D0);
  v1 = sub_10000C4AC(v0, qword_1009840D0);
  if (qword_1009736D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100594680(uint64_t a1, uint64_t (*a2)(void), const char *a3, SEL *a4)
{
  a2();
  v8 = String.init(cString:)();
  v10 = v9;
  if (qword_100973AB8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009840D0);
  v12 = v4;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v15 = 136315394;
    sub_1002A9924(*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
    v16 = String.init<A>(describing:)();
    v22 = a1;
    v18 = a4;
    v19 = sub_10000C4E4(v16, v17, &v23);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_10000C4E4(v8, v10, &v23);

    *(v15 + 14) = v20;
    a4 = v18;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return [*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] *a4];
}

id sub_1005948A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer] = 0;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue] = a1;
  v11 = &v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  *v11 = a2;
  *(v11 + 1) = a3;
  *(v11 + 2) = a4;
  v12 = objc_allocWithZone(CBAdvertiser);
  v13 = a1;
  sub_1002A9924(a2, a3);
  v14 = [v12 init];
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] = v14;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, "init");
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  [v18 addObserver:v17 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  sub_10028BCC0(a2, a3);
  return v17;
}

void sub_100594A00(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue];
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = (v8 + 104);
  v46 = *(v8 + 104);
  v46(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v11;
  v15 = _dispatchPreconditionTest(_:)();
  v45 = *(v8 + 8);
  v45(v10, v7);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v43 = a1;
  v44 = a2;
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
  [*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] setDispatchQueue:v14];
  v42 = v16;
  v17 = *&v4[v16];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = sub_100597968;
  v52 = v18;
  aBlock = _NSConcreteStackBlock;
  v3 = 1107296256;
  v48 = 1107296256;
  v49 = sub_100011678;
  v50 = &unk_1008E8278;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  [v20 setAdvertisingAddressChangedHandler:v19];
  _Block_release(v19);

  *v10 = v14;
  v46(v10, v12, v7);
  v21 = _dispatchPreconditionTest(_:)();
  v45(v10, v7);
  if ((v21 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  v13 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  v22 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8];
  if (v22 >> 60 != 15)
  {
    v23 = v13[2];
    v24 = *v13;
    sub_100294008(*v13, *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
    LOBYTE(aBlock) = BYTE1(v23) & 1;
    sub_100596D58(v24, v22, v23 & 0xFFFFFFFFFFFF00FFLL | ((BYTE1(v23) & 1) << 8));
    sub_10028BCC0(v24, v22);
  }

  sub_1005954A8();
  if (qword_100973AB8 != -1)
  {
    goto LABEL_17;
  }

LABEL_6:
  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_1009840D0);
  v26 = v4;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    if (v13[1] >> 60 == 15)
    {
      v31 = 0x6E4979627261654ELL;
    }

    else
    {
      v31 = 0x706F7244726941;
    }

    if (v13[1] >> 60 == 15)
    {
      v32 = 0xEC00000032566F66;
    }

    else
    {
      v32 = 0xE700000000000000;
    }

    v33 = sub_10000C4E4(v31, v32, &aBlock);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Starting to advertise for %s", v29, 0xCu);
    sub_10000C60C(v30);
  }

  v35 = v43;
  v34 = v44;
  v36 = *&v4[v42];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v35;
  v38[4] = v34;
  v51 = sub_100597998;
  v52 = v38;
  aBlock = _NSConcreteStackBlock;
  v48 = v3;
  v49 = sub_1005CC610;
  v50 = &unk_1008E82C8;
  v39 = _Block_copy(&aBlock);
  v40 = v36;
  sub_1002F5A3C(v35, v34);

  [v40 activateWithCompletion:v39];
  _Block_release(v39);
}