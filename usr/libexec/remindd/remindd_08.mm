uint64_t assignWithCopy for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v6 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v7 = type metadata accessor for UnknownStorage();
      v9 = *(*(v7 - 8) + 16);

      v9(a1 + v6, a2 + v6, v7);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *initializeWithTake for StartMigrationRequest.OneOf_Source(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_OWORD *assignWithTake for StartMigrationRequest.OneOf_Source(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_10011AA0C(uint64_t a1)
{
  result = type metadata accessor for StartMigrationRequest.Credential(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for StartMigrationRequest.Credential(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v6;
    v7 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v7;
    v8 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v8;
    *(a1 + 64) = *(a2 + 16);
    v9 = *(a3 + 36);
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 16);

    v12(&v3[v9], a2 + v9, v11);
  }

  return v3;
}

uint64_t destroy for StartMigrationRequest.Credential(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  a1[3], v10, v11, v12, v13, v14, v15, v16;
  a1[5], v17, v18, v19, v20, v21, v22, v23;
  a1[7], v24, v25, v26, v27, v28, v29, v30;
  v31 = *(a2 + 36);
  v32 = type metadata accessor for UnknownStorage();
  v33 = *(*(v32 - 8) + 8);

  return v33(a1 + v31, v32);
}

uint64_t initializeWithCopy for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a3 + 36);
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(*(v10 - 8) + 16);

  v11(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t assignWithCopy for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 16) = *(a2 + 16);
  v14 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v14, v15, v16, v17, v18, v19, v20, v21;
  *(a1 + 32) = *(a2 + 32);
  v22 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v22, v23, v24, v25, v26, v27, v28, v29;
  *(a1 + 48) = *(a2 + 48);
  v30 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v30, v31, v32, v33, v34, v35, v36, v37;
  *(a1 + 64) = *(a2 + 64);
  v38 = *(a3 + 36);
  v39 = type metadata accessor for UnknownStorage();
  (*(*(v39 - 8) + 24))(a1 + v38, a2 + v38, v39);
  return a1;
}

uint64_t initializeWithTake for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithTake for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 8);
  v12 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  v13 = *(a2 + 24);
  v14 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v13;
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = *(a2 + 40);
  v23 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v22;
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = *(a2 + 56);
  v32 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v31;
  v32, v33, v34, v35, v36, v37, v38, v39;
  *(a1 + 64) = *(a2 + 64);
  v40 = a3[9];
  v41 = type metadata accessor for UnknownStorage();
  (*(*(v41 - 8) + 40))(a1 + v40, a2 + v40, v41);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
    v12 = *(started - 8);
    v13 = *(v12 + 48);

    if (v13(v10, 1, started))
    {
      v14 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v9 = *v10;
      if (EnumCaseMultiPayload == 1)
      {
        *(v9 + 1) = *(v10 + 1);
        *(v9 + 4) = *(v10 + 4);
        v17 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
        v18 = type metadata accessor for UnknownStorage();
        v29 = *(*(v18 - 8) + 16);

        v29(&v9[v17], &v10[v17], v18);
      }

      else
      {
        v9[8] = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v19 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      }

      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, started);
    }

    v21 = a3[6];
    v22 = a3[7];
    v23 = &v4[v21];
    v24 = &a2[v21];
    v25 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v25;
    v26 = type metadata accessor for UnknownStorage();
    v27 = *(*(v26 - 8) + 16);

    v27(&v4[v22], &a2[v22], v26);
  }

  return v4;
}

uint64_t destroy for StartMigrationResponse(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v10 = a1 + *(a2 + 5);
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if (!(*(*(started - 8) + 48))(v10, 1, started))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *(v10 + 8), v19, v20, v21, v22, v23, v24, v25;
      v26 = type metadata accessor for StartMigrationResponse.Error(0);
      v27 = 24;
    }

    else
    {
      v26 = type metadata accessor for StartMigrationResponse.Details(0);
      v27 = 32;
    }

    v28 = *(v26 + v27);
    v29 = type metadata accessor for UnknownStorage();
    (*(*(v29 - 8) + 8))(v10 + v28, v29);
  }

  *(a1 + *(a2 + 6) + 8), v12, v13, v14, v15, v16, v17, v18;
  v30 = *(a2 + 7);
  v31 = type metadata accessor for UnknownStorage();
  v32 = *(*(v31 - 8) + 8);

  return v32(a1 + v30, v31);
}

char *initializeWithCopy for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v11 = *(started - 8);
  v12 = *(v11 + 48);

  if (v12(v9, 1, started))
  {
    v13 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      *(v8 + 1) = *(v9 + 1);
      *(v8 + 4) = *(v9 + 4);
      v15 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
      v16 = type metadata accessor for UnknownStorage();
      v27 = *(*(v16 - 8) + 16);

      v27(&v8[v15], &v9[v15], v16);
    }

    else
    {
      v8[8] = v9[8];
      *(v8 + 12) = *(v9 + 12);
      v17 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
      v18 = type metadata accessor for UnknownStorage();
      (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, started);
  }

  v19 = a3[6];
  v20 = a3[7];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = type metadata accessor for UnknownStorage();
  v25 = *(*(v24 - 8) + 16);

  v25(&a1[v20], &a2[v20], v24);
  return a1;
}

char *assignWithCopy for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v18 = *(started - 8);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, started);
  v21 = v19(v16, 1, started);
  if (v20)
  {
    if (!v21)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v15 = *v16;
      if (EnumCaseMultiPayload == 1)
      {
        *(v15 + 1) = *(v16 + 1);
        *(v15 + 4) = *(v16 + 4);
        v23 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
        v24 = type metadata accessor for UnknownStorage();
        v47 = *(*(v24 - 8) + 16);

        v47(&v15[v23], &v16[v23], v24);
      }

      else
      {
        v15[8] = v16[8];
        *(v15 + 3) = *(v16 + 3);
        *(v15 + 4) = *(v16 + 4);
        v29 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
        v30 = type metadata accessor for UnknownStorage();
        (*(*(v30 - 8) + 16))(&v15[v29], &v16[v29], v30);
      }

      swift_storeEnumTagMultiPayload();
      (*(v18 + 56))(v15, 0, 1, started);
      goto LABEL_14;
    }

LABEL_7:
    v25 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v15, v16, *(*(v25 - 8) + 64));
    goto LABEL_14;
  }

  if (v21)
  {
    sub_100101968(v15, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v15, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v26 = swift_getEnumCaseMultiPayload();
    *v15 = *v16;
    if (v26 == 1)
    {
      *(v15 + 1) = *(v16 + 1);
      *(v15 + 4) = *(v16 + 4);
      v27 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
      v28 = type metadata accessor for UnknownStorage();
      v48 = *(*(v28 - 8) + 16);

      v48(&v15[v27], &v16[v27], v28);
    }

    else
    {
      v15[8] = v16[8];
      *(v15 + 3) = *(v16 + 3);
      *(v15 + 4) = *(v16 + 4);
      v45 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
      v46 = type metadata accessor for UnknownStorage();
      (*(*(v46 - 8) + 16))(&v15[v45], &v16[v45], v46);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v31 = a3[6];
  v32 = &a1[v31];
  v33 = &a2[v31];
  *v32 = *v33;
  v34 = *(v32 + 1);
  *(v32 + 1) = *(v33 + 1);

  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = a3[7];
  v43 = type metadata accessor for UnknownStorage();
  (*(*(v43 - 8) + 24))(&a1[v42], &a2[v42], v43);
  return a1;
}

char *initializeWithTake for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v10 = *(started - 8);
  if ((*(v10 + 48))(v8, 1, started))
  {
    v11 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v7 = *v8;
      *(v7 + 4) = *(v8 + 4);
      v12 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
    }

    else
    {
      *v7 = *v8;
      v7[8] = v8[8];
      *(v7 + 12) = *(v8 + 12);
      v12 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
    }

    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&v7[v12], &v8[v12], v13);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v7, 0, 1, started);
  }

  v14 = a3[6];
  v15 = a3[7];
  *&a1[v14] = *&a2[v14];
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
  return a1;
}

char *assignWithTake for StartMigrationResponse(char *a1, char *a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 1);
  v12 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  v13 = a3[5];
  v14 = &a1[v13];
  v15 = &a2[v13];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v17 = *(started - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, started);
  v20 = v18(v15, 1, started);
  if (v19)
  {
    if (!v20)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v14 = *v15;
        *(v14 + 4) = *(v15 + 4);
        v28 = type metadata accessor for StartMigrationResponse.Error(0);
        v29 = 24;
      }

      else
      {
        *v14 = *v15;
        v14[8] = v15[8];
        *(v14 + 12) = *(v15 + 12);
        v28 = type metadata accessor for StartMigrationResponse.Details(0);
        v29 = 32;
      }

      v33 = *(v28 + v29);
      v34 = type metadata accessor for UnknownStorage();
      (*(*(v34 - 8) + 32))(&v14[v33], &v15[v33], v34);
      swift_storeEnumTagMultiPayload();
      (*(v17 + 56))(v14, 0, 1, started);
      goto LABEL_14;
    }

LABEL_7:
    v30 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v14, v15, *(*(v30 - 8) + 64));
    goto LABEL_14;
  }

  if (v20)
  {
    sub_100101968(v14, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v14, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v14 = *v15;
      *(v14 + 4) = *(v15 + 4);
      v31 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
    }

    else
    {
      *v14 = *v15;
      v14[8] = v15[8];
      *(v14 + 12) = *(v15 + 12);
      v31 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
    }

    v32 = type metadata accessor for UnknownStorage();
    (*(*(v32 - 8) + 32))(&v14[v31], &v15[v31], v32);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v35 = a3[6];
  v36 = &a1[v35];
  v37 = &a2[v35];
  v39 = *v37;
  v38 = *(v37 + 1);
  v40 = *(v36 + 1);
  *v36 = v39;
  *(v36 + 1) = v38;
  v40, v21, v22, v23, v24, v25, v26, v27;
  v41 = a3[7];
  v42 = type metadata accessor for UnknownStorage();
  (*(*(v42 - 8) + 40))(&a1[v41], &a2[v41], v42);
  return a1;
}

void sub_10011BFF4(uint64_t a1)
{
  sub_10011C0E4(319, &unk_100937A18, type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_10011C0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MigrateRequest(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v12 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v13 = type metadata accessor for UnknownStorage();
        (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v14 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v14) = *(a2 + v14);
    v15 = a3[7];
    v16 = a3[8];
    *(a1 + v15) = *(a2 + v15);
    v17 = type metadata accessor for UnknownStorage();
    (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
  }

  return a1;
}

uint64_t destroy for MigrateRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      *(a1 + 8), v6, v7, v8, v9, v10, v11, v12;
    }

    else if (!EnumCaseMultiPayload)
    {
      v13 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v14 = type metadata accessor for UnknownStorage();
      (*(*(v14 - 8) + 8))(a1 + v13, v14);
    }
  }

  v15 = *(a2 + 32);
  v16 = type metadata accessor for UnknownStorage();
  v17 = *(*(v16 - 8) + 8);

  return v17(a1 + v15, v16);
}

void *initializeWithCopy for MigrateRequest(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v10 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v11 = type metadata accessor for UnknownStorage();
      (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v12 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[7];
  v14 = a3[8];
  *(a1 + v13) = *(a2 + v13);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  return a1;
}

void *assignWithCopy for MigrateRequest(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v14 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v15 = type metadata accessor for UnknownStorage();
        (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_16;
    }

LABEL_8:
    v12 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_16;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    v13 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (v13 == 2)
    {
      a1[1] = a2[1];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v13 == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v19 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
      }

      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_16:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v16 = a3[8];
  v17 = type metadata accessor for UnknownStorage();
  (*(*(v17 - 8) + 24))(a1 + v16, a2 + v16, v17);
  return a1;
}

_DWORD *initializeWithTake for MigrateRequest(_DWORD *a1, _DWORD *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      *a1 = *a2;
      a1[2] = a2[2];
      v9 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v10 = type metadata accessor for UnknownStorage();
      (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[7];
  v13 = a3[8];
  *(a1 + v12) = *(a2 + v12);
  v14 = type metadata accessor for UnknownStorage();
  (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
  return a1;
}

char *assignWithTake for MigrateRequest(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
      if (!swift_getEnumCaseMultiPayload())
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
        v19 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
LABEL_7:
    v11 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v12 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  a1[v14] = a2[v14];
  v15 = a3[7];
  v16 = a3[8];
  *&a1[v15] = *&a2[v15];
  v17 = type metadata accessor for UnknownStorage();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  return a1;
}

void sub_10011D07C(uint64_t a1)
{
  sub_10011C0E4(319, &unk_100937C98, type metadata accessor for MigrateRequest.OneOf_Source);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for MigrateRequest.OneOf_Source(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v9 = type metadata accessor for UnknownStorage();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for MigrateRequest.OneOf_Source(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v14 = *(a1 + 8);

    v14, v4, v5, v6, v7, v8, v9, v10;
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 8);

    v13(a1 + v11, v12);
  }
}

void *initializeWithCopy for MigrateRequest.OneOf_Source(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    a1[1] = a2[1];
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
    v6 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for MigrateRequest.OneOf_Source(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v6 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v7 = type metadata accessor for UnknownStorage();
      (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_DWORD *initializeWithTake for MigrateRequest.OneOf_Source(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    a1[2] = a2[2];
    v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for MigrateRequest.OneOf_Source(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_10011D728(uint64_t a1)
{
  result = type metadata accessor for MigrateRequest.User(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MigrateRequest.Option(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MigrateRequest.User(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for MigrateRequest.User(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithCopy for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t initializeWithTake for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for MigrateResponse(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(v10, 1, v11))
    {
      v14 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v9 = *v10;
      if (EnumCaseMultiPayload == 1)
      {
        *(v9 + 1) = *(v10 + 1);
        *(v9 + 4) = *(v10 + 4);
        v17 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
        v18 = type metadata accessor for UnknownStorage();
        v35 = *(*(v18 - 8) + 16);

        v35(&v9[v17], &v10[v17], v18);
      }

      else
      {
        v9[8] = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v19 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      }

      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    v21 = a3[6];
    v22 = a3[7];
    v23 = &v4[v21];
    v24 = &a2[v21];
    v25 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v25;
    v26 = type metadata accessor for UnknownStorage();
    v27 = *(*(v26 - 8) + 16);

    v27(&v4[v22], &a2[v22], v26);
    v28 = a3[8];
    v29 = &v4[v28];
    v30 = &a2[v28];
    Step = type metadata accessor for MigrateResponse.NextStep(0);
    v32 = *(Step - 8);
    if ((*(v32 + 48))(v30, 1, Step))
    {
      v33 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
      memcpy(v29, v30, *(*(v33 - 8) + 64));
    }

    else
    {
      *v29 = *v30;
      *(v29 + 4) = *(v30 + 4);
      *(v29 + 3) = *(v30 + 3);
      v27(&v29[*(Step + 36)], &v30[*(Step + 36)], v26);
      (*(v32 + 56))(v29, 0, 1, Step);
    }
  }

  return v4;
}

uint64_t destroy for MigrateResponse(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v10 = a1 + *(a2 + 5);
  v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *(v10 + 8), v19, v20, v21, v22, v23, v24, v25;
      v26 = type metadata accessor for MigrateResponse.Error(0);
      v27 = 24;
    }

    else
    {
      v26 = type metadata accessor for MigrateResponse.Details(0);
      v27 = 32;
    }

    v28 = *(v26 + v27);
    v29 = type metadata accessor for UnknownStorage();
    (*(*(v29 - 8) + 8))(v10 + v28, v29);
  }

  *(a1 + *(a2 + 6) + 8), v12, v13, v14, v15, v16, v17, v18;
  v30 = *(a2 + 7);
  v31 = type metadata accessor for UnknownStorage();
  v36 = *(*(v31 - 8) + 8);
  v36(a1 + v30, v31);
  v32 = a1 + *(a2 + 8);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  result = (*(*(Step - 8) + 48))(v32, 1, Step);
  if (!result)
  {
    v35 = v32 + *(Step + 36);

    return (v36)(v35, v31);
  }

  return result;
}

char *initializeWithCopy for MigrateResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);

  if (v12(v9, 1, v10))
  {
    v13 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      *(v8 + 1) = *(v9 + 1);
      *(v8 + 4) = *(v9 + 4);
      v15 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
      v16 = type metadata accessor for UnknownStorage();
      v33 = *(*(v16 - 8) + 16);

      v33(&v8[v15], &v9[v15], v16);
    }

    else
    {
      v8[8] = v9[8];
      *(v8 + 12) = *(v9 + 12);
      v17 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
      v18 = type metadata accessor for UnknownStorage();
      (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v19 = a3[6];
  v20 = a3[7];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = type metadata accessor for UnknownStorage();
  v25 = *(*(v24 - 8) + 16);

  v25(&a1[v20], &a2[v20], v24);
  v26 = a3[8];
  v27 = &a1[v26];
  v28 = &a2[v26];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v30 = *(Step - 8);
  if ((*(v30 + 48))(v28, 1, Step))
  {
    v31 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v27, v28, *(*(v31 - 8) + 64));
  }

  else
  {
    *v27 = *v28;
    *(v27 + 4) = *(v28 + 4);
    *(v27 + 3) = *(v28 + 3);
    v25(&v27[*(Step + 36)], &v28[*(Step + 36)], v24);
    (*(v30 + 56))(v27, 0, 1, Step);
  }

  return a1;
}

char *assignWithCopy for MigrateResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v15 = *v16;
      if (EnumCaseMultiPayload == 1)
      {
        *(v15 + 1) = *(v16 + 1);
        *(v15 + 4) = *(v16 + 4);
        v23 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
        v24 = type metadata accessor for UnknownStorage();
        v59 = *(*(v24 - 8) + 16);

        v59(&v15[v23], &v16[v23], v24);
      }

      else
      {
        v15[8] = v16[8];
        *(v15 + 3) = *(v16 + 3);
        *(v15 + 4) = *(v16 + 4);
        v29 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
        v30 = type metadata accessor for UnknownStorage();
        (*(*(v30 - 8) + 16))(&v15[v29], &v16[v29], v30);
      }

      swift_storeEnumTagMultiPayload();
      (*(v18 + 56))(v15, 0, 1, v17);
      goto LABEL_14;
    }

LABEL_7:
    v25 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v15, v16, *(*(v25 - 8) + 64));
    goto LABEL_14;
  }

  if (v21)
  {
    sub_100101968(v15, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v15, type metadata accessor for MigrateResponse.OneOf_Result);
    v26 = swift_getEnumCaseMultiPayload();
    *v15 = *v16;
    if (v26 == 1)
    {
      *(v15 + 1) = *(v16 + 1);
      *(v15 + 4) = *(v16 + 4);
      v27 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
      v28 = type metadata accessor for UnknownStorage();
      v60 = *(*(v28 - 8) + 16);

      v60(&v15[v27], &v16[v27], v28);
    }

    else
    {
      v15[8] = v16[8];
      *(v15 + 3) = *(v16 + 3);
      *(v15 + 4) = *(v16 + 4);
      v56 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
      v57 = type metadata accessor for UnknownStorage();
      (*(*(v57 - 8) + 16))(&v15[v56], &v16[v56], v57);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v31 = a3[6];
  v32 = &a1[v31];
  v33 = &a2[v31];
  *v32 = *v33;
  v34 = *(v32 + 1);
  *(v32 + 1) = *(v33 + 1);

  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = a3[7];
  v43 = type metadata accessor for UnknownStorage();
  v44 = *(v43 - 8);
  v45 = *(v44 + 24);
  v58 = v43;
  v45(&a1[v42], &a2[v42]);
  v46 = a3[8];
  v61 = a1;
  v47 = &a1[v46];
  v48 = &a2[v46];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v50 = *(Step - 8);
  v51 = *(v50 + 48);
  v52 = v51(v47, 1, Step);
  v53 = v51(v48, 1, Step);
  if (!v52)
  {
    if (!v53)
    {
      *v47 = *v48;
      v47[1] = v48[1];
      *(v47 + 1) = *(v48 + 1);
      *(v47 + 2) = *(v48 + 2);
      *(v47 + 3) = *(v48 + 3);
      (v45)(&v47[*(Step + 36)], &v48[*(Step + 36)], v58);
      return v61;
    }

    sub_100101968(v47, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_19;
  }

  if (v53)
  {
LABEL_19:
    v54 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v47, v48, *(*(v54 - 8) + 64));
    return v61;
  }

  *v47 = *v48;
  v47[1] = v48[1];
  *(v47 + 1) = *(v48 + 1);
  *(v47 + 2) = *(v48 + 2);
  *(v47 + 3) = *(v48 + 3);
  (*(v44 + 16))(&v47[*(Step + 36)], &v48[*(Step + 36)], v58);
  (*(v50 + 56))(v47, 0, 1, Step);
  return v61;
}

char *initializeWithTake for MigrateResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v7 = *v8;
      *(v7 + 4) = *(v8 + 4);
      v12 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
    }

    else
    {
      *v7 = *v8;
      v7[8] = v8[8];
      *(v7 + 12) = *(v8 + 12);
      v12 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
    }

    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&v7[v12], &v8[v12], v13);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v14 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v15 = type metadata accessor for UnknownStorage();
  v16 = *(*(v15 - 8) + 32);
  v16(&a1[v14], &a2[v14], v15);
  v17 = a3[8];
  v18 = &a1[v17];
  v19 = &a2[v17];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v21 = *(Step - 8);
  if ((*(v21 + 48))(v19, 1, Step))
  {
    v22 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    *v18 = *v19;
    *(v18 + 4) = *(v19 + 4);
    *(v18 + 3) = *(v19 + 3);
    v16(&v18[*(Step + 36)], &v19[*(Step + 36)], v15);
    (*(v21 + 56))(v18, 0, 1, Step);
  }

  return a1;
}

char *assignWithTake for MigrateResponse(char *a1, char *a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 1);
  v12 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  v13 = a3[5];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (v19)
  {
    if (!v20)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v14 = *v15;
        *(v14 + 4) = *(v15 + 4);
        v28 = type metadata accessor for MigrateResponse.Error(0);
        v29 = 24;
      }

      else
      {
        *v14 = *v15;
        v14[8] = v15[8];
        *(v14 + 12) = *(v15 + 12);
        v28 = type metadata accessor for MigrateResponse.Details(0);
        v29 = 32;
      }

      v33 = *(v28 + v29);
      v34 = type metadata accessor for UnknownStorage();
      (*(*(v34 - 8) + 32))(&v14[v33], &v15[v33], v34);
      swift_storeEnumTagMultiPayload();
      (*(v17 + 56))(v14, 0, 1, v16);
      goto LABEL_14;
    }

LABEL_7:
    v30 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v14, v15, *(*(v30 - 8) + 64));
    goto LABEL_14;
  }

  if (v20)
  {
    sub_100101968(v14, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v14, type metadata accessor for MigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v14 = *v15;
      *(v14 + 4) = *(v15 + 4);
      v31 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
    }

    else
    {
      *v14 = *v15;
      v14[8] = v15[8];
      *(v14 + 12) = *(v15 + 12);
      v31 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
    }

    v32 = type metadata accessor for UnknownStorage();
    (*(*(v32 - 8) + 32))(&v14[v31], &v15[v31], v32);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v35 = a3[6];
  v36 = &a1[v35];
  v37 = &a2[v35];
  v39 = *v37;
  v38 = *(v37 + 1);
  v40 = *(v36 + 1);
  *v36 = v39;
  *(v36 + 1) = v38;
  v40, v21, v22, v23, v24, v25, v26, v27;
  v41 = a3[7];
  v42 = type metadata accessor for UnknownStorage();
  v43 = *(v42 - 8);
  v44 = *(v43 + 40);
  v55 = v42;
  v44(&a1[v41], &a2[v41]);
  v45 = a3[8];
  v56 = a1;
  v46 = &a1[v45];
  v47 = &a2[v45];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v49 = *(Step - 8);
  v50 = *(v49 + 48);
  v51 = v50(v46, 1, Step);
  v52 = v50(v47, 1, Step);
  if (!v51)
  {
    if (!v52)
    {
      *v46 = *v47;
      v46[1] = v47[1];
      *(v46 + 4) = *(v47 + 4);
      *(v46 + 3) = *(v47 + 3);
      (v44)(&v46[*(Step + 36)], &v47[*(Step + 36)], v55);
      return v56;
    }

    sub_100101968(v46, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_19;
  }

  if (v52)
  {
LABEL_19:
    v53 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v46, v47, *(*(v53 - 8) + 64));
    return v56;
  }

  *v46 = *v47;
  *(v46 + 4) = *(v47 + 4);
  *(v46 + 3) = *(v47 + 3);
  (*(v43 + 32))(&v46[*(Step + 36)], &v47[*(Step + 36)], v55);
  (*(v49 + 56))(v46, 0, 1, Step);
  return v56;
}

void sub_10011F248(uint64_t a1)
{
  sub_10011C0E4(319, &qword_100937E80, type metadata accessor for MigrateResponse.OneOf_Result);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_10011C0E4(319, &unk_100937E88, type metadata accessor for MigrateResponse.NextStep);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_10011F3BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(*(a3 - 8) + 80);
  if ((v7 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + ((v7 + 16) & ~v7);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 8) = a2[1];
      *(a1 + 16) = *(a2 + 4);
      v11 = *(a5(0) + 24);
      v12 = type metadata accessor for UnknownStorage();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      v15 = *(a4(0) + 32);
      v16 = type metadata accessor for UnknownStorage();
      (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011F580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(a1 + 8), v7, v8, v9, v10, v11, v12, v13;
    v14 = a4(0);
    v15 = 24;
  }

  else
  {
    v14 = a3(0);
    v15 = 32;
  }

  v16 = *(v14 + v15);
  v17 = type metadata accessor for UnknownStorage();
  v18 = *(*(v17 - 8) + 8);

  return v18(a1 + v16, v17);
}

uint64_t sub_10011F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v10 = *(a5(0) + 24);
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 16);

    v12(a1 + v10, a2 + v10, v11);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v13 = *(a4(0) + 32);
    v14 = type metadata accessor for UnknownStorage();
    (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10011F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a1 != a2)
  {
    sub_100101968(a1, a4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v11 = *(a6(0) + 24);
      v12 = type metadata accessor for UnknownStorage();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
      v14 = *(a5(0) + 32);
      v15 = type metadata accessor for UnknownStorage();
      (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v9 = *(a5(0) + 24);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v9 = *(a4(0) + 32);
  }

  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10011FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a1 != a2)
  {
    sub_100101968(a1, a4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a6(0) + 24);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      v10 = *(a5(0) + 32);
    }

    v11 = type metadata accessor for UnknownStorage();
    (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_10011FD2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v5 = *(a3 + 32);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t sub_10011FE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_10011FE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10011FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10011FF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100120008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001200A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100120164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100120204(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1001202B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 4);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_1001203A0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a2 + 24);
  v11 = type metadata accessor for UnknownStorage();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

uint64_t sub_100120414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1001204B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 16) = *(a2 + 16);
  v14 = *(a3 + 24);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t sub_10012054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001205CC(uint64_t a1, uint64_t a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 8);
  v12 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 16) = *(a2 + 16);
  v13 = a3[6];
  v14 = type metadata accessor for UnknownStorage();
  (*(*(v14 - 8) + 40))(a1 + v13, a2 + v13, v14);
  return a1;
}

uint64_t sub_10012066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012072C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001207D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MigrateResponse.NextStep(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 12) = *(a2 + 3);
    v5 = *(a3 + 36);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithCopy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t initializeWithTake for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100120C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

char *initializeWithCopy for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for UnmigrateResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&qword_100937510, &qword_100792E00);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
        v12 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
        v13 = type metadata accessor for UnknownStorage();
        v14 = *(*(v13 - 8) + 16);

        v14(a1 + v12, a2 + v12, v13);
      }

      else
      {
        v15 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
        v16 = type metadata accessor for UnknownStorage();
        (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v17 = *(a3 + 20);
    v18 = *(a3 + 24);
    v19 = (a1 + v17);
    v20 = (a2 + v17);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = type metadata accessor for UnknownStorage();
    v23 = *(*(v22 - 8) + 16);

    v23(a1 + v18, a2 + v18, v22);
  }

  return a1;
}

uint64_t destroy for UnmigrateResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *(a1 + 8), v12, v13, v14, v15, v16, v17, v18;
      v19 = type metadata accessor for UnmigrateResponse.Error(0);
    }

    else
    {
      v19 = type metadata accessor for UnmigrateResponse.Details(0);
    }

    v20 = *(v19 + 20);
    v21 = type metadata accessor for UnknownStorage();
    (*(*(v21 - 8) + 8))(a1 + v20, v21);
  }

  *(a1 + *(a2 + 20) + 8), v5, v6, v7, v8, v9, v10, v11;
  v22 = *(a2 + 24);
  v23 = type metadata accessor for UnknownStorage();
  v24 = *(*(v23 - 8) + 8);

  return v24(a1 + v22, v23);
}

void *initializeWithCopy for UnmigrateResponse(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
      v10 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v11 = type metadata accessor for UnknownStorage();
      v12 = *(*(v11 - 8) + 16);

      v12(a1 + v10, a2 + v10, v11);
    }

    else
    {
      v13 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v14 = type metadata accessor for UnknownStorage();
      (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v15 = *(a3 + 20);
  v16 = *(a3 + 24);
  v17 = (a1 + v15);
  v18 = (a2 + v15);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = type metadata accessor for UnknownStorage();
  v21 = *(*(v20 - 8) + 16);

  v21(a1 + v16, a2 + v16, v20);
  return a1;
}

char *assignWithCopy for UnmigrateResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 1)
      {
        *(a1 + 1) = *(a2 + 1);
        v12 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
        v13 = type metadata accessor for UnknownStorage();
        v14 = *(*(v13 - 8) + 16);

        v14(&a1[v12], &a2[v12], v13);
      }

      else
      {
        v20 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
        v21 = type metadata accessor for UnknownStorage();
        (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    v15 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v15 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v16 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (v16 == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v17 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v18 = type metadata accessor for UnknownStorage();
      v19 = *(*(v18 - 8) + 16);

      v19(&a1[v17], &a2[v17], v18);
    }

    else
    {
      v36 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v37 = type metadata accessor for UnknownStorage();
      (*(*(v37 - 8) + 16))(&a1[v36], &a2[v36], v37);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v22 = *(a3 + 20);
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  v25 = *(v23 + 1);
  *(v23 + 1) = *(v24 + 1);

  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(a3 + 24);
  v34 = type metadata accessor for UnknownStorage();
  (*(*(v34 - 8) + 24))(&a1[v33], &a2[v33], v34);
  return a1;
}

_OWORD *initializeWithTake for UnmigrateResponse(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v9 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v9 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v10 = type metadata accessor for UnknownStorage();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = *(a3 + 20);
  v12 = *(a3 + 24);
  *(a1 + v11) = *(a2 + v11);
  v13 = type metadata accessor for UnknownStorage();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  return a1;
}

char *assignWithTake for UnmigrateResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a1 = *a2;
        v18 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      }

      else
      {
        *a1 = *a2;
        v18 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      }

      v19 = type metadata accessor for UnknownStorage();
      (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    v20 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v20 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v21 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v21 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v22 = type metadata accessor for UnknownStorage();
    (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v23 = *(a3 + 20);
  v24 = &a1[v23];
  v25 = &a2[v23];
  v27 = *v25;
  v26 = *(v25 + 1);
  v28 = *(v24 + 1);
  *v24 = v27;
  *(v24 + 1) = v26;
  v28, v11, v12, v13, v14, v15, v16, v17;
  v29 = *(a3 + 24);
  v30 = type metadata accessor for UnknownStorage();
  (*(*(v30 - 8) + 40))(&a1[v29], &a2[v29], v30);
  return a1;
}

void sub_100121F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_10011C0E4(319, a4, a5);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v7 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v8 = type metadata accessor for UnknownStorage();
      v9 = *(*(v8 - 8) + 16);

      v9(&a1[v7], &a2[v7], v8);
    }

    else
    {
      v11 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for UnmigrateResponse.OneOf_Result(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(a1 + 8), v3, v4, v5, v6, v7, v8, v9;
    v10 = type metadata accessor for UnmigrateResponse.Error(0);
  }

  else
  {
    v10 = type metadata accessor for UnmigrateResponse.Details(0);
  }

  v11 = *(v10 + 20);
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1 + v11, v12);
}

char *initializeWithCopy for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + 1) = *(a2 + 1);
    v6 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 16);

    v8(&a1[v6], &a2[v6], v7);
  }

  else
  {
    v9 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    v10 = type metadata accessor for UnknownStorage();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v6 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v7 = type metadata accessor for UnknownStorage();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
    }

    else
    {
      v9 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v10 = type metadata accessor for UnknownStorage();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v5 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
  }

  else
  {
    *a1 = *a2;
    v5 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
  }

  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v5 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v5 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v6 = type metadata accessor for UnknownStorage();
    (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_1001227F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

char *initializeWithCopy for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_100122A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100122ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t initializeBufferWithCopyOfBuffer for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for EmptyRequest(uint64_t a1)
{
  v2 = type metadata accessor for UnknownStorage();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_100122E18(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for BasicResponse(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = *(a2 + 16);
    if (v6 == 255)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = v6 & 1;
      v10 = a3;
      sub_100117B3C(*a2, v8);
      a3 = v10;
      *v4 = v7;
      *(v4 + 8) = v8;
      *(v4 + 16) = v9;
    }

    v12 = *(a3 + 20);
    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 16))(v4 + v12, a2 + v12, v13);
  }

  return v4;
}

uint64_t destroy for BasicResponse(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a1 + 16);
  if (v10 != 255)
  {
    sub_100117B5C(*a1, *(a1 + 8), (v10 & 1), a4, a5, a6, a7, a8);
  }

  v11 = *(a2 + 20);
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1 + v11, v12);
}

uint64_t initializeWithCopy for BasicResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = v6 & 1;
    sub_100117B3C(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  v10 = *(a3 + 20);
  v11 = type metadata accessor for UnknownStorage();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for BasicResponse(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v11 == 255)
    {
      v27 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v27;
    }

    else
    {
      v23 = *a2;
      v24 = *(a2 + 1);
      v25 = v11 & 1;
      sub_100117B3C(*a2, v24);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
    }
  }

  else if (v11 == 255)
  {
    sub_10012320C(a1, a2, a3, a4, a5, a6, a7, a8);
    v26 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v26;
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 1);
    v14 = v11 & 1;
    sub_100117B3C(*a2, v13);
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14;
    sub_100117B5C(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v28 = *(a3 + 20);
  v29 = type metadata accessor for UnknownStorage();
  (*(*(v29 - 8) + 24))(a1 + v28, a2 + v28, v29);
  return a1;
}

uint64_t initializeWithTake for BasicResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for BasicResponse(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a1 + 16);
  if (v11 == 255)
  {
    goto LABEL_5;
  }

  v12 = *(a2 + 16);
  if (v12 == 255)
  {
    sub_10012320C(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v12 & 1;
  sub_100117B5C(v13, v14, (v11 & 1), a4, a5, a6, a7, a8);
LABEL_6:
  v15 = *(a3 + 20);
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 40))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t sub_1001233C8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100117B3C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for BasicResponse.OneOf_Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100117B3C(*a2, v4);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_100117B5C(v6, v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

__n128 initializeWithTake for BasicResponse.OneOf_Result(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for BasicResponse.OneOf_Result(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  sub_100117B5C(v10, v11, v12, a4, a5, a6, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for BasicResponse.OneOf_Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicResponse.OneOf_Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_1001235A0(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a3 + 20);
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t sub_100123680(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a2 + 20);
  v11 = type metadata accessor for UnknownStorage();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

char *sub_1001236F4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *sub_100123788(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(a3 + 20);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 24))(&a1[v14], &a2[v14], v15);
  return a1;
}

char *sub_10012381C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_100123894(char *a1, char *a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 1);
  v12 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  v13 = a3[5];
  v14 = type metadata accessor for UnknownStorage();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

uint64_t sub_10012392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001239EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100123A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100123B20()
{
  result = qword_100938718;
  if (!qword_100938718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938718);
  }

  return result;
}

unint64_t sub_100123B74()
{
  result = qword_100938720;
  if (!qword_100938720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938720);
  }

  return result;
}

id static REMCDSmartListSection.fetchRequest()()
{
  v1 = [v0 cdEntityName];
  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  return v2;
}

uint64_t sub_100123D70(void *a1, void *a2)
{
  v34 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6, v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v9, v10);
  sub_1000F5104(&qword_1009387D0, &qword_100794E38);
  v11 = type metadata accessor for REMWidgetRefresh.WidgetKind();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100791300;
  (*(v12 + 104))(v14 + v13, enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:), v11);
  type metadata accessor for RDIntentsRelevantShortcutsHandler();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  type metadata accessor for RDRelevantShortcutsProcessor();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ALL;
  v16[3] = 0x80000001007EBD10;
  v16[7] = 0;
  type metadata accessor for RDTransactionRegistrar();
  v17 = swift_allocObject();
  v17[4] = 0;
  v17[5] = 0;
  v17[2] = 0xD00000000000003FLL;
  v17[3] = 0x80000001007EBD30;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100124350(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);

  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v17[6] = UnfairLock.init(options:)();
  v16[8] = v17;
  v33 = v15;
  v16[4] = v15;
  v16[5] = &off_1008F5958;
  v16[6] = a1;
  v18 = a1;

  v19 = sub_10036573C(0, 1, 1, &_swiftEmptyArrayStorage);
  v21 = *v19->clientIdentity;
  v20 = *&v19->clientIdentity[8];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_10036573C((v20 > 1), (v21 + 1), 1, v19);
  }

  *v19->clientIdentity = v21 + 1;
  v22 = v19 + 16 * v21;
  *(v22 + 4) = v16;
  *(v22 + 5) = &off_1008ED208;
  type metadata accessor for RDTimelineEngine();
  v23 = swift_allocObject();
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0;
  v24 = v34;
  *(v23 + 16) = v18;
  *(v23 + 24) = v24;
  *(v23 + 32) = v19;
  *(v23 + 40) = 60;
  aBlock[4] = sub_10012434C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5A00;
  v25 = _Block_copy(aBlock);
  v18;
  v26 = v24;

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  v40 = &_swiftEmptyArrayStorage;
  sub_100124350(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v28 = v35;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v38 + 8))(v28, v29);
  (*(v36 + 8))(v27, v37);

  return v23;
}

uint64_t sub_100124350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100124398()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009387D8);
  v1 = sub_100006654(v0, qword_1009387D8);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100124460()
{
  v0 = sub_10038D894(&off_1008DD0C0);
  result = swift_arrayDestroy();
  qword_100974C00 = v0;
  return result;
}

void sub_1001244AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v19 = 0;
      v45 = v4;
      while (v9)
      {
        v20 = v9;
LABEL_19:
        v9 = (v20 - 1) & v20;
        if (*(v6 + 16))
        {
          v22 = (*(v4 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v20)))));
          v24 = *v22;
          v23 = v22[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v25 = Hasher._finalize()();
          v33 = -1 << *(v6 + 32);
          v34 = v25 & ~v33;
          if ((*(v11 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
          {
            v35 = ~v33;
            while (1)
            {
              v36 = (*(v6 + 48) + 16 * v34);
              v26 = v36[1];
              v37 = *v36 == v24 && v26 == v23;
              if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              if (((*(v11 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            v6, v26, v27, v28, v29, v30, v31, v32;

            v23, v38, v39, v40, v41, v42, v43, v44;
            return;
          }

LABEL_28:
          v23, v26, v27, v28, v29, v30, v31, v32;
          v4 = v45;
        }
      }

      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v10)
        {
          v6, v12, v13, v14, v15, v16, v17, v18;

          return;
        }

        v20 = *(v5 + 8 * v21);
        ++v19;
        if (v20)
        {
          v19 = v21;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

id sub_100124694()
{
  v1 = [*v0 languageHypothesisThresholdForPrimaryLanguage];

  return v1;
}

id sub_1001246CC()
{
  v1 = [*v0 languageHypothesisThresholdForAdditionalLanguages];

  return v1;
}

uint64_t sub_100124704()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = [v5 preferredLocalizations];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16))
  {
    v7, v8, v9, v10, v11, v12, v13, v14;
LABEL_5:
    static Locale.current.getter();
    v15 = Locale.identifier.getter();
    (*(v1 + 8))(v4, v0);
    return v15;
  }

  v15 = *(v7 + 32);

  v7, v16, v17, v18, v19, v20, v21, v22;
  return v15;
}

void sub_100124864(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v106 = a5;
  v107 = a1;
  v108 = a4;
  v110 = type metadata accessor for Locale.Components();
  v8 = *(v110 - 8);
  __chkstk_darwin(v110, v9);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  v12 = Array<A>.removingDuplicates()();
  v13 = *(v12 + 16);
  v14 = &_swiftEmptyArrayStorage;
  v109 = v12;
  v104 = v5;
  if (v13)
  {
    v103 = a2;
    v111 = &_swiftEmptyArrayStorage;
    sub_1002531D8(0, v13, 0);
    v14 = v111;
    v15 = (v8 + 8);
    v16 = (v12 + 40);
    do
    {
      v17 = *v16;
      swift_bridgeObjectRetain_n();
      Locale.Components.init(identifier:)();
      v18._rawValue = Locale.Components.rem_language()()._rawValue;
      v17, v19, v20, v21, v22, v23, v24, v25;
      (*v15)(v11, v110);
      v111 = v14;
      v27 = *v14->clientIdentity;
      v26 = *&v14->clientIdentity[8];
      if (v27 >= v26 >> 1)
      {
        sub_1002531D8((v26 > 1), v27 + 1, 1);
        v14 = v111;
      }

      *v14->clientIdentity = v27 + 1;
      *&v14->clientIdentity[8 * v27 + 16] = v18;
      v16 += 2;
      --v13;
    }

    while (v13);
    v12 = v109;
  }

  v28 = [objc_allocWithZone(NLLanguageRecognizer) init];
  type metadata accessor for NLLanguage(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 setLanguageConstraints:isa];

  v30 = String._bridgeToObjectiveC()();
  [v28 processString:v30];

  v107 = NLLanguageRecognizer.languageHypotheses(withMaximum:)();
  v31 = v108;
  v32 = v108[3];
  v33 = v108[4];
  sub_10000F61C(v108, v32);
  v103 = (*(v33 + 8))(v32, v33);
  v34 = v31[3];
  v35 = v31[4];
  sub_10000F61C(v31, v34);
  v36 = (*(v35 + 16))(v34, v35);
  v44 = v36;
  v45 = *(v12 + 16);
  if (!v45)
  {
    goto LABEL_43;
  }

  v46 = 0;
  v110 = &v14->clientIdentity[16];
  v47 = v12 + 40;
  v99 = v45 - 1;
  v48 = &_swiftEmptyArrayStorage;
  v100 = v28;
  v102 = v36;
  v108 = v45;
  while (2)
  {
    v101 = v48;
    v49 = (v47 + 16 * v46);
    v50 = v46;
    v51 = v106;
    while (1)
    {
      if (v50 >= *(v12 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      v52 = *v14->clientIdentity;
      if (v50 == v52)
      {
LABEL_42:
        v28 = v100;
        v44 = v102;
        goto LABEL_43;
      }

      if (v50 >= v52)
      {
        goto LABEL_45;
      }

      if (*(v51 + 16))
      {
        break;
      }

LABEL_12:
      ++v50;
      v49 += 2;
      if (v45 == v50)
      {
        goto LABEL_42;
      }
    }

    v53 = *(v49 - 1);
    v54 = *v49;
    v55 = *(v110 + 8 * v50);

    v56 = v55;
    v57 = sub_100005F4C(v53, v54);
    v59 = v58;
    v54, v58, v60, v61, v62, v63, v64, v65;
    if ((v59 & 1) == 0)
    {
      v12 = v109;
LABEL_11:

      v45 = v108;
      goto LABEL_12;
    }

    v66 = *(*(v51 + 56) + 8 * v57);
    v67 = v107;
    v68 = *v107->clientIdentity;
    v69 = v66;
    if (v68)
    {
      v70 = sub_100393C70();
      v12 = v109;
      if (v71)
      {
        v72 = *(*&v67->clientIdentity[40] + 8 * v70);
        if (*(v105 + 16) < 2uLL)
        {
          v75 = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
        }

        else
        {
          if (v50)
          {
            v73 = v102;
          }

          else
          {
            v73 = v103;
          }

          v75 = v73;
        }

        v76 = v75;
        [v75 doubleValue];
        if (v77 < v72)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1003658CC(0, (*v101->clientIdentity + 1), 1, v101);
          }

          v28 = v100;
          v80 = *v101->clientIdentity;
          v81 = *&v101->clientIdentity[8];
          v98 = (v80 + 1);
          if (v80 >= v81 >> 1)
          {
            v101 = sub_1003658CC((v81 > 1), v98, 1, v101);
          }

          goto LABEL_40;
        }

        v74 = v56;
        v56 = v69;
      }

      else
      {
        v74 = v69;
      }

      v51 = v106;

      goto LABEL_11;
    }

    v78 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1003658CC(0, (*v78->clientIdentity + 1), 1, v78);
    }

    v28 = v100;
    v80 = *v78->clientIdentity;
    v79 = *&v78->clientIdentity[8];
    v101 = v78;
    v98 = (v80 + 1);
    if (v80 >= v79 >> 1)
    {
      v101 = sub_1003658CC((v79 > 1), v98, 1, v101);
    }

    v76 = v56;
LABEL_40:

    v48 = v101;
    v82 = v99;
    *v101->clientIdentity = v98;
    v83 = v48 + 16 * v80;
    *(v83 + 4) = v50;
    *(v83 + 5) = v69;
    v46 = v50 + 1;
    v45 = v108;
    v12 = v109;
    v44 = v102;
    if (v82 != v50)
    {
      continue;
    }

    break;
  }

LABEL_43:
  v107, v37, v38, v39, v40, v41, v42, v43;

  v14, v84, v85, v86, v87, v88, v89, v90;
  v12, v91, v92, v93, v94, v95, v96, v97;
}

float sub_100124E18(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7, float a8)
{
  if (a4 == a6 && a5 == a7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return a8;
  }

  v18 = sub_10025655C(a6, a7, 1, 0);
  if (v8)
  {
    return a8;
  }

  if (*(v18 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v26 = v18;

      v26, v27, v28, v29, v30, v31, v32, v33;
      return a8;
    }

    __break(1u);
    goto LABEL_15;
  }

  v18, v19, v20, v21, v22, v23, v24, v25;
  if (qword_100935A68 != -1)
  {
LABEL_15:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_1009387D8);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  a7, v37, v38, v39, v40, v41, v42, v43;
  a5, v44, v45, v46, v47, v48, v49, v50;
  a3, v51, v52, v53, v54, v55, v56, v57;
  if (os_log_type_enabled(v35, v36))
  {
    v59 = v36;
    v58 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v58 = 136315650;
    *(v58 + 4) = sub_10000668C(a2, a3, &v60);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_10000668C(a4, a5, &v60);
    *(v58 + 22) = 2080;
    *(v58 + 24) = sub_10000668C(a6, a7, &v60);
    _os_log_impl(&_mh_execute_header, v35, v59, "convert(prediction:from:to:) skip: %s, %s, %s", v58, 0x20u);
    swift_arrayDestroy();
  }

  return a8;
}

uint64_t sub_1001250C0(uint64_t a1, uint64_t a2)
{
  v126 = a2;
  v3 = type metadata accessor for String.Encoding();
  v124 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_1009387F0, &qword_100794F50);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v120 - v9;
  v11 = sub_1000F5104(&qword_1009387F8, &qword_100794F58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v120 - v14;
  v16 = sub_1000F5104(&qword_100938800, &qword_100794F60);
  v128 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v120 - v18;
  sub_1000F5104(&qword_100938808, &qword_100794F68);
  Regex.init(_regexString:version:)();
  v125 = a1;
  v20 = v126;
  v127 = v19;
  Regex.wholeMatch(in:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000050A4(v10, &qword_1009387F0, &qword_100794F50);
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009387D8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    v20, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v129 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10000668C(v125, v20, &v129);
      _os_log_impl(&_mh_execute_header, v22, v23, "REMGroceryClassifier.isValidSourceType no result for '%s)'", v31, 0xCu);
      sub_10000607C(v32);
    }

    (*(v128 + 8))(v127, v16);
LABEL_7:
    v33 = 0;
    return v33 & 1;
  }

  v123 = v16;
  v121 = v12;
  (*(v12 + 32))(v15, v10, v11);
  swift_getKeyPath();
  v122 = v11;
  v120 = v15;
  Regex.Match.subscript.getter();

  v35 = v131;
  v36 = static String._fromSubstring(_:)();
  v38 = v37;
  v35, v37, v39, v40, v41, v42, v43, v44;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v129 = 123;
  v130 = 0xE100000000000000;
  v45._countAndFlagsBits = v36;
  v45._object = v38;
  String.append(_:)(v45);
  v38, v46, v47, v48, v49, v50, v51, v52;
  v53._countAndFlagsBits = 125;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  v54 = v130;
  static String.Encoding.utf8.getter();
  v55 = String.data(using:allowLossyConversion:)();
  v57 = v56;
  v54, v56, v58, v59, v60, v61, v62, v63;
  (*(v124 + 8))(v6, v3);
  if (v57 >> 60 == 15)
  {
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009387D8);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();
    v20, v67, v68, v69, v70, v71, v72, v73;
    if (os_log_type_enabled(v65, v66))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v129 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_10000668C(v125, v20, &v129);
      _os_log_impl(&_mh_execute_header, v65, v66, "REMGroceryClassifier.isValidSourceType no data for '%s)'", v74, 0xCu);
      sub_10000607C(v75);
    }

    (*(v121 + 8))(v120, v122);
    (*(v128 + 8))(v127, v123);
    goto LABEL_7;
  }

  v76 = sub_10038DA10(&_swiftEmptyArrayStorage);
  v76, v77, v78, v79, v80, v81, v82, v83;
  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  sub_100125B3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v84 = sub_1001A6DC0();
  if (qword_100935A68 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_100006654(v85, qword_1009387D8);

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  v84, v88, v89, v90, v91, v92, v93, v94;
  if (os_log_type_enabled(v86, v87))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v126 = v55;
    v97 = v57;
    v98 = v96;
    v129 = v96;
    *v95 = 136315138;
    v99 = Set.description.getter();
    v101 = v100;
    v102 = sub_10000668C(v99, v100, &v129);
    v101, v103, v104, v105, v106, v107, v108, v109;
    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v86, v87, "REMGroceryClassifier.isValidSourceType sourceTypeSet: %s", v95, 0xCu);
    sub_10000607C(v98);
    v57 = v97;
    v55 = v126;
  }

  v110 = v123;
  if (qword_100935A70 != -1)
  {
    swift_once();
  }

  sub_1001244AC(qword_100974C00, v84);
  v112 = v111;
  sub_100031A14(v55, v57);
  v84, v113, v114, v115, v116, v117, v118, v119;

  (*(v121 + 8))(v120, v122);
  (*(v128 + 8))(v127, v110);
  v33 = v112 ^ 1;
  return v33 & 1;
}

unint64_t sub_100125B3C()
{
  result = qword_100938810;
  if (!qword_100938810)
  {
    sub_1000F514C(&qword_10093E9C0, qword_100794F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938810);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100125BC0()
{
  v1 = type metadata accessor for ExtendedTriple();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for LanguageView();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ViewService();
  v15 = static ViewService.clientService.getter();
  ViewService.languageView.getter();

  if (v0)
  {
    return v14;
  }

  v16 = LanguageView.inferredLanguageTriples()();
  v49 = v2;
  v54 = v16;
  if (!(v16 >> 62))
  {
    v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = 0;
    if (v25)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v54;
  v50 = 0;
  if (!v25)
  {
LABEL_20:
    v16, v17, v18, v19, v20, v21, v22, v23;
    (*(v11 + 8))(v14, v10);
    return &_swiftEmptyArrayStorage;
  }

LABEL_6:
  v26 = v16;
  v48 = v14;
  v58 = &_swiftEmptyArrayStorage;
  result = sub_100253158(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v46 = v11;
    v47 = v10;
    v14 = v58;
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = 0;
      v53 = (v49 + 16);
      v28 = (v49 + 8);
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1001260B0(&qword_100938818, &protocol conformance descriptor for ExtendedTriple);
        sub_1001260B0(&unk_100938820, &protocol conformance descriptor for ExtendedTriple);
        FetchableRecord<>.init(row:)();
        v58 = v14;
        v30 = *v14->clientIdentity;
        v29 = *&v14->clientIdentity[8];
        if (v30 >= v29 >> 1)
        {
          sub_100253158((v29 > 1), v30 + 1, 1);
        }

        ++v27;
        v56 = v1;
        v57 = &protocol witness table for ExtendedTriple;
        v31 = sub_1000103CC(&v55);
        (*v53)(v31, v9, v1);
        v14 = v58;
        *v58->clientIdentity = v30 + 1;
        sub_100054B6C(&v55, &v14->clientIdentity[40 * v30 + 16]);
        (*v28)(v9, v1);
        v38 = v54;
      }

      while (v25 != v27);
      v39 = v54;
    }

    else
    {
      v53 = sub_1001260B0(&qword_100938818, &protocol conformance descriptor for ExtendedTriple);
      v40 = sub_1001260B0(&unk_100938820, &protocol conformance descriptor for ExtendedTriple);
      v51 = (v49 + 16);
      v52 = v40;
      v41 = (v49 + 8);
      v42 = 32;
      do
      {

        FetchableRecord<>.init(row:)();
        v58 = v14;
        v44 = *v14->clientIdentity;
        v43 = *&v14->clientIdentity[8];
        if (v44 >= v43 >> 1)
        {
          sub_100253158((v43 > 1), v44 + 1, 1);
        }

        v56 = v1;
        v57 = &protocol witness table for ExtendedTriple;
        v45 = sub_1000103CC(&v55);
        (*v51)(v45, v5, v1);
        v14 = v58;
        *v58->clientIdentity = v44 + 1;
        sub_100054B6C(&v55, &v14->clientIdentity[40 * v44 + 16]);
        (*v41)(v5, v1);
        v42 += 8;
        --v25;
      }

      while (v25);
      v39 = v54;
    }

    v39, v38, v32, v33, v34, v35, v36, v37;
    (*(v46 + 8))(v48, v47);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001260B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtendedTriple();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001260F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938830);
  v1 = sub_100006654(v0, qword_100938830);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAssignment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDAssignment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935A78 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100938830);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDList.recordZoneName()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall REMCDAssignment.recordType()()
{
  v0 = 0x656D6E6769737341;
  v1 = 0xEA0000000000746ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDAssignment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v182 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v189 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v13 - 8, v14);
  v197 = &v182 - v15;
  v16 = String._bridgeToObjectiveC()();
  v201.receiver = v3;
  v201.super_class = REMCDAssignment;
  objc_msgSendSuper2(&v201, "mergeDataFromRecord:accountID:", from.super.isa, v16);

  v17 = [(objc_class *)from.super.isa recordID];
  v18 = [v17 recordName];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v18 = String._bridgeToObjectiveC()();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [v3 ckIdentifierFromRecordName:v18];

  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v28 = String._bridgeToObjectiveC()();
    v30, v31, v32, v33, v34, v35, v36, v37;
  }

  [v3 setCkIdentifier:v28];

  v38 = 0;
  v190 = (v10 + 48);
  v187 = (v10 + 8);
  v188 = (v10 + 32);
  v195 = "OwningReminderIdentifier";
  v196 = "/Optional\\(\\[(.*)\\]\\)/";
  v194 = "EncryptedOriginatorIdentifier";
  *&v39 = 136315394;
  v186 = v39;
  *&v39 = 136315138;
  v191 = v39;
  v192 = v3;
  v193 = v9;
  do
  {
    v40 = *(&off_1008DD170 + v38 + 32);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        v62 = CKRecord.subscript.getter();
        if (v62)
        {
          v200 = v62;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            v63 = v199;
            UUID.init(uuidString:)();
            v63, v64, v65, v66, v67, v68, v69, v70;
            if ((*v190)(v8, 1, v9) != 1)
            {
              v107 = v189;
              (*v188)(v189, v8, v9);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              [v3 setOwningReminderIdentifier:isa];

              (*v187)(v107, v9);
              goto LABEL_7;
            }

            sub_1000050A4(v8, &unk_100939D90, "8\n\r");
          }
        }

        if (qword_100935A78 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_100938830);
        v72 = v3;
        v55 = Logger.logObject.getter();
        v73 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v55, v73))
        {
          goto LABEL_60;
        }

        v74 = from.super.isa;
        v75 = v8;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v198 = v77;
        *v76 = v191;
        v78 = [v72 ckIdentifier];
        if (v78)
        {
          v79 = v78;
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;
        }

        else
        {
          v82 = 0xE300000000000000;
          v80 = 7104878;
        }

        v99 = sub_10000668C(v80, v82, &v198);
        v82, v100, v101, v102, v103, v104, v105, v106;
        *(v76 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v55, v73, "Cannot convert to a UUID from CKRecord to owningReminderIdentifier {ckIdentifier: %s}", v76, 0xCu);
        sub_10000607C(v77);

        v8 = v75;
        from.super.isa = v74;
        v3 = v192;
        v9 = v193;
      }

      else if (v40 == 4)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v56 = swift_dynamicCastObjCClass();
          if (!v56)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v56 = 0;
        }

        v97 = sub_100128B80(v56, &qword_100939EE0, off_1008D41D0);

        if (v97)
        {
          objc_opt_self();
          v98 = swift_dynamicCastObjCClass();
          if (!v98)
          {
          }
        }

        else
        {
          v98 = 0;
        }

        [v3 setReminder:v98];
      }

      else
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v198))
        {
          v96 = 0;
        }

        else
        {
          v96 = v198;
        }

        [v3 setStatus:v96];
      }
    }

    else if (*(&off_1008DD170 + v38 + 32))
    {
      if (v40 == 1)
      {
        v41 = [(objc_class *)from.super.isa encryptedValues];
        v42 = String._bridgeToObjectiveC()();
        v43 = [v41 objectForKeyedSubscript:v42];
        swift_unknownObjectRelease();

        if (v43)
        {
          v200 = v43;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            v44 = v198;
            v45 = v199;
            v46 = String._bridgeToObjectiveC()();
            [v3 setCkAssigneeIdentifier:v46];

            v47 = sub_100127444(v44, v45);
            if (v47)
            {
              v55 = v47;
              v45, v48, v49, v50, v51, v52, v53, v54;
              [v3 setAssignee:v55];
LABEL_60:

              goto LABEL_7;
            }

            if (qword_100935A78 != -1)
            {
              swift_once();
            }

            v109 = type metadata accessor for Logger();
            sub_100006654(v109, qword_100938830);
            v110 = v3;

            v55 = Logger.logObject.getter();
            v111 = static os_log_type_t.default.getter();
            v45, v112, v113, v114, v115, v116, v117, v118;

            if (!os_log_type_enabled(v55, v111))
            {
              goto LABEL_59;
            }

            v184 = v111;
            v185 = v8;
            v126 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v198 = v183;
            *v126 = v186;
            v127 = [v110 ckIdentifier];
            if (v127)
            {
              v128 = v127;
              v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v131 = v130;
            }

            else
            {
              v131 = 0xE300000000000000;
              v129 = 7104878;
            }

            v147 = sub_10000668C(v129, v131, &v198);
            v131, v148, v149, v150, v151, v152, v153, v154;
            *(v126 + 4) = v147;
            *(v126 + 12) = 2080;
            v155 = sub_10000668C(v44, v45, &v198);
            v45, v156, v157, v158, v159, v160, v161, v162;
            *(v126 + 14) = v155;
            v163 = v184;
            v164 = v55;
            v165 = "Assignee object (REMCDSharee) does not exist (yet) when merging data from Assignment CKRecord: {ckIdentifier: %s, assigneeID: %s}";
LABEL_65:
            _os_log_impl(&_mh_execute_header, v164, v163, v165, v126, 0x16u);
            swift_arrayDestroy();

            v8 = v185;
            v9 = v193;
          }
        }
      }

      else
      {
        v83 = [(objc_class *)from.super.isa encryptedValues];
        v84 = String._bridgeToObjectiveC()();
        v85 = [v83 objectForKeyedSubscript:v84];
        swift_unknownObjectRelease();

        if (v85)
        {
          v200 = v85;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            v86 = v198;
            v45 = v199;
            v87 = String._bridgeToObjectiveC()();
            [v3 setCkOriginatorIdentifier:v87];

            v88 = sub_100127444(v86, v45);
            if (v88)
            {
              v55 = v88;
              v45, v89, v90, v91, v92, v93, v94, v95;
              [v3 setOriginator:v55];
              goto LABEL_60;
            }

            if (qword_100935A78 != -1)
            {
              swift_once();
            }

            v132 = type metadata accessor for Logger();
            sub_100006654(v132, qword_100938830);
            v133 = v3;

            v55 = Logger.logObject.getter();
            v134 = static os_log_type_t.default.getter();
            v45, v135, v136, v137, v138, v139, v140, v141;

            if (!os_log_type_enabled(v55, v134))
            {
LABEL_59:
              v45, v119, v120, v121, v122, v123, v124, v125;
              goto LABEL_60;
            }

            v184 = v134;
            v185 = v8;
            v126 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v198 = v183;
            *v126 = v186;
            v142 = [v133 ckIdentifier];
            if (v142)
            {
              v143 = v142;
              v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v146 = v145;
            }

            else
            {
              v146 = 0xE300000000000000;
              v144 = 7104878;
            }

            v166 = sub_10000668C(v144, v146, &v198);
            v146, v167, v168, v169, v170, v171, v172, v173;
            *(v126 + 4) = v166;
            *(v126 + 12) = 2080;
            v174 = sub_10000668C(v86, v45, &v198);
            v45, v175, v176, v177, v178, v179, v180, v181;
            *(v126 + 14) = v174;
            v163 = v184;
            v164 = v55;
            v165 = "Originator object (REMCDSharee) does not exist (yet) when merging data from Assignment CKRecord: {ckIdentifier: %s, originatorID: %s}";
            goto LABEL_65;
          }
        }
      }
    }

    else
    {
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v57 = type metadata accessor for Date();
      v58 = v197;
      CKRecordKeyValueSetting.subscript.getter();
      v59 = *(v57 - 8);
      v60 = 0;
      if ((*(v59 + 48))(v58, 1, v57) != 1)
      {
        v61 = v197;
        v60 = Date._bridgeToObjectiveC()().super.isa;
        (*(v59 + 8))(v61, v57);
      }

      [v3 setAssignedDate:v60];
    }

LABEL_7:
    ++v38;
  }

  while (v38 != 6);
}

uint64_t sub_100127444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 managedObjectContext];
  if (!v6)
  {
    if (qword_100935A78 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v7 = v6;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100006600();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  v10 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v9 context:v7];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v11, v25, v26, v27, v28, v29, v30, v31;
LABEL_14:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_10:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100938830);
    v7 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v7, v23, "Trying to merge CKRecord to an object without MOC", v24, 2u);
    }

    goto LABEL_14;
  }

  v12 = *(v11 + 32);
LABEL_7:
  v13 = v12;

  v11, v14, v15, v16, v17, v18, v19, v20;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

CKRecord_optional __swiftcall REMCDAssignment.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v60 - v12;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v18, v19).n128_u64[0];
  v22 = &v60 - v21;
  v75.receiver = v1;
  v75.super_class = REMCDAssignment;
  v24 = objc_msgSendSuper2(&v75, "newlyCreatedRecord", v20);
  if (v24)
  {
    v69 = v17;
    v70 = v9;
    v25 = 0;
    v67 = (v3 + 56);
    v68 = "/Optional\\(\\[(.*)\\]\\)/";
    v61 = (v3 + 8);
    v62 = (v3 + 16);
    v65 = "OwningReminderIdentifier";
    v66 = (v3 + 48);
    v64 = "EncryptedOriginatorIdentifier";
    v71 = v2;
    do
    {
      v27 = *(&off_1008DD198 + v25 + 32);
      if (v27 > 2)
      {
        if (v27 != 3)
        {
          if (v27 == 4)
          {
            v34 = [v1 reminder];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 recordID];
            }

            else
            {
              v36 = 0;
            }

            v58 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v36];

            CKRecord.subscript.setter();
            goto LABEL_5;
          }

          v26 = [v1 status];
          *(&v73 + 1) = &type metadata for Int16;
          v74 = &protocol witness table for Int16;
          LOWORD(v72) = v26;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        }

        v41 = [v1 owningReminderIdentifier];
        if (v41)
        {
          v42 = v70;
          v43 = v41;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = 0;
        }

        else
        {
          v44 = 1;
          v42 = v70;
        }

        (*v67)(v42, v44, 1, v2);
        sub_100031B58(v42, v13, &unk_100939D90, "8\n\r");
        if ((*v66)(v13, 1, v2))
        {
          sub_1000050A4(v13, &unk_100939D90, "8\n\r");
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
        }

        else
        {
          v54 = v63;
          (*v62)(v63, v13, v2);
          sub_1000050A4(v13, &unk_100939D90, "8\n\r");
          v55 = UUID.uuidString.getter();
          v57 = v56;
          (*v61)(v54, v2);
          *(&v73 + 1) = &type metadata for String;
          v74 = &protocol witness table for String;
          *&v72 = v55;
          *(&v72 + 1) = v57;
        }
      }

      else
      {
        if (*(&off_1008DD198 + v25 + 32))
        {
          if (v27 == 1)
          {
            v28 = [v24 encryptedValues];
            v29 = [v1 ckAssigneeIdentifier];
            if (v29)
            {
              v30 = v29;
              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;

              *(&v73 + 1) = &type metadata for String;
              v74 = &protocol witness table for String;
              *&v72 = v31;
              *(&v72 + 1) = v33;
              v2 = v71;
            }

            else
            {
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
            }
          }

          else
          {
            v45 = [v24 encryptedValues];
            v46 = [v1 ckOriginatorIdentifier];
            if (v46)
            {
              v47 = v46;
              v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v49;

              *(&v73 + 1) = &type metadata for String;
              v74 = &protocol witness table for String;
              *&v72 = v48;
              *(&v72 + 1) = v50;
              v2 = v71;
            }

            else
            {
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
            }
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

        v37 = [v1 assignedDate];
        if (v37)
        {
          v38 = v69;
          v39 = v37;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = 0;
        }

        else
        {
          v40 = 1;
          v38 = v69;
        }

        v51 = type metadata accessor for Date();
        v52 = *(v51 - 8);
        (*(v52 + 56))(v38, v40, 1, v51);
        sub_100031B58(v38, v22, &unk_100938850, qword_100795AE0);
        if ((*(v52 + 48))(v22, 1, v51) == 1)
        {
          sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
        }

        else
        {
          *(&v73 + 1) = v51;
          v74 = &protocol witness table for Date;
          v53 = sub_1000103CC(&v72);
          (*(v52 + 32))(v53, v22, v51);
        }
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_4:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_5:
      ++v25;
    }

    while (v25 != 6);
  }

  v59 = v24;
  result.value.super.isa = v59;
  result.is_nil = v23;
  return result;
}

void __swiftcall REMCDRecurrenceRule.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 reminder];

  v3 = v2;
}

Swift::Void __swiftcall REMCDAssignment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100938830);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for assignment {assignmentID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reminder is marked for deletion but assignment is not {assignmentID: %{public}s, reminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

Swift::Void __swiftcall REMCDAssignment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

id sub_100128808(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  a2(0);
  v5 = [v3 managedObjectContext];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094A590);
    v6 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, v15, "Trying to merge CKRecord to an object without MOC", v16, 2u);
    }

    goto LABEL_16;
  }

  v6 = v5;
  if (!a1)
  {
LABEL_16:

    return 0;
  }

  v7 = a1;
  v8 = [v3 accountCKIdentifier];
  if (!v8)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10094A590);
    v18 = v7;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = [v18 recordID];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "newOrExistingObject with reference recordID %{public}@ with nil accountCKIdentfiier", v21, 0xCu);
      sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

      return 0;
    }

    goto LABEL_16;
  }

  v9 = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [v7 recordID];
  v12 = [ObjCClassFromMetadata existingCloudObjectForRecordID:v11 accountID:v9 context:v6];

  if (v12)
  {

    return v12;
  }

  else
  {
    v24 = [v7 recordID];
    v25 = [v3 account];
    v26 = [ObjCClassFromMetadata newPlaceholderObjectForRecordID:v24 account:v25 context:v6];

    return v26;
  }
}

id sub_100128B80(void *a1, unint64_t *a2, void *a3)
{
  v4 = v3;
  sub_1000060C8(0, a2, a3);
  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094A590);
    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, v16, "Trying to merge CKRecord to an object without MOC", v17, 2u);
    }

    goto LABEL_16;
  }

  v7 = v6;
  if (!a1)
  {
LABEL_16:

    return 0;
  }

  v8 = a1;
  v9 = [v4 accountCKIdentifier];
  if (!v9)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094A590);
    v19 = v8;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = [v19 recordID];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "newOrExistingObject with reference recordID %{public}@ with nil accountCKIdentfiier", v22, 0xCu);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      return 0;
    }

    goto LABEL_16;
  }

  v10 = v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [v8 recordID];
  v13 = [ObjCClassFromMetadata existingCloudObjectForRecordID:v12 accountID:v10 context:v7];

  if (v13)
  {

    return v13;
  }

  else
  {
    v25 = [v8 recordID];
    v26 = [v4 account];
    v27 = [ObjCClassFromMetadata newPlaceholderObjectForRecordID:v25 account:v26 context:v7];

    return v27;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100128F20(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->clientIdentity[8];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->clientIdentity;
  if (v11 <= v12)
  {
    v13 = *a4->clientIdentity;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000F5104(&unk_1009388C0, &unk_1007A1760);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->clientIdentity = v12;
    *&v14->clientIdentity[8] = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = &v14->clientIdentity[16];
  v17 = &a4->clientIdentity[16];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t _sSo15REMCDAssignmentC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo15REMCDAssignmentC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_100129304()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009388D0);
  v1 = sub_100006654(v0, qword_1009388D0);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int PermanentlyHideError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100129410(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100129450()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100129498(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1001294DC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E7473696CLL;
  }
}

uint64_t sub_100129544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10012AC28(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_100129578(uint64_t a1)
{
  v2 = sub_10012A57C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001295B4(uint64_t a1)
{
  v2 = sub_10012A57C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001295F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a4;
  v7 = sub_1000F5104(&qword_100938900, &qword_100795158);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - v10;
  sub_10000F61C(a1, a1[3]);
  sub_10012A57C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_1000F5104(&qword_100938910, &unk_100795160);
    sub_10012A5D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v12;
    v17 = 2;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10012A6A8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001297E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v6 = sub_1000F5104(&qword_100938930, &qword_100795170);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_10000F61C(a1, a1[3]);
  sub_10012A724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100129998()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 0x7865646E69;
  }
}

void sub_1001299D0(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_100129AA8(uint64_t a1)
{
  v2 = sub_10012A724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100129AE4(uint64_t a1)
{
  v2 = sub_10012A724();

  return CodingKey.debugDescription.getter(a1, v2);
}

_TtC7remindd19RDXPCStorePerformer *sub_100129B40(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v7 = v4;
  v105 = a1;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8, v12);
  v100 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin(v14, v15);
  v108 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 16);
  if (v24)
  {
    v101 = v4;
    v102 = a4;
    v103 = a2;
    v110 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v24, 0);
    v25 = v110;
    v26 = (a3 + 40);
    do
    {
      v27 = *(v26 - 1);
      isa = *v26;
      v110 = v25;
      v29 = *v25->clientIdentity;
      v28 = *&v25->clientIdentity[8];
      v30 = v29 + 1;

      if (v29 >= v28 >> 1)
      {
        sub_100026EF4((v28 > 1), v29 + 1, 1);
        v30 = v29 + 1;
        v25 = v110;
      }

      *v25->clientIdentity = v30;
      v31 = v25 + 16 * v29;
      *(v31 + 4) = v27;
      *(v31 + 5) = isa;
      v26 += 2;
      --v24;
    }

    while (v24);
    v104 = v30;
LABEL_9:
    v110 = &_swiftEmptyArrayStorage;
    v33 = v104;
    sub_1002531F8(0, v104, 0);
    v34 = v33;
    v35 = 0;
    v36 = v110;
    v109 = *v25->clientIdentity;
    a2 = &v25->clientIdentity[24];
    while (v109 != v35)
    {
      if (v35 >= *v25->clientIdentity)
      {
        goto LABEL_27;
      }

      v37 = *&a2[-1].shareRecordIDToRootRecordIDLock[2];
      isa = a2->super.isa;
      v110 = v36;
      v39 = *v36->clientIdentity;
      v38 = *&v36->clientIdentity[8];

      if (v39 >= v38 >> 1)
      {
        sub_1002531F8((v38 > 1), v39 + 1, 1);
        v34 = v104;
        v36 = v110;
      }

      *v36->clientIdentity = v39 + 1;
      v47 = &v36->super.isa + 3 * v39;
      v47[4] = v35;
      v47[5] = v37;
      v47[6] = isa;
      a2 = (a2 + 16);
      v35 = (v35 + 1);
      if (v34 == v35)
      {
        v25, v40, v41, v42, v43, v44, v45, v46;
        v48 = v108;
        a4 = v102;
        a2 = v103;
        v7 = v101;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_20;
  }

  v32 = *_swiftEmptyArrayStorage.clientIdentity;
  if (v32)
  {
    v103 = a2;
    v104 = v32;
    v101 = v4;
    v102 = a4;
    v25 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v36 = &_swiftEmptyArrayStorage;
  &_swiftEmptyArrayStorage, v16, v17, v18, v19, v20, v21, v22;
  v48 = v108;
LABEL_16:

  static DispatchTime.now()();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v110 = v105;
  v111 = a2;
  v112 = v36;
  v113 = a4;
  sub_10012A048();
  v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v7)
  {
    (*(v106 + 8))(v48, v107);
    a4, v57, v58, v59, v60, v61, v62, v63;
    v36, v64, v65, v66, v67, v68, v69, v70;
    a2, v71, v72, v73, v74, v75, v76, v77;

    return a2;
  }

  v25 = v49;
  isa = v50;
  a4, v50, v51, v52, v53, v54, v55, v56;
  v36, v78, v79, v80, v81, v82, v83, v84;
  a2, v85, v86, v87, v88, v89, v90, v91;

  static String.Encoding.utf8.getter();
  v92 = String.init(data:encoding:)();
  if (!v93)
  {
    sub_10012A09C();
    swift_allocError();
    swift_willThrow();
    sub_10001BBA0(v25, isa);
    (*(v106 + 8))(v48, v107);
    return a2;
  }

  a2 = v92;
  static DispatchTime.secondsElapsed(since:)();
  v6 = v94;
  if (qword_100935A80 != -1)
  {
    goto LABEL_28;
  }

LABEL_20:
  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_1009388D0);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 134217984;
    *(v98 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v96, v97, "RDAutoCategorizerPromptInputProcessor: json encoded in %f seconds", v98, 0xCu);
  }

  sub_10001BBA0(v25, isa);

  (*(v106 + 8))(v108, v107);
  return a2;
}

unint64_t sub_10012A048()
{
  result = qword_1009388E8;
  if (!qword_1009388E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388E8);
  }

  return result;
}

unint64_t sub_10012A09C()
{
  result = qword_1009388F0;
  if (!qword_1009388F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388F0);
  }

  return result;
}

void *assignWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a1[2];
  a1[2] = a2[2];

  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

__n128 initializeWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v9, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RDAutoCategorizerPromptInputError(_WORD *result, int a2, int a3)
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

void destroy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  a1[2], v9, v10, v11, v12, v13, v14, v15;
  v23 = a1[3];

  v23, v16, v17, v18, v19, v20, v21, v22;
}

void *initializeWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[2];
  a1[2] = a2[2];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a2[3];
  v21 = a1[3];
  a1[3] = v20;

  v21, v22, v23, v24, v25, v26, v27, v28;
  return a1;
}

__n128 initializeWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[2];
  *(a1 + 1) = *(a2 + 8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = a1[3];
  a1[3] = *(a2 + 24);
  v18, v19, v20, v21, v22, v23, v24, v25;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10012A528()
{
  result = qword_1009388F8;
  if (!qword_1009388F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388F8);
  }

  return result;
}

unint64_t sub_10012A57C()
{
  result = qword_100938908;
  if (!qword_100938908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938908);
  }

  return result;
}

unint64_t sub_10012A5D0()
{
  result = qword_100938918;
  if (!qword_100938918)
  {
    sub_1000F514C(&qword_100938910, &unk_100795160);
    sub_10012A654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938918);
  }

  return result;
}

unint64_t sub_10012A654()
{
  result = qword_100938920;
  if (!qword_100938920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938920);
  }

  return result;
}

unint64_t sub_10012A6A8()
{
  result = qword_100938928;
  if (!qword_100938928)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938928);
  }

  return result;
}

unint64_t sub_10012A724()
{
  result = qword_100938938;
  if (!qword_100938938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012AA1C()
{
  result = qword_100938940;
  if (!qword_100938940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938940);
  }

  return result;
}

unint64_t sub_10012AA74()
{
  result = qword_100938948;
  if (!qword_100938948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938948);
  }

  return result;
}

unint64_t sub_10012AACC()
{
  result = qword_100938950;
  if (!qword_100938950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938950);
  }

  return result;
}

unint64_t sub_10012AB24()
{
  result = qword_100938958;
  if (!qword_100938958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938958);
  }

  return result;
}

unint64_t sub_10012AB7C()
{
  result = qword_100938960;
  if (!qword_100938960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938960);
  }

  return result;
}

unint64_t sub_10012ABD4()
{
  result = qword_100938968;
  if (!qword_100938968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938968);
  }

  return result;
}

uint64_t sub_10012AC28(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x656D614E7473696CLL && a2 == 0xE800000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001007EBE40;
    if (a1 == 0xD000000000000014 && 0x80000001007EBE40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001007EBE60 == a2)
    {
      a2, 0x80000001007EBE60, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10012AD50()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938970);
  v1 = sub_100006654(v0, qword_100938970);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012AE18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = _s10PredicatesOMa(0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10012AF44, 0, 0);
}

uint64_t sub_10012AF44()
{
  v1 = v0[4];
  if (![*(v1 + 16) enableGroceryFeedbackSurvey])
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Survey is not enabled for non-seed builds.";
    goto LABEL_11;
  }

  if ([*(v1 + 16) hasSeenGroceryFeedbackSurvey])
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Has seen the feedback survey.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    goto LABEL_13;
  }

  v10 = v0[10];
  v11 = v0[2];
  v12 = v0[3];
  *v10 = v11;
  swift_storeEnumTagMultiPayload();
  v13 = v11;
  v14 = sub_100043AA8();
  sub_1000513B4(v10);
  sub_10053464C(v12, v14);
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];
  v18 = REMRemindersListDataView.CountByCompleted.incomplete.getter();

  (*(v16 + 8))(v15, v17);
  if (v18 < 3)
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Survey requires 3 or more reminders in the list.";
    goto LABEL_11;
  }

  v20 = v0[4];
  v21 = v0[5];
  [*(v1 + 16) setHasSeenGroceryFeedbackSurvey:1];
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;

  sub_1001955C4(0, 0, v21, &unk_1007953E0, v23);

LABEL_13:

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012B35C()
{
  v23 = v0;
  if (qword_100935A88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_100006654(v1, qword_100938970);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000668C(0xD00000000000001FLL, 0x80000001007EBED0, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "RDFeedbackProvider: showFeedback {formIdentifier: %s}", v4, 0xCu);
    sub_10000607C(v5);
  }

  v6 = objc_allocWithZone(type metadata accessor for FBKSForm());
  v7 = FBKSForm.init(identifier:)();
  v0[8] = v7;
  dispatch thunk of FBKSForm.authenticationMethod.setter();
  v8 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  v0[9] = v8;
  dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x80000001007EBF10;
  v11._object = 0x80000001007EBEF0;
  v25._countAndFlagsBits = 0xD00000000000002ELL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v25);

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
  v13 = [v9 mainBundle];
  v26._object = 0x80000001007EBF90;
  v14._countAndFlagsBits = 0xD00000000000004DLL;
  v14._object = 0x80000001007EBF40;
  v26._countAndFlagsBits = 0xD000000000000030;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v26);

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();
  v16 = objc_allocWithZone(type metadata accessor for FBKSDraftLauncher());
  v17 = v7;
  v0[10] = FBKSDraftLauncher.init(feedbackForm:)();
  v21 = (&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:));
  v18 = v8;
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_10012B6C0;

  return v21(v8);
}

uint64_t sub_10012B6C0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10012B930;
  }

  else
  {

    v3 = sub_10012B7DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012B7DC(uint64_t a1)
{
  v13 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000668C(0xD00000000000001FLL, 0x80000001007EBED0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "RDFeedbackProvider: Feedback request succeeded. {formIdentifier: %s}", v8, 0xCu);
    sub_10000607C(v9);
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_10012B930()
{
  v23 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  [*(v4 + 16) setHasSeenGroceryFeedbackSurvey:0];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = v10;
    v12 = sub_10000668C(v9, v10, &v22);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDFeedbackProvider: Feedback request failed. {error: %s}", v7, 0xCu);
    sub_10000607C(v8);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t TantorMigrationAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10012BB38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000FCBFC;

  return sub_10012B33C(a1, v4, v5, v6);
}

uint64_t sub_10012BBEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938A28);
  v1 = sub_100006654(v0, qword_100938A28);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10012BCB4(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v492 = a2;
  v465 = a5;
  v467 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel();
  v473 = *(v467 - 8);
  __chkstk_darwin(v467, v8);
  v464 = v443 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v479 = v443 - v12;
  v459 = type metadata accessor for UUID();
  v458 = *(v459 - 8);
  __chkstk_darwin(v459, v13);
  v457 = v443 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  __chkstk_darwin(v15 - 8, v16);
  v463 = v443 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v477 = v443 - v20;
  v478 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v476 = *(v478 - 8);
  __chkstk_darwin(v478, v21);
  v462 = v443 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v475 = v443 - v25;
  v26 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v26 - 8, v27);
  v454 = v443 - v28;
  v488 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v484 = *(v488 - 8);
  __chkstk_darwin(v488, v29);
  v483 = (v443 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31, v32);
  v494 = v443 - v33;
  v480 = type metadata accessor for REMRemindersListDataView.Diff();
  v485 = *(v480 - 8);
  __chkstk_darwin(v480, v34);
  v466 = v443 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v474 = v443 - v38;
  __chkstk_darwin(v39, v40);
  v472 = v443 - v41;
  __chkstk_darwin(v42, v43);
  v495 = v443 - v44;
  v456 = _s10PredicatesOMa(0);
  __chkstk_darwin(v456, v45);
  v455 = (v443 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v470 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v469 = *(v470 - 8);
  __chkstk_darwin(v470, v47);
  v468 = v443 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v49 - 8, v50);
  v461 = v443 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v53);
  v489 = v443 - v54;
  __chkstk_darwin(v55, v56);
  v493 = v443 - v57;
  v58 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v499 = *(v58 - 8);
  v500 = v58;
  __chkstk_darwin(v58, v59);
  v460 = v443 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61, v62);
  v498 = (v443 - v63);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v506 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v64);
  v496 = v443 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66, v67);
  v497 = (v443 - v68);
  v504 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v501 = *(v504 - 8);
  __chkstk_darwin(v504, v69);
  v482 = v443 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71, v72);
  v471 = v443 - v73;
  __chkstk_darwin(v74, v75);
  v487 = v443 - v76;
  __chkstk_darwin(v77, v78);
  v486 = v443 - v79;
  __chkstk_darwin(v80, v81);
  v508 = v443 - v82;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v507 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v83);
  v490 = v443 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85, v86);
  v481 = v443 - v87;
  __chkstk_darwin(v88, v89);
  v91 = v443 - v90;
  __chkstk_darwin(v92, v93);
  v95 = v443 - v94;
  __chkstk_darwin(v96, v97);
  v99 = v443 - v98;
  __chkstk_darwin(v100, v101);
  v103 = v443 - v102;
  __chkstk_darwin(v104, v105);
  v107 = v443 - v106;
  __chkstk_darwin(v108, v109);
  v111 = (v443 - v110);
  v502 = a4;
  v112 = REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.smartList.getter();
  v509 = a1;
  v113 = v511;
  sub_1005BA098(a1, a3, v112);
  v511 = v113;
  if (v113)
  {

    return;
  }

  v115 = v114;
  v450 = v111;
  v451 = v107;
  v452 = v103;
  v448 = v99;
  v445 = v95;
  v446 = v91;
  v447 = a3;

  v453 = v115;
  v116 = [v453 accountID];
  v117 = [(RDXPCStorePerformer *)v509 persistentStoreOfAccountWithAccountID:v116];

  if (v117)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1007953F0;
    v449 = v118;
    *(v118 + 32) = v117;
  }

  else
  {
    v449 = 0;
  }

  v119 = Configuration;
  v120 = v497;
  v121 = v451;
  v122 = v450;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v123 = v508;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v125 = (v507 + 8);
  v124 = *(v507 + 1);
  v124(v122, v119);
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v126 = v120;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v124(v121, v119);
  v127 = v452;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v128 = v498;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v124(v127, v119);
  v129 = v453;
  v130 = v509;
  v131 = v511;
  sub_1005B6BD0(v453, v509, v123, v126, v128);
  if (v131)
  {
    v449, v133, v134, v135, v136, v137, v138, v139;

    (*(v499 + 8))(v128, v500);
    (*(v506 + 8))(v126, Subtasks);
    (*(v501 + 8))(v508, v504);
    return;
  }

  v452 = v124;
  v507 = v125;
  v497 = v132;
  v140 = (v499 + 8);
  v141 = v128;
  v142 = *(v499 + 8);
  v142(v141, v500);
  v143 = v130;
  v144 = v506 + 8;
  v145 = *(v506 + 8);
  v145(v126, Subtasks);
  v147 = v501 + 8;
  v146 = *(v501 + 8);
  v146(v508, v504);
  v148 = sub_10012DC7C(v143);
  v451 = v140;
  v450 = v142;
  v498 = v145;
  v508 = v146;
  v506 = v144;
  v449, v149, v150, v151, v152, v153, v154, v155;
  v156 = sub_10027091C(v148);
  v157 = sub_1001BD57C(v156, v497);
  v444 = v148;
  v449 = v157;
  v511 = 0;
  v156, v158, v159, v160, v161, v162, v163, v164;
  v165 = v448;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  LOBYTE(v148) = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v166 = Configuration;
  v167 = v452;
  v452(v165, Configuration);
  v168 = v504;
  v443[1] = v147;
  if (v148 & 1) != 0 && (REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter(), v169 = v486, REMRemindersListDataView.FetchConfiguration.showCompleted.getter(), v167(v165, v166), v170 = v487, (*(v501 + 104))(v487, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v168), v171 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)(), v172 = v170, v173 = v508, (v508)(v172, v168), (v173)(v169, v168), (v171))
  {

    v174 = v493;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v175 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
    v176 = v447;
    v177 = v494;
    v178 = v491;
  }

  else
  {
    v179 = v445;
    REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
    v180 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v167(v179, v166);
    v181 = v446;
    REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
    v167(v181, v166);
    if (v180)
    {
      v182 = [v453 customContext];
      v177 = v494;
      v183 = v489;
      v184 = v496;
      if (v182 && (v185 = v182, v186 = REMSmartListCustomContext.filter.getter(), v185, v186))
      {
        v187 = v468;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v188 = (*(v469 + 88))(v187, v470);
        if (v188 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v189 = static Set<>.typesSupportedByCustomSmartList.getter();
          v190 = static Set<>.typesIndescribableByNSPredicate.getter();
          v192 = sub_1001A2030(v190, v189, v191);
          v190, v193, v194, v195, v196, v197, v198, v199;
          v200 = v471;
        }

        else
        {
          if (v188 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_61;
          }

          v192 = static Set<>.typesSupportedByCustomSmartList.getter();
          v200 = v471;
        }

        v510[3] = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v510[4] = sub_10012DEEC();
        v510[0] = v509;
        v316 = v509;
        v317 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();
        v487 = v316;

        v192, v318, v319, v320, v321, v322, v323, v324;
        sub_10000607C(v510);
        v325 = *(v317 + 16);
        v317, v326, v327, v328, v329, v330, v331, v332;
        if (v325)
        {
          (*(v501 + 104))(v200, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v168);
          v333 = v500;
          v334 = v200;
          v335 = v460;
          (*(v499 + 104))(v460, enum case for REMRemindersListDataView.SortingStyle.default(_:), v500);
          v336 = v453;
          v184 = v496;
          v337 = v511;
          sub_1005B6BD0(v453, v487, v334, v496, v335);
          if (v337)
          {

            v497, v338, v339, v340, v341, v342, v343, v344;
            v449, v345, v346, v347, v348, v349, v350, v351;
            v444, v352, v353, v354, v355, v356, v357, v358;

            v450(v335, v333);
            (v508)(v334, v168);
            v498(v184, Subtasks);
            return;
          }

          v511 = 0;
          v450(v335, v333);
          (v508)(v334, v168);
          REMRemindersListDataView.CountByCompleted.init(reminders:)();
        }

        else
        {
          v403 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
          v404 = v455;
          *v455 = v186;
          v405 = v186;
          v406 = v453;
          *(v404 + 8) = [v453 accountID];
          (*(v501 + 104))(v404 + v403, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v168);
          swift_storeEnumTagMultiPayload();
          v186 = sub_100043AA8();
          sub_1000513B4(v404);
          v407 = v511;
          sub_10053464C(v487, v186);
          if (v407)
          {
            v449, v408, v409, v410, v411, v412, v413, v414;
            v444, v415, v416, v417, v418, v419, v420, v421;

            v497, v422, v423, v424, v425, v426, v427, v428;
            v498(v496, Subtasks);
            return;
          }

          v511 = 0;

          v184 = v496;
        }

        v201 = 0;
        v174 = v493;
        v176 = v447;
        v177 = v494;
      }

      else
      {
        v201 = 1;
        v174 = v493;
        v176 = v447;
      }

      v178 = v491;
    }

    else
    {
      v201 = 1;
      v174 = v493;
      v176 = v447;
      v177 = v494;
      v178 = v491;
      v183 = v489;
      v184 = v496;
    }

    v498(v184, Subtasks);
    v202 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v202 - 8) + 56))(v183, v201, 1, v202);
    sub_100031B58(v183, v174, &qword_100938A70, &qword_1007ACC60);
  }

  v203 = [v178 fetchResultTokenToDiffAgainst];
  v204 = v511;
  sub_100534D44(v203, v495);

  v212 = v490;
  if (v204)
  {
    v449, v205, v206, v207, v208, v209, v210, v211;
    v444, v213, v214, v215, v216, v217, v218, v219;
    v497, v220, v221, v222, v223, v224, v225, v226;
    v227 = v453;

    sub_1000050A4(v174, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v228 = v481;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v452(v228, Configuration);
  v229 = v484;
  v230 = v483;
  v231 = v488;
  (*(v484 + 16))(v483, v177, v488);
  v232 = (*(v229 + 88))(v230, v231);
  v511 = 0;
  if (v232 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v444, v233, v234, v235, v236, v237, v238, v239;
    (*(v229 + 96))(v230, v231);
    v240 = *v230;
    v241 = Array<A>.reminders.getter();
    v242 = v509;
    v243 = sub_10053DB98(v240, v241, v509, v176, 0);
    v244 = v241;
    v231 = v488;
    v244, v245, v246, v247, v248, v249, v250, v251;
LABEL_26:
    v252 = &_swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  if (v232 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v444, v233, v234, v235, v236, v237, v238, v239;
    (*(v229 + 96))(v230, v231);
    v242 = v509;
    v243 = sub_10053E698(*v230, v495, v509, v176, 0);
    goto LABEL_26;
  }

  if (v232 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v444, v233, v234, v235, v236, v237, v238, v239;
    (*(v229 + 96))(v230, v231);
    v302 = v230;
    v303 = *v230;
    v304 = v302 + *(sub_1000F5104(&qword_100938A78, &qword_1007AABE0) + 48);
    v305 = v454;
    sub_100031B58(v304, v454, &qword_10094B8E0, &unk_1007AABD0);
    v306 = Array<A>.reminders.getter();
    v242 = v509;
    v243 = sub_10053DB98(v303, v306, v509, v176, 0);
    v252 = sub_10053EBE4(v305, v306, v242, v176, 0);
    v307 = v306;
    v177 = v494;
    v307, v308, v309, v310, v311, v312, v313, v314;
    v315 = v305;
    v231 = v488;
    sub_1000050A4(v315, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_27;
  }

  if (v232 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
LABEL_61:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  v444, v233, v234, v235, v236, v237, v238, v239;
  v252 = &_swiftEmptyArrayStorage;
  v243 = &_swiftEmptyArrayStorage;
  v242 = v509;
  v229 = v484;
LABEL_27:
  (*(v229 + 8))(v177, v231);
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v253 = v212;
  v254 = v482;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v452(v253, Configuration);
  v255 = v242;
  v256 = v453;
  v257 = v497;
  v258 = v511;
  sub_1005B74B8(v255, v453, v174, v254, v497);
  v511 = v258;
  if (v258)
  {
    v257, v259, v260, v261, v262, v263, v264, v265;
    v243, v266, v267, v268, v269, v270, v271, v272;
    v252, v273, v274, v275, v276, v277, v278, v279;
    v449, v280, v281, v282, v283, v284, v285, v286;

    (v508)(v254, v504);
    (*(v485 + 8))(v495, v480);
    sub_1000050A4(v174, &qword_100938A70, &qword_1007ACC60);
  }

  else
  {
    (v508)(v254, v504);
    sub_100010364(v174, v461, &qword_100938A70, &qword_1007ACC60);
    v287 = v475;
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v288 = [v256 objectID];
    v289 = [v256 accountID];

    if (REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.shouldFetchManualOrderingID.getter())
    {
      v290 = [v288 uuid];
      v291 = v457;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v292 = UUID.uuidString.getter();
      v293 = v291;
      v294 = v292;
      v296 = v295;
      (*(v458 + 8))(v293, v459);
      sub_10053F868(2, v294, v296, v289, v509);
      v298 = v477;
      v299 = v463;
      if (!v297)
      {
        v297 = [objc_opt_self() newObjectID];
      }

      v300 = v297;
      REMObjectID.codable.getter();
      REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

      v301 = 0;
    }

    else
    {
      v301 = 1;
      v298 = v477;
      v299 = v463;
    }

    v359 = v473;
    v360 = v462;

    v361 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v361 - 8) + 56))(v298, v301, 1, v361);
    (*(v476 + 16))(v360, v287, v478);
    sub_100010364(v298, v299, &qword_100938A68, &unk_10079DDF0);
    v508 = v453;
    REMRemindersListDataView.CustomSmartListSectionsModel.init(sectionsModel:smartList:manualOrderingID:)();
    v362 = v474;
    if (qword_100935A90 != -1)
    {
      swift_once();
    }

    v363 = type metadata accessor for Logger();
    sub_100006654(v363, qword_100938A28);
    v364 = v485;
    v365 = *(v485 + 16);
    v366 = v472;
    v367 = v495;
    v368 = v480;
    v365(v472, v495, v480);
    v507 = v365;
    v365(v362, v367, v368);
    v369 = v497;

    v370 = Logger.logObject.getter();
    v371 = v362;
    v372 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v370, v372))
    {
      v373 = swift_slowAlloc();
      *v373 = 134218496;
      v374 = *v369->clientIdentity;
      v369, v375, v376, v377, v378, v379, v380, v381;
      *(v373 + 4) = v374;
      v369, v382, v383, v384, v385, v386, v387, v388;
      *(v373 + 12) = 2048;
      v389 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v389 & 0xC000000000000001) != 0)
      {
        v397 = v389;
        v398 = __CocoaSet.count.getter();
        v389 = v397;
        v366 = v472;
      }

      else
      {
        v398 = *(v389 + 16);
      }

      v429 = v485;
      v389, v390, v391, v392, v393, v394, v395, v396;
      v430 = *(v429 + 8);
      v506 = (v429 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v509 = v430;
      (v430)(v366, v368);
      *(v373 + 14) = v398;
      *(v373 + 22) = 2048;
      v431 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v431 & 0xC000000000000001) != 0)
      {
        v439 = v431;
        v440 = __CocoaSet.count.getter();
        v431 = v439;
      }

      else
      {
        v440 = *(v431 + 16);
      }

      v400 = v467;
      v402 = v466;
      v431, v432, v433, v434, v435, v436, v437, v438;
      (v509)(v474, v368);
      *(v373 + 24) = v440;
      _os_log_impl(&_mh_execute_header, v370, v372, "reminders %ld updated %ld inserted %ld", v373, 0x20u);

      v359 = v473;
      v401 = v368;
    }

    else
    {
      v399 = *(v364 + 8);
      v506 = (v364 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v399)(v371, v368);
      v509 = v399;
      (v399)(v366, v368);

      swift_bridgeObjectRelease_n();
      v400 = v467;
      v401 = v368;
      v402 = v466;
    }

    v441 = v479;
    (*(v359 + 16))(v464, v479, v400);
    v442 = v495;
    v507(v402, v495, v401);
    sub_10012DEA4(&qword_100938A80, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListSectionsModel);
    sub_10012DEA4(&qword_100938A88, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v359 + 8))(v441, v400);
    sub_1000050A4(v477, &qword_100938A68, &unk_10079DDF0);
    (*(v476 + 8))(v475, v478);
    (v509)(v442, v401);
    sub_1000050A4(v493, &qword_100938A70, &qword_1007ACC60);
  }
}

uint64_t sub_10012DC24(uint64_t a1)
{
  result = sub_10012DEA4(&qword_100938A60, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10012DC7C(uint64_t a1)
{
  v1 = REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.smartList.getter();
  v2 = [v1 objectID];

  if (qword_100935D60 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDSmartListSection();
  v3 = sub_10024C42C();
  v4 = sub_10024C888();
  v5 = sub_10024B964(v2, 1u);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  v8 = sub_10003450C(v3);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v6 setPropertiesToFetch:isa];

  v17 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setRelationshipKeyPathsForPrefetching:v17];

  sub_10012DF40();
  v18 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSortDescriptors:v18];

  v19 = NSManagedObjectContext.fetch<A>(_:)();
  v3, v20, v21, v22, v23, v24, v25, v26;
  v4, v27, v28, v29, v30, v31, v32, v33;

  return v19;
}

uint64_t sub_10012DEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10012DEEC()
{
  result = qword_100938A90;
  if (!qword_100938A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938A90);
  }

  return result;
}

unint64_t sub_10012DF40()
{
  result = qword_10093C980;
  if (!qword_10093C980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093C980);
  }

  return result;
}

void sub_10012DF8C(uint64_t *a1@<X8>)
{
  v3 = v2;
  v81 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v74 - v6;
  v87 = type metadata accessor for Date();
  v8 = *(v87 - 8);
  __chkstk_darwin(v87, v9);
  v90 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UUID();
  v11 = *(v88 - 8);
  __chkstk_darwin(v88, v12);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v74 - v16;
  __chkstk_darwin(v18, v19);
  v89 = &v74 - v20;
  v80 = type metadata accessor for REMJSONType();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80, v21);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);
  if (v24 >> 62)
  {
    v72 = *(v1 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);
    v73 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v72;
    v25 = v73;
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = &_swiftEmptyArrayStorage;
  v82 = v23;
  if (v25)
  {
    v27 = v24;
    v91 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      __break(1u);
      return;
    }

    v74 = v2;
    v75 = v17;
    v28 = 0;
    v29 = v27;
    v84 = v27 & 0xC000000000000001;
    v83 = (v8 + 56);
    v76 = v11;
    v30 = (v11 + 32);
    v31 = (v8 + 32);
    v86 = v27;
    v85 = v25;
    do
    {
      if (v84)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v29 + 8 * v28 + 32);
      }

      v41 = v40;
      v42 = [v40 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = [v41 dueDateDelta];
      v44 = [v41 creationDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = [v41 acknowledgedDate];
      if (v45)
      {
        v32 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = v7;
      v35 = v7;
      v36 = v87;
      (*v83)(v34, v33, 1, v87);
      ++v28;
      v37 = [v41 minimumSupportedAppVersion];

      type metadata accessor for RDDueDateDeltaAlert(0);
      v38 = swift_allocObject();
      (*v30)(v38 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier, v89, v88);
      *(v38 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta) = v43;
      v39 = v36;
      v7 = v35;
      (*v31)(v38 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate, v90, v39);
      sub_10012F7FC(v35, v38 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate);
      *(v38 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion) = v37;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v29 = v86;
    }

    while (v85 != v28);
    v26 = v91;
    v11 = v76;
    v17 = v75;
    v3 = v74;
  }

  type metadata accessor for RDDueDateDeltaAlert(0);
  sub_10012F744(&qword_100938B00, type metadata accessor for RDDueDateDeltaAlert, &unk_1007B65E4);
  Array<A>.toJSON()();
  v26, v46, v47, v48, v49, v50, v51, v52;
  if (!v3)
  {
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v53 = v11;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100792CE0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001007EA710;
    v55 = v78;
    v56 = [*(v78 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = UUID.uuidString.getter();
    v59 = v58;
    v60 = *(v53 + 8);
    v61 = v17;
    v62 = v88;
    v60(v61, v88);
    *(inited + 48) = v57;
    *(inited + 56) = v59;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x80000001007EC010;
    v63 = [*(v55 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID) uuid];
    v64 = v77;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = UUID.uuidString.getter();
    v67 = v66;
    v60(v64, v62);
    *(inited + 96) = v65;
    *(inited + 104) = v67;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001007EC030;
    v68 = v82;
    REMJSONType.associatedValueAsAny.getter();
    *(inited + 176) = 0xD000000000000017;
    *(inited + 184) = 0x80000001007E8C60;
    v69 = kREMSupportedVersionFor2023;
    *(inited + 216) = &type metadata for Int;
    *(inited + 192) = v69;
    v70 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    v71 = v79;
    (*(v79 + 8))(v68, v80);
    *v81 = v70;
    (*(v71 + 104))();
  }
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012E8B8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10012EDB8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10012E8E4(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_10012F86C();
    swift_allocError();
    swift_willThrow();
    return v1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    v5 = [v3 reminderID];
    v6 = [v4 accountID];
    v7 = type metadata accessor for RDDueDateDeltaAlerts();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID] = v5;
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID] = v6;
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects] = v1;
    v11.receiver = v8;
    v11.super_class = v7;
    v9 = v5;
    v10 = v6;

    v1 = objc_msgSendSuper2(&v11, "init");

    return v1;
  }

  __break(1u);
  return result;
}

id sub_10012EA54(void *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v52 = &v44 - v12;
  *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID] = a1;
  *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID] = a2;
  if (!(a3 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v35 = a1;
    v36 = a2;
    a3, v37, v38, v39, v40, v41, v42, v43;
    v34 = &_swiftEmptyArrayStorage;
LABEL_14:
    *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects] = v34;
    v55.receiver = v4;
    v55.super_class = ObjectType;
    return objc_msgSendSuper2(&v55, "init");
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v56 = &_swiftEmptyArrayStorage;
  v51 = a1;
  v50 = a2;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v45 = ObjectType;
    v46 = v4;
    v15 = 0;
    v16 = a3;
    v47 = a3 & 0xC000000000000001;
    v48 = v13;
    v49 = a3;
    do
    {
      if (v47)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *&v16->clientIdentity[8 * v15 + 16];
      }

      v54 = *(v24 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta);
      v25 = v52;
      sub_10012F78C(v24 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate, v52);
      v53 = *(v24 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion);
      v26 = v51;
      v27 = v50;
      v28.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v30 = type metadata accessor for Date();
      v31 = *(v30 - 8);
      isa = 0;
      if ((*(v31 + 48))(v25, 1, v30) != 1)
      {
        v33 = v52;
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v31 + 8))(v33, v30);
      }

      ++v15;
      v17 = objc_allocWithZone(REMDueDateDeltaAlert);
      [v17 initWithIdentifier:v28.super.isa reminderID:v26 accountID:v27 dueDateDelta:v54 creationDate:v29.super.isa acknowledgedDate:isa minimumSupportedAppVersion:v53];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v49;
    }

    while (v48 != v15);
    v49, v49, v18, v19, v20, v21, v22, v23;
    v34 = v56;
    ObjectType = v45;
    v4 = v46;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_10012EDB8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2, v3);
  v86 = &v82 - v4;
  v5 = sub_1000F5104(&qword_100938AE8, &unk_100795480);
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5, v6);
  v89 = (&v82 - v7);
  v95 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v8 = *(v95 - 8);
  __chkstk_darwin(v95, v9);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v82 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v93 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v82 - v21;
  v23 = type metadata accessor for REMJSONType();
  v24 = *(v23 - 8);
  v26 = __chkstk_darwin(v23, v25);
  v28 = (&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v28, a1, v23, v26);
  v29 = (*(v24 + 88))(v28, v23);
  if (v29 == enum case for REMJSONType.jsonObject(_:))
  {
    v84 = v16;
    (*(v24 + 96))(v28, v23);
    v30 = *v28;
    v31 = enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:);
    v16 = v95;
    v83 = *(v8 + 104);
    v83(v14, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v95);
    v85 = v30;
    v32 = v94;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v33 = *(v8 + 8);
    v33(v14, v16);
    if (v32)
    {
      v85, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      v94 = v22;
      v43 = v92;
      v83(v92, v31, v95);
      v44 = v93;
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v33(v43, v95);
      v45 = type metadata accessor for RDDueDateDeltaAlert(0);
      v46 = sub_10012F744(&qword_100938B00, type metadata accessor for RDDueDateDeltaAlert, &unk_1007B65E4);
      v48 = v89;
      v47 = v90;
      *v89 = v45;
      v48[1] = v46;
      v49 = v91;
      (*(v47 + 104))(v48, enum case for Dictionary<>.DeserializableValueType.jsonArray<A, B><A1>(_:), v91);
      sub_1000F5104(&qword_100938B08, &unk_100795490);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (*(v47 + 8))(v48, v49);
      v50 = v96;
      v51 = v86;
      v52 = v87;
      v53 = v88;
      (*(v87 + 104))(v86, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v88);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v54 = v94;
      (*(v52 + 8))(v51, v53);
      v85, v56, v57, v58, v59, v60, v61, v62;
      v63 = v96;
      if (rem_isUnsupportedVersionByRuntime())
      {
        v50, v64, v65, v66, v67, v68, v69, v70;
        v71 = type metadata accessor for REMJSONDeserializationError();
        sub_10012F744(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError, &protocol conformance descriptor for REMJSONDeserializationError);
        swift_allocError();
        *v72 = v63;
        (*(*(v71 - 8) + 104))(v72, enum case for REMJSONDeserializationError.notSupported(_:), v71);
        swift_willThrow();
        v16 = (v84 + 1);
        v73 = v84[1];
        v73(v44, v15);
        v73(v54, v15);
      }

      else
      {
        v74 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v76 = [v74 objectIDWithUUID:isa];

        v77 = objc_opt_self();
        v78 = UUID._bridgeToObjectiveC()().super.isa;
        v79 = [v77 objectIDWithUUID:v78];

        v80 = objc_allocWithZone(type metadata accessor for RDDueDateDeltaAlerts());
        v16 = sub_10012EA54(v76, v79, v50);

        v81 = v84[1];
        v81(v44, v15);
        v81(v54, v15);
      }
    }

    return v16;
  }

  if (v29 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v24 + 8))(v28, v23);
    v41 = type metadata accessor for REMJSONDeserializationError();
    sub_10012F744(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError, &protocol conformance descriptor for REMJSONDeserializationError);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, enum case for REMJSONDeserializationError.invalidData(_:), v41);
    swift_willThrow();
    return v16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10012F744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012F78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012F86C()
{
  result = qword_100938B10;
  if (!qword_100938B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938B10);
  }

  return result;
}

unint64_t sub_10012F8D4()
{
  result = qword_100938B18;
  if (!qword_100938B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938B18);
  }

  return result;
}

uint64_t sub_10012F928()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938B20);
  v1 = sub_100006654(v0, qword_100938B20);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012F9F0(void *a1, void (*a2)(uint64_t, void), uint64_t a3, double a4)
{
  v5 = v4;
  v87 = a2;
  v88 = a3;
  v85 = a1;
  v7 = *v4;
  v8 = type metadata accessor for UUID();
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin(v8, v9);
  v81 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Date();
  v11 = *(v89 - 8);
  __chkstk_darwin(v89, v12);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v70 - v16;
  v78 = v18;
  __chkstk_darwin(v19, v20);
  v22 = &v70 - v21;
  if (qword_100935A98 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100006654(v23, qword_100938B20);

  v82 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v86 = v7;
  v83 = v17;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v77 = v11;
    v30 = v29;
    v31 = swift_slowAlloc();
    v90[0] = v31;
    *v28 = 136446466;
    v90[2] = v7;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v35 = sub_10000668C(v32, v33, v90);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v28 + 4) = v35;
    *(v28 + 12) = 2114;
    v43 = v5[2];
    *(v28 + 14) = v43;
    *v30 = v43;
    v44 = v43;
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: Start execution {templateObjectID: %{public}@}", v28, 0x16u);
    sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
    v11 = v77;

    sub_10000607C(v31);
  }

  Date.init()();
  v45 = v5[2];
  v46 = *(v5 + 64);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v48 = v85;
  v49 = sub_10034AE0C(v45, v85, &off_1008DD518, 0);
  sub_100034610(&unk_1008DD538);
  v50 = [v49 publicLinkURLUUID];
  if (v50)
  {
    v51 = v81;
    v82 = v47;
    v52 = v50;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = sub_10013FBFC(v51);
    v53 = v5[7];
    v83 = v5[6];
    v74 = v53;
    v77 = sub_10000F61C(v5 + 3, v83);
    v76 = type metadata accessor for RDPublicTemplate(0);
    v54 = v11[2];
    v72 = v46;
    v55 = v89;
    v54(v84, v22, v89);
    v56 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v57 = &v78[v56 + 7] & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = v49;
    v59 = swift_allocObject();
    v78 = v22;
    v60 = v59;
    v61 = v73;
    *(v59 + 16) = v45;
    *(v59 + 24) = v61;
    (v11[4])(v59 + v56, v84, v55);
    *(v60 + v57) = v48;
    *(v60 + v58) = v82;
    v62 = v60 + v71;
    v63 = v88;
    *v62 = v87;
    *(v62 + 8) = v63;
    *(v62 + 16) = v72;
    *(v60 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8)) = v86;
    v64 = v74;
    v65 = *(v74 + 16);
    v66 = v45;
    v67 = v61;
    v68 = v48;

    v65(v67, v76, sub_100138C5C, v60, v76, &off_1008E60A0, v83, v64, a4);

    (*(v79 + 8))(v81, v80);
    (v11[1])(v78, v89);
  }

  else
  {
    sub_1001302D8(v45, 0, v47, v45, v22, v87, v88, v86);

    (v11[1])(v22, v89);
  }
}

void sub_1001302D8(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a2;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v60 - v21;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100938B20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v69 = v27;
      *v26 = 136446210;
      v68[1] = v66;
      swift_getMetatypeMetadata();
      v28 = String.init<A>(describing:)();
      v30 = v29;
      v31 = sub_10000668C(v28, v29, &v69);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Attempted to call completion more than once", v26, 0xCu);
      sub_10000607C(v27);
    }
  }

  else
  {
    v63 = a1;
    v64 = a7;
    v65 = a6;
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100938B20);
    (*(v15 + 16))(v22, a5, v14);
    v40 = a4;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68[0] = v62;
      *v43 = 136446722;
      v69 = v66;
      swift_getMetatypeMetadata();
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v68);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v43 + 4) = v47;
      *(v43 + 12) = 2114;
      *(v43 + 14) = v40;
      v55 = v61;
      *v61 = v40;
      *(v43 + 22) = 2048;
      v56 = v40;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v58 = v57;
      v59 = *(v15 + 8);
      v59(v18, v14);
      v59(v22, v14);
      *(v43 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s: Finished execution {templateObjectID: %{public}@, elapsedSeconds: %f}", v43, 0x20u);
      sub_1000050A4(v55, &unk_100938E70, &unk_100797230);

      sub_10000607C(v62);
    }

    else
    {

      (*(v15 + 8))(v22, v14);
    }

    v65(v63, v67 & 1);
  }
}

void sub_100130798(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkURLUUID:isa];
}

void sub_1001308D4(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void), uint64_t a9, unsigned __int8 a10, void **a11)
{
  v142 = a8;
  v143 = a7;
  v140 = a6;
  v144 = a11;
  v145 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v19 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v141 = &v132 - v22;
  __chkstk_darwin(v23, v24);
  v26 = &v132 - v25;
  if (a2)
  {
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_100938B20);
    (*(v16 + 16))(v19, v145, v15);
    v28 = a3;
    v29 = a4;
    sub_100138D40(a1, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v138 = v31;
      v33 = v32;
      v34 = swift_slowAlloc();
      v139 = a1;
      v35 = v34;
      v136 = v34;
      v140 = swift_slowAlloc();
      v152[0] = v140;
      *v33 = 136447234;
      aBlock = v144;
      swift_getMetatypeMetadata();
      v36 = String.init<A>(describing:)();
      v137 = v30;
      v38 = v37;
      v39 = sub_10000668C(v36, v37, v152);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v33 + 4) = v39;
      *(v33 + 12) = 2114;
      *(v33 + 14) = v28;
      *v35 = v28;
      a1 = v139;
      *(v33 + 22) = 2082;
      v47 = v28;
      v48 = [v29 recordName];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_10000668C(v49, v51, v152);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v33 + 24) = v52;
      *(v33 + 32) = 2082;
      swift_getErrorValue();
      v60 = Error.rem_errorDescription.getter();
      v62 = v61;
      v63 = sub_10000668C(v60, v61, v152);
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v33 + 34) = v63;
      *(v33 + 42) = 2048;
      v71 = v141;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v73 = v72;
      v74 = *(v16 + 8);
      v74(v71, v15);
      v74(v19, v15);
      v75 = v144;
      *(v33 + 44) = v73;
      v76 = v137;
      _os_log_impl(&_mh_execute_header, v137, v138, "%{public}s: Failed to delete content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v33, 0x34u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v19, v15);
      v75 = v144;
    }

    sub_1001302D8(a1, 1, v143, v28, v145, v142, a9, v75);
  }

  else
  {
    v139 = a9;
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v138 = a10;
    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_100938B20);
    v137 = *(v16 + 16);
    (v137)(v26, v145, v15);
    v78 = a3;
    v79 = a4;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v135 = v15;
      v84 = v83;
      v132 = v83;
      v136 = swift_slowAlloc();
      v152[0] = v136;
      *v82 = 136446978;
      aBlock = v144;
      swift_getMetatypeMetadata();
      v85 = String.init<A>(describing:)();
      v134 = v81;
      v87 = v86;
      v88 = sub_10000668C(v85, v86, v152);
      v133 = v80;
      v89 = v78;
      v90 = v88;
      v87, v91, v92, v93, v94, v95, v96, v97;
      *(v82 + 4) = v90;
      *(v82 + 12) = 2114;
      *(v82 + 14) = v89;
      *v84 = v89;
      v15 = v135;
      *(v82 + 22) = 2082;
      v98 = v89;
      v99 = [v79 recordName];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      v103 = sub_10000668C(v100, v102, v152);
      v102, v104, v105, v106, v107, v108, v109, v110;
      *(v82 + 24) = v103;
      *(v82 + 32) = 2048;
      v111 = v141;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v113 = v112;
      v114 = *(v16 + 8);
      v114(v111, v15);
      v114(v26, v15);
      v78 = v89;
      *(v82 + 34) = v113;
      v115 = v133;
      _os_log_impl(&_mh_execute_header, v133, v134, "%{public}s: Deleted content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, elapsedSeconds: %f}", v82, 0x2Au);
      sub_1000050A4(v132, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v26, v15);
      v111 = v141;
    }

    (v137)(v111, v145, v15);
    v116 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v117 = (v17 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    v120 = v140;
    *(v119 + 16) = v78;
    *(v119 + 24) = v120;
    (*(v16 + 32))(v119 + v116, v111, v15);
    v121 = v142;
    *(v119 + v117) = v143;
    v122 = (v119 + v118);
    v123 = v78;
    v124 = v139;
    *v122 = v121;
    v122[1] = v124;
    *(v119 + ((v118 + 23) & 0xFFFFFFFFFFFFFFF8)) = v144;
    if (v138)
    {
      v125 = swift_allocObject();
      *(v125 + 16) = sub_100138D58;
      *(v125 + 24) = v119;
      v150 = sub_1000529DC;
      v151 = v125;
      aBlock = _NSConcreteStackBlock;
      v147 = 1107296256;
      v148 = sub_10000F160;
      v149 = &unk_1008E5ED0;
      v126 = _Block_copy(&aBlock);
      v127 = v123;
      v128 = v120;

      [v128 performBlockAndWait:v126];

      _Block_release(v126);
      LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

      if ((v126 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v150 = sub_100138D58;
    v151 = v119;
    aBlock = _NSConcreteStackBlock;
    v147 = 1107296256;
    v148 = sub_100019200;
    v149 = &unk_1008E5E80;
    v129 = _Block_copy(&aBlock);
    v130 = v123;
    v131 = v120;

    [v131 performBlock:v129];

    _Block_release(v129);
  }
}

void sub_1001312B4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void *a7)
{
  v104 = a4;
  v105 = a7;
  v103 = a6;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v102 = &v95 - v18;
  __chkstk_darwin(v19, v20);
  v22 = &v95 - v21;
  sub_100138E04(a1, a2);
  v106 = 0;
  if ([a2 save:&v106])
  {
    v23 = qword_100935A98;
    v24 = v106;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100938B20);
    v26 = v12;
    v27 = *(v12 + 16);
    v101 = a3;
    v28 = a3;
    v29 = v11;
    v27(v22, v28, v11);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v98 = v32;
      v34 = v33;
      v35 = swift_slowAlloc();
      v100 = a5;
      v36 = v105;
      v37 = v35;
      v99 = swift_slowAlloc();
      v106 = v36;
      v107 = v99;
      *v34 = 136446722;
      swift_getMetatypeMetadata();
      v38 = String.init<A>(describing:)();
      v40 = v39;
      v41 = v26;
      v42 = sub_10000668C(v38, v39, &v107);
      v40, v43, v44, v45, v46, v47, v48, v49;
      *(v34 + 4) = v42;
      *(v34 + 12) = 2114;
      *(v34 + 14) = v30;
      *v37 = v30;
      *(v34 + 22) = 2048;
      v50 = v30;
      v51 = v102;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v53 = v52;
      v54 = *(v41 + 8);
      v54(v51, v29);
      v54(v22, v29);
      *(v34 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v31, v98, "%{public}s: Reset template's public link to nil {templateObjectID: %{public}@, elapsedSeconds: %f}", v34, 0x20u);
      sub_1000050A4(v37, &unk_100938E70, &unk_100797230);
      a5 = v100;

      sub_10000607C(v99);
    }

    else
    {

      (*(v12 + 8))(v22, v29);
    }

    sub_1001302D8(v30, 0, v104, v30, v101, a5, v103, v105);
  }

  else
  {
    v55 = v106;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_100938B20);
    v58 = v12;
    v59 = v11;
    (*(v12 + 16))(v15, a3, v11);
    v60 = a1;
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v100 = a5;
      v64 = v63;
      v65 = swift_slowAlloc();
      v101 = a3;
      v66 = v65;
      v97 = v65;
      v99 = swift_slowAlloc();
      v107 = v99;
      *v64 = 136446978;
      v106 = v105;
      swift_getMetatypeMetadata();
      v67 = String.init<A>(describing:)();
      v98 = v62;
      v69 = v68;
      v70 = sub_10000668C(v67, v68, &v107);
      v69, v71, v72, v73, v74, v75, v76, v77;
      *(v64 + 4) = v70;
      *(v64 + 12) = 2114;
      *(v64 + 14) = v60;
      *v66 = v60;
      *(v64 + 22) = 2082;
      swift_getErrorValue();
      v96 = v61;
      v78 = v60;
      v79 = Error.rem_errorDescription.getter();
      v81 = v80;
      v82 = sub_10000668C(v79, v80, &v107);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v64 + 24) = v82;
      a3 = v101;
      v90 = v102;
      *(v64 + 32) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v92 = v91;
      v93 = *(v58 + 8);
      v93(v90, v59);
      v93(v15, v59);
      *(v64 + 34) = v92;
      v94 = v96;
      _os_log_impl(&_mh_execute_header, v96, v98, "%{public}s: Failed to reset template's public link to nil {templateObjectID: %{public}@, error: %{public}s, elapsedSeconds: %f}", v64, 0x2Au);
      sub_1000050A4(v97, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      a5 = v100;
    }

    else
    {

      (*(v12 + 8))(v15, v59);
    }

    swift_errorRetain();
    sub_1001302D8(v56, 1, v104, v60, a3, a5, v103, v105);
  }
}

uint64_t sub_100131990()
{
  sub_10000607C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_100131A28(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkCreationDate:isa];
}

void sub_100131B98(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkExpirationDate:isa];
}

void sub_100131D08(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkLastModifiedDate:isa];
}

uint64_t sub_100131E78@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_100131F30(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentPublicLinkUpdateRequestDate:isa];
}

void sub_10013206C(NSURL *a1, uint64_t a2)
{
  v310 = a2;
  v3 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  __chkstk_darwin(v3 - 8, v4);
  v287 = &v283 - v5;
  v286 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v288 = *(v286 - 8);
  __chkstk_darwin(v286, v6);
  v283 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v285 = &v283 - v10;
  v11 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  __chkstk_darwin(v11 - 8, v12);
  v293 = &v283 - v13;
  v292 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v294 = *(v292 - 8);
  __chkstk_darwin(v292, v14);
  v289 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v291 = &v283 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v314 = v19;
  v315.super.isa = v20;
  __chkstk_darwin(v19, v21);
  v301 = &v283 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v304, v23);
  v305 = &v283 - v24;
  v309 = sub_1000F5104(&qword_100938C20, &qword_1007957A8);
  __chkstk_darwin(v309, v25);
  v27 = &v283 - v26;
  v312 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v28 = *(v312 - 8);
  __chkstk_darwin(v312, v29);
  v296 = &v283 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v283 - v33;
  __chkstk_darwin(v35, v36);
  v38 = &v283 - v37;
  __chkstk_darwin(v39, v40);
  v42 = &v283 - v41;
  __chkstk_darwin(v43, v44);
  v46 = &v283 - v45;
  __chkstk_darwin(v47, v48);
  v284 = &v283 - v49;
  __chkstk_darwin(v50, v51);
  v290 = &v283 - v52;
  __chkstk_darwin(v53, v54);
  v295 = &v283 - v55;
  __chkstk_darwin(v56, v57);
  v297 = &v283 - v58;
  __chkstk_darwin(v59, v60);
  v298 = &v283 - v61;
  __chkstk_darwin(v62, v63);
  v299 = &v283 - v64;
  __chkstk_darwin(v65, v66);
  v300 = &v283 - v67;
  __chkstk_darwin(v68, v69);
  v302 = &v283 - v70;
  __chkstk_darwin(v71, v72);
  v306 = &v283 - v73;
  __chkstk_darwin(v74, v75);
  v303 = &v283 - v76;
  __chkstk_darwin(v77, v78);
  v80 = &v283 - v79;
  v81 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  __chkstk_darwin(v81 - 8, v82);
  v308 = &v283 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84, v85);
  v87 = &v283 - v86;
  __chkstk_darwin(v88, v89);
  v311 = &v283 - v90;
  v307 = a1;
  v91 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v92)
  {
    v315._clients = 0;
    v315._reserved = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v281._object = 0x80000001007EC120;
    v281._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v281);
    v315._baseURL = v307;
    goto LABEL_164;
  }

  v99 = v91;
  v100 = v92;
  if (v91 == 0x6E6F697461657263 && v92 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v92, v93, v94, v95, v96, v97, v98;
    v101 = [v313 creationDate];
    if (v101)
    {
      v102 = v101;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v80, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v80, 1, 1, v314);
    }

LABEL_8:
    v103 = v311;
LABEL_9:
    v104 = v310;
    goto LABEL_10;
  }

  v127 = 0x80000001007E8D70;
  if (v99 == 0xD000000000000010 && 0x80000001007E8D70 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v127, v93, v94, v95, v96, v97, v98;
    v128 = [v313 lastModifiedDate];
    if (v128)
    {
      v129 = v128;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v46, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v46, 1, 1, v314);
    }

    v80 = v46;
    goto LABEL_8;
  }

  v149 = 0x80000001007955E0;
  v103 = v311;
  if (v99 == 0xD000000000000025 && 0x80000001007955E0 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v149, v93, v94, v95, v96, v97, v98;
    v150 = [v313 mostRecentPublicLinkUpdateRequestDate];
    if (v150)
    {
      v151 = v150;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v42, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v42, 1, 1, v314);
    }

    v80 = v42;
    goto LABEL_9;
  }

  v157 = 0x80000001007E8DC0;
  if (v99 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_66;
  }

  v164 = 0x8000000100795660;
  if (v99 == 0xD000000000000016 && 0x8000000100795660 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v164, v93, v94, v95, v96, v97, v98;
    v165 = [v313 publicLinkCreationDate];
    if (v165)
    {
      v166 = v165;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v38, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v38, 1, 1, v314);
    }

    v80 = v38;
    goto LABEL_9;
  }

  v169 = 0x80000001007956F0;
  if (v99 == 0xD000000000000018 && 0x80000001007956F0 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v169, v93, v94, v95, v96, v97, v98;
    v170 = [v313 publicLinkExpirationDate];
    v104 = v310;
    if (v170)
    {
      v171 = v170;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v34, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v34, 1, 1, v314);
    }

    v80 = v34;
LABEL_10:
    sub_100031B58(v80, v103, &unk_100938850, qword_100795AE0);
    v105 = *(v28 + 56);
    v106 = v312;
    v105(v103, 0, 1, v312);
    sub_100010364(v104, v87, &unk_100938850, qword_100795AE0);
    v105(v87, 0, 1, v106);
    v107 = *(v309 + 48);
    sub_100010364(v103, v27, &qword_100938BF0, &qword_100795768);
    sub_100010364(v87, &v27[v107], &qword_100938BF0, &qword_100795768);
    v108 = *(v28 + 48);
    if (v108(v27, 1, v106) == 1)
    {
      sub_1000050A4(v87, &qword_100938BF0, &qword_100795768);
      if (v108(&v27[v107], 1, v106) == 1)
      {
        sub_1000050A4(v103, &qword_100938BF0, &qword_100795768);
        v109 = v27;
LABEL_36:
        sub_1000050A4(v109, &qword_100938BF0, &qword_100795768);
        return;
      }

      goto LABEL_15;
    }

    v110 = v308;
    sub_100010364(v27, v308, &qword_100938BF0, &qword_100795768);
    if (v108(&v27[v107], 1, v106) == 1)
    {
      sub_1000050A4(v87, &qword_100938BF0, &qword_100795768);
      sub_1000050A4(v110, &unk_100938850, qword_100795AE0);
LABEL_15:
      sub_1000050A4(v27, &qword_100938C20, &qword_1007957A8);
      v112 = v314;
      isa = v315.super.isa;
      goto LABEL_16;
    }

    v130 = *(v304 + 48);
    v131 = v110;
    v132 = v305;
    sub_100010364(v131, v305, &unk_100938850, qword_100795AE0);
    sub_100031B58(&v27[v107], v132 + v130, &unk_100938850, qword_100795AE0);
    v112 = v314;
    isa = v315.super.isa;
    v133 = *(v315.super.isa + 6);
    if (v133(v132, 1, v314) == 1)
    {
      sub_1000050A4(v87, &qword_100938BF0, &qword_100795768);
      if (v133(v132 + v130, 1, v112) == 1)
      {
        sub_1000050A4(v132, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v308, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v27, &qword_100938BF0, &qword_100795768);
LABEL_35:
        v109 = v103;
        goto LABEL_36;
      }
    }

    else
    {
      v148 = v303;
      sub_100010364(v132, v303, &unk_100938850, qword_100795AE0);
      if (v133(v132 + v130, 1, v112) != 1)
      {
        v152 = v301;
        (*(isa + 4))(v301, v132 + v130, v112);
        sub_100029F48(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v153 = dispatch thunk of static Equatable.== infix(_:_:)();
        v154 = *(isa + 1);
        v154(v152, v112);
        sub_1000050A4(v87, &qword_100938BF0, &qword_100795768);
        v154(v148, v112);
        v104 = v310;
        sub_1000050A4(v132, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v308, &unk_100938850, qword_100795AE0);
        isa = v315.super.isa;
        sub_1000050A4(v27, &qword_100938BF0, &qword_100795768);
        v103 = v311;
        if (v153)
        {
          goto LABEL_35;
        }

LABEL_16:
        v113 = v307;
        v114 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v115)
        {
LABEL_162:
          v315._clients = 0;
          v315._reserved = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          v280._object = 0x80000001007EC120;
          v280._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v280);
          v315._baseURL = v113;
LABEL_164:
          sub_1000F5104(&qword_100938C08, &unk_10079B270);
          while (1)
          {
            _print_unlocked<A, B>(_:_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_166:
            v315._clients = 0;
            v315._reserved = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v282._object = 0x80000001007EC120;
            v282._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v282);
            v315._urlString = &v307->super.isa;
            sub_1000F5104(&qword_100938C08, &unk_10079B270);
          }
        }

        v122 = v114;
        v123 = v115;
        v124 = 0xEC00000065746144;
        if (v114 == 0x6E6F697461657263 && v123 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v124, v116, v117, v118, v119, v120, v121;
          v125 = v306;
          sub_100010364(v104, v306, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v125, 1, v112) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v125, v112);
          }

          v134 = v313;
          [v313 setCreationDate:v126];
LABEL_32:

          goto LABEL_33;
        }

        v146 = 0x80000001007E8D70;
        if (v122 == 0xD000000000000010 && 0x80000001007E8D70 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v146, v116, v117, v118, v119, v120, v121;
          v147 = v302;
          sub_100010364(v104, v302, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v147, 1, v112) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v147, v112);
          }

          v134 = v313;
          [v313 setLastModifiedDate:v126];
          goto LABEL_32;
        }

        v155 = 0x80000001007955E0;
        if (v122 == 0xD000000000000025 && 0x80000001007955E0 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v155, v116, v117, v118, v119, v120, v121;
          v156 = v300;
          sub_100010364(v104, v300, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v156, 1, v112) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v156, v112);
          }

          v134 = v313;
          [v313 setMostRecentPublicLinkUpdateRequestDate:v126];
          goto LABEL_32;
        }

        v160 = 0x80000001007E8DC0;
        if (v122 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v160, v116, v117, v118, v119, v120, v121;
          sub_100010364(v104, v299, &unk_100938850, qword_100795AE0);
          sub_1000F5104(&qword_100938C10, &unk_100795F30);
          if (swift_dynamicCast())
          {
            clients = v315._clients;
            reserved = v315._reserved;
            v134 = v313;
            if (v315._reserved >> 60 == 15)
            {
              v163 = 0;
            }

            else
            {
              sub_100029344(v315._clients, v315._reserved);
              v163 = Data._bridgeToObjectiveC()().super.isa;
              sub_100031A14(clients, reserved);
            }

            [v134 setPublicLinkConfigurationData:v163];

            sub_100031A14(clients, reserved);
          }

          else
          {
            v134 = v313;
          }

LABEL_33:
          v135 = [v134 createResolutionTokenMapIfNecessary];
          dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (v136)
          {
            v137 = v136;
            v138 = String._bridgeToObjectiveC()();
            v137, v139, v140, v141, v142, v143, v144, v145;
            [v135 updateForKey:v138];

            goto LABEL_35;
          }

          goto LABEL_162;
        }

        v167 = 0x8000000100795660;
        if (v122 == 0xD000000000000016 && 0x8000000100795660 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v167, v116, v117, v118, v119, v120, v121;
          v168 = v298;
          sub_100010364(v104, v298, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v168, 1, v112) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v168, v112);
          }

          v134 = v313;
          [v313 setPublicLinkCreationDate:v126];
          goto LABEL_32;
        }

        v172 = 0x80000001007956F0;
        if (v122 == 0xD000000000000018 && 0x80000001007956F0 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v172, v116, v117, v118, v119, v120, v121;
          v173 = v297;
          sub_100010364(v104, v297, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v173, 1, v112) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v173, v112);
          }

          v134 = v313;
          [v313 setPublicLinkExpirationDate:v126];
          goto LABEL_32;
        }

        v177 = 0x80000001007956A0;
        if (v122 == 0xD00000000000001ALL && 0x80000001007956A0 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v177, v116, v117, v118, v119, v120, v121;
          v178 = v295;
          sub_100010364(v104, v295, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v178, 1, v112) == 1)
          {
            v179 = 0;
          }

          else
          {
            v179 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v178, v112);
          }

          v134 = v313;
          [v313 setPublicLinkLastModifiedDate:v179];

          goto LABEL_133;
        }

        v215 = 0x80000001007955B0;
        if (v122 == 0xD000000000000011 && 0x80000001007955B0 == v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v123, v215, v116, v117, v118, v119, v120, v121;
          sub_100010364(v310, v290, &unk_100938850, qword_100795AE0);
          v216 = swift_dynamicCast();
          v217 = *(v294 + 56);
          v294 += 56;
          if (v216)
          {
            v218 = v293;
            v217(v293, 0, 1, v292);
            v219 = v218;
            v220 = v291;
            sub_100031B58(v219, v291, &unk_100939D90, "8\n\r");
            v221 = v289;
            sub_100010364(v220, v289, &unk_100939D90, "8\n\r");
            v222 = type metadata accessor for UUID();
            v223 = *(v222 - 8);
            v224 = 0;
            if ((*(v223 + 48))(v221, 1, v222) != 1)
            {
              v225 = v289;
              v224 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v223 + 8))(v225, v222);
            }

            v134 = v313;
            [v313 setPublicLinkURLUUID:v224];

            v226 = &unk_100939D90;
            v227 = "8\n\r";
            p_baseURL = &v316;
LABEL_141:
            sub_1000050A4(*(p_baseURL - 32), v226, v227);
LABEL_133:
            v113 = v307;
            v103 = v311;
            goto LABEL_33;
          }

          v229 = v293;
          v217(v293, 1, 1, v292);
          v230 = &qword_100938C00;
          v231 = &unk_100795780;
        }

        else
        {
          if (v122 == 0x694C656372756F73 && v123 == 0xEF4C525544497473)
          {
            0xEF4C525544497473, 0xEF4C525544497473, v116, v117, v118, v119, v120, v121;
          }

          else
          {
            v232 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v123, v233, v234, v235, v236, v237, v238, v239;
            if ((v232 & 1) == 0)
            {
              if (qword_100936140 != -1)
              {
                swift_once();
              }

              v251 = type metadata accessor for Logger();
              sub_100006654(v251, qword_100946F50);
              v252 = v313;

              v253 = Logger.logObject.getter();
              v254 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v253, v254))
              {
                v255 = swift_slowAlloc();
                v315._baseURL = swift_slowAlloc();
                *v255 = 136446466;
                v256 = [v252 remObjectID];
                v315._clients = v256;
                sub_1000F5104(&unk_10093AF40, &unk_100795790);
                v257 = Optional.descriptionOrNil.getter();
                v259 = v258;

                v260 = sub_10000668C(v257, v259, &v315._baseURL);
                v259, v261, v262, v263, v264, v265, v266, v267;
                *(v255 + 4) = v260;
                *(v255 + 12) = 2082;
                v268 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                if (!v269)
                {
                  goto LABEL_166;
                }

                v270 = v269;
                v271 = sub_10000668C(v268, v269, &v315._baseURL);
                v270, v272, v273, v274, v275, v276, v277, v278;
                *(v255 + 14) = v271;
                _os_log_impl(&_mh_execute_header, v253, v254, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v255, 0x16u);
                swift_arrayDestroy();
              }

              v109 = v311;
              goto LABEL_36;
            }
          }

          sub_100010364(v310, v284, &unk_100938850, qword_100795AE0);
          v240 = swift_dynamicCast();
          v241 = *(v288 + 56);
          v288 += 56;
          if (v240)
          {
            v242 = v287;
            v241(v287, 0, 1, v286);
            v243 = v242;
            v244 = v285;
            sub_100031B58(v243, v285, &unk_1009441F0, &qword_100795760);
            v245 = v283;
            sub_100010364(v244, v283, &unk_1009441F0, &qword_100795760);
            v246 = type metadata accessor for URL();
            v247 = *(v246 - 8);
            v248 = 0;
            if ((*(v247 + 48))(v245, 1, v246) != 1)
            {
              v249 = v283;
              URL._bridgeToObjectiveC()(&v315);
              v248 = v250;
              (*(v247 + 8))(v249, v246);
            }

            v134 = v313;
            [v313 setSourceListIDURL:v248];

            v226 = &unk_1009441F0;
            v227 = &qword_100795760;
            p_baseURL = &v315._baseURL;
            goto LABEL_141;
          }

          v229 = v287;
          v241(v287, 1, 1, v286);
          v230 = &qword_100938BE8;
          v231 = &qword_100795758;
        }

        sub_1000050A4(v229, v230, v231);
        v113 = v307;
        v134 = v313;
        v103 = v311;
        goto LABEL_33;
      }

      sub_1000050A4(v87, &qword_100938BF0, &qword_100795768);
      (*(isa + 1))(v148, v112);
      v103 = v311;
    }

    sub_1000050A4(v132, &qword_100938C18, &qword_1007957A0);
    sub_1000050A4(v308, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v27, &qword_100938BF0, &qword_100795768);
    goto LABEL_16;
  }

  v174 = 0x80000001007956A0;
  v104 = v310;
  if (v99 == 0xD00000000000001ALL && 0x80000001007956A0 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v100, v174, v93, v94, v95, v96, v97, v98;
    v175 = [v313 publicLinkLastModifiedDate];
    v80 = v296;
    if (v175)
    {
      v176 = v175;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v315.super.isa + 7))(v80, 0, 1, v314);
    }

    else
    {
      (*(v315.super.isa + 7))(v296, 1, 1, v314);
    }

    goto LABEL_10;
  }

  v157 = 0x80000001007955B0;
  if (v99 == 0xD000000000000011 && 0x80000001007955B0 == v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v157 = 0xEF4C525544497473, v99 == 0x694C656372756F73) && v100 == 0xEF4C525544497473)
  {
LABEL_66:
    v100, v157, v93, v94, v95, v96, v97, v98;
LABEL_67:
    v158 = v313;
    v159 = v307;

    sub_10043A8B0(v158, v159);
    return;
  }

  v180 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v100, v181, v182, v183, v184, v185, v186, v187;
  if (v180)
  {
    goto LABEL_67;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v188 = type metadata accessor for Logger();
  sub_100006654(v188, qword_100946F50);
  v189 = v313;

  v315.super.isa = Logger.logObject.getter();
  v190 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v315.super.isa, v190))
  {
    v191 = swift_slowAlloc();
    v315._baseURL = swift_slowAlloc();
    *v191 = 136446466;
    v192 = [v189 remObjectID];
    v315._clients = v192;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v193 = Optional.descriptionOrNil.getter();
    v195 = v194;

    v196 = sub_10000668C(v193, v195, &v315._baseURL);
    v195, v197, v198, v199, v200, v201, v202, v203;
    *(v191 + 4) = v196;
    *(v191 + 12) = 2082;
    v204 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v205)
    {
      goto LABEL_166;
    }

    v206 = v205;
    v207 = sub_10000668C(v204, v205, &v315._baseURL);
    v206, v208, v209, v210, v211, v212, v213, v214;
    *(v191 + 14) = v207;
    _os_log_impl(&_mh_execute_header, v315.super.isa, v190, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v191, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v279 = v315.super.isa;
  }
}