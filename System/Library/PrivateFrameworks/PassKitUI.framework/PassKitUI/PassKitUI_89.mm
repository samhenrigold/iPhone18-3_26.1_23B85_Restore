unint64_t sub_1BD966F28()
{
  v1 = v0;
  v49 = sub_1BE04AF64();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v50 = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *&v0[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__yearlyGroups];
  v50 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v46 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentYear;
    v47 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar;
    sub_1BE048C84();
    v39 = v16;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v44 = v16 & 0xFFFFFFFFFFFFFF8;
    v45 = v16 & 0xC000000000000001;
    v43 = *MEMORY[0x1E6969A68];
    v41 = (v2 + 8);
    v42 = (v6 + 104);
    v40 = (v6 + 8);
    while (1)
    {
      if (v45)
      {
        v26 = MEMORY[0x1BFB40900](v25, v16);
      }

      else
      {
        if (v25 >= *(v44 + 16))
        {
          goto LABEL_23;
        }

        v26 = *(v16 + 8 * v25 + 32);
      }

      v27 = v26;
      v6 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v2 = v48;
      (*v42)(v48, v43, v5);
      v28 = [v27 startDate];
      sub_1BE04AEE4();

      v29 = sub_1BE04B2E4();
      (*v41)(v4, v49);
      (*v40)(v2, v5);
      if (v29 == *&v1[v46] || ![v27 transactionCount])
      {
      }

      else
      {
        sub_1BE0538C4();
        v2 = v1;
        sub_1BE0538F4();
        v16 = v39;
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v25;
      if (v6 == i)
      {
        v30 = v50;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v39, v18, v19, v20, v21, v22, v23, v24;
  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      return v30;
    }

    goto LABEL_20;
  }

  if (!*(v30 + 16))
  {
LABEL_20:
    v30, v31, v32, v33, v34, v35, v36, v37;
    return 0;
  }

  return v30;
}

unint64_t sub_1BD967304(void *a1)
{
  v53 = a1;
  v52 = sub_1BE04AF64();
  v2 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04B2D4();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v62 = v1;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v61 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__monthlyGroups);
  v62 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v48 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar;
    sub_1BE048C84();
    if (!i)
    {
      break;
    }

    v23 = 0;
    v47 = v14 & 0xC000000000000001;
    v46 = v14 & 0xFFFFFFFFFFFFFF8;
    v60 = *MEMORY[0x1E6969A68];
    v42 = (v2 + 8);
    v43 = (v4 + 13);
    v41[1] = v4 + 1;
    v44 = i;
    v45 = v14;
    ++v4;
    while (1)
    {
      if (v47)
      {
        v24 = MEMORY[0x1BFB40900](v23, v14);
      }

      else
      {
        if (v23 >= *(v46 + 16))
        {
          goto LABEL_22;
        }

        v24 = *(v14 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v59 = v23 + 1;
      v56 = *v43;
      v26 = v49;
      v27 = v50;
      v56(v49, v60, v50);
      v28 = [v25 startDate];
      v29 = v51;
      sub_1BE04AEE4();

      v57 = sub_1BE04B2E4();
      v58 = v25;
      v55 = *v42;
      v2 = v52;
      v55(v29, v52);
      v54 = *v4;
      v54(v26, v27);
      v56(v26, v60, v27);
      v30 = [v53 startDate];
      sub_1BE04AEE4();

      v31 = sub_1BE04B2E4();
      v55(v29, v2);
      v54(v26, v27);
      if (v57 == v31)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      v14 = v45;
      ++v23;
      if (v59 == v44)
      {
        v32 = v62;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v14, v16, v17, v18, v19, v20, v21, v22;
  if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      return v32;
    }

    goto LABEL_19;
  }

  if (!*(v32 + 16))
  {
LABEL_19:
    v32, v33, v34, v35, v36, v37, v38, v39;
    return 0;
  }

  return v32;
}

void *sub_1BD967794@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = (v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  result = sub_1BD550B20(v12, v13, v14, v15, v16, v17);
  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  return result;
}

void sub_1BD967884(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD59CA0, 0x1E69B8EB0);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

double sub_1BD967970(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  sub_1BE048C84();
  return result;
}

double sub_1BD967A14@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  *a4 = *(v6 + *a3);
  sub_1BE048C84();
  return result;
}

void sub_1BD967ACC(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *(v5 + *a2);
  v10 = sub_1BE048C84();
  LOBYTE(a3) = a3(v10, a1);
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (a3)
  {
    v25 = *(v5 + v8);
    *(v5 + v8) = a1;

    v25, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    a1, v34, v35, v36, v37, v38, v39, v40;
  }
}

id sub_1BD967C2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  *a2 = v12;

  return v12;
}

void sub_1BD967CEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD967D1C(v1);
}

void sub_1BD967D1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t type metadata accessor for TransactionsModel(uint64_t a1)
{
  result = qword_1EBD59C88;
  if (!qword_1EBD59C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BD967F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 8);
  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 16);
  v15 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 24);
  v16 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 32);
  v17 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 40);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v17;
  return sub_1BD550B20(v12, v13, v14, v15, v16, v17);
}

void sub_1BD967FC8(_OWORD *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD9680A4(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 8);
  v5 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 16);
  v6 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 24);
  v7 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 32);
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo + 40);
  v9 = a2[1];
  *v2 = *a2;
  v2[1] = v9;
  v2[2] = a2[2];
  sub_1BD96CA70(a2, &v10);
  sub_1BD550B80(v3, v4, v5, v6, v7, v8);
}

void sub_1BD96817C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection);
  sub_1BD0E5E8C(0, &qword_1EBD59CB0, 0x1E69B9300);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

id sub_1BD968304(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + *a2);

  return v12;
}

id sub_1BD9683B4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + *a3);
  *a4 = v15;

  return v15;
}

void sub_1BD968478(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher);
  sub_1BD0E5E8C(0, &qword_1EBD59CA8, 0x1E69B8788);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

double sub_1BD9685EC()
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  sub_1BE048C84();
  return result;
}

double sub_1BD9686AC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  sub_1BE048C84();
  return result;
}

void sub_1BD968774(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD968840(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BD9688C4(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

void sub_1BD968964(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight);
}

void sub_1BD968A14(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }
}

void sub_1BD968B18()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v119 = *(v2 - 8);
  v120 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v118 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v116 - v5;
  KeyPath = swift_getKeyPath();
  v121 = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v121 = v0;
  v14 = swift_getKeyPath();
  sub_1BE04B5B4();
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  v23 = sub_1BD96A094();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  swift_endAccess();
  v121 = v0;
  v30 = swift_getKeyPath();
  sub_1BE04B5A4();
  v30, v31, v32, v33, v34, v35, v36, v37;
  if (v25)
  {
    v38 = swift_getKeyPath();
    v121 = v0;
    sub_1BE04B594();
    v38, v39, v40, v41, v42, v43, v44, v45;
    v52 = *(v0 + v22);
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = (v52 + 48);
      while (1)
      {
        if (v27 < *v54)
        {
          v55 = *(v54 - 1);
          v56 = *(v54 - 2) == v23 && v25 == v55;
          if (v56 || (sub_1BE053B84() & 1) != 0)
          {
            break;
          }
        }

        v54 += 4;
        if (!--v53)
        {
          goto LABEL_15;
        }
      }

      v25, v55, v46, v47, v48, v49, v50, v51;
      v29, v57, v58, v59, v60, v61, v62, v63;
      v64 = v117;
      sub_1BE04D1E4();
      v65 = sub_1BE04D204();
      v66 = sub_1BE052C54();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        *(v67 + 4) = v27;
        _os_log_impl(&dword_1BD026000, v65, v66, "Don't process the request with priority %ld, we have since recieved a newer one", v67, 0xCu);
        MEMORY[0x1BFB45F20](v67, -1, -1);
      }

      (*(v119 + 8))(v64, v120);
      v68 = swift_getKeyPath();
      v121 = v1;
      sub_1BE04B594();
      v68, v69, v70, v71, v72, v73, v74, v75;
      if (*(*(v1 + v22) + 16))
      {
        sub_1BD968B18();
      }
    }

    else
    {
LABEL_15:
      v76 = swift_getKeyPath();
      v121 = v1;
      sub_1BE04B594();
      v76, v77, v78, v79, v80, v81, v82, v83;
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight))
      {
        v25, v84, v85, v86, v87, v88, v89, v90;
        v29, v91, v92, v93, v94, v95, v96, v97;
        v98 = v118;
        sub_1BE04D1E4();
        v99 = sub_1BE04D204();
        v100 = sub_1BE052C54();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_1BD026000, v99, v100, "Request is currently in flight - skipping", v101, 2u);
          MEMORY[0x1BFB45F20](v101, -1, -1);
        }

        (*(v119 + 8))(v98, v120);
      }

      else
      {
        sub_1BD969994(v23, v25, v27, v29);
        v25, v102, v103, v104, v105, v106, v107, v108;
        v29, v109, v110, v111, v112, v113, v114, v115;
      }
    }
  }
}

id TransactionsModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (![*&v0[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] isAppleCardPass])
  {
    goto LABEL_4;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    [result unregisterObserver_];

LABEL_4:
    sub_1BD0E5E8C(0, &qword_1EBD59C30, 0x1E696ABB0);
    v4 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v4 removeObserver_];

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver_];

    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_dealloc);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TransactionsModel.transactionsChanged(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  KeyPath = swift_getKeyPath();
  v48 = v1;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
  v13 = *&v1[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v52 = sub_1BD96B33C;
  v53 = v14;
  v48 = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1BD967884;
  v51 = &block_descriptor_221;
  v15 = _Block_copy(&v48);
  v16 = v53;
  v17 = v13;
  v18 = v2;
  v16, v19, v20, v21, v22, v23, v24, v25;
  [v17 transactionCountByPeriod:4 withCompletion:v15];
  _Block_release(v15);

  v26 = swift_getKeyPath();
  v48 = v18;
  sub_1BE04B594();
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = *&v2[v12];
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  v52 = sub_1BD96B37C;
  v53 = v35;
  v48 = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1BD967884;
  v51 = &block_descriptor_18_2;
  v36 = _Block_copy(&v48);
  v37 = v53;
  v38 = v18;
  v39 = v34;
  v37, v40, v41, v42, v43, v44, v45, v46;
  [v39 transactionCountByPeriod:8 withCompletion:v36];
  _Block_release(v36);

  if (rawValue)
  {
    v47 = sub_1BE048C84();
    sub_1BD967ACC(v47, &OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions, sub_1BD400D28, &unk_1BE107BF0, sub_1BD96C8AC);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD96957C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    v13.value._rawValue = v5;
    TransactionsModel.transactionsChanged(_:)(v13);
    v5, v6, v7, v8, v9, v10, v11, v12;
  }
}

uint64_t sub_1BD969600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = v27;
  v31 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v28;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  sub_1BE048C84();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v29);
}

void sub_1BD9698E4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD967ACC(v11, a3, sub_1BD400D3C, a4, a5);
  }
}

void sub_1BD969994(void *a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v41 = a1;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] == 1)
  {
    v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v40 = a3;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v39 - 2) = v4;
    *(&v39 - 8) = 1;
    aBlock[0] = v4;
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a3 = v40;
  }

  sub_1BE04D1E4();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = a3;
    _os_log_impl(&dword_1BD026000, v21, v22, "Processing update request with priority %ld", v23, 0xCu);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (a4)
  {
    sub_1BD96B540(a4, v5, a3, v41, a2);
  }

  else
  {
    v24 = [objc_opt_self() sharedInstance];
    if (v24)
    {
      v25 = v24;
      v26 = v41;
      v27 = sub_1BE052404();
      v28 = swift_allocObject();
      v28[2] = v5;
      v28[3] = a3;
      v28[4] = v26;
      v28[5] = a2;
      v28[6] = a3;
      v28[7] = 0;
      aBlock[4] = sub_1BD96CAF8;
      v43 = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD30A6F0;
      aBlock[3] = &block_descriptor_86_1;
      v29 = _Block_copy(aBlock);
      v30 = v43;
      v31 = v5;
      sub_1BE048C84();
      v30, v32, v33, v34, v35, v36, v37, v38;
      [v25 accountUsersForAccountWithIdentifier:v27 completion:v29];
      _Block_release(v29);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD969D1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a6;
  v12 = sub_1BE051F54();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE051FA4();
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v36 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v20 = v34;
  v19 = v35;
  v18[4] = a3;
  v18[5] = v20;
  v18[6] = a5;
  v18[7] = v19;
  v18[8] = a7;
  aBlock[4] = sub_1BD96CBB0;
  v40 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_97_3;
  v21 = _Block_copy(aBlock);
  v22 = v40;
  sub_1BE048C84();
  sub_1BE048C84();
  v23 = a2;
  sub_1BE048C84();
  v22, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v31 = v36;
  MEMORY[0x1BFB3FDF0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v38 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v37);
}

void sub_1BD96A020(uint64_t a1, char *a2, uint64_t a3, void *a4, const char *a5)
{
  if (a1)
  {
    v9 = sub_1BD1DA5C8(a1);
    sub_1BD96B540(v9, a2, a3, a4, a5);

    v9, v10, v11, v12, v13, v14, v15, v16;
  }
}

char *sub_1BD96A094()
{
  v1 = *v0;
  if (!*(*v0 + 2))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v10 = *(v1 + 2);
    if (v10)
    {
LABEL_4:
      result = *&v1[32 * v10];
      *(v1 + 2) = v10 - 1;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1BD4FFF90(v1, v3, v4, v5, v6, v7, v8, v9);
    v1 = result;
    v10 = *(result + 2);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD96A114()
{
  KeyPath = swift_getKeyPath();
  v24[0] = v0;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 accountIdentifier];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24[4] = sub_1BD96C898;
      v25 = v15;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1BD14E1D8;
      v24[3] = &block_descriptor_47_3;
      v16 = _Block_copy(v24);
      v25, v17, v18, v19, v20, v21, v22, v23;
      [v13 accountWithIdentifier:v14 completion:v16];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD96A2DC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1BD96C8A0;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_53_2;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  sub_1BE048964();
  v16 = a1;
  v17 = a2;
  v15, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v27 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v26);
}

void sub_1BD96A5C0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      if (!a3)
      {
        v7 = a2;
        TransactionsModel.updateModelWithAccount(updatedAccount:)(v7);

        v6 = v7;
      }
    }
  }
}

void sub_1BD96A684()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v124 - v5;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v126 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04A2D4();
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v130 = sub_1BE052434();
  v131 = v16;
  sub_1BE0537C4();
  if (!v15[2] || (v24 = sub_1BD149040(aBlock), (v17 & 1) == 0))
  {
    v15, v17, v18, v19, v20, v21, v22, v23;
    sub_1BD149CE8(aBlock);
LABEL_13:
    sub_1BE04D1E4();
    v84 = sub_1BE04D204();
    v85 = sub_1BE052C54();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1BD026000, v84, v85, "Unable to extract unique id from userInfo, canceling update of pass settings", v86, 2u);
      MEMORY[0x1BFB45F20](v86, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return;
  }

  v125 = v8;
  sub_1BD038CD0(v15[7] + 32 * v24, v132);
  sub_1BD149CE8(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_13;
  }

  v32 = v131;
  v124 = v130;
  v130 = sub_1BE052434();
  v131 = v33;
  sub_1BE0537C4();
  if (!v15[2] || (v41 = sub_1BD149040(aBlock), (v34 & 1) == 0))
  {
    v15, v34, v35, v36, v37, v38, v39, v40;
    v32, v87, v88, v89, v90, v91, v92, v93;
    sub_1BD149CE8(aBlock);
LABEL_19:
    sub_1BE04D1E4();
    v94 = sub_1BE04D204();
    v95 = sub_1BE052C54();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1BD026000, v94, v95, "Unable to extract pass settings from userInfo, canceling update of pass settings", v96, 2u);
      MEMORY[0x1BFB45F20](v96, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return;
  }

  sub_1BD038CD0(v15[7] + 32 * v41, v132);
  sub_1BD149CE8(aBlock);
  v15, v42, v43, v44, v45, v46, v47, v48;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32, v49, v50, v51, v52, v53, v54, v55;
    goto LABEL_19;
  }

  v56 = v130;
  v57 = v127;
  v58 = [*&v127[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] uniqueID];
  if (!v58)
  {
    v32, v59, v60, v61, v62, v63, v64, v65;
    return;
  }

  v66 = v58;
  v67 = sub_1BE052434();
  v69 = v68;

  if (v124 == v67 && v32 == v69)
  {
    v32, v70, v71, v72, v73, v74, v75, v76;
    v69, v77, v78, v79, v80, v81, v82, v83;
LABEL_25:
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v112 = sub_1BE052D54();
    v113 = swift_allocObject();
    *(v113 + 16) = v56;
    *(v113 + 24) = v57;
    aBlock[4] = sub_1BD96C848;
    v129 = v113;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_40_5;
    v114 = _Block_copy(aBlock);
    v115 = v129;
    v116 = v57;
    v115, v117, v118, v119, v120, v121, v122, v123;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD96C850(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v13, v10, v114);
    _Block_release(v114);

    (*(v125 + 8))(v10, v7);
    (*(v126 + 8))(v13, v11);
    return;
  }

  v97 = sub_1BE053B84();
  v32, v98, v99, v100, v101, v102, v103, v104;
  v69, v105, v106, v107, v108, v109, v110, v111;
  if (v97)
  {
    goto LABEL_25;
  }
}

void sub_1BD96AD08(unint64_t a1, uint64_t a2)
{
  if (((a1 >> 3) & 1 ^ *(a2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled) = (a1 & 8) >> 3;
  }
}

id TransactionsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BD96AFAC(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = a1;
  v4 = [v3 creditDetails];
  if (!v4)
  {

LABEL_14:
    v6 = 0;
LABEL_15:
    v8 = 0;
LABEL_16:
    v13 = 0;
LABEL_17:
    v11 = 0;
LABEL_18:
    v7 = 0;
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 accountSummary];
  if (!v6)
  {

    goto LABEL_15;
  }

  v7 = [v5 currencyCode];
  if (!v7)
  {

    v6 = 0;
    v8 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v8 = [v5 cardBalance];
  if (!v8)
  {

    v6 = 0;
    goto LABEL_16;
  }

  v9 = [v5 rates];
  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v6 creditLimit];
  if (!v11)
  {

LABEL_26:
    v6 = 0;
    v8 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  v12 = [v6 availableCredit];
  if (!v12)
  {

    v6 = 0;
    v8 = 0;
    v13 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v13 = PKCurrencyAmountCreate(v11, v7);
  if (!v13)
  {

    v6 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v19 = v11;
  v14 = v12;
  v11 = PKCurrencyAmountCreate(v14, v7);

  if (!v11)
  {

    goto LABEL_26;
  }

  v18 = v14;
  v15 = [v10 formattedAPRForPurchasesPercentageString];
  if (v15)
  {
    v17 = v15;
    v7 = sub_1BE052434();
    v12 = v16;

LABEL_20:
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v13;
    a2[3] = v11;
    a2[4] = v7;
    a2[5] = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_1BD96B2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59C20, &qword_1BE107A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD96B3C4(uint64_t a1)
{
  result = sub_1BE04B2F4();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1BD96B540(unint64_t a1, char *a2, uint64_t a3, void *a4, const char *a5)
{
  v148 = MEMORY[0x1E69E7CD0];
  v8 = [*&a2[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] paymentPass];
  if (!v8)
  {
    goto LABEL_51;
  }

  v9 = v8;
  v142 = a5;
  v10 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

  v11 = v10;
  sub_1BD2A5D88(v147, v11);

  v143 = a2;
  if (a1 >> 62)
  {
    v12 = sub_1BE053704();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v12 < 1)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v13 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v13, a1);
    }

    else
    {
      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    sub_1BD2A5D88(v147, [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccountUser_]);
  }

  while (v12 != v13);
LABEL_11:
  v16 = v148;
  v17 = objc_allocWithZone(MEMORY[0x1E69B9300]);
  sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
  sub_1BD96CB08();
  v137 = v16;
  v18 = sub_1BE052A24();
  v19 = [v17 initWithTransactionSources_];

  v20 = v143;
  sub_1BD96817C(v19);
  KeyPath = swift_getKeyPath();
  v147[0] = v143;
  sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = *&v143[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection];
  v30 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v31 = v29;
  v32 = [v30 init];
  v33 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v31 paymentDataProvider:v32];

  if (!v33)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v136 = v11;
  sub_1BD968478(v33);
  v34 = swift_getKeyPath();
  v147[0] = v143;
  sub_1BE04B594();
  v34, v35, v36, v37, v38, v39, v40, v41;
  [*&v143[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] setDelegate_];
  v42 = swift_getKeyPath();
  v147[0] = v143;
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  v147[0] = v143;
  v50 = swift_getKeyPath();
  sub_1BE04B5B4();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
  swift_beginAccess();
  v145 = v58;
  v66 = *&v143[v58];
  v67 = *(v66 + 2);
  v68 = v142;
  if (v67)
  {
    v69 = 0;
    v70 = 0;
    while (1)
    {
      v71 = &v66[v69];
      if (*&v66[v69 + 48] < a3)
      {
        v59 = *(v71 + 5);
        v72 = *(v71 + 4) == a4 && v59 == v142;
        if (v72 || (sub_1BE053B84() & 1) != 0)
        {
          break;
        }
      }

      ++v70;
      v69 += 32;
      if (v67 == v70)
      {
        goto LABEL_40;
      }
    }

    v73 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_50;
    }

    v74 = *(v66 + 2);
    while (v73 != v74)
    {
      if (v73 >= v74)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v86 = *&v66[v69 + 64];
      v85 = *&v66[v69 + 72];
      v87 = *&v66[v69 + 80];
      if (v87 >= a3 || ((v60 = a4, v86 == a4) ? (v88 = v85 == v68) : (v88 = 0), !v88 && (sub_1BE053B84() & 1) == 0))
      {
        if (v73 != v70)
        {
          if (v70 >= v74)
          {
            goto LABEL_46;
          }

          v89 = &v66[32 * v70 + 32];
          v90 = v20;
          v91 = *(v89 + 1);
          v139 = *(v89 + 2);
          v140 = *v89;
          v92 = *(v89 + 3);
          v141 = *&v66[v69 + 88];
          sub_1BE048C84();
          v138 = v91;
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v90[v145] = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_1BD4FFF90(v66, v94, v95, v96, v97, v98, v99, v100);
            *&v90[v145] = v66;
          }

          v101 = &v66[32 * v70];
          v102 = *(v101 + 5);
          v103 = *(v101 + 7);
          *(v101 + 4) = v86;
          *(v101 + 5) = v85;
          *(v101 + 6) = v87;
          *(v101 + 7) = v141;
          v102, v94, v95, v96, v97, v98, v99, v100;
          v103, v104, v105, v106, v107, v108, v109, v110;
          v20 = v143;
          *&v143[v145] = v66;
          if (v73 >= *(v66 + 2))
          {
            goto LABEL_47;
          }

          v75 = &v66[v69];
          v76 = *&v66[v69 + 72];
          v77 = *&v66[v69 + 88];
          *(v75 + 8) = v140;
          *(v75 + 9) = v138;
          *(v75 + 10) = v139;
          *(v75 + 11) = v92;
          v76, v111, v112, v113, v114, v115, v116, v117;
          v77, v78, v79, v80, v81, v82, v83, v84;
          *&v143[v145] = v66;
          v68 = v142;
        }

        ++v70;
      }

      ++v73;
      v74 = *(v66 + 2);
      v69 += 32;
    }
  }

  else
  {
LABEL_40:
    v70 = v67;
  }

  v137, v59, v60, v61, v62, v63, v64, v65;
  v118 = *(v66 + 2);
  if (v118 < v70)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1BD1DE5BC(v70, v118);
  swift_endAccess();
  v147[0] = v20;
  v119 = swift_getKeyPath();
  sub_1BE04B5A4();
  v119, v120, v121, v122, v123, v124, v125, v126;
  v127 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight;
  if (v20[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight])
  {
    v128 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v128);
    v147[0] = v20;
    sub_1BE04B584();
    v128, v129, v130, v131, v132, v133, v134, v135;
  }

  else
  {

    v20[v127] = 0;
  }
}

void sub_1BD96BBF4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v137 = a3;
  v138 = a1;
  v139 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1BE04AF64();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B2F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__yearlyGroups] = v15;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__monthlyGroups] = v15;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account] = 0;
  v16 = &v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo];
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue] = v15;
  v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__requestInFlight] = 0;
  sub_1BE04B5C4();
  sub_1BE04B1E4();
  sub_1BE04AEF4();
  v131 = v12;
  v17 = *(v12 + 16);
  v133 = v11;
  v17(&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_calendar], v14, v11);
  v18 = *(v6 + 104);
  v18(v8, *MEMORY[0x1E6969A68], v5);
  v19 = sub_1BE04B2E4();
  v20 = *(v6 + 8);
  v20(v8, v5);
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentYear] = v19;
  v18(v8, *MEMORY[0x1E6969A78], v5);
  v132 = v10;
  v130 = v14;
  v21 = sub_1BE04B2E4();
  v20(v8, v5);
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_currentMonth] = v21;
  v22 = v138;
  v23 = v139;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass] = v138;
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_settingsModel] = v23;
  v24 = v22;
  sub_1BE048964();
  v25 = [v24 paymentPass];
  if (!v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

  v28 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection] = v28;
  v29 = objc_allocWithZone(MEMORY[0x1E69B8BD8]);
  v30 = v28;
  v31 = [v29 init];
  v32 = objc_allocWithZone(MEMORY[0x1E69B8788]);
  v33 = v30;
  v34 = [v32 initWithTransactionSourceCollection:v33 paymentDataProvider:v31];

  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] = v34;
  v35 = [v24 settings];
  v4[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled] = (v35 & 8) != 0;
  v142.receiver = v4;
  v142.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v142, sel_init);
  v37 = v137;
  if (v137)
  {
    v38 = v137;
    sub_1BD967D1C(v37);
    sub_1BD96AFAC(v37, v143);
    if (v143[0])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v127 - 2) = v36;
      *(&v127 - 1) = v143;
      aBlock[0] = v36;
      sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
      sub_1BE04B584();
      sub_1BD96B2D4(v143);
      KeyPath, v40, v41, v42, v43, v44, v45, v46;
    }

    v138 = v33;
    v139 = v27;
    ObjectType = v38;
    v47 = [(objc_class *)v38 accountIdentifier];
    if (v47)
    {
      v48 = v47;
      v129 = sub_1BE052434();
      v128 = v49;

      v50 = swift_getKeyPath();
      aBlock[0] = v36;
      sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
      sub_1BE04B594();
      v50, v51, v52, v53, v54, v55, v56, v57;
      v58 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__updateUsersRequestQueue;
      swift_beginAccess();
      v59 = *(*&v36[v58] + 16);
      v60 = swift_getKeyPath();
      aBlock[0] = v36;
      sub_1BE04B594();
      v60, v61, v62, v63, v64, v65, v66, v67;
      aBlock[0] = v36;
      v68 = swift_getKeyPath();
      sub_1BE04B5B4();
      v68, v69, v70, v71, v72, v73, v74, v75;
      swift_beginAccess();
      v76 = *&v36[v58];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36[v58] = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = sub_1BD1D8D50(0, *(v76 + 2) + 1, 1, v76, v78, v79, v80, v81);
        *&v36[v58] = v76;
      }

      v83 = *(v76 + 2);
      v82 = *(v76 + 3);
      if (v83 >= v82 >> 1)
      {
        v76 = sub_1BD1D8D50((v82 > 1), v83 + 1, 1, v76, v78, v79, v80, v81);
      }

      *(v76 + 2) = v83 + 1;
      v84 = &v76[32 * v83];
      v85 = v128;
      *(v84 + 4) = v129;
      *(v84 + 5) = v85;
      *(v84 + 6) = v59;
      *(v84 + 7) = 0;
      *&v36[v58] = v76;
      swift_endAccess();
      aBlock[0] = v36;
      v86 = swift_getKeyPath();
      sub_1BE04B5A4();
      v86, v87, v88, v89, v90, v91, v92, v93;

      v33 = v138;
      v27 = v139;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  if (![v24 isAppleCardPass])
  {
LABEL_15:
    sub_1BD0E5E8C(0, &qword_1EBD59C30, 0x1E696ABB0);
    v97 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v97 addObserver:v36 selector:sel_passSettingsDidChangeWithNotification_ name:*MEMORY[0x1E69BBF90] object:0];

    v98 = swift_getKeyPath();
    aBlock[0] = v36;
    sub_1BD96C850(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B594();
    v98, v99, v100, v101, v102, v103, v104, v105;
    v106 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher;
    [*&v36[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher] setDelegate_];
    v107 = swift_getKeyPath();
    aBlock[0] = v36;
    sub_1BE04B594();
    v107, v108, v109, v110, v111, v112, v113, v114;
    v115 = *&v36[v106];
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD96CC20;
    v141 = v116;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD56AD40;
    aBlock[3] = &block_descriptor_102_1;
    v117 = _Block_copy(aBlock);
    v118 = v141;
    v119 = v115;
    v118, v120, v121, v122, v123, v124, v125, v126;
    [v119 reloadTransactionsWithCompletion_];
    _Block_release(v117);

    sub_1BD968B18();
    (*(v134 + 8))(v132, v135);
    (*(v131 + 8))(v130, v133);
    return;
  }

  v94 = [objc_opt_self() sharedInstance];
  if (v94)
  {
    v95 = v94;
    [v94 registerObserver_];

    v96 = [objc_opt_self() defaultCenter];
    [v96 addObserver:v36 selector:sel_accountDidUpdate name:*MEMORY[0x1E69B9E60] object:0];

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD96C698(void *a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 merchant];
  if (v7 && (v8 = v7, v9 = [v7 displayName], v8, v9))
  {
    sub_1BE052434();
  }

  else
  {
    v10 = [a1 transactionDate];
    if (v10)
    {
      v11 = v10;
      sub_1BE04AEE4();

      v12 = sub_1BE04AE64();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v12 = 0;
    }

    v13 = PKRelativeDateString();

    if (v13)
    {
      sub_1BE052434();
      v15 = v14;

      sub_1BE0524C4();
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD96C850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD96C9EC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1BD96CA30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionFetcher) = v2;
  v4 = v2;
}

uint64_t sub_1BD96CA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59C20, &qword_1BE107A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD96CB08()
{
  result = qword_1EBD58560;
  if (!qword_1EBD58560)
  {
    sub_1BD0E5E8C(255, &unk_1EBD406C0, 0x1E69B92F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58560);
  }

  return result;
}

void sub_1BD96CB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection) = v2;
  v4 = v2;
}

void sub_1BD96CBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account);
  *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account) = v2;
  v4 = v2;
}

id sub_1BD96CC28(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 amount];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 currencyCode];
    if (v9)
    {
      v10 = v9;
      if ([a1 transactionStatus] != 3)
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        [v14 setNumberStyle_];
        [v14 setCurrencyCode_];

        v15 = [v14 stringFromNumber_];
        if (v15)
        {
          v16 = v15;
          v13 = sub_1BE052434();
        }

        else
        {

          return 0;
        }

        return v13;
      }
    }

    else
    {
      v10 = v8;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PaymentOfferSetupProvisioningMetadata(uint64_t a1)
{
  result = qword_1EBD59CB8;
  if (!qword_1EBD59CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD96CF68(uint64_t a1)
{
  sub_1BD3F7300(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BD96CFF0(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78, &unk_1BE0E4690);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*(a1 + 1) != *(a2 + 1) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1BD38F438(a1 + v14, v13);
  sub_1BD38F438(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1BD38F438(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1BD0DE53C(v13, &qword_1EBD44E78, &unk_1BE0E4690);
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BD96D338();
  v17 = sub_1BE052334();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (*(a1 + *(v22 + 28)) != *(a2 + *(v22 + 28)))
  {
    goto LABEL_11;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1BE053B84();
  }

  return v19 & 1;
}

unint64_t sub_1BD96D338()
{
  result = qword_1EBD5AAF0;
  if (!qword_1EBD5AAF0)
  {
    sub_1BE04AA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAF0);
  }

  return result;
}

uint64_t type metadata accessor for PassName(uint64_t a1)
{
  result = qword_1EBD59CC8;
  if (!qword_1EBD59CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD96D404(uint64_t a1)
{
  type metadata accessor for AvailablePass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD96D490(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD96D490(uint64_t a1)
{
  if (!qword_1EBD392F0)
  {
    sub_1BD131A80();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD392F0);
    }
  }
}

uint64_t sub_1BD96D504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v200 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE0, &qword_1BE107DE0);
  v198 = *(v3 - 8);
  v199 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v187 = (v184 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v186 = v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v185 = v184 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE8, &qword_1BE107DE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v197 = v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v202 = v184 - v12;
  v193 = sub_1BE050554();
  v13 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v194 = v184 - v16;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CF0, &qword_1BE107DF0);
  MEMORY[0x1EEE9AC00](v195);
  v18 = v184 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CF8, &qword_1BE107DF8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v196 = v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v201 = v184 - v22;
  v203 = sub_1BD96DDD4();
  v204 = v23;
  v184[1] = sub_1BD0DDEBC();
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *(type metadata accessor for PassName(0) + 24);
  v188 = a1;
  v184[0] = *(a1 + v31);
  v32 = sub_1BE0505F4();
  v34 = v33;
  LOBYTE(a1) = v35;
  v37 = v36;
  v38 = v26;
  v39 = v192;
  sub_1BD0DDF10(v24, v38, (v28 & 1), v36, v40, v41, v42, v43);
  v30, v44, v45, v46, v47, v48, v49, v50;
  v51 = sub_1BE051224();
  v190 = sub_1BE050564();
  v189 = v52;
  v54 = v53;
  v191 = v55;
  v51, v52, v53, v55, v56, v57, v58, v59;
  v60 = v34;
  v61 = v193;
  sub_1BD0DDF10(v32, v60, (a1 & 1), v62, v63, v64, v65, v66);
  v37, v67, v68, v69, v70, v71, v72, v73;
  KeyPath = swift_getKeyPath();
  v75 = *(v13 + 104);
  v75(v39, *MEMORY[0x1E6980FB0], v61);
  if (PKBankConnectEnabled())
  {
    (*(v13 + 8))(v39, v61);
    v75(v39, *MEMORY[0x1E6980FA8], v61);
  }

  v76 = *(v13 + 32);
  v77 = v194;
  v76(v194, v39, v61);
  v78 = swift_getKeyPath();
  v79 = &v18[*(v195 + 36)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410);
  v76(v79 + *(v80 + 28), v77, v61);
  *v79 = v78;
  v81 = v189;
  *v18 = v190;
  *(v18 + 1) = v81;
  v18[16] = v54 & 1;
  *(v18 + 3) = v191;
  *(v18 + 4) = KeyPath;
  v82 = 1;
  *(v18 + 5) = 1;
  v18[48] = 0;
  sub_1BE052434();
  v84 = v83;
  sub_1BD96E11C();
  v85 = v201;
  sub_1BE050DE4();
  v84, v86, v87, v88, v89, v90, v91, v92;
  sub_1BD0DE53C(v18, &qword_1EBD59CF0, &qword_1BE107DF0);
  if (PKBankConnectEnabled())
  {
    v93 = sub_1BD494550();
    if (v94)
    {
      v203 = v93;
      v204 = v94;
      v95 = sub_1BE0506C4();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v102 = sub_1BE0505F4();
      v104 = v103;
      v106 = v105;
      v108 = v107;
      sub_1BD0DDF10(v95, v97, (v99 & 1), v107, v109, v110, v111, v112);
      v101, v113, v114, v115, v116, v117, v118, v119;
      v120 = sub_1BE051224();
      v121 = sub_1BE050564();
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v120, v122, v124, v126, v128, v129, v130, v131;
      sub_1BD0DDF10(v102, v104, (v106 & 1), v132, v133, v134, v135, v136);
      v108, v137, v138, v139, v140, v141, v142, v143;
      v144 = swift_getKeyPath();
      v203 = v121;
      v204 = v123;
      v145 = (v125 & 1);
      v205 = v125 & 1;
      v206 = v127;
      v207 = v144;
      v208 = 1;
      v209 = 0;
      sub_1BE052434();
      v147 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
      sub_1BD1B9C50();
      v148 = v185;
      v85 = v201;
      sub_1BE050DE4();
      v147, v149, v150, v151, v152, v153, v154, v155;
      sub_1BD0DDF10(v121, v123, v145, v156, v157, v158, v159, v160);
      v144, v161, v162, v163, v164, v165, v166, v167;
      v127, v168, v169, v170, v171, v172, v173, v174;
      v175 = v186;
      sub_1BD0DE19C(v148, v186, &qword_1EBD3C0E8, &qword_1BE0C4010);
      v176 = v187;
      *v187 = 0;
      *(v176 + 8) = 1;
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59D10, &qword_1BE107E68);
      sub_1BD0DE19C(v175, v176 + *(v177 + 48), &qword_1EBD3C0E8, &qword_1BE0C4010);
      sub_1BD0DE53C(v148, &qword_1EBD3C0E8, &qword_1BE0C4010);
      sub_1BD0DE53C(v175, &qword_1EBD3C0E8, &qword_1BE0C4010);
      sub_1BD96E1D4(v176, v202);
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }
  }

  v178 = v202;
  (*(v198 + 56))(v202, v82, 1, v199);
  v179 = v196;
  sub_1BD0DE19C(v85, v196, &qword_1EBD59CF8, &qword_1BE107DF8);
  v180 = v197;
  sub_1BD0DE19C(v178, v197, &qword_1EBD59CE8, &qword_1BE107DE8);
  v181 = v200;
  sub_1BD0DE19C(v179, v200, &qword_1EBD59CF8, &qword_1BE107DF8);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59D08, &qword_1BE107E60);
  sub_1BD0DE19C(v180, v181 + *(v182 + 48), &qword_1EBD59CE8, &qword_1BE107DE8);
  sub_1BD0DE53C(v178, &qword_1EBD59CE8, &qword_1BE107DE8);
  sub_1BD0DE53C(v85, &qword_1EBD59CF8, &qword_1BE107DF8);
  sub_1BD0DE53C(v180, &qword_1EBD59CE8, &qword_1BE107DE8);
  return sub_1BD0DE53C(v179, &qword_1EBD59CF8, &qword_1BE107DF8);
}

uint64_t sub_1BD96DDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v51 - v2;
  v4 = type metadata accessor for IdentityCredential(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BD49C818(v6);
  v11 = v10;
  v53 = v9;
  v54 = v10;
  v12 = WrappedPass.secureElementPass.getter();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isIdentityPass];

    if (v14)
    {
      v15 = type metadata accessor for AvailablePass(0);
      sub_1BD0DE19C(v0 + *(v15 + 24), v3, &qword_1EBD3F190, &qword_1BE0C5788);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_1BD0DE53C(v3, &qword_1EBD3F190, &qword_1BE0C5788);
      }

      else
      {
        v11, v16, v17, v18, v19, v20, v21, v22;
        sub_1BD697B1C(v3, v8);
        v9 = *&v8[*(v4 + 24)];
        sub_1BE048C84();
        sub_1BD96E244(v8);
      }

      return v9;
    }
  }

  v23 = type metadata accessor for AvailablePass(0);
  v24 = *(v0 + *(v23 + 56));
  if (v24 >> 62)
  {
    v50 = v23;
    v25 = sub_1BE053704();
    v23 = v50;
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = *(v0 + *(v23 + 60));
  if (v26 >> 62)
  {
    result = sub_1BE053704();
    v28 = v25 + result;
    if (!__OFADD__(v25, result))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v25 + result;
    if (!__OFADD__(v25, result))
    {
LABEL_9:
      if (v28 >= 2)
      {
        v29 = *(v0 + *(type metadata accessor for PassName(0) + 20));
        if (v29)
        {
          v30 = [v29 displayName];
          if (v30)
          {
            v31 = v30;
            v32 = sub_1BE052434();
            v34 = v33;

            v51 = 10272;
            v52 = 0xE200000000000000;
            MEMORY[0x1BFB3F610](v32, v34);
            v34, v35, v36, v37, v38, v39, v40, v41;
            MEMORY[0x1BFB3F610](41, 0xE100000000000000);
            v42 = v52;
            MEMORY[0x1BFB3F610](v51, v52);
            v42, v43, v44, v45, v46, v47, v48, v49;
            return v53;
          }
        }
      }

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD96E0C8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CD8, &qword_1BE107DD8);
  return sub_1BD96D504(v2, a2 + *(v4 + 44));
}

unint64_t sub_1BD96E11C()
{
  result = qword_1EBD59D00;
  if (!qword_1EBD59D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59CF0, &qword_1BE107DF0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318, &qword_1BE0BE410, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D00);
  }

  return result;
}

uint64_t sub_1BD96E1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59CE0, &qword_1BE107DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD96E244(uint64_t a1)
{
  v2 = type metadata accessor for IdentityCredential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD96E2A0(void *a1, uint64_t a2, void *a3, char a4)
{
  if (!a4)
  {
    sub_1BE053834();
    0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
    strcpy(v38, "linkable with ");
    HIBYTE(v38[1]) = -18;
    v18 = [a1 institutionIdentifier];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0x612064656B6E696CLL, 0xEF20746E756F6363);
    v6 = [a1 fullyQualifiedAccountIdentifier];
    v7 = [v6 accountID];

    v8 = sub_1BE052434();
    v10 = v9;

    MEMORY[0x1BFB3F610](v8, v10);
    v10, v11, v12, v13, v14, v15, v16, v17;
    MEMORY[0x1BFB3F610](0x206874697720, 0xE600000000000000);
    type metadata accessor for FKConsentStatus(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE143480);
    v18 = [a3 institutionIdentifier];
LABEL_5:
    v26 = v18;
    v27 = sub_1BE052434();
    v29 = v28;

    MEMORY[0x1BFB3F610](v27, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    return v38[0];
  }

  return 0x62616B6E696C6E75;
}

void *PKPassDetailBankConnectSectionController.sectionIdentifiers.getter()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 currentSegment])
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
  if (result)
  {
    if (![result activationState])
    {
      v9 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
      if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24])
      {
        if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
        {
          v10 = *(v9 + 1);
          v11 = *v9;
          v12 = [v11 isAccountEnabled];

          if ((v12 & (v10 == 0)) != 0)
          {
            v8 = &unk_1F3B8FA10;
          }

          else
          {
            v8 = &unk_1F3B8FA50;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v8 = &unk_1F3B8F9E0;
      }

      sub_1BE04D114();
      sub_1BE048C84();
      v13 = sub_1BE04D204();
      v14 = sub_1BE052C54();
      v8, v15, v16, v17, v18, v19, v20, v21;
      if (os_log_type_enabled(v13, v14))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v56 = v23;
        *v22 = 136315138;
        v24 = MEMORY[0x1BFB3F7F0](v8, MEMORY[0x1E69E6158]);
        v26 = v25;
        v8, v25, v27, v28, v29, v30, v31, v32;
        v33 = sub_1BD123690(v24, v26, &v56);
        v26, v34, v35, v36, v37, v38, v39, v40;
        *(v22 + 4) = v33;
        _os_log_impl(&dword_1BD026000, v13, v14, "Reloaded section identifiers for PKPassDetailBankConnectSectionController: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23, v41, v42, v43, v44, v45, v46, v47);
        MEMORY[0x1BFB45F20](v23, -1, -1);
        MEMORY[0x1BFB45F20](v22, -1, -1);
      }

      else
      {

        v8, v48, v49, v50, v51, v52, v53, v54;
      }

      (*(v3 + 8))(v6, v2);
      return v8;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

char *PKPassDetailBankConnectSectionController.init(pass:delegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  *&v3[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass] = 0;
  swift_unknownObjectWeakInit();
  v7 = *&v3[v6];
  *&v3[v6] = a1;
  v8 = a1;

  swift_unknownObjectWeakAssign();
  sub_1BE049DD4();
  v9 = [v8 primaryAccountIdentifier];
  sub_1BE052434();
  v11 = v10;

  v12 = sub_1BE049DB4();
  v11, v13, v14, v15, v16, v17, v18, v19;
  *&v3[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_accountProvider] = v12;
  *&v3[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_institutionMatcher] = [objc_allocWithZone(sub_1BE049DF4()) init];
  v20 = &v3[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = 0;
  v20[24] = 2;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = *&v21[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_accountProvider];
  v23 = v21;
  v24 = v22;
  sub_1BE049DC4();

  swift_unknownObjectRelease();
  return v23;
}

uint64_t PKPassDetailBankConnectSectionController.preflight()()
{
  v1[2] = v0;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_1BE0528A4();
  v1[8] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD96EB34, v4, v3);
}

uint64_t sub_1BD96EB34()
{
  if ([*(v0 + 16) detailViewStyle] == 2)
  {
    *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    sub_1BE04D114();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Running preflight for PKPassDetailBankConnectSectionController", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    v13 = *(v0 + 56);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);

    v16 = *(v15 + 8);
    *(v0 + 88) = v16;
    v16(v13, v14);
    v18 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_1BD96ED04;

    return v18();
  }
}

uint64_t sub_1BD96ED04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_1BD96EFA0;
  }

  else
  {
    v7 = sub_1BD96EE48;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD96EE48(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v10 = *(v8 + 104);
    sub_1BD96F4AC(v10);
  }

  else
  {
    sub_1BE04D114();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Did not find a stored account, starting institutions matching", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v8 + 88);
    v15 = *(v8 + 48);
    v16 = *(v8 + 24);

    v14(v15, v16);
    sub_1BD96F148();
  }

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD96EFA0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D114();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v8 + 112);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to preflight a Bank Connect section: %@", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  else
  {
  }

  (*(v8 + 88))(*(v8 + 40), *(v8 + 24));

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD96F148()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v9 = sub_1BE052D54();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1BD97616C;
  v26 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_69_2;
  v11 = _Block_copy(aBlock);
  v12 = v26;
  v13 = v1;
  v12, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
  result = PKRunningInViewService();
  if ((result & 1) == 0)
  {
    result = *&v13[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
    if (result)
    {
      v22 = [result fkPaymentPass];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BE049DE4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD96F4AC(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD976164;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_63_3;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = v2;
  v16 = a1;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

uint64_t sub_1BD96F8EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BE0528A4();
  v2[4] = sub_1BE052894();
  v4 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD96F984, v4, v3);
}

uint64_t sub_1BD96F984(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40) = _Block_copy(v10);
  v11 = v9;
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *v12 = v8;
  v12[1] = sub_1BD29AF2C;

  return PKPassDetailBankConnectSectionController.preflight()();
}

Swift::Void __swiftcall PKPassDetailBankConnectSectionController.update(pass:)(PKPaymentPass pass)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass];
  if (!v12 || (sub_1BD0E5E8C(0, &unk_1EBD40340, 0x1E69B8D08), v13 = pass.super.super.super.super.isa, v14 = v12, v15 = sub_1BE053074(), v13, v14, (v15 & 1) == 0))
  {
    sub_1BE04D114();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Updating pass in PKPassDetailBankConnectSectionController", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v19 = *&v2[v11];
    *&v2[v11] = pass;

    v20 = sub_1BE0528D4();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;
    v22 = pass.super.super.super.super.isa;
    v23 = v2;
    v24 = sub_1BD122C00(0, 0, v6, &unk_1BE107EA0, v21);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }
}

uint64_t sub_1BD96FCE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return PKPassDetailBankConnectSectionController.preflight()();
}

void *PKPassDetailBankConnectSectionController.connectedInstitution.getter()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v6 = *(v5 + 2);
    v7 = v6;
  }

  else
  {
    sub_1BE04D114();
    v8 = v0;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v11 = 136315138;
      v38 = v9;
      v12 = *v5;
      v13 = *(v5 + 1);
      v14 = *(v5 + 2);
      v15 = v5[24];
      sub_1BD9753A8(*v5, v13, v14, v15);
      v16 = sub_1BD96E2A0(v12, v13, v14, v15);
      HIDWORD(v37) = v10;
      v17 = v16;
      v19 = v18;
      sub_1BD9753F4(v12, v13, v14, v15);
      v20 = sub_1BD123690(v17, v19, &v40);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v11 + 4) = v20;
      v9 = v38;
      v28 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39, v29, v30, v31, v32, v33, v34, v35);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v6;
}

id PKPassDetailBankConnectSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassDetailBankConnectSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PKPassDetailBankConnectSectionController.accountDidChange(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    return;
  }

  v61 = v5;
  v62 = v8;
  v63 = v14;
  v64 = v13;
  v65 = v9;
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = *(v17 + 2);
  if (!a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    sub_1BD9753A8(v19, v18, v20, 1);
    v30 = sub_1BE052D54();
    v31 = swift_allocObject();
    v31[2] = v2;
    v31[3] = v20;
    v31[4] = v18;
    v70 = sub_1BD975440;
    v71 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_1BD126964;
    v69 = &block_descriptor_222;
    v32 = _Block_copy(&aBlock);
    v33 = v71;
    v34 = v2;
    v35 = v20;
    v33, v36, v37, v38, v39, v40, v41, v42;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v43 = v62;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v11, v32);
    _Block_release(v32);

LABEL_8:
    (*(v65 + 8))(v11, v43);
    (*(v63 + 8))(v16, v64);
    return;
  }

  sub_1BD0E5E8C(0, &unk_1EBD59D60, 0x1E6967D68);
  sub_1BD9753A8(v19, v18, v20, 1);
  v21 = v19;
  v22 = a1;
  v23 = v21;
  v24 = v22;
  v25 = sub_1BE053074();

  if ((v25 & 1) == 0)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v44 = v24;
    v45 = v23;
    v46 = v44;
    v30 = sub_1BE052D54();
    v47 = swift_allocObject();
    v47[2] = v2;
    v47[3] = v46;
    v47[4] = v18;
    v47[5] = v20;
    v70 = sub_1BD97544C;
    v71 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_1BD126964;
    v69 = &block_descriptor_14_5;
    v48 = _Block_copy(&aBlock);
    v49 = v71;
    v50 = v46;
    v51 = v2;
    v52 = v20;
    v49, v53, v54, v55, v56, v57, v58, v59;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v43 = v62;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v11, v48);
    _Block_release(v48);

    goto LABEL_8;
  }

  v26 = v20;
  sub_1BE04D114();
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C34();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1BD026000, v27, v28, "Bank Connect account was not changed", v29, 2u);
    MEMORY[0x1BFB45F20](v29, -1, -1);
  }

  else
  {
  }

  (*(v61 + 8))(v7, v4);
}

id sub_1BD9707E0(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v3 = a2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  sub_1BD9753F4(v4, v5, v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = a2;
  if (Strong)
  {
    [Strong didUpdateBankConnectAccount_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PKPassDetailBankConnectSectionController.consentStatusDidChange(to:)(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v43 = v8;
    v17 = *(v16 + 2);
    v18 = *v16;
    if (*(v16 + 1) == a1)
    {
      v19 = v18;
      v20 = v17;
      sub_1BE04D114();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C34();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1BD026000, v21, v22, "Bank Connect consent status was not changed", v23, 2u);
        MEMORY[0x1BFB45F20](v23, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v42 = v12;
      v24 = v13;
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v25 = v18;
      v26 = v17;
      v27 = v1;
      v28 = sub_1BE052D54();
      v29 = swift_allocObject();
      v29[2] = v1;
      v29[3] = v25;
      v29[4] = a1;
      v29[5] = v26;
      aBlock[4] = sub_1BD976228;
      v45 = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_20_2;
      v30 = _Block_copy(aBlock);
      v31 = v45;
      v32 = v27;
      v33 = v25;
      v34 = v26;
      v31, v35, v36, v37, v38, v39, v40, v41;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v15, v10, v30);
      _Block_release(v30);

      (*(v43 + 8))(v10, v7);
      (*(v24 + 8))(v15, v42);
    }
  }
}

void *sub_1BD970D48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v7 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 8);
  v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  v10 = *(v6 + 24);
  *(v6 + 24) = 1;
  v11 = a2;
  v12 = a4;
  sub_1BD9753F4(v7, v8, v9, v10);
  result = swift_unknownObjectWeakLoadStrong();
  v14 = result;
  if (a3)
  {
    if (!result)
    {
      return result;
    }

    [result didUpdateBankConnectAccount_];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v15 = v11;
    [v14 didUpdateBankConnectAccount_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD970EA8(unint64_t a1)
{
  v3 = [v1 amount];
  v4 = [v3 isAboveZero];

  if (v4 && a1 <= 1 && [v1 creditDebitIndicator] == 1)
  {
    v5 = [v1 amount];
    v6 = [v5 negate];
  }

  else
  {
    v6 = [v1 amount];
  }

  v7 = [v6 formatted];

  v8 = sub_1BE052434();
  return v8;
}

id sub_1BD970FBC()
{
  if ([v0 accountType])
  {
    return 0;
  }

  result = [v0 balance];
  if (result)
  {
    v2 = result;
    v3 = [result bookedBalance];

    if (v3)
    {
      v4 = sub_1BD971118([v0 accountType]);

      return v4;
    }

    return 0;
  }

  return result;
}

id sub_1BD971068()
{
  if ([v0 accountType] != 1)
  {
    return 0;
  }

  result = [v0 balance];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result bookedBalance];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BD971118([v0 accountType]);

  return v4;
}

uint64_t sub_1BD971118(uint64_t a1)
{
  v3 = [v1 amount];
  v4 = [v3 isAboveZero];

  if (!v4)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    if (a1 != 1 || [v1 creditDebitIndicator])
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = [v1 amount];
    v5 = [v9 negate];

    goto LABEL_6;
  }

  if ([v1 creditDebitIndicator] == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = [v1 amount];
LABEL_6:
  v6 = [v5 formatted];

  v7 = sub_1BE052434();
  return v7;
}

void PKPassDetailBankConnectSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 0xD000000000000015 && 0x80000001BE118070 == a4 || (sub_1BE053B84() & 1) != 0)
  {
    if (v4[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24])
    {
      return;
    }

    v8 = sub_1BE052404();
    v9 = PKLocalizedBankConnectString(v8);

    if (v9)
    {
      v10 = [v4 linkCellWithText:v9 forTableView:a1];

      v11 = MEMORY[0x1E69B98F8];
LABEL_8:
      PKAccessibilityIDCellSet(v10, *v11);
      return;
    }

    goto LABEL_42;
  }

  if (a3 == 0xD000000000000019 && 0x80000001BE118090 == a4 || (sub_1BE053B84() & 1) != 0)
  {
    v12 = sub_1BE04B3F4();
    v13 = sub_1BD9754B4();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v13 + 2))
    {
      v21 = v13[v12 + 32];
      v13, v14, v15, v16, v17, v18, v19, v20;
      if (v21 > 1)
      {
        if (v21 == 2)
        {

          sub_1BD97350C(a1);
        }

        else
        {

          sub_1BD973830(a1);
        }
      }

      else if (v21)
      {

        sub_1BD9731E8(a1);
      }

      else
      {

        sub_1BD972E48(a1);
      }

      return;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((a3 != 0xD000000000000021 || 0x80000001BE1180B0 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    return;
  }

  v22 = sub_1BE04B3F4();
  if (v22 > 1)
  {
    goto LABEL_41;
  }

  if (byte_1F3B8FA80[v22 + 32])
  {
    v23 = sub_1BE052404();
    v24 = PKLocalizedBankConnectString(v23);

    if (v24)
    {
      v10 = [v4 linkCellWithText:v24 forTableView:a1];

      v11 = MEMORY[0x1E69B9920];
      goto LABEL_8;
    }

LABEL_43:
    __break(1u);
    return;
  }

  sub_1BD972A08(a1);
}

Swift::String_optional __swiftcall PKPassDetailBankConnectSectionController.titleForFooter(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  object = inSectionIdentifier._object;
  countAndFlagsBits = inSectionIdentifier._countAndFlagsBits;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  if ((countAndFlagsBits != 0xD000000000000015 || 0x80000001BE118070 != object) && (sub_1BE053B84() & 1) == 0)
  {
    if ((countAndFlagsBits != 0xD000000000000019 || 0x80000001BE118090 != object) && (sub_1BE053B84() & 1) == 0 || *(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
    {
      goto LABEL_5;
    }

    v36 = *(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
    v37 = [v36 balance];
    if (!v37)
    {

      goto LABEL_5;
    }

    v38 = v37;
    v39 = [v37 lastUpdatedAt];

    sub_1BE04AEE4();
    (*(v5 + 32))(v10, v7, v4);
    v40 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter(0)) init];
    v41 = [v36 balance];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 hasMultipleBalances];
    }

    else
    {
      v43 = 0;
    }

    BankConnectFormatter.formatAsOfDateWithFullStop(_:hasMultipleBalances:)(v10, v43);
    v27 = v44;
    v29 = v45;

    (*(v5 + 8))(v10, v4);
LABEL_8:
    v13 = v29;
    v12 = v27;
    goto LABEL_21;
  }

  v11 = v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24))
  {
    v14 = *v11;
    v15 = *(v11 + 8);
    v16 = *(v11 + 16);
    v17 = *v11;
    v18 = sub_1BE052404();
    v19 = PKLocalizedBankConnectString(v18);

    if (!v19)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_1BE052434();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BE0B69E0;
    v23 = [v17 name];
    v24 = sub_1BE052434();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1BD110550();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = sub_1BE052454();
    v29 = v28;
    v21, v28, v30, v31, v32, v33, v34, v35;
    sub_1BD9753F4(v14, v15, v16, 0);
    goto LABEL_8;
  }

LABEL_5:
  v12 = 0;
  v13 = 0;
LABEL_21:
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

void PKPassDetailBankConnectSectionController.tableView(_:didSelectRowAt:sectionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  v16 = sub_1BE04AA64();
  v132 = *(v16 - 8);
  v133 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v130 - v19;
  if ((a3 != 0xD000000000000015 || 0x80000001BE118070 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    if (a3 == 0xD000000000000019 && 0x80000001BE118090 == a4 || (sub_1BE053B84() & 1) != 0)
    {
      if (*(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
      {
        goto LABEL_5;
      }

      v27 = *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
      v28 = [v27 actions];
      if (!v28)
      {

        (*(v132 + 56))(v15, 1, 1, v133);
LABEL_29:
        sub_1BD0DE53C(v15, &unk_1EBD3CF70, &qword_1BE0BA000);
        goto LABEL_9;
      }

      v29 = v28;
      v30 = [v28 payNowURL];

      v31 = v132;
      if (v30)
      {
        sub_1BE04A9F4();

        v32 = *(v31 + 56);
        v33 = v12;
        v34 = 0;
      }

      else
      {
        v32 = *(v132 + 56);
        v33 = v12;
        v34 = 1;
      }

      v89 = v133;
      v32(v33, v34, 1, v133);
      sub_1BD226B4C(v12, v15);
      if ((*(v31 + 48))(v15, 1, v89) == 1)
      {

        goto LABEL_29;
      }

      (*(v31 + 32))(v20, v15, v89);
      v90 = sub_1BE04B3F4();
      v91 = sub_1BD9754B4();
      if ((v90 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v90 < *(v91 + 2))
      {
        v99 = v91[v90 + 32];
        v91, v92, v93, v94, v95, v96, v97, v98;
        if (v99 == 3)
        {
          v100 = *MEMORY[0x1E69BB6F8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BE0B98D0;
          v102 = *MEMORY[0x1E69BA680];
          *(inited + 32) = *MEMORY[0x1E69BA680];
          v103 = sub_1BE052434();
          v104 = MEMORY[0x1E69BABE8];
          *(inited + 40) = v103;
          *(inited + 48) = v105;
          v106 = *v104;
          *(inited + 56) = *v104;
          *(inited + 64) = sub_1BE052434();
          *(inited + 72) = v107;
          v108 = *MEMORY[0x1E69BA440];
          *(inited + 80) = *MEMORY[0x1E69BA440];
          v109 = v102;
          v110 = v106;
          v111 = v108;
          [v27 accountType];
          v112 = sub_1BE052434();
          v114 = v113;
          v115 = objc_opt_self();
          *(inited + 88) = v112;
          *(inited + 96) = v114;
          v116 = sub_1BD1AAF50(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
          swift_arrayDestroy();
          type metadata accessor for PKAnalyticsKey(0);
          sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
          v117 = sub_1BE052224();
          v116, v118, v119, v120, v121, v122, v123, v124;
          [v115 subject:v100 sendEvent:v117];

          v125 = sub_1BE04A9C4();
          v139 = sub_1BD972724;
          v140 = 0;
          v135 = MEMORY[0x1E69E9820];
          v136 = 1107296256;
          v137 = sub_1BD976224;
          v138 = &block_descriptor_28_5;
          v126 = _Block_copy(&v135);
          PKOpenURL();

          _Block_release(v126);
          (*(v132 + 8))(v20, v133);
        }

        else
        {
          (*(v31 + 8))(v20, v89);
        }

        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      if ((a3 != 0xD000000000000021 || 0x80000001BE1180B0 != a4) && (sub_1BE053B84() & 1) == 0 || *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24) != 1)
      {
        goto LABEL_5;
      }

      v35 = *(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
      v36 = sub_1BE04B3F4();
      if (v36 <= 1)
      {
        if ((byte_1F3B8FAA8[v36 + 32] & 1) == 0)
        {

          goto LABEL_5;
        }

        v37 = objc_opt_self();
        v130 = *MEMORY[0x1E69BB6F8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_1BE0B98D0;
        v39 = *MEMORY[0x1E69BA680];
        *(v38 + 32) = *MEMORY[0x1E69BA680];
        v40 = sub_1BE052434();
        v41 = MEMORY[0x1E69BABE8];
        *(v38 + 40) = v40;
        *(v38 + 48) = v42;
        v43 = *v41;
        *(v38 + 56) = *v41;
        v44 = sub_1BE052434();
        v45 = MEMORY[0x1E69BA440];
        *(v38 + 64) = v44;
        *(v38 + 72) = v46;
        v47 = *v45;
        *(v38 + 80) = *v45;
        *(v38 + 88) = sub_1BE052434();
        *(v38 + 96) = v48;
        v49 = v39;
        v50 = v43;
        v51 = v47;
        v52 = sub_1BD1AAF50(v38);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
        swift_arrayDestroy();
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
        v53 = sub_1BE052224();
        v52, v54, v55, v56, v57, v58, v59, v60;
        [v37 subject:v130 sendEvent:v53];

        v135 = 0;
        v136 = 0xE000000000000000;
        sub_1BE053834();
        v136, v61, v62, v63, v64, v65, v66, v67;
        v135 = 0xD000000000000025;
        v136 = 0x80000001BE143220;
        v68 = [v35 institutionIdentifier];
        v69 = sub_1BE052434();
        v71 = v70;

        MEMORY[0x1BFB3F610](v69, v71);
        v71, v72, v73, v74, v75, v76, v77, v78;
        v79 = v136;
        sub_1BE04AA54();
        v79, v80, v81, v82, v83, v84, v85, v86;
        v88 = v132;
        v87 = v133;
        if ((*(v132 + 48))(v9, 1, v133) == 1)
        {

          sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
        }

        else
        {
          v127 = v131;
          (*(v88 + 32))(v131, v9, v87);
          v128 = sub_1BE04A9C4();
          v139 = PKEdgeInsetsMake;
          v140 = 0;
          v135 = MEMORY[0x1E69E9820];
          v136 = 1107296256;
          v137 = sub_1BD976224;
          v138 = &block_descriptor_25_5;
          v129 = _Block_copy(&v135);
          PKOpenURL();

          _Block_release(v129);
          (*(v88 + 8))(v127, v87);
        }

LABEL_9:
        v26 = sub_1BE04B3C4();
        [v134 deselectRowAtIndexPath:v26 animated:1];

        return;
      }
    }

    __break(1u);
    return;
  }

  v21 = v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  if (!*(v4 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24))
  {
    v24 = *(v21 + 8);
    v23 = *(v21 + 16);
    v25 = *v21;
    sub_1BD972620(*v21);
    sub_1BD9753F4(v25, v24, v23, 0);
    goto LABEL_9;
  }

LABEL_5:
  v133 = sub_1BE04B3C4();
  [v134 deselectRowAtIndexPath:v133 animated:1];
  v22 = v133;
}

void sub_1BD972620(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v16[4] = sub_1BD9760A8;
    v17 = v5;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1BD976224;
    v16[3] = &block_descriptor_50_5;
    v6 = _Block_copy(v16);
    v7 = v17;
    v8 = v1;
    v7, v9, v10, v11, v12, v13, v14, v15;
    [v4 didStartBankConnectAuthorizationForInstitution:a1 withCompletion:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

void sub_1BD972724(char a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1BE04D114();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "Failed to perform a pay now action", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

id sub_1BD972A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v9 = *v8;
    v10 = [v2 subtitleCellForTableView_];
    v11 = [v10 textLabel];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 displayName];
      if (!v13)
      {
        sub_1BE052434();
        v15 = v14;
        v13 = sub_1BE052404();
        v15, v16, v17, v18, v19, v20, v21, v22;
      }

      [v12 setText_];
    }

    v23 = [v10 textLabel];
    if (v23)
    {
      v24 = v23;
      v25 = [v2 primaryTextColor];
      [v24 setTextColor_];
    }

    v26 = [v10 detailTextLabel];
    if (v26)
    {
      v27 = v26;
      v28 = [v9 displayAccountNumberValue];
      if (!v28)
      {
        sub_1BE052434();
        v30 = v29;
        v28 = sub_1BE052404();
        v30, v31, v32, v33, v34, v35, v36, v37;
      }

      [v27 setText_];
    }

    v38 = [v10 detailTextLabel];
    if (v38)
    {
      v39 = v38;
      v40 = [v2 detailTextColor];
      if (!v40)
      {
        v40 = [objc_opt_self() secondaryLabelColor];
      }

      [v39 setTextColor_];
    }

    [v10 setSelectionStyle_];
    PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B93A8]);
  }

  else
  {
    sub_1BE04D114();
    v41 = v2;
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C34();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = v72;
      *v44 = 136315138;
      v71 = v43;
      v45 = *v8;
      v46 = *(v8 + 1);
      v47 = *(v8 + 2);
      v48 = v8[24];
      sub_1BD9753A8(*v8, v46, v47, v48);
      v49 = sub_1BD96E2A0(v45, v46, v47, v48);
      v70 = v42;
      v51 = v50;
      sub_1BD9753F4(v45, v46, v47, v48);
      v52 = sub_1BD123690(v49, v51, &v73);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v44 + 4) = v52;
      v60 = v70;
      v61 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72, v62, v63, v64, v65, v66, v67, v68);
      MEMORY[0x1BFB45F20](v61, -1, -1);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v10;
}

void sub_1BD972E48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v2[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    goto LABEL_10;
  }

  v9 = *v8;
  v10 = [v9 balance];
  if (!v10 || (v11 = v10, v12 = [v10 availableBalance], v11, !v12))
  {

LABEL_10:
    sub_1BE04D114();
    v34 = v2;
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C34();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315138;
      v64 = v4;
      v65 = v38;
      v39 = *v8;
      v40 = *(v8 + 1);
      v63 = v5;
      v41 = *(v8 + 2);
      v42 = v8[24];
      sub_1BD9753A8(v39, v40, v41, v42);
      v43 = sub_1BD96E2A0(v39, v40, v41, v42);
      v45 = v44;
      sub_1BD9753F4(v39, v40, v41, v42);
      v46 = sub_1BD123690(v43, v45, &v65);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v37 + 4) = v46;
      v54 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62, v55, v56, v57, v58, v59, v60, v61);
      MEMORY[0x1BFB45F20](v54, -1, -1);
      MEMORY[0x1BFB45F20](v37, -1, -1);

      (*(v63 + 8))(v7, v64);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return;
  }

  sub_1BD970EA8([v9 accountType]);
  v14 = v13;

  if ([v9 accountType])
  {
    v15 = "S_DETAILS_LINK_ACCOUNT_HEADER";
  }

  else
  {
    v15 = "BLE_CREDIT_TITLE";
  }

  v16 = sub_1BE052404();
  (v15 | 0x8000000000000000), v17, v18, v19, v20, v21, v22, v23;
  v24 = PKLocalizedBankConnectString(v16);

  if (v24)
  {
    v25 = sub_1BE052404();
    v14, v26, v27, v28, v29, v30, v31, v32;
    v33 = [v2 stackedInfoCellWithPrimaryText:v24 detailText:v25 cellStyle:1 forTableView:a1];

    [v33 setSelectionStyle_];
    PKAccessibilityIDCellSet(v33, *MEMORY[0x1E69B94E0]);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9731E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v9 = *v8;
    sub_1BD970FBC();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052404();
      v13 = PKLocalizedBankConnectString(v12);

      if (v13)
      {
        v14 = sub_1BE052404();
        v11, v15, v16, v17, v18, v19, v20, v21;
        v22 = [v2 stackedInfoCellWithPrimaryText:v13 detailText:v14 cellStyle:1 forTableView:a1];

        [v22 setSelectionStyle_];
        PKAccessibilityIDSet(v22, *MEMORY[0x1E69B9500]);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_1BE04D114();
  v23 = v2;
  v24 = sub_1BE04D204();
  v25 = sub_1BE052C34();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136315138;
    v53 = v4;
    v54 = v27;
    v28 = *v8;
    v29 = *(v8 + 1);
    v52 = v5;
    v30 = *(v8 + 2);
    v31 = v8[24];
    sub_1BD9753A8(v28, v29, v30, v31);
    v32 = sub_1BD96E2A0(v28, v29, v30, v31);
    v34 = v33;
    sub_1BD9753F4(v28, v29, v30, v31);
    v35 = sub_1BD123690(v32, v34, &v54);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v26 + 4) = v35;
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51, v44, v45, v46, v47, v48, v49, v50);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);

    (*(v52 + 8))(v7, v53);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1BD97350C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] == 1)
  {
    v9 = *v8;
    sub_1BD971068();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052404();
      v13 = PKLocalizedBankConnectString(v12);

      if (v13)
      {
        v14 = sub_1BE052404();
        v11, v15, v16, v17, v18, v19, v20, v21;
        v22 = [v2 stackedInfoCellWithPrimaryText:v13 detailText:v14 cellStyle:1 forTableView:a1];

        [v22 setSelectionStyle_];
        PKAccessibilityIDCellSet(v22, *MEMORY[0x1E69B9500]);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_1BE04D114();
  v23 = v2;
  v24 = sub_1BE04D204();
  v25 = sub_1BE052C34();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136315138;
    v53 = v4;
    v54 = v27;
    v28 = *v8;
    v29 = *(v8 + 1);
    v52 = v5;
    v30 = *(v8 + 2);
    v31 = v8[24];
    sub_1BD9753A8(v28, v29, v30, v31);
    v32 = sub_1BD96E2A0(v28, v29, v30, v31);
    v34 = v33;
    sub_1BD9753F4(v28, v29, v30, v31);
    v35 = sub_1BD123690(v32, v34, &v54);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v26 + 4) = v35;
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51, v44, v45, v46, v47, v48, v49, v50);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);

    (*(v52 + 8))(v7, v53);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1BD973830(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    goto LABEL_6;
  }

  v9 = *&v1[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  v10 = [v9 actions];
  if (!v10)
  {

LABEL_6:
    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
LABEL_7:
    sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
    return;
  }

  v11 = v10;
  v12 = [v10 payNowURL];

  if (v12)
  {
    sub_1BE04A9F4();

    v13 = sub_1BE04AA64();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {

    v13 = sub_1BE04AA64();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_1BD226B4C(v5, v8);
  sub_1BE04AA64();
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
  v15 = sub_1BE052404();
  v16 = PKLocalizedBankConnectString(v15);

  if (v16)
  {
    v17 = [v1 linkCellWithText:v16 forTableView:a1];

    v18 = sub_1BE052404();
    v19 = [objc_opt_self() systemImageNamed_];

    v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v17 setAccessoryView_];

    PKAccessibilityIDCellSet(v17, *MEMORY[0x1E69B9D68]);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD973BA0(char a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  if (a1)
  {
    v11 = sub_1BE0528D4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v13 = a2;
    v14 = sub_1BDA543A4(0, 0, v10, &unk_1BE107FB8, v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    sub_1BE04D114();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Bank Connect authorisation has failed", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD973DE0()
{
  v3 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1BD973E90;

  return v3();
}

uint64_t sub_1BD973E90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD973FC4, 0, 0);
  }
}

uint64_t sub_1BD973FC4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    sub_1BD96F4AC(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

void *sub_1BD974040(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdateBankConnectAccount_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD9740A4(void *a1, uint64_t a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v13 = a1;
      v30 = v4;
      v14 = v13;
      v29 = sub_1BE052D54();
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1BD97617C;
      v32 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_78_2;
      v16 = _Block_copy(aBlock);
      v17 = v32;
      v18 = v14;
      v19 = v12;
      v17, v20, v21, v22, v23, v24, v25, v26;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v27 = v29;
      MEMORY[0x1BFB3FDF0](0, v10, v6, v16);
      _Block_release(v16);

      (*(v30 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }
  }
}

void *sub_1BD9743C4(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v3 = a2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  sub_1BD9753F4(v4, v5, v6, v7);
  sub_1BD97445C(a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didFindLinkableBankConnectInstitution];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD97445C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v4 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA680];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BAC90];
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = *v10;
  *(inited + 80) = *v10;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v13;
  v14 = *MEMORY[0x1E69BAA28];
  *(inited + 104) = *MEMORY[0x1E69BAA28];
  v15 = v4;
  v16 = v8;
  v17 = v12;
  v18 = v14;
  v19 = [a1 name];
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v20;
  v21 = *MEMORY[0x1E69BAD48];
  *(inited + 128) = *MEMORY[0x1E69BAD48];
  v22 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v23 = v21;
  v24 = PKDefaultPaymentNetworkNameForPaymentPass();
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = v24;

  v26 = sub_1BE052434();
  v28 = v27;

  *(inited + 136) = v26;
  *(inited + 144) = v28;
  v29 = *MEMORY[0x1E69BA9E8];
  *(inited + 152) = *MEMORY[0x1E69BA9E8];
  *(inited + 160) = 1702195828;
  *(inited + 168) = 0xE400000000000000;
  v30 = v29;
  v31 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v32 = *(v1 + v22);
  if (!v32)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v33 = [v32 issuerCountryCode];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE052434();
    v37 = v36;

    v38 = *MEMORY[0x1E69BAC78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v35, v37, v38, isUniquelyReferenced_nonNull_native);
  }

  v40 = objc_opt_self();
  v41 = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v42 = sub_1BE052224();
  v31, v43, v44, v45, v46, v47, v48, v49;
  [v40 subject:v41 sendEvent:v42];
}

void sub_1BD97474C(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = [a2 consentStatus];
  v6 = [a2 institution];
  v7 = a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState;
  v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState);
  v8 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 8);
  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 16);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  v11 = *(v7 + 24);
  *(v7 + 24) = 1;
  sub_1BD9753F4(v9, v8, v10, v11);
  v12 = [a2 account];
  v13 = [a2 consentStatus];
  v14 = [a2 institution];
  sub_1BD974934(v12, v13, v14);

  v19 = [a2 account];
  v15 = [a2 consentStatus];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v19 || v15)
  {
    if (Strong)
    {
      [Strong didUpdateBankConnectAccount_];

      goto LABEL_7;
    }
  }

  else if (Strong)
  {
    v17 = Strong;
    v18 = v19;
    [v17 didUpdateBankConnectAccount_];

LABEL_7:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_1BD974934(void *a1, uint64_t a2, void *a3)
{
  v121 = a3;
  v118 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v114[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v114[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v114[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v114[-v17];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v114[-v21];
  v23 = [a1 actions];
  if (!v23)
  {
    v27 = sub_1BE04AA64();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
LABEL_7:
    sub_1BD0DE53C(v22, &unk_1EBD3CF70, &qword_1BE0BA000);
    v120 = 0;
    goto LABEL_9;
  }

  v24 = v23;
  v25 = [v23 payNowURL];

  if (v25)
  {
    sub_1BE04A9F4();

    v26 = sub_1BE04AA64();
    (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
  }

  else
  {
    v26 = sub_1BE04AA64();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  }

  sub_1BD226B4C(v18, v22);
  sub_1BE04AA64();
  if ((*(*(v26 - 8) + 48))(v22, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  sub_1BD0DE53C(v22, &unk_1EBD3CF70, &qword_1BE0BA000);
  v120 = [a1 accountType] == 0;
LABEL_9:
  v28 = [a1 actions];
  v29 = v122;
  if (!v28)
  {
    v36 = sub_1BE04AA64();
    (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
LABEL_15:
    sub_1BD0DE53C(v15, &unk_1EBD3CF70, &qword_1BE0BA000);
    v119 = 0;
    goto LABEL_17;
  }

  v117 = a1;
  v30 = v9;
  v31 = v6;
  v32 = v122;
  v33 = v28;
  v34 = [v28 payNowURL];

  if (v34)
  {
    sub_1BE04A9F4();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v37 = sub_1BE04AA64();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v12, v35, 1, v37);
  sub_1BD226B4C(v12, v15);
  v39 = (*(v38 + 48))(v15, 1, v37);
  v29 = v32;
  v6 = v31;
  v9 = v30;
  a1 = v117;
  if (v39 == 1)
  {
    goto LABEL_15;
  }

  sub_1BD0DE53C(v15, &unk_1EBD3CF70, &qword_1BE0BA000);
  v119 = [a1 accountType] == 1;
LABEL_17:
  v40 = [a1 actions];
  if (!v40)
  {
    v44 = sub_1BE04AA64();
    (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
LABEL_23:
    v47 = 0;
    goto LABEL_24;
  }

  v41 = v40;
  v42 = [v40 digitalServicingURL];

  if (v42)
  {
    sub_1BE04A9F4();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v45 = sub_1BE04AA64();
  v46 = *(v45 - 8);
  v47 = 1;
  (*(v46 + 56))(v6, v43, 1, v45);
  sub_1BD226B4C(v6, v9);
  if ((*(v46 + 48))(v9, 1, v45) == 1)
  {
    goto LABEL_23;
  }

LABEL_24:
  LODWORD(v117) = v47;
  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v115 = [a1 isAccountEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE107E80;
  v49 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v116 = inited + 32;
  v50 = sub_1BE052434();
  v51 = MEMORY[0x1E69BA680];
  *(inited + 40) = v50;
  *(inited + 48) = v52;
  v53 = *v51;
  *(inited + 56) = *v51;
  v54 = sub_1BE052434();
  v55 = MEMORY[0x1E69BAC90];
  *(inited + 64) = v54;
  *(inited + 72) = v56;
  v57 = *v55;
  *(inited + 80) = *v55;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v58;
  v59 = *MEMORY[0x1E69BAC88];
  *(inited + 104) = *MEMORY[0x1E69BAC88];
  v60 = v49;
  v61 = v53;
  v62 = v57;
  v63 = v59;
  [a1 accountType];
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v64;
  v65 = *MEMORY[0x1E69BA2C0];
  if (v120)
  {
    v66 = 1702195828;
  }

  else
  {
    v66 = 0x65736C6166;
  }

  if (v120)
  {
    v67 = 0xE400000000000000;
  }

  else
  {
    v67 = 0xE500000000000000;
  }

  *(inited + 128) = v65;
  *(inited + 136) = v66;
  v68 = *MEMORY[0x1E69BACC8];
  *(inited + 144) = v67;
  *(inited + 152) = v68;
  if (v119)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (v119)
  {
    v70 = 0xE400000000000000;
  }

  else
  {
    v70 = 0xE500000000000000;
  }

  *(inited + 160) = v69;
  *(inited + 168) = v70;
  v71 = *MEMORY[0x1E69BAA28];
  *(inited + 176) = *MEMORY[0x1E69BAA28];
  v72 = v65;
  v73 = v68;
  v74 = v71;
  v75 = [v121 name];
  *(inited + 184) = sub_1BE052434();
  *(inited + 192) = v76;
  v77 = *MEMORY[0x1E69BAD48];
  *(inited + 200) = *MEMORY[0x1E69BAD48];
  v78 = OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_pass;
  v79 = v77;
  v80 = PKDefaultPaymentNetworkNameForPaymentPass();
  if (!v80)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v81 = v80;
  v82 = v29;
  v83 = v118 == 0;

  v84 = sub_1BE052434();
  v86 = v85;

  *(inited + 208) = v84;
  *(inited + 216) = v86;
  v87 = *MEMORY[0x1E69BA608];
  if (v117)
  {
    v88 = 1702195828;
  }

  else
  {
    v88 = 0x65736C6166;
  }

  if (v117)
  {
    v89 = 0xE400000000000000;
  }

  else
  {
    v89 = 0xE500000000000000;
  }

  *(inited + 224) = v87;
  *(inited + 232) = v88;
  v90 = *MEMORY[0x1E69BA9F0];
  *(inited + 240) = v89;
  *(inited + 248) = v90;
  if ((v115 & v83) != 0)
  {
    v91 = 1702195828;
  }

  else
  {
    v91 = 0x65736C6166;
  }

  if ((v115 & v83) != 0)
  {
    v92 = 0xE400000000000000;
  }

  else
  {
    v92 = 0xE500000000000000;
  }

  *(inited + 256) = v91;
  *(inited + 264) = v92;
  v93 = v87;
  v94 = v90;
  v95 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v96 = *(v82 + v78);
  if (!v96)
  {
    goto LABEL_54;
  }

  v97 = [v96 issuerCountryCode];
  if (v97)
  {
    v98 = v97;
    v99 = sub_1BE052434();
    v101 = v100;

    v102 = *MEMORY[0x1E69BAC78];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v95;
    sub_1BD1DAE70(v99, v101, v102, isUniquelyReferenced_nonNull_native);

    v95 = v123;
  }

  v104 = objc_opt_self();
  v105 = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v106 = sub_1BE052224();
  v95, v107, v108, v109, v110, v111, v112, v113;
  [v104 subject:v105 sendEvent:v106];
}

uint64_t sub_1BD9752F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD96FCE8();
}

id sub_1BD9753A8(id result, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
    result = a3;
  }

  return result;
}

void sub_1BD9753F4(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

char *sub_1BD9754B4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v126 - v9;
  v11 = &v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState];
  if (v0[OBJC_IVAR____TtC9PassKitUI40PKPassDetailBankConnectSectionController_connectionState + 24] != 1)
  {
    sub_1BE04D114();
    v37 = v0;
    v38 = sub_1BE04D204();
    v39 = sub_1BE052C34();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v126 = v41;
      *v40 = 136315138;
      v128 = v1;
      v129 = v41;
      v127 = v2;
      v42 = *v11;
      v43 = *(v11 + 1);
      v44 = *(v11 + 2);
      v45 = v11[24];
      sub_1BD9753A8(*v11, v43, v44, v45);
      v46 = sub_1BD96E2A0(v42, v43, v44, v45);
      v48 = v47;
      sub_1BD9753F4(v42, v43, v44, v45);
      v49 = sub_1BD123690(v46, v48, &v129);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v40 + 4) = v49;
      v57 = v126;
      __swift_destroy_boxed_opaque_existential_0(v126, v58, v59, v60, v61, v62, v63, v64);
      MEMORY[0x1BFB45F20](v57, -1, -1);
      MEMORY[0x1BFB45F20](v40, -1, -1);

      (*(v127 + 8))(v4, v128);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v12 = *v11;
  v13 = [v12 accountType];
  if (v13 == 1)
  {
    sub_1BD971068();
    if (v65)
    {
      v65, v65, v66, v67, v68, v69, v70, v71;
      v34 = sub_1BD1D9A78(0, 1, 1, MEMORY[0x1E69E7CC0], v72, v73, v74, v75);
      v81 = *(v34 + 2);
      v80 = *(v34 + 3);
      if (v81 >= v80 >> 1)
      {
        v34 = sub_1BD1D9A78((v80 > 1), v81 + 1, 1, v34, v76, v77, v78, v79);
      }

      *(v34 + 2) = v81 + 1;
      v34[v81 + 32] = 2;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    v97 = [v12 balance];
    if (!v97)
    {
      goto LABEL_33;
    }

    v98 = v97;
    v99 = [v97 availableBalance];

    if (!v99)
    {
      goto LABEL_33;
    }

    sub_1BD970EA8([v12 accountType]);
    v101 = v100;

    v101, v102, v103, v104, v105, v106, v107, v108;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1BD1D9A78(0, *(v34 + 2) + 1, 1, v34, v109, v110, v111, v112);
    }

    v94 = *(v34 + 2);
    v113 = *(v34 + 3);
    v95 = v94 + 1;
    if (v94 >= v113 >> 1)
    {
      v34 = sub_1BD1D9A78((v113 > 1), v94 + 1, 1, v34, v109, v110, v111, v112);
    }

    v96 = 0;
LABEL_32:
    *(v34 + 2) = v95;
    v34[v94 + 32] = v96;
    goto LABEL_33;
  }

  if (!v13)
  {
    v14 = [v12 balance];
    if (v14 && (v15 = v14, v16 = [v14 availableBalance], v15, v16))
    {
      sub_1BD970EA8([v12 accountType]);
      v18 = v17;

      v18, v19, v20, v21, v22, v23, v24, v25;
      v34 = sub_1BD1D9A78(0, 1, 1, MEMORY[0x1E69E7CC0], v26, v27, v28, v29);
      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1BD1D9A78((v35 > 1), v36 + 1, 1, v34, v30, v31, v32, v33);
      }

      *(v34 + 2) = v36 + 1;
      v34[v36 + 32] = 0;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1BD970FBC();
    if (!v82)
    {
      goto LABEL_33;
    }

    v82, v82, v83, v84, v85, v86, v87, v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1BD1D9A78(0, *(v34 + 2) + 1, 1, v34, v89, v90, v91, v92);
    }

    v94 = *(v34 + 2);
    v93 = *(v34 + 3);
    v95 = v94 + 1;
    v96 = 1;
    if (v94 >= v93 >> 1)
    {
      v34 = sub_1BD1D9A78((v93 > 1), v94 + 1, 1, v34, v89, v90, v91, v92);
    }

    goto LABEL_32;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v114 = [v12 actions];
  if (!v114)
  {

    v118 = sub_1BE04AA64();
    (*(*(v118 - 8) + 56))(v10, 1, 1, v118);
LABEL_40:
    sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
    return v34;
  }

  v115 = v114;
  v116 = [v114 payNowURL];

  if (v116)
  {
    sub_1BE04A9F4();

    v117 = sub_1BE04AA64();
    (*(*(v117 - 8) + 56))(v7, 0, 1, v117);
  }

  else
  {
    v117 = sub_1BE04AA64();
    (*(*(v117 - 8) + 56))(v7, 1, 1, v117);
  }

  sub_1BD226B4C(v7, v10);
  sub_1BE04AA64();
  if ((*(*(v117 - 8) + 48))(v10, 1, v117) == 1)
  {

    goto LABEL_40;
  }

  sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1BD1D9A78(0, *(v34 + 2) + 1, 1, v34, v119, v120, v121, v122);
  }

  v124 = *(v34 + 2);
  v123 = *(v34 + 3);
  if (v124 >= v123 >> 1)
  {
    v34 = sub_1BD1D9A78((v123 > 1), v124 + 1, 1, v34, v119, v120, v121, v122);
  }

  *(v34 + 2) = v124 + 1;
  v34[v124 + 32] = 3;
  return v34;
}

uint64_t _s9PassKitUI40PKPassDetailBankConnectSectionControllerC14titleForHeader02inH10IdentifierSSSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  if ((a1 != 0xD000000000000015 || 0x80000001BE118070 != a2) && (sub_1BE053B84() & 1) == 0 && (a1 != 0xD000000000000021 || 0x80000001BE1180B0 != a2) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_1BE052404();
  v5 = PKLocalizedBankConnectString(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1BE052434();

  return v6;
}

uint64_t sub_1BD975D58(uint64_t a1, uint64_t a2)
{
  v4 = PKPassDetailBankConnectSectionController.sectionIdentifiers.getter();
  v24[0] = a1;
  v24[1] = a2;
  v23[2] = v24;
  v5 = sub_1BD2FF084(sub_1BD20DFC4, v23, v4);
  v4, v6, v7, v8, v9, v10, v11, v12;
  result = 0;
  if (v5)
  {
    if (a1 == 0xD000000000000015 && 0x80000001BE118070 == a2 || (sub_1BE053B84() & 1) != 0)
    {
      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001BE118090 == a2 || (sub_1BE053B84() & 1) != 0)
    {
      v14 = sub_1BD9754B4();
      v15 = *(v14 + 2);
      v14, v16, v17, v18, v19, v20, v21, v22;
      return v15;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001BE1180B0 == a2)
    {
      return 2;
    }

    else if (sub_1BE053B84())
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI40PKPassDetailBankConnectSectionControllerC15ConnectionState33_3BB1D4DBFFC79AA2714DB6AC179A5AACLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1BD975F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD975F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD975FD0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1BD975FFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD96F8EC(v2, v3);
}

uint64_t sub_1BD9760B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD973DC0(a1, v4, v5, v6);
}

unint64_t sub_1BD976198()
{
  result = qword_1EBD59D70;
  if (!qword_1EBD59D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D70);
  }

  return result;
}

uint64_t sub_1BD976258(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v43[1] = MEMORY[0x1E69E7CC0];
  if ((a2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_mapsOnly] & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    sub_1BE04D8B4(v43);
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
    v9, v17, v18, v19, v20, v21, v22, v23;
    sub_1BDA7AB7C(v43[0]);
  }

  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  sub_1BE04D8B4(v43);
  v24, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;
  sub_1BDA7AB7C(v43[0]);
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v40[4] = a3;
  v40[5] = a4;
  v41 = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD50340, &qword_1BE0F0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8, &qword_1BE108180);
  sub_1BD0DE4F4(&qword_1EBD59D80, &unk_1EBD50340, &qword_1BE0F0510, MEMORY[0x1E69E6338]);
  sub_1BD598D7C();
  sub_1BD977080();
  return sub_1BE0519D4();
}

uint64_t sub_1BD97644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v11;
  *(v13 + 56) = v12;
  type metadata accessor for AddressSearchingResults.ResultRow(0);
  sub_1BD5990AC();
  v14 = a3;
  sub_1BE048964();
  v15 = v11;
  sub_1BE048964();
  sub_1BE051704();
  sub_1BE051274();
  v16 = sub_1BE0518D4();
  v13, v17, v18, v19, v20, v21, v22, v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8, &qword_1BE108180);
  *(a6 + *(result + 36)) = v16;
  return result;
}

id sub_1BD976588@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AddressSearchingResults.ResultRow(0);
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E6980FA8];
  v8 = sub_1BE050554();
  (*(*(v8 - 8) + 104))(a3 + v6, v7, v8);
  v9 = *(v5 + 24);
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;

  return a1;
}

void sub_1BD976684(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DC0, &qword_1BE108230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  if ((*(a1 + 8) & 1) != 0 || (v10 = *a1, v11 = *a1, (v12 = sub_1BD50D434(v10)) == 0))
  {
    if (qword_1EBD36C60 != -1)
    {
      swift_once();
    }

    v15 = qword_1EBDAB200;
    v16 = *algn_1EBDAB208;
    v17 = qword_1EBDAB210;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
  }

  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DC8, &qword_1BE108238);
  sub_1BD976894(a1, &v9[*(v18 + 44)]);
  sub_1BD0DE19C(v9, v6, &qword_1EBD59DC0, &qword_1BE108230);
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DD0, &unk_1BE108240);
  sub_1BD0DE19C(v6, a2 + *(v19 + 48), &qword_1EBD59DC0, &qword_1BE108230);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE53C(v9, &qword_1EBD59DC0, &qword_1BE108230);
  sub_1BD0DE53C(v6, &qword_1EBD59DC0, &qword_1BE108230);
  v17, v20, v21, v22, v23, v24, v25, v26;
  v16, v27, v28, v29, v30, v31, v32, v33;
  v15, v34, v35, v36, v37, v38, v39, v40;
}

void sub_1BD976894(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v189 = a2;
  v3 = sub_1BE04F774();
  KeyPath = *(v3 - 8);
  v181 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v179 = (&v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0, &qword_1BE0FE4B0);
  v185 = *(v5 - 8);
  v186 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v178 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v182 = &v172 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DD8, &qword_1BE108250);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v188 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v187 = &v172 - v13;
  v14 = *a1;
  v183 = a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = [v14 title];
  }

  else
  {
    v16 = [v14 pk_displayName];
    if (!v16)
    {
      v56 = 0;
      v73 = 0;
      v53 = 0;
      v74 = 0;
      goto LABEL_8;
    }
  }

  v184 = v14;
  v17 = sub_1BE052434();
  v19 = v18;

  v191 = v17;
  v192 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  LOBYTE(v19) = v23;
  v25 = v24;
  v26 = sub_1BE050324();
  v27 = sub_1BE0505F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v26, v28, v30, v32, v34, v35, v36, v37;
  sub_1BD0DDF10(v20, v22, (v19 & 1), v38, v39, v40, v41, v42);
  v25, v43, v44, v45, v46, v47, v48, v49;
  v50 = sub_1BE051224();
  v51 = sub_1BE050564();
  v53 = v52;
  LOBYTE(v19) = v54;
  v56 = v55;
  v50, v52, v54, v55, v57, v58, v59, v60;
  sub_1BD0DDF10(v27, v29, (v31 & 1), v61, v62, v63, v64, v65);
  v33, v66, v67, v68, v69, v70, v71, v72;
  v73 = (v19 & 1);
  v74 = v51;
  sub_1BD0D7F18(v51, v53, v73);
  sub_1BE048C84();
  if (v15)
  {
    v75 = [v184 subtitle];
    goto LABEL_9;
  }

  v14 = v184;
LABEL_8:
  v75 = [v14 pkSingleLineFormattedContactAddress];
  if (!v75)
  {
LABEL_16:
    v159 = v187;
    (*(v185 + 56))(v187, 1, 1, v186);
    goto LABEL_17;
  }

LABEL_9:
  v184 = v73;
  v76 = sub_1BE052434();
  v78 = v77;

  v86 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v86 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v86)
  {
    v78, v79, v80, v81, v82, v83, v84, v85;
    v73 = v184;
    goto LABEL_16;
  }

  v191 = v76;
  v192 = v78;
  sub_1BD0DDEBC();
  v87 = sub_1BE0506C4();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = sub_1BE0502E4();
  v95 = sub_1BE0505F4();
  v176 = v53;
  v177 = v56;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v175 = v74;
  v102 = v101;
  v94, v97, v99, v101, v103, v104, v105, v106;
  sub_1BD0DDF10(v87, v89, (v91 & 1), v107, v108, v109, v110, v111);
  v93, v112, v113, v114, v115, v116, v117, v118;
  v119 = sub_1BE051234();
  v174 = sub_1BE050564();
  v173 = v120;
  v122 = v121;
  v172 = v123;
  v119, v120, v121, v123, v124, v125, v126, v127;
  sub_1BD0DDF10(v96, v98, (v100 & 1), v128, v129, v130, v131, v132);
  v102, v133, v134, v135, v136, v137, v138, v139;
  v140 = type metadata accessor for AddressSearchingResults.ResultRow(0);
  v141 = v183;
  v142 = v179;
  sub_1BD70A4D0(v179);
  LOBYTE(v89) = sub_1BE04F764();
  (*(KeyPath + 8))(v142, v181);
  v143 = 1;
  if (v89)
  {
    v143 = 2;
  }

  v181 = v143;
  KeyPath = swift_getKeyPath();
  v144 = swift_getKeyPath();
  v145 = v122 & 1;
  LOBYTE(v191) = v122 & 1;
  v190 = 0;
  v146 = swift_getKeyPath();
  v147 = *(v140 + 20);
  v148 = swift_getKeyPath();
  v149 = v186;
  v150 = v178;
  v151 = &v178[*(v186 + 36)];
  v152 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410) + 28);
  v153 = sub_1BE050554();
  v154 = v141 + v147;
  v53 = v176;
  (*(*(v153 - 8) + 16))(v151 + v152, v154, v153);
  *v151 = v148;
  v155 = v173;
  *v150 = v174;
  *(v150 + 8) = v155;
  *(v150 + 16) = v145;
  v56 = v177;
  v157 = KeyPath;
  v156 = v181;
  *(v150 + 24) = v172;
  *(v150 + 32) = v157;
  *(v150 + 40) = v156;
  *(v150 + 48) = 0;
  *(v150 + 56) = v144;
  *(v150 + 64) = 0;
  *(v150 + 72) = v146;
  *(v150 + 80) = 1;
  v158 = v182;
  sub_1BD9772B8(v150, v182);
  v159 = v187;
  sub_1BD9772B8(v158, v187);
  v160 = v149;
  v74 = v175;
  (*(v185 + 56))(v159, 0, 1, v160);
  v73 = v184;
LABEL_17:
  v161 = v188;
  sub_1BD0DE19C(v159, v188, &qword_1EBD59DD8, &qword_1BE108250);
  v162 = v189;
  *v189 = v74;
  v162[1] = v53;
  v162[2] = v73;
  v162[3] = v56;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DE0, &qword_1BE108320);
  sub_1BD0DE19C(v161, v162 + *(v163 + 48), &qword_1EBD59DD8, &qword_1BE108250);
  sub_1BD1969AC(v74, v53, v73, v56);
  sub_1BD1969F0(v74, v53, v73, v56, v164, v165, v166, v167);
  sub_1BD0DE53C(v159, &qword_1EBD59DD8, &qword_1BE108250);
  sub_1BD0DE53C(v161, &qword_1EBD59DD8, &qword_1BE108250);
  sub_1BD1969F0(v74, v53, v73, v56, v168, v169, v170, v171);
}

uint64_t sub_1BD976FC4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DB0, &qword_1BE108220);
  sub_1BD976684(v2, (a2 + *(v4 + 44)));
  v5 = sub_1BE050234();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59DB8, &qword_1BE108228);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

unint64_t sub_1BD977080()
{
  result = qword_1EBD59D88;
  if (!qword_1EBD59D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59D88);
  }

  return result;
}

uint64_t type metadata accessor for AddressSearchingResults.ResultRow(uint64_t a1)
{
  result = qword_1EBD59D90;
  if (!qword_1EBD59D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD977184(uint64_t a1)
{
  sub_1BE050554();
  if (v1 <= 0x3F)
  {
    sub_1BD3A0CE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD977218()
{
  result = qword_1EBD59DA0;
  if (!qword_1EBD59DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59DA8, &qword_1BE1081C8);
    sub_1BD598D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59DA0);
  }

  return result;
}

uint64_t sub_1BD9772B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0, &qword_1BE0FE4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD977328()
{
  result = qword_1EBD59DE8;
  if (!qword_1EBD59DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59DB8, &qword_1BE108228);
    sub_1BD0DE4F4(&qword_1EBD59DF0, &qword_1EBD59DF8, &unk_1BE108328, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59DE8);
  }

  return result;
}

uint64_t PeerPaymentIdentityManagementSectionController.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BD978264(a1);
  v5 = v4;

  return v5;
}

uint64_t PeerPaymentIdentityManagementSectionController.init(with:)(void *a1)
{
  sub_1BD978264(a1);
  v3 = v2;

  return v3;
}

uint64_t PeerPaymentIdentityManagementSectionController.preflight(_:)(uint64_t (*a1)(void))
{
  KeyPath = swift_getKeyPath();
  sub_1BD38EA34();
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  return a1();
}

void *PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter()
{
  if ([v0 currentSegment] || !objc_msgSend(*&v0[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_account], sel_supportsDeviceTap) || (PKIsVision() & 1) != 0 || !PKIsPhone() || objc_msgSend(v0, sel_detailViewStyle) == 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F3B8FB30;
  }
}

Swift::String_optional __swiftcall PeerPaymentIdentityManagementSectionController.titleForHeader(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1, v3);
  v6 = PKPassKitBundle();
  if (v6)
  {
    v8 = v6;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v2 + 8))(v5, v1);
    v6 = v9;
    v7 = v11;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall PeerPaymentIdentityManagementSectionController.titleForFooter(inSectionIdentifier:)(Swift::String inSectionIdentifier)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1, v3);
  v6 = PKPassKitBundle();
  if (v6)
  {
    v8 = v6;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v2 + 8))(v5, v1);
    v6 = v9;
    v7 = v11;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

void PeerPaymentIdentityManagementSectionController.peerPaymentIdentityManager(_:didUpdateProfileAppearanceData:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v1 = PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter();
    v2 = sub_1BE052724();
    v1, v3, v4, v5, v6, v7, v8, v9;
    [v10 reloadSections_];
  }
}

id PeerPaymentIdentityManagementSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentIdentityManagementSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD978264(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for PeerPaymentIdentityManager(0)) init];
  swift_unknownObjectWeakInit();
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 account];

    if (v6)
    {
      *&v1[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_account] = v6;
      v7 = [objc_opt_self() defaultSettings];
      v8 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

      *&v1[OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_renderer] = v8;
      swift_unknownObjectWeakAssign();
      v9.receiver = v1;
      v9.super_class = ObjectType;
      objc_msgSendSuper2(&v9, sel_init);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC5valid3forSbSo09PKPaymentA0C_tFZ_0(void *a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result account];

    if (!v4)
    {
      return 0;
    }

    if ([a1 hasAssociatedPeerPaymentAccount] && !objc_msgSend(a1, sel_passActivationState))
    {
      v5 = [v4 supportsDeviceTap];
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_12cellForRowAt17sectionIdentifierSo07UITableK4CellCSgSo0rK0C_10Foundation9IndexPathVSStF_0(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D324();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager);
  KeyPath = swift_getKeyPath();
  v47[0] = v8;
  sub_1BD38EA34();
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  v18 = sub_1BE052404();
  v19 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v19)
  {
    v20 = objc_allocWithZone(MEMORY[0x1E69DD028]);
    v21 = sub_1BE052404();
    v19 = [v20 initWithStyle:0 reuseIdentifier:v21];
  }

  sub_1BE04D2F4();
  v22 = [v17 displayName];
  sub_1BE052434();

  sub_1BE04D304();
  v23 = [v17 imageData];
  if (!v23)
  {
    v45 = [objc_msgSend(*(v2 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_renderer) placeholderImageProvider)];
    swift_unknownObjectRelease();
    sub_1BE04D314();
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v24 = v23;
  v25 = sub_1BE04AAC4();
  v27 = v26;

  v28 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v25, v27);
  v29 = sub_1BE04AAB4();
  [v28 initWithData_];

  sub_1BD1245AC(v25, v27, v30, v31, v32, v33, v34, v35);
  sub_1BE04D314();
  v36 = sub_1BE04D2E4();
  sub_1BE04D2D4();
  v36(v47, 0);
  sub_1BD1245AC(v25, v27, v37, v38, v39, v40, v41, v42);
  if (v19)
  {
LABEL_5:
    [v19 setAccessoryType_];
    v47[3] = v4;
    v47[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
    MEMORY[0x1BFB3FD10](v47);
  }

LABEL_6:

  (*(v5 + 8))(v7, v4);
  return v19;
}

void _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_identityManager);
  v4 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController());
  v5 = NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong navigationController], v7, v8))
  {
    if ([v8 _pk_settings_useStateDrivenNavigation])
    {
      [v8 _pk_settings_pushViewController_];
    }

    else
    {
      [v8 pushViewController:v5 animated:1];
    }
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1BE04B3C4();
  [a1 deselectRowAtIndexPath:v9 animated:1];
}

unint64_t sub_1BD9789D0()
{
  result = qword_1EBD59E28;
  if (!qword_1EBD59E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E28);
  }

  return result;
}

unint64_t sub_1BD978A40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD9793C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD978A70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656D69546C6C61;
  v5 = 0xE800000000000000;
  v6 = 0x726165597473616CLL;
  if (v2 != 6)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0x746E6F4D7473616CLL;
  v8 = 0xEB00000000726165;
  if (v2 == 4)
  {
    v8 = 0xE900000000000068;
  }

  else
  {
    v7 = 0x59746E6572727563;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000079;
  v10 = 0x6164726574736579;
  if (v2 != 2)
  {
    v10 = 0x4D746E6572727563;
    v9 = 0xEC00000068746E6FLL;
  }

  if (*v1)
  {
    v4 = 0x7961646F74;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1BD978B84()
{
  result = qword_1EBD59E30;
  if (!qword_1EBD59E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E30);
  }

  return result;
}

unint64_t sub_1BD978BDC()
{
  result = qword_1EBD59E38;
  if (!qword_1EBD59E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E38);
  }

  return result;
}

unint64_t sub_1BD978C34()
{
  result = qword_1EBD59E40;
  if (!qword_1EBD59E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E40);
  }

  return result;
}

unint64_t sub_1BD978C8C()
{
  result = qword_1EBD59E48;
  if (!qword_1EBD59E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E48);
  }

  return result;
}

unint64_t sub_1BD978CE0()
{
  result = qword_1EBD59E50;
  if (!qword_1EBD59E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E50);
  }

  return result;
}

unint64_t sub_1BD978D38()
{
  result = qword_1EBD59E58;
  if (!qword_1EBD59E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E58);
  }

  return result;
}

uint64_t sub_1BD978D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB7B8);
  __swift_project_value_buffer(v10, qword_1EBDAB7B8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

uint64_t sub_1BD9790A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB7B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD97919C(uint64_t a1)
{
  v2 = sub_1BD871070();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD9791EC()
{
  result = qword_1EBD59E60;
  if (!qword_1EBD59E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E60);
  }

  return result;
}

unint64_t sub_1BD979244()
{
  result = qword_1EBD59E68;
  if (!qword_1EBD59E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E68);
  }

  return result;
}

unint64_t sub_1BD97929C()
{
  result = qword_1EBD59E70;
  if (!qword_1EBD59E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E70);
  }

  return result;
}

uint64_t sub_1BD9792F4(uint64_t a1)
{
  sub_1BD978D38();

  return sub_1BE048E14();
}

unint64_t sub_1BD979344()
{
  result = qword_1EBD59E78;
  if (!qword_1EBD59E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59E80, &qword_1BE108648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59E78);
  }

  return result;
}

unint64_t sub_1BD9793C8(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1BD979414()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v72 = v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v55 - v3;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BE04A874();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE04A884();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59E88, &qword_1BE1086A8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED8, &unk_1BE1086B0);
  v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v69 = *(*(v16 - 8) + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B76F0;
  v60 = v18;
  v76 = v16;
  v74 = v18 + v17;
  *(v18 + v17) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v19 = v75;
  v64 = __swift_project_value_buffer(v75, qword_1EBDAB400);
  v20 = v8 + 16;
  v66 = *(v8 + 16);
  v66(v10, v64, v19);
  v71 = v7;
  sub_1BE04B0A4();
  sub_1BE04A894();
  v21 = *(v77 + 56);
  v77 += 56;
  v68 = v21;
  v22 = v4;
  v21(v4, 1, 1, v70);
  v73 = sub_1BE048BB4();
  v23 = *(v73 - 8);
  v63 = *(v23 + 56);
  v67 = v23 + 56;
  v63(v72, 1, 1, v73);
  v24 = v74;
  sub_1BE048BD4();
  v65 = v20;
  v59 = *(v76 + 48);
  *(v24 + v69) = 1;
  sub_1BE052354();
  v25 = v64;
  v26 = v75;
  v27 = v66;
  v66(v10, v64, v75);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v28 = v10;
  v29 = v70;
  v68(v22, 1, 1, v70);
  v63(v72, 1, 1, v73);
  sub_1BE048BD4();
  v59 = 2 * v69;
  v57 = (v74 + 2 * v69);
  v58 = *(v76 + 48);
  *v57 = 2;
  sub_1BE052354();
  v27(v28, v25, v26);
  sub_1BE04B0A4();
  v61 = v15;
  sub_1BE04A894();
  v30 = v22;
  v31 = v68;
  v68(v22, 1, 1, v29);
  v63(v72, 1, 1, v73);
  sub_1BE048BD4();
  v32 = v69;
  v33 = v74;
  v34 = *(v76 + 48);
  v58 = v74 + v59 + v69;
  v59 = v34;
  *v58 = 3;
  v55[1] = v13;
  sub_1BE052354();
  v35 = v66;
  v66(v28, v64, v75);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v62 = v30;
  v36 = v70;
  v31(v30, 1, 1, v70);
  v37 = v63;
  v63(v72, 1, 1, v73);
  sub_1BE048BD4();
  v59 = 4 * v32;
  v57 = (v33 + 4 * v32);
  v58 = *(v76 + 48);
  *v57 = 4;
  sub_1BE052354();
  v38 = v28;
  v39 = v64;
  v40 = v75;
  v35(v38, v64, v75);
  sub_1BE04B0A4();
  v41 = v38;
  sub_1BE04A894();
  v68(v62, 1, 1, v36);
  v37(v72, 1, 1, v73);
  sub_1BE048BD4();
  v42 = v69;
  v43 = (v74 + v59 + v69);
  v59 = *(v76 + 48);
  *v43 = 5;
  sub_1BE052354();
  v56 = v41;
  v66(v41, v39, v40);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v44 = v70;
  v45 = v72;
  v46 = v68;
  v68(v62, 1, 1, v70);
  v63(v45, 1, 1, v73);
  sub_1BE048BD4();
  v47 = v74;
  v48 = *(v76 + 48);
  v58 = v74 + 6 * v42;
  v59 = v48;
  *v58 = 6;
  sub_1BE052354();
  v49 = v56;
  v66(v56, v64, v75);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v50 = v62;
  v46(v62, 1, 1, v44);
  v51 = v73;
  v52 = v63;
  v63(v45, 1, 1, v73);
  sub_1BE048BD4();
  *(v47 - v69 + 8 * v69) = 7;
  sub_1BE052354();
  v66(v49, v64, v75);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v68(v50, 1, 1, v70);
  v52(v45, 1, 1, v51);
  sub_1BE048BD4();
  v53 = sub_1BD1AE734(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v53;
}

uint64_t sub_1BD97A070(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD97A0DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

uint64_t sub_1BD97A17C(uint64_t a1, uint64_t *a2)
{
  sub_1BD97A8E4(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(v6, v3 + v4);
  swift_endAccess();
  sub_1BD97A1FC();
  return sub_1BD0DE53C(v6, &qword_1EBD3F678, &unk_1BE0C64C0);
}

void sub_1BD97A1FC()
{
  v1 = v0;
  v2 = sub_1BE04B794();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v83 - v7;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD97A8E4(&v1[v13], v91);
  if (v92)
  {
    v88 = v5;
    v89 = v3;
    sub_1BD043990(v91, v93);
    sub_1BE04D094();
    sub_1BD0EE8CC(v93, v91);
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();
    v16 = os_log_type_enabled(v14, v15);
    v90 = v8;
    if (v16)
    {
      v86 = v2;
      v87 = v1;
      v17 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = v17;
      *v17 = 138412290;
      v18 = v92;
      v19 = __swift_project_boxed_opaque_existential_1(v91, v92);
      v83 = &v83;
      v20 = *(v18 - 8);
      v21 = MEMORY[0x1EEE9AC00](v19);
      v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      if (sub_1BE053B54())
      {
        (*(v20 + 8))(v23, v18);
      }

      else
      {
        swift_allocError();
        (*(v20 + 32))(v31, v23, v18);
      }

      v32 = _swift_stdlib_bridgeErrorToNSError();
      __swift_destroy_boxed_opaque_existential_0(v91, v33, v34, v35, v36, v37, v38, v39);
      v41 = v84;
      v40 = v85;
      *(v85 + 1) = v32;
      *v41 = v32;
      _os_log_impl(&dword_1BD026000, v14, v15, "NearbyPeerPayment: presenting error %@", v40, 0xCu);
      sub_1BD0DE53C(v41, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v41, -1, -1);
      MEMORY[0x1BFB45F20](v40, -1, -1);

      (*(v10 + 8))(v12, v9);
      v2 = v86;
      v1 = v87;
    }

    else
    {

      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0(v91, v24, v25, v26, v27, v28, v29, v30);
    }

    v42 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView];
    __swift_project_boxed_opaque_existential_1(v93, v94);
    sub_1BE04A484();
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    __swift_project_boxed_opaque_existential_1(v93, v94);
    sub_1BE04A494();
    v46 = v45;
    v47 = *&v42[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v48 = sub_1BE052404();
    v44, v49, v50, v51, v52, v53, v54, v55;
    [v47 setText_];

    v56 = *&v42[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v57 = v88;
    if (v46)
    {
      v58 = sub_1BE052404();
    }

    else
    {
      v58 = 0;
    }

    v60 = v89;
    v59 = v90;
    [v56 setText_];

    [v42 setNeedsLayout];
    v46, v61, v62, v63, v64, v65, v66, v67;
    v68 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
    __swift_project_boxed_opaque_existential_1(v93, v94);
    sub_1BE04B894();
    (*(v60 + 16))(v57, v59, v2);
    v69 = (*(v60 + 88))(v57, v2);
    if (v69 == *MEMORY[0x1E69B7E90])
    {
      v70 = [objc_opt_self() systemRedColor];
      (*(v60 + 8))(v59, v2);
    }

    else
    {
      v71 = v69;
      v72 = *MEMORY[0x1E69B7E98];
      v73 = objc_opt_self();
      v74 = (v60 + 8);
      if (v71 == v72)
      {
        v70 = [v73 grayColor];
        (*v74)(v59, v2);
      }

      else
      {
        v70 = [v73 systemRedColor];
        v75 = *v74;
        (*v74)(v59, v2);
        v75(v57, v2);
      }
    }

    [v68 setTintColor_];

    sub_1BD97B678();
    [v1 setNeedsLayout];
    __swift_destroy_boxed_opaque_existential_0(v93, v76, v77, v78, v79, v80, v81, v82);
  }

  else
  {
    sub_1BD0DE53C(v91, &qword_1EBD3F678, &unk_1BE0C64C0);
  }
}

uint64_t sub_1BD97A88C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  return sub_1BD97A8E4(v1 + v3, a1);
}

uint64_t sub_1BD97A8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F678, &unk_1BE0C64C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD97A954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD266DC0(a1, v1 + v3);
  swift_endAccess();
  sub_1BD97A1FC();
  return sub_1BD0DE53C(a1, &qword_1EBD3F678, &unk_1BE0C64C0);
}

void (*sub_1BD97A9D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD97AA34;
}

void sub_1BD97AA34(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BD97A1FC();
  }
}

id sub_1BD97AA68()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error];
  v7 = type metadata accessor for NearbyPeerPaymentErrorView();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = v0;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD97AD80();

  return v8;
}

id sub_1BD97ABEC(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v6 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v7 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error];
  v9 = type metadata accessor for NearbyPeerPaymentErrorView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = v1;
  v14.super_class = v9;
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_1BD97AD80();
  }

  return v11;
}

void sub_1BD97AD80()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor_];

  [v2 setAlpha_];
  [v0 addSubview_];
  v5 = [objc_opt_self() configurationWithPointSize:3 weight:63.0];
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
  v10 = v5;
  v7 = sub_1BE052404();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v10];

  [v6 setImage_];
  [v6 setContentMode_];
  v9 = [v3 systemRedColor];
  [v6 setTintColor_];

  [v1 addSubview_];
  [v1 addSubview_];
  sub_1BD97B678();
  [v0 addSubview_];
}

id sub_1BD97AFA0(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  v105.receiver = v1;
  v105.super_class = type metadata accessor for NearbyPeerPaymentErrorView();
  objc_msgSendSuper2(&v105, sel_layoutSubviews);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 safeAreaInsets];
  v11 = v10;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v107.origin.x = v3;
  v107.origin.y = v5;
  v107.size.width = v7;
  v107.size.height = v9;
  CGRectDivide(v107, &slice, &remainder, v11, CGRectMinYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  [v1 safeAreaInsets];
  v17 = v16;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  CGRectDivide(v108, &slice, &remainder, v17, CGRectMaxYEdge);
  v18 = remainder.origin.x;
  v19 = remainder.origin.y;
  v20 = remainder.size.width;
  v21 = remainder.size.height;
  if (PKIsSmallDevice() || (v22 = [v1 traitCollection], v23 = objc_msgSend(v22, sel_preferredContentSizeCategory), v22, LOBYTE(v22) = sub_1BE052E84(), v23, (v22 & 1) != 0))
  {
    v24 = 1;
    v25 = 16.0;
    v26 = 16.0;
  }

  else
  {
    v24 = 0;
    v26 = 24.0;
    v25 = 70.0;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v109.origin.x = v18;
  v109.origin.y = v19;
  v109.size.width = v20;
  v109.size.height = v21;
  CGRectDivide(v109, &slice, &remainder, v25, CGRectMaxYEdge);
  v110 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v110, &slice, &remainder, v26, CGRectMinXEdge);
  v111 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v111, &slice, &remainder, v26, CGRectMaxXEdge);
  v27 = remainder.origin.x;
  v28 = remainder.origin.y;
  v29 = remainder.size.width;
  v30 = remainder.size.height;
  v31 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView];
  [v31 sizeThatFits_];
  v33 = v32.n128_f64[0];
  v34.n128_f64[0] = v27;
  v35.n128_f64[0] = v28;
  v36.n128_f64[0] = v29;
  v37.n128_f64[0] = v30;
  PKSizeAlignedInRect(0x200000001, v38, v32, v34, v35, v36, v37, v39);
  [v31 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v112.origin.x = v27;
  v112.origin.y = v28;
  v112.size.width = v29;
  v112.size.height = v30;
  CGRectDivide(v112, &slice, &remainder, v33 + 16.0, CGRectMaxYEdge);
  v40 = remainder.origin.x;
  v41 = remainder.origin.y;
  v42 = remainder.size.width;
  v43 = remainder.size.height;
  [v1 bounds];
  v44 = CGRectGetWidth(v113);
  v45 = PKUIPixelLength();
  v46.n128_f64[0] = v44;
  v47.n128_f64[0] = v45;
  v48.n128_f64[0] = v40;
  v49.n128_f64[0] = v41;
  v50.n128_f64[0] = v42;
  v51.n128_f64[0] = v43;
  PKSizeAlignedInRect(0x200000001, v46, v47, v48, v49, v50, v51, v52);
  v53 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_divider];
  [v53 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v114.origin.x = v40;
  v114.origin.y = v41;
  v114.size.width = v42;
  v114.size.height = v43;
  CGRectDivide(v114, &slice, &remainder, v45, CGRectMaxYEdge);
  v55 = remainder.origin.x;
  v54 = remainder.origin.y;
  v56 = remainder.size.width;
  v57 = remainder.size.height;
  if ((v24 & 1) == 0)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v58 = v55;
    v59 = v56;
    v60 = v57;
    CGRectDivide(*(&v54 - 1), &slice, &remainder, v26, CGRectMinXEdge);
    v115 = remainder;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    CGRectDivide(v115, &slice, &remainder, v26, CGRectMaxXEdge);
    v55 = remainder.origin.x;
    v54 = remainder.origin.y;
    v56 = remainder.size.width;
    v57 = remainder.size.height;
  }

  v61 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_scrollView];
  v62 = v55;
  v63 = v54;
  v64 = v56;
  v65 = v57;
  MinY = CGRectGetMinY(*(&v54 - 1));
  [v1 bounds];
  v67 = CGRectGetWidth(v116);
  v117.origin.x = v55;
  v117.origin.y = v63;
  v117.size.width = v56;
  v117.size.height = v57;
  v68 = 0.0;
  [v61 setFrame_];
  v69 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_labelsView];
  [v69 sizeThatFits_];
  v102 = v70;
  v72 = v71;
  v73 = *&v1[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_imageView];
  [v73 sizeThatFits_];
  v101 = v74;
  v76 = v75;
  v77 = v72 + v75 + 16.0;
  [v61 frame];
  [v61 setContentSize_];
  v119.origin.y = 0.0;
  v119.origin.x = v55;
  v119.size.width = v56;
  v119.size.height = v57;
  if (v77 >= CGRectGetHeight(v119) - v25)
  {
    [v61 setContentInset_];
    [v61 setContentOffset_];
    [v53 setAlpha_];
  }

  else
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v120.origin.y = 0.0;
    v120.origin.x = v55;
    v120.size.width = v56;
    v120.size.height = v57;
    CGRectDivide(v120, &slice, &remainder, v25, CGRectMinYEdge);
    v78 = remainder.origin.x;
    v79 = remainder.origin.y;
    v80 = remainder.size.width;
    v81 = remainder.size.height;
    v82 = CGRectGetHeight(remainder);
    memset(&slice, 0, sizeof(slice));
    v83 = (v82 - v77) * 0.5;
    memset(&remainder, 0, sizeof(remainder));
    v121.origin.x = v78;
    v121.origin.y = v79;
    v121.size.width = v80;
    v121.size.height = v81;
    CGRectDivide(v121, &slice, &remainder, v83, CGRectMinYEdge);
    v122 = remainder;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    CGRectDivide(v122, &slice, &remainder, v83, CGRectMaxYEdge);
    v55 = remainder.origin.x;
    v68 = remainder.origin.y;
    v56 = remainder.size.width;
    v57 = remainder.size.height;
  }

  v84.n128_u64[0] = v101;
  v85.n128_f64[0] = v76;
  v86.n128_f64[0] = v55;
  v87.n128_f64[0] = v68;
  v88.n128_f64[0] = v56;
  v89.n128_f64[0] = v57;
  PKSizeAlignedInRect(1, v84, v85, v86, v87, v88, v89, v90);
  v92 = v91;
  [v73 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v123.origin.x = v55;
  v123.origin.y = v68;
  v123.size.width = v56;
  v123.size.height = v57;
  CGRectDivide(v123, &slice, &remainder, v92 + 16.0, CGRectMinYEdge);
  v93.n128_u64[0] = *&remainder.origin.x;
  v94.n128_u64[0] = *&remainder.origin.y;
  v95.n128_u64[0] = *&remainder.size.width;
  v96.n128_u64[0] = *&remainder.size.height;
  v97.n128_u64[0] = v102;
  v98.n128_f64[0] = v72;
  PKSizeAlignedInRect(1, v97, v98, v93, v94, v95, v96, v99);
  return [v69 setFrame_];
}

void sub_1BD97B678()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v68 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v16 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
  swift_beginAccess();
  sub_1BD97A8E4(v0 + v16, &v74);
  if (v75)
  {
    v72 = v10;
    sub_1BD043990(&v74, v76);
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    if (sub_1BE04B8A4())
    {
      v69 = *(v0 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView);
      v24 = *(v2 + 104);
      v71 = *MEMORY[0x1E69B8050];
      v25 = v1;
      v70 = v24;
      v24(v9);
      v26 = PKPassKitBundle();
      if (v26)
      {
        v27 = v26;
        v28 = sub_1BE04B6F4();
        v30 = v29;

        v68 = *(v2 + 8);
        v68(v9, v25);
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BD0EE8CC(v76, &v74);
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        sub_1BD043990(&v74, v32 + 24);
        sub_1BE04AFD4();
        v33 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
        v34 = &v15[*(v33 + 20)];
        *v34 = v28;
        v34[1] = v30;
        v35 = &v15[*(v33 + 24)];
        *v35 = sub_1BD97CA30;
        v35[1] = v32;
        v36 = v73;
        v70(v73, v71, v25);
        v37 = PKPassKitBundle();
        if (v37)
        {
          v38 = v37;
          v39 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0) + 48)];
          v40 = sub_1BE04B6F4();
          v42 = v41;

          v68(v36, v25);
          v43 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1BD0EE8CC(v76, &v74);
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          sub_1BD043990(&v74, v44 + 24);
          sub_1BE04AFD4();
          v45 = &v39[*(v33 + 20)];
          *v45 = v40;
          v45[1] = v42;
          v46 = &v39[*(v33 + 24)];
          *v46 = sub_1BD97CA7C;
          v46[1] = v44;
          swift_storeEnumTagMultiPayload();
          v47 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
          v48 = v69;
          swift_beginAccess();
          sub_1BD3BE2EC(v15, v48 + v47);
          swift_endAccess();
          sub_1BD3BB48C();
          sub_1BD97C9D4(v15);
          __swift_destroy_boxed_opaque_existential_0(v76, v49, v50, v51, v52, v53, v54, v55);
          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(v76, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    sub_1BD0DE53C(&v74, &qword_1EBD3F678, &unk_1BE0C64C0);
  }

  v56 = *(v0 + OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_buttonsView);
  v57 = v1;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B8050], v1);
  v58 = PKPassKitBundle();
  if (!v58)
  {
    __break(1u);
    goto LABEL_12;
  }

  v59 = v58;
  v60 = sub_1BE04B6F4();
  v62 = v61;

  (*(v2 + 8))(v4, v57);
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04AFD4();
  v64 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  v65 = &v12[*(v64 + 20)];
  *v65 = v60;
  v65[1] = v62;
  v66 = &v12[*(v64 + 24)];
  *v66 = sub_1BD97C9CC;
  v66[1] = v63;
  swift_storeEnumTagMultiPayload();
  v67 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v12, v56 + v67);
  swift_endAccess();
  sub_1BD3BB48C();
  sub_1BD97C9D4(v12);
}

void sub_1BD97BC80(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v59 - v4;
  v6 = sub_1BE04B824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1BD0EE8CC(a2, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0, &unk_1BE10A7B0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(v60, v63);
      __swift_project_boxed_opaque_existential_1(v63, v63[3]);
      sub_1BE04B854();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1BD0DE53C(v5, &unk_1EBD3F6C0, &qword_1BE0DA790);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B98E0;
        v20 = *MEMORY[0x1E69BA440];
        *(inited + 32) = *MEMORY[0x1E69BA440];
        v59[1] = inited + 32;
        v21 = sub_1BE052434();
        v22 = MEMORY[0x1E69BABE8];
        *(inited + 40) = v21;
        *(inited + 48) = v23;
        v24 = *v22;
        *(inited + 56) = *v22;
        v25 = sub_1BE052434();
        v26 = MEMORY[0x1E69BAFB0];
        *(inited + 64) = v25;
        *(inited + 72) = v27;
        v28 = *v26;
        *(inited + 80) = *v26;
        v29 = sub_1BE052434();
        v30 = MEMORY[0x1E69BAF60];
        *(inited + 88) = v29;
        *(inited + 96) = v31;
        v32 = *v30;
        *(inited + 104) = *v30;
        *(inited + 112) = sub_1BE052434();
        *(inited + 120) = v33;
        v34 = v20;
        v35 = v24;
        v36 = v28;
        v37 = v32;
        v38 = sub_1BD1AAF50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
        swift_arrayDestroy();
        _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v38);
        v38, v39, v40, v41, v42, v43, v44, v45;
        v46 = sub_1BE052434();
        v48 = v47;
        _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v46, v47);
        v48, v49, v50, v51, v52, v53, v54, v55;
        (*(v7 + 8))(v9, v6);
      }

      __swift_destroy_boxed_opaque_existential_0(v63, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      v61 = 0;
      memset(v60, 0, sizeof(v60));
      sub_1BD0DE53C(v60, &qword_1EBD3F6E8, qword_1BE0C6510);
    }

    v56 = &v11[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v57 = *(v56 + 1);
      ObjectType = swift_getObjectType();
      (*(v57 + 16))(v11, ObjectType, v57);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD97C094(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  v6 = sub_1BE04B824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1BD0EE8CC(a2, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0, &unk_1BE10A7B0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(v32, v35);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_1BE04B854();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1BD0DE53C(v5, &unk_1EBD3F6C0, &qword_1BE0DA790);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        v19 = sub_1BE052434();
        v21 = v20;
        _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v19, v20);
        v21, v22, v23, v24, v25, v26, v27, v28;
        (*(v7 + 8))(v9, v6);
      }

      __swift_destroy_boxed_opaque_existential_0(v35, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_1BD0DE53C(v32, &qword_1EBD3F6E8, qword_1BE0C6510);
    }

    v29 = &v11[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 1);
      ObjectType = swift_getObjectType();
      (*(v30 + 8))(v11, ObjectType, v30);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD97C380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  v4 = sub_1BE04B824();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
    swift_beginAccess();
    sub_1BD97A8E4(&v9[v10], v35);
    if (v36)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0, &unk_1BE10A7B0);
      if (swift_dynamicCast())
      {
        if (*(&v33 + 1))
        {
          sub_1BD043990(&v32, v35);
          __swift_project_boxed_opaque_existential_1(v35, v36);
          sub_1BE04B854();
          if ((*(v5 + 48))(v3, 1, v4) == 1)
          {
            sub_1BD0DE53C(v3, &unk_1EBD3F6C0, &qword_1BE0DA790);
          }

          else
          {
            (*(v5 + 32))(v7, v3, v4);
            v21 = sub_1BE052434();
            v23 = v22;
            _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v21, v22);
            v23, v24, v25, v26, v27, v28, v29, v30;
            (*(v5 + 8))(v7, v4);
          }

          __swift_destroy_boxed_opaque_existential_0(v35, v11, v12, v13, v14, v15, v16, v17);
          goto LABEL_10;
        }
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }
    }

    else
    {
      sub_1BD0DE53C(v35, &qword_1EBD3F678, &unk_1BE0C64C0);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_1BD0DE53C(&v32, &qword_1EBD3F6E8, qword_1BE0C6510);
LABEL_10:
    v18 = &v9[OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 1);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v9, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id NearbyPeerPaymentErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentErrorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD97C9D4(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_6Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  __swift_destroy_boxed_opaque_existential_0((v8 + 24), v9, v10, v11, v12, v13, v14, v15);

  return swift_deallocObject();
}

id static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v529 = a8;
  v530 = a6;
  v531 = a7;
  v532 = a4;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v527 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v527 - v20;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v25 = &v527 - v23;
  if (a3)
  {
    v534 = a3;
    if (a5)
    {
LABEL_3:
      sub_1BE048C84();
      v533 = a5;
      goto LABEL_8;
    }
  }

  else
  {
    (*(v16 + 104))(&v527 - v23, *MEMORY[0x1E69B80D0], v15, v24.n128_f64[0]);
    v26 = PKPassKitBundle();
    if (!v26)
    {
      __break(1u);
      goto LABEL_58;
    }

    v27 = v26;
    a2 = sub_1BE04B6F4();
    v534 = v28;

    (*(v16 + 8))(v25, v15);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  (*(v16 + 104))(v21, *MEMORY[0x1E69B80D8], v15, v24);
  sub_1BE048C84();
  v29 = PKPassKitBundle();
  if (!v29)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v30 = v29;
  v532 = sub_1BE04B6F4();
  v533 = v31;

  (*(v16 + 8))(v21, v15);
LABEL_8:
  v528 = a9;
  sub_1BE048C84();
  v32 = [a1 localizedTitle];
  sub_1BE052434();
  v34 = v33;

  v35 = [a1 localizedMessage];
  sub_1BE052434();
  v37 = v36;

  v38 = sub_1BE052404();
  v34, v39, v40, v41, v42, v43, v44, v45;
  v46 = sub_1BE052404();
  v37, v47, v48, v49, v50, v51, v52, v53;
  v54 = [objc_opt_self() alertControllerWithTitle:v38 message:v46 preferredStyle:1];

  PKApplyDefaultIconToAlertController();
  v55 = [a1 severity];
  if (v55 > 3)
  {
    if (v55 > 5)
    {
      if (v55 == 6)
      {
        v533, v56, v57, v58, v59, v60, v61, v62;
        v195 = swift_allocObject();
        v195[2] = v529;
        v195[3] = v528;
        sub_1BE048964();
        v196 = v534;
        v65 = sub_1BE052404();
        v196, v197, v198, v199, v200, v201, v202, v203;
        v537 = sub_1BD267328;
        v538 = v195;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v536 = sub_1BD198918;
        *(&v536 + 1) = &block_descriptor_12_8;
        v73 = _Block_copy(&aBlock);
        v538, v204, v205, v206, v207, v208, v209, v210;
        v81 = [objc_opt_self() actionWithTitle:v65 style:1 handler:v73];
        goto LABEL_42;
      }

      if (v55 == 7)
      {
        v533, v56, v57, v58, v59, v60, v61, v62;
        v334 = [a1 localizedRecoveryDescription];
        if (!v334)
        {
          v436 = swift_allocObject();
          v436[2] = v529;
          v436[3] = v528;
          sub_1BE048964();
          v437 = v534;
          v65 = sub_1BE052404();
          v437, v438, v439, v440, v441, v442, v443, v444;
          v537 = sub_1BD267328;
          v538 = v436;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v536 = sub_1BD198918;
          *(&v536 + 1) = &block_descriptor_223;
          v73 = _Block_copy(&aBlock);
          v538, v445, v446, v447, v448, v449, v450, v451;
          v81 = [objc_opt_self() actionWithTitle:v65 style:1 handler:v73];
          goto LABEL_42;
        }

        v335 = v334;
        sub_1BE052434();
        v337 = v336;

        v338 = swift_allocObject();
        v339 = v528;
        v338[2] = v527;
        v338[3] = a1;
        v338[4] = v529;
        v338[5] = v339;
        v338[6] = 0;
        v338[7] = 0;
        v340 = a1;
        sub_1BE048964();
        v341 = sub_1BE052404();
        v337, v342, v343, v344, v345, v346, v347, v348;
        v537 = sub_1BD9803F8;
        v538 = v338;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v536 = sub_1BD198918;
        *(&v536 + 1) = &block_descriptor_6_2;
        v349 = _Block_copy(&aBlock);
        v538, v350, v351, v352, v353, v354, v355, v356;
        v193 = [objc_opt_self() actionWithTitle:v341 style:0 handler:v349];
        _Block_release(v349);

        [v54 addAction_];
        v357 = [v340 userInfo];
        v358 = sub_1BE052244();

        v359 = sub_1BE052434();
        v367 = v360;
        if (v358[2])
        {
          v368 = v54;
          v369 = sub_1BD148F70(v359, v360);
          v371 = v370;
          v367, v370, v372, v373, v374, v375, v376, v377;
          v385 = v534;
          if (v371)
          {
            sub_1BD038CD0(v358[7] + 32 * v369, &aBlock);
            v358, v386, v387, v388, v389, v390, v391, v392;
            sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
            v54 = v368;
            [v368 setPreferredAction_];
            v385, v393, v394, v395, v396, v397, v398, v399;
            goto LABEL_49;
          }

          v358, v378, v379, v380, v381, v382, v383, v384;
          v54 = v368;
        }

        else
        {
          v358, v360, v361, v362, v363, v364, v365, v366;
          v367, v460, v461, v462, v463, v464, v465, v466;
          v385 = v534;
        }

        aBlock = 0u;
        v536 = 0u;
        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v385, v495, v496, v497, v498, v499, v500, v501;
        return v54;
      }

      goto LABEL_60;
    }

    if (v55 != 4)
    {
      v534, v56, v57, v58, v59, v60, v61, v62;
      v211 = swift_allocObject();
      v213 = v528;
      v212 = v529;
      v211[2] = v529;
      v211[3] = v213;
      sub_1BE048964();
      v214 = v533;
      v215 = sub_1BE052404();
      v214, v216, v217, v218, v219, v220, v221, v222;
      v537 = sub_1BD267328;
      v538 = v211;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v536 = sub_1BD198918;
      *(&v536 + 1) = &block_descriptor_18_3;
      v223 = _Block_copy(&aBlock);
      v538, v224, v225, v226, v227, v228, v229, v230;
      v231 = objc_opt_self();
      v232 = [v231 actionWithTitle:v215 style:1 handler:v223];
      _Block_release(v223);

      [v54 addAction_];
      v233 = [a1 localizedRecoveryDescription];
      if (!v233)
      {
        return v54;
      }

      v234 = v233;
      sub_1BE052434();
      v236 = v235;

      v237 = swift_allocObject();
      v534 = v54;
      v238 = v237;
      v237[2] = v527;
      v237[3] = a1;
      v237[4] = v212;
      v237[5] = v213;
      v237[6] = 0;
      v237[7] = 0;
      v239 = a1;
      sub_1BE048964();
      v240 = sub_1BE052404();
      v236, v241, v242, v243, v244, v245, v246, v247;
      v537 = sub_1BD981080;
      v538 = v238;
      v54 = v534;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v536 = sub_1BD198918;
      *(&v536 + 1) = &block_descriptor_25_6;
      v248 = _Block_copy(&aBlock);
      v538, v249, v250, v251, v252, v253, v254, v255;
      v193 = [v231 actionWithTitle:v240 style:0 handler:v248];
      _Block_release(v248);

      [v54 addAction_];
      v194 = [v239 userInfo];
      goto LABEL_24;
    }

    v82 = v54;
    v83 = [a1 localizedRecoveryDescription];
    if (!v83)
    {
      v407 = swift_allocObject();
      v407[2] = v530;
      v407[3] = v531;
      sub_1BE048964();
      v408 = v534;
      v409 = sub_1BE052404();
      v537 = sub_1BD267328;
      v538 = v407;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v536 = sub_1BD198918;
      *(&v536 + 1) = &block_descriptor_31_4;
      v410 = _Block_copy(&aBlock);
      v538, v411, v412, v413, v414, v415, v416, v417;
      v418 = objc_opt_self();
      v419 = [v418 actionWithTitle:v409 style:0 handler:v410];
      _Block_release(v410);

      [v82 addAction_];
      v427 = v533;
      if (a2 == v532 && v408 == v533)
      {
        v533, v420, v421, v422, v423, v424, v425, v426;
        v435 = v408;
      }

      else
      {
        v502 = sub_1BE053B84();
        v408, v503, v504, v505, v506, v507, v508, v509;
        if ((v502 & 1) == 0)
        {
          v510 = swift_allocObject();
          v510[2] = v529;
          v510[3] = v528;
          sub_1BE048964();
          v511 = sub_1BE052404();
          v427, v512, v513, v514, v515, v516, v517, v518;
          v537 = sub_1BD267328;
          v538 = v510;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v536 = sub_1BD198918;
          *(&v536 + 1) = &block_descriptor_37_4;
          v519 = _Block_copy(&aBlock);
          v538, v520, v521, v522, v523, v524, v525, v526;
          v193 = [v418 actionWithTitle:v511 style:1 handler:v519];
          _Block_release(v519);

          v54 = v82;
          [v82 addAction_];
          goto LABEL_49;
        }

        v435 = v427;
      }

      v435, v428, v429, v430, v431, v432, v433, v434;
      return v82;
    }

    v84 = v83;
    sub_1BE052434();
    v86 = v85;

    v87 = swift_allocObject();
    v87[2] = v527;
    v87[3] = a1;
    v87[4] = v530;
    v87[5] = v531;
    v87[6] = a10;
    v87[7] = a11;
    sub_1BE048964();
    v88 = a1;
    sub_1BD0D44B8(a10, a11);
    v89 = sub_1BE052404();
    v86, v90, v91, v92, v93, v94, v95, v96;
    v537 = sub_1BD981080;
    v538 = v87;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v536 = sub_1BD198918;
    *(&v536 + 1) = &block_descriptor_44_2;
    v97 = _Block_copy(&aBlock);
    v538, v98, v99, v100, v101, v102, v103, v104;
    v105 = objc_opt_self();
    v106 = [v105 actionWithTitle:v89 style:0 handler:v97];
    _Block_release(v97);

    v54 = v82;
    [v82 addAction_];
    v107 = [v88 userInfo];
    v108 = sub_1BE052244();

    v109 = sub_1BE052434();
    v117 = v110;
    if (v108[2])
    {
      v118 = sub_1BD148F70(v109, v110);
      v120 = v119;
      v117, v119, v121, v122, v123, v124, v125, v126;
      if (v120)
      {
        sub_1BD038CD0(v108[7] + 32 * v118, &aBlock);
        v108, v134, v135, v136, v137, v138, v139, v140;
        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v54 = v82;
        [v82 setPreferredAction_];
        v534, v141, v142, v143, v144, v145, v146, v147;

        goto LABEL_47;
      }

      v108, v127, v128, v129, v130, v131, v132, v133;
      v54 = v82;
    }

    else
    {
      v108, v110, v111, v112, v113, v114, v115, v116;
      v117, v453, v454, v455, v456, v457, v458, v459;
    }

    aBlock = 0u;
    v536 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v534, v467, v468, v469, v470, v471, v472, v473;
LABEL_47:
    v475 = v528;
    v474 = v529;
    v476 = swift_allocObject();
    v476[2] = v474;
    v476[3] = v475;
    sub_1BE048964();
    v477 = v533;
    v478 = sub_1BE052404();
    v477, v479, v480, v481, v482, v483, v484, v485;
    v537 = sub_1BD267328;
    v538 = v476;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v536 = sub_1BD198918;
    *(&v536 + 1) = &block_descriptor_50_6;
    v486 = _Block_copy(&aBlock);
    v538, v487, v488, v489, v490, v491, v492, v493;
    v193 = [v105 actionWithTitle:v478 style:1 handler:v486];
    _Block_release(v486);

    [v54 addAction_];
    goto LABEL_49;
  }

  if (v55 < 2)
  {
    v533, v56, v57, v58, v59, v60, v61, v62;
    v63 = swift_allocObject();
    v63[2] = v530;
    v63[3] = v531;
    sub_1BE048964();
    v64 = v534;
    v65 = sub_1BE052404();
    v64, v66, v67, v68, v69, v70, v71, v72;
    v537 = sub_1BD267328;
    v538 = v63;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v536 = sub_1BD198918;
    *(&v536 + 1) = &block_descriptor_81_3;
    v73 = _Block_copy(&aBlock);
    v538, v74, v75, v76, v77, v78, v79, v80;
    v81 = [objc_opt_self() actionWithTitle:v65 style:0 handler:v73];
LABEL_42:
    v452 = v81;
    _Block_release(v73);

    [v54 addAction_];
    return v54;
  }

  if (v55 == 2)
  {
    v533, v56, v57, v58, v59, v60, v61, v62;
    v148 = swift_allocObject();
    v150 = v530;
    v149 = v531;
    v148[2] = v530;
    v148[3] = v149;
    sub_1BE048964();
    v151 = v534;
    v152 = sub_1BE052404();
    v151, v153, v154, v155, v156, v157, v158, v159;
    v537 = sub_1BD214190;
    v538 = v148;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v536 = sub_1BD198918;
    *(&v536 + 1) = &block_descriptor_68_0;
    v160 = _Block_copy(&aBlock);
    v538, v161, v162, v163, v164, v165, v166, v167;
    v168 = objc_opt_self();
    v169 = [v168 actionWithTitle:v152 style:0 handler:v160];
    _Block_release(v160);

    [v54 addAction_];
    v170 = [a1 localizedRecoveryDescription];
    if (!v170)
    {
      return v54;
    }

    v171 = v170;
    sub_1BE052434();
    v173 = v172;

    v174 = swift_allocObject();
    v534 = v54;
    v175 = v174;
    v174[2] = v527;
    v174[3] = a1;
    v174[4] = v150;
    v174[5] = v149;
    v174[6] = 0;
    v174[7] = 0;
    sub_1BE048964();
    v176 = a1;
    v177 = sub_1BE052404();
    v173, v178, v179, v180, v181, v182, v183, v184;
    v537 = sub_1BD981080;
    v538 = v175;
    v54 = v534;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v536 = sub_1BD198918;
    *(&v536 + 1) = &block_descriptor_75_3;
    v185 = _Block_copy(&aBlock);
    v538, v186, v187, v188, v189, v190, v191, v192;
    v193 = [v168 actionWithTitle:v177 style:0 handler:v185];
    _Block_release(v185);

    [v54 addAction_];
    v194 = [v176 userInfo];
LABEL_24:
    v256 = v194;
    v257 = sub_1BE052244();

    v258 = sub_1BE052434();
    v266 = v259;
    if (v257[2])
    {
      v267 = sub_1BD148F70(v258, v259);
      v269 = v268;
      v266, v268, v270, v271, v272, v273, v274, v275;
      if (v269)
      {
        sub_1BD038CD0(v257[7] + 32 * v267, &aBlock);
        v257, v283, v284, v285, v286, v287, v288, v289;
        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v54 = v534;
        [v534 setPreferredAction_];
LABEL_49:

        return v54;
      }

      v257, v276, v277, v278, v279, v280, v281, v282;
      v54 = v534;
    }

    else
    {
      v257, v259, v260, v261, v262, v263, v264, v265;
      v266, v400, v401, v402, v403, v404, v405, v406;
    }

    aBlock = 0u;
    v536 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    return v54;
  }

  if (v55 == 3)
  {
    v290 = v54;
    v534, v56, v57, v58, v59, v60, v61, v62;
    (*(v16 + 104))(v18, *MEMORY[0x1E69B80D8], v15);
    v291 = PKPassKitBundle();
    v293 = v530;
    v292 = v531;
    if (v291)
    {
      v294 = v291;
      sub_1BE04B6F4();
      v296 = v295;

      (*(v16 + 8))(v18, v15);
      v297 = swift_allocObject();
      v297[2] = v293;
      v297[3] = v292;
      sub_1BE048964();
      v298 = sub_1BE052404();
      v296, v299, v300, v301, v302, v303, v304, v305;
      v537 = sub_1BD267328;
      v538 = v297;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v536 = sub_1BD198918;
      *(&v536 + 1) = &block_descriptor_56_1;
      v306 = _Block_copy(&aBlock);
      v538, v307, v308, v309, v310, v311, v312, v313;
      v314 = objc_opt_self();
      v315 = [v314 actionWithTitle:v298 style:0 handler:v306];
      _Block_release(v306);

      [v290 addAction_];
      v316 = swift_allocObject();
      v316[2] = v529;
      v316[3] = v528;
      sub_1BE048964();
      v317 = v533;
      v318 = sub_1BE052404();
      v317, v319, v320, v321, v322, v323, v324, v325;
      v537 = sub_1BD267328;
      v538 = v316;
      v54 = v290;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v536 = sub_1BD198918;
      *(&v536 + 1) = &block_descriptor_62_1;
      v326 = _Block_copy(&aBlock);
      v538, v327, v328, v329, v330, v331, v332, v333;
      v193 = [v314 actionWithTitle:v318 style:1 handler:v326];
      _Block_release(v326);

      [v290 addAction_];
      goto LABEL_49;
    }

    goto LABEL_59;
  }

LABEL_60:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD97E16C()
{
  v3 = v2;
  sub_1BE0528A4();
  sub_1BD980AD0(v2, &v49);
  v4 = sub_1BE052894();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(v2 + 80);
  *(v5 + 96) = *(v2 + 64);
  *(v5 + 112) = v7;
  *(v5 + 128) = *(v2 + 96);
  v8 = *(v2 + 16);
  *(v5 + 32) = *v2;
  *(v5 + 48) = v8;
  v9 = *(v2 + 48);
  *(v5 + 64) = *(v2 + 32);
  *(v5 + 80) = v9;
  sub_1BD980AD0(v2, &v49);
  v10 = sub_1BE052894();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v6;
  v12 = *(v3 + 80);
  *(v11 + 96) = *(v3 + 64);
  *(v11 + 112) = v12;
  *(v11 + 128) = *(v3 + 96);
  v13 = *(v3 + 16);
  *(v11 + 32) = *v3;
  *(v11 + 48) = v13;
  v14 = *(v3 + 48);
  *(v11 + 64) = *(v3 + 32);
  *(v11 + 80) = v14;
  sub_1BE051924();
  v15 = *(&v49 + 1);
  v44 = v49;
  v49 = *v3;
  v50 = *(v3 + 16);
  v47 = *v3;
  v48 = *(v3 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8, &qword_1BE108818);
  MEMORY[0x1BFB3E970](v46);
  v17 = v46[0];
  if (v46[0])
  {
    v18 = [v46[0] localizedTitle];

    v17 = sub_1BE052434();
    v20 = v19;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v46[0] = v17;
  v46[1] = v20;
  v47 = v49;
  v48 = v50;
  v21 = MEMORY[0x1BFB3E970](&v45, v16);
  v22 = v45;
  *&v47 = v45;
  MEMORY[0x1EEE9AC00](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59ED0, &qword_1BE108820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59ED8, &qword_1BE108828);
  sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
  sub_1BD0DE4F4(&qword_1EBD59EE0, &qword_1EBD59ED0, &qword_1BE108820, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD980BA8();
  sub_1BE050F14();
  v20, v23, v24, v25, v26, v27, v28, v29;
  v15, v30, v31, v32, v33, v34, v35, v36;
  v44, v37, v38, v39, v40, v41, v42, v43;
}

void sub_1BD97E4E0(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8, &qword_1BE108818);
  MEMORY[0x1BFB3E970](&v5, v3);
  v4 = v5;
  if (v5)
  {
  }

  *a2 = v4 != 0;
}

_BYTE *sub_1BD97E550(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EC8, &qword_1BE108818);
    return sub_1BE0518F4();
  }

  return result;
}

uint64_t sub_1BD97E5B8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v179 = a3;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F40, &qword_1BE108858);
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v152 - v5;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F38, &qword_1BE108850);
  MEMORY[0x1EEE9AC00](v183);
  v162 = &v152 - v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F48, &unk_1BE108860);
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v152 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F18, &qword_1BE108840);
  MEMORY[0x1EEE9AC00](v177);
  v165 = &v152 - v8;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F28, &qword_1BE108848);
  MEMORY[0x1EEE9AC00](v164);
  v157 = &v152 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248, &qword_1BE111830);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v158 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v152 - v13;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
  MEMORY[0x1EEE9AC00](v172);
  v155 = &v152 - v14;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F50, &qword_1BE108870);
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v152 - v15;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F58, &qword_1BE108878);
  MEMORY[0x1EEE9AC00](v173);
  v175 = &v152 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F60, &qword_1BE108880);
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v152 - v17;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F08, &qword_1BE108838);
  MEMORY[0x1EEE9AC00](v174);
  v171 = &v152 - v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59EF8, &qword_1BE108830);
  MEMORY[0x1EEE9AC00](v180);
  v176 = &v152 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v184 = *(v20 - 8);
  v185 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v154 = &v152 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v153 = &v152 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v152 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v152 - v29;
  v31 = sub_1BE04BD74();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v152 - v34;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v39 = &v152 - v37;
  v40 = *a1;
  v41 = *(a2 + 32);
  v156 = v42;
  if (v41)
  {
    v178 = *(a2 + 24);
    v43 = v41;
    v44 = *(a2 + 48);
    if (v44)
    {
LABEL_3:
      v45 = *(a2 + 40);
      sub_1BE048C84();
      v46 = v44;
      goto LABEL_8;
    }
  }

  else
  {
    v47 = v30;
    (*(v32 + 104))(&v152 - v37, *MEMORY[0x1E69B80D0], v31, v38.n128_f64[0]);
    v48 = PKPassKitBundle();
    if (!v48)
    {
      __break(1u);
      goto LABEL_31;
    }

    v49 = v48;
    v178 = sub_1BE04B6F4();
    v43 = v50;

    (*(v32 + 8))(v39, v31);
    v30 = v47;
    v44 = *(a2 + 48);
    if (v44)
    {
      goto LABEL_3;
    }
  }

  (*(v32 + 104))(v35, *MEMORY[0x1E69B80D8], v31, v38);
  sub_1BE048C84();
  v51 = PKPassKitBundle();
  if (!v51)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = v51;
  v45 = sub_1BE04B6F4();
  v46 = v53;

  (*(v32 + 8))(v35, v31);
LABEL_8:
  sub_1BE048C84();
  v54 = [v40 severity];
  if (v54 <= 3)
  {
    if (v54 < 3)
    {
      v46, v55, v56, v57, v58, v59, v60, v61;
      v187 = v178;
      v188 = v43;
      v62 = swift_allocObject();
      v63 = *(a2 + 80);
      *(v62 + 80) = *(a2 + 64);
      *(v62 + 96) = v63;
      *(v62 + 112) = *(a2 + 96);
      v64 = *(a2 + 16);
      *(v62 + 16) = *a2;
      *(v62 + 32) = v64;
      v65 = *(a2 + 48);
      *(v62 + 48) = *(a2 + 32);
      *(v62 + 64) = v65;
      sub_1BD980AD0(a2, v186);
      sub_1BD0DDEBC();
      sub_1BE051744();
      v67 = v184;
      v66 = v185;
      (*(v184 + 2))(v170, v30, v185);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
      sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
      v68 = v171;
      sub_1BE04F9A4();
      v69 = &qword_1EBD59F08;
      v70 = &qword_1BE108838;
      sub_1BD0DE19C(v68, v175, &qword_1EBD59F08, &qword_1BE108838);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      sub_1BD980CC0();
      sub_1BD980DA4();
      v75 = v176;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v68, v69, v70);
      v76 = &qword_1EBD59EF8;
      v77 = &qword_1BE108830;
      sub_1BD0DE19C(v75, v182, &qword_1EBD59EF8, &qword_1BE108830);
      goto LABEL_23;
    }

    if (v54 == 3)
    {
      v99 = v45;
      v43, v55, v56, v57, v58, v59, v60, v61;
      v100 = v156;
      (*(v32 + 104))(v156, *MEMORY[0x1E69B80D8], v31);
      v101 = PKPassKitBundle();
      if (v101)
      {
        v102 = v101;
        v103 = sub_1BE04B6F4();
        v105 = v104;

        (*(v32 + 8))(v100, v31);
        v187 = v103;
        v188 = v105;
        v106 = swift_allocObject();
        v107 = *(a2 + 80);
        *(v106 + 80) = *(a2 + 64);
        *(v106 + 96) = v107;
        *(v106 + 112) = *(a2 + 96);
        v108 = *(a2 + 16);
        *(v106 + 16) = *a2;
        *(v106 + 32) = v108;
        v109 = *(a2 + 48);
        *(v106 + 48) = *(a2 + 32);
        *(v106 + 64) = v109;
        sub_1BD980AD0(a2, v186);
        sub_1BD0DDEBC();
        v110 = v159;
        sub_1BE051744();
        v187 = v99;
        v188 = v46;
        v111 = swift_allocObject();
        v112 = *(a2 + 80);
        *(v111 + 80) = *(a2 + 64);
        *(v111 + 96) = v112;
        *(v111 + 112) = *(a2 + 96);
        v113 = *(a2 + 16);
        *(v111 + 16) = *a2;
        *(v111 + 32) = v113;
        v114 = *(a2 + 48);
        *(v111 + 48) = *(a2 + 32);
        *(v111 + 64) = v114;
        sub_1BD980AD0(a2, v186);
        sub_1BE051744();
        v116 = v184;
        v115 = v185;
        v117 = *(v184 + 2);
        v118 = v153;
        v117(v153, v110, v185);
        v119 = v154;
        v117(v154, v30, v115);
        v120 = v155;
        v117(v155, v118, v115);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
        v117((v120 + *(v121 + 48)), v119, v115);
        v122 = *(v116 + 1);
        v122(v119, v115);
        v122(v118, v115);
        sub_1BD0DE19C(v120, v170, &qword_1EBD40D80, &qword_1BE0C9780);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
        sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
        v123 = v171;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v123, v175, &qword_1EBD59F08, &qword_1BE108838);
        swift_storeEnumTagMultiPayload();
        sub_1BD980CC0();
        sub_1BD980DA4();
        v184 = v30;
        v124 = v176;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v123, &qword_1EBD59F08, &qword_1BE108838);
        sub_1BD0DE19C(v124, v182, &qword_1EBD59EF8, &qword_1BE108830);
        swift_storeEnumTagMultiPayload();
        sub_1BD980C34();
        sub_1BD980E88();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v124, &qword_1EBD59EF8, &qword_1BE108830);
        sub_1BD0DE53C(v120, &qword_1EBD40D80, &qword_1BE0C9780);
        v122(v184, v115);
        return (v122)(v159, v115);
      }

      goto LABEL_32;
    }

LABEL_33:
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  if ((v54 - 6) >= 2)
  {
    if (v54 != 4)
    {
      if (v54 == 5)
      {
        v43, v55, v56, v57, v58, v59, v60, v61;
        v187 = v45;
        v188 = v46;
        v126 = swift_allocObject();
        v127 = *(a2 + 80);
        *(v126 + 80) = *(a2 + 64);
        *(v126 + 96) = v127;
        *(v126 + 112) = *(a2 + 96);
        v128 = *(a2 + 16);
        *(v126 + 16) = *a2;
        *(v126 + 32) = v128;
        v129 = *(a2 + 48);
        *(v126 + 48) = *(a2 + 32);
        *(v126 + 64) = v129;
        sub_1BD980AD0(a2, v186);
        sub_1BD0DDEBC();
        sub_1BE051744();
        v67 = v184;
        v66 = v185;
        (*(v184 + 2))(v166, v30, v185);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28, &qword_1BE108848, MEMORY[0x1E6981F48]);
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
        v68 = v165;
        sub_1BE04F9A4();
        v69 = &qword_1EBD59F18;
        v70 = &qword_1BE108840;
        sub_1BD0DE19C(v68, v175, &qword_1EBD59F18, &qword_1BE108840);
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    v78 = v178;
    v187 = v178;
    v188 = v43;
    v79 = swift_allocObject();
    v80 = *(a2 + 80);
    *(v79 + 80) = *(a2 + 64);
    *(v79 + 96) = v80;
    *(v79 + 112) = *(a2 + 96);
    v81 = *(a2 + 16);
    *(v79 + 16) = *a2;
    *(v79 + 32) = v81;
    v82 = *(a2 + 48);
    *(v79 + 48) = *(a2 + 32);
    *(v79 + 64) = v82;
    sub_1BD980AD0(a2, v186);
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE051744();
    if (v78 == v45 && v43 == v46)
    {
      v46, v83, v84, v85, v86, v87, v88, v89;
      v97 = v166;
      v98 = v158;
    }

    else
    {
      v130 = sub_1BE053B84();
      v43, v131, v132, v133, v134, v135, v136, v137;
      v98 = v158;
      if ((v130 & 1) == 0)
      {
        v187 = v45;
        v188 = v46;
        v139 = swift_allocObject();
        v140 = *(a2 + 80);
        *(v139 + 80) = *(a2 + 64);
        *(v139 + 96) = v140;
        *(v139 + 112) = *(a2 + 96);
        v141 = *(a2 + 16);
        *(v139 + 16) = *a2;
        *(v139 + 32) = v141;
        v142 = *(a2 + 48);
        *(v139 + 48) = *(a2 + 32);
        *(v139 + 64) = v142;
        sub_1BD980AD0(a2, v186);
        sub_1BE051744();
        (*(v184 + 4))(v167, v30, v185);
        v138 = 0;
        v97 = v166;
        goto LABEL_29;
      }

      v43 = v46;
      v97 = v166;
    }

    v43, v90, v91, v92, v93, v94, v95, v96;
    v138 = 1;
LABEL_29:
    v143 = v184;
    v144 = v185;
    v145 = v167;
    (*(v184 + 7))(v167, v138, 1, v185);
    v146 = *(v143 + 2);
    v146(v30, v168, v144);
    sub_1BD0DE19C(v145, v98, &qword_1EBD3C248, &qword_1BE111830);
    v147 = v157;
    v146(v157, v30, v144);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F68, &unk_1BE108888);
    sub_1BD0DE19C(v98, v147 + *(v148 + 48), &qword_1EBD3C248, &qword_1BE111830);
    sub_1BD0DE53C(v98, &qword_1EBD3C248, &qword_1BE111830);
    v149 = *(v143 + 1);
    v149(v30, v144);
    sub_1BD0DE19C(v147, v97, &qword_1EBD59F28, &qword_1BE108848);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28, &qword_1BE108848, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v150 = v165;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v150, v175, &qword_1EBD59F18, &qword_1BE108840);
    swift_storeEnumTagMultiPayload();
    sub_1BD980CC0();
    sub_1BD980DA4();
    v151 = v176;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v150, &qword_1EBD59F18, &qword_1BE108840);
    sub_1BD0DE19C(v151, v182, &qword_1EBD59EF8, &qword_1BE108830);
    swift_storeEnumTagMultiPayload();
    sub_1BD980C34();
    sub_1BD980E88();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v151, &qword_1EBD59EF8, &qword_1BE108830);
    sub_1BD0DE53C(v147, &qword_1EBD59F28, &qword_1BE108848);
    sub_1BD0DE53C(v167, &qword_1EBD3C248, &qword_1BE111830);
    return (v149)(v168, v144);
  }

  v46, v55, v56, v57, v58, v59, v60, v61;
  v187 = v178;
  v188 = v43;
  v71 = swift_allocObject();
  v72 = *(a2 + 80);
  *(v71 + 80) = *(a2 + 64);
  *(v71 + 96) = v72;
  *(v71 + 112) = *(a2 + 96);
  v73 = *(a2 + 16);
  *(v71 + 16) = *a2;
  *(v71 + 32) = v73;
  v74 = *(a2 + 48);
  *(v71 + 48) = *(a2 + 32);
  *(v71 + 64) = v74;
  sub_1BD980AD0(a2, v186);
  sub_1BD0DDEBC();
  sub_1BE051744();
  v67 = v184;
  v66 = v185;
  (*(v184 + 2))(v161, v30, v185);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v75 = v162;
  sub_1BE04F9A4();
  v76 = &qword_1EBD59F38;
  v77 = &qword_1BE108850;
  sub_1BD0DE19C(v75, v182, &qword_1EBD59F38, &qword_1BE108850);
LABEL_23:
  swift_storeEnumTagMultiPayload();
  sub_1BD980C34();
  sub_1BD980E88();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v75, v76, v77);
  return (*(v67 + 1))(v30, v66);
}

uint64_t sub_1BD97FCF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 localizedMessage];
  sub_1BE052434();

  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

BOOL sub_1BD97FDC8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [a2 localizedRecoveryDescription];
  if (v13)
  {
    v14 = v13;
    sub_1BE052434();
    v72 = a1;
    v16 = v15;

    v17 = swift_allocObject();
    v17[2] = v6;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    v17[6] = a5;
    v17[7] = a6;
    v18 = a2;
    sub_1BE048964();
    sub_1BD0D44B8(a5, a6);
    v19 = sub_1BE052404();
    v16, v20, v21, v22, v23, v24, v25, v26;
    v75 = sub_1BD981080;
    v76 = v17;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v74 = sub_1BD198918;
    *(&v74 + 1) = &block_descriptor_107_2;
    v27 = _Block_copy(&aBlock);
    v76, v28, v29, v30, v31, v32, v33, v34;
    v35 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v27];
    _Block_release(v27);

    [v72 addAction_];
    v36 = [v18 userInfo];
    v37 = sub_1BE052244();

    v38 = sub_1BE052434();
    v46 = v39;
    if (v37[2])
    {
      v47 = sub_1BD148F70(v38, v39);
      v49 = v48;
      v46, v48, v50, v51, v52, v53, v54, v55;
      if (v49)
      {
        sub_1BD038CD0(v37[7] + 32 * v47, &aBlock);
        v37, v63, v64, v65, v66, v67, v68, v69;
        sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        [v72 setPreferredAction_];

LABEL_8:
        v13 = v14;
        return v13 != 0;
      }

      v70 = v37;
    }

    else
    {
      v37, v39, v40, v41, v42, v43, v44, v45;
      v70 = v46;
    }

    v70, v56, v57, v58, v59, v60, v61, v62;

    aBlock = 0u;
    v74 = 0u;
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    goto LABEL_8;
  }

  return v13 != 0;
}

id sub_1BD980080(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *aBlock, const void *a7, const void *a8)
{
  v12 = _Block_copy(aBlock);
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  if (a4)
  {
    v15 = sub_1BE052434();
    a4 = v16;
    if (a5)
    {
LABEL_3:
      v17 = sub_1BE052434();
      a5 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = swift_allocObject();
  v19[2] = v12;
  v20 = swift_allocObject();
  v20[2] = v13;
  if (v14)
  {
    v21 = swift_allocObject();
    v21[2] = v14;
    v14 = sub_1BD167418;
  }

  else
  {
    v21 = 0;
  }

  swift_getObjCClassMetadata();
  v22 = a3;
  v23 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v22, v15, a4, v17, a5, sub_1BD167418, v19, sub_1BD167418, v20, v14, v21);
  sub_1BD0D4744(v14, v21, v24, v25, v26, v27, v28, v29);

  v19, v30, v31, v32, v33, v34, v35, v36;
  v20, v37, v38, v39, v40, v41, v42, v43;
  a5, v44, v45, v46, v47, v48, v49, v50;
  a4, v51, v52, v53, v54, v55, v56, v57;

  return v23;
}

uint64_t sub_1BD980258(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1BD98055C(a3);
  v16 = [a3 recoveryUrl];
  if (v16)
  {
    v17 = v16;
    sub_1BE04A9F4();

    (*(v10 + 32))(v15, v12, v9);
    v18 = sub_1BE04A9C4();
    PKOpenURL();

    a4();
    return (*(v10 + 8))(v15, v9);
  }

  else if (a6)
  {
    return a6();
  }

  else
  {
    return a4();
  }
}

BOOL sub_1BD9803FC(uint64_t a1, int a2, void *a3, void *a4, void *aBlock, const void *a6)
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = v9;
  if (v10)
  {
    v12 = swift_allocObject();
    v12[2] = v10;
    v10 = sub_1BD167418;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjCClassMetadata();
  v13 = a3;
  v14 = a4;
  v15 = sub_1BD97FDC8(v13, v14, sub_1BD166E88, v11, v10, v12);
  sub_1BD0D4744(v10, v12, v16, v17, v18, v19, v20, v21);

  v11, v22, v23, v24, v25, v26, v27, v28;
  return v15;
}

void sub_1BD980520(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  sub_1BD98055C(v3);
}

void sub_1BD98055C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  v106 = xmmword_1BE0B98D0;
  *(v2 + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6E8];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB728];
  *(v2 + 48) = *MEMORY[0x1E69BB728];
  v6 = v3;
  v7 = v4;
  v8 = v5;
  if (![a1 underlyingError])
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [v107 domain];
  v10 = sub_1BE052434();
  v12 = v11;

  v14 = sub_1BE052434();
  v20 = v13;
  if (v10 == v14 && v12 == v13)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v28 = sub_1BE053B84();
    v12, v29, v30, v31, v32, v33, v34, v35;
    v20, v36, v37, v38, v39, v40, v41, v42;
    if ((v28 & 1) == 0)
    {
LABEL_10:

LABEL_11:
      v76 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v45 = sub_1BE052724();
      v2, v77, v78, v79, v80, v81, v82, v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = v106;
      v85 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v86 = sub_1BE052434();
      v87 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v86;
      *(inited + 48) = v88;
      v89 = *v87;
      *(inited + 56) = *v87;
      v90 = sub_1BE052434();
      v91 = MEMORY[0x1E69BA440];
      *(inited + 64) = v90;
      *(inited + 72) = v92;
      v93 = *v91;
      *(inited + 80) = *v91;
      *(inited + 88) = sub_1BE052434();
      *(inited + 96) = v94;
      v95 = v85;
      v96 = v89;
      v97 = v93;
      v98 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v68 = sub_1BE052224();
      v98, v99, v100, v101, v102, v103, v104, v105;
      [v76 subjects:v45 sendEvent:v68];
      goto LABEL_12;
    }
  }

  v43 = [v107 code];
  if ((v43 & 0x8000000000000000) != 0 || v43 != 6)
  {
    goto LABEL_10;
  }

  v44 = objc_opt_self();
  type metadata accessor for PKAnalyticsSubject(0);
  v45 = sub_1BE052724();
  v2, v46, v47, v48, v49, v50, v51, v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  v53 = swift_initStackObject();
  *(v53 + 16) = v106;
  v54 = *MEMORY[0x1E69BA680];
  *(v53 + 32) = *MEMORY[0x1E69BA680];
  v55 = sub_1BE052434();
  v56 = MEMORY[0x1E69BABE8];
  *(v53 + 40) = v55;
  *(v53 + 48) = v57;
  v58 = *v56;
  *(v53 + 56) = *v56;
  v59 = sub_1BE052434();
  v60 = MEMORY[0x1E69BA440];
  *(v53 + 64) = v59;
  *(v53 + 72) = v61;
  v62 = *v60;
  *(v53 + 80) = *v60;
  *(v53 + 88) = sub_1BE052434();
  *(v53 + 96) = v63;
  v64 = v54;
  v65 = v58;
  v66 = v62;
  v67 = sub_1BD1AAF50(v53);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v68 = sub_1BE052224();
  v67, v69, v70, v71, v72, v73, v74, v75;
  [v44 subjects:v45 sendEvent:v68];

LABEL_12:
}

uint64_t sub_1BD980A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BD980A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_109Tm()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;

  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 80), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 96), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 112), v36, v37, v38, v39, v40, v41, v42;
  if (*(v0 + 120))
  {
    *(v0 + 128), v43, v44, v45, v46, v47, v48, v49;
  }

  return swift_deallocObject();
}

unint64_t sub_1BD980BA8()
{
  result = qword_1EBD59EE8;
  if (!qword_1EBD59EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59ED8, &qword_1BE108828);
    sub_1BD980C34();
    sub_1BD980E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59EE8);
  }

  return result;
}

unint64_t sub_1BD980C34()
{
  result = qword_1EBD59EF0;
  if (!qword_1EBD59EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59EF8, &qword_1BE108830);
    sub_1BD980CC0();
    sub_1BD980DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59EF0);
  }

  return result;
}

unint64_t sub_1BD980CC0()
{
  result = qword_1EBD59F00;
  if (!qword_1EBD59F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F08, &qword_1BE108838);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F00);
  }

  return result;
}

unint64_t sub_1BD980DA4()
{
  result = qword_1EBD59F10;
  if (!qword_1EBD59F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F18, &qword_1BE108840);
    sub_1BD0DE4F4(&qword_1EBD59F20, &qword_1EBD59F28, &qword_1BE108848, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F10);
  }

  return result;
}

unint64_t sub_1BD980E88()
{
  result = qword_1EBD59F30;
  if (!qword_1EBD59F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F38, &qword_1BE108850);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59F30);
  }

  return result;
}

uint64_t objectdestroy_115Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 64), v23, v24, v25, v26, v27, v28, v29;
  *(v8 + 80), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 96), v37, v38, v39, v40, v41, v42, v43;
  if (*(v8 + 104))
  {
    *(v8 + 112), v44, v45, v46, v47, v48, v49, v50;
  }

  return swift_deallocObject();
}

uint64_t SetupAttentionView.init(symbolName:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v10 = a9 + *(type metadata accessor for SetupAttentionView(0) + 32);

  return sub_1BD226B4C(a10, v10);
}

uint64_t type metadata accessor for SetupAttentionView(uint64_t a1)
{
  result = qword_1EBD59F90;
  if (!qword_1EBD59F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SetupAttentionView.init(imageName:bundle:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  v11 = a9 + *(type metadata accessor for SetupAttentionView(0) + 32);

  return sub_1BD226B4C(a11, v11);
}

uint64_t SetupAttentionView.init(image:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = a1;
  *(a9 + 24) = 2;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  v10 = a9 + *(type metadata accessor for SetupAttentionView(0) + 32);

  return sub_1BD226B4C(a8, v10);
}

uint64_t SetupAttentionView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v33 = v1[6];
  v34 = v6;
  v9 = v1[9];
  v32 = v1[8];
  v10 = type metadata accessor for SetupAttentionView(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v5, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v11 = sub_1BE04F4E4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F70, &qword_1BE108898);
  sub_1BD0DE19C(v5, a1 + v12[11], &unk_1EBD3CF70, &qword_1BE0BA000);
  v13 = (a1 + v12[13]);
  sub_1BD9814D0(v13);
  v14 = sub_1BE050224();
  sub_1BD0DE53C(v5, &unk_1EBD3CF70, &qword_1BE0BA000);
  v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F78, &qword_1BE1088A0) + 36);
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = v33;
  *a1 = v34;
  a1[1] = v7;
  a1[2] = v16;
  a1[3] = v8;
  a1[4] = v32;
  a1[5] = v9;
  *(a1 + v12[12]) = v11;
  v17 = sub_1BE0501D4();
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F80, &qword_1BE1088A8) + 36);
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_1BE051CD4();
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59F88, &qword_1BE1088B0) + 36);
  v23 = *(sub_1BE04EDE4() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1BE04F684();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  *v22 = 0x403A000000000000;
  *(v22 + 1) = 0x403A000000000000;
  v26 = [objc_opt_self() secondarySystemBackgroundColor];
  v27 = sub_1BE0511C4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10, &qword_1BE0C0498);
  *&v22[*(v28 + 52)] = v27;
  *&v22[*(v28 + 56)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44338, &unk_1BE0D1AF0);
  v30 = &v22[*(result + 36)];
  *v30 = v19;
  v30[1] = v21;
  return result;
}

void sub_1BD9814D0(void *a1@<X8>)
{
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FB8, &qword_1BE1089C8);
  MEMORY[0x1EEE9AC00](v49);
  v3 = (&v47 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FC0, &qword_1BE1089D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v47 - v5);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59FC8, &qword_1BE1089D8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D8, &qword_1BE0BE070);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v47 - v13);
  v16 = *v1;
  v15 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v17 = *(v1 + 16);
    v18 = *v1;
    v19 = *(v1 + 8);
    if (*(v1 + 24) == 1)
    {
      sub_1BD981C5C(v18, v19, v17, 1);
      v20 = v17;
      v21 = sub_1BE0515F4();
      *v6 = v21;
      swift_storeEnumTagMultiPayload();
      sub_1BD1BC5D0();
      sub_1BE048964();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v8, v3, &qword_1EBD59FC8, &qword_1BE1089D8);
      swift_storeEnumTagMultiPayload();
      sub_1BD981CD4();
      sub_1BE04F9A4();

      v21, v22, v23, v24, v25, v26, v27, v28;
      sub_1BD0DE53C(v8, &qword_1EBD59FC8, &qword_1BE1089D8);
    }

    else
    {
      sub_1BD981C5C(v18, v19, v17, 2);
      v34 = v16;
      v35 = sub_1BE051544();
      *v3 = v35;
      swift_storeEnumTagMultiPayload();
      sub_1BD981CD4();
      sub_1BE048964();
      sub_1BE04F9A4();
      sub_1BD981D60(v16, v15, v17, 2, v36, v37, v38, v39);
      v35, v40, v41, v42, v43, v44, v45, v46;
    }
  }

  else
  {
    sub_1BE048C84();
    v29 = sub_1BE051574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0, &qword_1BE1089E0);
    sub_1BE04EA34();
    *v14 = v29;
    v30 = sub_1BE050354();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    v31 = sub_1BE0503B4();
    sub_1BD0DE53C(v11, &qword_1EBD49130, &qword_1BE0C7180);
    KeyPath = swift_getKeyPath();
    v33 = (v14 + *(v12 + 36));
    *v33 = KeyPath;
    v33[1] = v31;
    sub_1BD0DE19C(v14, v6, &qword_1EBD3C1D8, &qword_1BE0BE070);
    swift_storeEnumTagMultiPayload();
    sub_1BD1BC5D0();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v8, v3, &qword_1EBD59FC8, &qword_1BE1089D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD981CD4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v8, &qword_1EBD59FC8, &qword_1BE1089D8);
    sub_1BD0DE53C(v14, &qword_1EBD3C1D8, &qword_1BE0BE070);
  }
}

void sub_1BD981A24(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD3F7300(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD981AC8()
{
  result = qword_1EBD59FA0;
  if (!qword_1EBD59FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F88, &qword_1BE1088B0);
    sub_1BD981B80();
    sub_1BD0DE4F4(&qword_1EBD44330, &qword_1EBD44338, &unk_1BE0D1AF0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FA0);
  }

  return result;
}

unint64_t sub_1BD981B80()
{
  result = qword_1EBD59FA8;
  if (!qword_1EBD59FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59F80, &qword_1BE1088A8);
    sub_1BD0DE4F4(&qword_1EBD59FB0, &qword_1EBD59F70, &qword_1BE108898, &unk_1BE0EDD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FA8);
  }

  return result;
}

void sub_1BD981C5C(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {

    v6 = a1;
  }

  else
  {
    if (a4 == 1)
    {
      v5 = a3;
    }

    else
    {
      if (a4)
      {
        return;
      }
    }

    sub_1BE048C84();
  }
}

unint64_t sub_1BD981CD4()
{
  result = qword_1EBD59FD0;
  if (!qword_1EBD59FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59FC8, &qword_1BE1089D8);
    sub_1BD1BC5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59FD0);
  }

  return result;
}

void sub_1BD981D60(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      if (!a4)
      {

        a2, a2, a3, a4, a5, a6, a7, a8;
      }

      return;
    }

    a2, a2, a3, a4, a5, a6, a7, a8;
    a1 = a3;
  }
}

uint64_t type metadata accessor for FinanceKitPredictedTransactionsView(uint64_t a1)
{
  result = qword_1EBD59FD8;
  if (!qword_1EBD59FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD981E40(uint64_t a1)
{
  sub_1BD981EF4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD981F88(319);
    if (v2 <= 0x3F)
    {
      sub_1BD981FE0();
      if (v3 <= 0x3F)
      {
        sub_1BE04D214();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}