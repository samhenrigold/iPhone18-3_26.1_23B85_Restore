uint64_t sub_1AFAB10D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = sub_1AFDFC318();
        (*(*(v21 - 8) + 32))(a1 + v11, a2 + v11, v21);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v17);
    v20 = *(*(v19 - 8) + 64);
LABEL_15:
    memcpy((a1 + v11), (a2 + v11), v20);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1AFDFC318();
    (*(*(v18 - 8) + 32))(a1 + v11, a2 + v11, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_1AFAB140C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AFAAEB58(319, a2);
  if (v7 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_1AFAB14C0(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a3[6];
    v9 = type metadata accessor for ScriptIndex(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0, v12);
      memcpy(&v4[v8], a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(&v4[v8], a2 + v8, v15);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v16 = a3[7];
    v17 = &v4[v16];
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      *(v17 + 1) = v19;
    }

    else
    {
      *v17 = *v18;
    }

    *&v4[a3[8]] = *(a2 + a3[8]);
  }

  return v4;
}

uint64_t sub_1AFAB16C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0, v11);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1AFDFC318();
      (*(*(v13 - 8) + 16))(a1 + v7, a2 + v7, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  if (*v16)
  {
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  else
  {
    *v15 = *v16;
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1AFAB1884(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(a1 + v6, a2 + v6, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v12);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 16))(a1 + v6, a2 + v6, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (!v20)
  {
    if (v21)
    {
      v23 = *(v19 + 8);
      *v18 = v21;
      v18[1] = v23;

      goto LABEL_21;
    }

LABEL_20:
    *v18 = *v19;
    goto LABEL_21;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 8);
  *v18 = v21;
  v18[1] = v22;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1AFAB1B5C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0, v9);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1AFDFC318();
      (*(*(v11 - 8) + 32))(a1 + v6, a2 + v6, v11);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v12) = *(a2 + v12);
  return a1;
}

uint64_t sub_1AFAB1CD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 32))(a1 + v7, a2 + v7, v17);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v16 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v16);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v13);
    v16 = *(*(v15 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1AFDFC318();
    (*(*(v14 - 8) + 32))(a1 + v7, a2 + v7, v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v18 = a3[7];
  v19 = (a1 + v18);
  v20 = a2 + v18;
  v21 = *(a1 + v18);
  v22 = *(a2 + v18);
  if (!v21)
  {
    if (v22)
    {
      v24 = *(v20 + 8);
      *v19 = v22;
      v19[1] = v24;
      goto LABEL_21;
    }

LABEL_20:
    *v19 = *v20;
    goto LABEL_21;
  }

  if (!v22)
  {

    goto LABEL_20;
  }

  v23 = *(v20 + 8);
  *v19 = v22;
  v19[1] = v23;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void sub_1AFAB1FD4(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AFAB208C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v9 = a2 + 5;
    v8 = a2[5];
    v10 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v10;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);

    if (v8)
    {
      v11 = a2[6];
      *(a1 + 40) = v8;
      *(a1 + 48) = v11;
    }

    else
    {
      *(a1 + 40) = *v9;
    }

    *(a1 + 56) = *(a2 + 56);
    v12 = *(a3 + 40);
    v13 = type metadata accessor for ScriptIndex(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0, v15);
      memcpy((a1 + v12), a2 + v12, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 16))(a1 + v12, a2 + v12, v17);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t sub_1AFAB2290(char *a1, uint64_t a2)
{

  if (*(a1 + 5))
  {
  }

  v4 = *(a2 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(&a1[v4], v7);
    }
  }

  return result;
}

uint64_t sub_1AFAB2394(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v9 = a2 + 5;
  v8 = a2[5];

  if (v8)
  {
    v10 = a2[6];
    *(a1 + 40) = v8;
    *(a1 + 48) = v10;
  }

  else
  {
    *(a1 + 40) = *v9;
  }

  *(a1 + 56) = *(a2 + 56);
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a2 + v11, 1, v12))
  {
    sub_1AFAAEB58(0, v14);
    memcpy((a1 + v11), a2 + v11, *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = sub_1AFDFC318();
      (*(*(v16 - 8) + 16))(a1 + v11, a2 + v11, v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v11), a2 + v11, *(v13 + 64));
    }

    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t *sub_1AFAB254C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  v6 = a1[5];
  *(a1 + 32) = *(a2 + 32);
  v7 = a2[5];
  if (v6)
  {
    if (v7)
    {
      v8 = a2[6];
      a1[5] = v7;
      a1[6] = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = a2[6];
    a1[5] = v7;
    a1[6] = v9;

    goto LABEL_8;
  }

  *(a1 + 5) = *(a2 + 5);
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a3 + 40);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 16))(a1 + v10, a2 + v10, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v16);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy(a1 + v10, a2 + v10, v19);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 16))(a1 + v10, a2 + v10, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v10, a2 + v10, *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB2834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a3 + 40);
  v6 = type metadata accessor for ScriptIndex(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0, v8);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v5, a2 + v5, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t *sub_1AFAB29B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a2[2];
  a1[1] = a2[1];
  a1[2] = v6;

  a1[3] = a2[3];

  v7 = a2[5];
  v8 = a1[5];
  *(a1 + 32) = *(a2 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = a2[6];
      a1[5] = v7;
      a1[6] = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = a2[6];
    a1[5] = v7;
    a1[6] = v10;
    goto LABEL_8;
  }

  *(a1 + 5) = *(a2 + 5);
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = sub_1AFDFC318();
        (*(*(v21 - 8) + 32))(a1 + v11, a2 + v11, v21);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v17);
    v20 = *(*(v19 - 8) + 64);
LABEL_15:
    memcpy(a1 + v11, a2 + v11, v20);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1AFDFC318();
    (*(*(v18 - 8) + 32))(a1 + v11, a2 + v11, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v11, a2 + v11, *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_1AFAB2CBC(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_1AFAB2D80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v8 = *(a3 + 32);
    v9 = type metadata accessor for ScriptIndex(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0, v12);
      memcpy(&v4[v8], a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(&v4[v8], a2 + v8, v15);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v16 = *(a3 + 36);
    v17 = &v4[v16];
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      *(v17 + 1) = v19;
    }

    else
    {
      *v17 = *v18;
    }
  }

  return v4;
}

uint64_t sub_1AFAB2F90(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      result = (*(*(v7 - 8) + 8))(a1 + v4, v7);
    }
  }

  if (*(a1 + *(a2 + 36)))
  {
  }

  return result;
}

uint64_t sub_1AFAB3094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0, v11);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1AFDFC318();
      (*(*(v13 - 8) + 16))(a1 + v7, a2 + v7, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v14 = *(a3 + 36);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  if (*v16)
  {
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  else
  {
    *v15 = *v16;
  }

  return a1;
}

uint64_t sub_1AFAB3258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 32);
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(a1 + v6, a2 + v6, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v12);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 16))(a1 + v6, a2 + v6, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v17 = *(a3 + 36);
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = *(a1 + v17);
  v21 = *v19;
  if (!v20)
  {
    if (v21)
    {
      v23 = v19[1];
      *v18 = v21;
      v18[1] = v23;

      return a1;
    }

LABEL_20:
    *v18 = *v19;
    return a1;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = v19[1];
  *v18 = v21;
  v18[1] = v22;

  return a1;
}

uint64_t sub_1AFAB3534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 32);
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0, v9);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1AFDFC318();
      (*(*(v11 - 8) + 32))(a1 + v6, a2 + v6, v11);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t sub_1AFAB36B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 32))(a1 + v7, a2 + v7, v17);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v16 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v16);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v13);
    v16 = *(*(v15 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1AFDFC318();
    (*(*(v14 - 8) + 32))(a1 + v7, a2 + v7, v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v18 = *(a3 + 36);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = *(a1 + v18);
  v22 = *v20;
  if (!v21)
  {
    if (v22)
    {
      v24 = v20[1];
      *v19 = v22;
      v19[1] = v24;
      return a1;
    }

LABEL_20:
    *v19 = *v20;
    return a1;
  }

  if (!v22)
  {

    goto LABEL_20;
  }

  v23 = v20[1];
  *v19 = v22;
  v19[1] = v23;

  return a1;
}

void sub_1AFAB39B8(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t *assignWithCopy for ScriptLocation(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF443EE0(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1AF443F24(v4);
  return a1;
}

unint64_t *assignWithTake for ScriptLocation(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 8))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AFAB3BBC(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 16;
  }
}

unint64_t *sub_1AFAB3BF4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x10)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 16)) | 0x8000000000000000;
  }

  return result;
}

char *sub_1AFAB3C40(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a3[6];
    v9 = type metadata accessor for ScriptIndex(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0, v12);
      memcpy(&v4[v8], a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(&v4[v8], a2 + v8, v15);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v16 = a3[7];
    v17 = &v4[v16];
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      *(v17 + 1) = v19;
    }

    else
    {
      *v17 = *v18;
    }

    v20 = a3[9];
    *&v4[a3[8]] = *(a2 + a3[8]);
    v4[v20] = *(a2 + v20);
  }

  return v4;
}

uint64_t sub_1AFAB3E50(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v5 - 8) + 48))(a1 + v4, 1, v5) && swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  if (*(a1 + a2[7]))
  {
  }
}

uint64_t sub_1AFAB3F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0, v11);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1AFDFC318();
      (*(*(v13 - 8) + 16))(a1 + v7, a2 + v7, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  if (*v16)
  {
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  else
  {
    *v15 = *v16;
  }

  v18 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v18) = *(a2 + v18);

  return a1;
}

uint64_t sub_1AFAB410C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(a1 + v6, a2 + v6, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v12);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 16))(a1 + v6, a2 + v6, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (!v20)
  {
    if (v21)
    {
      v23 = *(v19 + 8);
      *v18 = v21;
      v18[1] = v23;

      goto LABEL_21;
    }

LABEL_20:
    *v18 = *v19;
    goto LABEL_21;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 8);
  *v18 = v21;
  v18[1] = v22;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB43F0(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0, v9);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1AFDFC318();
      (*(*(v11 - 8) + 32))(a1 + v6, a2 + v6, v11);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB4578(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 32))(a1 + v7, a2 + v7, v17);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v16 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v16);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0, v13);
    v16 = *(*(v15 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1AFDFC318();
    (*(*(v14 - 8) + 32))(a1 + v7, a2 + v7, v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v18 = a3[7];
  v19 = (a1 + v18);
  v20 = a2 + v18;
  v21 = *(a1 + v18);
  v22 = *(a2 + v18);
  if (!v21)
  {
    if (v22)
    {
      v24 = *(v20 + 8);
      *v19 = v22;
      v19[1] = v24;
      goto LABEL_21;
    }

LABEL_20:
    *v19 = *v20;
    goto LABEL_21;
  }

  if (!v22)
  {

    goto LABEL_20;
  }

  v23 = *(v20 + 8);
  *v19 = v22;
  v19[1] = v23;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB484C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AFAAEB58(0, a4);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AFAB490C(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0, a5);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v6 + *(a4 + 24);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1AFAB49D0(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AFAB4A90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v9 = a2 + 6;
    v8 = a2[6];
    v10 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v10;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 20);

    if (v8)
    {
      v11 = a2[7];
      *(a1 + 48) = v8;
      *(a1 + 56) = v11;
    }

    else
    {
      *(a1 + 48) = *v9;
    }

    v12 = *(a3 + 44);
    v13 = type metadata accessor for ScriptIndex(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0, v15);
      memcpy((a1 + v12), a2 + v12, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = sub_1AFDFC318();
        (*(*(v17 - 8) + 16))(a1 + v12, a2 + v12, v17);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t sub_1AFAB4CAC(char *a1, uint64_t a2)
{

  if (*(a1 + 6))
  {
  }

  v4 = *(a2 + 44);
  v5 = type metadata accessor for ScriptIndex(0);
  result = (*(*(v5 - 8) + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(&a1[v4], v7);
    }
  }

  return result;
}

uint64_t sub_1AFAB4DB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 20);
  v8 = a2 + 6;
  v7 = a2[6];

  if (v7)
  {
    v9 = a2[7];
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v8;
  }

  v10 = *(a3 + 44);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    sub_1AFAAEB58(0, v13);
    memcpy((a1 + v10), a2 + v10, *(*(v14 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1AFDFC318();
      (*(*(v15 - 8) + 16))(a1 + v10, a2 + v10, v15);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), a2 + v10, *(v12 + 64));
    }

    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t *sub_1AFAB4F88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];

  v6 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v7 = a2[6];
  if (v6)
  {
    if (v7)
    {
      v8 = a2[7];
      a1[6] = v7;
      a1[7] = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = a2[7];
    a1[6] = v7;
    a1[7] = v9;

    goto LABEL_8;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_8:
  v10 = *(a3 + 44);
  v11 = type metadata accessor for ScriptIndex(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 16))(a1 + v10, a2 + v10, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v16);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy(a1 + v10, a2 + v10, v19);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 16))(a1 + v10, a2 + v10, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v10, a2 + v10, *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB5290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a3 + 44);
  v6 = type metadata accessor for ScriptIndex(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0, v8);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v5, a2 + v5, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t *sub_1AFAB5414(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a2[2];
  a1[1] = a2[1];
  a1[2] = v6;

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];

  v7 = a2[6];
  v8 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  if (v8)
  {
    if (v7)
    {
      v9 = a2[7];
      a1[6] = v7;
      a1[7] = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = a2[7];
    a1[6] = v7;
    a1[7] = v10;
    goto LABEL_8;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_8:
  v11 = *(a3 + 44);
  v12 = type metadata accessor for ScriptIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = sub_1AFDFC318();
        (*(*(v21 - 8) + 32))(a1 + v11, a2 + v11, v21);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0, v17);
    v20 = *(*(v19 - 8) + 64);
LABEL_15:
    memcpy(a1 + v11, a2 + v11, v20);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1AFDFC318();
    (*(*(v18 - 8) + 32))(a1 + v11, a2 + v11, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v11, a2 + v11, *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

uint64_t sub_1AFAB5704(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AFAAEB58(0, a4);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

void *sub_1AFAB57C4(void *result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0, a5);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v6 + *(a4 + 44);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1AFAB5888(uint64_t a1, double a2)
{
  sub_1AFAAEB58(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_1AFAB595C()
{
  result = qword_1EB6337A0;
  if (!qword_1EB6337A0)
  {
    result = swift_getWitnessTable(aM, &type metadata for ScriptLocation, v0, v1);
    atomic_store(result, &qword_1EB6337A0);
  }

  return result;
}

unint64_t sub_1AFAB59B0()
{
  result = qword_1EB642598;
  if (!qword_1EB642598)
  {
    result = swift_getWitnessTable(byte_1AFE97974, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB642598);
  }

  return result;
}

unint64_t sub_1AFAB5A08()
{
  result = qword_1EB6425A0;
  if (!qword_1EB6425A0)
  {
    result = swift_getWitnessTable(byte_1AFE97944, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB6425A0);
  }

  return result;
}

unint64_t sub_1AFAB5A60()
{
  result = qword_1EB633858;
  if (!qword_1EB633858)
  {
    result = swift_getWitnessTable(byte_1AFE9799C, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB633858);
  }

  return result;
}

unint64_t sub_1AFAB5AB8()
{
  result = qword_1EB6425A8;
  if (!qword_1EB6425A8)
  {
    result = swift_getWitnessTable(byte_1AFE979D4, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB6425A8);
  }

  return result;
}

unint64_t sub_1AFAB5B10()
{
  result = qword_1EB6425B0;
  if (!qword_1EB6425B0)
  {
    result = swift_getWitnessTable(byte_1AFE97C54, &type metadata for ScriptLocation.TextureType, v0, v1);
    atomic_store(result, &qword_1EB6425B0);
  }

  return result;
}

unint64_t sub_1AFAB5B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  *a2 = v2;
  *(a2 + 8) = v3;
  v6 = *(a1 + 32);
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  sub_1AF443EE0(v2);

  return sub_1AF444224(v6);
}

BOOL sub_1AFAB5BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      if (a2 != 5)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 6u:
      if (a2 != 6)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 7u:
      if (a2 != 7)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 8u:
      if (a2 != 8)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 9u:
      if (a2 != 9)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xAu:
      if (a2 != 10)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xBu:
      if (a2 != 11)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xCu:
      if (a2 != 12)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xDu:
      if (a2 != 13)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xEu:
      if (a2 != 14)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xFu:
      if (a2 != 15)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x10u:
      if (a2 != 16)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x11u:
      if (a2 != 17)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x12u:
      if (a2 != 18)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x13u:
      if (a2 != 19)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x14u:
      if (a2 != 20)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x15u:
      if (a2 != 21)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x16u:
      if (a2 != 22)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if (a2 - 5 < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = a1 == a2;
      }

      break;
  }

  return result;
}

uint64_t sub_1AFAB5D38(uint64_t a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  if (v7 > 2)
  {
    if (*(a1 + 32) <= 4u)
    {
      if (v7 == 3)
      {
        if (a2[2].i8[0] == 3)
        {
          v8 = a2->i64[0];

          return sub_1AF647714(v4, v8);
        }

        return 0;
      }

      if (a2[2].i8[0] != 4)
      {
        return 0;
      }

      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {

        return sub_1AFDFEE28();
      }

      return 1;
    }

    if (v7 != 5)
    {
      if (v6 | v5 | v4 | *(a1 + 24))
      {
        if (a2[2].i8[0] != 6 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 6)
        {
          return 0;
        }

        v13 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2[2].i8[0] != 5)
    {
      return 0;
    }

    v12 = a2->i8[0];

    return sub_1AFAB5BC4(v4, v12);
  }

  if (!*(a1 + 32))
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    return a2->u8[0] == v4;
  }

  if (v7 != 1)
  {
    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    return a2->u8[0] == v4;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v10 = a2->u64[1];
  v11 = a2[1].u64[0];
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v10 != 2)
        {
          return 0;
        }
      }

      else if (v10 != 3)
      {
        return 0;
      }

      return 1;
    }

    if (!v5)
    {
      return !v10;
    }

    if (v5 == 1)
    {
      return v10 == 1;
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        if (v10 != 4)
        {
          return 0;
        }
      }

      else if (v10 != 5)
      {
        return 0;
      }

      return 1;
    }

    switch(v5)
    {
      case 6:
        return v10 == 6;
      case 7:
        return v10 == 7;
      case 8:
        return v10 == 8;
    }
  }

  if (v10 <= 8)
  {
    return 0;
  }

  if (v4 == a2->i64[0] && v5 == v10 || (v14 = sub_1AFDFEE28(), result = 0, (v14 & 1) != 0))
  {

    return sub_1AF90F890(v6, v11);
  }

  return result;
}

uint64_t sub_1AFAB5FF0(unint64_t a1, unint64_t a2)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 1)
      {
        goto LABEL_134;
      }

      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v29 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v73);
      sub_1AF44596C(v29 + 16, &v70);
      if (v74 == v71 || (v2 = 0, (sub_1AFDFEE28() & 1) != 0))
      {

        v32 = sub_1AFDFDFD8();
        if (v32 == sub_1AFDFDFD8())
        {
          if (v27 == v31 && v28 == v30)
          {
            v2 = 1;
          }

          else
          {
            v2 = sub_1AFDFEE28();
          }
        }

        else
        {
          v2 = 0;
        }
      }

      goto LABEL_142;
    case 2uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 2)
      {
        goto LABEL_134;
      }

      v21 = a2 & 0xFFFFFFFFFFFFFFBLL;
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v73);
      sub_1AF44596C(v21 + 16, &v70);
      if (v74 == v71)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1AFDFEE28();
      }

LABEL_142:
      sub_1AF4459C8(&v70);
      sub_1AF4459C8(&v73);
      return v2 & 1;
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 3)
      {
        goto LABEL_134;
      }

      goto LABEL_73;
    case 4uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 4)
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
      {
        goto LABEL_134;
      }

      v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v15 = sub_1AFDFDFD8();
      if (v15 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      if (v11 != v13 || v12 != v14)
      {
        goto LABEL_53;
      }

      goto LABEL_106;
    case 5uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 5)
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
      {
        goto LABEL_134;
      }

      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      v37 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v38 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      v40 = sub_1AFDFDFD8();
      if (v40 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      if ((v34 != v37 || v35 != v38) && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      v2 = v36 == v39;
      return v2 & 1;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      return v2 & 1;
    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
      {
        goto LABEL_53;
      }

      goto LABEL_106;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 8)
      {
        goto LABEL_134;
      }

      v51 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v52 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v53 = *(v51 + 33);
      v54 = *(v51 + 34);
      v55 = *(v51 + 35);
      v56 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v57 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v58 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
      v59 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x22);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
      if (*(v51 + 32))
      {
        v61 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (*(v51 + 32) == 1)
        {
          if (v57 != 1)
          {
            goto LABEL_134;
          }

          if (v52 == v56 && *(v51 + 24) == v61)
          {
            v2 = 0;
          }

          else
          {
            v2 = 0;
            if ((sub_1AFDFEE28() & 1) == 0)
            {
              return v2 & 1;
            }
          }

          if (v53 == v58 && v54 == v59)
          {
            goto LABEL_146;
          }

          return v2 & 1;
        }

        if (v57 != 2)
        {
          goto LABEL_134;
        }

        v65 = (v61 | v56) == 0;
      }

      else
      {
        if (*((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          goto LABEL_134;
        }

        v65 = v52 == v56;
      }

      if (v65 && v53 == v58 && v54 == v59)
      {
LABEL_146:
        v2 = v55 ^ v60 ^ 1;
        return v2 & 1;
      }

      goto LABEL_134;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 9)
      {
        goto LABEL_134;
      }

      v16 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v17 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v19 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (!*(v16 + 32))
      {
        if (*((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          v63 = 0;
        }

        else
        {
          v63 = v17 == v18;
        }

        v2 = v63;
        return v2 & 1;
      }

      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v16 + 32) != 1)
      {
        v2 = v19 == 2 && (v20 | v18) == 0;
        return v2 & 1;
      }

      if (v19 != 1)
      {
        goto LABEL_134;
      }

      if (v17 == v18 && *(v16 + 24) == v20)
      {
        goto LABEL_106;
      }

LABEL_53:

      return sub_1AFDFEE28();
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        goto LABEL_134;
      }

      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v43 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      v47 = sub_1AFDFDFD8();
      if (v47 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      v48 = v41 == v44 && v42 == v45;
      if (!v48 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      v50 = v46 != 5 && v43 == v46;
      if (v43 == 5)
      {
        v2 = v46 == 5;
      }

      else
      {
        v2 = v50;
      }

      return v2 & 1;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        goto LABEL_134;
      }

      v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v8 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      v9 = sub_1AFDFDFD8();
      if (v9 != sub_1AFDFDFD8())
      {

        goto LABEL_134;
      }

      if (v5 == v8 && v6 == v7)
      {

        v2 = 1;
        return v2 & 1;
      }

      v68 = sub_1AFDFEE28();

      return v68 & 1;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xC)
      {
        goto LABEL_134;
      }

      goto LABEL_73;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        goto LABEL_134;
      }

LABEL_73:
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      return v2 & 1;
    case 0xEuLL:
      v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v71 = v3;
      v72 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xE)
      {
        goto LABEL_134;
      }

      v4 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v73 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74 = v4;
      v75 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      sub_1AFABCAB8(v73.i64, v69);
      v2 = sub_1AFAB5D38(&v70, &v73);
      sub_1AFABCB1C(&v73);
      return v2 & 1;
    case 0xFuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xF)
      {
        goto LABEL_134;
      }

      v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (!v24 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      return sub_1AF90F890(v22, v23);
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x10 || a2 != 0x8000000000000000)
        {
          goto LABEL_134;
        }

LABEL_106:
        v2 = 1;
        return v2 & 1;
      }

      if (a1 == 0x8000000000000008 && ((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x10 && a2 == 0x8000000000000008)
      {
        goto LABEL_106;
      }

LABEL_134:
      v2 = 0;
      return v2 & 1;
    default:
      if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
      {
        goto LABEL_134;
      }

      v2 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
      return v2 & 1;
  }
}

BOOL sub_1AFAB69E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1AFAB5FF0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = v5 & 0xF000000000000007;
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v6 == 0xF000000000000007)
    {
      return 0;
    }

    sub_1AF443EE0(*(a2 + 16));
    v7 = sub_1AFAB5FF0(v4, v5);
    sub_1AF444AF4(v5);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6 != 0xF000000000000007)
  {
    return 0;
  }

  v8 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v8 = 1;
    }

    return (v8 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t sub_1AFAB6AAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a5 == 2)
        {
          return 1;
        }
      }

      else if (a5 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a5;
    }

    if (a2 == 1)
    {
      return a5 == 1;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a5 == 4)
        {
          return 1;
        }
      }

      else if (a5 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        return a5 == 6;
      case 7:
        return a5 == 7;
      case 8:
        return a5 == 8;
    }
  }

  if (a5 < 9)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5 || (v8 = a3, v9 = a6, v10 = sub_1AFDFEE28(), a3 = v8, a6 = v9, v11 = v10, result = 0, (v11 & 1) != 0))
  {

    return sub_1AF90F890(a3, a6);
  }

  return result;
}

uint64_t sub_1AFAB6C14(uint64_t a1, uint64_t a2)
{
  if (a2 > 0)
  {
    sub_1AFABCD84(0);
    v4 = sub_1AFDFD488();
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    v5 = v4 + 32;
    if (a2 == 1)
    {
LABEL_8:

      return v4;
    }

LABEL_6:
    v6 = a2 - 1;
    v7 = (v5 + 8);
    do
    {
      *v7++ = a1;

      --v6;
    }

    while (v6);
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    *(MEMORY[0x1E69E7CC0] + 32) = a1;
    v5 = v4 + 32;
    goto LABEL_6;
  }

  return v4;
}

void *sub_1AFAB6CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFABE5A4(0, &qword_1EB6331A0, MEMORY[0x1E69E6EC8]);
  v4 = sub_1AFDFE598();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  v23 = v4 + 64;
  v24 = a1;
  v12 = a1 + 72;
  if ((v9 & v8) != 0)
  {
    do
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v6 << 6);
LABEL_9:
      v18 = *(*(v24 + 48) + 8 * v14);
      v19 = *(*(v24 + 56) + 8 * v14);
      ObjectType = swift_getObjectType();
      sub_1AF62BFF0(v19, 1, ObjectType, a3);
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v5[6] + 8 * v14) = v18;
      *(v5[7] + 8 * v14) = v21;
      ++v5[2];
    }

    while (v10);
  }

  v15 = v6 << 6;
  while (1)
  {
    v16 = v6 + 1;
    if (v6 + 1 >= v11)
    {
      return v5;
    }

    v17 = *(v12 + 8 * v6);
    v15 += 64;
    ++v6;
    if (v17)
    {
      v10 = (v17 - 1) & v17;
      v14 = __clz(__rbit64(v17)) + v15;
      v6 = v16;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1AFAB6E40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB6E8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB6ED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB6F24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB6F70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB6FBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB7008(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFAB7054(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

double sub_1AFAB70A0@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 216))
  {
    v7 = *(a3 + 216);
  }

  else
  {
    v7 = a3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  v11 = *(v7 + 48);
  v12 = *(v7 + 56);
  v13 = *(v7 + 58);

  v15 = *(v7 + 32);

  *(v8 + 24) = v10;
  *(v8 + 32) = v9;
  *(v8 + 40) = v15;
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 66) = v13;
  *(v8 + 68) = a1;
  *a4 = v8 | 0x2000000000000004;
  *(a4 + 8) = 1;
  result = -3.10503618e231;
  *(a4 + 16) = xmmword_1AFE4C460;
  *(a4 + 32) = 1;
  return result;
}

void sub_1AFAB71A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AFAB7208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFAB7268(void *a1)
{
  v3 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);
  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (!sub_1AF69504C(3015, v4, v5))
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    if (sub_1AF69504C(3017, v12, v13))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (v1)
      {
        goto LABEL_29;
      }

      sub_1AF441150(v32, v33);
      sub_1AFABE5A4(0, &qword_1EB632AF0, MEMORY[0x1E69E5E28]);
      sub_1AFABE60C();
      sub_1AFDFEE88();

      v3 = v31;
    }

    else
    {
      v14 = a1[3];
      v15 = a1[4];
      sub_1AF441150(a1, v14);
      if (!sub_1AF69504C(3021, v14, v15))
      {
        sub_1AF441150(a1, a1[3]);
        sub_1AFDFF388();
        if (v1)
        {
          goto LABEL_29;
        }

        sub_1AF448018(v32, v33);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v32, v33);
        sub_1AFDFEAD8();
        sub_1AFABE4B8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        sub_1AF448018(v32, v33);
        sub_1AFABE7E0(&qword_1ED726C40, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
        sub_1AFDFEAD8();
        sub_1AFABE4B8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
        sub_1AF448018(v32, v33);
        sub_1AFABE508();
        sub_1AFDFEAD8();
        v3 = sub_1AF69F000(v31, v31);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
LABEL_32:
        v28 = a1[3];
        v29 = a1[4];
        sub_1AF441150(a1, v28);
        if (sub_1AF69504C(3021, v28, v29) && *(v3 + 16))
        {
          sub_1AF449CB8(16);
          sub_1AF449CB8(17);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
        return v3;
      }

      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF388();
      if (v1)
      {
        goto LABEL_29;
      }

      sub_1AFABE4B8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v32, v33);
      sub_1AFABE7E0(&qword_1ED726C40, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
      sub_1AFDFEAD8();
      sub_1AFABE4B8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
      sub_1AF448018(v32, v33);
      sub_1AFABE508();
      sub_1AFDFEAD8();
      v3 = sub_1AF69F000(v31, v31);
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
    goto LABEL_32;
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v32, v33);
    sub_1AFABE6A8(0);
    sub_1AFABE760();
    sub_1AFDFEE88();
    v6 = 0;
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    while (1)
    {
      v16 = v6 + 1;
      if (v6 + 1 >= v11)
      {
        break;
      }

      v10 = *(v31 + 8 * v6++ + 72);
      if (v10)
      {
        while (1)
        {
          v17 = __clz(__rbit64(v10)) | (v16 << 6);
          v18 = *(*(v31 + 56) + 8 * v17);
          v19 = qword_1AFE99228[*(*(v31 + 48) + v17)];
          v20 = v3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = sub_1AF449CB8(v19);
          v24 = v23;
          v25 = v20[2] + ((v23 & 1) == 0);
          if (v20[3] >= v25)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v27 = v22;
              sub_1AF846E40();
              v22 = v27;
            }
          }

          else
          {
            sub_1AF830A44(v25, isUniquelyReferenced_nonNull_native);
            v22 = sub_1AF449CB8(v19);
            if ((v24 & 1) != (v26 & 1))
            {
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }
          }

          v10 &= v10 - 1;
          v3 = v20;
          if (v24)
          {
            *(v20[7] + 8 * v22) = v18;
            v6 = v16;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v20[(v22 >> 6) + 8] |= 1 << v22;
            *(v20[6] + 8 * v22) = v19;
            *(v20[7] + 8 * v22) = v18;
            ++v20[2];
            v6 = v16;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

LABEL_18:
          v16 = v6;
        }
      }
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
    goto LABEL_32;
  }

LABEL_29:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  return v3;
}

void *sub_1AFAB7A80(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    v3 = sub_1AF441150(a1, a1[3]);
    sub_1AF974940();
    if (v7 == 2)
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = 0;
    }

    else if (v7 == 1)
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF974940();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = v5;
    }

    else if (v7)
    {
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE288();
      swift_willThrow();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF47FEB4();
      sub_1AF974940();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = v5;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

unint64_t sub_1AFAB7CA0(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
LABEL_3:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF448018(v66, v67);
    v3 = 0x8000000000000000;
    switch(sub_1AFDFEAB8())
    {
      case 0:
        break;
      case 1:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v5 = v60;
        v6 = *&v61[16];
        v7 = v62;
        v8 = v63;
        v9 = v64;
        v54 = *v61;
        v10 = swift_allocObject();
        *(v10 + 16) = v60;
        *(v10 + 24) = v5;
        *(v10 + 32) = v54;
        *(v10 + 48) = v6;
        *(v10 + 56) = v7;
        *(v10 + 64) = v8;
        v3 = v10 | 0x2000000000000000;
        *(v10 + 66) = v9;
        break;
      case 2:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v17 = v60;
        v16 = *v61;
        v55 = *&v61[8];
        v18 = v62;
        v19 = v63;
        v53 = v64;
        sub_1AF448018(v66, v67);
        sub_1AF51DCC0();
        sub_1AFDFEAD8();
        v20 = v60;
        v21 = swift_allocObject();
        *(v21 + 16) = v60;
        *(v21 + 24) = v17;
        *(v21 + 32) = v16;
        *(v21 + 40) = v55;
        *(v21 + 56) = v18;
        *(v21 + 64) = v19;
        *(v21 + 66) = v53;
        v3 = v21 | 0x2000000000000004;
        *(v21 + 68) = v20;
        break;
      case 3:
        sub_1AF448018(v66, v67);
        sub_1AFAB8728();
        sub_1AFDFEAD8();
        v23 = *v61;
        v24 = v61[8];
        sub_1AF448018(v66, v67);
        sub_1AF992798();
        sub_1AFDFEAD8();
        v25 = v60;
        sub_1AF448018(v66, v67);
        sub_1AF51DBEC();
        sub_1AFDFEAD8();
        v56 = v60;
        sub_1AF448018(v66, v67);
        sub_1AF51DB18();
        sub_1AFDFEAD8();
        v51 = v60;
        v52 = swift_allocObject();
        *(v52 + 16) = v60;
        *(v52 + 24) = v23;
        *(v52 + 32) = v24;
        *(v52 + 33) = v25;
        *(v52 + 34) = v56;
        v3 = v52 | 0x4000000000000000;
        *(v52 + 35) = v51;
        break;
      case 4:
        sub_1AF448018(v66, v67);
        sub_1AFAB8728();
        sub_1AFDFEAD8();
        v11 = *v61;
        v12 = v61[8];
        v13 = swift_allocObject();
        *(v13 + 16) = v60;
        *(v13 + 24) = v11;
        *(v13 + 32) = v12;
        v3 = v13 | 0x4000000000000004;
        break;
      case 5:
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v27 = *v61;
        v57 = *&v61[8];
        v28 = v62;
        v29 = v63;
        v30 = v64;
        v31 = a1[3];
        v32 = a1[4];
        sub_1AF441150(a1, v31);
        if (sub_1AF69504C(2023, v31, v32))
        {
          v33 = 5;
        }

        else
        {
          sub_1AF448018(v66, v67);
          sub_1AF51DCC0();
          sub_1AFDFEA58();
          v33 = v60;
        }

        v50 = swift_allocObject();
        *(v50 + 16) = v60;
        *(v50 + 24) = v27;
        *(v50 + 32) = v57;
        *(v50 + 48) = v28;
        *(v50 + 56) = v29;
        *(v50 + 58) = v30;
        v3 = v50 | 0x5000000000000000;
        *(v50 + 60) = v33;
        break;
      case 6:
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v35 = *&v61[16];
        v36 = v62;
        v37 = v63;
        v38 = v64;
        v58 = *v61;
        v39 = swift_allocObject();
        *(v39 + 16) = v60;
        *(v39 + 24) = v58;
        *(v39 + 40) = v35;
        *(v39 + 48) = v36;
        *(v39 + 56) = v37;
        v3 = v39 | 0x5000000000000004;
        *(v39 + 58) = v38;
        break;
      case 7:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v26 = swift_allocObject();
        *(v26 + 16) = v60;
        v3 = v26 | 0x6000000000000000;
        break;
      case 8:
        v3 = 0x8000000000000010;
        break;
      case 9:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v15 = swift_allocObject();
        *(v15 + 16) = v60;
        v3 = v15 | 0x6000000000000004;
        break;
      case 10:
        sub_1AF448018(v66, v67);
        v40 = sub_1AFDFEA78();
        v42 = v41;
        sub_1AF448018(v66, v67);
        sub_1AF974884();
        sub_1AFDFEAD8();
        v43 = v60;
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v42;
        *(v44 + 32) = v43;
        v3 = v44 | 0x7000000000000004;
        break;
      case 11:
        sub_1AF448018(v66, v67);
        sub_1AF9B3A20();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v45 = *&v61[16];
        v46 = v62;
        v47 = v63;
        v48 = v64;
        v59 = *v61;
        v49 = swift_allocObject();
        sub_1AF640200(v65, v49 + 16);
        *(v49 + 48) = v60;
        *(v49 + 56) = v59;
        *(v49 + 72) = v45;
        *(v49 + 80) = v46;
        *(v49 + 88) = v47;
        v3 = v49 | 4;
        *(v49 + 90) = v48;
        break;
      case 12:
        sub_1AF448018(v66, v67);
        sub_1AF9B3A20();
        sub_1AFDFEAD8();
        v14 = swift_allocObject();
        sub_1AF640200(&v60, v14 + 16);
        v3 = v14 | 0x1000000000000000;
        break;
      case 13:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v34 = swift_allocObject();
        *(v34 + 16) = v60;
        v3 = v34 | 0x1000000000000004;
        break;
      case 14:
        v3 = 0x8000000000000008;
        break;
      default:
        v3 = 0x80000001AFF45900;
        sub_1AF4567E0();
        swift_allocError();
        *v22 = 0xD000000000000024;
        *(v22 + 8) = 0x80000001AFF45900;
        *(v22 + 16) = 96;
        swift_willThrow();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
        goto LABEL_3;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

unint64_t sub_1AFAB8728()
{
  result = qword_1EB6337B0;
  if (!qword_1EB6337B0)
  {
    result = swift_getWitnessTable(byte_1AFE98274, &type metadata for ScriptLocation.EntityLocator, v0, v1);
    atomic_store(result, &qword_1EB6337B0);
  }

  return result;
}

uint64_t sub_1AFAB877C(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1AFAB87C8()
{
  result = qword_1EB6425C0;
  if (!qword_1EB6425C0)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFABE4B8(255, &qword_1EB6425B8, &type metadata for EntitySpace, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = sub_1AF51DD14();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v4, v5);
    atomic_store(result, &qword_1EB6425C0);
  }

  return result;
}

double sub_1AFAB8864(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1AFAB887C()
{
  result = qword_1EB6425C8;
  if (!qword_1EB6425C8)
  {
    result = swift_getWitnessTable("\r\t", &type metadata for ScriptLocation.EntityLocator, v0, v1);
    atomic_store(result, &qword_1EB6425C8);
  }

  return result;
}

unint64_t sub_1AFAB88D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v11, v12);
  sub_1AFAB8AA4();
  sub_1AFDFEAD8();
  v5 = v10;
  sub_1AF448018(v11, v12);
  sub_1AFAB8AF8();
  sub_1AFDFEAD8();
  sub_1AF448018(v11, v12);
  v6 = sub_1AFDFEA88();
  if (v6)
  {
    sub_1AF443EE0(v10);
    v8 = sub_1AFAA129C(v10);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v9 = v8;
      sub_1AF443F24(v10);
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v9 = v10;
    v5 = 0xF000000000000007;
  }

  sub_1AF443EE0(v9);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  sub_1AF444224(v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  sub_1AF443F24(v9);
  result = sub_1AF444AF4(v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

unint64_t sub_1AFAB8AA4()
{
  result = qword_1EB633798;
  if (!qword_1EB633798)
  {
    result = swift_getWitnessTable("e\r", &type metadata for ScriptLocation, v0, v1);
    atomic_store(result, &qword_1EB633798);
  }

  return result;
}

unint64_t sub_1AFAB8AF8()
{
  result = qword_1EB633850;
  if (!qword_1EB633850)
  {
    result = swift_getWitnessTable(byte_1AFE97AEC, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB633850);
  }

  return result;
}

unint64_t sub_1AFAB8B4C()
{
  result = qword_1EB6425D0;
  if (!qword_1EB6425D0)
  {
    result = swift_getWitnessTable("]\t", &type metadata for ScriptLocation, v0, v1);
    atomic_store(result, &qword_1EB6425D0);
  }

  return result;
}

unint64_t sub_1AFAB8BA0()
{
  result = qword_1EB6425D8;
  if (!qword_1EB6425D8)
  {
    result = swift_getWitnessTable(byte_1AFE97AC4, &type metadata for ScriptAccess, v0, v1);
    atomic_store(result, &qword_1EB6425D8);
  }

  return result;
}

uint64_t sub_1AFAB8BF4(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AFAB8C08(__int128 *a1, uint64_t a2)
{
  if (a2 > 0)
  {
    sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
    v4 = sub_1AFDFD488();
    *(v4 + 16) = a2;
    v5 = *(a1 + 4);
    v6 = a1[1];
    *(v4 + 32) = *a1;
    *(v4 + 48) = v6;
    *(v4 + 64) = v5;
    if (a2 == 1)
    {
LABEL_8:
      sub_1AFABB62C(a1, v13);
      return v4;
    }

LABEL_6:
    v8 = a2 - 1;
    v9 = v4 + 72;
    do
    {
      sub_1AFABB62C(a1, v13);
      v10 = *a1;
      v11 = a1[1];
      *(v9 + 32) = *(a1 + 4);
      *v9 = v10;
      *(v9 + 16) = v11;
      v9 += 40;
      --v8;
    }

    while (v8);
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v7 = a1[1];
    *(MEMORY[0x1E69E7CC0] + 32) = *a1;
    *(v4 + 48) = v7;
    *(v4 + 64) = *(a1 + 4);
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1AFAB8D00(char **a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF440564(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF440638(v2);
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v53 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0D9F4(v5);
    }

    v7 = MEMORY[0x1E69E7CC0];
    v52 = v5;
    v8 = v5 + 64;
    while (2)
    {
      v9 = *(v8 - 4);
      switch((v9 >> 59) & 0x1E | (v9 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
          goto LABEL_10;
        case 9uLL:
          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) < 2u)
          {
            goto LABEL_10;
          }

          goto LABEL_8;
        case 0xEuLL:
          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30) - 1 < 5)
          {
            goto LABEL_8;
          }

          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
          {
            if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
            {
              goto LABEL_8;
            }

LABEL_10:
          }

          else
          {
            v33 = swift_allocObject();
            *(v33 + 16) = 0u;
            *(v33 + 32) = 0u;
            *(v33 + 48) = 6;
            v9 = v33 | 0x7000000000000000;
          }

LABEL_11:
          if (v4[2])
          {
            v10 = sub_1AF41AF3C(v9);
            if (v11)
            {
              v12 = *(v4[7] + 8 * v10);
              if ((*(v8 - 24) & 2) == 0)
              {
                goto LABEL_6;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v3;
              v14 = sub_1AF41AF3C(v9);
              v16 = v15;
              if (v3[3] >= (v3[2] + ((v15 & 1) == 0)))
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_32;
                }

                v37 = v14;
                sub_1AF84F538();
                v14 = v37;
                v3 = v56;
                if (v16)
                {
                  goto LABEL_5;
                }

LABEL_33:
                v3[(v14 >> 6) + 8] |= 1 << v14;
                *(v3[6] + 8 * v14) = v9;
                *(v3[7] + v14) = 1;
                ++v3[2];
              }

              else
              {
                sub_1AF840A58(v3[2] + ((v15 & 1) == 0), isUniquelyReferenced_nonNull_native);
                v14 = sub_1AF41AF3C(v9);
                if ((v16 & 1) != (v17 & 1))
                {
                  goto LABEL_69;
                }

LABEL_32:
                if ((v16 & 1) == 0)
                {
                  goto LABEL_33;
                }

LABEL_5:
                *(v3[7] + v14) = 1;
LABEL_6:
                sub_1AF443F24(v9);
              }

              *(v8 - 1) = v12;
              *v8 = 0;
              goto LABEL_8;
            }
          }

          v54 = *(v7 + 2);
          v55 = v7;
          *(v8 - 1) = v54;
          *v8 = 0;
          v18 = *(v8 - 24);
          sub_1AF443EE0(v9);
          v19 = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1AF41AF3C(v9);
          v22 = v21;
          v23 = v3[2] + ((v21 & 1) == 0);
          if (v3[3] >= v23)
          {
            if ((v19 & 1) == 0)
            {
              sub_1AF84F538();
            }
          }

          else
          {
            sub_1AF840A58(v23, v19);
            v24 = sub_1AF41AF3C(v9);
            if ((v22 & 1) != (v25 & 1))
            {
              goto LABEL_69;
            }

            v20 = v24;
          }

          v26 = (v18 & 2) >> 1;
          if (v22)
          {
            *(v3[7] + v20) = v26;
            sub_1AF443F24(v9);
          }

          else
          {
            v3[(v20 >> 6) + 8] |= 1 << v20;
            *(v3[6] + 8 * v20) = v9;
            *(v3[7] + v20) = v26;
            ++v3[2];
          }

          sub_1AF443EE0(v9);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v4;
          v28 = sub_1AF41AF3C(v9);
          v30 = v29;
          v7 = v55;
          if (v4[3] < (v4[2] + ((v29 & 1) == 0)))
          {
            sub_1AF8407F4(v4[2] + ((v29 & 1) == 0), v27);
            v28 = sub_1AF41AF3C(v9);
            if ((v30 & 1) != (v31 & 1))
            {
LABEL_69:
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }

LABEL_29:
            if (v30)
            {
              goto LABEL_30;
            }

            goto LABEL_45;
          }

          if (v27)
          {
            goto LABEL_29;
          }

          v34 = v28;
          sub_1AF84F3E4();
          v28 = v34;
          v4 = v57;
          if (v30)
          {
LABEL_30:
            *(v4[7] + 8 * v28) = v54;
            sub_1AF443F24(v9);
            goto LABEL_46;
          }

LABEL_45:
          v4[(v28 >> 6) + 8] |= 1 << v28;
          *(v4[6] + 8 * v28) = v9;
          *(v4[7] + 8 * v28) = v54;
          ++v4[2];
LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1AF42744C(0, *(v55 + 2) + 1, 1, v55);
          }

          v36 = *(v7 + 2);
          v35 = *(v7 + 3);
          if (v36 >= v35 >> 1)
          {
            v7 = sub_1AF42744C(v35 > 1, v36 + 1, 1, v7);
          }

          *(v7 + 2) = v36 + 1;
          *&v7[8 * v36 + 32] = v9;
LABEL_8:
          v8 += 40;
          if (--v6)
          {
            continue;
          }

          *v53 = v52;
          v2 = MEMORY[0x1E69E7CC0];
          v38 = *(v7 + 2);
          if (v38)
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        case 0x10uLL:
          v32 = v9 == 0x8000000000000000;
          v9 = 0x8000000000000000;
          if (!v32)
          {
            goto LABEL_8;
          }

          goto LABEL_11;
        default:
          goto LABEL_8;
      }
    }
  }

  v7 = v2;
  v38 = *(v2 + 16);
  if (v38)
  {
LABEL_54:
    sub_1AFC07A4C(0, v38, 0);
    v39 = 32;
    v40 = v2;
    v41 = v7;
    while (1)
    {
      v42 = *&v7[v39];
      v43 = v3[2];
      sub_1AF443EE0(v42);
      if (!v43)
      {
        goto LABEL_61;
      }

      sub_1AF443EE0(v42);
      v44 = sub_1AF41AF3C(v42);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v46 = *(v3[7] + v44);
      sub_1AF443F24(v42);
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 1;
      }

LABEL_62:
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1AFC07A4C(v48 > 1, v49 + 1, 1);
      }

      *(v40 + 16) = v49 + 1;
      v50 = v40 + 40 * v49;
      *(v50 + 32) = v42;
      *(v50 + 40) = v47;
      *(v50 + 48) = xmmword_1AFE4C460;
      *(v50 + 64) = 1;
      v39 += 8;
      --v38;
      v7 = v41;
      if (!v38)
      {

        return v40;
      }
    }

    sub_1AF443F24(v42);
LABEL_61:
    v47 = 1;
    goto LABEL_62;
  }

LABEL_67:

  return MEMORY[0x1E69E7CC0];
}

unint64_t *sub_1AFAB9354(uint64_t a1)
{
  v2 = sub_1AF441B18(MEMORY[0x1E69E7CC0]);
  v39 = v3;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_31:

    v36 = sub_1AF42A964(v2, v39, sub_1AFAB5B64);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v36;
  }

  v5 = (a1 + 64);
  while (1)
  {
    v9 = *(v5 - 4);
    if (((v9 >> 59) & 0x1E | (v9 >> 2) & 1) != 0xE)
    {
      goto LABEL_4;
    }

    v10 = *(v5 - 2);
    v11 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (v12 == 4)
    {
      v40 = *(v5 - 24);
      v41 = *(v5 - 1);
      v42 = *v5;
      v13 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_4;
      }

      v40 = *(v5 - 24);
      v41 = *(v5 - 1);
      v42 = *v5;
      v14 = v11 + 16;
      v11 = *(v11 + 16);
      v13 = *(v14 + 8);
    }

    swift_bridgeObjectRetain_n();
    v15 = v2[2];
    sub_1AF443EE0(v9);
    sub_1AF444224(v10);
    v44 = v10;
    if (v15)
    {
      break;
    }

LABEL_16:
    sub_1AF443EE0(v9);
    sub_1AF444224(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v2;
    v25 = sub_1AF419914(v11, v13);
    v27 = v26;
    if (v2[3] >= (v2[2] + ((v26 & 1) == 0)))
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v25;
        sub_1AF84F68C();
        v25 = v35;
        v2 = v43;
        if ((v27 & 1) == 0)
        {
LABEL_21:
          v2[(v25 >> 6) + 8] |= 1 << v25;
          v29 = (v2[6] + 16 * v25);
          *v29 = v11;
          v29[1] = v13;
          v30 = v2[7] + 40 * v25;
          *v30 = v9;
          *(v30 + 8) = v40;
          *(v30 + 16) = v44;
          *(v30 + 24) = v41;
          *(v30 + 32) = v42;
          ++v2[2];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1AF420554(0, *(v39 + 2) + 1, 1, v39);
          }

          v32 = *(v39 + 2);
          v31 = *(v39 + 3);
          if (v32 >= v31 >> 1)
          {
            v39 = sub_1AF420554(v31 > 1, v32 + 1, 1, v39);
          }

          sub_1AF443F24(v9);
          sub_1AF444AF4(v44);
          *(v39 + 2) = v32 + 1;
          v33 = &v39[16 * v32];
          *(v33 + 4) = v11;
          *(v33 + 5) = v13;
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1AF840CBC(v2[2] + ((v26 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v25 = sub_1AF419914(v11, v13);
      if ((v27 & 1) != (v28 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_3:
    v6 = v2[7] + 40 * v25;
    v7 = *v6;
    v8 = *(v6 + 16);
    *v6 = v9;
    *(v6 + 8) = v40;
    *(v6 + 16) = v44;
    *(v6 + 24) = v41;
    *(v6 + 32) = v42;

    sub_1AF443F24(v9);
    sub_1AF444AF4(v44);
    sub_1AF443F24(v7);
    sub_1AF444AF4(v8);
LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      goto LABEL_31;
    }
  }

  sub_1AF419914(v11, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v2[2] && (v18 = sub_1AF419914(v11, v13), (v19 & 1) != 0))
  {
    v20 = (v2[7] + 40 * v18);
    v21 = *v20;
    v22 = v20[2];
    sub_1AF443EE0(*v20);
    sub_1AF444224(v22);
    v23 = v22;
  }

  else
  {
    v23 = 0;
    v21 = 0xF000000000000007;
  }

  sub_1AF444AF4(v23);
  v34 = sub_1AFAB5FF0(v21, v9);
  sub_1AF443F24(v21);
  if (v34)
  {

    sub_1AF443F24(v9);
    sub_1AF444AF4(v44);
    goto LABEL_4;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](0x74616D73696D2027, 0xEA00000000006863);
  sub_1AF81F330();
  swift_allocError();
  *v37 = 0xD000000000000013;
  v37[1] = 0x80000001AFF45B40;
  swift_willThrow();
  sub_1AF443F24(v9);
  sub_1AF444AF4(v44);
}

char *sub_1AFAB984C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v58 = sub_1AF44070C(MEMORY[0x1E69E7CC0]);
  v68 = MEMORY[0x1E69E7CD0];
  v60 = *(a1 + 16);
  if (v60)
  {
    v3 = 0;
    v59 = a1 + 32;
    while (1)
    {
      v4 = v59 + 40 * v3;
      v6 = *(v4 + 8);
      v7 = *(v4 + 32);
      *&v65 = *v4;
      v5 = v65;
      BYTE8(v65) = v6;
      v62 = *(v4 + 16);
      v66 = v62;
      v67 = v7;
      v61 = v2;
      if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0xE)
      {
        break;
      }

      v8 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x30) != 1 || v8 < 9)
      {
        break;
      }

      v22 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v24 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v23 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      sub_1AF443EE0(v65);
      sub_1AF444224(v62);
      sub_1AFABCE58(v22, v8, v24, v23, 1);
      sub_1AF445BE4(v24);
      v25 = v58;
      if (!v58[2] || (sub_1AF419914(v22, v8), v25 = v58, (v26 & 1) == 0))
      {
        sub_1AF443EE0(v5);
        sub_1AF444224(v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v25;
        v35 = sub_1AF419914(v22, v8);
        v36 = v34;
        v37 = v25[2] + ((v34 & 1) == 0);
        if (v25[3] >= v37)
        {
          v41 = isUniquelyReferenced_nonNull_native;
          v38 = v22;
          if (v41)
          {
            if ((v34 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_1AF84F68C();
            if ((v36 & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          sub_1AF840CBC(v37, isUniquelyReferenced_nonNull_native);
          v38 = v22;
          v39 = sub_1AF419914(v22, v8);
          if ((v36 & 1) != (v40 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v35 = v39;
          if ((v36 & 1) == 0)
          {
LABEL_38:
            v58 = v63;
            sub_1AF843D60(v35, v38, v8, &v65, v63);
LABEL_39:
            v47 = v68;
            if (!*(v68 + 16))
            {

              goto LABEL_17;
            }

            sub_1AFDFF288();

            sub_1AFAA0C08(&v63, v5);
            v48 = sub_1AFDFF2F8();
            v49 = -1 << *(v47 + 32);
            v50 = v48 & ~v49;
            if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_17;
            }

            v51 = ~v49;
            while (1)
            {
              v52 = *(*(v47 + 48) + 8 * v50);
              sub_1AF443EE0(v52);
              v53 = sub_1AFAB5FF0(v52, v5);
              sub_1AF443F24(v52);
              if (v53)
              {
                break;
              }

              v50 = (v50 + 1) & v51;
              if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

LABEL_3:
            sub_1AF443F24(v5);
            sub_1AF443F24(v5);
            sub_1AF444AF4(v62);
            v2 = v61;
            goto LABEL_4;
          }
        }

        v58 = v63;
        v42 = v63[7] + 40 * v35;
        v43 = *v42;
        v44 = *(v42 + 16);
        *(v42 + 32) = v67;
        v45 = v66;
        *v42 = v65;
        *(v42 + 16) = v45;
        sub_1AF443F24(v43);
        sub_1AF444AF4(v44);
        goto LABEL_39;
      }

      if (v58[2] && (v27 = sub_1AF419914(v22, v8), (v28 & 1) != 0))
      {
        v29 = (v58[7] + 40 * v27);
        v30 = *v29;
        v31 = v29[2];
        sub_1AF443EE0(*v29);
        sub_1AF444224(v31);
        v32 = v31;
      }

      else
      {
        v32 = 0;
        v30 = 0xF000000000000007;
      }

      sub_1AF444AF4(v32);
      v46 = sub_1AFAB5FF0(v30, v5);
      sub_1AF443F24(v30);
      if ((v46 & 1) == 0)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1AFDFE218();

        v63 = 0xD000000000000015;
        v64 = 0x80000001AFF45B20;
        MEMORY[0x1B2718AE0](v22, v8);

        MEMORY[0x1B2718AE0](0x74616D73696D2027, 0xEA00000000006863);
        v55 = v63;
        v56 = v64;
        sub_1AF81F330();
        swift_allocError();
        *v57 = v55;
        v57[1] = v56;
        swift_willThrow();
        sub_1AF443F24(v5);
        sub_1AF444AF4(v62);

        return v2;
      }

      sub_1AF443F24(v5);
      sub_1AF444AF4(v62);
LABEL_4:
      if (++v3 == v60)
      {
        goto LABEL_47;
      }
    }

    v10 = v68;
    if (!*(v68 + 16))
    {
      sub_1AF443EE0(v65);
      sub_1AF443EE0(v5);
      sub_1AF444224(v62);
LABEL_17:
      sub_1AF70E690(&v63, v5);
      sub_1AF443F24(v63);
      v2 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF420C34(0, *(v61 + 2) + 1, 1, v61);
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v2 = sub_1AF420C34(v17 > 1, v18 + 1, 1, v2);
      }

      *(v2 + 2) = v18 + 1;
      v19 = &v2[40 * v18];
      v20 = v65;
      v21 = v66;
      v19[64] = v67;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      goto LABEL_4;
    }

    sub_1AFDFF288();
    sub_1AF443EE0(v5);
    sub_1AF443EE0(v5);
    sub_1AF444224(v62);
    sub_1AFAA0C08(&v63, v5);
    v11 = sub_1AFDFF2F8();
    v12 = -1 << *(v10 + 32);
    v13 = v11 & ~v12;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_17;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v10 + 48) + 8 * v13);
      sub_1AF443EE0(v15);
      v16 = sub_1AFAB5FF0(v15, v5);
      sub_1AF443F24(v15);
      if (v16)
      {
        goto LABEL_3;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_47:

  return v2;
}

unint64_t sub_1AFAB9EAC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v6 = sub_1AF3C9078(v3);
    v8 = v7;

    if (v8)
    {
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000016;
}

unint64_t sub_1AFAB9FCC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v6 = sub_1AF3C9078(v3);
    v8 = v7;

    if (v8)
    {
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000015;
}

unint64_t sub_1AFABA0DC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v6 = sub_1AF3C9078(v3);
    v8 = v7;

    if (v8)
    {
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000018;
}

unint64_t sub_1AFABA1FC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v6 = sub_1AF3C9078(v3);
    v8 = v7;

    if (v8)
    {
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD00000000000001ELL;
}

unint64_t sub_1AFABA30C(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v6 = sub_1AF3C9078(v3);
    v8 = v7;

    if (v8)
    {
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000016;
}

char *sub_1AFABA41C()
{
  v1 = *(v0 + *(type metadata accessor for ShaderScript(0) + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF4486E4();
  v3 = v1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
  while ((sub_1AFDFDF18() & 1) == 0)
  {
    v3 += 16;
    if (!--v2)
    {
      v5 = *(v1 + 16);
      if (!v5)
      {
        return v4;
      }

      goto LABEL_11;
    }
  }

  v6 = sub_1AFB12464(0, 0, 2u);
  v8 = v7;
  v4 = sub_1AF4246B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = sub_1AF4246B0(v9 > 1, v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v11 = &v4[24 * v10];
  *(v11 + 4) = v6;
  *(v11 + 5) = v8;
  v11[48] = 2;
  v5 = *(v1 + 16);
  if (!v5)
  {
    return v4;
  }

LABEL_11:
  v12 = v1 + 40;
  while ((sub_1AFDFDF18() & 1) == 0)
  {
    v12 += 16;
    if (!--v5)
    {
      return v4;
    }
  }

  v13 = sub_1AFB12464(0, 0, 1u);
  v15 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF4246B0(0, *(v4 + 2) + 1, 1, v4);
  }

  v17 = *(v4 + 2);
  v16 = *(v4 + 3);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1AF4246B0(v16 > 1, v17 + 1, 1, v4);
  }

  *(v4 + 2) = v17 + 1;
  v18 = &v4[24 * v17];
  *(v18 + 4) = v13;
  *(v18 + 5) = v15;
  v18[48] = 1;
  return v4;
}

char *sub_1AFABA664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = -v1;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = (v3 + 40 * v2++);
    while (1)
    {
      v8 = *v6;
      v6 += 5;
      v7 = v8;
      if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xA)
      {

        v9 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        sub_1AF443F24(v7);
        if (v9)
        {
          break;
        }
      }

      ++v2;
      if (v4 + v2 == 1)
      {
        return v5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF422C28(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_1AF422C28(v12 > 1, v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  while (v4 + v2);
  return v5;
}

uint64_t sub_1AFABA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v113 = a2;
  v168 = *MEMORY[0x1E69E9840];
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited - 8);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - v8;
  sub_1AFABB6B4(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v108 = *(a1 + 12);
  v109 = v21;
  v22 = v21 | (v108 << 32);

  v23 = sub_1AF6824B0(v11, &off_1F2558F90, v22);
  if (!v23)
  {
  }

  v112 = a1;
  v107 = v13;
  v114 = v11;
  v24 = v23;
  sub_1AFABC9C4(v23, v19, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v19, v9, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v19, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v25 = *v9;
  sub_1AFAB7208(v9, type metadata accessor for ParticleInitScript);
  if (v25 == 2)
  {
  }

  v111 = v24;
  sub_1AFABC9C4(v24, v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v16, v6, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v16, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  if (v6[40])
  {
    sub_1AFAB7208(v6, type metadata accessor for ParticleInitScript);
    v27 = v114;
    v28 = v112;
  }

  else
  {
    v29 = *(*(v6 + 4) + 16);
    sub_1AFAB7208(v6, type metadata accessor for ParticleInitScript);
    v27 = v114;
    v28 = v112;
    if (!v29)
    {
      goto LABEL_12;
    }
  }

  sub_1AFABC9C4(v111, v19, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v19, v9, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v19, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v30 = v9[40];
  sub_1AFAB7208(v9, type metadata accessor for ParticleInitScript);
  if ((v30 & 1) == 0 && !sub_1AFABF13C(v28[4]))
  {
  }

LABEL_12:
  v99 = (v111 + *(v27 + 60));
  v100 = v20;
  v31 = *v99;
  v32 = *(*v99 + 16);

  v33 = 0;
  v115 = 0;
  v34 = v32 + 1;
  v35 = MEMORY[0x1E69E7CC0];
  v36 = 32;
LABEL_13:
  v37 = v36 + 40 * v33;
  while (v34 != ++v33)
  {
    v38 = *(v31 + v37);
    v37 += 40;
    if (((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xA)
    {

      v39 = sub_1AFDFDFD8();
      v40 = swift_conformsToProtocol2();
      if (!v40)
      {
        __break(1u);
        goto LABEL_64;
      }

      v41 = v40;
      sub_1AF443F24(v38);
      v42 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AF420E4C(0, *(v35 + 2) + 1, 1, v35);
      }

      v44 = *(v35 + 2);
      v43 = *(v35 + 3);
      if (v44 >= v43 >> 1)
      {
        v35 = sub_1AF420E4C(v43 > 1, v44 + 1, 1, v35);
      }

      v45 = *(v41 + 8);
      *(v35 + 2) = v44 + 1;
      v46 = &v35[16 * v44];
      *(v46 + 4) = v39;
      *(v46 + 5) = v45;
      v36 = v42;
      v28 = v112;
      goto LABEL_13;
    }
  }

  v47 = *(v28 + 13);
  v123 = *(v28 + 11);
  v124 = v47;
  v125 = v28[15];
  sub_1AF5B4630(v35, v122);

  v48 = v111;
  v49 = v107;
  sub_1AFABC9C4(v111, v107, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v50 = v114;
  v51 = *(v49 + *(v114 + 40));
  if (!v51)
  {
LABEL_64:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v102 = *(v51 + 32);
  sub_1AFABCA48(v49, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v52 = v99;
  v53 = v100;
  v54 = v99[1];
  v55 = v48 + *(v50 + 56);
  v56 = *v55;
  v101 = v55;
  v57 = v28[4];
  v117 = *(v55 + 8);
  v116 = 0;
  if (v54)
  {
    v58 = v54;
  }

  else
  {
    v59 = *(v31 + 16);
    if (v59)
    {
      sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
      v58 = sub_1AFDFD488();
      *(v58 + 16) = v59;
      v60 = 32;
      do
      {
        v61 = v58 + v60;
        *v61 = 0;
        *(v61 + 8) = 0;
        *(v61 + 16) = 0;
        *(v61 + 24) = xmmword_1AFE4C450;
        v60 += 40;
        --v59;
      }

      while (v59);
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v143 + 9) = v120;
  BYTE11(v143[0]) = v121;
  *(&v143[1] + 5) = v118;
  BYTE7(v143[1]) = v119;
  *&v142 = 0;
  *(&v142 + 1) = v31;
  *&v143[0] = v56;
  BYTE8(v143[0]) = v117;
  *(v143 + 12) = v57;
  BYTE4(v143[1]) = v116;
  *(&v143[1] + 1) = v58;
  *&v144 = MEMORY[0x1E69E7CC0];
  *(&v144 + 1) = MEMORY[0x1E69E7CC0];
  v145 = 0uLL;
  *v146 = 0;
  *&v146[8] = xmmword_1AFE22A20;
  v62 = thread_worker_index(COERCE_DOUBLE(1));
  v63 = *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v62 != -1)
  {
    v63 += *v62 + 1;
  }

  v64 = *v63;

  if (sub_1AFAE1FA0(v64, v110))
  {
    sub_1AF6B06C0(v53, v122, 0x200000000, &v147);
    if (v147)
    {
      v107 = v155;
      if (v155 > 0 && (v106 = v152) != 0)
      {
        v105 = v151;
        v65 = v153;
        v66 = v154;
        v67 = *(v154 + 32);
        LODWORD(v114) = *(v153 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v126 = v147;
        v127 = DWORD2(v147);
        v128 = BYTE12(v147);
        v129 = v148;
        v130 = v149;
        v131 = v150;

        v104 = v65;

        v68 = 0;
        v103 = v67;
        do
        {
          v69 = (v105 + 48 * v68);
          v70 = *v69;
          v71 = v69[1];
          v72 = v69[2];
          v73 = *(v69 + 2);
          v111 = *(v69 + 3);
          v112 = v73;
          v74 = *(v69 + 4);
          v75 = *(v69 + 5);
          if (v114)
          {
            v76 = *(v75 + 376);

            os_unfair_lock_lock(v76);
            os_unfair_lock_lock(*(v75 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v67);
          v77 = *(v66 + 64);
          v156[0] = *(v66 + 48);
          v156[1] = v77;
          v157 = *(v66 + 80);
          v78 = *(*(*(*(v75 + 40) + 16) + 32) + 16) + 1;
          *(v66 + 48) = ecs_stack_allocator_allocate(*(v66 + 32), 48 * v78, 8);
          *(v66 + 56) = v78;
          *(v66 + 72) = 0;
          *(v66 + 80) = 0;
          *(v66 + 64) = 0;
          LOBYTE(v140[0]) = 1;
          *&v160 = v104;
          *(&v160 + 1) = v75;
          *&v161 = v66;
          *(&v161 + 1) = v72;
          *&v162 = (v71 - v70 + v72);
          *(&v162 + 1) = v107;
          *&v163 = v70;
          *(&v163 + 1) = v71;
          v164 = 0uLL;
          LOBYTE(v165) = 1;
          *(&v165 + 1) = v112;
          v166 = v111;
          v167 = v74;
          if (sub_1AFADB930(v122, &v160))
          {
            v79 = *v101;
            v80 = *(v101 + 8);
            v112 = v161;
            v81 = *(v161 + 32);
            v111 = v142;
            v82 = v163;
            v83 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
            swift_unknownObjectUnownedInit();
            if (v80)
            {
              v84 = 3031;
            }

            else
            {
              v84 = v79;
            }

            v132[0] = v84;
            v132[1] = v113;
            v133 = v109;
            v134 = v108;
            v135 = v81;
            v136 = v82;
            v137 = 0;
            v138 = v111;
            v139 = v83;
            if (v110)
            {
              Strong = swift_unknownObjectUnownedLoadStrong();
            }

            else
            {
              Strong = 0;
            }

            v86 = v115;
            swift_unknownObjectUnownedAssign();

            sub_1AFABB57C(v132, v140);
            v102(v140);
            sub_1AFABB5D8(v140);
            v87 = *(&v144 + 1);
            v158[0] = v145;
            v158[1] = *v146;
            v159 = *&v146[16];
            sub_1AF630994(v112, v122, v158);
            v88 = *(v87 + 16);
            if (v88)
            {
              v89 = v87 + 40;
              do
              {
                v90 = *(v89 - 8);

                v90(v91);

                v89 += 16;
                --v88;
              }

              while (v88);
            }
          }

          else
          {
            v86 = v115;
          }

          sub_1AF630994(v66, &v126, v156);
          v115 = v86;
          sub_1AF62D29C(v75);
          v67 = v103;
          ecs_stack_allocator_pop_snapshot(v103);
          if (v114)
          {
            os_unfair_lock_unlock(*(v75 + 344));
            os_unfair_lock_unlock(*(v75 + 376));
          }

          ++v68;
        }

        while (v68 != v106);
        v93 = MEMORY[0x1E69E6720];
        sub_1AFABB520(&v147, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        sub_1AFABB520(&v147, &qword_1ED725EA0, &type metadata for QueryResult, v93);
        v52 = v99;
      }

      else
      {
        sub_1AFABB520(&v147, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      sub_1AFABF248(v57, v122);
    }

    v94 = *(&v143[1] + 1);

    v52[1] = v94;
    v95 = *(v144 + 16);
    if (v95)
    {
      v96 = v144 + 40;
      do
      {
        v97 = *(v96 - 8);

        v97(v98);

        v96 += 16;
        --v95;
      }

      while (v95);
    }

    sub_1AF692DB0(v122);

    v140[3] = v144;
    v140[4] = v145;
    v140[5] = *v146;
    v141 = *&v146[16];
    v140[0] = v142;
    v140[1] = v143[0];
    v140[2] = v143[1];
    v92 = v140;
  }

  else
  {

    sub_1AF692DB0(v122);
    v164 = v145;
    v165 = *v146;
    v166 = *&v146[16];
    v160 = v142;
    v161 = v143[0];
    v162 = v143[1];
    v163 = v144;
    v92 = &v160;
  }

  return sub_1AFABB4CC(v92);
}

uint64_t sub_1AFABB520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AFABE4B8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFABB62C(uint64_t a1, uint64_t a2)
{
  sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AFABB6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFABB720()
{
  result = qword_1ED7225D8;
  if (!qword_1ED7225D8)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for ParticleInitScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7225D8);
  }

  return result;
}

unint64_t sub_1AFABB774()
{
  result = qword_1ED722008;
  if (!qword_1ED722008)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFABE4B8(255, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AFABB810();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1ED722008);
  }

  return result;
}

unint64_t sub_1AFABB810()
{
  result = qword_1ED7229C0;
  if (!qword_1ED7229C0)
  {
    result = swift_getWitnessTable(byte_1AFE981D4, &type metadata for ScriptParameter, v0, v1);
    atomic_store(result, &qword_1ED7229C0);
  }

  return result;
}

uint64_t sub_1AFABB864(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFABE4B8(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFABB8E8()
{
  result = qword_1EB6425E8;
  if (!qword_1EB6425E8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFABE4B8(255, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AFABB984();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB6425E8);
  }

  return result;
}

unint64_t sub_1AFABB984()
{
  result = qword_1EB6425F0;
  if (!qword_1EB6425F0)
  {
    result = swift_getWitnessTable(byte_1AFE981AC, &type metadata for ScriptParameter, v0, v1);
    atomic_store(result, &qword_1EB6425F0);
  }

  return result;
}

unint64_t sub_1AFABB9D8()
{
  result = qword_1EB6335E8;
  if (!qword_1EB6335E8)
  {
    result = swift_getWitnessTable(byte_1AFE98F28, &type metadata for ParticleUpdateScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6335E8);
  }

  return result;
}

unint64_t sub_1AFABBA2C()
{
  result = qword_1EB6339A0;
  if (!qword_1EB6339A0)
  {
    result = swift_getWitnessTable(byte_1AFE98ED8, &type metadata for GraphScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6339A0);
  }

  return result;
}

unint64_t sub_1AFABBA80()
{
  result = qword_1EB633728;
  if (!qword_1EB633728)
  {
    result = swift_getWitnessTable(byte_1AFE96CF4, &type metadata for ScriptScheduling, v0, v1);
    atomic_store(result, &qword_1EB633728);
  }

  return result;
}

unint64_t sub_1AFABBAD4()
{
  result = qword_1EB642608;
  if (!qword_1EB642608)
  {
    result = swift_getWitnessTable(byte_1AFE96CCC, &type metadata for ScriptScheduling, v0, v1);
    atomic_store(result, &qword_1EB642608);
  }

  return result;
}

unint64_t sub_1AFABBB28()
{
  result = qword_1EB642618;
  if (!qword_1EB642618)
  {
    result = swift_getWitnessTable(a1_7, &type metadata for EmitterScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642618);
  }

  return result;
}

unint64_t sub_1AFABBB7C()
{
  result = qword_1EB642630;
  if (!qword_1EB642630)
  {
    result = swift_getWitnessTable(byte_1AFE98E38, &type metadata for SimpleScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642630);
  }

  return result;
}

unint64_t sub_1AFABBBD0()
{
  result = qword_1EB631910;
  if (!qword_1EB631910)
  {
    result = swift_getWitnessTable(byte_1AFE98DE8, &type metadata for MetalFunctionScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631910);
  }

  return result;
}

unint64_t sub_1AFABBC24()
{
  result = qword_1ED722B38;
  if (!qword_1ED722B38)
  {
    result = swift_getWitnessTable(asc_1AFE98D98, &type metadata for ShaderScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722B38);
  }

  return result;
}

unint64_t sub_1AFABBC78()
{
  result = qword_1EB642658;
  if (!qword_1EB642658)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for TriggerScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642658);
  }

  return result;
}

unint64_t sub_1AFABBCCC()
{
  result = qword_1EB642660;
  if (!qword_1EB642660)
  {
    result = swift_getWitnessTable(aA_11, &type metadata for TriggerAttachment, v0, v1);
    atomic_store(result, &qword_1EB642660);
  }

  return result;
}

uint64_t sub_1AFABBD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AFABBDE4()
{
  result = qword_1EB642670;
  if (!qword_1EB642670)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for TriggerAttachment, v0, v1);
    atomic_store(result, &qword_1EB642670);
  }

  return result;
}

uint64_t sub_1AFABBE38(unsigned __int16 **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v84 = a1;
  v88 = a4;
  v76 = a3;
  v127 = *MEMORY[0x1E69E9840];
  sub_1AFABB6B4(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69[-v12];
  sub_1AFABC9C4(a5, &v69[-v12], &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
  v14 = *&v13[v11[10]];
  if (v14)
  {
    v75 = *(v14 + 32);
    sub_1AFABCA48(v13, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
    v15 = v11[14];
    v16 = (a5 + v11[15]);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a5 + v15);
    v20 = *(a5 + v15 + 8);
    v90 = *(a5 + v15 + 8);
    v89 = 0;
    v71 = v16;
    v87 = v19;
    if (v17)
    {
      v21 = a2;

      v22 = v17;
    }

    else
    {
      v23 = *(v18 + 16);
      if (v23)
      {
        sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);

        v22 = sub_1AFDFD488();
        *(v22 + 16) = v23;
        v24 = 32;
        do
        {
          v25 = v22 + v24;
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          *(v25 + 24) = xmmword_1AFE4C450;
          v24 += 40;
          --v23;
        }

        while (v23);
        v21 = a2;
        v19 = v87;
      }

      else
      {
        v21 = a2;

        v22 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v105 = 0;
    *(&v105 + 1) = v18;
    *&v106[0] = v19;
    BYTE8(v106[0]) = v90;
    *(v106 + 12) = v88;
    BYTE4(v106[1]) = v89;
    *(&v106[1] + 1) = v22;
    *&v107 = MEMORY[0x1E69E7CC0];
    *(&v107 + 1) = MEMORY[0x1E69E7CC0];
    v108 = 0uLL;
    *v109 = 0;
    *&v109[8] = xmmword_1AFE22A20;
    v26 = thread_worker_index(COERCE_DOUBLE(1));
    v27 = *(v83 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v26 != -1)
    {
      v27 += *v26 + 1;
    }

    v28 = *v27;

    v29 = sub_1AFAE1FA0(v28, a7);
    v30 = v29;
    if (v29)
    {
      v70 = v29;
      v74 = a7;
      v31 = *v21;
      if (*v21)
      {
        v32 = v21;
        v82 = *(v21 + 80);
        if (v82 >= 1)
        {
          v81 = *(v21 + 56);
          if (v81)
          {
            v33 = 0;
            v34 = 0;
            v73 = HIDWORD(v76);
            v80 = *(v21 + 40);
            v35 = *(v21 + 64);
            v36 = *(v21 + 72);
            v37 = *(v36 + 32);
            v78 = v37;
            v79 = v35;
            v38 = *(v35 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v91 = v31;
            v39 = *(v32 + 24);
            v92 = *(v32 + 8);
            v93 = v39;
            v40 = 3031;
            if (!v20)
            {
              v40 = v87;
            }

            v72 = v40;
            v77 = v38;
            do
            {
              v41 = (v80 + 48 * v33);
              v43 = *v41;
              v42 = v41[1];
              v44 = v41[2];
              v45 = *(v41 + 2);
              v86 = *(v41 + 3);
              v87 = v45;
              v46 = *(v41 + 5);
              v85 = *(v41 + 4);
              v88 = v34;
              if (v38)
              {
                v47 = *(v46 + 376);

                os_unfair_lock_lock(v47);
                os_unfair_lock_lock(*(v46 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v37);
              v48 = *(v36 + 64);
              v110[0] = *(v36 + 48);
              v110[1] = v48;
              v111 = *(v36 + 80);
              v49 = *(*(*(*(v46 + 40) + 16) + 32) + 16) + 1;
              *(v36 + 48) = ecs_stack_allocator_allocate(*(v36 + 32), 48 * v49, 8);
              *(v36 + 56) = v49;
              *(v36 + 72) = 0;
              *(v36 + 80) = 0;
              *(v36 + 64) = 0;
              LOBYTE(v103[0]) = 1;
              v114[0] = v79;
              v114[1] = v46;
              v115 = v36;
              v116 = v44;
              v117 = (v42 - v43 + v44);
              v118 = v82;
              v119 = v43;
              v120 = v42;
              v121 = 0;
              v122 = 0;
              v123 = 1;
              v124 = v87;
              v125 = v86;
              v126 = v85;
              if (sub_1AFADB930(v84, v114))
              {
                v50 = v115;
                v51 = v115[4];
                v52 = v105;
                v53 = v119;
                v54 = v120;
                v55 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
                swift_unknownObjectUnownedInit();
                v94[0] = v72;
                v94[1] = v83;
                v95 = v76;
                v96 = v73;
                v97 = v51;
                v98 = v53;
                v99 = v54;
                v100 = 0;
                v101 = v52;
                v102 = v55;
                if (v74)
                {
                  Strong = swift_unknownObjectUnownedLoadStrong();
                }

                else
                {
                  Strong = 0;
                }

                swift_unknownObjectUnownedAssign();

                sub_1AFABB57C(v94, v103);
                v75(v103);
                sub_1AFABB5D8(v103);
                v57 = *(&v107 + 1);
                v112[0] = v108;
                v112[1] = *v109;
                v113 = *&v109[16];
                v34 = v88;
                sub_1AF630994(v50, v84, v112);
                v58 = *(v57 + 16);
                if (v58)
                {
                  v59 = v57 + 40;
                  do
                  {
                    v60 = *(v59 - 8);

                    v60(v61);

                    v59 += 16;
                    --v58;
                  }

                  while (v58);
                }
              }

              else
              {
                v34 = v88;
              }

              sub_1AF630994(v36, &v91, v110);
              sub_1AF62D29C(v46);
              v37 = v78;
              ecs_stack_allocator_pop_snapshot(v78);
              v38 = v77;
              if (v77)
              {
                os_unfair_lock_unlock(*(v46 + 344));
                os_unfair_lock_unlock(*(v46 + 376));
              }

              ++v33;
            }

            while (v33 != v81);
          }
        }
      }

      v62 = *(&v106[1] + 1);
      v63 = v71;

      v63[1] = v62;
      v64 = *(v107 + 16);
      v30 = v70;
      if (v64)
      {
        v65 = v107 + 40;
        do
        {
          v66 = *(v65 - 8);

          v66(v67);

          v65 += 16;
          --v64;
        }

        while (v64);
      }
    }

    v103[4] = v108;
    v103[5] = *v109;
    v104 = *&v109[16];
    v103[0] = v105;
    v103[1] = v106[0];
    v103[2] = v106[1];
    v103[3] = v107;
    sub_1AFABB4CC(v103);
    return v30 & 1;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFABC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v63 = *MEMORY[0x1E69E9840];
  sub_1AFABB6B4(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44[-v11];
  sub_1AFABC9C4(a1, &v44[-v11], &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10);
  v13 = *&v12[v10[10]];
  if (v13)
  {
    v47 = *(v13 + 32);
    sub_1AFABCA48(v12, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10);
    v14 = v10[14];
    v15 = (a1 + v10[15]);
    v17 = *v15;
    v16 = v15[1];
    v46 = v15;
    v18 = *(a1 + v14);
    v45 = *(a1 + v14 + 8);
    v51 = v45;
    v50 = 0;
    v48 = v18;
    if (v16)
    {
      v19 = a2;
      v20 = a4;

      v21 = v16;
    }

    else
    {
      v22 = *(v17 + 16);
      if (v22)
      {
        v19 = a2;
        sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);

        v21 = sub_1AFDFD488();
        *(v21 + 16) = v22;
        v23 = 32;
        do
        {
          v24 = v21 + v23;
          *v24 = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          *(v24 + 24) = xmmword_1AFE4C450;
          v23 += 40;
          --v22;
        }

        while (v22);
        v20 = a4;
        v18 = v48;
      }

      else
      {
        v19 = a2;
        v20 = a4;

        v21 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v58 = 0;
    *(&v58 + 1) = v17;
    *v59 = v18;
    v59[8] = v51;
    *&v59[12] = a5;
    v59[20] = v50;
    *&v59[24] = v21;
    *&v60 = MEMORY[0x1E69E7CC0];
    *(&v60 + 1) = MEMORY[0x1E69E7CC0];
    v61 = 0uLL;
    *v62 = 0;
    *&v62[8] = xmmword_1AFE22A20;
    v25 = thread_worker_index;
    v26 = thread_worker_index(COERCE_DOUBLE(1));
    v27 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v26 == -1)
    {
      v28 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v28 = (v27 + 8 * *v26 + 8);
    }

    v29 = *v28;

    if (sub_1AFAE1FA0(v29, v49))
    {
      v30 = (v25)(&thread_worker_index);
      if (*v30 == -1)
      {
        v31 = v27;
      }

      else
      {
        v31 = v27 + 8 * *v30 + 8;
      }

      v32 = *(*v31 + 32);
      v33 = v58;
      v34 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
      swift_unknownObjectUnownedInit();
      v35 = 3031;
      if (!v45)
      {
        v35 = v48;
      }

      v52[0] = v35;
      v52[1] = v19;
      v52[3] = v20;
      v52[5] = 0;
      v52[6] = 0;
      v52[4] = v32;
      v53 = 1;
      v54 = v33;
      v55 = v34;
      if (v49)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      swift_unknownObjectUnownedAssign();

      sub_1AFABB57C(v52, v56);
      v47(v56);
      sub_1AFABB5D8(v56);
      v37 = *&v59[24];
      v38 = v46;

      v38[1] = v37;
      v39 = *(v60 + 16);
      if (v39)
      {
        v40 = v60 + 40;
        do
        {
          v41 = *(v40 - 8);

          v41(v42);

          v40 += 16;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
    }

    v56[3] = v60;
    v56[4] = v61;
    v56[5] = *v62;
    v57 = *&v62[16];
    v56[0] = v58;
    v56[1] = *v59;
    v56[2] = *&v59[16];
    return sub_1AFABB4CC(v56);
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFABC9C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFABB6B4(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AFABCA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1AFABB6B4(0, a2, a3, a4, type metadata accessor for ScriptRuntime);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFABCAB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  sub_1AFABCE58(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

void sub_1AFABCB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFABCBBC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AFAAEB58(0, a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFABCC20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFABCCC0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

double sub_1AFABCC7C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_1AFABCCC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFABB6B4(255, a3, a4, a5, type metadata accessor for ScriptRuntime);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AFABCD30()
{
  result = qword_1EB6337C0;
  if (!qword_1EB6337C0)
  {
    result = swift_getWitnessTable(asc_1AFE97C1C, &type metadata for ScriptLocation.TextureType, v0, v1);
    atomic_store(result, &qword_1EB6337C0);
  }

  return result;
}

void sub_1AFABCD84(uint64_t a1)
{
  if (!qword_1ED7232A8)
  {
    sub_1AFABCDF0(255);
    sub_1AF443AFC();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7232A8);
    }
  }
}

void sub_1AFABCDF0(uint64_t a1)
{
  if (!qword_1ED723150)
  {
    type metadata accessor for simd_float4x4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED723150);
    }
  }
}

double sub_1AFABCE58(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:

      break;
    case 3:

      break;
    case 1:

      sub_1AFABCED4(a1, a2, a3);
      break;
  }

  return result;
}

void sub_1AFABCED4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 9)
  {

    sub_1AF442064(a3);
  }
}

void sub_1AFABCF1C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:

      break;
    case 3:

      break;
    case 1:

      sub_1AFABCF98(a1, a2, a3);
      break;
  }
}

void sub_1AFABCF98(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 9)
  {

    sub_1AF445BE4(a3);
  }
}

unint64_t sub_1AFABCFE0()
{
  result = qword_1EB637958;
  if (!qword_1EB637958)
  {
    type metadata accessor for VFXTriggerType(255);
    result = swift_getWitnessTable(byte_1AFE4999C, v3, v0, v1);
    atomic_store(result, &qword_1EB637958);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter.BuiltinProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 22;
  if (a2 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 22;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 22;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderScriptParameter.BuiltinProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 22;
  if (a3 + 22 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEA)
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1AFABD190(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1AFABD1A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t *assignWithCopy for ScriptsHolder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t *assignWithTake for ScriptsHolder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t destroy for MetalFunctionScript.Info(void *a1)
{
}

void *initializeWithCopy for MetalFunctionScript.Info(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for MetalFunctionScript.Info(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for MetalFunctionScript.Info(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

uint64_t initializeWithCopy for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AFABCE58(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AFABCE58(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1AFABCF1C(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1AFABCF1C(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t sub_1AFABD658(uint64_t a1)
{
  if (*(a1 + 32) <= 5u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AFABD670(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AFABD6AC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AFAB8864(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ScriptLocation.EntityLocator(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AFAB8864(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AF7D4C4C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ScriptLocation.EntityLocator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AF7D4C4C(v4, v5, v6);
  return a1;
}

unint64_t destroy for ScriptParameter(unint64_t *a1)
{
  sub_1AF443F24(*a1);
  result = a1[2];
  if ((~result & 0xF000000000000007) != 0)
  {

    return sub_1AF443F24(result);
  }

  return result;
}

uint64_t initializeWithCopy for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1AF443EE0(*(a2 + 16));
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF443F24(v5);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = v8 & 0xF000000000000007;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v9 == 0xF000000000000007)
    {
      sub_1AFABD940((a1 + 16));
      *v7 = *(a2 + 16);
    }

    else
    {
      sub_1AF443EE0(*(a2 + 16));
      v10 = *v7;
      *v7 = v8;
      sub_1AF443F24(v10);
    }
  }

  else
  {
    if (v9 != 0xF000000000000007)
    {
      sub_1AF443EE0(*(a2 + 16));
    }

    *v7 = v8;
  }

  v11 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v11;
  return a1;
}

uint64_t assignWithTake for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v4);
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      *v6 = v7;
      sub_1AF443F24(v5);
      goto LABEL_6;
    }

    sub_1AFABD940((a1 + 16));
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 33))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 112;
    *(result + 8) = 0;
    if (a3 >= 0x70)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AFABDAC4()
{
  result = qword_1EB642690;
  if (!qword_1EB642690)
  {
    result = swift_getWitnessTable(byte_1AFE98350, &type metadata for ScriptParameter, v0, v1);
    atomic_store(result, &qword_1EB642690);
  }

  return result;
}

unint64_t sub_1AFABDB1C()
{
  result = qword_1EB642698;
  if (!qword_1EB642698)
  {
    result = swift_getWitnessTable("Q\n", &type metadata for ScriptLocation.BuiltinProperty, v0, v1);
    atomic_store(result, &qword_1EB642698);
  }

  return result;
}

unint64_t sub_1AFABDB74()
{
  result = qword_1EB6426A0;
  if (!qword_1EB6426A0)
  {
    result = swift_getWitnessTable(")\n", &type metadata for ScriptLocation.EntityLocator, v0, v1);
    atomic_store(result, &qword_1EB6426A0);
  }

  return result;
}

unint64_t sub_1AFABDBCC()
{
  result = qword_1EB6426A8;
  if (!qword_1EB6426A8)
  {
    result = swift_getWitnessTable(byte_1AFE98488, &type metadata for ShaderScriptParameter, v0, v1);
    atomic_store(result, &qword_1EB6426A8);
  }

  return result;
}

unint64_t sub_1AFABDC24()
{
  result = qword_1EB6426B0;
  if (!qword_1EB6426B0)
  {
    result = swift_getWitnessTable("1\b", &type metadata for ParticleInitScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426B0);
  }

  return result;
}

unint64_t sub_1AFABDC7C()
{
  result = qword_1EB6426B8;
  if (!qword_1EB6426B8)
  {
    result = swift_getWitnessTable("A\a", &type metadata for ParticleUpdateScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426B8);
  }

  return result;
}

unint64_t sub_1AFABDCD4()
{
  result = qword_1EB6426C0;
  if (!qword_1EB6426C0)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for GraphScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426C0);
  }

  return result;
}

unint64_t sub_1AFABDD2C()
{
  result = qword_1EB6426C8;
  if (!qword_1EB6426C8)
  {
    result = swift_getWitnessTable(aA_13, &type metadata for EmitterScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426C8);
  }

  return result;
}

unint64_t sub_1AFABDD84()
{
  result = qword_1EB6426D0;
  if (!qword_1EB6426D0)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for SimpleScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426D0);
  }

  return result;
}

unint64_t sub_1AFABDDDC()
{
  result = qword_1EB6426D8;
  if (!qword_1EB6426D8)
  {
    result = swift_getWitnessTable(byte_1AFE98AC8, &type metadata for MetalFunctionScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426D8);
  }

  return result;
}

unint64_t sub_1AFABDE34()
{
  result = qword_1EB6426E0;
  if (!qword_1EB6426E0)
  {
    result = swift_getWitnessTable(byte_1AFE98BB8, &type metadata for ShaderScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426E0);
  }

  return result;
}

unint64_t sub_1AFABDE8C()
{
  result = qword_1EB6426E8;
  if (!qword_1EB6426E8)
  {
    result = swift_getWitnessTable(byte_1AFE98CA8, &type metadata for TriggerScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426E8);
  }

  return result;
}

unint64_t sub_1AFABDEE4()
{
  result = qword_1EB6426F0;
  if (!qword_1EB6426F0)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for ShaderScriptParameter.BuiltinProperty, v0, v1);
    atomic_store(result, &qword_1EB6426F0);
  }

  return result;
}

unint64_t sub_1AFABDF3C()
{
  result = qword_1EB6426F8;
  if (!qword_1EB6426F8)
  {
    result = swift_getWitnessTable(byte_1AFE98BE0, &type metadata for TriggerScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6426F8);
  }

  return result;
}

unint64_t sub_1AFABDF94()
{
  result = qword_1EB642700;
  if (!qword_1EB642700)
  {
    result = swift_getWitnessTable(")\v", &type metadata for TriggerScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642700);
  }

  return result;
}

unint64_t sub_1AFABDFEC()
{
  result = qword_1ED722B28;
  if (!qword_1ED722B28)
  {
    result = swift_getWitnessTable(byte_1AFE98AF0, &type metadata for ShaderScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722B28);
  }

  return result;
}

unint64_t sub_1AFABE044()
{
  result = qword_1ED722B30;
  if (!qword_1ED722B30)
  {
    result = swift_getWitnessTable(byte_1AFE98B18, &type metadata for ShaderScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722B30);
  }

  return result;
}

unint64_t sub_1AFABE09C()
{
  result = qword_1EB631900;
  if (!qword_1EB631900)
  {
    result = swift_getWitnessTable(byte_1AFE98A00, &type metadata for MetalFunctionScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631900);
  }

  return result;
}

unint64_t sub_1AFABE0F4()
{
  result = qword_1EB631908;
  if (!qword_1EB631908)
  {
    result = swift_getWitnessTable("\t\r", &type metadata for MetalFunctionScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631908);
  }

  return result;
}

unint64_t sub_1AFABE14C()
{
  result = qword_1EB642708;
  if (!qword_1EB642708)
  {
    result = swift_getWitnessTable(byte_1AFE98910, &type metadata for SimpleScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642708);
  }

  return result;
}

unint64_t sub_1AFABE1A4()
{
  result = qword_1EB642710;
  if (!qword_1EB642710)
  {
    result = swift_getWitnessTable(byte_1AFE98938, &type metadata for SimpleScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642710);
  }

  return result;
}

unint64_t sub_1AFABE1FC()
{
  result = qword_1EB642718;
  if (!qword_1EB642718)
  {
    result = swift_getWitnessTable(byte_1AFE98820, &type metadata for EmitterScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642718);
  }

  return result;
}

unint64_t sub_1AFABE254()
{
  result = qword_1EB642720;
  if (!qword_1EB642720)
  {
    result = swift_getWitnessTable(byte_1AFE98848, &type metadata for EmitterScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642720);
  }

  return result;
}

unint64_t sub_1AFABE2AC()
{
  result = qword_1EB633990;
  if (!qword_1EB633990)
  {
    result = swift_getWitnessTable(byte_1AFE98730, &type metadata for GraphScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633990);
  }

  return result;
}

unint64_t sub_1AFABE304()
{
  result = qword_1EB633998;
  if (!qword_1EB633998)
  {
    result = swift_getWitnessTable(byte_1AFE98758, &type metadata for GraphScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633998);
  }

  return result;
}

unint64_t sub_1AFABE35C()
{
  result = qword_1EB6335D8;
  if (!qword_1EB6335D8)
  {
    result = swift_getWitnessTable(byte_1AFE98640, &type metadata for ParticleUpdateScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6335D8);
  }

  return result;
}

unint64_t sub_1AFABE3B4()
{
  result = qword_1EB6335E0;
  if (!qword_1EB6335E0)
  {
    result = swift_getWitnessTable(byte_1AFE98668, &type metadata for ParticleUpdateScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6335E0);
  }

  return result;
}

unint64_t sub_1AFABE40C()
{
  result = qword_1ED7225C8;
  if (!qword_1ED7225C8)
  {
    result = swift_getWitnessTable(byte_1AFE98550, &type metadata for ParticleInitScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7225C8);
  }

  return result;
}

unint64_t sub_1AFABE464()
{
  result = qword_1ED7225D0;
  if (!qword_1ED7225D0)
  {
    result = swift_getWitnessTable(byte_1AFE98578, &type metadata for ParticleInitScript.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7225D0);
  }

  return result;
}

void sub_1AFABE4B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AFABE508()
{
  result = qword_1ED723220;
  if (!qword_1ED723220)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFABE4B8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF47FEB4();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1ED723220);
  }

  return result;
}

void sub_1AFABE5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], &type metadata for Entity, MEMORY[0x1E69E6540]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFABE60C()
{
  result = qword_1EB632AE8;
  if (!qword_1EB632AE8)
  {
    v6[4] = v0;
    v6[5] = v1;
    sub_1AFABE5A4(255, &qword_1EB632AF0, MEMORY[0x1E69E5E28]);
    v4 = v3;
    v5 = sub_1AF47FEB4();
    v6[0] = MEMORY[0x1E69E6560];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v4, v6);
    atomic_store(result, &qword_1EB632AE8);
  }

  return result;
}

void sub_1AFABE6A8(uint64_t a1)
{
  if (!qword_1EB630E08)
  {
    sub_1AFABE70C();
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB630E08);
    }
  }
}

unint64_t sub_1AFABE70C()
{
  result = qword_1EB631D18;
  if (!qword_1EB631D18)
  {
    result = swift_getWitnessTable(byte_1AFE96D1C, &type metadata for ScriptScheduling, v0, v1);
    atomic_store(result, &qword_1EB631D18);
  }

  return result;
}

unint64_t sub_1AFABE760()
{
  result = qword_1EB630E00;
  if (!qword_1EB630E00)
  {
    v5[4] = v0;
    v5[5] = v1;
    sub_1AFABE6A8(255);
    v4 = v3;
    v5[0] = sub_1AFABBA80();
    v5[1] = sub_1AF47FEB4();
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v4, v5);
    atomic_store(result, &qword_1EB630E00);
  }

  return result;
}

uint64_t sub_1AFABE7E0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFABE4B8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFABE864()
{
  result = qword_1EB642E80;
  if (!qword_1EB642E80)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFABE4B8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF480018();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB642E80);
  }

  return result;
}

unint64_t destroy for ShaderScriptParameter.VertexOutProperty(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {

    v3 = *(a1 + 16);

    return sub_1AF445BE4(v3);
  }

  return result;
}

__n128 sub_1AFABE974(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    v3 = a2[1].n128_u64[0];

    sub_1AF442064(v3);
    a1[1].n128_u64[0] = v3;
  }

  return result;
}

void *assignWithCopy for ShaderScriptParameter.VertexOutProperty(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      v7 = a2[2];

      sub_1AF442064(v7);
      a1[2] = v7;
      return a1;
    }

LABEL_7:
    v8 = *a2;
    a1[2] = a2[2];
    *a1 = v8;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    sub_1AF445BE4(a1[2]);
    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  v5 = a2[2];
  sub_1AF442064(v5);
  v6 = a1[2];
  a1[2] = v5;
  sub_1AF445BE4(v6);
  return a1;
}

uint64_t assignWithTake for ShaderScriptParameter.VertexOutProperty(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      sub_1AF445BE4(*(v4 + 16));
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(v4 + 16);
      *(v4 + 16) = *(a2 + 16);
      sub_1AF445BE4(v5);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter.VertexOutProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 24))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderScriptParameter.VertexOutProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_1AFABEC08(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AFABEC50()
{
  result = qword_1EB642728;
  if (!qword_1EB642728)
  {
    result = swift_getWitnessTable(byte_1AFE990C4, &type metadata for ShaderScriptParameter.VertexProperty, v0, v1);
    atomic_store(result, &qword_1EB642728);
  }

  return result;
}

unint64_t sub_1AFABECA8()
{
  result = qword_1EB642730;
  if (!qword_1EB642730)
  {
    result = swift_getWitnessTable(asc_1AFE990EC, &type metadata for ShaderScriptParameter.VertexOutProperty, v0, v1);
    atomic_store(result, &qword_1EB642730);
  }

  return result;
}

unint64_t sub_1AFABED00()
{
  result = qword_1EB642738;
  if (!qword_1EB642738)
  {
    result = swift_getWitnessTable(byte_1AFE99194, &type metadata for ShaderScriptParameter.FragmentInProperty, v0, v1);
    atomic_store(result, &qword_1EB642738);
  }

  return result;
}

unint64_t sub_1AFABED58()
{
  result = qword_1EB642740;
  if (!qword_1EB642740)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for ShaderScriptParameter.FragmentOutProperty, v0, v1);
    atomic_store(result, &qword_1EB642740);
  }

  return result;
}

uint64_t destroy for ScriptContext(uint64_t a1)
{

  swift_unknownObjectUnownedDestroy();
}

uint64_t initializeWithCopy for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  swift_unknownObjectUnownedCopyInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for ScriptContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectUnownedCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t initializeWithTake for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  swift_unknownObjectUnownedTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  swift_unknownObjectUnownedTakeAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

unint64_t sub_1AFABF06C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1AFDFE108();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1AFC892CC();
    sub_1AF56E46C(v5 + 32, v4, a1);

    return v5;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

BOOL sub_1AFABF13C(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) != 1 || sub_1AF67CACC(&type metadata for GraphV1ExecutionOverride, &off_1F255DD30, a1))
  {
    return 1;
  }

  if (!sub_1AF67CACC(&type metadata for CodeGenerationInitialized, &off_1F253BFF0, a1) && !sub_1AF67CACC(&type metadata for CodeGenerationComponent, &off_1F253BF70, a1) && !sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, a1) && !sub_1AF67CACC(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B538, a1) || sub_1AF67CACC(&type metadata for GraphComponent, &off_1F2547F28, a1))
  {
    return 0;
  }

  v4 = sub_1AF3CAA18(a1);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);

  return v5 == 0;
}

unint64_t sub_1AFABF248(unint64_t result, uint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v4 = sub_1AF67EBC0(result, v2);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = MEMORY[0x1B27191B0](*(v5 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v26 = v6;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 32;
      do
      {
        sub_1AF70D168(&v28, *(v5 + v8));
        v8 += 8;
        --v7;
      }

      while (v7);

      v9 = v26;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(*a2 + 18);
    if (v10 >= 0x10)
    {
      v25 = v2;
      v11 = (*a2 + *(*a2 + 16) + 41);
      v12 = (v11 + (v10 & 0xFFF0));
      v13 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
      v14 = v9 + 56;
      do
      {
        v20 = *v11;
        if (*(v9 + 16) && (v21 = sub_1AFDFF278(), v22 = -1 << *(v9 + 32), v23 = v21 & ~v22, ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          while (*(*(v9 + 48) + 8 * v23) != v20)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v15 = *(v25 + v13);
          v26 = 0;
          v27 = 0xE000000000000000;

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
          v16 = sub_1AFDFF4B8();
          MEMORY[0x1B2718AE0](v16);

          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
          v17 = v26;
          v18 = v27;
          v19 = sub_1AFDFDA08();
          v26 = 0;
          (*(*v15 + 88))(v19, &v26, v17, v18);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }
  }

  return result;
}

uint64_t sub_1AFABF4EC(uint64_t a1)
{
  v2 = sub_1AFAD3998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFABF528(uint64_t a1)
{
  v2 = sub_1AFAD3998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFABF564(void *a1)
{
  sub_1AFAD393C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AFAD3998();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AFABF670@<X0>(void *a2@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_1ED725EC0 != -1)
    {
      swift_once();
    }

    Strong = qword_1ED73B5C0;
  }

  v4 = *(*(Strong + 16) + 32);

  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v5, 0);
    v6 = v12;
    v7 = *(v12 + 16);
    v8 = 32;
    do
    {
      v9 = *(v4 + v8);
      v10 = *(v12 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_1AFC06F08(v10 > 1, v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7 + 32) = v9;
      v8 += 16;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
  return result;
}

unint64_t sub_1AFABF7C8(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v141.i64[0] = 0;
    v142 = (v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v4 = result + 32;
    v145.columns[2] = xmmword_1AFE20180;
    v145.columns[1] = xmmword_1AFE20160;
    v145.columns[0] = xmmword_1AFE20150;
    v145.columns[3] = xmmword_1AFE201A0;
    do
    {
      v5 = v4 + 40 * v3;
      if ((*(v5 + 8) & 2) != 0)
      {
        v6 = *v5;
        v7 = *(v5 + 16);
        v8 = 1 << ((*v5 >> 59) & 0x1E | ((*v5 & 4) != 0));
        if ((v8 & 0x1FFCD) == 0)
        {
          if ((v8 & 0x30) != 0)
          {
            v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v144.i64[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
            sub_1AF443EE0(v6);
            sub_1AF444224(v7);
            sub_1AFDFDFD8();
            if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
            {
              v10 = v9;
              v11 = v144.i64[0];
              v12 = v9 == -1 && v144.i32[0] == 0;
              v13 = v12;
              if (v12)
              {
                v14 = v145.columns[0];
                v15 = v145.columns[1];
                v16 = v145.columns[2];
                v17 = v145.columns[3];
              }

              else
              {
                v41 = v142;
                v42 = v143;
                v43 = v145.columns[3];
                if ((v9 & 0x80000000) == 0 && v142[1] > v9 && ((v44 = (*v142 + 12 * v9), v144.i32[0] != -1) ? (v45 = v44[2] == v144.i32[0]) : (v45 = 1), v45))
                {
                  v46 = *(*(*(v143 + 144) + 8 * *v44 + 32) + 48);
                  v47 = (v46 + 32);
                  v48 = *(v46 + 16) + 1;
                  while (--v48)
                  {
                    v49 = *v47;
                    v47 += 5;
                    if (v49 == &type metadata for NodeTransformController)
                    {
                      Strong = swift_unknownObjectWeakLoadStrong();
                      v51 = v145;
                      if (Strong)
                      {
                        v52 = Strong;
                        [Strong worldTransform];
                        v139 = v54;
                        v140 = v53;
                        v137 = v56;
                        v138 = v55;

                        v51.columns[3] = v137;
                        v51.columns[2] = v138;
                        v51.columns[1] = v139;
                        v51.columns[0] = v140;
                        v42 = v143;
                      }

                      v57 = v142;
                      v58 = v142[1];
                      if (v58 <= v9)
                      {
                        v61 = v144.i32[0];
                      }

                      else
                      {
                        v59 = (*v142 + 12 * v9);
                        v60 = *(v59 + 2);
                        v61 = v144.i32[0];
                        if (v144.i32[0] == -1 || v59[2] == v144.i32[0])
                        {
                          v62 = *(*(v42 + 144) + 8 * *v59 + 32);
                          v63 = *(v62 + 48);
                          v64 = (v63 + 32);
                          v65 = *(v63 + 16) + 1;
                          while (--v65)
                          {
                            v66 = v64 + 5;
                            v67 = *v64;
                            v64 += 5;
                            if (v67 == &type metadata for WorldTransform)
                            {
                              *(&(*(v66 - 2))[4 * v60].Kind + *(v62 + 128)) = v51;
                              v58 = v57[1];
                              break;
                            }
                          }
                        }
                      }

                      if (v58 > v9)
                      {
                        v72 = (*v57 + 12 * v9);
                        v73 = *(v72 + 2);
                        if (v61 == -1 || v72[2] == v61)
                        {
                          v74 = *(*(v42 + 144) + 8 * *v72 + 32);
                          v75 = *(v74 + 48);
                          v76 = (v75 + 32);
                          v77 = *(v75 + 16) + 1;
                          while (--v77)
                          {
                            v78 = v76 + 5;
                            v79 = *v76;
                            v76 += 5;
                            if (v79 == &type metadata for InverseWorldTransform)
                            {
                              v80 = (&(*(v78 - 2))[4 * v73] + *(v74 + 128));
                              v139 = v51.columns[1];
                              v140 = v51.columns[0];
                              v137 = v51.columns[3];
                              v138 = v51.columns[2];
                              v158 = __invert_f4(v51);
                              v57 = v142;
                              *v80 = v158.columns[0];
                              v80[1] = v158.columns[1];
                              v51.columns[1] = v139;
                              v51.columns[0] = v140;
                              v80[2] = v158.columns[2];
                              v80[3] = v158.columns[3];
                              v51.columns[3] = v137;
                              v51.columns[2] = v138;
                              v42 = v143;
                              v61 = v144.i32[0];
                              v58 = v57[1];
                              break;
                            }
                          }
                        }
                      }

                      if (v58 > v9)
                      {
                        v81 = (*v57 + 12 * v9);
                        v82 = *(v81 + 2);
                        if (v61 == -1 || v81[2] == v61)
                        {
                          v112 = *(*(v42 + 144) + 8 * *v81 + 32);
                          v113 = *(v112 + 48);
                          v114 = (v113 + 32);
                          v115 = *(v113 + 16) + 1;
                          while (--v115)
                          {
                            v116 = v114 + 5;
                            v117 = *v114;
                            v114 += 5;
                            if (v117 == &type metadata for Children)
                            {
                              v118 = v141.i64[0];
                              sub_1AF5AF588(*(v116 - 2) + 8 * v82 + *(v112 + 128), v42, v51.columns[0], v51.columns[1], v51.columns[2], v51.columns[3]);
                              v141.i64[0] = v118;
                              goto LABEL_76;
                            }
                          }
                        }
                      }

                      goto LABEL_76;
                    }
                  }

                  v68 = *(*(*(*(v143 + 88) + 8 * *(v44 + 3) + 32) + 16) + 128);
                  if (!*(v68 + 16))
                  {
                    v42 = v143;
                    goto LABEL_79;
                  }

                  v140.i64[0] = *(*(*(v143 + 88) + 8 * *(v44 + 3) + 32) + 16);
                  v69 = sub_1AF449CB8(&type metadata for NotInHierarchy);
                  if ((v70 & 1) == 0)
                  {
                    v41 = v142;
                    v42 = v143;
                    v43 = v145.columns[3];
                    v11 = v144.i64[0];
                    goto LABEL_79;
                  }

                  v14 = v145.columns[0];
                  v15 = v145.columns[1];
                  v71 = *(*(v140.i64[0] + 24) + 16 * *(*(v68 + 56) + 8 * v69) + 32);
                  v16 = v145.columns[2];
                  v43 = v145.columns[3];
                  v17 = v145.columns[3];
                  v41 = v142;
                  v42 = v143;
                  v11 = v144.i64[0];
                  if (v71 != &type metadata for NotInHierarchy)
                  {
                    goto LABEL_79;
                  }
                }

                else
                {
LABEL_79:
                  if ((v9 & 0x80000000) == 0 && v41[1] > v9)
                  {
                    v83 = (*v41 + 12 * v9);
                    v84 = *(v83 + 2);
                    if (v11 == -1 || v83[2] == v11)
                    {
                      v106 = *(*(v42 + 144) + 8 * *v83 + 32);
                      v107 = *(v106 + 48);
                      v108 = (v107 + 32);
                      v109 = *(v107 + 16) + 1;
                      while (--v109)
                      {
                        v110 = v108 + 5;
                        v111 = *v108;
                        v108 += 5;
                        if (v111 == &type metadata for Parent)
                        {
                          v140.i64[0] = *(&(*(v110 - 2))->Kind + 8 * v84 + *(v106 + 128));
                          sub_1AF3C9244(v140.u64[0], v148);
                          if (v149)
                          {
                            v14.f32[0] = sub_1AF5AF890(v140.u64[0]);
                          }

                          else
                          {
                            v14 = v148[0];
                            v15 = v148[1];
                            v16 = v148[2];
                            v17 = v148[3];
                          }

                          v11 = v144.i64[0];
                          goto LABEL_84;
                        }
                      }
                    }
                  }

                  v14 = v145.columns[0];
                  v15 = v145.columns[1];
                  v16 = v145.columns[2];
                  v17 = v43;
                }
              }

LABEL_84:
              v137 = v17;
              v138 = v16;
              v139 = v15;
              v140 = v14;
              v85 = v9 | (v11 << 32);
              v86.f32[0] = sub_1AF5AF890(v85);
              v146 = v145;
              if ((v13 & 1) == 0 && (v10 & 0x80000000) == 0 && v142[1] > v10)
              {
                v90 = *v142 + 12 * v10;
                if (v144.i32[0] == -1 || *(v90 + 8) == v144.i32[0])
                {
                  v91 = *(*(*(v143 + 88) + 8 * *(v90 + 6) + 32) + 16);
                  v92 = *(v91 + 128);
                  if (*(v92 + 16))
                  {
                    v133 = v89;
                    v134 = v88;
                    v135 = v87;
                    v136 = v86;
                    v93 = sub_1AF449CB8(&type metadata for WorldTransform);
                    if ((v94 & 1) != 0 && *(*(v91 + 24) + 16 * *(*(v92 + 56) + 8 * v93) + 32) == &type metadata for WorldTransform)
                    {
                      v95 = v143;
                      v96 = v141.i64[0];
                      sub_1AF67FFE4(v85, v143, &v146, v140, v139, v138, v137, v136, v135, v134, v133);
                      sub_1AF67F5B0(v85, v95, &v146);
                      v141.i64[0] = v96;
                      if (v142[1] > v10)
                      {
                        v97 = (*v142 + 12 * v10);
                        v98 = *(v97 + 2);
                        if (v144.i32[0] == -1 || v97[2] == v144.i32[0])
                        {
                          v99 = *(*(v95 + 144) + 8 * *v97 + 32);
                          v100 = *(v99 + 48);
                          v101 = (v100 + 32);
                          v102 = *(v100 + 16) + 1;
                          while (--v102)
                          {
                            v103 = v101 + 5;
                            v104 = *v101;
                            v101 += 5;
                            if (v104 == &type metadata for Children)
                            {
                              v105 = v141.i64[0];
                              sub_1AF5AFBA8(*(v103 - 2) + 8 * v98 + *(v99 + 128), v95, &v146);
                              v141.i64[0] = v105;
                              break;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_76:
            sub_1AF443F24(v6);
            result = sub_1AF444AF4(v7);
          }

          else
          {
            v18 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v140.i64[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
            v144 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v19 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
            v139.i32[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
            v138.i32[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x5A);
            sub_1AF44596C((v6 & 0xFFFFFFFFFFFFFFBLL) + 16, v147);
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              sub_1AF443EE0(v6);
              if (v22)
              {
                v135.i64[0] = v22;
                v137.i64[0] = v21;
                sub_1AF443EE0(v6);
                sub_1AF444224(v7);
                v23 = qword_1EB633230;
                v24 = v140.i64[0];

                v136.i64[0] = v144.i64[0];

                if (v23 != -1)
                {
                  v25 = swift_once();
                }

                v146.columns[0].i64[0] = v18;
                v146.columns[0].i64[1] = v24;
                v146.columns[1] = v144;
                v146.columns[2].i64[0] = v19;
                v146.columns[2].i8[8] = v139.i8[0];
                v146.columns[2].i16[5] = v138.i16[0];
                MEMORY[0x1EEE9AC00](v25);
                v129[2] = &v146;
                v26 = v141.i64[0];
                if (sub_1AF7B96BC(sub_1AFACFE4C, v129, v27))
                {
                  v28 = [v135.i64[0] presentationNode];
                  v29 = [v28 coreEntity];

                  if (v29)
                  {
                    v30 = v29;
                  }

                  else
                  {
                    v30 = 0xFFFFFFFFLL;
                  }

                  v144.i64[0] = v29 & 0xFFFFFFFF00000000;
                  v31 = v143;
                  sub_1AF67E5F4(v30 | v29 & 0xFFFFFFFF00000000, v143, &v150);
                  if (v154)
                  {
                    v141.i64[0] = v26;
                    v32 = sub_1AF67CACC(&type metadata for NotInHierarchy, &off_1F252A380, v30 | v144.i64[0]);
                    v33 = v143;
                    v34 = v145.columns[0];
                    v35 = v145.columns[1];
                    v36 = v145.columns[2];
                    v37 = v145.columns[3];
                    if (!v32)
                    {
                      v38 = sub_1AF3C9170(v30 | v144.i64[0]);
                      v33 = v143;
                      v34 = v145.columns[0];
                      v35 = v145.columns[1];
                      v36 = v145.columns[2];
                      v37 = v145.columns[3];
                      if ((v39 & 1) == 0)
                      {
                        v40 = v38;
                        v139.i64[0] = v30;
                        sub_1AF3C9244(v38, v155);
                        if (v156)
                        {
                          v34.f32[0] = sub_1AF5AF890(v40);
                        }

                        else
                        {
                          v34 = v155[0];
                          v35 = v155[1];
                          v36 = v155[2];
                          v37 = v155[3];
                        }

                        v30 = v139.i64[0];
                      }
                    }

                    v134 = v37;
                    v135 = v36;
                    v138 = v35;
                    v139 = v34;
                    v119 = v144.i64[0];
                    v120.f32[0] = sub_1AF5AF890(v30 | v144.i64[0]);
                    v132 = v121;
                    v133 = v120;
                    v130 = v123;
                    v131 = v122;
                    v146 = v145;
                    if (sub_1AF67CACC(&type metadata for WorldTransform, &off_1F2529AF8, v30 | v119))
                    {
                      v124 = v30;
                      v125 = v30 | v119;
                      v126 = v139;
                      v127 = v119;
                      v139.i64[0] = v124;
                      v128 = v141.i64[0];
                      sub_1AF67FFE4(v125, v33, &v146, v126, v138, v135, v134, v133, v132, v131, v130);
                      sub_1AF67F5B0(v139.i64[0] | v127, v33, &v146);

                      sub_1AF685400(v139.i64[0] | v127, v33, v33, &v146);
                      v141.i64[0] = v128;
                    }

                    else
                    {
                    }

                    swift_unknownObjectRelease();
                    sub_1AF443F24(v6);
                    sub_1AF444AF4(v7);
                  }

                  else
                  {
                    v141 = v153;
                    v138 = v151;
                    v139 = v152;
                    v135 = v150;
                    sub_1AF67F1B8(v30 | v144.i64[0], v31, v150, v151, v152, v153);
                    v157.columns[0] = v135;
                    v157.columns[1] = v138;
                    v157.columns[2] = v139;
                    v157.columns[3] = v141;
                    sub_1AF67F6BC(v30 | v144.i64[0], v31, v157);

                    sub_1AF685318(v30 | v144.i64[0], v31, v31, v135, v138, v139, v141);
                    v141.i64[0] = v26;
                    swift_unknownObjectRelease();

                    sub_1AF443F24(v6);
                    sub_1AF444AF4(v7);
                  }
                }

                else
                {
                  v141.i64[0] = v26;
                  swift_unknownObjectRelease();

                  sub_1AF443F24(v6);
                  sub_1AF444AF4(v7);
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
            }

            sub_1AF4459C8(v147);
            result = sub_1AF443F24(v6);
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_1AFAC0434(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v16[5] = qword_1ED73B840;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  sub_1AFCC565C(1, 1, v15);
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  v5 = v15[0];
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v4, v5);
  os_unfair_lock_unlock(*(v3 + 40));
  sub_1AFAD2E00(v15, sub_1AFAD0088);
  sub_1AFCC5420(1, 1, v16);
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  v7 = v16[0];
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v7);

  sub_1AF6B1B20(a1, v6, v7);
  os_unfair_lock_unlock(*(v3 + 40));
  sub_1AFAD2E00(v16, sub_1AFAD01C8);
  v8 = v1[3];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v3 + 40));
  v10 = v1[8];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v3 + 40));
  v12 = v1[13];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v3 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

void sub_1AFAC0774(uint64_t a1, uint64_t a2, int a3)
{
  v219 = a3;
  v218 = a2;
  sub_1AF0D4E74(0);
  v239 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v238 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AFDFC298();
  v7 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  v229 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v9 = *(v3 + 120);
  v280[0] = *(v3 + 104);
  v280[1] = v9;
  v281 = *(v3 + 136);
  sub_1AF6B06C0(a1, v280, 0x200000000, v269);
  v232 = a1;
  v243 = *&v269[0];
  if (*&v269[0])
  {
    v242 = *(&v269[2] + 1);
    v11 = *(&v270 + 1);
    v12 = *(&v271 + 1);
    v273 = *(v269 + 8);
    v274 = *(&v269[1] + 8);
    if (v272 > 0 && *(&v270 + 1))
    {
      v235 = v7;
      v245 = *(*(&v271 + 1) + 32);
      v13 = *(v271 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v250 = v269[2];
      v251 = v270;
      v252 = v271;
      v253 = v272;
      v248 = v269[0];
      v249 = v269[1];
      sub_1AF5DD298(&v248, v246);
      v14 = 0;
      v216 = 0;
      v221 = MEMORY[0x1E69E7CC0];
      LODWORD(v240) = v13;
      v241 = v11;
      do
      {
        v244 = v14;
        v15 = (v242 + 48 * v14);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        v21 = *(v15 + 4);
        v20 = *(v15 + 5);
        if (v13)
        {
          v22 = *(v20 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v20 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v245);
        v23 = *(v12 + 64);
        v278[0] = *(v12 + 48);
        v278[1] = v23;
        v279 = *(v12 + 80);
        v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
        *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v24, 8);
        *(v12 + 56) = v24;
        *(v12 + 72) = 0;
        *(v12 + 80) = 0;
        *(v12 + 64) = 0;
        v25 = sub_1AF64B110(&type metadata for Bindings, &off_1F25117D8, v19, v18, v21, v12);
        if (v19)
        {
          if (v21)
          {
            v26 = v25 + 8;
            do
            {
              v30 = *v19++;
              v29 = v30;
              if (*v26 == 1)
              {
                *v26 = 0;

                if (*(v20 + 184))
                {
                  goto LABEL_252;
                }

                v32 = *(*(v20 + 168) + 4 * v29);
                v33 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v221 = sub_1AF4217DC(0, *(v221 + 2) + 1, 1, v221);
                }

                v35 = *(v221 + 2);
                v34 = *(v221 + 3);
                if (v35 >= v34 >> 1)
                {
                  v221 = sub_1AF4217DC(v34 > 1, v35 + 1, 1, v221);
                }

                v27 = v221;
                *(v221 + 2) = v35 + 1;
                v28 = &v27[8 * v35];
                *(v28 + 8) = v32;
                *(v28 + 9) = v33;
              }

              v26 += 24;
              --v21;
            }

            while (v21);
          }
        }

        else if (v16 != v17)
        {
          v37 = &v25[24 * v16 + 8];
          do
          {
            if (*v37 == 1)
            {
              *v37 = 0;

              if (*(v20 + 184))
              {
LABEL_252:
                sub_1AFDFE518();
                __break(1u);
                return;
              }

              v41 = *(*(v20 + 168) + 4 * v16);
              v42 = *(*(v40 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v41 + 8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v221 = sub_1AF4217DC(0, *(v221 + 2) + 1, 1, v221);
              }

              v44 = *(v221 + 2);
              v43 = *(v221 + 3);
              if (v44 >= v43 >> 1)
              {
                v221 = sub_1AF4217DC(v43 > 1, v44 + 1, 1, v221);
              }

              v38 = v221;
              *(v221 + 2) = v44 + 1;
              v39 = &v38[8 * v44];
              *(v39 + 8) = v41;
              *(v39 + 9) = v42;
            }

            ++v16;
            v37 += 24;
          }

          while (v17 != v16);
        }

        v275 = v243;
        v276 = v273;
        v277 = v274;
        v36 = v216;
        sub_1AF630994(v12, &v275, v278);
        v216 = v36;
        sub_1AF62D29C(v20);
        ecs_stack_allocator_pop_snapshot(v245);
        v13 = v240;
        if (v240)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        v14 = v244 + 1;
      }

      while (v244 + 1 != v241);
      sub_1AF0D9DB0(v269, &qword_1ED725EA0, &type metadata for QueryResult);
      v10 = sub_1AF0D9DB0(v269, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v232;
      v7 = v235;
      goto LABEL_37;
    }

    v10 = sub_1AF0D9DB0(v269, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v216 = 0;
  v221 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v45 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_mainGraphScriptGroup);
  v215 = *(*(v45 + 16) + 16);
  if (v215)
  {
    v46 = 0;
    v47 = (v232 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v222 = OBJC_IVAR____TtC3VFX13EntityManager_isVFX2;
    v224 = "Source value type ";
    v225 = "tAnyValue failed for ";
    v235 = v7 + 4;
    v227 = "v16@?0@NSString8";
    v234 = xmmword_1AFE431C0;
    v228 = v45;
    v240 = (v232 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v223 = *(*(*(v45 + 16) + 32 * v46 + 32) + 16);
      if (v223)
      {
        break;
      }

LABEL_39:
      if (++v46 == v215)
      {
        goto LABEL_250;
      }
    }

    v48 = 0;
    v241 = v46;
    while (1)
    {
      v49 = *(*(v45 + 16) + 32 * v46 + 32);
      v242 = 40 * v48;
      v50 = v49 + 40 * v48;
      v53 = *(v50 + 32);
      v51 = (v50 + 32);
      v52 = v53;
      v54 = v51[1];
      if (v53 != -1 || v54 != 0)
      {
        break;
      }

      if ((*(v232 + v222) & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_43:
      if (++v48 == v223)
      {
        goto LABEL_39;
      }
    }

    if ((v52 & 0x80000000) == 0 && v47[1] > v52)
    {
      v56 = *v47 + 12 * v52;
      if (v54 == -1 || *(v56 + 8) == v54)
      {
        v58 = *(*(*(v232 + 88) + 8 * *(v56 + 6) + 32) + 16);
        v59 = *(v58 + 128);
        if (*(v59 + 16))
        {
          v60 = v48;
          v10 = sub_1AF449CB8(&type metadata for Tombstone);
          v48 = v60;
          v47 = v240;
          if ((v61 & 1) != 0 && *(*(v58 + 24) + 16 * *(*(v59 + 56) + 8 * v10) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_43;
          }
        }
      }
    }

    if ((*(v232 + v222) & 1) == 0)
    {
      goto LABEL_111;
    }

    if ((v52 & 0x80000000) == 0 && v47[1] > v52)
    {
      v62 = *v47 + 12 * v52;
      if (v54 == -1 || *(v62 + 8) == v54)
      {
        v64 = *(*(*(v232 + 88) + 8 * *(v62 + 6) + 32) + 16);
        v65 = *(v64 + 128);
        if (*(v65 + 16))
        {
          v66 = v48;
          v10 = sub_1AF449CB8(&type metadata for GraphV1ExecutionOverride);
          v48 = v66;
          v47 = v240;
          if ((v67 & 1) != 0 && *(*(v64 + 24) + 16 * *(*(v65 + 56) + 8 * v10) + 32) == &type metadata for GraphV1ExecutionOverride)
          {
            goto LABEL_111;
          }
        }
      }
    }

    if ((v52 & 0x80000000) != 0 || (v68 = v47[1], v68 <= v52) || ((v69 = *v47, v70 = *v47 + 12 * v52, v54 != -1) ? (v71 = *(v70 + 8) == v54) : (v71 = 1), !v71 || (v72 = *(v70 + 6), v245 = *(v232 + 88), v73 = *(*(v245 + 8 * v72 + 32) + 16), v74 = *(v73 + 128), !*(v74 + 16)) || (v75 = v48, v10 = sub_1AF449CB8(&type metadata for CodeGenerationInitialized), v48 = v75, v47 = v240, (v76 & 1) == 0) || *(*(v73 + 24) + 16 * *(*(v74 + 56) + 8 * v10) + 32) != &type metadata for CodeGenerationInitialized))
    {
      if ((v52 & 0x80000000) != 0 || (v68 = v47[1], v68 <= v52) || ((v69 = *v47, v77 = *v47 + 12 * v52, v54 != -1) ? (v78 = *(v77 + 8) == v54) : (v78 = 1), !v78 || (v79 = *(v77 + 6), v245 = *(v232 + 88), v80 = *(*(v245 + 8 * v79 + 32) + 16), v81 = *(v80 + 128), !*(v81 + 16)) || (v82 = v48, v10 = sub_1AF449CB8(&type metadata for CodeGenerationComponent), v48 = v82, v47 = v240, (v83 & 1) == 0) || *(*(v80 + 24) + 16 * *(*(v81 + 56) + 8 * v10) + 32) != &type metadata for CodeGenerationComponent))
      {
        if ((v52 & 0x80000000) != 0 || (v68 = v47[1], v68 <= v52) || ((v69 = *v47, v84 = *v47 + 12 * v52, v54 != -1) ? (v85 = *(v84 + 8) == v54) : (v85 = 1), !v85 || (v86 = *(v84 + 6), v245 = *(v232 + 88), v87 = *(*(v245 + 8 * v86 + 32) + 16), v88 = *(v87 + 128), !*(v88 + 16)) || (v89 = v48, v10 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), v48 = v89, v47 = v240, (v90 & 1) == 0) || *(*(v87 + 24) + 16 * *(*(v88 + 56) + 8 * v10) + 32) != &type metadata for GraphScriptingConfig))
        {
          if ((v52 & 0x80000000) != 0 || (v68 = v47[1], v68 <= v52) || ((v69 = *v47, v91 = *v47 + 12 * v52, v54 != -1) ? (v92 = *(v91 + 8) == v54) : (v92 = 1), !v92 || (v93 = *(v232 + 88), v94 = *(*(v93 + 8 * *(v91 + 6) + 32) + 16), v95 = *(v94 + 128), !*(v95 + 16))))
          {
LABEL_42:
            v46 = v241;
            goto LABEL_43;
          }

          v220 = v48;
          v10 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
          if ((v96 & 1) == 0)
          {
            v46 = v241;
LABEL_217:
            v47 = v240;
            v48 = v220;
            goto LABEL_43;
          }

          v48 = v220;
          if (*(*(v94 + 24) + 16 * *(*(v95 + 56) + 8 * v10) + 32) != &type metadata for GraphEntityComponentPropertyReferences)
          {
            v47 = v240;
            v46 = v241;
            goto LABEL_43;
          }

          v245 = v93;
          v47 = v240;
        }
      }
    }

    if (v68 <= v52)
    {
      v46 = v241;
      goto LABEL_111;
    }

    v199 = (v69 + 12 * v52);
    v200 = v54 == -1 || v199[2] == v54;
    if (!v200 || (v201 = *(*(v245 + 8 * *(v199 + 3) + 32) + 16), v202 = *(v201 + 128), !*(v202 + 16)) || (v203 = v48, v10 = sub_1AF449CB8(&type metadata for GraphComponent), v48 = v203, v47 = v240, (v204 & 1) == 0) || *(*(v201 + 24) + 16 * *(*(v202 + 56) + 8 * v10) + 32) != &type metadata for GraphComponent)
    {
      v205 = v54 == -1 || v199[2] == v54;
      v46 = v241;
      if (v205)
      {
        v206 = *(*(v232 + 144) + 8 * *v199 + 32);
        v207 = *(v206 + 48);
        v208 = (v207 + 32);
        v209 = *(v207 + 16) + 1;
        do
        {
          if (!--v209)
          {
            goto LABEL_111;
          }

          v210 = v208 + 5;
          v211 = *v208;
          v208 += 5;
        }

        while (v211 != &type metadata for ScriptsHolder);
        if (*(*(&(*(v210 - 2))->Kind + 24 * *(v199 + 2) + *(v206 + 128)) + 16))
        {
          goto LABEL_43;
        }
      }

LABEL_111:
      v98 = v51[2];
      v97 = v51[3];
      if (v98 == -1 && v97 == 0)
      {
        v10 = *(v51 + 2);
        if (!v10)
        {
          goto LABEL_43;
        }

        v231 = *(v10 + 16);
        if (!v231)
        {
          goto LABEL_43;
        }

        v220 = v48;
        v230 = v10 + 32;
        v217 = v10;

        v116 = 0;
        while (2)
        {
          v117 = v230 + 56 * v116;
          v119 = *(v117 + 16);
          v118 = *(v117 + 32);
          v120 = *(v117 + 48);
          v265 = *v117;
          v266 = v119;
          v268 = v120;
          v267 = v118;
          v121 = *(&v265 + 1);
          v122 = v265;
          v123 = DWORD1(v265);
          v124 = *(v229 + 8);
          v125 = *(v45 + 16);
          v243 = v116;
          if ((v124 != 1 || *(v229 + 16)) && (v126 = *&v125[32 * v46 + 32] + v242, (*(v126 + 66) & 1) == 0) && (*(v126 + 65) == 1 ? (v127 = *(&v265 + 1) == &type metadata for Bindings) : (v127 = 0), v127))
          {
            if (sub_1AF776018(v265 | (DWORD1(v265) << 32), v221))
            {
              v125 = *(v45 + 16);
              goto LABEL_145;
            }
          }

          else
          {
LABEL_145:
            sub_1AF7D4D04(&v265, &v248);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v45 + 16) = v125;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v125 = sub_1AFC0DAE4(v125);
              *(v45 + 16) = v125;
            }

            v129 = &v125[32 * v46];
            v132 = *(v129 + 4);
            v131 = (v129 + 32);
            v130 = v132;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            *v131 = v132;
            if ((v133 & 1) == 0)
            {
              v130 = sub_1AFC0DAD0(v130);
              *v131 = v130;
            }

            v134 = v268;
            v130[v242 + 66] = 0;
            *v131 = v130;
            if (v122 == -1 && !v123 || v122 < 0 || v240[1] <= v122 || (v144 = (*v240 + 12 * v122), v123 != -1) && v144[2] != v123 || (v245 = *(v144 + 2), v145 = *v144, v146 = v232, v147 = *(*(v232 + 144) + 8 * v145 + 32), v148 = *(v147 + 64), v149 = *(v147 + 80), v247 = *(v147 + 112), v151 = *(v147 + 80), v150 = *(v147 + 96), v246[2] = v149, v246[3] = v150, v152 = *(v147 + 64), v246[0] = *(v147 + 48), v246[1] = v148, v153 = *(v147 + 96), v260 = v151, v261 = v153, v262 = *(v147 + 112), v258 = *(v147 + 48), v259 = v152, v154 = sub_1AF64FB24(v121), v156 = v155, v158 = v157, v250 = v260, v251 = v261, LOBYTE(v252) = v262, v248 = v258, v249 = v259, sub_1AF5DD36C(v246, &v256), sub_1AF5DD3C8(&v248), (v158 & 1) != 0))
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v248 = 0;
              *(&v248 + 1) = 0xE000000000000000;
              sub_1AFDFE218();
              v246[0] = v248;
              MEMORY[0x1B2718AE0](0xD000000000000025, v227 | 0x8000000000000000);
              v248 = v265;
              v249 = v266;
              v250 = v267;
              *&v251 = v268;
              sub_1AFDFE458();
              v135 = v246[0];
              v136 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v137 = qword_1ED73B890;
              sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740]);
              v138 = swift_allocObject();
              *(v138 + 16) = v234;
              *(v138 + 56) = MEMORY[0x1E69E6158];
              *(v138 + 64) = sub_1AF0D544C();
              *(v138 + 32) = v135;

              sub_1AFDFC4C8(v136, &dword_1AF0CE000, v137, "%{public}s", 10, 2, v138);

              v139 = v236;
              sub_1AFDFC288();
              v140 = v238;
              v141 = v239[12];
              v142 = v239[16];
              v143 = &v238[v239[20]];
              (*v235)(v238, v139, v237);
              *(v140 + v141) = v136;
              *(v140 + v142) = 0;
              *v143 = v135;
              sub_1AFDFC608();

              sub_1AF7D4D3C(&v265);
              sub_1AFAD2E00(v140, sub_1AF0D4E74);
              v45 = v228;
              v46 = v241;
            }

            else
            {
              sub_1AF6794BC(*(*(*(v146 + 144) + 8 * v145 + 32) + 128) + v154 + v156 * v245, v134, v121);
              sub_1AF449D40(&v263, v264);
              sub_1AF0D5A54(v264, &v258);
              sub_1AF441150(&v258, *(&v259 + 1));
              DynamicType = swift_getDynamicType();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v258);
              v45 = v228;
              v160 = *(*(*(v228 + 16) + 32 * v46 + 32) + v242 + 56);
              v161 = *(v160 + 16);
              if (v161)
              {

                v245 = v161 - 1;
                v162 = 32;
                v163 = v232;
                v226 = v160;
                for (i = DynamicType; ; DynamicType = i)
                {
                  v244 = v162;
                  v164 = (v160 + v162);
                  v165 = *v164;
                  v166 = v164[1];
                  v167 = v164[2];
                  v168 = *(v164 + 6);
                  *&v261 = v168;
                  v259 = v166;
                  v260 = v167;
                  v258 = v165;
                  sub_1AF7D4D04(&v258, &v256);
                  sub_1AFDFDFD8();
                  if (DynamicType == v169 || (v169 == MEMORY[0x1E69E7360] ? (v170 = DynamicType == MEMORY[0x1E69E6530]) : (v170 = 0), !v170 ? (v171 = v169 == MEMORY[0x1E69E7CA0] + 8) : (v171 = 1), v171))
                  {
                    if (DynamicType == MEMORY[0x1E69E6530] && v169 == MEMORY[0x1E69E7360])
                    {
                      sub_1AF0D5A54(v264, &v255);
                      swift_dynamicCast();
                      v257 = MEMORY[0x1E69E7360];
                      *&v256 = v254;
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v264);
                      sub_1AF449D40(&v256, v264);
                    }

                    if (v173 = *(&v258 + 1), v174 = v259, v175 = v258 | (DWORD1(v258) << 32), *(&v258 + 1) == &type metadata for Scale3) && v258 != 0xFFFFFFFFLL && (v258 & 0x80000000) == 0 && v240[1] > v258 && ((v189 = *v240 + 12 * v258, DWORD1(v258) == -1) || *(v189 + 8) == DWORD1(v258)) && (v190 = *(*(*(v163 + 88) + 8 * *(v189 + 6) + 32) + 16), v191 = *(v190 + 128), *(v191 + 16)) && (v192 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch), (v193) && *(*(v190 + 24) + 16 * *(*(v191 + 56) + 8 * v192) + 32) == &type metadata for HalfSizeLegacyPatch)
                    {
                      KeyPath = swift_getKeyPath();
                      v195 = sub_1AF6824B0(&type metadata for Scale3, v174, v175);
                      if (v195 && (v196 = sub_1AF67A4CC(v264, v195, KeyPath, &type metadata for Scale3), (v196 & 1) == 0))
                      {
                        MEMORY[0x1EEE9AC00](v196);
                        *(&v214 - 4) = &type metadata for Scale3;
                        *(&v214 - 3) = v174;
                        v212 = v264;
                        v213 = KeyPath;
                        sub_1AF682600(&type metadata for Scale3, v174, v175, sub_1AFAD3ABC);

                        v160 = v226;
                      }

                      else
                      {

                        v160 = v226;
                      }
                    }

                    else
                    {
                      sub_1AF0D5A54(v264, &v256);
                      v176 = sub_1AF6824B0(v173, v174, v175);
                      if (v176)
                      {
                        v177 = sub_1AF67A4CC(&v256, v176, v168, v173);
                        if ((v177 & 1) == 0)
                        {
                          MEMORY[0x1EEE9AC00](v177);
                          *(&v214 - 4) = v173;
                          *(&v214 - 3) = v174;
                          v212 = &v256;
                          v213 = v168;
                          sub_1AF682600(v173, v174, v175, sub_1AF702438);
                        }
                      }

                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v256);
                    }

                    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
                    {
                      sub_1AF5AF3AC(v175);
                    }
                  }

                  else
                  {
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    *&v256 = 0;
                    *(&v256 + 1) = 0xE000000000000000;
                    sub_1AFDFE218();
                    v255 = v256;
                    MEMORY[0x1B2718AE0](0xD000000000000012, v225 | 0x8000000000000000);
                    sub_1AF0D5A54(v264, &v256);
                    sub_1AF441150(&v256, v257);
                    swift_getDynamicType();
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v256);
                    v178 = sub_1AFDFF4B8();
                    MEMORY[0x1B2718AE0](v178);

                    MEMORY[0x1B2718AE0](0xD000000000000020, v224 | 0x8000000000000000);
                    sub_1AFDFDFD8();
                    v179 = sub_1AFDFF4B8();
                    MEMORY[0x1B2718AE0](v179);

                    v180 = v255;
                    v181 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    v182 = qword_1ED73B890;
                    sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740]);
                    v183 = swift_allocObject();
                    *(v183 + 16) = v234;
                    *(v183 + 56) = MEMORY[0x1E69E6158];
                    *(v183 + 64) = sub_1AF0D544C();
                    *(v183 + 32) = v180;

                    sub_1AFDFC4C8(v181, &dword_1AF0CE000, v182, "%{public}s", 10, 2, v183);

                    v184 = v236;
                    sub_1AFDFC288();
                    v185 = v238;
                    v186 = v239[12];
                    v187 = v239[16];
                    v188 = &v238[v239[20]];
                    (*v235)(v238, v184, v237);
                    *(v185 + v186) = v181;
                    *(v185 + v187) = 0;
                    *v188 = v180;

                    sub_1AFDFC608();

                    sub_1AFAD2E00(v185, sub_1AF0D4E74);

                    v163 = v232;
                    v46 = v241;
                    v160 = v226;
                  }

                  sub_1AF7D4D3C(&v258);
                  if (!v245)
                  {
                    break;
                  }

                  --v245;
                  v162 = v244 + 56;
                }

                sub_1AF7D4D3C(&v265);

                v45 = v228;
              }

              else
              {

                sub_1AF7D4D3C(&v265);
              }

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v264);
            }
          }

          v116 = (v243 + 1);
          if ((v243 + 1) == v231)
          {

            goto LABEL_217;
          }

          continue;
        }
      }

      v101 = *v51;
      v100 = v51[1];
      if ((v101 != -1 || v100 != 0) && (v101 & 0x80000000) == 0 && v47[1] > v101)
      {
        v103 = *v47 + 12 * v101;
        if (v100 == -1 || *(v103 + 8) == v100)
        {
          v104 = *(*(*(v232 + 88) + 8 * *(v103 + 6) + 32) + 16);
          v105 = *(v104 + 128);
          if (*(v105 + 16))
          {
            v106 = v48;
            v10 = sub_1AF449CB8(&type metadata for Tombstone);
            v48 = v106;
            v47 = v240;
            if ((v107 & 1) != 0 && *(*(v104 + 24) + 16 * *(*(v105 + 56) + 8 * v10) + 32) == &type metadata for Tombstone)
            {
              v46 = v241;
              goto LABEL_43;
            }
          }
        }
      }

      MEMORY[0x1EEE9AC00](v10);
      v108 = v232;
      *(&v214 - 10) = v232;
      *(&v214 - 18) = v98;
      *(&v214 - 17) = v97;
      v109 = v218;
      *(&v214 - 8) = v108;
      *(&v214 - 7) = v109;
      *(&v214 - 48) = v219;
      *(&v214 - 11) = v101;
      *(&v214 - 10) = v100;
      v46 = v241;
      *(&v214 - 4) = v45;
      *(&v214 - 3) = v46;
      v111 = v110;
      v212 = v110;
      v112 = type metadata accessor for GraphScript(0);
      v113 = *(v112 - 8);
      v10 = v112 - 8;
      v114 = v113;
      if (*(v113 + 64))
      {
        if (v98 != -1)
        {
          v115 = *(v114 + 72);
          goto LABEL_220;
        }

LABEL_225:
        v47 = v240;
      }

      else
      {
        if (v98 == -1)
        {
          goto LABEL_225;
        }

        v115 = 0;
LABEL_220:
        v47 = v240;
        if ((v98 & 0x80000000) == 0 && v240[1] > v98)
        {
          v197 = (*v240 + 12 * v98);
          if (v97 == -1 || v197[2] == v97)
          {
            v198 = v216;
            v10 = sub_1AFA02210(*(*(v232 + 144) + 8 * *v197 + 32), *(v197 + 2), v115, sub_1AFAD0284);
            v47 = v240;
            v216 = v198;
          }
        }
      }

      v48 = v111;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_250:
}

void sub_1AFAC2170(int *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*(a2 + 24) != 2)
  {
    sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    if (*(result + v18[10]) || *(result + v18[11]))
    {
      if (*(a3 + 56) == 1 && (*(result + v18[13]) != 1 || !*(a2 + 40)))
      {
        sub_1AF68B2A4(a4, a3);
      }

      v19 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
      sub_1AFAC6AEC(result, a5, a6, a4, a8, v19);

      if (*(*(*(a9 + 16) + 32 * a10 + 32) + 40 * a11 + 64) == 1)
      {
        sub_1AFABF7C8(*result);
      }
    }
  }
}

double sub_1AFAC22E0()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFAC234C()
{
  *(v0 + 16) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED73B840;
  v20 = 0;
  v21 = 2;
  v22 = 0;
  v23 = 2;
  v24 = 0;
  sub_1AF70335C(1, v9);
  v1 = v9[1];
  *(v0 + 24) = v9[0];
  *(v0 + 40) = v1;
  *(v0 + 56) = v10;
  sub_1AF702F78(1, v11);
  v2 = v11[1];
  *(v0 + 64) = v11[0];
  *(v0 + 80) = v2;
  *(v0 + 96) = v12;
  sub_1AF70337C(3, &v13);
  v3 = v14;
  v4 = v15;
  v5 = v17;
  v6 = v18;
  v7 = v16 | 1;
  *(v0 + 104) = v13;
  *(v0 + 112) = v3;
  *(v0 + 116) = v4;
  *(v0 + 120) = v7;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  return v0;
}

void sub_1AFAC2454(uint64_t a1, uint64_t a2, int a3)
{
  if (*(v3 + 16) == 1)
  {
    v6 = a3;
    sub_1AF7D1318(a1);
    a3 = v6;
    *(v3 + 16) = 0;
  }

  sub_1AFAC0774(a1, a2, a3);
  sub_1AFAC73C0(a1, a2);

  sub_1AFAC7C94(a1, a2);
}

uint64_t sub_1AFAC24D0()
{
  v0 = swift_allocObject();
  sub_1AFAC234C();
  return v0;
}

uint64_t sub_1AFAC252C(uint64_t a1)
{
  v3 = *v1;
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited);
  v99 = &v85[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v85[-v6];
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated);
  v96 = &v85[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v85[-v9];
  v10 = *(v3 + 184);
  v95 = v1;
  v11 = *(v3 + 192);
  v13 = type metadata accessor for ScriptRuntime(0, v10, v11, v12);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85[-v15];
  v104 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85[-v20];
  v22 = *(a1 + 8);
  v23 = *(a1 + 88);
  v110 = *(a1 + 72);
  v111 = v23;
  v24 = *(a1 + 120);
  v112 = *(a1 + 104);
  v113 = v24;
  v25 = *(a1 + 24);
  v106 = v22;
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  v107 = v25;
  v108 = v26;
  v109 = v27;
  v28 = v106;

  v29 = sub_1AF6824B0(v13, &off_1F2558F90, *(&v28 + 1));
  if (v29)
  {
    v30 = v29;
    v94 = a1;
    v93 = *(v28 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v31 = *(v28 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    (*(v14 + 16))(v16, v29, v13);
    sub_1AFA59C4C(v13, v21);
    v32 = *(v14 + 8);
    v92 = v31;
    v103 = v31;
    v32(v16, v13);
    if ((*(v11 + 40))(v10, v11) == 2 && sub_1AFA59C80(v13))
    {
      v90 = v30;
      v91 = v28;
      v33 = v104;
      v34 = *(v104 + 16);
      v35 = v102;
      v89 = v21;
      v34(v102, v21, v10);
      v36 = v100;
      if (swift_dynamicCast())
      {
        v37 = v96;
        sub_1AFAD06F0(v36, v96, type metadata accessor for ParticleUpdateScript);
        v38 = v37[40];
        v39 = (v38 & 1) == 0 && *(*(v37 + 4) + 16) == 0;
        v42 = type metadata accessor for ParticleUpdateScript;
        goto LABEL_19;
      }

      v41 = v97;
      if (swift_dynamicCast())
      {
        v37 = v99;
        sub_1AFAD06F0(v41, v99, type metadata accessor for ParticleInitScript);
        v38 = v37[40];
        v39 = (v38 & 1) == 0 && *(*(v37 + 4) + 16) == 0;
        v42 = type metadata accessor for ParticleInitScript;
LABEL_19:
        sub_1AFAD2E00(v37, v42);
        v45 = *(v33 + 8);
        v44 = v33 + 8;
        v43 = v45;
        v45(v35, v10);
        if ((v38 & 1) != 0 || v39 || sub_1AFABF13C(v108))
        {
          v46 = v90;
          v87 = (v90 + v13[15]);
          v47 = *v87;
          v48 = *(v90 + v13[11]);
          if (*(v48 + 16))
          {
            v49 = *(v48 + 40);
            v99 = *(v48 + 32);
            v86 = *(v48 + 48);
          }

          else
          {
            v99 = 0;
            v49 = 0;
            v86 = 0;
          }

          if (*(v46 + v13[9]))
          {
            v50 = swift_unknownObjectRetain();
          }

          else
          {
            v50 = 0;
          }

          v102 = v50;
          updated = v43;
          v51 = v13[12];
          v52 = *(v46 + v51);
          v88 = v13;
          v100 = v47;
          if (v52)
          {
            v97 = v49;

            v53 = v52;
            goto LABEL_32;
          }

          v54 = v49;
          v55 = sub_1AFB94E60();
          sub_1AFDFF308();
          v56 = v102;
          swift_unknownObjectRetain();

          v57 = v99;
          sub_1AF88352C(v105, v99, v49, v56, v55);

          v58 = sub_1AFDFF2E8();
          *&v114 = v57;
          *(&v114 + 1) = v49;
          v115 = 0;
          v116 = v56;
          v117 = v55;
          v118 = v58;
          sub_1AF73BD84(&v114, 1, v93, v92);
          v60 = v59;

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if (v60)
          {
            v97 = v54;
            v61 = *(v90 + v51);
            *(v90 + v51) = v60;
            v53 = v60;

            v52 = 0;
LABEL_32:
            v104 = v44;
            inited = v10;
            v62 = v52;
            v63 = [v53 bindings];

            sub_1AF7198B0();
            v64 = sub_1AFDFD418();

            v96 = v53;
            if (v64 >> 62)
            {
              v65 = sub_1AFDFE108();
              if (v65)
              {
LABEL_34:
                v66 = 0;
                while (1)
                {
                  if ((v64 & 0xC000000000000001) != 0)
                  {
                    v67 = MEMORY[0x1B2719C70](v66, v64);
                  }

                  else
                  {
                    v67 = *(v64 + 8 * v66 + 32);
                    swift_unknownObjectRetain();
                  }

                  v68 = [v67 name];
                  v69 = sub_1AFDFCEF8();
                  v71 = v70;

                  if (v69 == 0x61765F7475706E69 && v71 == 0xEC0000007365756CLL)
                  {
                    break;
                  }

                  v73 = sub_1AFDFEE28();

                  if (v73)
                  {
                    goto LABEL_47;
                  }

                  swift_unknownObjectRelease();
                  if (v65 == ++v66)
                  {
                    goto LABEL_51;
                  }
                }

LABEL_47:

                v75 = thread_worker_index(v74);
                MEMORY[0x1EEE9AC00](v75);
                *&v85[-48] = v95;
                *&v85[-40] = v99;
                v84 = v76;
                v83 = &v85[-64];
                sub_1AFADBD8C(v100, v87 + 1, v67, v77, v78, v79, v80, v81, v82, sub_1AFAD03A4);

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return updated(v89, inited);
              }
            }

            else
            {
              v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v65)
              {
                goto LABEL_34;
              }
            }

LABEL_51:

            swift_unknownObjectRelease();
            return updated(v89, inited);
          }

          updated(v89, v10);

          swift_unknownObjectRelease();
        }

        else
        {
          v43(v89, v10);
        }
      }

      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {

      return (*(v104 + 8))(v21, v10);
    }
  }

  else
  {
  }

  return result;
}