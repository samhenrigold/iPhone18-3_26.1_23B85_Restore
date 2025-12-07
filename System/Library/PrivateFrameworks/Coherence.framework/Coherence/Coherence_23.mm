BOOL TaggedValue_8.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 9;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_8.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v10[0] = a1[1];
  v10[1] = v4;
  v5 = a1[4];
  v10[2] = a1[3];
  v10[3] = v5;
  v6 = a1[6];
  v10[4] = a1[5];
  v10[5] = v6;
  v7 = a1[8];
  v10[6] = a1[7];
  v10[7] = v7;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v10);
  return (*(*(v8 - 8) + 16))(a2, v2, v8);
}

uint64_t TaggedValue_8.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v10[0] = a2[1];
  v10[1] = v4;
  v5 = a2[4];
  v10[2] = a2[3];
  v10[3] = v5;
  v6 = a2[6];
  v10[4] = a2[5];
  v10[5] = v6;
  v7 = a2[8];
  v10[6] = a2[7];
  v10[7] = v7;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v10);
  return (*(*(v8 - 8) + 40))(v2, a1, v8);
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v15 = *a2;
  *a9 = a1;
  a9[1] = v15;
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  type metadata accessor for TaggedValue_8.TaggedEnum(0, v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v21 = a1[1];
  v22[0] = v21;
  v6 = a1[3];
  v7 = a1[4];
  v22[1] = v5;
  v22[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v22[3] = v7;
  v22[4] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v22[5] = v9;
  v22[6] = v10;
  v22[7] = v11;
  v12 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v22);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-1] - v15;
  (*(v13 + 16))(&v22[-1] - v15, v3, v12, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v13 + 8))(v16, v12);
    v17 = v21;
    v18 = *(v21 - 8);
    v19 = 1;
  }

  else
  {
    v18 = *(v21 - 8);
    (*(v18 + 32))(a2, v16);
    v17 = v21;
    v19 = 0;
  }

  return (*(v18 + 56))(a2, v19, 1, v17);
}

uint64_t TaggedValue_8.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 136);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = v5;
  v6 = type metadata accessor for TaggedValue_8.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_8.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v20 = a1[2];
  v21[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v21[1] = v20;
  v21[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v21[3] = v7;
  v21[4] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v21[5] = v9;
  v21[6] = v10;
  v21[7] = v11;
  v12 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v21);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21[-1] - v15;
  (*(v13 + 16))(&v21[-1] - v15, v3, v12, v14);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(v20 - 8);
    (*(v17 + 32))(a2, v16);
    v18 = 0;
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v17 = *(v20 - 8);
    v18 = 1;
  }

  return (*(v17 + 56))(a2, v18, 1, v20);
}

uint64_t TaggedValue_8.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 136);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = v5;
  v7 = type metadata accessor for TaggedValue_8.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_8.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v5;
  v6 = a1[4];
  v17 = a1[3];
  v18[2] = v17;
  v18[3] = v6;
  v7 = a1[6];
  v18[4] = a1[5];
  v18[5] = v7;
  v8 = a1[8];
  v18[6] = a1[7];
  v18[7] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_8.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 136);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v18 = v5;
  v16 = *(a1 + 56);
  v19 = v16;
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = v6;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_8.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v5;
  v6 = a1[4];
  v18[2] = a1[3];
  v18[3] = v6;
  v17 = v6;
  v7 = a1[6];
  v18[4] = a1[5];
  v18[5] = v7;
  v8 = a1[8];
  v18[6] = a1[7];
  v18[7] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_8.tagged8.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 136);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v17[2] = *(a1 + 48);
  v18 = v5;
  v16 = *(a1 + 72);
  v19 = v16;
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = v6;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_8.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[0] = a1[1];
  v16[1] = v5;
  v6 = a1[4];
  v16[2] = a1[3];
  v16[3] = v6;
  v7 = a1[6];
  v16[4] = a1[5];
  v16[5] = v7;
  v8 = a1[8];
  v16[6] = a1[7];
  v16[7] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  (*(v10 + 16))(v16 - v12, v3, v9, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v15 = *(v13 + 1);
  }

  else
  {
    result = (*(v10 + 8))(v13, v9);
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

void TaggedValue_8.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v77 = *(*(a2 + 72) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v76 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(*(v3 + 64) - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(*(v6 + 56) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v70 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(*(v9 + 48) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 40);
  v86 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v85 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v83 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 24);
  v82 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v80 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v79 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v28[10];
  v29 = v28[11];
  v32 = v28[12];
  v31 = v28[13];
  v33 = v28[14];
  v34 = v28[15];
  v36 = v28[16];
  v35 = v28[17];
  *&v37 = v24;
  *(&v37 + 1) = v20;
  *&v38 = v16;
  v81 = v39;
  *(&v38 + 1) = v39;
  v89[1] = v38;
  v89[0] = v37;
  v69 = v40;
  *&v37 = v40;
  v72 = v41;
  *(&v37 + 1) = v41;
  v75 = v42;
  *&v38 = v42;
  v78 = v43;
  *(&v38 + 1) = v43;
  v90 = v38;
  v89[2] = v37;
  v91[0] = v30;
  v91[1] = v29;
  v91[2] = v32;
  v91[3] = v31;
  v65[3] = v33;
  v91[4] = v33;
  v91[5] = v34;
  v65[2] = v34;
  v65[1] = v36;
  v91[6] = v36;
  v91[7] = v35;
  v66 = v35;
  v44 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v89);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = v65 - v46;
  (*(v48 + 16))(v65 - v46, v87, v44, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v58 = v68;
        v59 = v67;
        v16 = v69;
        (*(v68 + 32))(v67, v47, v69);
        v61 = v91;
      }

      else
      {
        v58 = v71;
        v59 = v70;
        v16 = v72;
        (*(v71 + 32))(v70, v47, v72);
        v61 = &v90 + 8;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v50 = v77;
          v51 = v76;
          v52 = v78;
          (*(v77 + 32))(v76, v47, v78);
          (*(*(v66 + 8) + 48))(v88, v52);
          (*(v50 + 8))(v51, v52);
        }

        else
        {
          (*(**(v47 + 1) + 120))(v88);
        }

        return;
      }

      v58 = v74;
      v59 = v73;
      v16 = v75;
      (*(v74 + 32))(v73, v47, v75);
      v61 = &v90;
    }

    v60 = *(*(v61 - 32) + 8);
LABEL_20:
    (*(v60 + 48))(v88, v16);
    (*(v58 + 8))(v59, v16);
    return;
  }

  v87 = v31;
  v53 = v20;
  v54 = v85;
  v55 = v86;
  v56 = v81;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v86 + 32))(v85, v47, v81);
      (*(*(v87 + 8) + 48))(v88, v56);
      (*(v55 + 8))(v54, v56);
      return;
    }

    v58 = v84;
    v59 = v83;
    (*(v84 + 32))(v83, v47, v16);
    v60 = *(v32 + 8);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v62 = v82;
    v63 = v80;
    v64 = v53;
    (*(v82 + 32))(v80, v47, v53);
    (*(*(v29 + 8) + 48))(v88, v64);
    (*(v62 + 8))(v63, v64);
  }

  else
  {
    v57 = v79;
    (*(v79 + 32))(v27, v47, v24);
    (*(*(v30 + 8) + 48))(v88, v24);
    (*(v57 + 8))(v27, v24);
  }
}

uint64_t TaggedValue_8.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v182 = a1;
  v183 = a3;
  v159 = *(*(a2 + 72) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v160 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v158 = &v145 - v5;
  v156 = *(*(v6 + 64) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v157 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v145 - v10;
  v153 = *(*(v11 + 56) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v145 - v15;
  v17 = *(v16 + 48);
  v150 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v145 - v20;
  v164 = *(*(v21 + 40) - 8);
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v145 - v25;
  v163 = *(*(v27 + 32) - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v145 - v32;
  v161 = *(*(v34 + 24) - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v145 - v39;
  v42 = *(*(v41 + 16) - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v145 - v47;
  v50 = v49[10];
  v51 = v49[11];
  v52 = v49[12];
  v53 = v49[13];
  v54 = v49[14];
  v55 = v49[15];
  v57 = v49[16];
  v56 = v49[17];
  v165 = v58;
  *&v59 = v58;
  v166 = v60;
  *(&v59 + 1) = v60;
  v167 = v61;
  *&v62 = v61;
  v168 = v63;
  *(&v62 + 1) = v63;
  v147 = v62;
  v185 = v62;
  v148 = v59;
  v184 = v59;
  v169 = v64;
  *&v59 = v64;
  v171 = v65;
  *(&v59 + 1) = v65;
  v172 = v66;
  *&v62 = v66;
  v170 = v67;
  *(&v62 + 1) = v67;
  v145 = v62;
  v187 = v62;
  v146 = v59;
  v186 = v59;
  v180 = v51;
  v181 = v50;
  v188 = v50;
  v189 = v51;
  v179 = v52;
  v190 = v52;
  v191 = v53;
  v178 = v53;
  v177 = v54;
  v192 = v54;
  v193 = v55;
  v176 = v55;
  v175 = v57;
  v194 = v57;
  v195 = v56;
  v174 = v56;
  v68 = type metadata accessor for TaggedValue_8.TaggedEnum(0, &v184);
  v69 = MEMORY[0x1EEE9AC00](v68);
  v71 = &v145 - v70;
  (*(v72 + 16))(&v145 - v70, v173, v68, v69);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v80 = v33;
    v81 = v163;
    v82 = v162;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v85 = v80;
        v86 = v167;
        (*(v163 + 32))(v80, v71, v167);
        v87 = v179;
        (*(*(v179 + 8) + 24))(v182, v86);
        (*(v81 + 8))(v85, v86);
        *(&v139 + 1) = v175;
        *&v139 = v176;
        *(&v131 + 1) = v177;
        *(&v123 + 1) = v87;
        *&v131 = v178;
        *&v123 = v180;
        *(&v115 + 1) = v181;
        *&v115 = v170;
        return TaggedValue_8.init(_:)(v30, v165, v166, v86, v168, v169, v171, v172, v183, v115, v123, v131, v139, v174);
      }

      else
      {
        v101 = v164;
        v102 = v26;
        v103 = v26;
        v104 = v168;
        (*(v164 + 32))(v103, v71, v168);
        v105 = v178;
        (*(*(v178 + 8) + 24))(v182, v104);
        (*(v101 + 8))(v102, v104);
        *(&v143 + 1) = v175;
        *&v143 = v176;
        *&v135 = v105;
        *(&v135 + 1) = v177;
        *(&v127 + 1) = v179;
        *&v127 = v180;
        *(&v119 + 1) = v181;
        *&v119 = v170;
        return TaggedValue_8.init(_:)(v82, v165, v166, v167, v104, v169, v171, v172, v183, v119, v127, v135, v143, v174);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v98 = v161;
      v99 = v166;
      (*(v161 + 32))(v40, v71, v166);
      v100 = v180;
      (*(*(v180 + 8) + 24))(v182, v99);
      (*(v98 + 8))(v40, v99);
      *(&v142 + 1) = v175;
      *&v142 = v176;
      *(&v134 + 1) = v177;
      *&v134 = v178;
      *&v126 = v100;
      *(&v126 + 1) = v179;
      *(&v118 + 1) = v181;
      *&v118 = v170;
      return TaggedValue_8.init(_:)(v37, v165, v99, v167, v168, v169, v171, v172, v183, v118, v126, v134, v142, v174);
    }

    else
    {
      v83 = v165;
      (*(v42 + 32))(v48, v71, v165);
      v84 = v181;
      (*(*(v181 + 8) + 24))(v182, v83);
      (*(v42 + 8))(v48, v83);
      *(&v138 + 1) = v175;
      *&v138 = v176;
      *(&v130 + 1) = v177;
      *&v130 = v178;
      *(&v122 + 1) = v179;
      *(&v114 + 1) = v84;
      *&v122 = v180;
      *&v114 = v170;
      return TaggedValue_8.init(_:)(v45, v83, v166, v167, v168, v169, v171, v172, v183, v114, v122, v130, v138, v174);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v88 = v150;
      v89 = v149;
      v90 = v169;
      (*(v150 + 32))(v149, v71, v169);
      v91 = v177;
      v92 = v151;
      (*(*(v177 + 8) + 24))(v182, v90);
      (*(v88 + 8))(v89, v90);
      *(&v140 + 1) = v175;
      *(&v132 + 1) = v91;
      *&v140 = v176;
      *&v132 = v178;
      *(&v124 + 1) = v179;
      *&v124 = v180;
      *(&v116 + 1) = v181;
      *&v116 = v170;
      return TaggedValue_8.init(_:)(v92, v165, v166, v167, v168, v90, v171, v172, v183, v116, v124, v132, v140, v174);
    }

    else
    {
      v109 = v153;
      v110 = v152;
      v111 = v171;
      (*(v153 + 32))(v152, v71, v171);
      v112 = v176;
      v113 = v154;
      (*(*(v176 + 8) + 24))(v182, v111);
      (*(v109 + 8))(v110, v111);
      *&v144 = v112;
      *(&v144 + 1) = v175;
      *(&v136 + 1) = v177;
      *&v136 = v178;
      *(&v128 + 1) = v179;
      *&v128 = v180;
      *(&v120 + 1) = v181;
      *&v120 = v170;
      return TaggedValue_8.init(_:)(v113, v165, v166, v167, v168, v169, v111, v172, v183, v120, v128, v136, v144, v174);
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v93 = v156;
    v94 = v155;
    v95 = v172;
    (*(v156 + 32))(v155, v71, v172);
    v96 = v175;
    v97 = v157;
    (*(*(v175 + 8) + 24))(v182, v95);
    (*(v93 + 8))(v94, v95);
    *(&v141 + 1) = v96;
    *&v141 = v176;
    *(&v133 + 1) = v177;
    *&v133 = v178;
    *(&v125 + 1) = v179;
    *&v125 = v180;
    *(&v117 + 1) = v181;
    *&v117 = v170;
    return TaggedValue_8.init(_:)(v97, v165, v166, v167, v168, v169, v171, v95, v183, v117, v125, v133, v141, v174);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v74 = v159;
    v75 = v158;
    v76 = v170;
    (*(v159 + 32))(v158, v71, v170);
    v77 = v174;
    v78 = v160;
    (*(*(v174 + 8) + 24))(v182, v76);
    (*(v74 + 8))(v75, v76);
    *(&v137 + 1) = v176;
    *&v137 = v177;
    *(&v129 + 1) = v178;
    *&v129 = v179;
    *(&v121 + 1) = v180;
    *&v121 = v181;
    return TaggedValue_8.init(_:)(v78, v165, v166, v167, v168, v169, v171, v172, v183, v76, v121, v129, v137, v175, v77);
  }

  else
  {
    v106 = *v71;
    v107 = (*(**(v71 + 1) + 104))(v182);

    v108 = v183;
    *v183 = v106;
    v108[1] = v107;
    v185 = v147;
    v184 = v148;
    v187 = v145;
    v186 = v146;
    v188 = v181;
    v189 = v180;
    v190 = v179;
    v191 = v178;
    v192 = v177;
    v193 = v176;
    v194 = v175;
    v195 = v174;
    type metadata accessor for TaggedValue_8.TaggedEnum(0, &v184);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t TaggedValue_8.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v325 = a2;
  v343 = a1;
  v339 = a4;
  v5 = a3[9];
  v340 = a3[17];
  v304 = *(v340 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v258 = sub_1AE23D7CC();
  v257 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v305 = &v235 - v7;
  v306 = AssociatedTypeWitness;
  v303 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v256 = &v235 - v9;
  v323 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v301 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v300 = &v235 - v13;
  *&v338 = a3[16];
  v14 = a3[8];
  v297 = *(v338 + 8);
  v15 = swift_getAssociatedTypeWitness();
  v255 = sub_1AE23D7CC();
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v299 = &v235 - v16;
  v302 = v15;
  v298 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v253 = &v235 - v18;
  v321 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v295 = &v235 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v294 = &v235 - v22;
  *&v337 = a3[15];
  v23 = a3[7];
  v291 = *(v337 + 8);
  v24 = swift_getAssociatedTypeWitness();
  v252 = sub_1AE23D7CC();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v293 = &v235 - v25;
  v296 = v24;
  v292 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v250 = &v235 - v27;
  v319 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v289 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v288 = &v235 - v31;
  *&v336 = a3[14];
  v32 = a3[6];
  v285 = *(v336 + 8);
  v33 = swift_getAssociatedTypeWitness();
  v249 = sub_1AE23D7CC();
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v287 = &v235 - v34;
  v290 = v33;
  v286 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v235 - v36;
  v317 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v284 = &v235 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v283 = &v235 - v40;
  v318 = v32;
  *&v41 = v32;
  v320 = v23;
  *(&v41 + 1) = v23;
  v342 = v41;
  v42 = a3[5];
  v322 = v14;
  *&v41 = v14;
  v324 = v5;
  *(&v41 + 1) = v5;
  v341 = v41;
  *&v335 = a3[13];
  v278 = *(v335 + 8);
  v43 = swift_getAssociatedTypeWitness();
  v246 = sub_1AE23D7CC();
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v280 = &v235 - v44;
  v282 = v43;
  v281 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v244 = &v235 - v46;
  v328 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v277 = &v235 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v276 = &v235 - v50;
  v51 = a3[12];
  v52 = a3[4];
  v273 = *(v51 + 8);
  v53 = swift_getAssociatedTypeWitness();
  v243 = sub_1AE23D7CC();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v275 = &v235 - v54;
  v279 = v53;
  v274 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v241 = &v235 - v56;
  v327 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v271 = &v235 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v270 = &v235 - v60;
  v61 = a3[11];
  v62 = a3[3];
  v267 = *(v61 + 8);
  v63 = swift_getAssociatedTypeWitness();
  v240 = sub_1AE23D7CC();
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v269 = &v235 - v64;
  v272 = v63;
  v268 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v238 = &v235 - v66;
  v313 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v266 = &v235 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v265 = &v235 - v70;
  v71 = a3[10];
  v72 = a3[2];
  v261 = *(v71 + 8);
  v73 = swift_getAssociatedTypeWitness();
  v237 = sub_1AE23D7CC();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v263 = &v235 - v74;
  v264 = v73;
  v262 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v235 = &v235 - v76;
  v307 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v260 = &v235 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v259 = &v235 - v80;
  v326 = v72;
  *&v81 = v72;
  v314 = v62;
  *(&v81 + 1) = v62;
  v315 = v52;
  *&v82 = v52;
  v316 = v42;
  *(&v82 + 1) = v42;
  v333 = v82;
  v345 = v82;
  v334 = v81;
  v344 = v81;
  v347 = v341;
  v346 = v342;
  *&v82 = v71;
  *(&v82 + 1) = v61;
  *&v83 = v51;
  *(&v83 + 1) = v335;
  *&v81 = v336;
  *(&v81 + 1) = v337;
  v335 = v83;
  v349 = v83;
  v336 = v82;
  v348 = v82;
  *&v82 = v338;
  *(&v82 + 1) = v340;
  v337 = v82;
  v351 = v82;
  v338 = v81;
  v350 = v81;
  v84 = type metadata accessor for TaggedValue_8.TaggedEnum(0, &v344);
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v311 = &v235 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v312 = &v235 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v310 = &v235 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v309 = &v235 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v308 = &v235 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v235 - v96;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v235 - v99;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v235 - v102;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v235 - v105;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v331 = *(TupleTypeMetadata2 - 8);
  v108 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v110 = &v235 - v109;
  v330 = v111;
  v112 = &v235 + *(v111 + 48) - v109;
  v329 = v85;
  v113 = *(v85 + 16);
  v113(&v235 - v109, v332, v84, v108);
  v114 = v112;
  (v113)(v112, v343, v84);
  v340 = v110;
  v343 = v84;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v151 = v310;
        v116 = v340;
        (v113)(v310, v340, v343);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v152 = v321;
          v153 = *(v321 + 32);
          v154 = v294;
          v155 = v322;
          v153(v294, v151, v322);
          v156 = v295;
          v153(v295, v114, v155);
          v157 = v299;
          (*(v297 + 40))(v156, v325, v155);
          v158 = *(v152 + 8);
          v158(v156, v155);
          v158(v154, v155);
          v159 = v298;
          v160 = v302;
          if ((*(v298 + 48))(v157, 1, v302) == 1)
          {
            (*(v254 + 8))(v157, v255);
            goto LABEL_49;
          }

          v211 = *(v159 + 32);
          v212 = v253;
          v211(v253, v157, v160);
          v213 = v339;
          v211(v339, v212, v160);
          v345 = v333;
          v344 = v334;
          v347 = v341;
          v346 = v342;
          v349 = v335;
          v348 = v336;
          v351 = v337;
          v350 = v338;
          v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
          goto LABEL_63;
        }

        v196 = *(v321 + 8);
        v197 = v151;
        v198 = &v345;
      }

      else
      {
        v116 = v340;
        if (EnumCaseMultiPayload != 7)
        {
          v182 = v311;
          (v113)(v311, v340, v343);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            v183 = *v182;
            v184 = *v114;

            if (v183 == v184)
            {
              v344 = v334;
              v345 = v333;
              v346 = v342;
              v347 = v341;
              v348 = v336;
              v349 = v335;
              v350 = v338;
              v351 = v337;
LABEL_50:
              v210 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
              (*(*(v210 - 8) + 56))(v339, 1, 1, v210);
LABEL_64:
              v201 = &v348 + 8;
              goto LABEL_65;
            }

            v344 = v334;
            v345 = v333;
            v346 = v342;
            v347 = v341;
            v348 = v336;
            v349 = v335;
            v350 = v338;
            v351 = v337;
            v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
            v213 = v339;
            goto LABEL_63;
          }

          goto LABEL_44;
        }

        v117 = v312;
        (v113)(v312, v340, v343);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v118 = v323;
          v119 = *(v323 + 32);
          v120 = v300;
          v121 = v324;
          v119(v300, v117, v324);
          v122 = v301;
          v119(v301, v114, v121);
          v123 = v305;
          (*(v304 + 40))(v122, v325, v121);
          v124 = *(v118 + 8);
          v124(v122, v121);
          v124(v120, v121);
          v125 = v303;
          v126 = v306;
          if ((*(v303 + 48))(v123, 1, v306) == 1)
          {
            (*(v257 + 8))(v123, v258);
LABEL_49:
            v345 = v333;
            v344 = v334;
            v347 = v341;
            v346 = v342;
            v349 = v335;
            v348 = v336;
            v351 = v337;
            v350 = v338;
            goto LABEL_50;
          }

          v226 = *(v125 + 32);
          v227 = v256;
          v226(v256, v123, v126);
          v213 = v339;
          v226(v339, v227, v126);
          v345 = v333;
          v344 = v334;
          v347 = v341;
          v346 = v342;
          v349 = v335;
          v348 = v336;
          v351 = v337;
          v350 = v338;
          v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
          goto LABEL_63;
        }

        v196 = *(v323 + 8);
        v197 = v117;
        v198 = &v346;
      }

      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v141 = v308;
      v116 = v340;
      (v113)(v308, v340, v343);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v142 = v317;
        v143 = *(v317 + 32);
        v144 = v283;
        v145 = v318;
        v143(v283, v141, v318);
        v146 = v284;
        v143(v284, v114, v145);
        v147 = v287;
        (*(v285 + 40))(v146, v325, v145);
        v148 = *(v142 + 8);
        v148(v146, v145);
        v148(v144, v145);
        v149 = v286;
        v150 = v290;
        if ((*(v286 + 48))(v147, 1, v290) == 1)
        {
          (*(v248 + 8))(v147, v249);
          goto LABEL_49;
        }

        v228 = *(v149 + 32);
        v229 = v247;
        v228(v247, v147, v150);
        v213 = v339;
        v228(v339, v229, v150);
        v345 = v333;
        v344 = v334;
        v347 = v341;
        v346 = v342;
        v349 = v335;
        v348 = v336;
        v351 = v337;
        v350 = v338;
        v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
LABEL_63:
        swift_storeEnumTagMultiPayload();
        (*(*(v214 - 8) + 56))(v213, 0, 1, v214);
        goto LABEL_64;
      }

      v196 = *(v317 + 8);
      v197 = v141;
      v198 = &v342 + 1;
LABEL_43:
      v196(v197, *(v198 - 32));
      goto LABEL_44;
    }

    v185 = v309;
    (v113)(v309, v340, v343);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v319 + 8))(v185, v320);
      v199 = v339;
      v116 = v340;
      goto LABEL_45;
    }

    v186 = v319;
    v187 = *(v319 + 32);
    v188 = v288;
    v189 = v320;
    v187(v288, v185, v320);
    v190 = v289;
    v187(v289, v114, v189);
    v191 = v293;
    (*(v291 + 40))(v190, v325, v189);
    v192 = *(v186 + 8);
    v192(v190, v189);
    v192(v188, v189);
    v193 = v292;
    v194 = v296;
    if ((*(v292 + 48))(v191, 1, v296) == 1)
    {
      (*(v251 + 8))(v191, v252);
      goto LABEL_35;
    }

    v230 = *(v193 + 32);
    v231 = v250;
    v230(v250, v191, v194);
    v217 = v339;
    v230(v339, v231, v194);
    v345 = v333;
    v344 = v334;
    v347 = v341;
    v346 = v342;
    v349 = v335;
    v348 = v336;
    v351 = v337;
    v350 = v338;
    v218 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
    goto LABEL_60;
  }

  v127 = v100;
  v128 = v326;
  v129 = v327;
  v130 = v328;
  if (EnumCaseMultiPayload <= 1)
  {
    v116 = v340;
    if (!EnumCaseMultiPayload)
    {
      (v113)(v106, v340, v343);
      if (!swift_getEnumCaseMultiPayload())
      {
        v202 = v307;
        v203 = *(v307 + 32);
        v204 = v259;
        v203(v259, v106, v128);
        v205 = v260;
        v203(v260, v114, v128);
        v206 = v263;
        (*(v261 + 40))(v205, v325, v128);
        v207 = *(v202 + 8);
        v207(v205, v128);
        v207(v204, v128);
        v208 = v262;
        v209 = v264;
        if ((*(v262 + 48))(v206, 1, v264) == 1)
        {
          (*(v236 + 8))(v206, v237);
          goto LABEL_49;
        }

        v232 = *(v208 + 32);
        v233 = v235;
        v232(v235, v206, v209);
        v213 = v339;
        v232(v339, v233, v209);
        v345 = v333;
        v344 = v334;
        v347 = v341;
        v346 = v342;
        v349 = v335;
        v348 = v336;
        v351 = v337;
        v350 = v338;
        v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
        goto LABEL_63;
      }

      (*(v307 + 8))(v106, v128);
      goto LABEL_44;
    }

    (v113)(v103, v340, v343);
    v161 = v114;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v162 = v313;
      v163 = *(v313 + 32);
      v164 = v265;
      v165 = v314;
      v163(v265, v103, v314);
      v166 = v266;
      v163(v266, v161, v165);
      v167 = v269;
      (*(v267 + 40))(v166, v325, v165);
      v168 = *(v162 + 8);
      v168(v166, v165);
      v168(v164, v165);
      v169 = v268;
      v170 = v272;
      if ((*(v268 + 48))(v167, 1, v272) == 1)
      {
        (*(v239 + 8))(v167, v240);
        goto LABEL_49;
      }

      v219 = *(v169 + 32);
      v220 = v238;
      v219(v238, v167, v170);
      v213 = v339;
      v219(v339, v220, v170);
      v345 = v333;
      v344 = v334;
      v347 = v341;
      v346 = v342;
      v349 = v335;
      v348 = v336;
      v351 = v337;
      v350 = v338;
      v214 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
      goto LABEL_63;
    }

    v196 = *(v313 + 8);
    v197 = v103;
    v198 = &v340;
    goto LABEL_43;
  }

  v131 = v340;
  if (EnumCaseMultiPayload == 2)
  {
    v132 = v127;
    (v113)(v127, v340, v343);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v116 = v131;
      (*(v129 + 8))(v132, v315);
LABEL_44:
      v199 = v339;
      goto LABEL_45;
    }

    v133 = *(v129 + 32);
    v134 = v270;
    v135 = v315;
    v133(v270, v132, v315);
    v136 = v271;
    v133(v271, v114, v135);
    v137 = v275;
    (*(v273 + 40))(v136, v325, v135);
    v138 = *(v129 + 8);
    v138(v136, v135);
    v138(v134, v135);
    v139 = v274;
    v140 = v279;
    if ((*(v274 + 48))(v137, 1, v279) == 1)
    {
      (*(v242 + 8))(v137, v243);
LABEL_35:
      v345 = v333;
      v344 = v334;
      v347 = v341;
      v346 = v342;
      v349 = v335;
      v348 = v336;
      v351 = v337;
      v350 = v338;
      v195 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
      (*(*(v195 - 8) + 56))(v339, 1, 1, v195);
LABEL_61:
      v225 = v329;
      v116 = v340;
      return (*(v225 + 8))(v116, v343);
    }

    v215 = *(v139 + 32);
    v216 = v241;
    v215(v241, v137, v140);
    v217 = v339;
    v215(v339, v216, v140);
    v345 = v333;
    v344 = v334;
    v347 = v341;
    v346 = v342;
    v349 = v335;
    v348 = v336;
    v351 = v337;
    v350 = v338;
    v218 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
LABEL_60:
    swift_storeEnumTagMultiPayload();
    (*(*(v218 - 8) + 56))(v217, 0, 1, v218);
    goto LABEL_61;
  }

  v171 = v340;
  (v113)(v97, v340, v343);
  v172 = v114;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v130 + 8))(v97, v316);
    v199 = v339;
    v116 = v171;
LABEL_45:
    v344 = v334;
    v345 = v333;
    v346 = v342;
    v347 = v341;
    v348 = v336;
    v349 = v335;
    v350 = v338;
    v351 = v337;
    v200 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
    swift_storeEnumTagMultiPayload();
    (*(*(v200 - 8) + 56))(v199, 0, 1, v200);
    v343 = v330;
    v201 = &v349 + 8;
LABEL_65:
    v225 = *(v201 - 32);
    return (*(v225 + 8))(v116, v343);
  }

  v173 = *(v130 + 32);
  v174 = v276;
  v175 = v316;
  v173(v276, v97, v316);
  v176 = v277;
  v173(v277, v172, v175);
  v177 = v280;
  (*(v278 + 40))(v176, v325, v175);
  v178 = *(v130 + 8);
  v178(v176, v175);
  v178(v174, v175);
  v179 = v281;
  v180 = v282;
  if ((*(v281 + 48))(v177, 1, v282) == 1)
  {
    (*(v245 + 8))(v177, v246);
    v345 = v333;
    v344 = v334;
    v347 = v341;
    v346 = v342;
    v349 = v335;
    v348 = v336;
    v351 = v337;
    v350 = v338;
    v181 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
    (*(*(v181 - 8) + 56))(v339, 1, 1, v181);
  }

  else
  {
    v221 = *(v179 + 32);
    v222 = v244;
    v221(v244, v177, v180);
    v223 = v339;
    v221(v339, v222, v180);
    v345 = v333;
    v344 = v334;
    v347 = v341;
    v346 = v342;
    v349 = v335;
    v348 = v336;
    v351 = v337;
    v350 = v338;
    v224 = type metadata accessor for TaggedValue_8.ObservableDifference(0, &v344);
    swift_storeEnumTagMultiPayload();
    (*(*(v224 - 8) + 56))(v223, 0, 1, v224);
  }

  v225 = v329;
  v116 = v171;
  return (*(v225 + 8))(v116, v343);
}

BOOL TaggedValue_9.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 10;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_9.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v10[0] = a1[1];
  v10[1] = v4;
  v5 = a1[4];
  v10[2] = a1[3];
  v10[3] = v5;
  v6 = a1[6];
  v10[4] = a1[5];
  v10[5] = v6;
  v7 = a1[8];
  v10[6] = a1[7];
  v10[7] = v7;
  v10[8] = a1[9];
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v10);
  return (*(*(v8 - 8) + 16))(a2, v2, v8);
}

uint64_t TaggedValue_9.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v10[0] = a2[1];
  v10[1] = v4;
  v5 = a2[4];
  v10[2] = a2[3];
  v10[3] = v5;
  v6 = a2[6];
  v10[4] = a2[5];
  v10[5] = v6;
  v7 = a2[8];
  v10[6] = a2[7];
  v10[7] = v7;
  v10[8] = a2[9];
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v10);
  return (*(*(v8 - 8) + 40))(v2, a1, v8);
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16)
{
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a10;
  v24[8] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v16 = *a2;
  *a9 = a1;
  a9[1] = v16;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  type metadata accessor for TaggedValue_9.TaggedEnum(0, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v22 = a1[1];
  v23[0] = v22;
  v6 = a1[3];
  v7 = a1[4];
  v23[1] = v5;
  v23[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v23[3] = v7;
  v23[4] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v23[5] = v9;
  v23[6] = v10;
  v12 = a1[9];
  v23[7] = v11;
  v23[8] = v12;
  v13 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v23);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23[-1] - v16;
  (*(v14 + 16))(&v23[-1] - v16, v3, v13, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v14 + 8))(v17, v13);
    v18 = v22;
    v19 = *(v22 - 8);
    v20 = 1;
  }

  else
  {
    v19 = *(v22 - 8);
    (*(v19 + 32))(a2, v17);
    v18 = v22;
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t TaggedValue_9.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 152);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v24 = v5;
  v6 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_9.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v21 = a1[2];
  v22[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v22[1] = v21;
  v22[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v22[3] = v7;
  v22[4] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v22[5] = v9;
  v22[6] = v10;
  v12 = a1[9];
  v22[7] = v11;
  v22[8] = v12;
  v13 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v22);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22[-1] - v16;
  (*(v14 + 16))(&v22[-1] - v16, v3, v13, v15);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = *(v21 - 8);
    (*(v18 + 32))(a2, v17);
    v19 = 0;
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    v18 = *(v21 - 8);
    v19 = 1;
  }

  return (*(v18 + 56))(a2, v19, 1, v21);
}

uint64_t TaggedValue_9.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 152);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = *(a1 + 136);
  v25 = v5;
  v7 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_9.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v5;
  v6 = a1[4];
  v17 = a1[3];
  v18[2] = v17;
  v18[3] = v6;
  v7 = a1[6];
  v18[4] = a1[5];
  v18[5] = v7;
  v8 = a1[8];
  v18[6] = a1[7];
  v18[7] = v8;
  v18[8] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_9.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 152);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v18 = v5;
  v16 = *(a1 + 56);
  v19 = v16;
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = *(a1 + 136);
  v25 = v6;
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_9.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v5;
  v6 = a1[4];
  v18[2] = a1[3];
  v18[3] = v6;
  v17 = v6;
  v7 = a1[6];
  v18[4] = a1[5];
  v18[5] = v7;
  v8 = a1[8];
  v18[6] = a1[7];
  v18[7] = v8;
  v18[8] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_9.tagged8.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 152);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v17[2] = *(a1 + 48);
  v18 = v5;
  v16 = *(a1 + 72);
  v19 = v16;
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v24 = v6;
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_9.tagged9.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v5;
  v6 = a1[4];
  v18[2] = a1[3];
  v18[3] = v6;
  v7 = a1[6];
  v17 = a1[5];
  v18[4] = v17;
  v18[5] = v7;
  v8 = a1[8];
  v18[6] = a1[7];
  v18[7] = v8;
  v18[8] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_9.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[0] = a1[1];
  v16[1] = v5;
  v6 = a1[4];
  v16[2] = a1[3];
  v16[3] = v6;
  v7 = a1[6];
  v16[4] = a1[5];
  v16[5] = v7;
  v8 = a1[8];
  v16[6] = a1[7];
  v16[7] = v8;
  v16[8] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  (*(v10 + 16))(v16 - v12, v3, v9, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v15 = *(v13 + 1);
  }

  else
  {
    result = (*(v10 + 8))(v13, v9);
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

void TaggedValue_9.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v93 = *(*(a2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(*(v3 + 72) - 8);
  MEMORY[0x1EEE9AC00](v4);
  v89 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(*(v6 + 64) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v86 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(*(v9 + 56) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v82 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 48);
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(*(v15 + 40) - 8);
  MEMORY[0x1EEE9AC00](v16);
  v77 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 32);
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v75 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 24);
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v73 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v72 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v71 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 88);
  v32 = *(v30 + 96);
  v33 = *(v30 + 112);
  v34 = *(v30 + 120);
  v35 = *(v30 + 128);
  v36 = *(v30 + 136);
  v38 = *(v30 + 144);
  v37 = *(v30 + 152);
  *&v39 = v27;
  *(&v39 + 1) = v23;
  *&v40 = v19;
  v79 = v41;
  *(&v40 + 1) = v41;
  v99[0] = v40;
  v98 = v39;
  v83 = v42;
  *&v39 = v42;
  v85 = v43;
  *(&v39 + 1) = v43;
  v88 = v44;
  *&v40 = v44;
  v91 = v45;
  *(&v40 + 1) = v45;
  v99[2] = v40;
  v99[1] = v39;
  v94 = v46;
  *&v39 = v46;
  *(&v39 + 1) = v31;
  v95 = v32;
  v99[4] = v32;
  v99[3] = v39;
  v70[1] = v33;
  v100 = v33;
  v101 = v34;
  v70[0] = v34;
  v102 = v35;
  v103 = v36;
  v104 = v38;
  v105 = v37;
  v47 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v98);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = v70 - v49;
  (*(v51 + 16))(v70 - v49, v96, v47, v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v62 = v84;
        v63 = v82;
        v64 = v85;
        (*(v84 + 32))(v82, v50, v85);
        (*(*(v35 + 8) + 48))(v97, v64);
        (*(v62 + 8))(v63, v64);
        return;
      }

      v53 = v87;
      v54 = v86;
      v55 = v88;
      (*(v87 + 32))(v86, v50, v88);
      v67 = *(v36 + 8);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v57 = v93;
          v58 = v92;
          v59 = v94;
          (*(v93 + 32))(v92, v50, v94);
          (*(*(v37 + 8) + 48))(v97, v59);
          (*(v57 + 8))(v58, v59);
        }

        else
        {
          (*(**(v50 + 1) + 120))(v97);
        }

        return;
      }

      v53 = v90;
      v54 = v89;
      v55 = v91;
      (*(v90 + 32))(v89, v50, v91);
      v67 = *(v38 + 8);
    }

LABEL_21:
    (*(v67 + 48))(v97, v55);
    (*(v53 + 8))(v54, v55);
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v65 = v76;
      v66 = v75;
      (*(v76 + 32))(v75, v50, v19);
      (*(*(*(&v95 + 1) + 8) + 48))(v97, v19);
      (*(v65 + 8))(v66, v19);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v53 = v78;
      v54 = v77;
      v55 = v79;
      (*(v78 + 32))(v77, v50, v79);
      v56 = v99;
    }

    else
    {
      v53 = v81;
      v54 = v80;
      v55 = v83;
      (*(v81 + 32))(v80, v50, v83);
      v56 = &v98 + 8;
    }

    v67 = *(*(v56 - 32) + 8);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    v68 = v74;
    v69 = v73;
    (*(v74 + 32))(v73, v50, v23);
    (*(*(v95 + 8) + 48))(v97, v23);
    (*(v68 + 8))(v69, v23);
  }

  else
  {
    v60 = v72;
    v61 = v71;
    (*(v72 + 32))(v71, v50, v27);
    (*(*(v31 + 8) + 48))(v97, v27);
    (*(v60 + 8))(v61, v27);
  }
}

uint64_t TaggedValue_9.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v196 = a1;
  v198 = a3;
  v178 = *(*(a2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v179 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v177 = &v157 - v5;
  v7 = *(v6 + 72);
  v175 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v157 - v10;
  v172 = *(*(v11 + 64) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v173 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v157 - v15;
  v169 = *(*(v16 + 56) - 8);
  MEMORY[0x1EEE9AC00](v17);
  v170 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v157 - v20;
  v166 = *(*(v21 + 48) - 8);
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v157 - v25;
  v164 = *(*(v27 + 40) - 8);
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v157 - v31;
  v163 = *(*(v33 + 32) - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v157 - v38;
  v162 = *(*(v40 + 24) - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v157 - v45;
  v161 = *(*(v47 + 16) - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v157 - v52;
  v55 = *(v54 + 88);
  v56 = *(v54 + 96);
  v57 = *(v54 + 112);
  v58 = *(v54 + 120);
  v59 = *(v54 + 128);
  v60 = *(v54 + 136);
  v61 = *(v54 + 144);
  v62 = *(v54 + 152);
  v180 = v63;
  *&v64 = v63;
  v181 = v65;
  *(&v64 + 1) = v65;
  v182 = v66;
  *&v67 = v66;
  v183 = v68;
  *(&v67 + 1) = v68;
  v184 = v69;
  *&v70 = v69;
  v186 = v71;
  *(&v70 + 1) = v71;
  v187 = v72;
  *&v73 = v72;
  v185 = v74;
  *(&v73 + 1) = v74;
  v159 = v67;
  v201 = v67;
  v160 = v64;
  v200 = v64;
  v157 = v73;
  v203 = v73;
  v158 = v70;
  v202 = v70;
  v197 = v75;
  *&v204 = v75;
  *(&v204 + 1) = v55;
  v195 = v55;
  v199 = v56;
  v205 = v56;
  v194 = v57;
  v206 = v57;
  v207 = v58;
  v193 = v58;
  v192 = v59;
  v208 = v59;
  v209 = v60;
  v191 = v60;
  v190 = v61;
  v210 = v61;
  v211 = v62;
  v189 = v62;
  v76 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v200);
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = &v157 - v78;
  (*(v80 + 16))(&v157 - v78, v188, v76, v77);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v95 = v169;
        v96 = v167;
        v97 = v186;
        (*(v169 + 32))(v167, v79, v186);
        v98 = v192;
        v99 = v170;
        (*(*(v192 + 8) + 24))(v196, v97);
        (*(v95 + 8))(v96, v97);
        *(&v152 + 1) = v190;
        *(&v143 + 1) = v98;
        *&v152 = v191;
        *&v143 = v193;
        *&v134[24] = v194;
        *&v134[8] = v199;
        *v134 = v195;
        *(&v125 + 1) = v197;
        *&v125 = v185;
        return TaggedValue_9.init(_:)(v99, v180, v181, v182, v183, v184, v97, v187, v198, v125, *v134, *&v134[16], v143, v152, v189);
      }

      else
      {
        v118 = v172;
        v119 = v171;
        v120 = v187;
        (*(v172 + 32))(v171, v79, v187);
        v121 = v191;
        v122 = v173;
        (*(*(v191 + 8) + 24))(v196, v120);
        (*(v118 + 8))(v119, v120);
        *&v156 = v121;
        *(&v156 + 1) = v190;
        *(&v147 + 1) = v192;
        *&v147 = v193;
        *&v138[24] = v194;
        *&v138[8] = v199;
        *v138 = v195;
        *(&v129 + 1) = v197;
        *&v129 = v185;
        return TaggedValue_9.init(_:)(v122, v180, v181, v182, v183, v184, v186, v120, v198, v129, *v138, *&v138[16], v147, v156, v189);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v103 = v175;
      v104 = v174;
      v105 = v185;
      (*(v175 + 32))(v174, v79, v185);
      v106 = v190;
      v107 = v176;
      (*(*(v190 + 8) + 24))(v196, v105);
      (*(v103 + 8))(v104, v105);
      *(&v148 + 1) = v191;
      *&v148 = v192;
      *(&v139 + 1) = v193;
      *&v139 = v194;
      *(&v130 + 1) = v195;
      *&v130 = v197;
      return TaggedValue_9.init(_:)(v107, v180, v181, v182, v183, v184, v186, v187, v198, v105, v130, v199, v139, v148, v106, v189);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v87 = v178;
      v88 = v177;
      v89 = v197;
      (*(v178 + 32))(v177, v79, v197);
      v90 = v189;
      v91 = v179;
      (*(*(v189 + 8) + 24))(v196, v89);
      (*(v87 + 8))(v88, v89);
      *(&v150 + 1) = v190;
      *&v150 = v191;
      *(&v141 + 1) = v192;
      *&v141 = v193;
      *&v132[24] = v194;
      *&v132[8] = v199;
      *v132 = v195;
      return TaggedValue_9.init(_:)(v91, v180, v181, v182, v183, v184, v186, v187, v198, v185, v89, *v132, *&v132[16], v141, v150, v90);
    }

    else
    {
      v112 = *v79;
      v113 = (*(**(v79 + 1) + 104))(v196);

      v114 = v198;
      *v198 = v112;
      v114[1] = v113;
      v201 = v159;
      v200 = v160;
      v203 = v157;
      v202 = v158;
      *&v115 = v197;
      *(&v115 + 1) = v195;
      v205 = v199;
      v204 = v115;
      v206 = v194;
      v207 = v193;
      v208 = v192;
      v209 = v191;
      v210 = v190;
      v211 = v189;
      type metadata accessor for TaggedValue_9.TaggedEnum(0, &v200);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v116 = v162;
      v117 = v181;
      (*(v162 + 32))(v46, v79, v181);
      (*(*(v199 + 8) + 24))(v196, v117);
      (*(v116 + 8))(v46, v117);
      *(&v155 + 1) = v190;
      *&v155 = v191;
      *(&v146 + 1) = v192;
      *&v146 = v193;
      *&v137[24] = v194;
      *&v137[8] = v199;
      *v137 = v195;
      *(&v128 + 1) = v197;
      *&v128 = v185;
      return TaggedValue_9.init(_:)(v43, v180, v117, v182, v183, v184, v186, v187, v198, v128, *v137, *&v137[16], v146, v155, v189);
    }

    else
    {
      v92 = v161;
      v93 = v180;
      (*(v161 + 32))(v53, v79, v180);
      v94 = v195;
      (*(*(v195 + 8) + 24))(v196, v93);
      (*(v92 + 8))(v53, v93);
      *(&v151 + 1) = v190;
      *&v151 = v191;
      *(&v142 + 1) = v192;
      *&v142 = v193;
      *&v133[24] = v194;
      *&v133[8] = v199;
      *v133 = v94;
      *(&v124 + 1) = v197;
      *&v124 = v185;
      return TaggedValue_9.init(_:)(v50, v93, v181, v182, v183, v184, v186, v187, v198, v124, *v133, *&v133[16], v142, v151, v189);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v100 = v163;
    v101 = v79;
    v102 = v182;
    (*(v163 + 32))(v39, v101, v182);
    (*(*(*(&v199 + 1) + 8) + 24))(v196, v102);
    (*(v100 + 8))(v39, v102);
    *(&v153 + 1) = v190;
    *&v153 = v191;
    *(&v144 + 1) = v192;
    *&v144 = v193;
    *&v135[24] = v194;
    *&v135[8] = v199;
    *v135 = v195;
    *(&v126 + 1) = v197;
    *&v126 = v185;
    return TaggedValue_9.init(_:)(v36, v180, v181, v102, v183, v184, v186, v187, v198, v126, *v135, *&v135[16], v144, v153, v189);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v82 = v164;
    v83 = v183;
    (*(v164 + 32))(v32, v79, v183);
    v84 = v194;
    v85 = v165;
    (*(*(v194 + 8) + 24))(v196, v83);
    (*(v82 + 8))(v32, v83);
    *(&v149 + 1) = v190;
    *&v149 = v191;
    *(&v140 + 1) = v192;
    *&v131[24] = v84;
    *&v140 = v193;
    *&v131[8] = v199;
    *v131 = v195;
    *(&v123 + 1) = v197;
    *&v123 = v185;
    return TaggedValue_9.init(_:)(v85, v180, v181, v182, v83, v184, v186, v187, v198, v123, *v131, *&v131[16], v140, v149, v189);
  }

  else
  {
    v108 = v166;
    v109 = v184;
    (*(v166 + 32))(v26, v79, v184);
    v110 = v193;
    v111 = v168;
    (*(*(v193 + 8) + 24))(v196, v109);
    (*(v108 + 8))(v26, v109);
    *(&v154 + 1) = v190;
    *&v154 = v191;
    *&v145 = v110;
    *(&v145 + 1) = v192;
    *&v136[24] = v194;
    *&v136[8] = v199;
    *v136 = v195;
    *(&v127 + 1) = v197;
    *&v127 = v185;
    return TaggedValue_9.init(_:)(v111, v180, v181, v182, v183, v109, v186, v187, v198, v127, *v136, *&v136[16], v145, v154, v189);
  }
}

uint64_t sub_1ADFDC454(unint64_t a1, uint64_t a2, void (*a3)(unint64_t *, uint64_t))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  a3(&v7, a2);
}

uint64_t TaggedValue_9.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v359 = a2;
  v372 = a1;
  v368 = a4;
  v378 = a3[19];
  v5 = a3[10];
  v336 = *(v378 + 8);
  v6 = v5;
  v375 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v284 = sub_1AE23D7CC();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v337 = &v258 - v8;
  v338 = AssociatedTypeWitness;
  v335 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v282 = &v258 - v10;
  v350 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v333 = &v258 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v332 = &v258 - v14;
  v377 = a3[18];
  v15 = a3[9];
  v329 = *(v377 + 8);
  v16 = v15;
  *(&v374 + 1) = v15;
  v17 = swift_getAssociatedTypeWitness();
  v281 = sub_1AE23D7CC();
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v331 = &v258 - v18;
  v334 = v17;
  v330 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v279 = &v258 - v20;
  v349 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v327 = &v258 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v326 = &v258 - v24;
  v25 = a3[8];
  v376 = a3[17];
  v323 = *(v376 + 1);
  v26 = v25;
  *&v374 = v25;
  v27 = swift_getAssociatedTypeWitness();
  v278 = sub_1AE23D7CC();
  v277 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v325 = &v258 - v28;
  v328 = v27;
  v324 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v276 = &v258 - v30;
  v348 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v321 = &v258 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v320 = &v258 - v34;
  *&v370 = a3[16];
  v35 = a3[7];
  v317 = *(v370 + 8);
  v36 = v35;
  v373 = v35;
  v37 = swift_getAssociatedTypeWitness();
  v275 = sub_1AE23D7CC();
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v319 = &v258 - v38;
  v322 = v37;
  v318 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v273 = &v258 - v40;
  v347 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v315 = &v258 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v314 = &v258 - v44;
  *&v369[8] = a3[15];
  v45 = a3[6];
  v311 = *(*&v369[8] + 8);
  v46 = swift_getAssociatedTypeWitness();
  v272 = sub_1AE23D7CC();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v313 = &v258 - v47;
  v316 = v46;
  v312 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v270 = &v258 - v49;
  v345 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v309 = &v258 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v308 = &v258 - v53;
  *v369 = a3[14];
  v54 = a3[5];
  v305 = *(*v369 + 8);
  v55 = swift_getAssociatedTypeWitness();
  v269 = sub_1AE23D7CC();
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v307 = &v258 - v56;
  v310 = v55;
  v306 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v267 = &v258 - v58;
  v343 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v303 = &v258 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v302 = &v258 - v62;
  v63 = a3[13];
  v64 = a3[4];
  v299 = *(v63 + 8);
  v65 = swift_getAssociatedTypeWitness();
  v266 = sub_1AE23D7CC();
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v301 = &v258 - v66;
  v304 = v65;
  v300 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v264 = &v258 - v68;
  v341 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v297 = &v258 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v296 = &v258 - v72;
  v73 = a3[12];
  v74 = a3[3];
  v293 = *(v73 + 8);
  v75 = swift_getAssociatedTypeWitness();
  v263 = sub_1AE23D7CC();
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v295 = &v258 - v76;
  v298 = v75;
  v294 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v261 = &v258 - v78;
  v339 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v292 = &v258 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v291 = &v258 - v82;
  v83 = a3[11];
  v84 = a3[2];
  v287 = *(v83 + 8);
  v85 = swift_getAssociatedTypeWitness();
  v260 = sub_1AE23D7CC();
  v259 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v289 = &v258 - v86;
  v290 = v85;
  v288 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v258 = &v258 - v88;
  v357 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v286 = &v258 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v285 = &v258 - v92;
  v358 = v84;
  *&v93 = v84;
  v340 = v74;
  *(&v93 + 1) = v74;
  v342 = v64;
  *&v94 = v64;
  v344 = v54;
  *(&v94 + 1) = v54;
  v346 = v45;
  *&v95 = v45;
  *(&v95 + 1) = v373;
  v362 = v94;
  v380 = v94;
  v363 = v93;
  v379 = v93;
  v364 = v374;
  v382 = v374;
  v365 = v95;
  v381 = v95;
  *&v95 = v375;
  *(&v95 + 1) = v83;
  *&v93 = v73;
  *(&v93 + 1) = v63;
  v366 = v93;
  v384 = v93;
  v367 = v95;
  v383 = v95;
  v96 = *v369;
  *&v93 = v370;
  *(&v93 + 1) = v376;
  *&v369[8] = v93;
  v386 = v93;
  v370 = v96;
  v385 = v96;
  v387 = v377;
  v388 = v378;
  v97 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v379);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v355 = &v258 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v356 = &v258 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v354 = &v258 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v353 = &v258 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v352 = &v258 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v351 = &v258 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v258 - v111;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v258 - v114;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v258 - v117;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v258 - v120;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v369 = *(TupleTypeMetadata2 - 8);
  v123 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v125 = &v258 - v124;
  v361 = v126;
  v127 = &v258 + *(v126 + 48) - v124;
  v360 = v98;
  v128 = *(v98 + 16);
  v128(&v258 - v124, v371, v97, v123);
  v129 = v127;
  (v128)(v127, v372, v97);
  v376 = v125;
  v130 = v97;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v132 = v376;
        (v128)(v115, v376, v97);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v166 = v341;
          v167 = *(v341 + 32);
          v168 = v296;
          v169 = v342;
          v167(v296, v115, v342);
          v170 = v297;
          v167(v297, v127, v169);
          v171 = v301;
          (*(v299 + 40))(v170, v359, v169);
          v172 = *(v166 + 8);
          v172(v170, v169);
          v172(v168, v169);
          v173 = v300;
          v174 = v304;
          if ((*(v300 + 48))(v171, 1, v304) == 1)
          {
            (*(v265 + 8))(v171, v266);
            goto LABEL_39;
          }

          v234 = *(v173 + 32);
          v235 = v264;
          v234(v264, v171, v174);
          v236 = v368;
          v234(v368, v235, v174);
          v380 = v362;
          v379 = v363;
          v382 = v364;
          v381 = v365;
          v384 = v366;
          v383 = v367;
          v386 = *&v369[8];
          v385 = v370;
          v387 = v377;
          v388 = v378;
          v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
          goto LABEL_63;
        }

        (*(v341 + 8))(v115, v342);
      }

      else
      {
        v132 = v376;
        if (EnumCaseMultiPayload == 3)
        {
          (v128)(v112, v376, v97);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v133 = v343;
            v134 = *(v343 + 32);
            v135 = v302;
            v136 = v344;
            v134(v302, v112, v344);
            v137 = v303;
            v134(v303, v129, v136);
            v138 = v307;
            (*(v305 + 40))(v137, v359, v136);
            v139 = *(v133 + 8);
            v139(v137, v136);
            v139(v135, v136);
            v140 = v306;
            v141 = v310;
            if ((*(v306 + 48))(v138, 1, v310) == 1)
            {
              (*(v268 + 8))(v138, v269);
LABEL_39:
              v380 = v362;
              v379 = v363;
              v382 = v364;
              v381 = v365;
              v384 = v366;
              v383 = v367;
              v386 = *&v369[8];
              v385 = v370;
              goto LABEL_40;
            }

            v240 = *(v140 + 32);
            v241 = v267;
            v240(v267, v138, v141);
            v236 = v368;
            v240(v368, v241, v141);
            v380 = v362;
            v379 = v363;
            v382 = v364;
            v381 = v365;
            v384 = v366;
            v383 = v367;
            v386 = *&v369[8];
            v385 = v370;
            v387 = v377;
            v388 = v378;
            v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
            goto LABEL_63;
          }

          (*(v343 + 8))(v112, v344);
        }

        else
        {
          v186 = v351;
          (v128)(v351, v376, v130);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v187 = v345;
            v188 = *(v345 + 32);
            v189 = v308;
            v190 = v186;
            v191 = v346;
            v188(v308, v190, v346);
            v192 = v309;
            v188(v309, v129, v191);
            v193 = v313;
            (*(v311 + 40))(v192, v359, v191);
            v194 = *(v187 + 8);
            v194(v192, v191);
            v194(v189, v191);
            v195 = v312;
            v196 = v316;
            if ((*(v312 + 48))(v193, 1, v316) == 1)
            {
              (*(v271 + 8))(v193, v272);
              goto LABEL_39;
            }

            v244 = *(v195 + 32);
            v245 = v270;
            v244(v270, v193, v196);
            v236 = v368;
            v244(v368, v245, v196);
            v380 = v362;
            v379 = v363;
            v382 = v364;
            v381 = v365;
            v384 = v366;
            v383 = v367;
            v386 = *&v369[8];
            v385 = v370;
            v387 = v377;
            v388 = v378;
            v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
            goto LABEL_63;
          }

          (*(v345 + 8))(v186, v346);
        }
      }

      goto LABEL_50;
    }

    if (EnumCaseMultiPayload)
    {
      (v128)(v118, v376, v97);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v339 + 8))(v118, v340);
        v132 = v376;
        goto LABEL_50;
      }

      v200 = v339;
      v201 = *(v339 + 32);
      v202 = v291;
      v203 = v340;
      v201(v291, v118, v340);
      v204 = v292;
      v201(v292, v129, v203);
      v205 = v295;
      (*(v293 + 40))(v204, v359, v203);
      v206 = *(v200 + 8);
      v206(v204, v203);
      v206(v202, v203);
      v207 = v294;
      v208 = v298;
      if ((*(v294 + 48))(v205, 1, v298) == 1)
      {
        (*(v262 + 8))(v205, v263);
LABEL_53:
        v380 = v362;
        v379 = v363;
        v382 = v364;
        v381 = v365;
        v384 = v366;
        v383 = v367;
        v386 = *&v369[8];
        v385 = v370;
        v387 = v377;
        v388 = v378;
        v233 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
        (*(*(v233 - 8) + 56))(v368, 1, 1, v233);
LABEL_69:
        v254 = v360;
        v132 = v376;
        return (*(v254 + 8))(v132, v130);
      }

      v248 = *(v207 + 32);
      v249 = v261;
      v248(v261, v205, v208);
      v250 = v368;
      v248(v368, v249, v208);
      v380 = v362;
      v379 = v363;
      v382 = v364;
      v381 = v365;
      v384 = v366;
      v383 = v367;
      v386 = *&v369[8];
      v385 = v370;
      v387 = v377;
      v388 = v378;
      v251 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
    }

    else
    {
      v132 = v376;
      (v128)(v121, v376, v97);
      v153 = v127;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v357 + 8))(v121, v358);
        goto LABEL_50;
      }

      v224 = v357;
      v225 = *(v357 + 32);
      v226 = v285;
      v227 = v358;
      v225(v285, v121, v358);
      v228 = v286;
      v225(v286, v153, v227);
      v229 = v289;
      (*(v287 + 40))(v228, v359, v227);
      v230 = *(v224 + 8);
      v230(v228, v227);
      v230(v226, v227);
      v231 = v288;
      v232 = v290;
      if ((*(v288 + 48))(v229, 1, v290) == 1)
      {
        (*(v259 + 8))(v229, v260);
        goto LABEL_53;
      }

      v256 = *(v231 + 32);
      v257 = v258;
      v256(v258, v229, v232);
      v250 = v368;
      v256(v368, v257, v232);
      v380 = v362;
      v379 = v363;
      v382 = v364;
      v381 = v365;
      v384 = v366;
      v383 = v367;
      v386 = *&v369[8];
      v385 = v370;
      v387 = v377;
      v388 = v378;
      v251 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v251 - 8) + 56))(v250, 0, 1, v251);
    goto LABEL_69;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v132 = v376;
    if (EnumCaseMultiPayload == 5)
    {
      v154 = v352;
      (v128)(v352, v376, v97);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v155 = v347;
        v156 = *(v347 + 32);
        v157 = v314;
        v158 = v154;
        v159 = v129;
        v160 = v373;
        v156(v314, v158, v373);
        v161 = v315;
        v156(v315, v159, v160);
        v162 = v319;
        (*(v317 + 40))(v161, v359, v160);
        v163 = *(v155 + 8);
        v163(v161, v160);
        v163(v157, v160);
        v164 = v318;
        v165 = v322;
        if ((*(v318 + 48))(v162, 1, v322) == 1)
        {
          (*(v274 + 8))(v162, v275);
          goto LABEL_39;
        }

        v246 = *(v164 + 32);
        v247 = v273;
        v246(v273, v162, v165);
        v236 = v368;
        v246(v368, v247, v165);
        v380 = v362;
        v379 = v363;
        v382 = v364;
        v381 = v365;
        v384 = v366;
        v383 = v367;
        v386 = *&v369[8];
        v385 = v370;
        v387 = v377;
        v388 = v378;
        v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
        goto LABEL_63;
      }

      (*(v347 + 8))(v154, v373);
    }

    else
    {
      v209 = v353;
      (v128)(v353, v376, v130);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v210 = v348;
        v211 = *(v348 + 32);
        v212 = v320;
        v213 = v209;
        v214 = v374;
        v211(v320, v213, v374);
        v215 = v321;
        v211(v321, v129, v214);
        v216 = v325;
        (*(v323 + 40))(v215, v359, v214);
        v217 = *(v210 + 8);
        v217(v215, v214);
        v217(v212, v214);
        v218 = v324;
        v219 = v328;
        if ((*(v324 + 48))(v216, 1, v328) == 1)
        {
          (*(v277 + 8))(v216, v278);
          goto LABEL_39;
        }

        v252 = *(v218 + 32);
        v253 = v276;
        v252(v276, v216, v219);
        v236 = v368;
        v252(v368, v253, v219);
        v380 = v362;
        v379 = v363;
        v382 = v364;
        v381 = v365;
        v384 = v366;
        v383 = v367;
        v386 = *&v369[8];
        v385 = v370;
        v387 = v377;
        v388 = v378;
        v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
        goto LABEL_63;
      }

      (*(v348 + 8))(v209, v374);
    }
  }

  else
  {
    v132 = v376;
    if (EnumCaseMultiPayload == 7)
    {
      v175 = v354;
      (v128)(v354, v376, v130);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v176 = v349;
        v177 = *(v349 + 32);
        v178 = v326;
        v179 = v175;
        v180 = *(&v374 + 1);
        v177(v326, v179, *(&v374 + 1));
        v181 = v327;
        v177(v327, v129, v180);
        v182 = v331;
        (*(v329 + 40))(v181, v359, v180);
        v183 = *(v176 + 8);
        v183(v181, v180);
        v183(v178, v180);
        v184 = v330;
        v185 = v334;
        if ((*(v330 + 48))(v182, 1, v334) == 1)
        {
          (*(v280 + 8))(v182, v281);
          goto LABEL_39;
        }

        v238 = *(v184 + 32);
        v239 = v279;
        v238(v279, v182, v185);
        v236 = v368;
        v238(v368, v239, v185);
        v380 = v362;
        v379 = v363;
        v382 = v364;
        v381 = v365;
        v384 = v366;
        v383 = v367;
        v386 = *&v369[8];
        v385 = v370;
        v387 = v377;
        v388 = v378;
        v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
        goto LABEL_63;
      }

      (*(v349 + 8))(v175, *(&v374 + 1));
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v142 = v356;
      (v128)(v356, v376, v130);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v143 = v350;
        v144 = *(v350 + 32);
        v145 = v332;
        v146 = v142;
        v147 = v375;
        v144(v332, v146, v375);
        v148 = v333;
        v144(v333, v129, v147);
        v149 = v337;
        (*(v336 + 40))(v148, v359, v147);
        v150 = *(v143 + 8);
        v150(v148, v147);
        v150(v145, v147);
        v151 = v335;
        v152 = v338;
        if ((*(v335 + 48))(v149, 1, v338) == 1)
        {
          (*(v283 + 8))(v149, v284);
          goto LABEL_39;
        }

        v242 = *(v151 + 32);
        v243 = v282;
        v242(v282, v149, v152);
        v236 = v368;
        v242(v368, v243, v152);
        v380 = v362;
        v379 = v363;
        v382 = v364;
        v381 = v365;
        v384 = v366;
        v383 = v367;
        v386 = *&v369[8];
        v385 = v370;
        v387 = v377;
        v388 = v378;
        v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
LABEL_63:
        swift_storeEnumTagMultiPayload();
        (*(*(v237 - 8) + 56))(v236, 0, 1, v237);
        goto LABEL_64;
      }

      (*(v350 + 8))(v142, v375);
    }

    else
    {
      v197 = v355;
      (v128)(v355, v376, v97);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v198 = *v197;
        v199 = *v129;

        if (v198 == v199)
        {
          v379 = v363;
          v380 = v362;
          v381 = v365;
          v382 = v364;
          v383 = v367;
          v384 = v366;
          v385 = v370;
          v386 = *&v369[8];
LABEL_40:
          v387 = v377;
          v388 = v378;
          v220 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
          (*(*(v220 - 8) + 56))(v368, 1, 1, v220);
LABEL_64:
          v223 = &v380 + 8;
          goto LABEL_65;
        }

        v379 = v363;
        v380 = v362;
        v381 = v365;
        v382 = v364;
        v383 = v367;
        v384 = v366;
        v385 = v370;
        v386 = *&v369[8];
        v387 = v377;
        v388 = v378;
        v237 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
        v236 = v368;
        goto LABEL_63;
      }
    }
  }

LABEL_50:
  v379 = v363;
  v380 = v362;
  v381 = v365;
  v382 = v364;
  v383 = v367;
  v384 = v366;
  v385 = v370;
  v386 = *&v369[8];
  v387 = v377;
  v388 = v378;
  v221 = type metadata accessor for TaggedValue_9.ObservableDifference(0, &v379);
  v222 = v368;
  swift_storeEnumTagMultiPayload();
  (*(*(v221 - 8) + 56))(v222, 0, 1, v221);
  v130 = v361;
  v223 = &v389;
LABEL_65:
  v254 = *(v223 - 32);
  return (*(v254 + 8))(v132, v130);
}

uint64_t static TaggedValue_1<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v7 = *(a3 - 8);
  v35 = a5;
  v36 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - v10;
  v13 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v11, v12, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v23 = *(v22 + 48);
  v32 = v14;
  v24 = *(v14 + 16);
  v24(&v32 - v20, a1, v13, v19);
  (v24)(&v21[v23], v37, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v24)(v16, v21, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v36;
      v27 = *(v36 + 32);
      v28 = v33;
      v27(v33, v16, a3);
      v29 = v34;
      v27(v34, &v21[v23], a3);
      v25 = sub_1AE23CCBC();
      v30 = *(v26 + 8);
      v30(v29, a3);
      v30(v28, a3);
      v18 = v32;
      TupleTypeMetadata2 = v13;
      goto LABEL_6;
    }

    (*(v36 + 8))(v16, a3);
  }

  v25 = 0;
LABEL_6:
  (*(v18 + 8))(v21, TupleTypeMetadata2);
  return v25 & 1;
}

uint64_t static TaggedValue_2<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v51[1] = a6;
  v60 = a1;
  v61 = a2;
  v57 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v51 - v11;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51[0] = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = v51 - v16;
  v62[0] = v17;
  v62[1] = v18;
  v58 = v18;
  v62[2] = v19;
  v62[3] = v20;
  v21 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v62);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v51 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v30 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = v51 - v31;
  v34 = *(v33 + 48);
  v56 = v22;
  v35 = *(v22 + 16);
  v35(v51 - v31, v60, v21, v30);
  (v35)(&v32[v34], v61, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v35)(v24, v32, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v57;
        v37 = v58;
        v39 = *(v57 + 32);
        v40 = v52;
        v39(v52, v24, v58);
        v41 = v53;
        v39(v53, &v32[v34], v37);
        v42 = v40;
        v43 = sub_1AE23CCBC();
        v44 = *(v38 + 8);
        v44(v41, v37);
        v44(v42, v37);
LABEL_10:
        v29 = v56;
        TupleTypeMetadata2 = v21;
        goto LABEL_11;
      }

      (*(v57 + 8))(v24, v58);
    }
  }

  else
  {
    v45 = v59;
    (v35)(v27, v32, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *(v45 + 32);
      v46(v55, v27, a3);
      v47 = v51[0];
      v46(v51[0], &v32[v34], a3);
      v48 = v55;
      v43 = sub_1AE23CCBC();
      v49 = *(v45 + 8);
      v49(v47, a3);
      v49(v48, a3);
      goto LABEL_10;
    }

    (*(v45 + 8))(v27, a3);
  }

  v43 = 0;
LABEL_11:
  (*(v29 + 8))(v32, TupleTypeMetadata2);
  return v43 & 1;
}

uint64_t static TaggedValue_3<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = a7;
  v86 = a1;
  v87 = a2;
  v81 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v71 - v13;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v71 - v18;
  v79 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v71 - v23;
  v82 = v24;
  v83 = v25;
  v88[0] = v24;
  v88[1] = v26;
  v84 = v26;
  v88[2] = v25;
  v88[3] = v27;
  v88[4] = v28;
  v88[5] = v29;
  v30 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v88);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v71 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v71 - v38;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v42 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v71 - v43;
  v46 = *(v45 + 48);
  v85 = v31;
  v47 = *(v31 + 16);
  v47(&v71 - v43, v86, v30, v42);
  (v47)(&v44[v46], v87, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

    (v47)(v33, v44, v30);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v81 + 8))(v33, v83);
      goto LABEL_13;
    }

    v49 = v81;
    v50 = *(v81 + 32);
    v51 = v77;
    v52 = v83;
    v50(v77, v33, v83);
    v53 = &v44[v46];
    v54 = v78;
    v50(v78, v53, v52);
    v55 = sub_1AE23CCBC();
    v56 = *(v49 + 8);
    v56(v54, v52);
    v57 = v51;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    (v47)(v36, v44, v30);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v80 + 8))(v36, v84);
      goto LABEL_13;
    }

    v58 = v80;
    v59 = *(v80 + 32);
    v60 = v75;
    v52 = v84;
    v59(v75, v36, v84);
    v61 = &v44[v46];
    v62 = v76;
    v59(v76, v61, v52);
    v55 = sub_1AE23CCBC();
    v56 = *(v58 + 8);
    v56(v62, v52);
    v57 = v60;
LABEL_10:
    v56(v57, v52);
LABEL_15:
    v41 = v85;
    TupleTypeMetadata2 = v30;
    goto LABEL_16;
  }

  (v47)(v39, v44, v30);
  if (!swift_getEnumCaseMultiPayload())
  {
    v63 = v79;
    v64 = *(v79 + 32);
    v65 = v72;
    v66 = v82;
    v64(v72, v39, v82);
    v67 = &v44[v46];
    v68 = v73;
    v64(v73, v67, v66);
    v55 = sub_1AE23CCBC();
    v69 = *(v63 + 8);
    v69(v68, v66);
    v69(v65, v66);
    goto LABEL_15;
  }

  (*(v79 + 8))(v39, v82);
LABEL_13:
  v55 = 0;
LABEL_16:
  (*(v41 + 8))(v44, TupleTypeMetadata2);
  return v55 & 1;
}

uint64_t static TaggedValue_4<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v94 = a8;
  v112 = a1;
  v113 = a2;
  v107 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v100 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v91 - v16;
  v106 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v91 - v21;
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v91 - v26;
  v111 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v91 - v31;
  v104 = v32;
  v105 = v33;
  v114[0] = v32;
  v114[1] = v33;
  v108 = v34;
  v109 = v35;
  v114[2] = v34;
  v114[3] = v35;
  v114[4] = v36;
  v114[5] = v37;
  v114[6] = v39;
  v114[7] = v38;
  v40 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v114);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v102 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v101 = &v91 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v91 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v91 - v49;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  v53 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v55 = &v91 - v54;
  v57 = *(v56 + 48);
  v110 = v41;
  v58 = *(v41 + 16);
  v58(&v91 - v54, v112, v40, v53);
  v59 = v57;
  (v58)(&v55[v57], v113, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v70 = v111;
    if (EnumCaseMultiPayload)
    {
      (v58)(v47, v55, v40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v113 = a10;
        v79 = v103;
        v80 = *(v103 + 32);
        v81 = v95;
        v82 = v105;
        v80(v95, v47, v105);
        v83 = v96;
        v80(v96, &v55[v59], v82);
        v68 = sub_1AE23CCBC();
        v84 = *(v79 + 8);
        v84(v83, v82);
        v84(v81, v82);
        goto LABEL_20;
      }

      (*(v103 + 8))(v47, v105);
    }

    else
    {
      (v58)(v50, v55, v40);
      if (!swift_getEnumCaseMultiPayload())
      {
        v85 = *(v70 + 32);
        v86 = v92;
        v87 = v104;
        v85(v92, v50, v104);
        v88 = v93;
        v85(v93, &v55[v59], v87);
        v68 = sub_1AE23CCBC();
        v89 = *(v70 + 8);
        v89(v88, v87);
        v89(v86, v87);
        goto LABEL_20;
      }

      (*(v70 + 8))(v50, v104);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v71 = v101;
    (v58)(v101, v55, v40);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v72 = v71;
      v73 = v106;
      v74 = *(v106 + 32);
      v75 = v97;
      v76 = v108;
      v74(v97, v72, v108);
      v77 = v98;
      v74(v98, &v55[v59], v76);
      v68 = sub_1AE23CCBC();
      v78 = *(v73 + 8);
      v78(v77, v76);
      v78(v75, v76);
      goto LABEL_20;
    }

    (*(v106 + 8))(v71, v108);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v61 = v102;
    (v58)(v102, v55, v40);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v62 = v107;
      v63 = *(v107 + 32);
      v64 = v99;
      v65 = v109;
      v63(v99, v61, v109);
      v66 = &v55[v57];
      v67 = v100;
      v63(v100, v66, v65);
      v68 = sub_1AE23CCBC();
      v69 = *(v62 + 8);
      v69(v67, v65);
      v69(v64, v65);
LABEL_20:
      v52 = v110;
      TupleTypeMetadata2 = v40;
      goto LABEL_21;
    }

    (*(v107 + 8))(v61, v109);
  }

  v68 = 0;
LABEL_21:
  (*(v52 + 8))(v55, TupleTypeMetadata2);
  return v68 & 1;
}

uint64_t static TaggedValue_5<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v130 = a1;
  v131 = a2;
  v122 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v105 - v18;
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v105 - v19;
  v121 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v105 - v23;
  v120 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = &v105 - v26;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v105 - v27;
  v119 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = &v105 - v30;
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v105 - v31;
  v117 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v105 - v34;
  MEMORY[0x1EEE9AC00](v34);
  v106 = &v105 - v35;
  v118 = v36;
  v132[0] = v36;
  v132[1] = v37;
  v124 = v37;
  v125 = v38;
  v132[2] = v38;
  v132[3] = v39;
  v123 = v39;
  v126 = v40;
  v132[4] = v40;
  v132[5] = v41;
  v132[6] = v43;
  v132[7] = v42;
  v132[8] = v45;
  v133 = v44;
  v46 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v132);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v116 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v105 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v105 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v105 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v105 - v59;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v128 = *(TupleTypeMetadata2 - 8);
  v62 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = &v105 - v63;
  v129 = v65;
  v66 = *(v65 + 48);
  v127 = v47;
  v67 = *(v47 + 16);
  v67(&v105 - v63, v130, v46, v62);
  (v67)(&v64[v66], v131, v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (v67)(v51, v64, v46);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v81 = v66;
        v82 = v121;
        v83 = *(v121 + 32);
        v84 = v112;
        v85 = v123;
        v83(v112, v51, v123);
        v86 = &v64[v81];
        v87 = v113;
        v83(v113, v86, v85);
        v79 = sub_1AE23CCBC();
        v88 = *(v82 + 8);
        v88(v87, v85);
        v88(v84, v85);
        goto LABEL_24;
      }

      (*(v121 + 8))(v51, v123);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v76 = v116;
      (v67)(v116, v64, v46);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v69 = v122;
        v70 = *(v122 + 32);
        v71 = v114;
        v77 = v76;
        v73 = v126;
        v70(v114, v77, v126);
        v74 = &v64[v66];
        v75 = &v134;
        goto LABEL_10;
      }

      (*(v122 + 8))(v76, v126);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v67)(v57, v64, v46);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v69 = v119;
        v70 = *(v119 + 32);
        v71 = v108;
        v72 = v57;
        v73 = v124;
        v70(v108, v72, v124);
        v74 = &v64[v66];
        v75 = &v133;
LABEL_10:
        v78 = *(v75 - 32);
        v70(v78, v74, v73);
        v79 = sub_1AE23CCBC();
        v80 = *(v69 + 8);
        v80(v78, v73);
        v80(v71, v73);
LABEL_24:
        v97 = v127;
        v96 = v46;
        goto LABEL_25;
      }

      (*(v119 + 8))(v57, v124);
    }

    else
    {
      (v67)(v54, v64, v46);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v89 = v120;
        v90 = *(v120 + 32);
        v91 = v110;
        v92 = v54;
        v93 = v125;
        v90(v110, v92, v125);
        v94 = v111;
        v90(v111, &v64[v66], v93);
        v79 = sub_1AE23CCBC();
        v95 = *(v89 + 8);
        v95(v94, v93);
        v95(v91, v93);
        goto LABEL_24;
      }

      (*(v120 + 8))(v54, v125);
    }
  }

  else
  {
    (v67)(v60, v64, v46);
    if (!swift_getEnumCaseMultiPayload())
    {
      v98 = v117;
      v99 = *(v117 + 32);
      v100 = v106;
      v101 = v118;
      v99(v106, v60, v118);
      v102 = v107;
      v99(v107, &v64[v66], v101);
      v79 = sub_1AE23CCBC();
      v103 = *(v98 + 8);
      v103(v102, v101);
      v103(v100, v101);
      goto LABEL_24;
    }

    (*(v117 + 8))(v60, v118);
  }

  v79 = 0;
  v97 = v128;
  v96 = v129;
LABEL_25:
  (*(v97 + 8))(v64, v96);
  return v79 & 1;
}

uint64_t static TaggedValue_6<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v168 = a1;
  v169 = a2;
  v155 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a11);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v149 = &v139 - v21;
  v154 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = &v139 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v139 - v26;
  v153 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v139 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v139 - v31;
  v165 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = &v139 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v143 = &v139 - v36;
  v164 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v141 = &v139 - v41;
  v163 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = &v139 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v139 = &v139 - v46;
  v161 = v48;
  v170[0] = v48;
  v170[1] = v49;
  v151 = v49;
  v152 = v50;
  v170[2] = v50;
  v170[3] = v51;
  v156 = v51;
  v158 = v52;
  v170[4] = v52;
  v170[5] = v53;
  v157 = v53;
  v170[6] = v55;
  v170[7] = v54;
  v170[8] = v57;
  v170[9] = v56;
  v170[10] = v59;
  v170[11] = v58;
  v60 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v170);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v160 = &v139 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v159 = &v139 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v139 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v139 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v139 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v139 - v75;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v167 = *(TupleTypeMetadata2 - 8);
  v78 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v80 = &v139 - v79;
  v166 = v81;
  v82 = *(v81 + 48);
  v162 = v61;
  v83 = *(v61 + 16);
  v83(&v139 - v79, v168, v60, v78);
  v84 = v82;
  (v83)(&v80[v82], v169, v60);
  v169 = v80;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v96 = v163;
    v97 = v164;
    v98 = v165;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v99 = v169;
        (v83)(v73, v169, v60);
        v87 = v99;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v100 = v97;
          v101 = *(v97 + 32);
          v102 = v141;
          v103 = v151;
          v101(v141, v73, v151);
          v104 = v142;
          v101(v142, &v87[v84], v103);
          v94 = sub_1AE23CCBC();
          v105 = *(v100 + 8);
          v105(v104, v103);
          goto LABEL_19;
        }

        (*(v97 + 8))(v73, v151);
      }

      else
      {
        v117 = v169;
        (v83)(v70, v169, v60);
        v87 = v117;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v118 = v98;
          v119 = *(v98 + 32);
          v120 = v143;
          v121 = v152;
          v119(v143, v70, v152);
          v122 = v144;
          v119(v144, &v117[v84], v121);
          v94 = sub_1AE23CCBC();
          v123 = *(v118 + 8);
          v123(v122, v121);
          v123(v120, v121);
          goto LABEL_20;
        }

        (*(v98 + 8))(v70, v152);
      }
    }

    else
    {
      v116 = v169;
      (v83)(v76, v169, v60);
      v87 = v116;
      if (!swift_getEnumCaseMultiPayload())
      {
        v168 = a10;
        v133 = v96;
        v134 = *(v96 + 32);
        v135 = v139;
        v136 = v161;
        v134(v139, v76, v161);
        v137 = v140;
        v134(v140, &v87[v84], v136);
        v94 = sub_1AE23CCBC();
        v138 = *(v133 + 8);
        v138(v137, v136);
        v138(v135, v136);
        goto LABEL_20;
      }

      (*(v96 + 8))(v76, v161);
    }

LABEL_27:
    v94 = 0;
    v131 = v166;
    v130 = v167;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v94 = 0;
      v131 = v166;
      v130 = v167;
      v87 = v169;
      goto LABEL_28;
    }

    v106 = v160;
    v107 = v169;
    (v83)(v160, v169, v60);
    v87 = v107;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v108 = v155;
      v109 = *(v155 + 32);
      v110 = v149;
      v111 = v106;
      v112 = v157;
      v109(v149, v111, v157);
      v113 = v150;
      v109(v150, &v169[v84], v112);
      v94 = sub_1AE23CCBC();
      v114 = *(v108 + 8);
      v114(v113, v112);
      v115 = v110;
      v87 = v169;
      v114(v115, v112);
      goto LABEL_20;
    }

    (*(v155 + 8))(v106, v157);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v124 = v159;
    v125 = v169;
    (v83)(v159, v169, v60);
    v87 = v125;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v154 + 8))(v124, v158);
      goto LABEL_27;
    }

    v126 = v154;
    v127 = *(v154 + 32);
    v102 = v147;
    v128 = v124;
    v103 = v158;
    v127(v147, v128, v158);
    v129 = v148;
    v127(v148, &v125[v84], v103);
    v94 = sub_1AE23CCBC();
    v105 = *(v126 + 8);
    v105(v129, v103);
LABEL_19:
    v105(v102, v103);
    goto LABEL_20;
  }

  v86 = v169;
  (v83)(v67, v169, v60);
  v87 = v86;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v153 + 8))(v67, v156);
    goto LABEL_27;
  }

  v88 = v153;
  v89 = *(v153 + 32);
  v90 = v145;
  v91 = v67;
  v92 = v156;
  v89(v145, v91, v156);
  v93 = v146;
  v89(v146, &v86[v84], v92);
  v94 = sub_1AE23CCBC();
  v95 = *(v88 + 8);
  v95(v93, v92);
  v95(v90, v92);
LABEL_20:
  v130 = v162;
  v131 = v60;
LABEL_28:
  (*(v130 + 8))(v87, v131);
  return v94 & 1;
}

uint64_t static TaggedValue_7<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v180 = a1;
  v169 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a14);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v158 = &v144 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v144 - v25;
  v168 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = &v144 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v155 = &v144 - v30;
  v167 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = &v144 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v153 = &v144 - v35;
  v166 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = &v144 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v151 = &v144 - v40;
  v165 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v144 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v149 = &v144 - v45;
  v164 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = &v144 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v147 = &v144 - v50;
  v163 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v144 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v145 = &v144 - v55;
  v171 = v57;
  v181 = v57;
  v182[0] = v58;
  v172 = v58;
  v173 = v59;
  v182[1] = v59;
  v183[0] = v60;
  v174 = v60;
  v175 = v61;
  v183[1] = v61;
  v184[0] = v62;
  v176 = v62;
  v170 = a9;
  v184[1] = a9;
  v185[0] = v63;
  v185[1] = a12;
  v185[2] = v64;
  v185[3] = v66;
  v185[4] = v65;
  v185[5] = v68;
  v185[6] = v67;
  v69 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v181);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v162 = &v144 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v161 = &v144 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v160 = &v144 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v159 = &v144 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v144 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v144 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v144 - v85;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v179 = *(TupleTypeMetadata2 - 8);
  v88 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v144 - v89;
  v177 = v70;
  v178 = v91;
  v92 = *(v91 + 48);
  v93 = *(v70 + 16);
  v93(&v144 - v89, v180, v69, v88);
  v94 = v92;
  (v93)(&v90[v92], a2, v69);
  v95 = v90;
  v96 = v69;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v111 = v162;
        (v93)(v162, v95, v69);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          v98 = *(v169 + 8);
          v99 = v111;
          v100 = &v186;
          goto LABEL_26;
        }

        v112 = v169;
        v113 = *(v169 + 32);
        v114 = v157;
        v115 = v170;
        v113(v157, v111, v170);
        v116 = &v95[v92];
        v117 = v158;
        v113(v158, v116, v115);
        v103 = v96;
        v118 = sub_1AE23CCBC();
        v119 = *(v112 + 8);
        v119(v117, v115);
        v119(v114, v115);
        goto LABEL_35;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v101 = v160;
      (v93)(v160, v95, v69);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v102 = v167;
        v103 = v69;
        v104 = *(v167 + 32);
        v105 = v153;
        v106 = v101;
        v107 = v175;
        v104(v153, v106, v175);
        v108 = &v95[v94];
        v109 = v184;
LABEL_22:
        v134 = *(v109 - 32);
        v104(v134, v108, v107);
        v118 = sub_1AE23CCBC();
        v135 = *(v102 + 8);
        v135(v134, v107);
        v135(v105, v107);
        goto LABEL_35;
      }

      (*(v167 + 8))(v101, v175);
    }

    else
    {
      v130 = v161;
      (v93)(v161, v95, v69);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v102 = v168;
        v103 = v69;
        v104 = *(v168 + 32);
        v105 = v155;
        v131 = v130;
        v107 = v176;
        v104(v155, v131, v176);
        v108 = &v95[v94];
        v109 = v185;
        goto LABEL_22;
      }

      (*(v168 + 8))(v130, v176);
    }

LABEL_31:
    v118 = 0;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (v93)(v80, v95, v69);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v98 = *(v165 + 8);
        v99 = v80;
        v100 = &v188;
        goto LABEL_26;
      }

      v102 = v165;
      v103 = v69;
      v104 = *(v165 + 32);
      v105 = v149;
      v110 = v80;
      v107 = v173;
      v104(v149, v110, v173);
      v108 = &v95[v94];
      v109 = v182;
    }

    else
    {
      v132 = v159;
      (v93)(v159, v95, v69);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v98 = *(v166 + 8);
        v99 = v132;
        v136 = v174;
        goto LABEL_30;
      }

      v102 = v166;
      v103 = v69;
      v104 = *(v166 + 32);
      v105 = v151;
      v133 = v132;
      v107 = v174;
      v104(v151, v133, v174);
      v108 = &v95[v94];
      v109 = v183;
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    (v93)(v86, v95, v69);
    if (swift_getEnumCaseMultiPayload())
    {
      v98 = *(v163 + 8);
      v99 = v86;
      v100 = &v187;
LABEL_26:
      v136 = *(v100 - 32);
LABEL_30:
      v98(v99, v136);
      goto LABEL_31;
    }

    v137 = v163;
    v103 = v69;
    v138 = *(v163 + 32);
    v139 = v145;
    v140 = v171;
    v138(v145, v86, v171);
    v141 = v146;
    v138(v146, &v95[v92], v140);
    v118 = sub_1AE23CCBC();
    v142 = *(v137 + 8);
    v142(v141, v140);
    v142(v139, v140);
LABEL_35:
    v128 = v177;
    v129 = v103;
    goto LABEL_36;
  }

  v120 = v95;
  (v93)(v83, v95, v69);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v164 + 8))(v83, v172);
    v118 = 0;
LABEL_32:
    v129 = v178;
    v128 = v179;
    goto LABEL_36;
  }

  v121 = v164;
  v122 = v69;
  v123 = *(v164 + 32);
  v124 = v147;
  v125 = v172;
  v123(v147, v83, v172);
  v126 = v148;
  v123(v148, &v120[v92], v125);
  v118 = sub_1AE23CCBC();
  v127 = *(v121 + 8);
  v127(v126, v125);
  v127(v124, v125);
  v128 = v177;
  v129 = v122;
  v95 = v120;
LABEL_36:
  (*(v128 + 8))(v95, v129);
  return v118 & 1;
}

uint64_t static TaggedValue_8<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v225 = a1;
  v213 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a17);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v201 = &v185 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v200 = &v185 - v28;
  v212 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v199 = &v185 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v198 = &v185 - v32;
  v211 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = &v185 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v196 = &v185 - v37;
  v209 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v195 = &v185 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v194 = &v185 - v42;
  v222 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v193 = &v185 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v192 = &v185 - v47;
  v208 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = &v185 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v190 = &v185 - v52;
  v221 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v189 = &v185 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v188 = &v185 - v57;
  v202 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v187 = &v185 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v186 = &v185 - v62;
  v203 = v64;
  v226[0] = v64;
  v226[1] = v65;
  v215 = v65;
  v217 = v66;
  v226[2] = v66;
  v226[3] = v67;
  v210 = v67;
  v218 = v68;
  v226[4] = v68;
  v227[0] = v69;
  v219 = v69;
  v214 = a9;
  v227[1] = a9;
  v227[2] = a10;
  v216 = a10;
  v227[3] = a11;
  v227[4] = a13;
  v227[5] = v71;
  v227[6] = v70;
  v227[7] = v73;
  v227[8] = v72;
  v227[9] = v75;
  v227[10] = v74;
  v76 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v226);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v207 = &v185 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v206 = &v185 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v205 = &v185 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v204 = &v185 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v185 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v185 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v185 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v185 - v95;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v224 = *(TupleTypeMetadata2 - 8);
  v98 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v100 = &v185 - v99;
  v223 = v101;
  v102 = *(v101 + 48);
  v220 = v77;
  v103 = *(v77 + 16);
  v103(&v185 - v99, v225, v76, v98);
  v225 = v102;
  (v103)(&v100[v102], a2, v76);
  v104 = v100;
  v105 = v76;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v119 = v221;
    v120 = v222;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v163 = v87;
        (v103)(v87, v104, v105);
        v164 = v225;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v147 = v120;
          v165 = v163;
          v148 = *(v120 + 32);
          v149 = v192;
          v151 = v210;
          v148(v192, v165, v210);
          v152 = &v104[v164];
          v153 = &v225;
          goto LABEL_23;
        }

        (*(v120 + 8))(v163, v210);
LABEL_35:
        v117 = 0;
        goto LABEL_36;
      }

      v123 = v90;
      (v103)(v90, v104, v105);
      v124 = v225;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v208 + 8))(v90, v217);
        goto LABEL_35;
      }

      v125 = v208;
      v126 = *(v208 + 32);
      v127 = v190;
      v128 = v217;
      v126(v190, v123, v217);
      v129 = &v104[v124];
      v130 = v191;
      v126(v191, v129, v128);
      v117 = sub_1AE23CCBC();
      v131 = *(v125 + 8);
      v131(v130, v128);
      v131(v127, v128);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v121 = v96;
        (v103)(v96, v104, v105);
        v122 = v225;
        if (!swift_getEnumCaseMultiPayload())
        {
          v177 = v202;
          v178 = *(v202 + 32);
          v179 = v186;
          v180 = v121;
          v181 = v203;
          v178(v186, v180, v203);
          v182 = v187;
          v178(v187, &v104[v122], v181);
          v117 = sub_1AE23CCBC();
          v183 = *(v177 + 8);
          v183(v182, v181);
          v183(v179, v181);
          goto LABEL_39;
        }

        (*(v202 + 8))(v121, v203);
        goto LABEL_35;
      }

      v154 = v93;
      (v103)(v93, v104, v105);
      v155 = v225;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v119 + 8))(v154, v215);
        goto LABEL_35;
      }

      v156 = v119;
      v157 = *(v119 + 32);
      v158 = v188;
      v159 = v215;
      v157(v188, v154, v215);
      v160 = &v104[v155];
      v161 = v189;
      v157(v189, v160, v159);
      v117 = sub_1AE23CCBC();
      v162 = *(v156 + 8);
      v162(v161, v159);
      v162(v158, v159);
    }

LABEL_39:
    v144 = v220;
    v145 = v105;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v107 = v225;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v108 = v207;
        (v103)(v207, v104, v76);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v109 = v76;
          v110 = v213;
          v111 = *(v213 + 32);
          v112 = v107;
          v113 = v200;
          v114 = v108;
          v115 = v216;
          v111(v200, v114, v216);
          v116 = v201;
          v111(v201, &v104[v112], v115);
          v117 = sub_1AE23CCBC();
          v118 = *(v110 + 8);
          v118(v116, v115);
          v118(v113, v115);
LABEL_26:
          v144 = v220;
          v145 = v109;
          goto LABEL_40;
        }

        (*(v213 + 8))(v108, v216);
      }

      goto LABEL_35;
    }

    v146 = v206;
    (v103)(v206, v104, v76);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v147 = v212;
      v148 = *(v212 + 32);
      v149 = v198;
      v150 = v146;
      v151 = v214;
      v148(v198, v150, v214);
      v152 = &v104[v107];
      v153 = v227;
LABEL_23:
      v166 = *(v153 - 32);
      v148(v166, v152, v151);
      v117 = sub_1AE23CCBC();
      v167 = *(v147 + 8);
      v167(v166, v151);
      v167(v149, v151);
      goto LABEL_39;
    }

    (*(v212 + 8))(v146, v214);
    goto LABEL_35;
  }

  v132 = v225;
  if (EnumCaseMultiPayload != 4)
  {
    v168 = v205;
    (v103)(v205, v104, v105);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v169 = v211;
      v109 = v105;
      v170 = *(v211 + 32);
      v171 = v196;
      v172 = v168;
      v173 = v219;
      v170(v196, v172, v219);
      v174 = &v104[v132];
      v175 = v197;
      v170(v197, v174, v173);
      v117 = sub_1AE23CCBC();
      v176 = *(v169 + 8);
      v176(v175, v173);
      v176(v171, v173);
      goto LABEL_26;
    }

    (*(v211 + 8))(v168, v219);
    goto LABEL_35;
  }

  v133 = v204;
  v134 = v76;
  v135 = v104;
  (v103)(v204, v104, v76);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v209 + 8))(v133, v218);
    v117 = 0;
LABEL_36:
    v145 = v223;
    v144 = v224;
    goto LABEL_40;
  }

  v136 = v209;
  v137 = *(v209 + 32);
  v138 = v194;
  v139 = v133;
  v140 = v218;
  v137(v194, v139, v218);
  v141 = &v135[v132];
  v142 = v195;
  v137(v195, v141, v140);
  v117 = sub_1AE23CCBC();
  v143 = *(v136 + 8);
  v143(v142, v140);
  v143(v138, v140);
  v144 = v220;
  v145 = v134;
  v104 = v135;
LABEL_40:
  (*(v144 + 8))(v104, v145);
  return v117 & 1;
}

uint64_t static TaggedValue_9<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v205 = a1;
  v206 = a2;
  v186 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a20);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v160 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v177 = &v160 - v30;
  v185 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v160 - v34;
  v184 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = &v160 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v173 = &v160 - v38;
  v183 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = &v160 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v171 = &v160 - v43;
  v182 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = &v160 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v169 = &v160 - v48;
  v181 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v168 = &v160 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v167 = &v160 - v53;
  v180 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v160 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v165 = &v160 - v58;
  v179 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v164 = &v160 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v163 = &v160 - v63;
  v200 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v160 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v161 = &v160 - v68;
  v201 = v70;
  v207 = v70;
  v208[0] = v71;
  v190 = v71;
  v191 = v72;
  v208[1] = v72;
  v209[0] = v73;
  v193 = v73;
  v194 = v74;
  v209[1] = v74;
  v209[2] = v75;
  v192 = v75;
  v188 = a9;
  v209[3] = a9;
  v209[4] = a10;
  v189 = a10;
  v187 = a11;
  v209[5] = a11;
  v209[6] = a12;
  v209[7] = a14;
  v209[8] = a16;
  v209[9] = v77;
  v209[10] = v76;
  v209[11] = v79;
  v209[12] = v78;
  v209[13] = v81;
  v209[14] = v80;
  v82 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v207);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v199 = &v160 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v198 = &v160 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v197 = &v160 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v196 = &v160 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v195 = &v160 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v160 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v160 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v160 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v160 - v103;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v204 = *(TupleTypeMetadata2 - 8);
  v106 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v108 = &v160 - v107;
  v203 = v109;
  v110 = *(v109 + 48);
  v202 = v83;
  v111 = *(v83 + 16);
  v111(&v160 - v107, v205, v82, v106);
  v112 = v110;
  (v111)(&v108[v110], v206, v82);
  v113 = v108;
  v114 = v82;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v143 = v197;
        v144 = v113;
        (v111)(v197, v113, v82);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v145 = v184;
          v146 = *(v184 + 32);
          v147 = v173;
          v148 = v188;
          v146(v173, v143, v188);
          v149 = &v144[v112];
          v150 = v174;
          v146(v174, v149, v148);
          v132 = sub_1AE23CCBC();
          v151 = *(v145 + 8);
          v151(v150, v148);
          v151(v147, v148);
          v141 = v202;
          v142 = v114;
          v113 = v144;
          goto LABEL_40;
        }

        (*(v184 + 8))(v143, v188);
        v132 = 0;
LABEL_39:
        v141 = v204;
        v142 = v203;
        goto LABEL_40;
      }

      v124 = v196;
      (v111)(v196, v113, v82);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v116 = v183;
        v117 = *(v183 + 32);
        v118 = v171;
        v125 = v124;
        v119 = v192;
        v117(v171, v125, v192);
        v120 = &v113[v112];
        v121 = &v204;
        goto LABEL_26;
      }

      (*(v183 + 8))(v124, v192);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v134 = v198;
      (v111)(v198, v113, v82);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v116 = v185;
        v117 = *(v185 + 32);
        v118 = v175;
        v135 = v134;
        v119 = v189;
        v117(v175, v135, v189);
        v120 = &v113[v112];
        v121 = v208;
        goto LABEL_26;
      }

      (*(v185 + 8))(v134, v189);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v122 = v199;
      (v111)(v199, v113, v82);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v116 = v186;
        v117 = *(v186 + 32);
        v118 = v177;
        v123 = v122;
        v119 = v187;
        v117(v177, v123, v187);
        v120 = &v113[v112];
        v121 = v209;
        goto LABEL_26;
      }

      (*(v186 + 8))(v122, v187);
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (v111)(v101, v113, v82);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v116 = v179;
        v117 = *(v179 + 32);
        v118 = v163;
        v138 = v101;
        v119 = v190;
        v117(v163, v138, v190);
        v120 = &v113[v112];
        v121 = &v196;
LABEL_26:
        v139 = *(v121 - 32);
        v117(v139, v120, v119);
        v132 = sub_1AE23CCBC();
        v140 = *(v116 + 8);
        v140(v139, v119);
        v140(v118, v119);
        goto LABEL_28;
      }

      (*(v179 + 8))(v101, v190);
LABEL_38:
      v132 = 0;
      goto LABEL_39;
    }

    (v111)(v104, v113, v82);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v200 + 8))(v104, v201);
      goto LABEL_38;
    }

    v153 = v200;
    v154 = *(v200 + 32);
    v155 = v161;
    v156 = v201;
    v154(v161, v104, v201);
    v157 = &v113[v112];
    v158 = v162;
    v154(v162, v157, v156);
    v132 = sub_1AE23CCBC();
    v159 = *(v153 + 8);
    v159(v158, v156);
    v159(v155, v156);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        (v111)(v95, v113, v82);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v116 = v181;
          v117 = *(v181 + 32);
          v118 = v167;
          v119 = v193;
          v117(v167, v95, v193);
          v120 = &v113[v112];
          v121 = &v200;
          goto LABEL_26;
        }

        (*(v181 + 8))(v95, v193);
        goto LABEL_38;
      }

      v136 = v195;
      (v111)(v195, v113, v82);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v116 = v182;
        v117 = *(v182 + 32);
        v118 = v169;
        v137 = v136;
        v119 = v194;
        v117(v169, v137, v194);
        v120 = &v113[v112];
        v121 = &v202;
        goto LABEL_26;
      }

      (*(v182 + 8))(v136, v194);
      goto LABEL_38;
    }

    (v111)(v98, v113, v82);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v180 + 8))(v98, v191);
      goto LABEL_38;
    }

    v126 = v180;
    v127 = *(v180 + 32);
    v128 = v165;
    v129 = v191;
    v127(v165, v98, v191);
    v130 = &v113[v112];
    v131 = v166;
    v127(v166, v130, v129);
    v132 = sub_1AE23CCBC();
    v133 = *(v126 + 8);
    v133(v131, v129);
    v133(v128, v129);
  }

LABEL_28:
  v141 = v202;
  v142 = v114;
LABEL_40:
  (*(v141 + 8))(v113, v142);
  return v132 & 1;
}

void TaggedValue_1.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TaggedValue_1.TaggedEnum(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&inited - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v19 = &inited - v18;
  v20 = *(a1 + 72);
  if (!v20)
  {
    sub_1ADE42E40(v14, v15, v16);
    swift_allocError();
    *v26 = 0xD000000000000017;
    *(v26 + 8) = 0x80000001AE25FB70;
    *(v26 + 16) = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v38 = v17;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v21 = *(v20 + 16);
  v39 = a5;
  if ((~v21 & 0xF000000000000007) != 0 && ((v21 >> 59) & 0x1E | (v21 >> 2) & 1) == 0xB)
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v22 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v23 = v22[2];
  if (v23)
  {
    v24 = *(v20 + 16);
    if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v25 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v27 = v25[3];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v28 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v32 = sub_1ADE0262C(v28, a1);
    AnyCRValue.init(from:)(v32, &v40);

    if (!v5)
    {

      v33 = v40;
      *v12 = v23;
      v12[1] = v33;
      swift_storeEnumTagMultiPayload();
      (*(v38 + 32))(v39, v12, v10);
      return;
    }

    goto LABEL_26;
  }

  v29 = *(v20 + 16);
  if ((~v29 & 0xF000000000000007) != 0)
  {
    v31 = v39;
    if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xB)
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v30 = &unk_1EB5B9140;
    }
  }

  else
  {
    v30 = &unk_1EB5B9140;
    v31 = v39;
  }

  swift_beginAccess();
  v34 = v30[3];
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v35 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v36 = sub_1ADE0262C(v35, a1);
  (*(*(*(a3 + 8) + 8) + 8))(v36, a2);

  if (v5)
  {
LABEL_26:

    return;
  }

  swift_storeEnumTagMultiPayload();
  (*(v38 + 32))(v31, v19, v10);
}

void TaggedValue_1.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v11 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v4, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v49 - v13);
  v18 = sub_1ADE71C08(v15, v16, v17);
  if (!v2)
  {
    v19 = v18;
    v50 = v9;
    v51 = v7;
    v52 = 0;
    (*(v12 + 16))(v14, v53, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *v14;
      v20 = v14[1];
      swift_beginAccess();
      v22 = *(*(v19 + 24) + 16);
      v23 = (~v22 & 0xF000000000000007) != 0 && ((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 11;
      v24 = a1;
      if (v23)
      {
        inited = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE5178(inited);
      }

      swift_beginAccess();
      *(inited + 16) = v21;
      sub_1AE1B7530(inited);
      swift_endAccess();
      v32 = *(a1 + 112);
      v31 = *(a1 + 120);
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v33 = v52;
      v34 = (*(*v20 + 152))(a1);
      if (v33)
      {
      }

      else
      {
        v45 = sub_1ADE71C08(v34, v35, v36);
        swift_beginAccess();
        v46 = *(v45 + 24);
        *(v24 + 112) = v32;

        *(v24 + 120) = v31;

        swift_beginAccess();
        v47 = *(*(v19 + 24) + 16);
        if ((~v47 & 0xF000000000000007) != 0 && ((v47 >> 59) & 0x1E | (v47 >> 2) & 1) == 0xB)
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v48 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v48 = sub_1ADDE5178(v48);
        }

        swift_beginAccess();
        *(v48 + 24) = v46;

        sub_1AE1B7530(v48);
        swift_endAccess();
      }
    }

    else
    {
      v26 = v5;
      v27 = v4;
      (*(v5 + 32))(v51, v14, v4);
      swift_beginAccess();
      v28 = *(*(v19 + 24) + 16);
      if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 11)
      {
        v30 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v30 = swift_initStaticObject();
      }

      v37 = v50;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v30 = sub_1ADDE5178(v30);
      }

      swift_beginAccess();
      *(v30 + 16) = 0;
      sub_1AE1B7530(v30);
      v38 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v38);
      *(&v49 - 4) = v27;
      *(&v49 - 3) = v37;
      v40 = v51;
      v39 = v52;
      *(&v49 - 2) = v51;
      *(&v49 - 1) = a1;
      v41 = sub_1ADE6B938(sub_1ADE74060);
      if (v39)
      {
      }

      else
      {
        v42 = v41;
        swift_beginAccess();
        v43 = *(*(v19 + 24) + 16);
        if ((~v43 & 0xF000000000000007) != 0 && ((v43 >> 59) & 0x1E | (v43 >> 2) & 1) == 0xB)
        {
          v44 = *((v43 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v44 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v44 = sub_1ADDE5178(v44);
        }

        swift_beginAccess();
        *(v44 + 24) = v42;

        sub_1AE1B7530(v44);
        swift_endAccess();
      }

      (*(v26 + 8))(v40, v27);
    }
  }
}

void TaggedValue_1<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v5, *(v9 + 24), v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17[-1] - v13;
  (*(v15 + 16))(&v17[-1] - v13, v4, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(**(v14 + 1) + 80))(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    (*(v6 + 32))(v8, v14, v5);
    sub_1AE23CBAC();
    (*(v6 + 8))(v8, v5);
  }
}

void TaggedValue_2.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v60[0] = a2;
  v60[1] = a3;
  v60[2] = a4;
  v60[3] = a5;
  v11 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v60);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&inited - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &inited - v15;
  MEMORY[0x1EEE9AC00](v17);
  v23 = &inited - v22;
  v24 = *(a1 + 72);
  if (!v24)
  {
    sub_1ADE42E40(v18, v19, v20);
    swift_allocError();
    *v33 = 0xD000000000000017;
    *(v33 + 8) = 0x80000001AE25FB70;
    *(v33 + 16) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v55 = v21;
  v56 = v18;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v25 = *(v24 + 16);
  v57 = a6;
  if ((~v25 & 0xF000000000000007) != 0 && ((v25 >> 59) & 0x1E | (v25 >> 2) & 1) == 0xB)
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v26 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v27 = v26[2];
  if (v27 != 1)
  {
    if (v27)
    {
      v38 = *(v24 + 16);
      if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v39 = &unk_1EB5B9140;
      }

      swift_beginAccess();
      v40 = v39[3];
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v41 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v42 = sub_1ADE0262C(v41, a1);
      v43 = v59;
      AnyCRValue.init(from:)(v42, &v61);

      if (!v43)
      {

        v44 = v61;
        *v13 = v27;
        v13[1] = v44;
        v45 = v56;
        swift_storeEnumTagMultiPayload();
        (*(v55 + 32))(v57, v13, v45);
        return;
      }
    }

    else
    {
      v28 = *(v24 + 16);
      if ((~v28 & 0xF000000000000007) != 0)
      {
        v30 = v57;
        v31 = v58;
        v32 = v59;
        if (((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 0xB)
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v29 = &unk_1EB5B9140;
        }
      }

      else
      {
        v29 = &unk_1EB5B9140;
        v30 = v57;
        v31 = v58;
        v32 = v59;
      }

      swift_beginAccess();
      v46 = v29[3];
      if (v46)
      {
        v47 = v46;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v47 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v48 = sub_1ADE0262C(v47, a1);
      (*(*(*(v31 + 8) + 8) + 8))(v48, a2);

      if (!v32)
      {

        v49 = v56;
        swift_storeEnumTagMultiPayload();
        (*(v55 + 32))(v30, v23, v49);
        return;
      }
    }

    goto LABEL_37;
  }

  v34 = *(v24 + 16);
  if ((~v34 & 0xF000000000000007) != 0)
  {
    v36 = v57;
    v37 = v59;
    if (((v34 >> 59) & 0x1E | (v34 >> 2) & 1) == 0xB)
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v35 = &unk_1EB5B9140;
    }
  }

  else
  {
    v35 = &unk_1EB5B9140;
    v36 = v57;
    v37 = v59;
  }

  swift_beginAccess();
  v50 = v35[3];
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v51 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v52 = sub_1ADE0262C(v51, a1);
  (*(*(*(a5 + 8) + 8) + 8))(v52, a3);

  if (v37)
  {
LABEL_37:

    return;
  }

  v53 = v56;
  swift_storeEnumTagMultiPayload();
  (*(v55 + 32))(v36, v16, v53);
}

void TaggedValue_2.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v72 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v70 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  v73[0] = v8;
  v73[1] = v4;
  v71 = v13;
  v74 = v13;
  v14 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v73);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v67 - v16);
  v21 = sub_1ADE71C08(v18, v19, v20);
  if (!v2)
  {
    v22 = v21;
    v67 = v11;
    v68 = a1;
    v23 = v72;
    v69 = 0;
    (*(v15 + 16))(v17, v75, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = v23;
        v26 = *(v23 + 32);
        v75 = v6;
        v27 = v6;
        v28 = v4;
        v26(v27, v17, v4);
        swift_beginAccess();
        v29 = *(*(v22 + 24) + 16);
        v30 = v68;
        if ((~v29 & 0xF000000000000007) != 0 && ((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xB)
        {
          inited = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 1;
        sub_1AE1B7530(inited);
        v40 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v40);
        *(&v67 - 6) = v8;
        *(&v67 - 5) = v4;
        *(&v67 - 2) = v71;
        v41 = v75;
        *(&v67 - 2) = v75;
        *(&v67 - 1) = v30;
        v42 = v69;
        v43 = sub_1ADE6B938(sub_1ADFFA7A0);
        if (v42)
        {
        }

        else
        {
          v57 = v43;
          swift_beginAccess();
          v58 = *(*(v22 + 24) + 16);
          if ((~v58 & 0xF000000000000007) != 0 && ((v58 >> 59) & 0x1E | (v58 >> 2) & 1) == 0xB)
          {
            v59 = *((v58 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v59 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v59 = sub_1ADDE5178(v59);
          }

          swift_beginAccess();
          *(v59 + 24) = v57;

          sub_1AE1B7530(v59);
          swift_endAccess();
        }

        (*(v25 + 8))(v41, v28);
      }

      else
      {
        v36 = *v17;
        v37 = v17[1];
        swift_beginAccess();
        v38 = *(*(v22 + 24) + 16);
        if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v39 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v39 = sub_1ADDE5178(v39);
        }

        swift_beginAccess();
        *(v39 + 16) = v36;
        sub_1AE1B7530(v39);
        swift_endAccess();
        v51 = v68;
        v50 = v69;
        v53 = *(v68 + 112);
        v52 = *(v68 + 120);
        *(v68 + 112) = 0;
        *(v51 + 120) = 0;
        v54 = (*(*v37 + 152))(v51);
        if (v50)
        {
        }

        else
        {
          v63 = sub_1ADE71C08(v54, v55, v56);
          swift_beginAccess();
          v64 = *(v63 + 24);
          *(v51 + 112) = v53;

          *(v51 + 120) = v52;

          swift_beginAccess();
          v65 = *(*(v22 + 24) + 16);
          if ((~v65 & 0xF000000000000007) != 0 && ((v65 >> 59) & 0x1E | (v65 >> 2) & 1) == 0xB)
          {
            v66 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v66 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v66 = sub_1ADDE5178(v66);
          }

          swift_beginAccess();
          *(v66 + 24) = v64;

          sub_1AE1B7530(v66);
          swift_endAccess();
        }
      }
    }

    else
    {
      v32 = v70;
      (*(v70 + 32))(v67, v17, v8);
      swift_beginAccess();
      v33 = *(*(v22 + 24) + 16);
      v34 = v68;
      if ((~v33 & 0xF000000000000007) != 0 && ((v33 >> 59) & 0x1E | (v33 >> 2) & 1) == 0xB)
      {
        v35 = *((v33 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v35 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v35 = sub_1ADDE5178(v35);
      }

      swift_beginAccess();
      *(v35 + 16) = 0;
      sub_1AE1B7530(v35);
      v44 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v44);
      *&v45 = v8;
      *(&v45 + 1) = v4;
      v46 = v71;
      *(&v67 - 3) = v45;
      *(&v67 - 2) = v46;
      v47 = v67;
      *(&v67 - 2) = v67;
      *(&v67 - 1) = v34;
      v48 = v69;
      v49 = sub_1ADE6B938(sub_1ADFFA7E8);
      if (v48)
      {

        (*(v32 + 8))(v47, v8);
      }

      else
      {
        v60 = v49;
        swift_beginAccess();
        v61 = *(*(v22 + 24) + 16);
        if ((~v61 & 0xF000000000000007) != 0 && ((v61 >> 59) & 0x1E | (v61 >> 2) & 1) == 0xB)
        {
          v62 = *((v61 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v62 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v62 = sub_1ADDE5178(v62);
        }

        swift_beginAccess();
        *(v62 + 24) = v60;

        sub_1AE1B7530(v62);
        swift_endAccess();

        (*(v70 + 8))(v47, v8);
      }
    }
  }
}

double TaggedValue_2<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v11;
  v25[1] = v6;
  v26 = *(v16 + 32);
  v17 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v25);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - v19;
  (*(v21 + 16))(v24 - v19, v5, v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v20, v6);
      sub_1AE23CBAC();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(**(v20 + 1) + 80))(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v25, *(&v26 + 1));
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v20, v11);
    sub_1AE23CBAC();
    (*(v12 + 8))(v15, v11);
  }

  return result;
}

void TaggedValue_3.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79[0] = a2;
  v79[1] = a3;
  v79[2] = a4;
  v79[3] = a5;
  v75 = a6;
  v76 = a5;
  v79[4] = a6;
  v79[5] = a7;
  v74 = a7;
  v13 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v79);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v27 = &v70 - v26;
  v28 = *(a1 + 72);
  if (!v28)
  {
    sub_1ADE42E40(v21, v22, v23);
    swift_allocError();
    *v36 = 0xD000000000000017;
    *(v36 + 8) = 0x80000001AE25FB70;
    *(v36 + 16) = 0;
    swift_willThrow();

    return;
  }

  v70 = v25;
  v71 = v24;
  v72 = v21;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v77 = a1;
  *(inited + 16) = a1;
  v30 = *(v28 + 16);
  v73 = a8;
  if ((~v30 & 0xF000000000000007) != 0 && ((v30 >> 59) & 0x1E | (v30 >> 2) & 1) == 0xB)
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v31 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v32 = v31[2];
  if (v32 == 2)
  {
    v40 = *(v28 + 16);
    if ((~v40 & 0xF000000000000007) != 0)
    {
      v42 = v73;
      v43 = v77;
      if (((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v41 = &unk_1EB5B9140;
      }
    }

    else
    {
      v41 = &unk_1EB5B9140;
      v42 = v73;
      v43 = v77;
    }

    swift_beginAccess();
    v52 = v41[3];
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v53 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v54 = sub_1ADE0262C(v53, v43);
    v55 = v78;
    (*(*(*(v74 + 8) + 8) + 8))(v54, a4);
    if (v55)
    {

      return;
    }

    v56 = v72;
    swift_storeEnumTagMultiPayload();
    v57 = *(v71 + 32);
    v58 = v42;
    goto LABEL_52;
  }

  if (v32 == 1)
  {
    v37 = *(v28 + 16);
    if ((~v37 & 0xF000000000000007) != 0)
    {
      v39 = v77;
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v38 = &unk_1EB5B9140;
      }
    }

    else
    {
      v38 = &unk_1EB5B9140;
      v39 = v77;
    }

    swift_beginAccess();
    v47 = v38[3];
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v48 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v49 = sub_1ADE0262C(v48, v39);
    v50 = v78;
    (*(*(*(v75 + 8) + 8) + 8))(v49, a3);

    if (!v50)
    {

      v51 = v72;
      swift_storeEnumTagMultiPayload();
      (*(v71 + 32))(v73, v19, v51);
      return;
    }

    goto LABEL_50;
  }

  if (v32)
  {
    v44 = *(v28 + 16);
    if ((~v44 & 0xF000000000000007) != 0)
    {
      v46 = v77;
      if (((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 0xB)
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v45 = &unk_1EB5B9140;
      }
    }

    else
    {
      v45 = &unk_1EB5B9140;
      v46 = v77;
    }

    swift_beginAccess();
    v65 = v45[3];
    if (v65)
    {
      v66 = v65;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v66 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v67 = sub_1ADE0262C(v66, v46);
    v68 = v78;
    AnyCRValue.init(from:)(v67, &v80);

    if (v68)
    {
      goto LABEL_50;
    }

    v69 = v80;
    v16 = v70;
    *v70 = v32;
    *(v16 + 1) = v69;
    v56 = v72;
    swift_storeEnumTagMultiPayload();
    v57 = *(v71 + 32);
    v58 = v73;
LABEL_52:
    v64 = v16;
    goto LABEL_53;
  }

  v33 = *(v28 + 16);
  if ((~v33 & 0xF000000000000007) != 0)
  {
    v35 = v73;
    if (((v33 >> 59) & 0x1E | (v33 >> 2) & 1) == 0xB)
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v34 = &unk_1EB5B9140;
    }
  }

  else
  {
    v34 = &unk_1EB5B9140;
    v35 = v73;
  }

  swift_beginAccess();
  v59 = v34[3];
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v60 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v61 = v77;

  v62 = sub_1ADE0262C(v60, v61);
  v63 = v78;
  (*(*(*(v76 + 8) + 8) + 8))(v62, a2);

  if (v63)
  {
LABEL_50:

    return;
  }

  v56 = v72;
  swift_storeEnumTagMultiPayload();
  v57 = *(v71 + 32);
  v58 = v35;
  v64 = v27;
LABEL_53:
  v57(v58, v64, v56);
}

double TaggedValue_3.encode(to:)(uint64_t a1, uint64_t a2)
{
  v94 = *(*(a2 + 32) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v93 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v92 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v13 + 48);
  v14 = *(v13 + 56);
  v90 = v16;
  *&v17 = v16;
  *(&v17 + 1) = *v18;
  *&v19 = v9;
  *(&v19 + 1) = v5;
  v95 = v17;
  v96 = v19;
  v99[1] = v17;
  v99[0] = v19;
  v100 = v15;
  v101 = v14;
  v20 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v99);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v87 - v22);
  v24 = v102;
  v28 = sub_1ADE71C08(v25, v26, v27);
  if (!v24)
  {
    v88 = v9;
    v30 = v97;
    v89 = a1;
    v31 = v28;
    v102 = 0;
    (*(v21 + 16))(v23, v98, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = v90;
        (*(v94 + 32))(v93, v23, v90);
        swift_beginAccess();
        v40 = *(*(v31 + 24) + 16);
        v41 = v89;
        if ((~v40 & 0xF000000000000007) != 0 && ((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
        {
          inited = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 2;
        sub_1AE1B7530(inited);
        v58 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v58);
        v59 = v95;
        *(&v87 - 4) = v96;
        *(&v87 - 3) = v59;
        *(&v87 - 4) = v15;
        *(&v87 - 3) = v14;
        v60 = v93;
        *(&v87 - 2) = v93;
        *(&v87 - 1) = v41;
        v61 = v102;
        v62 = sub_1ADE6B938(sub_1ADFFA830);
        if (v61)
        {
        }

        else
        {
          v77 = v62;
          swift_beginAccess();
          v78 = *(*(v31 + 24) + 16);
          if ((~v78 & 0xF000000000000007) != 0 && ((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
          {
            v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v79 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v79 = sub_1ADDE5178(v79);
          }

          swift_beginAccess();
          *(v79 + 24) = v77;

          sub_1AE1B7530(v79);
          swift_endAccess();
        }

        (*(v94 + 8))(v60, v39);
      }

      else
      {
        v48 = *v23;
        v49 = v23[1];
        swift_beginAccess();
        v50 = *(*(v31 + 24) + 16);
        v51 = v89;
        if ((~v50 & 0xF000000000000007) != 0 && ((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
        {
          v52 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v52 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v52 = sub_1ADDE5178(v52);
        }

        swift_beginAccess();
        *(v52 + 16) = v48;
        sub_1AE1B7530(v52);
        swift_endAccess();
        v69 = *(v51 + 112);
        v68 = *(v51 + 120);
        *(v51 + 112) = 0;
        *(v51 + 120) = 0;
        v70 = v102;
        v71 = (*(*v49 + 152))(v51);
        if (v70)
        {
        }

        else
        {
          v83 = sub_1ADE71C08(v71, v72, v73);
          swift_beginAccess();
          v84 = *(v83 + 24);
          *(v51 + 112) = v69;

          *(v51 + 120) = v68;

          swift_beginAccess();
          v85 = *(*(v31 + 24) + 16);
          if ((~v85 & 0xF000000000000007) != 0 && ((v85 >> 59) & 0x1E | (v85 >> 2) & 1) == 0xB)
          {
            v86 = *((v85 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v86 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v86 = sub_1ADDE5178(v86);
          }

          swift_beginAccess();
          *(v86 + 24) = v84;

          sub_1AE1B7530(v86);
          swift_endAccess();
        }
      }
    }

    else
    {
      v33 = v31;
      if (EnumCaseMultiPayload)
      {
        v43 = v92;
        v44 = v23;
        v45 = v5;
        (*(v92 + 32))(v30, v44, v5);
        swift_beginAccess();
        v46 = *(*(v31 + 24) + 16);
        if ((~v46 & 0xF000000000000007) != 0 && ((v46 >> 59) & 0x1E | (v46 >> 2) & 1) == 0xB)
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v47 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v47 = sub_1ADDE5178(v47);
        }

        swift_beginAccess();
        *(v47 + 16) = 1;
        sub_1AE1B7530(v47);
        v63 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v63);
        v64 = v95;
        *(&v87 - 4) = v96;
        *(&v87 - 3) = v64;
        *(&v87 - 4) = v15;
        *(&v87 - 3) = v14;
        v65 = v89;
        *(&v87 - 2) = v30;
        *(&v87 - 1) = v65;
        v66 = v102;
        v67 = sub_1ADE6B938(sub_1ADFB0048);
        if (v66)
        {
        }

        else
        {
          v80 = v67;
          swift_beginAccess();
          v81 = *(*(v33 + 24) + 16);
          if ((~v81 & 0xF000000000000007) != 0 && ((v81 >> 59) & 0x1E | (v81 >> 2) & 1) == 0xB)
          {
            v82 = *((v81 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v82 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v82 = sub_1ADDE5178(v82);
          }

          swift_beginAccess();
          *(v82 + 24) = v80;

          sub_1AE1B7530(v82);
          swift_endAccess();
        }

        (*(v43 + 8))(v30, v45);
      }

      else
      {
        v34 = v91;
        v35 = v23;
        v36 = v88;
        (*(v91 + 32))(v12, v35, v88);
        swift_beginAccess();
        v37 = *(*(v31 + 24) + 16);
        if ((~v37 & 0xF000000000000007) != 0 && ((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v38 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v38 = sub_1ADDE5178(v38);
        }

        swift_beginAccess();
        *(v38 + 16) = 0;
        sub_1AE1B7530(v38);
        v53 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v53);
        v54 = v95;
        *(&v87 - 4) = v96;
        *(&v87 - 3) = v54;
        *(&v87 - 4) = v15;
        *(&v87 - 3) = v14;
        v55 = v89;
        *(&v87 - 2) = v12;
        *(&v87 - 1) = v55;
        v56 = v102;
        v57 = sub_1ADE6B938(sub_1ADFFA878);
        if (v56)
        {
        }

        else
        {
          v74 = v57;
          swift_beginAccess();
          v75 = *(*(v33 + 24) + 16);
          if ((~v75 & 0xF000000000000007) != 0 && ((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
          {
            v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v76 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v76 = sub_1ADDE5178(v76);
          }

          swift_beginAccess();
          *(v76 + 24) = v74;

          sub_1AE1B7530(v76);
          swift_endAccess();
        }

        (*(v34 + 8))(v12, v36);
      }
    }
  }

  return result;
}

double TaggedValue_3<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v32 = a3;
  v37 = a1;
  v5 = *(a2 + 32);
  v33 = *(v5 - 8);
  v34 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 56);
  v39[0] = v14;
  v39[1] = v9;
  v39[2] = v5;
  v40 = *(v19 + 40);
  v41 = v20;
  v21 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v39);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - v23;
  (*(v25 + 16))(&v30 - v23, v36, v21, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = v33;
      (*(v33 + 32))(v7, v24, v5);
      sub_1AE23CBAC();
      (*(v28 + 8))(v7, v5);
    }

    else
    {
      (*(**(v24 + 1) + 80))(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v29 = v31;
    (*(v31 + 32))(v12, v24, v9);
    sub_1AE23CBAC();
    (*(v29 + 8))(v12, v9);
  }

  else
  {
    (*(v15 + 32))(v18, v24, v14);
    sub_1AE23CBAC();
    (*(v15 + 8))(v18, v14);
  }

  return result;
}

void TaggedValue_4.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v101[0] = a2;
  v101[1] = a3;
  v96 = a3;
  v97 = a5;
  v101[2] = a4;
  v101[3] = a5;
  v93 = a6;
  v101[4] = a6;
  v101[5] = a7;
  v94 = a8;
  v95 = a7;
  v101[6] = a8;
  v101[7] = a10;
  v92 = a10;
  v14 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v101);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v88 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v31 = &v88 - v30;
  v32 = *(a1 + 72);
  if (!v32)
  {
    sub_1ADE42E40(v25, v26, v27);
    swift_allocError();
    *v43 = 0xD000000000000017;
    *(v43 + 8) = 0x80000001AE25FB70;
    *(v43 + 16) = 0;
    swift_willThrow();

    return;
  }

  v89 = v29;
  v90 = v28;
  v91 = v25;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v98 = a9;
  v99 = a1;
  *(inited + 16) = a1;
  v34 = *(v32 + 16);
  if ((~v34 & 0xF000000000000007) != 0 && ((v34 >> 59) & 0x1E | (v34 >> 2) & 1) == 0xB)
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v35 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v36 = v35[2];
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v59 = *(v32 + 16);
      if ((~v59 & 0xF000000000000007) != 0)
      {
        v61 = v98;
        v62 = v99;
        v63 = v100;
        if (((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v60 = &unk_1EB5B9140;
        }
      }

      else
      {
        v60 = &unk_1EB5B9140;
        v61 = v98;
        v62 = v99;
        v63 = v100;
      }

      swift_beginAccess();
      v85 = v60[3];
      if (v85)
      {
        v86 = v85;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v86 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v87 = sub_1ADE0262C(v86, v62);
      (*(*(*(v94 + 8) + 8) + 8))(v87, a4);
      if (!v63)
      {

        v68 = v91;
        swift_storeEnumTagMultiPayload();
        v69 = *(v90 + 32);
        v70 = v61;
LABEL_65:
        v69(v70, v20, v68);
        return;
      }
    }

    else
    {
      if (v36 != 3)
      {
LABEL_16:
        v50 = *(v32 + 16);
        if ((~v50 & 0xF000000000000007) != 0)
        {
          v52 = v99;
          v53 = v100;
          if (((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v51 = &unk_1EB5B9140;
          }
        }

        else
        {
          v51 = &unk_1EB5B9140;
          v52 = v99;
          v53 = v100;
        }

        swift_beginAccess();
        v64 = v51[3];
        if (v64)
        {
          v65 = v64;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v65 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v66 = sub_1ADE0262C(v65, v52);
        AnyCRValue.init(from:)(v66, &v102);

        if (v53)
        {
          goto LABEL_38;
        }

        v67 = v102;
        v20 = v89;
        *v89 = v36;
        v20[1] = v67;
        v68 = v91;
        swift_storeEnumTagMultiPayload();
        v69 = *(v90 + 32);
        v70 = v98;
        goto LABEL_65;
      }

      v44 = *(v32 + 16);
      if ((~v44 & 0xF000000000000007) != 0)
      {
        v46 = v98;
        v47 = v99;
        v48 = v97;
        v49 = v92;
        if (((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 0xB)
        {
          v45 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v45 = &unk_1EB5B9140;
        }
      }

      else
      {
        v45 = &unk_1EB5B9140;
        v46 = v98;
        v47 = v99;
        v48 = v97;
        v49 = v92;
      }

      swift_beginAccess();
      v76 = v45[3];
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v77 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v78 = sub_1ADE0262C(v77, v47);
      v79 = v100;
      (*(*(*(v49 + 8) + 8) + 8))(v78, v48);
      if (!v79)
      {

        v80 = v91;
        swift_storeEnumTagMultiPayload();
        (*(v90 + 32))(v46, v17, v80);
        return;
      }
    }

    return;
  }

  if (v36)
  {
    if (v36 == 1)
    {
      v37 = *(v32 + 16);
      if ((~v37 & 0xF000000000000007) != 0)
      {
        v39 = v98;
        v40 = v100;
        v42 = v95;
        v41 = v96;
        if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v38 = &unk_1EB5B9140;
        }
      }

      else
      {
        v38 = &unk_1EB5B9140;
        v39 = v98;
        v40 = v100;
        v42 = v95;
        v41 = v96;
      }

      swift_beginAccess();
      v71 = v38[3];
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v72 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();
      v73 = v99;

      v74 = sub_1ADE0262C(v72, v73);
      (*(*(*(v42 + 8) + 8) + 8))(v74, v41);

      if (!v40)
      {

        v75 = v91;
        swift_storeEnumTagMultiPayload();
        (*(v90 + 32))(v39, v23, v75);
        return;
      }

LABEL_38:

      return;
    }

    goto LABEL_16;
  }

  v54 = *(v32 + 16);
  if ((~v54 & 0xF000000000000007) != 0)
  {
    v56 = v98;
    v57 = v99;
    v58 = v100;
    if (((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v55 = &unk_1EB5B9140;
    }
  }

  else
  {
    v55 = &unk_1EB5B9140;
    v56 = v98;
    v57 = v99;
    v58 = v100;
  }

  swift_beginAccess();
  v81 = v55[3];
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v82 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v83 = sub_1ADE0262C(v82, v57);
  (*(*(*(v93 + 8) + 8) + 8))(v83, a2);

  if (v58)
  {
    goto LABEL_38;
  }

  v84 = v91;
  swift_storeEnumTagMultiPayload();
  (*(v90 + 32))(v56, v31, v84);
}

double TaggedValue_4.encode(to:)(uint64_t a1, uint64_t a2)
{
  v127 = *(*(a2 + 40) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v126 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(*(v4 + 32) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = *(*(v7 + 24) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v118 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v14[6];
  v15 = v14[7];
  v18 = v14[8];
  v17 = v14[9];
  *&v19 = v11;
  v119 = v20;
  *(&v19 + 1) = v20;
  v130 = v21;
  *&v22 = v21;
  v121 = v23;
  *(&v22 + 1) = v23;
  v128 = v22;
  v132[1] = v22;
  v129 = v19;
  v132[0] = v19;
  v133 = v16;
  v134 = v15;
  v135 = v18;
  v136 = v17;
  v24 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v132);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v112 - v26);
  v28 = v137;
  v32 = sub_1ADE71C08(v29, v30, v31);
  if (!v28)
  {
    v112 = v11;
    v34 = v130;
    v113 = v16;
    v114 = v15;
    v116 = v18;
    v115 = v17;
    v137 = v32;
    v35 = a1;
    v117 = 0;
    (*(v25 + 16))(v27, v131, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v41 = v137;
      if (EnumCaseMultiPayload)
      {
        v38 = v119;
        (*(v124 + 32))(v123, v27, v119);
        swift_beginAccess();
        v55 = *(*(v41 + 24) + 16);
        v56 = v115;
        if ((~v55 & 0xF000000000000007) != 0 && ((v55 >> 59) & 0x1E | (v55 >> 2) & 1) == 0xB)
        {
          inited = *((v55 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v89 = v116;
        v90 = v114;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 1;
        sub_1AE1B7530(inited);
        v91 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v91);
        v92 = v128;
        *(&v112 - 5) = v129;
        *(&v112 - 4) = v92;
        *(&v112 - 6) = v113;
        *(&v112 - 5) = v90;
        *(&v112 - 4) = v89;
        *(&v112 - 3) = v56;
        v72 = v123;
        *(&v112 - 2) = v123;
        *(&v112 - 1) = a1;
        v93 = v117;
        v94 = sub_1ADE6B938(sub_1ADFFA950);
        if (v93)
        {
        }

        else
        {
          v104 = v94;
          swift_beginAccess();
          v105 = *(*(v41 + 24) + 16);
          if ((~v105 & 0xF000000000000007) != 0 && ((v105 >> 59) & 0x1E | (v105 >> 2) & 1) == 0xB)
          {
            v106 = *((v105 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v106 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v106 = sub_1ADDE5178(v106);
          }

          swift_beginAccess();
          *(v106 + 24) = v104;

          sub_1AE1B7530(v106);
          swift_endAccess();
        }

        v75 = &v138;
        goto LABEL_78;
      }

      v42 = v118;
      v43 = v112;
      (*(v118 + 32))(v122, v27, v112);
      swift_beginAccess();
      v44 = *(*(v41 + 24) + 16);
      v45 = v115;
      if ((~v44 & 0xF000000000000007) != 0 && ((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 0xB)
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v46 = swift_initStaticObject();
      }

      v82 = v116;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v46 = sub_1ADDE5178(v46);
      }

      swift_beginAccess();
      *(v46 + 16) = 0;
      sub_1AE1B7530(v46);
      v83 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v83);
      v84 = v128;
      *(&v112 - 5) = v129;
      *(&v112 - 4) = v84;
      v85 = v114;
      *(&v112 - 6) = v113;
      *(&v112 - 5) = v85;
      *(&v112 - 4) = v82;
      *(&v112 - 3) = v45;
      v86 = v122;
      *(&v112 - 2) = v122;
      *(&v112 - 1) = a1;
      v87 = v117;
      v88 = sub_1ADE6B938(sub_1ADFFA998);
      if (v87)
      {
      }

      else
      {
        v101 = v88;
        swift_beginAccess();
        v102 = *(*(v41 + 24) + 16);
        if ((~v102 & 0xF000000000000007) != 0 && ((v102 >> 59) & 0x1E | (v102 >> 2) & 1) == 0xB)
        {
          v103 = *((v102 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v103 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v103 = sub_1ADDE5178(v103);
        }

        swift_beginAccess();
        *(v103 + 24) = v101;

        sub_1AE1B7530(v103);
        swift_endAccess();
      }

      (*(v42 + 8))(v86, v43);
    }

    else
    {
      v37 = v137;
      if (EnumCaseMultiPayload == 2)
      {
        v47 = v120;
        v48 = v34;
        (*(v120 + 32))(v125, v27, v34);
        swift_beginAccess();
        v49 = *(*(v37 + 24) + 16);
        if ((~v49 & 0xF000000000000007) != 0 && ((v49 >> 59) & 0x1E | (v49 >> 2) & 1) == 0xB)
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v50 = swift_initStaticObject();
        }

        v58 = v113;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v125;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v50 = sub_1ADDE5178(v50);
        }

        swift_beginAccess();
        *(v50 + 16) = 2;
        sub_1AE1B7530(v50);
        v61 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v61);
        v62 = v128;
        *(&v112 - 5) = v129;
        *(&v112 - 4) = v62;
        v63 = v114;
        *(&v112 - 6) = v58;
        *(&v112 - 5) = v63;
        v64 = v115;
        *(&v112 - 4) = v116;
        *(&v112 - 3) = v64;
        *(&v112 - 2) = v60;
        *(&v112 - 1) = a1;
        v65 = v117;
        v66 = sub_1ADE6B938(sub_1ADFFA908);
        if (v65)
        {
        }

        else
        {
          v95 = v66;
          swift_beginAccess();
          v96 = *(*(v37 + 24) + 16);
          if ((~v96 & 0xF000000000000007) != 0 && ((v96 >> 59) & 0x1E | (v96 >> 2) & 1) == 0xB)
          {
            v97 = *((v96 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v97 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v97 = sub_1ADDE5178(v97);
          }

          swift_beginAccess();
          *(v97 + 24) = v95;

          sub_1AE1B7530(v97);
          swift_endAccess();
        }

        (*(v47 + 8))(v60, v48);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v38 = v121;
          (*(v127 + 32))(v126, v27, v121);
          swift_beginAccess();
          v39 = *(*(v37 + 24) + 16);
          if ((~v39 & 0xF000000000000007) != 0 && ((v39 >> 59) & 0x1E | (v39 >> 2) & 1) == 0xB)
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v40 = swift_initStaticObject();
          }

          v67 = v115;
          v68 = v116;
          v69 = v114;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v40 = sub_1ADDE5178(v40);
          }

          swift_beginAccess();
          *(v40 + 16) = 3;
          sub_1AE1B7530(v40);
          v70 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v70);
          v71 = v128;
          *(&v112 - 5) = v129;
          *(&v112 - 4) = v71;
          *(&v112 - 6) = v113;
          *(&v112 - 5) = v69;
          *(&v112 - 4) = v68;
          *(&v112 - 3) = v67;
          v72 = v126;
          *(&v112 - 2) = v126;
          *(&v112 - 1) = a1;
          v73 = v117;
          v74 = sub_1ADE6B938(sub_1ADFFA8C0);
          if (v73)
          {

            v75 = &v139;
          }

          else
          {
            v98 = v74;
            swift_beginAccess();
            v99 = *(*(v37 + 24) + 16);
            if ((~v99 & 0xF000000000000007) != 0 && ((v99 >> 59) & 0x1E | (v99 >> 2) & 1) == 0xB)
            {
              v100 = *((v99 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v100 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v100 = sub_1ADDE5178(v100);
            }

            swift_beginAccess();
            *(v100 + 24) = v98;

            sub_1AE1B7530(v100);
            swift_endAccess();

            v75 = &v139;
          }

LABEL_78:
          (*(*(v75 - 32) + 8))(v72, v38);
          return result;
        }

        v52 = *v27;
        v51 = v27[1];
        swift_beginAccess();
        v53 = *(*(v37 + 24) + 16);
        if ((~v53 & 0xF000000000000007) != 0 && ((v53 >> 59) & 0x1E | (v53 >> 2) & 1) == 0xB)
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v54 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v54 = sub_1ADDE5178(v54);
        }

        swift_beginAccess();
        *(v54 + 16) = v52;
        sub_1AE1B7530(v54);
        swift_endAccess();
        v77 = *(a1 + 112);
        v76 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v78 = v117;
        v79 = (*(*v51 + 152))(a1);
        if (v78)
        {
        }

        else
        {
          v107 = sub_1ADE71C08(v79, v80, v81);
          swift_beginAccess();
          v108 = *(v107 + 24);
          *(v35 + 112) = v77;

          *(v35 + 120) = v76;

          v109 = v137;
          swift_beginAccess();
          v110 = *(*(v109 + 24) + 16);
          if ((~v110 & 0xF000000000000007) != 0 && ((v110 >> 59) & 0x1E | (v110 >> 2) & 1) == 0xB)
          {
            v111 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v111 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v111 = sub_1ADDE5178(v111);
          }

          swift_beginAccess();
          *(v111 + 24) = v108;

          sub_1AE1B7530(v111);
          swift_endAccess();
        }
      }
    }
  }

  return result;
}

void TaggedValue_4<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v40 = a5;
  v45 = a3;
  v48 = a1;
  v6 = *(a2 + 40);
  v41 = *(v6 - 8);
  v42 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 16);
  v43 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = v19;
  *(&v23 + 1) = v14;
  *&v24 = v9;
  *(&v24 + 1) = v6;
  v51 = v24;
  v50 = v23;
  v26 = *(v25 + 64);
  v52 = *(v25 + 48);
  v53 = v26;
  v27 = type metadata accessor for TaggedValue_4.TaggedEnum(0, &v50);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v38 - v29;
  (*(v31 + 16))(&v38 - v29, v47, v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = v44;
      (*(v44 + 32))(v17, v30, v14);
      sub_1AE23CBAC();
      (*(v37 + 8))(v17, v14);
    }

    else
    {
      v35 = v43;
      (*(v43 + 32))(v22, v30, v19);
      sub_1AE23CBAC();
      (*(v35 + 8))(v22, v19);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v36 = v38;
    (*(v38 + 32))(v12, v30, v9);
    sub_1AE23CBAC();
    (*(v36 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v33 = v41;
    v34 = v39;
    (*(v41 + 32))(v39, v30, v6);
    sub_1AE23CBAC();
    (*(v33 + 8))(v34, v6);
  }

  else
  {
    (*(**(v30 + 1) + 80))(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }
}

void TaggedValue_5.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v117[0] = a2;
  v117[1] = a3;
  v109 = a3;
  v108 = a4;
  v117[2] = a4;
  v117[3] = a5;
  v112 = a5;
  v113 = a6;
  v117[4] = a6;
  v117[5] = a7;
  v106 = a7;
  v107 = a8;
  v117[6] = a8;
  v117[7] = a10;
  v105 = a10;
  v110 = a11;
  v117[8] = a11;
  v117[9] = a12;
  v111 = a12;
  v15 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v117);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v100 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v35 = &v100 - v34;
  v36 = *(a1 + 72);
  if (!v36)
  {
    sub_1ADE42E40(v29, v30, v31);
    swift_allocError();
    *v47 = 0xD000000000000017;
    *(v47 + 8) = 0x80000001AE25FB70;
    *(v47 + 16) = 0;
    swift_willThrow();
    goto LABEL_74;
  }

  v101 = v33;
  v103 = v32;
  v104 = v29;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v115 = a1;
  v102 = inited;
  *(inited + 16) = a1;
  v38 = *(v36 + 16);
  v114 = a9;
  if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v39 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v40 = v39[2];
  if (v40 <= 1)
  {
    if (!v40)
    {
      v64 = *(v36 + 16);
      if ((~v64 & 0xF000000000000007) != 0)
      {
        v66 = v114;
        v67 = v115;
        if (((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v65 = &unk_1EB5B9140;
        }
      }

      else
      {
        v65 = &unk_1EB5B9140;
        v66 = v114;
        v67 = v115;
      }

      swift_beginAccess();
      if (v65[3])
      {
        v80 = v65[3];
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v80 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v81 = sub_1ADE0262C(v80, v67);
      v82 = v116;
      (*(*(*(v106 + 8) + 8) + 8))(v81, a2);

      if (!v82)
      {

        v83 = v104;
        swift_storeEnumTagMultiPayload();
        (*(v103 + 32))(v66, v35, v83);
        return;
      }

      goto LABEL_74;
    }

    if (v40 == 1)
    {
      v48 = *(v36 + 16);
      if ((~v48 & 0xF000000000000007) != 0)
      {
        v50 = v114;
        v51 = v115;
        v52 = v116;
        if (((v48 >> 59) & 0x1E | (v48 >> 2) & 1) == 0xB)
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v49 = &unk_1EB5B9140;
        }
      }

      else
      {
        v49 = &unk_1EB5B9140;
        v50 = v114;
        v51 = v115;
        v52 = v116;
      }

      swift_beginAccess();
      v89 = v49[3];
      if (v89)
      {
        v90 = v89;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v90 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v91 = sub_1ADE0262C(v90, v51);
      (*(*(*(v107 + 8) + 8) + 8))(v91);

      if (!v52)
      {

        v92 = v104;
        swift_storeEnumTagMultiPayload();
        (*(v103 + 32))(v50, v27, v92);
        return;
      }

      goto LABEL_74;
    }

    goto LABEL_24;
  }

  if (v40 == 2)
  {
    v53 = *(v36 + 16);
    if ((~v53 & 0xF000000000000007) != 0)
    {
      v55 = v114;
      v56 = v115;
      if (((v53 >> 59) & 0x1E | (v53 >> 2) & 1) == 0xB)
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v54 = &unk_1EB5B9140;
      }
    }

    else
    {
      v54 = &unk_1EB5B9140;
      v55 = v114;
      v56 = v115;
    }

    swift_beginAccess();
    v71 = v54[3];
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v72 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v73 = sub_1ADE0262C(v72, v56);
    v74 = v116;
    (*(*(*(v105 + 8) + 8) + 8))(v73);
    if (!v74)
    {

      v75 = v104;
      swift_storeEnumTagMultiPayload();
      (*(v103 + 32))(v55, v24, v75);
      return;
    }

    goto LABEL_61;
  }

  if (v40 == 3)
  {
    v57 = *(v36 + 16);
    if ((~v57 & 0xF000000000000007) != 0)
    {
      v59 = v114;
      v60 = v115;
      v61 = v116;
      v62 = v112;
      v63 = v110;
      if (((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xB)
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v58 = &unk_1EB5B9140;
      }
    }

    else
    {
      v58 = &unk_1EB5B9140;
      v59 = v114;
      v60 = v115;
      v61 = v116;
      v62 = v112;
      v63 = v110;
    }

    swift_beginAccess();
    v76 = v58[3];
    if (v76)
    {
      v77 = v76;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v77 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v78 = sub_1ADE0262C(v77, v60);
    (*(*(*(v63 + 8) + 8) + 8))(v78, v62);
    if (!v61)
    {

      v79 = v104;
      swift_storeEnumTagMultiPayload();
      (*(v103 + 32))(v59, v21, v79);
      return;
    }

    goto LABEL_61;
  }

  if (v40 != 4)
  {
LABEL_24:
    v68 = *(v36 + 16);
    if ((~v68 & 0xF000000000000007) != 0)
    {
      v70 = v116;
      if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v69 = &unk_1EB5B9140;
      }
    }

    else
    {
      v69 = &unk_1EB5B9140;
      v70 = v116;
    }

    swift_beginAccess();
    v93 = v69[3];
    if (v93)
    {
      v94 = v93;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v94 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v95 = v115;

    v96 = sub_1ADE0262C(v94, v95);
    AnyCRValue.init(from:)(v96, &v118);

    if (!v70)
    {

      v97 = v118;
      v98 = v101;
      *v101 = v40;
      v98[1] = v97;
      v99 = v104;
      swift_storeEnumTagMultiPayload();
      (*(v103 + 32))(v114, v98, v99);
      return;
    }

LABEL_74:

    return;
  }

  v41 = *(v36 + 16);
  if ((~v41 & 0xF000000000000007) != 0)
  {
    v43 = v114;
    v44 = v115;
    v45 = v113;
    v46 = v111;
    if (((v41 >> 59) & 0x1E | (v41 >> 2) & 1) == 0xB)
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v42 = &unk_1EB5B9140;
    }
  }

  else
  {
    v42 = &unk_1EB5B9140;
    v43 = v114;
    v44 = v115;
    v45 = v113;
    v46 = v111;
  }

  swift_beginAccess();
  v84 = v42[3];
  if (v84)
  {
    v85 = v84;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v85 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v86 = sub_1ADE0262C(v85, v44);
  v87 = v116;
  (*(*(*(v46 + 8) + 8) + 8))(v86, v45);
  if (v87)
  {
LABEL_61:

    return;
  }

  v88 = v104;
  swift_storeEnumTagMultiPayload();
  (*(v103 + 32))(v43, v18, v88);
}

double TaggedValue_5.encode(to:)(char *a1, uint64_t a2)
{
  v153 = *(*(a2 + 48) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v143 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(*(v4 + 40) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v148 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = *(*(v7 + 32) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(*(v10 + 24) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v144 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  v20 = *(v18 + 64);
  v22 = *(v18 + 80);
  v21 = *(v18 + 88);
  *&v23 = v14;
  v140 = v24;
  *(&v23 + 1) = v24;
  v138 = v25;
  *&v26 = v25;
  v142 = v27;
  *(&v26 + 1) = v27;
  v149 = v26;
  v155[1] = v26;
  v150 = v23;
  v155[0] = v23;
  v152 = v28;
  v156 = v28;
  v157 = v19;
  v151 = v20;
  v158 = v20;
  v159 = v22;
  v160 = v21;
  v29 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v155);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v133 - v31);
  v33 = v161;
  v37 = sub_1ADE71C08(v34, v35, v36);
  if (!v33)
  {
    v133 = v17;
    v39 = v153;
    v134 = v19;
    v135 = v22;
    v136 = v21;
    v40 = v37;
    v137 = a1;
    v161 = 0;
    (*(v30 + 16))(v32, v154, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v48 = v137;
      if (EnumCaseMultiPayload == 3)
      {
        v60 = v141;
        v61 = v142;
        (*(v141 + 32))(v148, v32, v142);
        v62 = v40;
        swift_beginAccess();
        v63 = *(*(v40 + 24) + 16);
        if ((~v63 & 0xF000000000000007) != 0 && ((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
        {
          inited = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v81 = v136;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v148;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 3;
        sub_1AE1B7530(inited);
        v84 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v84);
        v85 = v149;
        *(&v133 - 6) = v150;
        *(&v133 - 5) = v85;
        v86 = v134;
        *(&v133 - 8) = v152;
        *(&v133 - 7) = v86;
        *(&v133 - 3) = v151;
        *(&v133 - 4) = v135;
        *(&v133 - 3) = v81;
        *(&v133 - 2) = v83;
        *(&v133 - 1) = v48;
        v87 = v161;
        v88 = sub_1ADE6B938(sub_1ADFFAA28);
        if (v87)
        {
        }

        else
        {
          v117 = v88;
          swift_beginAccess();
          v118 = *(*(v62 + 24) + 16);
          if ((~v118 & 0xF000000000000007) != 0 && ((v118 >> 59) & 0x1E | (v118 >> 2) & 1) == 0xB)
          {
            v119 = *((v118 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v119 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v119 = sub_1ADDE5178(v119);
          }

          swift_beginAccess();
          *(v119 + 24) = v117;

          sub_1AE1B7530(v119);
          swift_endAccess();
        }

        (*(v60 + 8))(v83, v61);
      }

      else
      {
        v49 = v40;
        if (EnumCaseMultiPayload == 4)
        {
          v50 = v39;
          v51 = v143;
          v52 = v32;
          v53 = v152;
          (*(v39 + 32))(v143, v52, v152);
          swift_beginAccess();
          v54 = *(*(v49 + 24) + 16);
          if ((~v54 & 0xF000000000000007) != 0 && ((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
          {
            v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v55 = swift_initStaticObject();
          }

          v95 = v135;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v55 = sub_1ADDE5178(v55);
          }

          swift_beginAccess();
          *(v55 + 16) = 4;
          sub_1AE1B7530(v55);
          v96 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v96);
          v97 = v149;
          *(&v133 - 6) = v150;
          *(&v133 - 5) = v97;
          v98 = v134;
          *(&v133 - 8) = v53;
          *(&v133 - 7) = v98;
          *(&v133 - 3) = v151;
          v99 = v136;
          *(&v133 - 4) = v95;
          *(&v133 - 3) = v99;
          *(&v133 - 2) = v51;
          *(&v133 - 1) = v48;
          v100 = v161;
          v101 = sub_1ADE6B938(sub_1ADFFA9E0);
          if (v100)
          {
          }

          else
          {
            v123 = v101;
            swift_beginAccess();
            v124 = *(*(v49 + 24) + 16);
            if ((~v124 & 0xF000000000000007) != 0 && ((v124 >> 59) & 0x1E | (v124 >> 2) & 1) == 0xB)
            {
              v125 = *((v124 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v125 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v125 = sub_1ADDE5178(v125);
            }

            swift_beginAccess();
            *(v125 + 24) = v123;

            sub_1AE1B7530(v125);
            swift_endAccess();
          }

          (*(v50 + 8))(v51, v53);
        }

        else
        {
          v70 = *v32;
          v69 = v32[1];
          swift_beginAccess();
          v71 = *(*(v40 + 24) + 16);
          if ((~v71 & 0xF000000000000007) != 0 && ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 0xB)
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v72 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v72 = sub_1ADDE5178(v72);
          }

          swift_beginAccess();
          *(v72 + 16) = v70;
          sub_1AE1B7530(v72);
          swift_endAccess();
          v109 = *(v48 + 14);
          v108 = *(v48 + 15);
          *(v48 + 14) = 0;
          *(v48 + 15) = 0;
          v110 = v161;
          v111 = (*(*v69 + 152))(v48);
          if (v110)
          {
          }

          else
          {
            v129 = sub_1ADE71C08(v111, v112, v113);
            swift_beginAccess();
            v130 = *(v129 + 24);
            *(v48 + 14) = v109;

            *(v48 + 15) = v108;

            swift_beginAccess();
            v131 = *(*(v40 + 24) + 16);
            if ((~v131 & 0xF000000000000007) != 0 && ((v131 >> 59) & 0x1E | (v131 >> 2) & 1) == 0xB)
            {
              v132 = *((v131 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v132 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v132 = sub_1ADDE5178(v132);
            }

            swift_beginAccess();
            *(v132 + 24) = v130;

            sub_1AE1B7530(v132);
            swift_endAccess();
          }
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v42 = v136;
      v43 = v134;
      if (EnumCaseMultiPayload == 1)
      {
        v44 = v139;
        v45 = v140;
        (*(v139 + 32))(v145, v32, v140);
        swift_beginAccess();
        v46 = *(*(v40 + 24) + 16);
        if ((~v46 & 0xF000000000000007) != 0 && ((v46 >> 59) & 0x1E | (v46 >> 2) & 1) == 0xB)
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v47 = swift_initStaticObject();
        }

        v89 = v137;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v47 = sub_1ADDE5178(v47);
        }

        swift_beginAccess();
        *(v47 + 16) = 1;
        sub_1AE1B7530(v47);
        v90 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v90);
        v91 = v149;
        *(&v133 - 6) = v150;
        *(&v133 - 5) = v91;
        *(&v133 - 8) = v152;
        *(&v133 - 7) = v43;
        *(&v133 - 3) = v151;
        *(&v133 - 4) = v135;
        *(&v133 - 3) = v42;
        v92 = v145;
        *(&v133 - 2) = v145;
        *(&v133 - 1) = v89;
        v93 = v161;
        v94 = sub_1ADE6B938(sub_1ADFFAAB8);
        if (v93)
        {
        }

        else
        {
          v120 = v94;
          swift_beginAccess();
          v121 = *(*(v40 + 24) + 16);
          if ((~v121 & 0xF000000000000007) != 0 && ((v121 >> 59) & 0x1E | (v121 >> 2) & 1) == 0xB)
          {
            v122 = *((v121 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v122 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v122 = sub_1ADDE5178(v122);
          }

          swift_beginAccess();
          *(v122 + 24) = v120;

          sub_1AE1B7530(v122);
          swift_endAccess();
        }

        (*(v44 + 8))(v92, v45);
      }

      else
      {
        v65 = v138;
        (*(v147 + 32))(v146, v32, v138);
        swift_beginAccess();
        v66 = *(*(v40 + 24) + 16);
        v67 = v135;
        if ((~v66 & 0xF000000000000007) != 0 && ((v66 >> 59) & 0x1E | (v66 >> 2) & 1) == 0xB)
        {
          v68 = *((v66 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v68 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v68 = sub_1ADDE5178(v68);
        }

        swift_beginAccess();
        *(v68 + 16) = 2;
        sub_1AE1B7530(v68);
        v102 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v102);
        v103 = v149;
        *(&v133 - 6) = v150;
        *(&v133 - 5) = v103;
        *(&v133 - 8) = v152;
        *(&v133 - 7) = v43;
        *(&v133 - 3) = v151;
        *(&v133 - 4) = v67;
        *(&v133 - 3) = v42;
        v104 = v146;
        v105 = v137;
        *(&v133 - 2) = v146;
        *(&v133 - 1) = v105;
        v106 = v161;
        v107 = sub_1ADE6B938(sub_1ADFFAA70);
        if (v106)
        {
        }

        else
        {
          v126 = v107;
          swift_beginAccess();
          v127 = *(*(v40 + 24) + 16);
          if ((~v127 & 0xF000000000000007) != 0 && ((v127 >> 59) & 0x1E | (v127 >> 2) & 1) == 0xB)
          {
            v128 = *((v127 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v128 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v128 = sub_1ADDE5178(v128);
          }

          swift_beginAccess();
          *(v128 + 24) = v126;

          sub_1AE1B7530(v128);
          swift_endAccess();
        }

        (*(v147 + 8))(v104, v65);
      }
    }

    else
    {
      (*(v144 + 32))(v133, v32, v14);
      swift_beginAccess();
      v56 = *(*(v40 + 24) + 16);
      v57 = v136;
      v58 = v134;
      if ((~v56 & 0xF000000000000007) != 0 && ((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 0xB)
      {
        v59 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v59 = swift_initStaticObject();
      }

      v73 = v137;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v59 = sub_1ADDE5178(v59);
      }

      swift_beginAccess();
      *(v59 + 16) = 0;
      sub_1AE1B7530(v59);
      v74 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v74);
      v75 = v149;
      *(&v133 - 6) = v150;
      *(&v133 - 5) = v75;
      *&v76 = v152;
      *(&v76 + 1) = v58;
      v77 = v151;
      *(&v133 - 4) = v76;
      *(&v133 - 3) = v77;
      *(&v133 - 4) = v135;
      *(&v133 - 3) = v57;
      v78 = v133;
      *(&v133 - 2) = v133;
      *(&v133 - 1) = v73;
      v79 = v161;
      v80 = sub_1ADE6B938(sub_1ADFFAB00);
      if (v79)
      {
      }

      else
      {
        v114 = v80;
        swift_beginAccess();
        v115 = *(*(v40 + 24) + 16);
        if ((~v115 & 0xF000000000000007) != 0 && ((v115 >> 59) & 0x1E | (v115 >> 2) & 1) == 0xB)
        {
          v116 = *((v115 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v116 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v116 = sub_1ADDE5178(v116);
        }

        swift_beginAccess();
        *(v116 + 24) = v114;

        sub_1AE1B7530(v116);
        swift_endAccess();
      }

      (*(v144 + 8))(v78, v14);
    }
  }

  return result;
}

double TaggedValue_5<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a5;
  v59 = a7;
  v55 = a6;
  v57 = a4;
  v54 = a3;
  v60 = a1;
  v7 = *(a2 + 48);
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 40);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 16);
  v47 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = v23;
  *(&v27 + 1) = v18;
  v29 = *(v28 + 88);
  *&v30 = v14;
  *(&v30 + 1) = v10;
  v63 = v30;
  v62 = v27;
  v64 = v7;
  v31 = *(v28 + 72);
  v65 = *(v28 + 56);
  v66 = v31;
  v67 = v29;
  v32 = type metadata accessor for TaggedValue_5.TaggedEnum(0, &v62);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v47 - v34;
  (*(v36 + 16))(&v47 - v34, v68, v32, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v43 = v52;
      v44 = v51;
      (*(v52 + 32))(v51, v35, v10);
      sub_1AE23CBAC();
      (*(v43 + 8))(v44, v10);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v40 = v56;
      v41 = v53;
      (*(v56 + 32))(v53, v35, v7);
      sub_1AE23CBAC();
      (*(v40 + 8))(v41, v7);
    }

    else
    {
      (*(**(v35 + 1) + 80))(v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(&v62);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v48;
      (*(v48 + 32))(v21, v35, v18);
      sub_1AE23CBAC();
      (*(v38 + 8))(v21, v18);
    }

    else
    {
      v45 = v50;
      v46 = v49;
      (*(v50 + 32))(v49, v35, v14);
      sub_1AE23CBAC();
      (*(v45 + 8))(v46, v14);
    }
  }

  else
  {
    v42 = v47;
    (*(v47 + 32))(v26, v35, v23);
    sub_1AE23CBAC();
    (*(v42 + 8))(v26, v23);
  }

  return result;
}

void TaggedValue_6.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v119 = a2;
  v126[0] = a2;
  v126[1] = a3;
  v121 = a3;
  v113 = a4;
  v126[2] = a4;
  v126[3] = a5;
  v120 = a5;
  v122 = a6;
  v126[4] = a6;
  v126[5] = a7;
  v114 = a7;
  v118 = a8;
  v126[6] = a8;
  v126[7] = a10;
  v116 = a10;
  v111 = a11;
  v126[8] = a11;
  v126[9] = a12;
  v115 = a12;
  v117 = a13;
  v126[10] = a13;
  v126[11] = a14;
  v112 = a14;
  v16 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v126);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v108 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v108 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v108 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v108 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v108 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v39 = v108 - v38;
  v40 = *(a1 + 72);
  if (!v40)
  {
    sub_1ADE42E40(v33, v34, v35);
    swift_allocError();
    *v51 = 0xD000000000000017;
    *(v51 + 8) = 0x80000001AE25FB70;
    *(v51 + 16) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v108[0] = v37;
  v109 = v33;
  v110 = v36;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v124 = a1;
  v108[1] = inited;
  *(inited + 16) = a1;
  v42 = *(v40 + 16);
  v123 = a9;
  if ((~v42 & 0xF000000000000007) != 0 && ((v42 >> 59) & 0x1E | (v42 >> 2) & 1) == 0xB)
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v43 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v44 = v43[2];
  if (v44 <= 2)
  {
    if (!v44)
    {
      v58 = *(v40 + 16);
      if ((~v58 & 0xF000000000000007) != 0)
      {
        v60 = v123;
        if (((v58 >> 59) & 0x1E | (v58 >> 2) & 1) == 0xB)
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v59 = &unk_1EB5B9140;
        }
      }

      else
      {
        v59 = &unk_1EB5B9140;
        v60 = v123;
      }

      swift_beginAccess();
      v76 = v59[3];
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v77 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();
      v78 = v124;

      v79 = sub_1ADE0262C(v77, v78);
      v80 = v125;
      (*(*(*(v118 + 8) + 8) + 8))(v79);

      if (!v80)
      {

        v81 = v109;
        swift_storeEnumTagMultiPayload();
        (*(v110 + 32))(v60, v39, v81);
        return;
      }

      goto LABEL_13;
    }

    if (v44 == 1)
    {
      v68 = *(v40 + 16);
      v69 = v124;
      if ((~v68 & 0xF000000000000007) != 0)
      {
        v71 = v123;
        if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          v70 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v70 = &unk_1EB5B9140;
        }
      }

      else
      {
        v70 = &unk_1EB5B9140;
        v71 = v123;
      }

      swift_beginAccess();
      v101 = v70[3];
      if (v101)
      {
        v102 = v101;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v102 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v103 = sub_1ADE0262C(v102, v69);
      v104 = v125;
      (*(*(*(v116 + 8) + 8) + 8))(v103);

      if (!v104)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v71;
        goto LABEL_79;
      }

LABEL_13:

      return;
    }

    v45 = v124;
    if (v44 == 2)
    {
      v46 = *(v40 + 16);
      if ((~v46 & 0xF000000000000007) != 0)
      {
        v48 = v123;
        v49 = v113;
        v50 = v111;
        if (((v46 >> 59) & 0x1E | (v46 >> 2) & 1) == 0xB)
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v47 = &unk_1EB5B9140;
        }
      }

      else
      {
        v47 = &unk_1EB5B9140;
        v48 = v123;
        v49 = v113;
        v50 = v111;
      }

      swift_beginAccess();
      v94 = v47[3];
      if (v94)
      {
        v95 = v94;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v95 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v96 = sub_1ADE0262C(v95, v45);
      v97 = v125;
      (*(*(*(v50 + 8) + 8) + 8))(v96, v49);
      if (!v97)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v48;
        v89 = v28;
        goto LABEL_87;
      }

LABEL_85:

      return;
    }

LABEL_23:
    v65 = *(v40 + 16);
    if ((~v65 & 0xF000000000000007) != 0)
    {
      v67 = v125;
      if (((v65 >> 59) & 0x1E | (v65 >> 2) & 1) == 0xB)
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v66 = &unk_1EB5B9140;
      }
    }

    else
    {
      v66 = &unk_1EB5B9140;
      v67 = v125;
    }

    swift_beginAccess();
    v90 = v66[3];
    if (v90)
    {
      v91 = v90;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v91 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v92 = sub_1ADE0262C(v91, v45);
    AnyCRValue.init(from:)(v92, &v127);

    if (!v67)
    {

      v93 = v127;
      v31 = v108[0];
      *v108[0] = v44;
      *(v31 + 1) = v93;
      v86 = v109;
      swift_storeEnumTagMultiPayload();
      v87 = *(v110 + 32);
      v88 = v123;
LABEL_79:
      v89 = v31;
      goto LABEL_87;
    }

    goto LABEL_13;
  }

  if (v44 != 3)
  {
    v45 = v124;
    if (v44 == 4)
    {
      v72 = *(v40 + 16);
      if ((~v72 & 0xF000000000000007) != 0)
      {
        v74 = v123;
        v75 = v125;
        if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v73 = &unk_1EB5B9140;
        }
      }

      else
      {
        v73 = &unk_1EB5B9140;
        v74 = v123;
        v75 = v125;
      }

      swift_beginAccess();
      v105 = v73[3];
      if (v105)
      {
        v106 = v105;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v106 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v107 = sub_1ADE0262C(v106, v45);
      (*(*(*(v117 + 8) + 8) + 8))(v107);
      if (!v75)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v74;
        v89 = v22;
        goto LABEL_87;
      }

      goto LABEL_85;
    }

    if (v44 == 5)
    {
      v52 = *(v40 + 16);
      if ((~v52 & 0xF000000000000007) != 0)
      {
        v54 = v123;
        v55 = v125;
        v56 = v114;
        v57 = v112;
        if (((v52 >> 59) & 0x1E | (v52 >> 2) & 1) == 0xB)
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v53 = &unk_1EB5B9140;
        }
      }

      else
      {
        v53 = &unk_1EB5B9140;
        v54 = v123;
        v55 = v125;
        v56 = v114;
        v57 = v112;
      }

      swift_beginAccess();
      v98 = v53[3];
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v99 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v100 = sub_1ADE0262C(v99, v45);
      (*(*(*(v57 + 8) + 8) + 8))(v100, v56);
      if (!v55)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v54;
        v89 = v19;
        goto LABEL_87;
      }

      goto LABEL_85;
    }

    goto LABEL_23;
  }

  v61 = *(v40 + 16);
  v62 = v124;
  if ((~v61 & 0xF000000000000007) != 0)
  {
    v64 = v123;
    if (((v61 >> 59) & 0x1E | (v61 >> 2) & 1) == 0xB)
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v63 = &unk_1EB5B9140;
    }
  }

  else
  {
    v63 = &unk_1EB5B9140;
    v64 = v123;
  }

  swift_beginAccess();
  v82 = v63[3];
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v83 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v84 = sub_1ADE0262C(v83, v62);
  v85 = v125;
  (*(*(*(v115 + 8) + 8) + 8))(v84);
  if (v85)
  {
    goto LABEL_85;
  }

  v86 = v109;
  swift_storeEnumTagMultiPayload();
  v87 = *(v110 + 32);
  v88 = v64;
  v89 = v25;
LABEL_87:
  v87(v88, v89, v86);
}

double TaggedValue_6.encode(to:)(uint64_t a1, uint64_t a2)
{
  v159 = *(*(a2 + 56) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v170 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = *(*(v4 + 48) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v160 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = *(*(v7 + 40) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = *(*(v10 + 32) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v164 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 16);
  v162 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 64);
  v24 = *(v21 + 80);
  v23 = *(v21 + 88);
  v26 = *(v21 + 96);
  v25 = *(v21 + 104);
  *&v27 = v18;
  v157 = v14;
  *(&v27 + 1) = v14;
  v167 = v28;
  *&v29 = v28;
  v175 = v30;
  *(&v29 + 1) = v30;
  v172 = v29;
  v178[1] = v29;
  v173 = v27;
  v178[0] = v27;
  v171 = v31;
  v179 = v31;
  v180 = v32;
  v176 = v32;
  v174 = v22;
  v181 = v22;
  v182 = v24;
  v183 = v23;
  v184 = v26;
  v185 = v25;
  v33 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v178);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v152 - v35);
  v37 = v186;
  v41 = sub_1ADE71C08(v38, v39, v40);
  if (!v37)
  {
    v152 = v18;
    v43 = v175;
    v153 = v24;
    v154 = v23;
    v155 = v26;
    v156 = v25;
    v44 = v176;
    v45 = v41;
    v186 = 0;
    (*(v34 + 16))(v36, v177, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      v51 = v45;
      if (EnumCaseMultiPayload)
      {
        v52 = v153;
        if (EnumCaseMultiPayload == 1)
        {
          v53 = v157;
          (*(v164 + 32))(v163, v36, v157);
          swift_beginAccess();
          v54 = *(*(v51 + 24) + 16);
          if ((~v54 & 0xF000000000000007) != 0 && ((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
          {
            inited = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            inited = swift_initStaticObject();
          }

          v86 = v171;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            inited = sub_1ADDE5178(inited);
          }

          swift_beginAccess();
          *(inited + 16) = 1;
          sub_1AE1B7530(inited);
          v87 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v87);
          v88 = v172;
          *(&v152 - 7) = v173;
          *(&v152 - 6) = v88;
          *(&v152 - 10) = v86;
          *(&v152 - 9) = v44;
          *(&v152 - 4) = v174;
          v89 = v154;
          *(&v152 - 6) = v52;
          *(&v152 - 5) = v89;
          v90 = v156;
          *(&v152 - 4) = v155;
          *(&v152 - 3) = v90;
          v91 = v163;
          *(&v152 - 2) = v163;
          *(&v152 - 1) = a1;
          v92 = v186;
          v93 = sub_1ADE6B938(sub_1ADFFAC68);
          if (v92)
          {
          }

          else
          {
            v133 = v93;
            swift_beginAccess();
            v134 = *(*(v51 + 24) + 16);
            if ((~v134 & 0xF000000000000007) != 0 && ((v134 >> 59) & 0x1E | (v134 >> 2) & 1) == 0xB)
            {
              v135 = *((v134 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v135 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v135 = sub_1ADDE5178(v135);
            }

            swift_beginAccess();
            *(v135 + 24) = v133;

            sub_1AE1B7530(v135);
            swift_endAccess();
          }

          (*(v164 + 8))(v91, v53);
        }

        else
        {
          (*(v166 + 32))(v165, v36, v167);
          swift_beginAccess();
          v64 = *(*(v51 + 24) + 16);
          if ((~v64 & 0xF000000000000007) != 0 && ((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
          {
            v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v65 = swift_initStaticObject();
          }

          v94 = v171;
          v95 = v156;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v65 = sub_1ADDE5178(v65);
          }

          swift_beginAccess();
          *(v65 + 16) = 2;
          sub_1AE1B7530(v65);
          v96 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v96);
          v97 = v172;
          *(&v152 - 7) = v173;
          *(&v152 - 6) = v97;
          *(&v152 - 10) = v94;
          *(&v152 - 9) = v44;
          *(&v152 - 4) = v174;
          v98 = v154;
          *(&v152 - 6) = v52;
          *(&v152 - 5) = v98;
          *(&v152 - 4) = v155;
          *(&v152 - 3) = v95;
          v99 = v165;
          *(&v152 - 2) = v165;
          *(&v152 - 1) = a1;
          v100 = v186;
          v101 = sub_1ADE6B938(sub_1ADFFAC20);
          if (v100)
          {
          }

          else
          {
            v136 = v101;
            swift_beginAccess();
            v137 = *(*(v51 + 24) + 16);
            if ((~v137 & 0xF000000000000007) != 0 && ((v137 >> 59) & 0x1E | (v137 >> 2) & 1) == 0xB)
            {
              v138 = *((v137 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v138 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v138 = sub_1ADDE5178(v138);
            }

            swift_beginAccess();
            *(v138 + 24) = v136;

            sub_1AE1B7530(v138);
            swift_endAccess();
          }

          (*(v166 + 8))(v99, v167);
        }
      }

      else
      {
        (*(v162 + 32))(v161, v36, v152);
        swift_beginAccess();
        v61 = *(*(v45 + 24) + 16);
        v62 = v153;
        if ((~v61 & 0xF000000000000007) != 0 && ((v61 >> 59) & 0x1E | (v61 >> 2) & 1) == 0xB)
        {
          v63 = *((v61 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v63 = swift_initStaticObject();
        }

        v76 = v171;
        v77 = v156;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v63 = sub_1ADDE5178(v63);
        }

        swift_beginAccess();
        *(v63 + 16) = 0;
        sub_1AE1B7530(v63);
        v78 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v78);
        v79 = v172;
        *(&v152 - 7) = v173;
        *(&v152 - 6) = v79;
        *&v80 = v76;
        *(&v80 + 1) = v44;
        v81 = v174;
        *(&v152 - 5) = v80;
        *(&v152 - 4) = v81;
        v82 = v154;
        *(&v152 - 6) = v62;
        *(&v152 - 5) = v82;
        *(&v152 - 4) = v155;
        *(&v152 - 3) = v77;
        v83 = v161;
        *(&v152 - 2) = v161;
        *(&v152 - 1) = a1;
        v84 = v186;
        v85 = sub_1ADE6B938(sub_1ADFFACB0);
        if (v84)
        {
        }

        else
        {
          v130 = v85;
          swift_beginAccess();
          v131 = *(*(v51 + 24) + 16);
          if ((~v131 & 0xF000000000000007) != 0 && ((v131 >> 59) & 0x1E | (v131 >> 2) & 1) == 0xB)
          {
            v132 = *((v131 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v132 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v132 = sub_1ADDE5178(v132);
          }

          swift_beginAccess();
          *(v132 + 24) = v130;

          sub_1AE1B7530(v132);
          swift_endAccess();
        }

        (*(v162 + 8))(v83, v152);
      }
    }

    else
    {
      v47 = a1;
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v56 = v159;
          v57 = v36;
          v58 = v44;
          (*(v159 + 32))(v170, v57, v44);
          swift_beginAccess();
          v59 = *(*(v45 + 24) + 16);
          if ((~v59 & 0xF000000000000007) != 0 && ((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
          {
            v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v60 = swift_initStaticObject();
          }

          v110 = v155;
          v111 = v154;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v60 = sub_1ADDE5178(v60);
          }

          swift_beginAccess();
          *(v60 + 16) = 5;
          sub_1AE1B7530(v60);
          v112 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v112);
          v113 = v172;
          *(&v152 - 7) = v173;
          *(&v152 - 6) = v113;
          *(&v152 - 10) = v171;
          *(&v152 - 9) = v58;
          *(&v152 - 4) = v174;
          *(&v152 - 6) = v153;
          *(&v152 - 5) = v111;
          v114 = v156;
          *(&v152 - 4) = v110;
          *(&v152 - 3) = v114;
          v115 = v170;
          *(&v152 - 2) = v170;
          *(&v152 - 1) = a1;
          v116 = v186;
          v117 = sub_1ADE6B938(sub_1ADFFAB48);
          if (v116)
          {
          }

          else
          {
            v142 = v117;
            swift_beginAccess();
            v143 = *(*(v45 + 24) + 16);
            if ((~v143 & 0xF000000000000007) != 0 && ((v143 >> 59) & 0x1E | (v143 >> 2) & 1) == 0xB)
            {
              v144 = *((v143 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v144 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v144 = sub_1ADDE5178(v144);
            }

            swift_beginAccess();
            *(v144 + 24) = v142;

            sub_1AE1B7530(v144);
            swift_endAccess();
          }

          (*(v56 + 8))(v115, v58);
        }

        else
        {
          v73 = *v36;
          v72 = v36[1];
          swift_beginAccess();
          v74 = *(*(v45 + 24) + 16);
          if ((~v74 & 0xF000000000000007) != 0 && ((v74 >> 59) & 0x1E | (v74 >> 2) & 1) == 0xB)
          {
            v75 = *((v74 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v75 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v75 = sub_1ADDE5178(v75);
          }

          swift_beginAccess();
          *(v75 + 16) = v73;
          sub_1AE1B7530(v75);
          swift_endAccess();
          v125 = *(a1 + 112);
          v124 = *(a1 + 120);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          v126 = v186;
          v127 = (*(*v72 + 152))(a1);
          if (v126)
          {
          }

          else
          {
            v148 = sub_1ADE71C08(v127, v128, v129);
            swift_beginAccess();
            v149 = *(v148 + 24);
            *(v47 + 112) = v125;

            *(v47 + 120) = v124;

            swift_beginAccess();
            v150 = *(*(v45 + 24) + 16);
            if ((~v150 & 0xF000000000000007) != 0 && ((v150 >> 59) & 0x1E | (v150 >> 2) & 1) == 0xB)
            {
              v151 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v151 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v151 = sub_1ADDE5178(v151);
            }

            swift_beginAccess();
            *(v151 + 24) = v149;

            sub_1AE1B7530(v151);
            swift_endAccess();
          }
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v48 = v43;
        (*(v169 + 32))(v168, v36, v43);
        swift_beginAccess();
        v49 = *(*(v45 + 24) + 16);
        if ((~v49 & 0xF000000000000007) != 0 && ((v49 >> 59) & 0x1E | (v49 >> 2) & 1) == 0xB)
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v50 = swift_initStaticObject();
        }

        v102 = v171;
        v103 = v156;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v50 = sub_1ADDE5178(v50);
        }

        swift_beginAccess();
        *(v50 + 16) = 3;
        sub_1AE1B7530(v50);
        v104 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v104);
        v105 = v172;
        *(&v152 - 7) = v173;
        *(&v152 - 6) = v105;
        *(&v152 - 10) = v102;
        *(&v152 - 9) = v44;
        *(&v152 - 4) = v174;
        v106 = v154;
        *(&v152 - 6) = v153;
        *(&v152 - 5) = v106;
        *(&v152 - 4) = v155;
        *(&v152 - 3) = v103;
        v107 = v168;
        *(&v152 - 2) = v168;
        *(&v152 - 1) = a1;
        v108 = v186;
        v109 = sub_1ADE6B938(sub_1ADFFABD8);
        if (v108)
        {
        }

        else
        {
          v139 = v109;
          swift_beginAccess();
          v140 = *(*(v45 + 24) + 16);
          if ((~v140 & 0xF000000000000007) != 0 && ((v140 >> 59) & 0x1E | (v140 >> 2) & 1) == 0xB)
          {
            v141 = *((v140 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v141 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v141 = sub_1ADDE5178(v141);
          }

          swift_beginAccess();
          *(v141 + 24) = v139;

          sub_1AE1B7530(v141);
          swift_endAccess();
        }

        (*(v169 + 8))(v107, v48);
      }

      else
      {
        v66 = v158;
        v67 = v160;
        v68 = v36;
        v69 = v171;
        (*(v158 + 32))(v160, v68, v171);
        swift_beginAccess();
        v70 = *(*(v45 + 24) + 16);
        if ((~v70 & 0xF000000000000007) != 0 && ((v70 >> 59) & 0x1E | (v70 >> 2) & 1) == 0xB)
        {
          v71 = *((v70 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v71 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v71 = sub_1ADDE5178(v71);
        }

        swift_beginAccess();
        *(v71 + 16) = 4;
        sub_1AE1B7530(v71);
        v118 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v118);
        v119 = v172;
        *(&v152 - 7) = v173;
        *(&v152 - 6) = v119;
        *(&v152 - 10) = v69;
        *(&v152 - 9) = v44;
        *(&v152 - 4) = v174;
        v120 = v154;
        *(&v152 - 6) = v153;
        *(&v152 - 5) = v120;
        v121 = v156;
        *(&v152 - 4) = v155;
        *(&v152 - 3) = v121;
        *(&v152 - 2) = v67;
        *(&v152 - 1) = a1;
        v122 = v186;
        v123 = sub_1ADE6B938(sub_1ADFFAB90);
        if (v122)
        {

          (*(v66 + 8))(v67, v69);
        }

        else
        {
          v145 = v123;
          swift_beginAccess();
          v146 = *(*(v45 + 24) + 16);
          if ((~v146 & 0xF000000000000007) != 0 && ((v146 >> 59) & 0x1E | (v146 >> 2) & 1) == 0xB)
          {
            v147 = *((v146 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v147 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v147 = sub_1ADDE5178(v147);
          }

          swift_beginAccess();
          *(v147 + 24) = v145;

          sub_1AE1B7530(v147);
          swift_endAccess();

          (*(v66 + 8))(v160, v69);
        }
      }
    }
  }

  return result;
}