void *sub_1AE1755D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = *(v5(a2, a3) + 48);

  v7 = *(v5(a2, a3) + 48);

  if (v6 == v7)
  {
    return v5(a2, a3);
  }

  (*(a3 + 80))(a2, a3);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  v9 = v12;
  v10 = v13;
  v5(a2, a3);
  v11 = sub_1AE16CB8C(v12, v13, v14);

  v5(a2, a3);
  v12 = 0;
  v13 = 0;
  sub_1AE173A7C(v9, v10, v14, 0, &v12);

  return v11;
}

double CRSet.makeIterator()@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v4;
  a1[1] = v4 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v9 & v7;

  return result;
}

void CRSet.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = *v2;
  v14 = v2[1];
  v16 = v2[2];
  v15 = v2[3];
  v17 = v2[4];
  v18 = v15;
  v51 = a2;
  v52 = v4;
  v50 = v5;
  v58 = v20;
  v59 = v19;
  v56 = v15;
  v57 = v21;
  v54 = v16;
  v55 = v17;
  v53 = &v47 - v11;
  if (v17)
  {
LABEL_9:
    v49 = (v17 - 1) & v17;
    v26 = __clz(__rbit64(v17)) | (v18 << 6);
    (*(v5 + 16))(v7, *(v13 + 48) + *(v5 + 72) * v26, v4, v10);
    v27 = *(*(v13 + 56) + 8 * v26);
    v28 = v13;
    v29 = v7;
    v30 = TupleTypeMetadata2;
    v31 = *(TupleTypeMetadata2 + 48);
    (*(v5 + 32))(v12, v29, v4);
    *&v12[v31] = v27;
    v32 = *(v30 - 8);
    (*(v32 + 56))(v12, 0, 1, v30);

    v48 = v18;
LABEL_10:
    v33 = *v2;
    v34 = v28;
    v35 = v28;
    v36 = v54;
    sub_1ADFAEBFC(v35);
    sub_1ADDDCE74(v33);
    *v2 = v34;
    v2[1] = v14;
    v38 = v48;
    v37 = v49;
    v2[2] = v36;
    v2[3] = v38;
    v2[4] = v37;
    v40 = v57;
    v39 = v58;
    v41 = v59;
    (*(v58 + 32))(v57, v53, v59);
    if ((*(v32 + 48))(v40, 1, TupleTypeMetadata2) == 1)
    {
      (*(v39 + 8))(v40, v41);
      v42 = 1;
      v44 = v51;
      v43 = v52;
      v45 = v50;
    }

    else
    {

      v45 = v50;
      v44 = v51;
      v43 = v52;
      (*(v50 + 32))(v51, v40, v52);
      v42 = 0;
    }

    (*(v45 + 56))(v44, v42, 1, v43);
  }

  else
  {
    v22 = (v16 + 64) >> 6;
    if (v22 <= v15 + 1)
    {
      v23 = v15 + 1;
    }

    else
    {
      v23 = (v16 + 64) >> 6;
    }

    v24 = v23 - 1;
    v25 = v15;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        v46 = *(TupleTypeMetadata2 - 8);
        v48 = v24;
        v32 = v46;
        (*(v46 + 56))(v12, 1, 1, TupleTypeMetadata2, v10);
        v49 = 0;
        v28 = v13;
        goto LABEL_10;
      }

      v17 = *(v14 + 8 * v18);
      ++v25;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE175C68(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v4 = *a1;
  v5 = *a3;
  v7 = *a4;
  v8 = v5;
  return sub_1ADF772F0(&v8, v4, &v7);
}

uint64_t sub_1AE175CA0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  result = sub_1AE17F9B4(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1AE175CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a1[2];
  v8 = a1[3];
  if (v7)
  {
    v9 = a1[2];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    v10 = a1[3];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(a1[2], v8);
  sub_1ADDF4A24(v9, v10, a2);
  if (v3)
  {
    v19 = *a1;
    sub_1ADDCEDE0(&v19, &qword_1EB5BBD18, &qword_1AE24F340);
    v18 = a1[1];
    sub_1ADDCEDE0(&v18, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v7, v8);
    v17 = a1[4];
    return sub_1ADDCEDE0(&v17, qword_1EB5BBD20, &unk_1AE253900);
  }

  else
  {
    v13 = v11;
    v16 = *a1;
    sub_1ADDCEDE0(&v16, &qword_1EB5BBD18, &qword_1AE24F340);
    v15 = a1[1];
    sub_1ADDCEDE0(&v15, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v7, v8);
    v14 = a1[4];
    result = sub_1ADDCEDE0(&v14, qword_1EB5BBD20, &unk_1AE253900);
    *a3 = v13;
  }

  return result;
}

uint64_t sub_1AE175E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ADF78CAC(*(a1 + 16), *v2);
  sub_1ADF78ED0(v5, &v11);
  sub_1ADDF5C7C(a1);
  v7 = v6;
  v9 = v8;

  *a2 = 0;
  a2[1] = 0;
  a2[2] = v7;
  a2[3] = v9;
  a2[4] = 0;
  return result;
}

unint64_t sub_1AE175ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v7 = type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, v11);
  swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D05C();
  v9 = sub_1ADDEAF38(v8, a1, v7, a4);

  return v9;
}

unint64_t sub_1AE175F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D05C();
  v9 = sub_1ADDEAF38(v8, a1, AssociatedTypeWitness, a4);

  return v9;
}

double sub_1AE176004(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = a1[1];
  v23 = *a1;
  v24 = v11;
  v25 = *(a1 + 4);
  if (v23)
  {
    inited = v23;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v13 = *(*(a5 + 8) + 8);
  v14 = *(v13 + 8);

  v14(v15, a3, v13);
  if (v21)
  {

    *a8 = v21;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v26 = *(&v23 + 1);
    v27 = v24;
    v28 = v25;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 16);

    sub_1ADDCEE40(&v26, v22, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADDCEE40(&v27, v22, &qword_1EB5BDA20, &qword_1AE253910);
    sub_1ADDCEE40(&v28, v22, qword_1EB5BBD20, &unk_1AE253900);
    v19(&v23, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

void sub_1AE1762A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a6;
  v31 = a7;
  v29 = a4;
  v32 = a9;
  v35 = *(a3 - 8);
  v36 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = v14[2];
  v33 = v14[3];
  v34 = v16;
  if (v15)
  {
    inited = v15;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v18 = *(*(a5 + 8) + 8);
  v19 = *(v18 + 8);

  v21 = v37[6];
  v19(v20, a3, v18);
  if (v21)
  {

    *v36 = v21;
  }

  else
  {
    v22 = v34;
    if (v34)
    {

      v23 = v33;
      sub_1ADE42C78(v22, v33);
      sub_1ADDF4A24(v22, v23, a2);
      v25 = v24;
    }

    else
    {

      v25 = 0;
    }

    v37[0] = a3;
    v37[1] = v29;
    v37[2] = a5;
    v37[3] = v30;
    v37[4] = v31;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, v37);
    v26 = *(swift_getTupleTypeMetadata2() + 48);
    v27 = v32;
    (*(v35 + 32))(v32, v13, a3);
    *(v27 + v26) = v25;
  }
}

void sub_1AE176518(uint64_t a1@<X2>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  v9 = v7(v16, a1, v8, AssociatedConformanceWitness);
  if (!v4)
  {
    v17 = v16[0];
    v10 = v16[3];
    v13 = v16[1];
    v14 = v16[2];
    v11 = v16[4];
    MEMORY[0x1EEE9AC00](v9);
    v12 = sub_1ADE6B938(sub_1AE180228);
    sub_1ADDCEDE0(&v17, &qword_1EB5BBD18, &qword_1AE24F340);
    *a4 = v12;
    a4[1] = v13;
    a4[2] = v14;
    a4[3] = v10;
    a4[4] = v11;
  }
}

double sub_1AE1766D8@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a5@<X8>, void *a6)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v13, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v6)
  {
    *a6 = v6;
  }

  else
  {
    result = *v13;
    v12 = v13[1];
    *a5 = v13[0];
    *(a5 + 16) = v12;
    *(a5 + 32) = v14;
  }

  return result;
}

uint64_t sub_1AE1767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v32 = a8;
  v33 = a2;
  v31 = a9;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, &v42);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v19 = a1;
  v20 = v33;
  v38 = a7;
  v39 = v19;
  v40 = v33;
  v21 = v46;
  result = sub_1ADE6B938(sub_1AE17FFE4);
  if (v21)
  {
    *v32 = v21;
  }

  else
  {
    v23 = result;
    v24 = v31;
    v46 = 0;
    (*(v16 + 16))(v18, v19, TupleTypeMetadata2);
    v25 = *&v18[*(TupleTypeMetadata2 + 48)];
    if (v25)
    {
      (*(*(a3 - 8) + 8))(v18, a3);
      v26 = sub_1ADF78CAC(*(v20 + 16), v25);

      sub_1ADF78ED0(v26, &v42);
      v41 = v42;
      sub_1ADDF5C7C(v20);
      v25 = v27;
      v29 = v28;
    }

    else
    {
      result = (*(*(a3 - 8) + 8))(v18, a3);
      v29 = 0;
    }

    *v24 = v23;
    v24[1] = 0;
    v24[2] = v25;
    v24[3] = v29;
    v24[4] = 0;
  }

  return result;
}

uint64_t sub_1AE176A00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1ADE0C750(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1AE176A68()
{
  v0 = swift_allocObject();
  sub_1ADDCC3B0();
  return v0;
}

uint64_t sub_1AE176AA0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v13);

  sub_1ADF8D974(v3);
  swift_bridgeObjectRelease_n();

  v4 = v0[2];
  v5 = qword_1ED967EE8;

  if (v5 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v6 = sub_1AE1FEFC0(&dword_1ED96F1F8, v4);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  swift_beginAccess();
  v7 = v1[4];
  v12[0] = v1[3];
  v12[1] = v7;
  swift_beginAccess();
  v9 = v1[5];
  v8 = v1[6];
  v10 = *(v2 + 272);

  return v10(v6, v12, v9, v8);
}

BOOL sub_1AE176C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = v20 - v15;
  (*(*(a3 - 8) + 16))(v20 - v15, a1, a3, v14);
  (*(*(a4 - 8) + 16))(&v16[*(TupleTypeMetadata2 + 48)], a2, a4);
  v17 = (*(a7 + 24))(a4, a7);
  (*(v13 + 8))(v16, TupleTypeMetadata2);
  v18 = *(v17 + 16);

  return v18 != 0;
}

uint64_t sub_1AE176DF8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, __int128 *a6)
{
  v49 = a6;
  v57 = a4;
  v51 = a2;
  v52 = a1;
  v7 = *a5;
  v8 = *(*a5 + 88);
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  swift_beginAccess();
  v20 = *(v7 + 80);

  v53 = a3;
  v50 = v20;
  sub_1AE23CB7C();

  v21 = *(v7 + 112);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 32);
  v24 = swift_checkMetadataState();
  v56 = v16;
  v25 = v60;
  v23(v19, v24, AssociatedConformanceWitness);
  v26 = v54;
  v27 = *(v25 + 16);
  v57 = v19;
  v28 = v19;
  v29 = v59;
  v55 = v27;
  v27(v54, v28, v59);
  v30 = *(v8 - 8);
  v31 = *(v30 + 48);
  if (v31(v26, 1, v8) == 1)
  {
    (*(v25 + 8))(v26, v29);
    v32 = v25;
    v33 = v56;
  }

  else
  {
    v34 = v26;
    v35 = (*(v21 + 24))(v8, v21);
    (*(v30 + 8))(v34, v8);
    v64 = v35;
    v63 = *v49;
    *v61 = *v49;
    sub_1ADDD7B0C(&v63, v62);
    sub_1ADF7845C(v61);

    v33 = v56;
    if (!v31(v56, 1, v8))
    {
      v36 = v64;
      v37 = (*(v21 + 40))(v61, v8, v21);
      v38 = sub_1ADF77B64(v36);
      v37(v61, 0, v38);
    }

    v29 = v59;
    v32 = v60;
  }

  v39 = v58;
  v55(v58, v33, v29);
  v40 = v39;
  v41 = v31(v39, 1, v8);
  v42 = *(v32 + 8);
  if (v41 == 1)
  {
    v43 = v42(v40, v29);
    sub_1ADE42E40(v43, v44, v45);
    swift_allocError();
    *v46 = xmmword_1AE2530B0;
    *(v46 + 16) = 0;
    swift_willThrow();
    v42(v57, v29);
  }

  else
  {
    v42(v57, v29);
    (*(v30 + 32))(v51, v40, v8);
    (*(*(v50 - 8) + 16))(v52, v53);
  }

  return v42(v33, v29);
}

uint64_t sub_1AE177374@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a6@<X8>, void *a7)
{
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a6, a6 + *(TupleTypeMetadata2 + 48), a1, a1 + v11);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_1AE177450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v9 = a3;
  v44 = *a3;
  v12 = v44[10];
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v39 - v13;
  v14 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v42 = a4;
  v41 = a6;
  swift_beginAccess();
  if (a1)
  {
    v9[3] = a1;
    v9[4] = a2;
  }

  else
  {
    sub_1ADDF8898(a4, a5 & 1, a6);
    swift_endAccess();
  }

  v40 = a5;
  swift_beginAccess();
  v17 = v9[5];
  v18 = v44[11];
  v51 = v44[13];
  v19 = v43;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = sub_1AE23DC1C();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v20 | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v17 + 32);
    v22 = ~v25;
    v21 = v17 + 64;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v23 = v27 & *(v17 + 64);
    v24 = v17;
  }

  v54 = (v46 + 56);
  v39 = v22;
  v28 = (v22 + 64) >> 6;
  v45 = v46 + 16;
  v49 = (v46 + 32);
  v52 = v18;
  v48 = v18 - 8;
  v47 = (v46 + 8);

  v55 = 0;
  v50 = v24;
  v53 = v16;
  while ((v24 & 0x8000000000000000) != 0)
  {
    if (!sub_1AE23DC4C())
    {
LABEL_24:
      (*v54)(v16, 1, 1, v12);
      sub_1ADDDCE74(v24);
      v9[6] = v42;
      return;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_22:
    (*v54)(v16, 0, 1, v12);
    (*v49)(v19, v16, v12);
    v32 = sub_1AE16CB10(v58);
    v33 = v52;
    sub_1AE23CB1C();
    v34 = sub_1AE23CB6C();
    if (!(*(*(v33 - 8) + 48))(v35, 1, v33))
    {
      v36 = (*(v44[14] + 40))(v56, v33);
      v37 = v9;
      v38 = v36;
      sub_1ADF7880C(v42, v40 & 1, v41);
      v38(v56, 0);
      v9 = v37;
      v19 = v43;
    }

    v34(v57, 0);
    (*v47)(v19, v12);
    (v32)(v58, 0);
    v16 = v53;
    v24 = v50;
  }

  v29 = v55;
  if (v23)
  {
    v30 = v55;
LABEL_19:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v46 + 16))(v16, *(v24 + 48) + *(v46 + 72) * (v31 | (v30 << 6)), v12);
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      goto LABEL_24;
    }

    v23 = *(v21 + 8 * v30);
    ++v29;
    if (v23)
    {
      v55 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1AE1779DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Timestamp(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a6 + 24))(a3, a6, v10);
  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  while (1)
  {
    v17 = v15;
    if (v16 == v15)
    {
LABEL_5:

      return v16 != v17;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    sub_1ADDF8030(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15++, v12, type metadata accessor for Timestamp);
    v18 = *&v12[*(type metadata accessor for Replica(0) + 20)];
    result = sub_1AE017AB8(v12);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

double CRSet.version.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;

  return result;
}

uint64_t CRSet.insertionCount.getter(uint64_t a1)
{
  swift_beginAccess();
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v2;
}

uint64_t sub_1AE177C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v18 - v10;
  v12 = *a1;
  (*(v13 + 16))(v18 - v10, a2, TupleTypeMetadata2, v9);
  v14 = *(*&v11[*(TupleTypeMetadata2 + 48)] + 16);

  v16 = __OFADD__(v12, v14);
  v17 = v12 + v14;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v11, a3);
    *a4 = v17;
  }

  return result;
}

void CRSet.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  CRSet.init()(a2, a3, a4, &v7);

  *a5 = v7;
}

uint64_t CRSet.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  CRSet.init<A>(_:)(v18, a3, a4, a5, a6, &v21);

  result = (*(v15 + 8))(a2, a4);
  *a8 = v21;
  return result;
}

uint64_t CRSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v49 = a7;
  v11 = *(a2 - 8);
  v54 = a5;
  v55 = v11;
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v43 - v14;
  v15 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v43 - v23;
  v56[0] = a2;
  v56[1] = &type metadata for CRSetElement;
  v56[2] = a4;
  v56[3] = v54;
  v56[4] = &off_1EE7B4A80;
  type metadata accessor for CRSetRef(0, v56);
  v54 = swift_allocObject();
  sub_1ADDCC3B0();
  v46 = v18;
  v47 = a1;
  (*(v18 + 16))(v21, a1, a3);
  v25 = AssociatedTypeWitness;
  sub_1AE23CE7C();
  v26 = v24;
  v48 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v28 = v55;
  v29 = v44;
  v31 = v55 + 48;
  v30 = *(v55 + 48);
  if (v30(v17, 1, a2) != 1)
  {
    v32 = *(v28 + 32);
    v55 = v28 + 32;
    v51 = (v28 + 8);
    v52 = v32;
    v50 = v30;
    do
    {
      v52(v29, v17, a2);
      v33 = v26;
      v34 = v25;
      v35 = v53;
      sub_1ADE0FF20(v53, v29);
      v36 = v17;
      v37 = v31;
      v38 = AssociatedConformanceWitness;
      v39 = *v51;
      v40 = v35;
      v25 = v34;
      v26 = v33;
      (*v51)(v40, a2);
      v39(v29, a2);
      AssociatedConformanceWitness = v38;
      v31 = v37;
      v17 = v36;
      v41 = v50;
      sub_1AE23D80C();
    }

    while (v41(v17, 1, a2) != 1);
  }

  (*(v46 + 8))(v47, v48);
  result = (*(v45 + 8))(v26, v25);
  *v49 = v54;
  return result;
}

Swift::Void __swiftcall CRSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = v1;
  if (CRSet.count.getter(v1) >= 1)
  {
    sub_1ADE0FE78(v2);
    sub_1AE16DC4C(keepingCapacity);
  }
}

uint64_t CRSet.count.getter(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_1AE23CA7C();

  return v1;
}

uint64_t CRSet.subtract<A>(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CRSet.count.getter(a2);
  if (result >= 1)
  {
    sub_1ADE0FE78(a2);
    return sub_1AE16DD98(a1, a3, a4);
  }

  return result;
}

uint64_t CRSet.subtracting<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = *v5;

  return CRSet.subtract<A>(_:)(a1, a2, a3, a4);
}

uint64_t CRSet.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16))
  {
    v27 = *v3;
    MEMORY[0x1EEE9AC00](a1);
    v7 = a2[3];
    v23 = a2[2];
    v6 = v23;
    v24 = v7;
    v25 = a2[4];
    v8 = v25;
    v26 = v9;
    WitnessTable = swift_getWitnessTable();
    v27 = sub_1ADE08EB0(sub_1ADF573E4, &v22, a2, v23, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
    v12 = sub_1AE23D11C();
    swift_getWitnessTable();
    v13 = a3;
    v14 = v6;
    v15 = v12;
    v16 = v7;
    v17 = v8;
  }

  else
  {
    v27 = *v3;
    v18 = a2[2];
    v19 = a2[3];
    v20 = a2[4];

    swift_getWitnessTable();
    v13 = a3;
    v14 = v18;
    v15 = a2;
    v16 = v19;
    v17 = v20;
  }

  return CRSet.init<A>(_:)(&v27, v14, v15, v16, v17, v13);
}

uint64_t CRSet.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
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

  CRSet.copy(renamingReferences:)(&v7, a2, a3);
}

void CRSet.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v19 = *a1;
  if (*v4 == v19)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v14 = byte_1ED96F222;
    *a4 = word_1ED96F220;
    *(a4 + 2) = v14;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_1AE1755D4(&v19, a2, WitnessTable);
    v9 = *v4;
    swift_beginAccess();
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    swift_beginAccess();
    v12 = v8[3];
    v18 = 0;

    sub_1ADF6457C(v13, &v18, v11);
    sub_1ADF6457C(v12, &v18, v10);

    switch(v18)
    {
      case 1:

        *v4 = v8;
        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v15 = &word_1EB5D750B;
        break;
      case 2:
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v15 = &word_1EB5D7508;
        break;
      case 3:
        sub_1ADE0FE78(a2);

        sub_1AE16F8E0(v8, a4);

        return;
      default:
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v15 = &word_1ED96F220;
        break;
    }

    v16 = *v15;
    v17 = *(v15 + 2);

    *a4 = v16;
    *(a4 + 2) = v17;
  }
}

uint64_t CRSet.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(*(*(a2 + 24) + 8) + 80))())
  {
    return sub_1AE1705C0(v2);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

void CRSet.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{

  v4 = sub_1ADDFB6C0();

  if (v4)
  {
    sub_1ADE0FE78(a2);
    sub_1AE1741D4(a1);
  }
}

uint64_t CRSet.description.getter(uint64_t a1)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1AE23DA2C();
  v23 = v21;
  v24 = v22;
  MEMORY[0x1B26FB670](678716755, 0xE400000000000000);
  v7 = *(v6 + 16);
  v8 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v3 + 16))(v5, v7 + v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v10 = MEMORY[0x1E69E7508];
  v11 = MEMORY[0x1E69E7558];
  *(v9 + 56) = MEMORY[0x1E69E7508];
  *(v9 + 64) = v11;
  *(v9 + 32) = v12;
  sub_1AE23BFCC();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v13;
  v14 = sub_1AE23CD3C();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1B26FB670](v14, v16);

  MEMORY[0x1B26FB670](0x6E6F697372657620, 0xEB000000005B203ALL);
  swift_beginAccess();
  v20 = *(v6 + 24);
  v17 = CRVersion.description.getter();
  MEMORY[0x1B26FB670](v17);

  MEMORY[0x1B26FB670](0x7265736E69202C5DLL, 0xEF203A736E6F6974);
  swift_beginAccess();
  v19[1] = *(v6 + 40);
  sub_1AE23CB1C();
  swift_getWitnessTable();
  sub_1AE23DFDC();
  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v23;
}

void CRSet.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = a2[2];
  v9 = a2[4];
  v27 = sub_1AE23C9EC();
  v25 = v7;
  v26 = sub_1AE23C9EC();
  *&v23[0] = v6;

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AE1755D4(v23, a2, WitnessTable);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v12 = a2[3];
  v19 = v8;
  v20 = v12;
  v21 = v9;
  v22 = &v27;
  v17[2] = v8;
  v17[3] = v12;
  v17[4] = v9;
  v17[5] = &v26;
  sub_1AE1710B0(v11, v13, sub_1AE180218, v18, sub_1AE180218, v17);
  sub_1ADDCEDE0(v23, &qword_1EB5BAA40, &unk_1AE24EC50);
  v14 = v26;
  if (sub_1AE23D32C() < 1)
  {
    v15 = sub_1AE23D32C();

    if (v15 < 1)
    {

      *a3 = 0;
      a3[1] = 0;
      return;
    }
  }

  else
  {
  }

  v16 = v27;

  *a3 = v16;
  a3[1] = v14;
}

void CRSet.apply(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v45 - v13;
  v15 = *a1;
  if (!*a1)
  {
    return;
  }

  v47 = v12;
  v51 = v11;
  v16 = a1[1];
  sub_1ADE0FE78(a2);
  v55 = v2;
  v52 = a2;
  v46 = v16;
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    sub_1AE23D36C();
    v15 = v57;
    v17 = v58;
    v18 = v59;
    v48 = v60;
    v19 = v61;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v17 = v15 + 56;
    v18 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v48 = 0;
  }

  v56 = (v54 + 56);
  v45[1] = v18;
  v53 = v54 + 16;
  v23 = (v54 + 8);
  v24 = (v47 + 8);
  while (v15 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v56)(v14, 0, 1, v5);
    CRSet.remove(_:)(v14, v52, v9);
    (*v23)(v14, v5);
    (*v24)(v9, v50);
  }

  if (v19)
  {
    v25 = v48;
LABEL_10:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v54 + 16))(v14, *(v15 + 48) + *(v54 + 72) * (v26 | (v25 << 6)), v5);
    goto LABEL_11;
  }

  v27 = v48;
  while (1)
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v25 >= ((v18 + 64) >> 6))
    {
      break;
    }

    v19 = *(v17 + 8 * v25);
    ++v27;
    if (v19)
    {
      v48 = v25;
      goto LABEL_10;
    }
  }

LABEL_21:
  v50 = *v56;
  v50(v14, 1, 1, v5);
  sub_1ADDDCE74(v15);
  v28 = v46;
  if ((v46 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    v29 = v52;
    sub_1AE23D36C();
    v28 = v62;
    v30 = v63;
    v31 = v64;
    v48 = v65;
    v32 = v66;
  }

  else
  {
    v33 = -1 << *(v46 + 32);
    v30 = v46 + 56;
    v31 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v46 + 56);

    v48 = 0;
    v29 = v52;
  }

  v47 = v31;
  v36 = (v31 + 64) >> 6;
  v37 = v28;
  while (2)
  {
    if (v28 < 0)
    {
      v44 = sub_1AE23D9AC();
      v42 = v51;
      if (!v44)
      {
LABEL_40:
        v50(v42, 1, 1, v5);
        sub_1ADDDCE74(v28);
        return;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    v42 = v51;
    if (v32)
    {
      v38 = v48;
LABEL_29:
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      (*(v54 + 16))(v51, *(v28 + 48) + *(v54 + 72) * (v39 | (v38 << 6)), v5);
LABEL_30:
      v50(v42, 0, 1, v5);
      v40 = v49;
      CRSet.insert(_:)(v49, v42, v29);
      v41 = *v23;
      (*v23)(v42, v5);
      v41(v40, v5);
      v28 = v37;
      continue;
    }

    break;
  }

  v43 = v48;
  while (1)
  {
    v38 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      goto LABEL_40;
    }

    v32 = *(v30 + 8 * v38);
    ++v43;
    if (v32)
    {
      v48 = v38;
      goto LABEL_29;
    }
  }

LABEL_43:
  __break(1u);
}

uint64_t CRSet.hasDelta(from:)(void **a1)
{
  v2 = *a1;
  if (*v1 == v2)
  {
    return 0;
  }

  else
  {
    return sub_1AE1738A8(v2) & 1;
  }
}

double CRSet.delta(_:from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *v4;
  v21 = *a2;
  v22 = v8;

  CRSet.finalizeTimestamps(_:)(a1, a3);
  CRSet.finalizeTimestamps(_:)(a1, a3);
  v9 = v22;
  v20[3] = v22;
  CRSet.version.getter(v19);
  v10 = v19[0];
  v20[2] = v21;
  CRSet.version.getter(v20);
  v11 = v20[0];
  sub_1ADF637A8(*(&v10 + 1), v20[1]);
  if (v12)
  {

LABEL_4:
    sub_1AE16B474(a1, v9, v19);
    v17 = v19[1];
    v18 = v19[0];
    v16 = v19[2];

    result = *&v17;
    *a4 = v18;
    a4[1] = v17;
    a4[2] = v16;
    return result;
  }

  sub_1ADF637A8(v10, v11);
  v14 = v13;

  if (v14)
  {
    goto LABEL_4;
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t CRSet.canMerge(delta:)(uint64_t *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;

  v2 = sub_1AE17261C(v4);

  return v2 & 1;
}

uint64_t CRSet.merge(delta:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];

  sub_1ADE0FE78(a2);
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v9 = sub_1AE1727BC(&v11);

  return v9 & 1;
}

void CRSet.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = a3[2];
  v11 = a3[3];
  v63 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = sub_1AE23D7CC();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v48 - v12;
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v48 - v19;
  v20 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48 - v21;
  v23 = *a1;
  v24 = *v5;
  v61 = a2;
  if (!*(a2 + 24) && v24 == v23)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v49 = a4;
  v69[1] = v24;
  v66 = v23;

  WitnessTable = swift_getWitnessTable();
  v26 = sub_1AE1755D4(&v66, a3, WitnessTable);
  v27 = a3[4];
  v69[0] = sub_1AE23C9EC();
  v68 = sub_1AE23C9EC();
  v67 = sub_1AE23C9EC();
  MEMORY[0x1EEE9AC00](v67);
  *(&v48 - 4) = v10;
  *(&v48 - 3) = v11;
  *(&v48 - 2) = v27;
  *(&v48 - 1) = v69;
  MEMORY[0x1EEE9AC00](v28);
  *(&v48 - 4) = v10;
  *(&v48 - 3) = v11;
  *(&v48 - 2) = v27;
  *(&v48 - 1) = &v68;
  v48 = v26;
  sub_1AE1710B0(v26, v29, sub_1AE180218, v30, sub_1AE17F888, (&v48 - 6));
  v65 = v23;
  v31 = v27;
  CRSet.makeIterator()(&v66);
  v32 = type metadata accessor for CRSet.Iterator(0, v10, v11, v27);
  CRSet.Iterator.next()(v32, v22);
  v59 = *(v64 + 48);
  v33 = v59(v22, 1, v10);
  v34 = v54;
  if (v33 != 1)
  {
    v39 = *(v64 + 32);
    v57 = AssociatedTypeWitness - 8;
    v58 = v63 + 40;
    ++v56;
    v50 = (v64 + 16);
    v64 += 32;
    v55 = (v64 - 24);
    v51 = v39;
    v39(v54, v22, v10);
    while (1)
    {
      (*(v63 + 40))(v34, v61, v10);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v13, 1) == 1)
      {
        (*v55)(v34, v10);
        (*v56)(v13, v60);
      }

      else
      {
        (*v56)(v13, v60);
        (*v50)(v53, v34, v10);
        sub_1AE23D38C();
        v40 = v22;
        v41 = v13;
        v42 = v32;
        v43 = v31;
        v44 = v52;
        v39 = v51;
        sub_1AE23D33C();
        v45 = *v55;
        v46 = v44;
        v31 = v43;
        v32 = v42;
        v13 = v41;
        v22 = v40;
        v34 = v54;
        (*v55)(v46, v10);
        v45(v34, v10);
      }

      CRSet.Iterator.next()(v32, v22);
      if (v59(v22, 1, v10) == 1)
      {
        break;
      }

      v39(v34, v22, v10);
    }
  }

  sub_1ADDDCE74(v66);
  v35 = v69[0];
  if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0)
  {

    v36 = v49;
LABEL_8:
    v38 = v67;
    v37 = v68;

    *v36 = v35;
    v36[1] = v37;
    v36[2] = v38;
    return;
  }

  v47 = sub_1AE23D32C();

  v36 = v49;
  if (v47 > 0)
  {
    goto LABEL_8;
  }

  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0;
}

void CRSet.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64CB8(a2, a3, a4, &v13);
    swift_setDeallocating();

    if (!v5)
    {
      *a5 = v13;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

double CRSet.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v11 = v6;
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];

    sub_1ADE6BC08(&v11, v8, v9, v10);
  }

  return result;
}

BOOL CRSet.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

void CRSet.MutatingAction.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v55 = a4;
  if (*(a1 + 64))
  {
    v50 = a5;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v51 = inited;
    sub_1ADDE78C8();
    v10 = *(v9 + 16);
    if ((~v10 & 0xF000000000000007) != 0 && (v10 & 0xF000000000000000) == 0x1000000000000000)
    {
      v17 = (v10 & 0xFFFFFFFFFFFFFFFLL);
      v18 = v17[3];
      v12 = v17[5];
      v13 = v17[6];
      v14 = v17[10];
      v15 = v17[11];
      v52 = a3;
      v54 = v18;

      sub_1ADE42C78(v12, v13);
      sub_1ADE42C78(v14, v15);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v54 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42CB8(v12, v13);
    v19 = sub_1ADE42CB8(v14, v15);
    v57 = v54;
    MEMORY[0x1EEE9AC00](v19);
    v41 = a2;
    v42 = a3;
    v43 = v55;
    v44 = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v22 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40, MEMORY[0x1E69E6340]);
    v23 = v53;
    v24 = sub_1ADE08EB0(sub_1AE180278, v40, v20, a2, v21, v22, MEMORY[0x1E69E7288], &v56);
    if (v23)
    {
    }

    else
    {
      v25 = v24;
      v47 = v22;
      v48 = v21;
      v52 = a3;
      v53 = v20;

      v57 = v25;
      v26 = sub_1AE23D11C();
      WitnessTable = swift_getWitnessTable();
      v46 = v26;
      v54 = sub_1AE23D39C();
      sub_1ADDE78C8();
      v27 = 0;
      v29 = *(v28 + 16);
      v49 = a2;
      if ((~v29 & 0xF000000000000007) != 0)
      {
        v30 = MEMORY[0x1E69E7CC0];
        v31 = 0;
        v32 = 0;
        v33 = 0;
        if ((v29 & 0xF000000000000000) == 0x1000000000000000)
        {
          v34 = (v29 & 0xFFFFFFFFFFFFFFFLL);
          v35 = v34[4];
          v27 = v34[5];
          v31 = v34[6];
          v32 = v34[10];
          v33 = v34[11];

          v30 = v35;

          sub_1ADE42C78(v27, v31);
          sub_1ADE42C78(v32, v33);
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      sub_1ADE42CB8(v27, v31);
      v36 = sub_1ADE42CB8(v32, v33);
      v57 = v30;
      MEMORY[0x1EEE9AC00](v36);
      v41 = v49;
      v42 = v52;
      v43 = v55;
      v44 = a1;
      v37 = sub_1ADE08EB0(sub_1AE17F8C0, v40, v53, v49, v48, v47, MEMORY[0x1E69E7288], &v56);

      v57 = v37;
      v38 = sub_1AE23D39C();

      v39 = v50;
      *v50 = v54;
      v39[1] = v38;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v16 = 0xD000000000000014;
    *(v16 + 8) = 0x80000001AE25FB50;
    *(v16 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1AE17A690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v12 = sub_1ADE0262C(inited, a2);

  result = (*(*(*(a4 + 8) + 8) + 8))(v12, a3);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t CRSet.MutatingAction.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  result = sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v31 = v7;
    v54 = &v28;
    v33[0] = v8;
    MEMORY[0x1EEE9AC00](result);
    v10 = a2[3];
    v24 = a2[2];
    v11 = v24;
    v25 = v10;
    v28 = v10;
    v12 = a2[4];
    v26 = v12;
    v27 = a1;
    v32 = 0;
    v13 = sub_1AE23D38C();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v29 = v13;
    v16 = v13;
    v17 = WitnessTable;
    v30 = v14;
    v18 = v32;
    v19 = sub_1ADE08EB0(sub_1AE17F8E4, v23, v16, &type metadata for Proto_Set.Element, v14, WitnessTable, MEMORY[0x1E69E7288], &v44);
    if (v18)
    {

      v35 = 0;
      v36 = MEMORY[0x1E69E7CC0];
      v37 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v32 = v19;

      v44 = v31;
      MEMORY[0x1EEE9AC00](v20);
      v24 = v11;
      v25 = v28;
      v26 = v12;
      v27 = a1;

      v21 = sub_1ADE08EB0(sub_1AE17F910, v23, v29, &type metadata for Proto_Set.Element, v30, v17, MEMORY[0x1E69E7288], v34);

      v22 = v32;
      *&v46 = 0;
      *(&v46 + 1) = v32;
      v47 = v21;
      v48 = 0u;
      v49 = 0u;
      v50 = 1;
      *v51 = *v45;
      *&v51[3] = *&v45[3];
      v52 = 0;
      v53 = 0;
      swift_beginAccess();
      sub_1ADFAEE10(&v46, &v35);
      sub_1AE1B7950(&v46);
      swift_endAccess();

      v35 = 0;
      v36 = v22;
      v37 = v21;
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 1;
    *v41 = *v45;
    *&v41[3] = *&v45[3];
    v42 = 0;
    v43 = 0;
    return sub_1ADFAECE8(&v35);
  }

  return result;
}

uint64_t sub_1AE17ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, v10);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v6 + 8))(v12, a3);
}

uint64_t CRSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  sub_1ADE0FE78(a2);
  sub_1AE16D8FC(a1, v11);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v12 = *(v6 - 8);
    v13 = 1;
  }

  else
  {

    v12 = *(v6 - 8);
    (*(v12 + 32))(a3, v11, v6);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, v6);
}

double sub_1AE17AEEC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  sub_1AE174904(a1, a2, a3, &type metadata for CRSetElement.Kind, a4, a5, &off_1EE7B4A80, v11);
  if (!v6)
  {
    result = *v11;
    v9 = v11[1];
    v10 = v11[2];
    *a6 = v11[0];
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

void CRSet.Partial.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v13 = *(v12 + 16);
    if ((~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x1000000000000000)
    {
      v22 = (v13 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v22[3];
      *&v27[16] = v22[2];
      *&v27[32] = v23;
      v24 = v22[5];
      *&v27[48] = v22[4];
      v28 = v24;
      *v27 = v22[1];
      sub_1ADFAEE10(v27, &v26);

      v20 = v28;
      v19 = *&v27[40];
      v18 = v27[56];
      v17 = *&v27[24];
      v16 = *&v27[8];
      v15 = *v27;
    }

    else
    {

      v15 = 0;
      v16 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v17 = 0uLL;
      v18 = 1;
      v19 = 0uLL;
      v20 = 0uLL;
    }

    v27[0] = v18;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = v19;
    v34 = v18;
    v35 = v20;
    sub_1AE17AEEC(&v30, a1, a2, a3, a4, v29);

    if (!v5)
    {
      v25 = v29[1];
      *a5 = v29[0];
      a5[1] = v25;
      a5[2] = v29[2];
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x80000001AE25FB50;
    *(v21 + 16) = 0;
    swift_willThrow();
  }
}

__n128 sub_1AE17B124@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v29 = a3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v22 = *v3;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v13 = *(a2 + 16);

  v19[0] = v13;
  v19[1] = &type metadata for CRSetElement;
  v20 = *(a2 + 24);
  v21 = &off_1EE7B4A80;
  v14 = type metadata accessor for CRSetRefMergeableDelta(0, v19);
  sub_1AE174F20(a1, v14, v28);

  if (!v5)
  {
    v16 = v28[3];
    v17 = v28[4];
    v18 = v29;
    *(v29 + 32) = v28[2];
    *(v18 + 48) = v16;
    *(v18 + 64) = v17;
    result = v28[1];
    *v18 = v28[0];
    *(v18 + 16) = result;
  }

  return result;
}

double CRSet.Partial.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {

    sub_1AE17B124(a1, a2, v7);
    swift_beginAccess();
    sub_1AE1B7950(v7);
    swift_endAccess();
  }

  return result;
}

void CRSet.Partial.visitReferences(_:)(void *a1, uint64_t a2)
{
  v23 = a2;
  v4 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v22 - v9;
  v27 = v8;
  v10 = *(v2 + 40);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v24 = v8 + 32;
  v25 = v8 + 16;
  v28 = (v8 + 8);
  v29 = v10;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v19 = v26;
      v18 = v27;
      (*(v27 + 16))(v26, *(v29 + 48) + *(v27 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v4);
      (*(v18 + 32))(v6, v19, v4);
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      if ((*(v21 + 8))(v20, v21))
      {
        break;
      }

      v14 &= v14 - 1;
      (*(*(*(v23 + 24) + 8) + 48))(a1, v4);
      (*v28)(v6, v4);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v28)(v6, v4);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t CRSet.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = *a1;
  v35 = *v3;
  v17 = v35;
  v33 = v16;
  CRSet.makeIterator()(&v34);
  v18 = type metadata accessor for CRSet.Iterator(0, v7, a2[3], a2[4]);
  v19 = v17;

  CRSet.Iterator.next()(v18, v15);
  v20 = v8;
  v21 = *(v8 + 48);
  if (v21(v15, 1, v7) != 1)
  {
    v29 = a3;
    v32 = a2;
    v22 = v21;
    v23 = v18;
    v31 = *(v20 + 32);
    v24 = v30;
    v25 = (v20 + 8);
    do
    {
      v31(v12, v15, v7);
      CRSet.insert(_:)(v24, v12, v32);
      v26 = *v25;
      (*v25)(v24, v7);
      v26(v12, v7);
      CRSet.Iterator.next()(v23, v15);
    }

    while (v22(v15, 1, v7) != 1);
    v19 = v35;
    a3 = v29;
  }

  result = sub_1ADDDCE74(v34);
  *a3 = v19;
  return result;
}

uint64_t CRSet.intersection(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1AE23D7CC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *a1;
  v48 = *v3;
  v16 = v48;
  v46 = v48;
  CRSet.makeIterator()(&v47);
  v17 = a2[3];
  v18 = a2[4];
  v45 = a2;
  v19 = v16;
  v20 = type metadata accessor for CRSet.Iterator(0, v7, v17, v18);

  CRSet.Iterator.next()(v20, v14);
  v21 = v8;
  v24 = *(v8 + 48);
  v22 = v8 + 48;
  v23 = v24;
  if (v24(v14, 1, v7) != 1)
  {
    v39 = a3;
    v27 = *(v21 + 32);
    v25 = v21 + 32;
    v26 = v27;
    v28 = (v25 - 24);
    v44 = v25;
    v40 = (v25 - 24);
    ++v41;
    v27(v10, v14, v7);
    while (1)
    {
      v46 = v15;
      if (!CRSet.contains(_:)(v10, v45))
      {
        v29 = v26;
        v30 = v14;
        v31 = v7;
        v32 = v23;
        v33 = v22;
        v34 = v20;
        v35 = v15;
        v36 = v42;
        CRSet.remove(_:)(v10, v45, v42);
        v37 = v36;
        v15 = v35;
        v20 = v34;
        v22 = v33;
        v23 = v32;
        v7 = v31;
        v14 = v30;
        v26 = v29;
        v28 = v40;
        (*v41)(v37, v43);
      }

      (*v28)(v10, v7);
      CRSet.Iterator.next()(v20, v14);
      if (v23(v14, 1, v7) == 1)
      {
        break;
      }

      v26(v10, v14, v7);
    }

    v19 = v48;
    a3 = v39;
  }

  result = sub_1ADDDCE74(v47);
  *a3 = v19;
  return result;
}

uint64_t CRSet.subtracting(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1AE23D7CC();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = *a1;
  v44 = *v3;
  v16 = v44;
  v42 = v44;
  CRSet.makeIterator()(&v43);
  v17 = a2[3];
  v18 = a2[4];
  v41 = a2;
  v19 = type metadata accessor for CRSet.Iterator(0, v7, v17, v18);

  CRSet.Iterator.next()(v19, v14);
  v20 = v16;
  v21 = v8 + 48;
  v22 = *(v8 + 48);
  if (v22(v14, 1, v7) != 1)
  {
    v35 = a3;
    v23 = *(v8 + 32);
    v40 = v8 + 32;
    v24 = (v8 + 8);
    ++v36;
    v37 = v24;
    v23(v10, v14, v7);
    while (1)
    {
      v42 = v15;
      if (CRSet.contains(_:)(v10, v41))
      {
        v25 = v14;
        v26 = v7;
        v27 = v23;
        v28 = v22;
        v29 = v21;
        v30 = v19;
        v31 = v15;
        v32 = v38;
        CRSet.remove(_:)(v10, v41, v38);
        v33 = v32;
        v15 = v31;
        v19 = v30;
        v21 = v29;
        v22 = v28;
        v23 = v27;
        v7 = v26;
        v14 = v25;
        v24 = v37;
        (*v36)(v33, v39);
      }

      (*v24)(v10, v7);
      CRSet.Iterator.next()(v19, v14);
      if (v22(v14, 1, v7) == 1)
      {
        break;
      }

      v23(v10, v14, v7);
    }

    v20 = v44;
    a3 = v35;
  }

  result = sub_1ADDDCE74(v43);
  *a3 = v20;
  return result;
}

uint64_t CRSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v34 = sub_1AE23D7CC();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = *v3;
  v42 = *v3;
  v40 = v18;
  CRSet.makeIterator()(&v41);
  v20 = type metadata accessor for CRSet.Iterator(0, v7, a2[3], a2[4]);

  v39 = v20;
  CRSet.Iterator.next()(v20, v17);
  v37 = *(v8 + 48);
  v38 = v8 + 48;
  if (v37(v17, 1, v7) != 1)
  {
    v32 = a3;
    v21 = v8 + 32;
    v36 = *(v8 + 32);
    v22 = (v8 + 8);
    v23 = (v13 + 8);
    do
    {
      v25 = v21;
      v36(v12, v17, v7);
      v40 = v19;
      if (CRSet.contains(_:)(v12, a2))
      {
        v24 = v33;
        CRSet.remove(_:)(v12, a2, v33);
        (*v23)(v24, v34);
        (*v22)(v12, v7);
      }

      else
      {
        v26 = v19;
        v27 = v35;
        CRSet.insert(_:)(v35, v12, a2);
        v28 = *v22;
        v29 = v27;
        v19 = v26;
        (*v22)(v29, v7);
        v28(v12, v7);
      }

      CRSet.Iterator.next()(v39, v17);
      v21 = v25;
    }

    while (v37(v17, 1, v7) != 1);
    v19 = v42;
    a3 = v32;
  }

  result = sub_1ADDDCE74(v41);
  *a3 = v19;
  return result;
}

uint64_t CRSet.formUnion(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[2];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v24 = *a1;
  CRSet.makeIterator()(&v25);
  v14 = a2[3];
  v15 = a2[4];
  v23 = a2;
  v22 = type metadata accessor for CRSet.Iterator(0, v4, v14, v15);
  CRSet.Iterator.next()(v22, v13);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    v17 = *(v5 + 32);
    v18 = (v5 + 8);
    do
    {
      v17(v10, v13, v4);
      CRSet.insert(_:)(v7, v10, v23);
      v19 = *v18;
      (*v18)(v7, v4);
      v19(v10, v4);
      CRSet.Iterator.next()(v22, v13);
    }

    while (v16(v13, 1, v4) != 1);
  }

  return sub_1ADDDCE74(v25);
}

uint64_t CRSet.formIntersection(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[2];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1AE23D7CC();
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *a1;
  v34 = v2;
  v15 = *v2;
  v37 = v14;
  v38 = v15;
  CRSet.makeIterator()(&v39);
  v16 = a2;
  v36 = type metadata accessor for CRSet.Iterator(0, v5, a2[3], a2[4]);
  CRSet.Iterator.next()(v36, v13);
  v17 = v6;
  v20 = *(v6 + 48);
  v19 = v6 + 48;
  v18 = v20;
  if (v20(v13, 1, v5) != 1)
  {
    v22 = v17 + 32;
    v23 = *(v17 + 32);
    v31 = (v9 + 8);
    v35 = v22;
    v24 = (v22 - 24);
    v23(v8, v13, v5);
    while (1)
    {
      v38 = v37;
      if (!CRSet.contains(_:)(v8, v16))
      {
        v25 = v23;
        v26 = v18;
        v27 = v19;
        v28 = v32;
        CRSet.remove(_:)(v8, v16, v32);
        v29 = v28;
        v19 = v27;
        v18 = v26;
        v23 = v25;
        (*v31)(v29, v33);
      }

      (*v24)(v8, v5);
      CRSet.Iterator.next()(v36, v13);
      if (v18(v13, 1, v5) == 1)
      {
        break;
      }

      v23(v8, v13, v5);
    }
  }

  return sub_1ADDDCE74(v39);
}

uint64_t CRSet.subtract(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[2];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1AE23D7CC();
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *a1;
  v31 = v2;
  v15 = *v2;
  v35 = v14;
  v36 = v15;
  CRSet.makeIterator()(&v37);
  v16 = a2;
  v34 = type metadata accessor for CRSet.Iterator(0, v5, a2[3], a2[4]);
  CRSet.Iterator.next()(v34, v13);
  v17 = v6;
  v20 = *(v6 + 48);
  v19 = v6 + 48;
  v18 = v20;
  if (v20(v13, 1, v5) != 1)
  {
    v32 = *(v17 + 32);
    v33 = v17 + 32;
    v22 = (v17 + 8);
    v23 = (v9 + 8);
    v32(v8, v13, v5);
    while (1)
    {
      v36 = v35;
      if (CRSet.contains(_:)(v8, v16))
      {
        v24 = v18;
        v25 = v19;
        v26 = v29;
        CRSet.remove(_:)(v8, v16, v29);
        v27 = v26;
        v19 = v25;
        v18 = v24;
        (*v23)(v27, v30);
      }

      (*v22)(v8, v5);
      CRSet.Iterator.next()(v34, v13);
      if (v18(v13, 1, v5) == 1)
      {
        break;
      }

      v32(v8, v13, v5);
    }
  }

  return sub_1ADDDCE74(v37);
}

uint64_t CRSet.formSymmetricDifference(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v26 = sub_1AE23D7CC();
  v12 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v32 = *a1;
  CRSet.makeIterator()(&v33);
  v31 = type metadata accessor for CRSet.Iterator(0, v6, a2[3], a2[4]);
  CRSet.Iterator.next()(v31, v16);
  v30 = *(v7 + 48);
  if (v30(v16, 1, v6) != 1)
  {
    v28 = *(v7 + 32);
    v29 = v7 + 32;
    v18 = (v7 + 8);
    v19 = (v12 + 8);
    v28(v11, v16, v6);
    while (1)
    {
      v32 = *v3;

      v21 = CRSet.contains(_:)(v11, a2);

      if (v21)
      {
        v20 = v25;
        CRSet.remove(_:)(v11, a2, v25);
        (*v19)(v20, v26);
        (*v18)(v11, v6);
      }

      else
      {
        v22 = v27;
        CRSet.insert(_:)(v27, v11, a2);
        v23 = *v18;
        (*v18)(v22, v6);
        v23(v11, v6);
      }

      CRSet.Iterator.next()(v31, v16);
      if (v30(v16, 1, v6) == 1)
      {
        break;
      }

      v28(v11, v16, v6);
    }
  }

  return sub_1ADDDCE74(v33);
}

uint64_t CRSet.isEmpty.getter(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);

  LOBYTE(v3) = MEMORY[0x1B26FB370](v4, v2, &type metadata for CRSetElement, v3);

  return v3 & 1;
}

void CRSet.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = v5;
  v40 = a1;
  v41 = a2;
  v9 = a3[2];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1AE23D7CC();
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v44 = *v4;
  v17 = v44;
  v42 = v44;
  CRSet.makeIterator()(&v43);
  v18 = a3[3];
  v19 = a3[4];
  v37 = a3;
  v20 = v17;
  v21 = type metadata accessor for CRSet.Iterator(0, v9, v18, v19);

  v39 = v21;
  CRSet.Iterator.next()(v21, v16);
  v22 = v10;
  v24 = v10 + 48;
  v23 = *(v10 + 48);
  if (v23(v16, 1, v9) != 1)
  {
    v38 = *(v22 + 32);
    v32 = a4;
    ++v33;
    v25 = (v22 + 8);
    v34 = v16;
    do
    {
      v38(v12, v16, v9);
      v26 = v40(v12);
      if (v6)
      {
        (*v25)(v12, v9);
        sub_1ADDDCE74(v43);

        return;
      }

      if ((v26 & 1) == 0)
      {
        v27 = v9;
        v28 = v24;
        v29 = v23;
        v30 = v35;
        CRSet.remove(_:)(v12, v37, v35);
        v31 = v30;
        v23 = v29;
        v24 = v28;
        v9 = v27;
        v6 = 0;
        v16 = v34;
        (*v33)(v31, v36);
      }

      (*v25)(v12, v9);
      CRSet.Iterator.next()(v39, v16);
    }

    while (v23(v16, 1, v9) != 1);
    v20 = v44;
    a4 = v32;
  }

  sub_1ADDDCE74(v43);
  *a4 = v20;
}

double sub_1AE17D0B0@<D0>(void *a1@<X8>)
{
  CRSet.makeIterator()(a1);

  return result;
}

uint64_t sub_1AE17D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE17D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

uint64_t CRSet.Index.hashValue.getter(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23CA6C();
  return sub_1AE23E34C();
}

uint64_t sub_1AE17D2C8(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  CRSet.Index.hash(into:)(v4, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1AE17D34C@<X0>(uint64_t (*a1)(uint64_t, uint64_t, ValueMetadata *, uint64_t)@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);

  v9 = a1(v8, v6, &type metadata for CRSetElement, v7);
  v11 = v10;
  LOBYTE(v6) = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t CRSet.index(after:)@<X0>(uint64_t a3@<X8>)
{
  swift_beginAccess();

  v4 = sub_1AE23CA8C();
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  return result;
}

void (*sub_1AE17D4B4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AE17D53C(v6, a2, a3);
  return sub_1ADDF195C;
}

void (*sub_1AE17D53C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  v6 = *(v5 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[2] = v7;
  CRSet.subscript.getter();
  return sub_1ADE022F8;
}

uint64_t sub_1AE17D618(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  CRSet.index(after:)(a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

void sub_1AE17D67C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v58 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_1AE23BFEC();
  v15 = *(v14 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v22 = *a1;
  v23 = *(a2 + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v22 >= v24;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    sub_1ADE42E40(v16, v17, v18);
    swift_allocError();
    *v26 = 0xD000000000000013;
    *(v26 + 8) = 0x80000001AE25FD70;
    *(v26 + 16) = 0;
    swift_willThrow();

    v27 = v60;
LABEL_15:
    sub_1ADFAECE8(v27);
    return;
  }

  v55 = a4;
  v56 = a3;
  v54 = a6;
  (*(v15 + 16))(v21, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v14, v19);
  type metadata accessor for ReplicaState(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v30 = type metadata accessor for Replica(0);
  v31 = *(*(v30 - 8) + 56);
  v57 = a2;
  v31(v28 + v29, 1, 1, v30);
  (*(v15 + 32))(v28 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v21, v14);
  *(v28 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v28 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v31(v13, 1, 1, v30);
  v32 = v57;
  v33 = v60;
  swift_beginAccess();
  sub_1ADDD85E4(v13, v28 + v29);
  swift_endAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = v33[3];
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  if (v34)
  {
    v36 = v33[4];
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v34, v33[4]);

  v37 = v59;
  sub_1ADDD6748(v35, v36, v32, &v61);
  if (v37)
  {

    v27 = v33;
    goto LABEL_15;
  }

  v59 = v28;
  v53 = &v51;
  v51 = *(&v61 + 1);
  v52 = v61;
  v66 = v33[1];
  *&v61 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v38 = v55;
  *(&v51 - 4) = v56;
  *(&v51 - 3) = v38;
  *(&v51 - 2) = v58;
  *(&v51 - 1) = v32;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v42 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40, MEMORY[0x1E69E6340]);
  v43 = sub_1ADE08EB0(sub_1AE1801EC, (&v51 - 6), v39, TupleTypeMetadata2, v41, v42, MEMORY[0x1E69E7288], &v65);
  v45 = v51;
  v44 = v52;
  sub_1ADFAECE8(v33);
  sub_1ADDCEDE0(&v66, qword_1EB5BBB90, &unk_1AE24EC40);
  *&v61 = v43;
  sub_1AE23D11C();
  v46 = v56;
  swift_getWitnessTable();
  v47 = v58;
  v48 = sub_1AE23CB2C();
  *&v61 = v46;
  *(&v61 + 1) = &type metadata for CRSetElement;
  v62 = v55;
  v63 = v47;
  v64 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef(0, &v61);
  *&v61 = v44;
  *(&v61 + 1) = v45;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  v49 = v65;
  v50 = swift_allocObject();
  sub_1ADE0C750(v59, &v61, v48, v49);

  *v54 = v50;
}

void sub_1AE17DCC8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a1[3];
  v20 = a1[2];
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v12 = *(*(a4 + 8) + 8);
  v13 = *(v12 + 8);

  v13(v14, a3, v12);
  if (v6)
  {

    *a5 = v6;
  }

  else
  {
    if (v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v20, v19);
    sub_1ADDF4A24(v15, v16, a2);
    v18 = v17;

    *(a6 + *(swift_getTupleTypeMetadata2() + 48)) = v18;
  }
}

uint64_t sub_1AE17DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000016;
  *(v3 + 8) = 0x80000001AE262900;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

__n128 sub_1AE17DF00@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = *a1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v11 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  v12 = sub_1ADDF66A8(v9);
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v13 = a1[4];
  v42 = a1[3];
  v43 = v13;

  sub_1ADDF5C7C(a2);
  v15 = v14;
  v17 = v16;

  sub_1ADE42CB8(0, 0);
  swift_beginAccess();
  v53[1] = a1[5];
  v32 = v5[10];
  v33 = v5[12];
  v34 = v5[13];
  v35 = a2;
  v30[2] = v32;
  v30[3] = v33;
  v30[4] = v34;
  v30[5] = sub_1AE18017C;
  v30[6] = &v31;
  v18 = sub_1AE23CB1C();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v21 = v55;
  v22 = sub_1ADE08EB0(sub_1AE18019C, v30, v18, &type metadata for Proto_Set.Element, v19, WitnessTable, MEMORY[0x1E69E7288], v53);
  if (v21)
  {

    v42 = v12;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = MEMORY[0x1E69E7CC0];
    v45 = v15;
    v47 = 0;
    v48 = 0;
    v46 = v17;
    v49 = 1;
    *v50 = v54[0];
    *&v50[3] = *(v54 + 3);
    v51 = 0;
    v52 = 0;
    sub_1ADFAECE8(&v42);
  }

  else
  {
    v24 = v22;
    v25 = MEMORY[0x1E69E7CC0];

    *&v37 = v12;
    *(&v37 + 1) = v24;
    v38.n128_u64[0] = v25;
    v38.n128_u64[1] = v15;
    *&v40 = 0;
    v39 = v17;
    BYTE8(v40) = 1;
    *(&v40 + 9) = v54[0];
    HIDWORD(v40) = *(v54 + 3);
    v41 = 0uLL;
    v42 = v12;
    v43 = v24;
    v44 = v25;
    v45 = v15;
    v47 = 0;
    v48 = 0;
    v46 = v17;
    v49 = 1;
    *v50 = v54[0];
    *&v50[3] = *(v54 + 3);
    v51 = 0;
    v52 = 0;
    sub_1ADFAEE10(&v37, &v36);
    sub_1ADFAECE8(&v42);
    v26 = v40;
    v27 = v29;
    *(v29 + 32) = v39;
    *(v27 + 48) = v26;
    *(v27 + 64) = v41;
    result = v38;
    *v27 = v37;
    *(v27 + 16) = result;
  }

  return result;
}

uint64_t sub_1AE17E2B0@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1ADE6B938(sub_1AE180240);
  if (!v3)
  {
    v7 = result;

    sub_1ADF78ED0(v8, &v13);
    sub_1ADDF5C7C(a2);
    v10 = v9;
    v12 = v11;

    *a3 = v7;
    a3[1] = 0;
    a3[2] = v10;
    a3[3] = v12;
    a3[4] = 0;
  }

  return result;
}

double sub_1AE17E374@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, void)@<X1>, void *a4@<X6>, uint64_t a5@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v13, a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    result = *v13;
    v12 = v13[1];
    *a5 = v13[0];
    *(a5 + 16) = v12;
    *(a5 + 32) = v14;
  }

  return result;
}

void sub_1AE17E424(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, size_t *a5@<X4>, void *a6@<X8>)
{
  v105 = a5;
  v109 = a3;
  v110 = a1;
  v10 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v104 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = (&v85 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v85 - v16;
  v18 = sub_1AE23BFEC();
  v19 = *(v18 - 8);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 24);
  v27 = *(v26 + 16);
  if (!v27 || (v28 = *v110, *v110 >= v27))
  {
    sub_1ADE42E40(v20, v21, v22);
    swift_allocError();
    *v41 = 0xD000000000000013;
    *(v41 + 8) = 0x80000001AE25FD70;
    *(v41 + 16) = 0;
    swift_willThrow();

    sub_1ADFAECE8(v110);
    goto LABEL_12;
  }

  v89 = a6;
  v99 = a4;
  (*(v19 + 16))(v25, v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v28, v18, v23);
  type metadata accessor for ReplicaState(0);
  v29 = swift_allocObject();
  v93 = a2;
  v30 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v31 = type metadata accessor for Replica(0);
  v32 = *(v31 - 8);
  v108 = v6;
  v33 = *(v32 + 56);
  v33(v29 + v30, 1, 1, v31);
  (*(v19 + 32))(v29 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v25, v18);
  *(v29 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v29 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v33(v17, 1, 1, v31);
  swift_beginAccess();
  v34 = v29 + v30;
  v35 = v93;
  sub_1ADDD85E4(v17, v34);
  swift_endAccess();
  v36 = v110[3];
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = v110[3];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  if (v36)
  {
    v39 = v110[4];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v36, v110[4]);

  v40 = v108;
  sub_1ADDD6748(v38, v39, v35, v113);
  if (!v40)
  {
    v88 = v113[0];
    v87 = v113[1];
    v42 = v110;
    v114 = v110[1];
    v43 = v114;

    sub_1ADFAECE8(v42);
    v44 = *(v43 + 16);
    v45 = v109;
    if (v44)
    {
      v86 = v29;
      v112[0] = v37;
      sub_1ADE6F11C(0, v44, 0);
      v106 = 0;
      v46 = 0;
      v47 = *(v43 + 16);
      v102 = v112[0];
      if (v47 >= v44)
      {
        v47 = v44;
      }

      v92 = v47;
      v29 = (v43 + 64);
      v91 = v43;
      v90 = v44;
      while (v92 != v46)
      {
        if (v46 >= *(v43 + 16))
        {
          goto LABEL_45;
        }

        v48 = *(v29 - 4);
        v50 = *(v29 - 2);
        v49 = *(v29 - 1);
        v107 = *(v29 - 3);
        v108 = v49;
        v110 = *v29;
        v96 = v46;
        if (v48)
        {
          inited = v48;
          v52 = v48;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
          v52 = 0;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v101 = v52;
        swift_retain_n();
        v53 = v108;
        sub_1ADE42C78(v50, v108);

        sub_1ADE0262C(inited, v45);

        AnyCRValue.init(from:)(v54, v111);
        if (v50)
        {
          v55 = v50;
        }

        else
        {
          v55 = v37;
        }

        if (v50)
        {
          v56 = v53;
        }

        else
        {
          v56 = v37;
        }

        v95 = v50;
        sub_1ADE42C78(v50, v53);

        sub_1ADDF4A24(v55, v56, v45);
        v58 = v57;
        v59 = v111[0];
        v60 = v99;
        swift_beginAccess();
        v61 = *(v60 + 200);
        v62 = v96;
        if (v96 >= *(v61 + 16))
        {
          goto LABEL_46;
        }

        v63 = v61 + v106;
        v64 = *(v63 + 32);
        v65 = *(v63 + 40);

        v66 = v100;
        sub_1ADE017C0(v64, v65, v45, v100);
        v67 = v103;
        *v103 = v59;
        sub_1AE017B14(v66, v67 + *(v98 + 44));
        sub_1ADDCEE40(v67, v104, &qword_1EB5BA270, &unk_1AE253920);
        v68 = v105;
        v69 = *v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v68 = v69;
        v94 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = sub_1ADE55474(0, v69[2] + 1, 1, v69);
          *v105 = v69;
        }

        v72 = v69[2];
        v71 = v69[3];
        if (v72 >= v71 >> 1)
        {
          v80 = sub_1ADE55474((v71 > 1), v72 + 1, 1, v69);
          *v105 = v80;
        }

        sub_1ADDCEDE0(v103, &qword_1EB5BA270, &unk_1AE253920);
        v73 = v104;
        v74 = *v105;
        *(v74 + 16) = v72 + 1;
        sub_1ADDD2198(v73, v74 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, &qword_1EB5BA270, &unk_1AE253920);

        sub_1ADE42CB8(v95, v108);

        v75 = v102;
        v112[0] = v102;
        v77 = v102[2];
        v76 = v102[3];
        if (v77 >= v76 >> 1)
        {
          sub_1ADE6F11C((v76 > 1), v77 + 1, 1);
          v75 = v112[0];
        }

        v46 = v62 + 1;
        v75[2] = v77 + 1;
        v102 = v75;
        v78 = &v75[2 * v77];
        v79 = v94;
        v78[4] = v59;
        v78[5] = v79;
        v106 += 16;
        v29 += 5;
        v45 = v109;
        v37 = MEMORY[0x1E69E7CC0];
        v43 = v91;
        if (v90 == v46)
        {
          sub_1ADDCEDE0(&v114, qword_1EB5BBB90, &unk_1AE24EC40);
          v29 = v86;
          v81 = v102;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      sub_1ADDCEDE0(&v114, qword_1EB5BBB90, &unk_1AE24EC40);
      v81 = MEMORY[0x1E69E7CC0];
LABEL_39:
      v37 = MEMORY[0x1E69E7CC8];
      if (v81[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
        v82 = sub_1AE23DCDC();
      }

      else
      {
        v82 = MEMORY[0x1E69E7CC8];
      }

      v112[0] = v82;
      sub_1AE17F328(v81, 1, v112);

      v45 = v112[0];
      if (qword_1ED96B308 == -1)
      {
        goto LABEL_43;
      }
    }

    swift_once();
LABEL_43:
    sub_1AE23D6AC();
    v83 = v112[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA30, &qword_1AE253930);
    v84 = swift_allocObject();
    v84[3] = v37;
    v84[4] = v37;
    v84[5] = v37;
    v84[6] = 0;
    v84[2] = v29;
    swift_beginAccess();
    v84[3] = v88;
    v84[4] = v87;

    swift_beginAccess();
    v84[5] = v45;
    v84[6] = v83;

    *v89 = v84;
    goto LABEL_13;
  }

  sub_1ADFAECE8(v110);
LABEL_12:

LABEL_13:
}

uint64_t sub_1AE17EF48@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *)@<X1>, void *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 3);
  v13[0] = *(a1 + 1);
  v13[1] = v10;
  v14 = a1[5];
  result = a2(a5, v9, v13);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v12 = result;
    result = swift_getTupleTypeMetadata2();
    *(a5 + *(result + 48)) = v12;
  }

  return result;
}

double sub_1AE17EFF0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

__n128 sub_1AE17F010@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t a4@<X8>)
{
  v8 = sub_1AE16CC2C(*(a1 + 16));
  sub_1AE17F5B8(v8, a1, a2, v11);

  if (!v4)
  {
    v10 = v11[3];
    *(a4 + 32) = v11[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v11[4];
    result = v11[1];
    *a4 = v11[0];
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t CRSet<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v6 = *(a2 + 16);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v24[6] = v12;
  CRSet.makeIterator()(&v23);
  v21 = type metadata accessor for CRSet.Iterator(0, v6, *(v21 + 24), *(v21 + 32));
  CRSet.Iterator.next()(v21, v11);
  v13 = v18;
  v19 = *(v18 + 48);
  v20 = v18 + 48;
  if (v19(v11, 1, v6) != 1)
  {
    v15 = *(v13 + 32);
    v14 = v13 + 32;
    v18 = v15;
    do
    {
      (v18)(v8, v11, v6);
      __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
      sub_1AE23DE6C();
      (*(v14 - 24))(v8, v6);
      if (v4)
      {
        break;
      }

      CRSet.Iterator.next()(v21, v11);
    }

    while (v19(v11, 1, v6) != 1);
  }

  sub_1ADDDCE74(v23);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1AE17F328(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];

  if (!v8)
  {
    return;
  }

  v9 = *a3;
  v10 = sub_1ADF4A434(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_1ADF6A1CC(v15, v5 & 1);
    v10 = sub_1ADF4A434(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1ADF6FB38();
  v10 = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
LABEL_12:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + 8 * v10) = v8;
    *(v18[7] + 8 * v10) = v7;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v18[2] = v23;
      v16 = v3 - 1;
      if (v3 == 1)
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return;
  }

LABEL_9:
  v19 = *(v18[7] + 8 * v10);
  v20 = v10;

  *(v18[7] + 8 * v20) = v19;

  v16 = v3 - 1;
  if (v3 == 1)
  {
    return;
  }

LABEL_15:
  v5 = v6 + 7;
  do
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    if (!v7)
    {
      break;
    }

    v26 = *a3;
    v27 = sub_1ADF4A434(v7);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v14 = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (v14)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v26[3] < v31)
    {
      sub_1ADF6A1CC(v31, 1);
      v27 = sub_1ADF4A434(v7);
      if ((v8 & 1) != (v32 & 1))
      {
        goto LABEL_6;
      }
    }

    v3 = *a3;
    if (v8)
    {
      v24 = *(v3[7] + 8 * v27);
      v25 = v27;

      *(v3[7] + 8 * v25) = v24;
    }

    else
    {
      v3[(v27 >> 6) + 8] |= 1 << v27;
      *(v3[6] + 8 * v27) = v7;
      *(v3[7] + 8 * v27) = v6;
      v33 = v3[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      v3[2] = v34;
    }

    v5 += 2;
    --v16;
  }

  while (v16);
}

__n128 sub_1AE17F5B8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v11 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  v12 = sub_1ADDF66A8(v9);
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v13 = a1[4];
  v35 = a1[3];
  v36 = v13;

  sub_1ADDF5C7C(a2);
  v15 = v14;
  v17 = v16;

  sub_1ADE42CB8(0, 0);
  swift_beginAccess();

  v19 = v47;
  v20 = (v28)(v18);
  if (v19)
  {

    v35 = v12;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v15;
    v40 = 0;
    v41 = 0;
    v39 = v17;
    v42 = 1;
    *v43 = v46[0];
    *&v43[3] = *(v46 + 3);
    v44 = 0;
    v45 = 0;
    sub_1ADFAECE8(&v35);
  }

  else
  {
    v22 = v20;
    v23 = MEMORY[0x1E69E7CC0];

    *&v30 = v12;
    *(&v30 + 1) = v22;
    v31.n128_u64[0] = v23;
    v31.n128_u64[1] = v15;
    *&v33 = 0;
    v32 = v17;
    BYTE8(v33) = 1;
    *(&v33 + 9) = v46[0];
    HIDWORD(v33) = *(v46 + 3);
    v34 = 0uLL;
    v35 = v12;
    v36 = v22;
    v37 = v23;
    v38 = v15;
    v40 = 0;
    v41 = 0;
    v39 = v17;
    v42 = 1;
    *v43 = v46[0];
    *&v43[3] = *(v46 + 3);
    v44 = 0;
    v45 = 0;
    sub_1ADFAEE10(&v30, &v29);
    sub_1ADFAECE8(&v35);
    v24 = v33;
    v25 = v27;
    *(v27 + 32) = v32;
    *(v25 + 48) = v24;
    *(v25 + 64) = v34;
    result = v31;
    *v25 = v30;
    *(v25 + 16) = result;
  }

  return result;
}

double sub_1AE17F93C@<D0>(void *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1ADE6B938(a2);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a3 = v6;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
  }

  return result;
}

uint64_t sub_1AE17F9B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  if ((sub_1ADF7974C(a2) & 1) == 0)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;

  sub_1ADF777D8(&v6);
  return a2;
}

uint64_t sub_1AE17FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE17FAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE17FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FD58(uint64_t *a1, int a2)
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

uint64_t sub_1AE17FDA0(uint64_t result, int a2, int a3)
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

uint64_t sub_1AE17FE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FE40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE17FE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1AE17FEE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1AE180144(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AE180290(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a3;
  v34 = a1;
  v6 = a3[2];
  v5 = a3[3];
  v39 = a3[4];
  v40 = v5;
  v7 = type metadata accessor for TreeNode(255, v6, v5, v39);
  v8 = sub_1AE23D7CC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - v9;
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v37 = *v3;
  v43 = *(v3 + 1);
  v35 = v3[3];
  v16 = *(v6 - 8);
  v17 = *(v16 + 48);
  v18 = 1;
  if (v17(a2, 1, v6) == 1)
  {
    return v18 & 1;
  }

  v19 = *(v11 + 16);
  v32 = a2;
  v31 = v10;
  v29 = v19;
  v19(v15, a2, v10);
  v30 = v17;
  result = (v17)(v15, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = v37;
    v49 = v37;
    v50 = v43;
    WitnessTable = swift_getWitnessTable();
    v44 = v6;
    *&v45 = v7;
    *(&v45 + 1) = v40;
    v46 = v39;
    v47 = &off_1F23C93F8;
    v48 = WitnessTable;
    v23 = type metadata accessor for CROrderedDictionary(0, &v44);
    v24 = v38;
    CROrderedDictionary.subscript.getter(v15, v23);
    v25 = (*(*(v7 - 8) + 48))(v24, 1, v7);
    (*(v41 + 8))(v24, v42);
    v26 = *(v16 + 8);
    v26(v15, v6);
    if (v25 == 1)
    {
      v18 = 0;
      return v18 & 1;
    }

    v44 = v21;
    v45 = v43;
    v27 = v36;
    v46 = v35;
    v29(v36, v32, v31);
    result = v30(v27, 1, v6);
    if (result != 1)
    {
      v28 = sub_1AE1857FC(v27, v34, v33);
      v26(v27, v6);
      v18 = !v28;
      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE18065C(void (*a1)(void, void), void *a2)
{
  v60 = a1;
  v4 = a2[2];
  v5 = sub_1AE23D7CC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v48 - v6;
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v10 = a2[4];
  v58 = a2;
  v11 = type metadata accessor for TreeNode(255, v4, v9, v10);
  v54 = sub_1AE23D7CC();
  v12 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v48 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = *v2;
  v25 = v2[1];
  v59 = v2;
  v67 = v24;
  v68 = v25;
  WitnessTable = swift_getWitnessTable();
  v61 = v4;
  v62 = v11;
  v63 = v9;
  v64 = v10;
  v55 = v10;
  v65 = &off_1F23C93F8;
  v66 = WitnessTable;
  v27 = type metadata accessor for CROrderedDictionary(0, &v61);
  CROrderedDictionary.subscript.getter(v60, v27);
  if ((*(v15 + 48))(v14, 1, v11) == 1)
  {
    return (*(v12 + 8))(v14, v54);
  }

  (*(v15 + 32))(v23, v14, v11);
  (*(v15 + 16))(v20, v23, v11);
  v29 = sub_1AE23D11C();
  swift_getWitnessTable();
  sub_1AE23CB1C();
  v30 = sub_1AE23CB6C();
  v32 = *v31;
  v49 = v23;
  if (v32)
  {
    v33 = v60;
    sub_1ADE5726C(v60, v29, *(v55 + 8));
    v30(&v61, 0);
  }

  else
  {
    v30(&v61, 0);
    v33 = v60;
  }

  v34 = *(v15 + 8);
  v55 = v15 + 8;
  v60 = v34;
  v34(v20, v11);
  v35 = v4;
  v36 = sub_1AE23D38C();
  v37 = v59;
  sub_1ADFB1024(v33, v36);
  v38 = v37[1];
  v39 = v37[2];
  v40 = v37[3];
  v61 = *v37;
  v62 = v38;
  v63 = v39;
  v64 = v40;

  v41 = v56;
  v42 = v58;
  sub_1AE185AAC(v58, v56);
  v43 = v41;

  v44 = v57;
  if ((*(v57 + 48))(v41, 1, v35) == 1)
  {
    v60(v49, v11);
    return (*(v52 + 8))(v41, v53);
  }

  else
  {
    v45 = v51;
    (*(v44 + 32))(v51, v43, v35);
    v46 = v50;
    (*(v44 + 56))(v50, 1, 1, v35);
    sub_1ADE57398(v45, v46, v42);
    v47 = v60;
    v60(v46, v11);
    (*(v44 + 8))(v45, v35);
    return v47(v49, v11);
  }
}

void sub_1AE180C48(uint64_t a1, void *a2)
{
  v82 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v65 = a2;
  v5 = a2[4];
  v81 = v3;
  v6 = type metadata accessor for TreeNode(0, v4, v3, v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v69 = v62 - v8;
  v95 = v9;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = v62 - v12;
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v86 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v4;
  v64 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v64);
  v23 = v62 - v22;
  v90 = v2;
  v24 = v2[3];
  v89 = v5;
  if ((v24 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    sub_1AE23D36C();
    v24 = v99[8];
    v25 = v99[9];
    v26 = v99[10];
    v83 = v99[11];
    v27 = v99[12];
  }

  else
  {
    v28 = -1 << *(v24 + 32);
    v29 = ~v28;
    v30 = -v28;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(v24 + 56);

    v26 = v29;
    v25 = v24 + 56;
    v83 = 0;
  }

  v68 = 0;
  v93 = (v70 + 56);
  v62[1] = v26;
  v32 = (v26 + 64) >> 6;
  v33 = (v70 + 16);
  v77 = (v70 + 32);
  v76 = (v7 + 56);
  v75 = (v91 + 16);
  v74 = (v7 + 48);
  v63 = (v7 + 32);
  v71 = (v7 + 8);
  v88 = (v91 + 8);
  v66 = (v11 + 8);
  v73 = (v70 + 8);
  v91 = v19;
  v34 = v86;
  v84 = v24;
  v85 = v25;
  v79 = v32;
  v80 = v23;
  v78 = (v70 + 16);
  v72 = v10;
  while (v24 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      v24 = v84;
LABEL_28:
      (*v93)(v23, 1, 1, v97);
      sub_1ADDDCE74(v24);
      if (v68)
      {
        sub_1ADE145CC(0, v65);
      }

      return;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_22:
    v39 = *v93;
    v40 = v97;
    (*v93)(v23, 0, 1, v97);
    (*v77)(v34, v23, v40);
    v41 = v90[1];
    v99[6] = *v90;
    v99[7] = v41;
    v42 = v95;
    WitnessTable = swift_getWitnessTable();
    v99[0] = v40;
    v99[1] = v42;
    v99[2] = v81;
    v99[3] = v89;
    v99[4] = &off_1F23C93F8;
    v99[5] = WitnessTable;
    v44 = type metadata accessor for CROrderedDictionary(0, v99);
    CROrderedDictionary.subscript.getter(v34, v44);
    v45 = v19;
    v46 = v94;
    (*v33)(v94, v82, v40);
    v87 = v39;
    v39(v46, 0, 1, v40);
    (*v76)(v46, 0, 1, v42);
    v47 = *(TupleTypeMetadata2 + 48);
    v48 = *v75;
    v49 = v96;
    v50 = v72;
    (*v75)(v96, v45, v72);
    v48(&v49[v47], v46, v50);
    v51 = *v74;
    if ((*v74)(v49, 1, v42) == 1)
    {
      v52 = *v88;
      (*v88)(v94, v50);
      v52(v45, v50);
      v53 = v51(&v96[v47], 1, v95);
      v33 = v78;
      if (v53 != 1)
      {
        goto LABEL_9;
      }

      v52(v96, v50);
      v34 = v86;
      v32 = v79;
LABEL_27:
      v68 = 1;
      v61 = v69;
      v87(v69, 1, 1, v97);
      sub_1ADE57398(v34, v61, v65);
      (*v71)(v61, v95);
      goto LABEL_10;
    }

    v54 = v95;
    v55 = v96;
    v56 = v67;
    v48(v67, v96, v50);
    if (v51(&v55[v47], 1, v54) == 1)
    {
      v35 = *v88;
      (*v88)(v94, v50);
      v35(v91, v50);
      (*v71)(v56, v54);
      v33 = v78;
LABEL_9:
      (*v66)(v96, TupleTypeMetadata2);
      v34 = v86;
      v32 = v79;
      goto LABEL_10;
    }

    v57 = v69;
    (*v63)(v69, &v55[v47], v54);
    swift_getWitnessTable();
    v98 = *(v89 + 8);
    swift_getWitnessTable();
    v58 = sub_1AE23E0AC();
    v59 = *v71;
    (*v71)(v57, v54);
    v60 = *v88;
    (*v88)(v94, v50);
    v60(v91, v50);
    v59(v56, v54);
    v60(v55, v50);
    v34 = v86;
    v32 = v79;
    v33 = v78;
    if (v58)
    {
      goto LABEL_27;
    }

LABEL_10:
    (*v73)(v34, v97);
    v19 = v91;
    v23 = v80;
    v24 = v84;
    v25 = v85;
  }

  if (v27)
  {
    v36 = v83;
LABEL_21:
    v38 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    (*(v70 + 16))(v23, *(v24 + 48) + *(v70 + 72) * (v38 | (v36 << 6)), v97);
    goto LABEL_22;
  }

  v37 = v83;
  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
      goto LABEL_28;
    }

    v27 = *(v25 + 8 * v36);
    ++v37;
    if (v27)
    {
      v83 = v36;
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t CROrderedTree.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v15[2] = v6;
  v15[3] = v5;
  v15[0] = v3;
  v15[1] = v4;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = type metadata accessor for TreeNode(255, v7, v8, v9);

  v14[0] = v7;
  v14[1] = v10;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = &off_1F23C93F8;
  v14[5] = swift_getWitnessTable();
  v11 = type metadata accessor for CROrderedDictionary(0, v14);
  v12 = CROrderedDictionary.newRefs(from:)(v15, v11);

  return v12;
}

void CROrderedTree.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *v3;
  v7 = v3[1];
  v16[2] = v8;
  v16[3] = v7;
  v16[0] = v5;
  v16[1] = v6;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = type metadata accessor for TreeNode(255, v9, v10, v11);

  v15[0] = v9;
  v15[1] = v12;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = &off_1F23C93F8;
  v15[5] = swift_getWitnessTable();
  v13 = type metadata accessor for CROrderedDictionary(0, v15);
  CROrderedDictionary.actionUndoingDifference(from:)(v16, v13, &v17);

  if (v17 == 1)
  {
    v14 = 0uLL;
  }

  else
  {
    v14 = v18;
  }

  *a3 = v17;
  *(a3 + 8) = v14;
}

void CROrderedTree.apply(_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v13 = *a1;
    v14 = v4;
    v15 = v3;
    sub_1ADF5C694(v2, v4, v3);
    sub_1ADE42C78(v2, v4);
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = type metadata accessor for TreeNode(255, v6, v7, v8);
    v10 = v3;
    v12[0] = v6;
    v12[1] = v9;
    v12[2] = v7;
    v12[3] = v8;
    v12[4] = &off_1F23C93F8;
    v12[5] = swift_getWitnessTable();
    v11 = type metadata accessor for CROrderedDictionary(0, v12);
    CROrderedDictionary.apply(_:)(&v13, v11);
    sub_1ADE24060(v13, v14, v15);
    sub_1ADE145CC(1, a2);
    sub_1ADE24060(v2, v4, v3);
  }
}

uint64_t CROrderedTree.hasDelta(from:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v14[2] = v6;
  v14[3] = v5;
  v14[0] = v3;
  v14[1] = v4;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = type metadata accessor for TreeNode(255, v7, v8, v9);

  v13[0] = v7;
  v13[1] = v10;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v11 = type metadata accessor for CROrderedDictionary(0, v13);
  LOBYTE(v3) = CROrderedDictionary.hasDelta(from:)(v14, v11);

  return v3 & 1;
}

void CROrderedTree.delta(_:from:)(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v3[1];
  v13[8] = *v3;
  v13[9] = v7;
  v13[6] = v6;
  v13[7] = v5;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v13[0] = v8;
  v13[1] = type metadata accessor for TreeNode(255, v8, v9, v10);
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary(0, v13);
  CROrderedDictionary.delta(_:from:)(&v14);

  v11 = v15;
  if (v15)
  {
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12;
  a3[1] = v11;
}

uint64_t CROrderedTree.merge(delta:)(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for TreeNode(255, v3, v4, v5);

  v10[0] = v3;
  v10[1] = v6;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = &off_1F23C93F8;
  v10[5] = swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary(0, v10);
  v8 = CROrderedDictionary.merge(delta:)(v11, v7);

  return v8 & 1;
}

uint64_t CROrderedTree.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v20 = v7;
  v21 = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = type metadata accessor for TreeNode(255, v8, v9, v10);

  v14 = v8;
  v15 = v11;
  v16 = v9;
  v17 = v10;
  v18 = &off_1F23C93F8;
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for CROrderedDictionary(0, &v14);
  CROrderedDictionary.copy(renamingReferences:)(a1, v12, &v14);

  v20 = v14;
  v21 = v15;
  return sub_1ADE141D4(&v20, v8, v9, v10, a3);
}

uint64_t CROrderedTree.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v6 = a1;

  CROrderedTree.copy(renamingReferences:)(&v6, a2, a3);
}

Swift::Bool __swiftcall CROrderedTree.needToFinalizeTimestamps()()
{
  v2 = *v1;
  v3 = v1[1];
  v9[6] = v2;
  v9[7] = v3;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);

  v9[0] = v4;
  v9[1] = v7;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = &off_1F23C93F8;
  v9[5] = swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary(0, v9);
  LOBYTE(v2) = CROrderedDictionary.needToFinalizeTimestamps()();

  return v2 & 1;
}

void CROrderedTree.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7[0] = v3;
  v7[1] = type metadata accessor for TreeNode(255, v3, v4, v5);
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = &off_1F23C93F8;
  v7[5] = swift_getWitnessTable();
  v6 = type metadata accessor for CROrderedDictionary(0, v7);
  CROrderedDictionary.finalizeTimestamps(_:)(a1, v6);
}

uint64_t CROrderedTree.merge(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v13[0] = v6;
  v13[1] = v9;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary(0, v13);
  CROrderedDictionary.merge(_:)(v14, v10, v13);

  v11 = v13[0];
  LOBYTE(v5) = BYTE2(v13[0]);
  result = sub_1ADE145CC(1, a2);
  *a3 = v11;
  *(a3 + 2) = v5;
  return result;
}

uint64_t CROrderedTree.merge(_:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2;
  return CROrderedTree.merge(_:)(&v4, a2, v7);
}

double CROrderedTree.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v13[6] = v5;
  v13[7] = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v13[0] = v6;
  v13[1] = v9;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary(0, v13);
  CROrderedDictionary.encode(to:)(a1, v10, v11);

  return result;
}

void CROrderedTree.minEncodingVersion.getter(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = v2[1];
  v7[6] = *v2;
  v7[7] = v4;
  v5 = a1[3];
  v6 = a1[4];
  v7[0] = a1[2];
  v7[1] = type metadata accessor for TreeNode(255, v7[0], v5, v6);
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = &off_1F23C93F8;
  v7[5] = swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary(0, v7);
  CROrderedDictionary.minEncodingVersion.getter(a2);
}

double CROrderedTree.init(defaultState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CROrderedTree.init()(a1, a2, a3, &v7);
  v5 = v9;
  *a4 = v7;
  result = *&v8;
  *(a4 + 8) = v8;
  *(a4 + 24) = v5;
  return result;
}

uint64_t sub_1AE1823DC(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a3;
  v34 = a1;
  v6 = a3[2];
  v5 = a3[3];
  v38 = a3[4];
  v39 = v5;
  v7 = type metadata accessor for TreeNode(255, v6, v5, v38);
  v8 = sub_1AE23D7CC();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v28 - v9;
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v42 = *v3;
  v35 = *(v3 + 2);
  v16 = *(v6 - 8);
  v17 = *(v16 + 48);
  v18 = 1;
  if (v17(a2, 1, v6) == 1)
  {
    return v18 & 1;
  }

  v19 = *(v11 + 16);
  v31 = v10;
  v32 = a2;
  v29 = v19;
  v19(v15, a2, v10);
  v30 = v17;
  result = (v17)(v15, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = v42;
    WitnessTable = swift_getWitnessTable();
    *&v43 = v6;
    *(&v43 + 1) = v7;
    v44 = v39;
    v45 = v38;
    v46 = &off_1F23C93F8;
    v47 = WitnessTable;
    type metadata accessor for CRDictionary(0, &v43);
    v22 = v37;
    CRDictionary.subscript.getter(v23, v37);
    v24 = (*(*(v7 - 8) + 48))(v22, 1, v7);
    (*(v40 + 8))(v22, v41);
    v25 = *(v16 + 8);
    v25(v15, v6);
    if (v24 == 1)
    {
      v18 = 0;
      return v18 & 1;
    }

    v43 = v42;
    v26 = v36;
    v44 = v35;
    v29(v36, v32, v31);
    result = v30(v26, 1, v6);
    if (result != 1)
    {
      v27 = sub_1AE18B234(v26, v34, v33);
      v25(v26, v6);
      v18 = !v27;
      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE182774(void (*a1)(void, void), void *a2)
{
  v51 = a1;
  v3 = a2[2];
  v4 = sub_1AE23D7CC();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v5;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v9 = a2[4];
  v47 = a2;
  v10 = type metadata accessor for TreeNode(255, v3, v8, v9);
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  WitnessTable = swift_getWitnessTable();
  v52 = v3;
  v53 = v10;
  v54 = v8;
  v55 = v9;
  v56 = &off_1F23C93F8;
  v57 = WitnessTable;
  type metadata accessor for CRDictionary(0, &v52);
  CRDictionary.subscript.getter(v25, v14);
  if ((*(v15 + 48))(v14, 1, v10) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v15 + 32))(v23, v14, v10);
  v27 = *(v15 + 16);
  v42 = v23;
  v27(v20, v23, v10);
  v28 = sub_1AE23D38C();
  swift_getWitnessTable();
  sub_1AE23CB1C();
  v29 = v50;
  v30 = sub_1AE23CB6C();
  v32 = v3;
  if (*v31)
  {
    v33 = v51;
    sub_1ADFB1024(v51, v28);
    v30(&v52, 0);
  }

  else
  {
    v30(&v52, 0);
    v33 = v51;
  }

  v51 = *(v15 + 8);
  v51(v20, v10);
  sub_1ADFB1024(v33, v28);
  v34 = v29[1];
  v35 = v29[2];
  v52 = *v29;
  v53 = v34;
  v54 = v35;

  v36 = v48;
  v37 = v47;
  sub_1AE18B4D8(v47, v48);

  v38 = v49;
  if ((*(v49 + 48))(v36, 1, v32) == 1)
  {
    v51(v42, v10);
    return (*(v45 + 8))(v36, v46);
  }

  else
  {
    v39 = v44;
    (*(v38 + 32))(v44, v36, v32);
    v40 = v43;
    (*(v38 + 56))(v43, 1, 1, v32);
    sub_1ADFB12F0(v39, v40, v37);
    v41 = v51;
    v51(v40, v10);
    (*(v38 + 8))(v39, v32);
    return v41(v42, v10);
  }
}

void sub_1AE182D10(uint64_t a1, void *a2)
{
  v85 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v69 = a2;
  v5 = a2[4];
  v84 = v3;
  v6 = type metadata accessor for TreeNode(0, v4, v3, v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v72 = v65 - v8;
  v99 = v9;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = v65 - v12;
  v13 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v95 = v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v98 = v65 - v20;
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v4;
  v67 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v67);
  v89 = v65 - v24;
  v94 = v2;
  v25 = *(v2 + 16);
  v92 = v5;
  if ((v25 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    sub_1AE23D36C();
    v25 = v102[6];
    v26 = v102[7];
    v27 = v102[8];
    v86 = v102[9];
    v28 = v102[10];
  }

  else
  {
    v29 = -1 << *(v25 + 32);
    v30 = v13;
    v31 = ~v29;
    v32 = -v29;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v28 = v33 & *(v25 + 56);

    v27 = v31;
    v13 = v30;
    v26 = v25 + 56;
    v86 = 0;
  }

  v71 = 0;
  v97 = (v73 + 56);
  v65[1] = v27;
  v34 = (v27 + 64) >> 6;
  v35 = (v73 + 16);
  v80 = (v73 + 32);
  v79 = (v7 + 56);
  v78 = (v13 + 16);
  v77 = (v7 + 48);
  v66 = (v7 + 32);
  v75 = (v7 + 8);
  v91 = (v13 + 8);
  v70 = (v11 + 8);
  v76 = (v73 + 8);
  v74 = v16;
  v36 = v90;
  v37 = v98;
  v87 = v25;
  v88 = v26;
  v81 = v34;
  v93 = (v73 + 16);
  v83 = v23;
  v82 = v10;
  while (1)
  {
    v39 = v89;
    if ((v25 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1AE23D9AC())
    {
      v25 = v87;
LABEL_28:
      (*v97)(v39, 1, 1, v100);
      sub_1ADDDCE74(v25);
      if (v71)
      {
        sub_1AE189934(0, v69);
      }

      return;
    }

    v40 = v23;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v42 = v93;
LABEL_22:
    v45 = *v97;
    v46 = v100;
    (*v97)(v39, 0, 1, v100);
    (*v80)(v40, v39, v46);
    v47 = v99;
    WitnessTable = swift_getWitnessTable();
    v102[0] = v46;
    v102[1] = v47;
    v102[2] = v84;
    v102[3] = v92;
    v102[4] = &off_1F23C93F8;
    v102[5] = WitnessTable;
    type metadata accessor for CRDictionary(0, v102);
    CRDictionary.subscript.getter(v49, v37);
    v50 = v95;
    (*v42)(v95, v85, v46);
    v90 = v45;
    (v45)(v50, 0, 1, v46);
    v51 = v50;
    (*v79)(v50, 0, 1, v47);
    v52 = *(TupleTypeMetadata2 + 48);
    v53 = *v78;
    v54 = v82;
    (*v78)(v36, v37, v82);
    v53(&v36[v52], v51, v54);
    v55 = *v77;
    if ((*v77)(v36, 1, v47) == 1)
    {
      v56 = *v91;
      (*v91)(v51, v54);
      v56(v37, v54);
      v57 = v55(&v36[v52], 1, v99);
      v34 = v81;
      if (v57 != 1)
      {
        goto LABEL_9;
      }

      v56(v36, v54);
      v23 = v83;
LABEL_27:
      v71 = 1;
      v64 = v72;
      (v90)(v72, 1, 1, v100);
      sub_1ADFB12F0(v23, v64, v69);
      (*v75)(v64, v99);
      goto LABEL_10;
    }

    v58 = v99;
    v59 = v74;
    v53(v74, v36, v54);
    v60 = v55(&v36[v52], 1, v58);
    v34 = v81;
    if (v60 == 1)
    {
      v38 = *v91;
      (*v91)(v95, v54);
      v38(v98, v54);
      (*v75)(v59, v58);
LABEL_9:
      (*v70)(v36, TupleTypeMetadata2);
      v23 = v83;
      goto LABEL_10;
    }

    v61 = v72;
    (*v66)(v72, &v36[v52], v58);
    swift_getWitnessTable();
    v101 = *(v92 + 8);
    swift_getWitnessTable();
    v68 = sub_1AE23E0AC();
    v62 = *v75;
    (*v75)(v61, v58);
    v63 = *v91;
    (*v91)(v95, v54);
    v63(v98, v54);
    v62(v74, v58);
    v63(v36, v54);
    v23 = v83;
    if (v68)
    {
      goto LABEL_27;
    }

LABEL_10:
    (*v76)(v23, v100);
    v37 = v98;
    v25 = v87;
    v26 = v88;
    v35 = v93;
  }

  if (v28)
  {
    v40 = v23;
    v41 = v86;
LABEL_21:
    v44 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v42 = v35;
    (*(v73 + 16))(v89, *(v25 + 48) + *(v73 + 72) * (v44 | (v41 << 6)), v100);
    goto LABEL_22;
  }

  v43 = v86;
  while (1)
  {
    v41 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v41 >= v34)
    {
      goto LABEL_28;
    }

    v28 = *(v26 + 8 * v41);
    ++v43;
    if (v28)
    {
      v40 = v23;
      v86 = v41;
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t CRUnorderedTree.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);

  v11[0] = v4;
  v11[1] = v7;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = &off_1F23C93F8;
  v11[5] = swift_getWitnessTable();
  v8 = type metadata accessor for CRDictionary(0, v11);
  v9 = CRDictionary.newRefs(from:)(v12, v8);

  return v9;
}

void CRUnorderedTree.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.actionUndoingDifference(from:)(v13, v10, v14);

  if (v14[0])
  {
    v11 = v14[1];
  }

  else
  {
    v11 = 0;
  }

  *a3 = v14[0];
  a3[1] = v11;
}

uint64_t *CRUnorderedTree.apply(_:)(uint64_t *result, void *a2)
{
  if (*result)
  {
    v2 = result[1];
    v10 = *result;
    v11 = v2;
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    v7 = type metadata accessor for TreeNode(255, v3, v4, v5);

    v9[0] = v3;
    v9[1] = v7;
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = &off_1F23C93F8;
    v9[5] = swift_getWitnessTable();
    v8 = type metadata accessor for CRDictionary(0, v9);
    CRDictionary.apply(_:)(&v10, v8);
    sub_1ADE42CB8(v10, v11);
    return sub_1AE189934(1, a2);
  }

  return result;
}

uint64_t CRUnorderedTree.hasDelta(from:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  v11[0] = *a1;
  v11[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);

  v10[0] = v4;
  v10[1] = v7;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = &off_1F23C93F8;
  v10[5] = swift_getWitnessTable();
  type metadata accessor for CRDictionary(0, v10);
  v8 = CRDictionary.hasDelta(from:)(v11);

  return v8 & 1;
}

uint64_t CRUnorderedTree.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v36 = a4;
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = type metadata accessor for TreeNode(255, v5, v6, v7);
  WitnessTable = swift_getWitnessTable();
  v38 = v5;
  v39 = v8;
  v40 = v6;
  v41 = v7;
  v42 = &off_1F23C93F8;
  v43 = WitnessTable;
  v10 = type metadata accessor for CRDictionary.MergeableDelta(255, &v38);
  v11 = sub_1AE23D7CC();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = *a2;
  v21 = *v35;
  v37[0] = v20;
  v37[1] = v21;

  v35 = v5;
  v38 = v5;
  v39 = v8;
  v40 = v6;
  v41 = v7;
  v42 = &off_1F23C93F8;
  v43 = WitnessTable;
  v22 = type metadata accessor for CRDictionary(0, &v38);
  CRDictionary.delta(_:from:)(v34, v37, v22, v13);

  if ((*(v14 + 48))(v13, 1, v10) == 1)
  {
    (*(v32 + 8))(v13, v33);
    v23 = 1;
    v24 = v35;
    v25 = v36;
  }

  else
  {
    v26 = *(v14 + 32);
    v26(v19, v13, v10);
    v27 = v31;
    v26(v31, v19, v10);
    v28 = v35;
    v25 = v36;
    sub_1AE18ECF0(v27, v35, v6, v7, v36);
    v23 = 0;
    v24 = v28;
  }

  v29 = type metadata accessor for CRUnorderedTree.MergeableDelta(0, v24, v6, v7);
  return (*(*(v29 - 8) + 56))(v25, v23, 1, v29);
}

uint64_t CRUnorderedTree.canMerge(delta:)(uint64_t *a1, void *a2)
{
  v9[6] = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);

  v9[0] = v4;
  v9[1] = v7;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = &off_1F23C93F8;
  v9[5] = swift_getWitnessTable();
  type metadata accessor for CRDictionary(0, v9);
  LOBYTE(a1) = CRDictionary.canMerge(delta:)(a1);

  return a1 & 1;
}

uint64_t CRUnorderedTree.merge(delta:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v8[0] = v3;
  v8[1] = type metadata accessor for TreeNode(255, v3, v4, v5);
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = &off_1F23C93F8;
  v8[5] = swift_getWitnessTable();
  v6 = type metadata accessor for CRDictionary(0, v8);
  return CRDictionary.merge(delta:)(a1, v6) & 1;
}

uint64_t CRUnorderedTree.copy(renamingReferences:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v12[6] = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.copy(renamingReferences:)(a1, v10, v12);

  return sub_1AE1897F0(v12, v6, v7, v8, a3);
}

uint64_t CRUnorderedTree.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v6 = a1;

  CRUnorderedTree.copy(renamingReferences:)(&v6, a2, a3);
}

double CRUnorderedTree.visitReferences(_:)(void *a1, void *a2)
{
  v12[6] = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);

  v12[0] = v4;
  v12[1] = v7;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v8 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.visitReferences(_:)(a1, v8, v9, v10);

  return result;
}

Swift::Bool __swiftcall CRUnorderedTree.needToFinalizeTimestamps()()
{
  v8[6] = *v1;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for TreeNode(255, v2, v3, v4);

  v8[0] = v2;
  v8[1] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = &off_1F23C93F8;
  v8[5] = swift_getWitnessTable();
  type metadata accessor for CRDictionary(0, v8);
  v6 = CRDictionary.needToFinalizeTimestamps()();

  return v6;
}

void CRUnorderedTree.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7[0] = v3;
  v7[1] = type metadata accessor for TreeNode(255, v3, v4, v5);
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = &off_1F23C93F8;
  v7[5] = swift_getWitnessTable();
  v6 = type metadata accessor for CRDictionary(0, v7);
  CRDictionary.finalizeTimestamps(_:)(a1, v6);
}

uint64_t CRUnorderedTree.merge(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *a1;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for TreeNode(255, v5, v6, v7);

  v12[0] = v5;
  v12[1] = v8;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.merge(_:)(&v13, v9, v12);

  v10 = v12[0];
  LOBYTE(v5) = BYTE2(v12[0]);
  result = sub_1AE189934(1, a2);
  *a3 = v10;
  *(a3 + 2) = v5;
  return result;
}

uint64_t CRUnorderedTree.merge(_:)(__int128 *a1, void *a2)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  return CRUnorderedTree.merge(_:)(&v4, a2, v6);
}

double CRUnorderedTree.init(from:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for TreeNode(0, a2, a3, a4);

  swift_getWitnessTable();
  CRDictionary.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, &v17);
  if (v5)
  {
  }

  else
  {
    v14 = v17;
    sub_1AE1897F0(&v14, a2, a3, a4, &v15);

    v13 = v16;
    result = *&v15;
    *a5 = v15;
    *(a5 + 16) = v13;
  }

  return result;
}

double CRUnorderedTree.encode(to:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for TreeNode(255, v3, v4, v5);

  v10[0] = v3;
  v10[1] = v6;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = &off_1F23C93F8;
  v10[5] = swift_getWitnessTable();
  v7 = type metadata accessor for CRDictionary(0, v10);
  CRDictionary.encode(to:)(a1, v7, v8);

  return result;
}

void CRUnorderedTree.minEncodingVersion.getter(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v6[6] = *v2;
  v4 = a1[3];
  v5 = a1[4];
  v6[0] = a1[2];
  v6[1] = type metadata accessor for TreeNode(255, v6[0], v4, v5);
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = &off_1F23C93F8;
  v6[5] = swift_getWitnessTable();
  type metadata accessor for CRDictionary(0, v6);
  CRDictionary.minEncodingVersion.getter(a2);
}

double CRUnorderedTree.init(defaultState:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  CRUnorderedTree.init()(a2, a3, a4, &v7);
  v5 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1AE1847AC(void (**a1)(char *, uint64_t, uint64_t), void *a2)
{
  v137 = a1;
  v4 = a2[4];
  v3 = a2[2];
  v127 = a2[3];
  v155 = v4;
  v5 = type metadata accessor for TreeNode(255, v3, v127, v4);
  v6 = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v150 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v116 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v116 - v15;
  v116 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v116 - v18;
  v123 = sub_1AE23D7CC();
  v153 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v134 = &v116 - v19;
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v116 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v116 - v28;
  v29 = swift_getTupleTypeMetadata2();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v139 = (&v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v116 - v33;
  v117 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v135 = &v116 - v36;
  swift_getTupleTypeMetadata2();
  v37 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v160 = v5;
  v157 = v6;
  v143 = WitnessTable;
  v39 = sub_1ADDEAF38(v37, v5, v6, WitnessTable);

  *(v2 + 16) = v39;
  v40 = v137;
  v41 = sub_1AE23D05C();
  v164 = v41;
  v42 = sub_1AE23D0AC();
  v151 = v2;
  v159 = v3;
  v145 = TupleTypeMetadata2;
  v140 = v8;
  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = v8;
  v44 = 0;
  v133 = *(v29 + 48);
  v154 = (v30 + 16);
  v132 = v3 - 8;
  v144 = (v20 + 32);
  v131 = *(v2 + 24);
  v130 = (v43 + 48);
  v138 = (v20 + 8);
  v129 = (v30 + 8);
  v119 = (v153 + 8);
  v118 = v20;
  v124 = (v20 + 16);
  v45 = v136;
  v125 = v29;
  v128 = v30;
  while (1)
  {
    v62 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v62 & 1) == 0)
    {
      break;
    }

    v63 = v40 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v44;
    v64 = v135;
    v153 = *(v30 + 16);
    (v153)(v135, v63, v29);
    v65 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_19;
    }

LABEL_8:
    v148 = v65;
    v66 = *(v29 + 48);
    v67 = *(v3 - 8);
    v68 = *(v67 + 32);
    v146 = (v67 + 32);
    v147 = v68;
    (v68)(v45, v64, v3);
    v69 = *v144;
    (*v144)(v45 + v66, &v64[v133], v160);
    if (sub_1AE23D37C())
    {
      (*(v67 + 56))(v156, 1, 1, v3);
    }

    else
    {
      v70 = v139;
      (v153)(v139, v45, v29);
      (v69)(v156, v70 + *(v29 + 48), v160);
      (*(v67 + 8))(v70, v3);
    }

    v163 = v164;
    v71 = sub_1AE23D11C();
    swift_getWitnessTable();
    v72 = v134;
    sub_1AE23CBEC();
    if ((*v130)(v72, 1, TupleTypeMetadata2) == 1)
    {
      v141 = v71;
      v142 = v44;
      (*v119)(v72, v123);
    }

    else
    {

      (v69)(v122, v72, v160);
      v73 = v121;
      v69();
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v161 = *(v155 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        v74 = sub_1AE23D0AC();
        v75 = v74 - 1;
        if (__OFSUB__(v74, 1))
        {
          goto LABEL_40;
        }

        sub_1AE23D04C();
        sub_1ADF86080(v75, v164, TupleTypeMetadata2);
        v76 = v136;
        sub_1ADE17700(v136, v157);
        v77 = *v138;
        v78 = v73;
        v45 = v76;
        v79 = v160;
        (*v138)(v78, v160);
        v77(v156, v79);
        (*v129)(v76, v29);
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v71);
        goto LABEL_5;
      }

      v141 = v71;
      v142 = v44;
      (*v138)(v73, v160);
    }

    v46 = v159;
    sub_1ADE0FC48(v159, v159);
    swift_allocObject();
    v47 = sub_1AE23CFFC();
    v49 = v48;
    v50 = v139;
    v51 = v136;
    v29 = v125;
    (v153)(v139, v136, v125);
    v52 = *(v29 + 48);
    (v147)(v49, v50, v46);
    sub_1ADE0FCBC(v47, v46);
    v54 = v53;
    v55 = *v138;
    v56 = v160;
    (*v138)(v50 + v52, v160);
    v57 = v145;
    v58 = *(v145 + 48);
    v59 = v126;
    v60 = v156;
    (*v124)(v126, v156, v56);
    *&v59[v58] = v54;
    sub_1AE23D0CC();
    v55(v60, v56);
    TupleTypeMetadata2 = v57;
    v45 = v51;
    (*v129)(v51, v29);
    v44 = v142;
LABEL_5:
    v40 = v137;
    v61 = sub_1AE23D0AC();
    v44 = (v44 + 1);
    v3 = v159;
    v30 = v128;
    if (v148 == v61)
    {
      goto LABEL_20;
    }
  }

  v80 = sub_1AE23DAAC();
  if (v117 != 8)
  {
    goto LABEL_41;
  }

  v163 = v80;
  v64 = v135;
  v153 = *v154;
  (v153)(v135, &v163, v29);
  swift_unknownObjectRelease();
  v65 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v41 = v164;
  v20 = v118;
LABEL_21:
  v81 = sub_1AE23D0AC();
  v82 = v140;
  if (v81)
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v144 = *(TupleTypeMetadata2 + 48);
    v156 = (v140 + 16);
    v142 = (v20 + 32);
    v137 = (v20 + 16);
    v139 = (v140 + 8);
    v138 = (v20 + 8);
    v141 = v41;
    while (1)
    {
      v153 = v84;
      v154 = v87;
      v91 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v91)
      {
        v92 = *(v82 + 16);
        v92(v152, v41 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v83, TupleTypeMetadata2);
        v93 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v113 = sub_1AE23DAAC();
        if (v116 != 8)
        {
          goto LABEL_42;
        }

        v163 = v113;
        v92 = *v156;
        (*v156)(v152, &v163, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v93 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v146 = v93;
      v147 = v83;
      v94 = *(v144 + v152);
      v148 = v86;
      v95 = *(TupleTypeMetadata2 + 48);
      v96 = v149;
      (*v142)(v149);
      *&v96[v95] = v94;
      v97 = v158;
      v92(v158, v96, TupleTypeMetadata2);

      v98 = swift_allocObject();
      v99 = v159;
      v100 = v127;
      v98[2] = v159;
      v98[3] = v100;
      v101 = v155;
      v98[4] = v155;
      sub_1ADDDCE80(v153, v85);
      v102 = v150;
      v92(v150, v96, TupleTypeMetadata2);
      v163 = *&v102[*(TupleTypeMetadata2 + 48)];
      v103 = swift_allocObject();
      *(v103 + 16) = v99;
      *(v103 + 24) = v100;
      *(v103 + 32) = v101;
      *(v103 + 40) = sub_1ADE176F4;
      *(v103 + 48) = v98;
      sub_1ADDDCE80(v148, v154);
      v104 = v151;
      swift_isUniquelyReferenced_nonNull_native();
      v105 = *(v104 + 16);
      v162 = v105;
      v106 = v97;
      v107 = v143;
      sub_1ADDFFB6C(v106, v160, v143);
      if (__OFADD__(*(v105 + 16), (v108 & 1) == 0))
      {
        break;
      }

      v109 = v108;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        sub_1ADDFFB6C(v158, v160, v107);
        TupleTypeMetadata2 = v145;
        v111 = v147;
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_43;
        }

        v112 = v151;
      }

      else
      {
        v112 = v151;
        TupleTypeMetadata2 = v145;
        v111 = v147;
      }

      *(v112 + 16) = v162;
      if ((v109 & 1) == 0)
      {
        sub_1ADE176C4(*(v103 + 40), &v162);
        (*v137)(v120, v158, v160);
        sub_1AE23DBFC();
      }

      swift_getWitnessTable();
      sub_1AE23D0BC();
      (*v139)(v149, TupleTypeMetadata2);
      v88 = *v138;
      v89 = v160;
      (*v138)(v150, v160);
      v88(v158, v89);
      v41 = v141;
      v90 = sub_1AE23D0AC();
      v83 = v111 + 1;
      v86 = sub_1AE18F94C;
      v84 = sub_1ADE176F4;
      v85 = v98;
      v87 = v103;
      v82 = v140;
      if (v146 == v90)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
LABEL_37:
    v84 = 0;
    v98 = 0;
    v86 = 0;
    v103 = 0;
LABEL_38:
    v114 = v84;

    sub_1ADDDCE80(v114, v98);
    return sub_1ADDDCE80(v86, v103);
  }

  return result;
}

BOOL sub_1AE1857FC(char *a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v32 = a3;
  v5 = a3[2];
  v6 = sub_1AE23D7CC();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v31 = *v3;
  v30 = *(v3 + 1);
  v29 = v3[3];
  v16 = *(v9 + 16);
  v9 += 16;
  v26 = v16;
  v16(&v24 - v14, a1, v5);
  v17 = (v9 - 8);
  v18 = (v9 + 32);
  v27 = v9;
  v19 = (v9 + 16);
  while (1)
  {
    v33 = v31;
    v34 = v30;
    v35 = v29;
    CROrderedTree.parent(of:)(v15, v32, v8);
    v20 = *v17;
    (*v17)(v15, v5);
    v21 = (*v18)(v8, 1, v5);
    if (v21 == 1)
    {
      break;
    }

    (*v19)(v12, v8, v5);
    v26(v15, v12, v5);
    v22 = sub_1AE23CCBC();
    v20(v12, v5);
    if (v22)
    {
      v20(v15, v5);
      return v21 != 1;
    }
  }

  (*(v24 + 8))(v8, v25);
  return v21 != 1;
}

uint64_t sub_1AE185AAC@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v6 = a1[4];
  v5 = a1[2];
  v85 = a1[3];
  v97 = v6;
  v7 = type metadata accessor for TreeNode(0, v5, v85, v6);
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - v8;
  v84 = v9;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v62 - v11;
  v98 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v68 = sub_1AE23D7CC();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v21 = &v62 - v20;
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = *v3;
  v100 = &v62 - v27;
  v96 = *(v3 + 8);
  v28 = *(v3 + 24);
  v29 = *(v22 + 16);
  v22 += 16;
  v92 = v29;
  v29();
  v30 = a1;
  v31 = (v22 - 8);
  v95 = (v22 + 32);
  v32 = (v22 + 16);
  v93 = v22;
  v88 = (v22 + 40);
  v79 = (v90 + 56);
  v78 = (v12 + 16);
  v77 = (v90 + 48);
  v65 = (v90 + 32);
  v67 = (v90 + 8);
  v80 = (v12 + 8);
  v76 = v96;
  v94 = v19;
  v86 = v5;
  v74 = v30;
  v73 = v21;
  v82 = v25;
  v81 = (v22 + 16);
  v72 = v28;
  v91 = (v22 - 8);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v33 = v100;
        v102 = v99;
        v103 = v96;
        v104 = v28;
        v34 = v30;
        CROrderedTree.parent(of:)(v100, v30, v21);
        v35 = *v31;
        (*v31)(v33, v5);
        if ((*v95)(v21, 1, v5) == 1)
        {
          (*(v63 + 8))(v21, v68);
          return (*v88)(v64, 1, 1, v5);
        }

        v36 = *v32;
        (*v32)(v25, v21, v5);
        (v92)(v100, v25, v5);
        v37 = v97;
        if (sub_1AE23D37C())
        {
          break;
        }

        v31 = v91;
        v35(v25, v5);
        v30 = v34;
      }

      v71 = v36;
      v107 = v99;
      v108 = v76;
      v38 = v84;
      WitnessTable = swift_getWitnessTable();
      v102 = v5;
      v103 = __PAIR128__(v85, v38);
      v104 = v37;
      v105 = &off_1F23C93F8;
      v106 = WitnessTable;
      v40 = type metadata accessor for CROrderedDictionary(0, &v102);
      v41 = v94;
      CROrderedDictionary.subscript.getter(v100, v40);
      v42 = v89;
      v70 = *v88;
      v70(v89, 1, 1, v5);
      (*v79)(v42, 0, 1, v38);
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = *v78;
      v45 = v83;
      v46 = v98;
      (*v78)(v83, v41, v98);
      v90 = v43;
      v44(&v45[v43], v42, v46);
      v47 = *v77;
      if ((*v77)(v45, 1, v38) != 1)
      {
        break;
      }

      v48 = *v80;
      v49 = v42;
      v50 = v98;
      (*v80)(v49, v98);
      v48(v94, v50);
      v25 = v82;
      v31 = v91;
      v35(v82, v5);
      v51 = v47(&v45[v90], 1, v38) == 1;
      v52 = v45;
      if (!v51)
      {
        goto LABEL_14;
      }

      v48(v45, v98);
      v30 = v74;
      v21 = v73;
      v32 = v81;
      v5 = v86;
      v28 = v72;
    }

    v53 = v75;
    v44(v75, v45, v98);
    v54 = v90;
    if (v47(&v45[v90], 1, v38) == 1)
    {
      break;
    }

    v55 = v66;
    (*v65)(v66, &v45[v54], v38);
    swift_getWitnessTable();
    v101 = *(v97 + 8);
    swift_getWitnessTable();
    LODWORD(v90) = sub_1AE23E0AC();
    v69 = *v67;
    v69(v55, v38);
    v56 = *v80;
    v57 = v98;
    (*v80)(v89, v98);
    v56(v94, v57);
    v25 = v82;
    v5 = v86;
    v31 = v91;
    v35(v82, v86);
    v69(v75, v38);
    v56(v45, v57);
    v30 = v74;
    v21 = v73;
    v32 = v81;
    v28 = v72;
    if ((v90 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v59 = *v80;
  v60 = v98;
  (*v80)(v89, v98);
  v59(v94, v60);
  v35(v82, v86);
  (*v67)(v53, v38);
  v52 = v45;
LABEL_14:
  (*(v62 + 8))(v52, TupleTypeMetadata2);
  v5 = v86;
LABEL_15:
  v61 = v64;
  v71(v64, v100, v5);
  return v70(v61, 0, 1, v5);
}

BOOL CROrderedTree.contains(_:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode(255, v4, v5, v6);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  v12 = v2[1];
  v17[6] = *v2;
  v17[7] = v12;
  WitnessTable = swift_getWitnessTable();
  v17[0] = v4;
  v17[1] = v7;
  v17[2] = v5;
  v17[3] = v6;
  v17[4] = &off_1F23C93F8;
  v17[5] = WitnessTable;
  v14 = type metadata accessor for CROrderedDictionary(0, v17);
  CROrderedDictionary.subscript.getter(a1, v14);
  v15 = (*(*(v7 - 8) + 48))(v11, 1, v7) != 1;
  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t CROrderedTree.remove(_:)(uint64_t a1, void *a2)
{
  v62 = a1;
  v3 = a2[2];
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v5;
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23D7CC();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = v48 - v8;
  v9 = a2[3];
  v10 = a2[4];
  v11 = type metadata accessor for TreeNode(255, v3, v9, v10);
  v63 = sub_1AE23D7CC();
  v57 = *(v63 - 1);
  MEMORY[0x1EEE9AC00](v63);
  v13 = v48 - v12;
  v14 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = v48 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v48 - v20;
  v22 = v64[1];
  v71 = *v64;
  v72 = v22;
  WitnessTable = swift_getWitnessTable();
  v65 = v3;
  v66 = v11;
  v55 = v10;
  v56 = v9;
  v67 = v9;
  v68 = v10;
  v24 = v14;
  v69 = &off_1F23C93F8;
  v70 = WitnessTable;
  v25 = type metadata accessor for CROrderedDictionary(0, &v65);
  CROrderedDictionary.subscript.getter(v62, v25);
  if ((*(v24 + 48))(v13, 1, v11) == 1)
  {
    return (*(v57 + 8))(v13, v63);
  }

  v49 = v25;
  v57 = v24;
  v27 = *(v24 + 32);
  v53 = v21;
  v50 = v11;
  v27(v21, v13, v11);
  v28 = *v64;
  v29 = v64[1];
  v30 = v64[2];
  v52 = v64 + 2;
  v31 = v64[3];
  v48[2] = v64 + 3;
  v65 = v28;
  v66 = v29;
  v67 = v30;
  v68 = v31;
  v32 = v61;
  v63 = *(v4 + 16);
  v63(v61, v62, v3);
  v33 = *(v4 + 56);
  v48[1] = v4 + 56;
  v48[0] = v33;
  v33(v32, 0, 1, v3);

  v34 = CROrderedTree.children(of:)(v32, a2);
  (*(v58 + 8))(v32, v59);

  if (sub_1AE23D0AC())
  {
    v35 = 0;
    do
    {
      v36 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v36)
      {
        v63(v6, v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, v3);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v51 != 8)
        {
          __break(1u);
          return result;
        }

        v65 = result;
        v63(v6, &v65, v3);
        swift_unknownObjectRelease();
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      CROrderedTree.remove(_:)(v6, a2);
      (*(v4 + 8))(v6, v3);
      ++v35;
    }

    while (v37 != sub_1AE23D0AC());
  }

  v38 = v50;
  (*(v57 + 16))(v60, v53, v50);
  v39 = sub_1AE23D11C();
  swift_getWitnessTable();
  v40 = sub_1AE23CB1C();
  v41 = sub_1AE23CB6C();
  v43 = *v42;
  v59 = v40;
  if (v43)
  {
    v44 = v62;
    sub_1ADE5726C(v62, v39, *(v55 + 8));
    v41(&v65, 0);
    v45 = v61;
  }

  else
  {
    v41(&v65, 0);
    v45 = v61;
    v44 = v62;
  }

  v46 = *(v57 + 8);
  v46(v60, v38);
  CROrderedDictionary.removeValue(forKey:)(v44, v49);
  v47 = sub_1AE23D38C();
  sub_1ADFB1024(v44, v47);
  v63(v45, v44, v3);
  (v48[0])(v45, 0, 1, v3);
  sub_1ADE1E114(v45, v3, v54);
  v65 = 0;
  sub_1AE23CB8C();
  return (v46)(v53, v38);
}

uint64_t CROrderedTree.parent(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);
  v10 = sub_1AE23D7CC();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = *v3;
  v14 = v3[1];
  if (sub_1AE23D37C())
  {
    v15 = *(*(v6 - 8) + 56);

    return v15(a3, 1, 1, v6);
  }

  else
  {
    v21 = a3;
    v24[6] = v13;
    v24[7] = v14;
    WitnessTable = swift_getWitnessTable();
    v24[0] = v6;
    v24[1] = v9;
    v24[2] = v7;
    v24[3] = v8;
    v24[4] = &off_1F23C93F8;
    v24[5] = WitnessTable;
    v18 = type metadata accessor for CROrderedDictionary(0, v24);
    CROrderedDictionary.subscript.getter(a1, v18);
    v19 = *(v9 - 8);
    if ((*(v19 + 48))(v12, 1, v9) == 1)
    {
      (*(v22 + 8))(v12, v23);
      return (*(*(v6 - 8) + 56))(v21, 1, 1, v6);
    }

    else
    {
      sub_1ADE17570(v9, v21);
      return (*(v19 + 8))(v12, v9);
    }
  }
}

uint64_t sub_1AE18707C(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[2];
  v61 = a2[4];
  v62 = v4;
  v6 = type metadata accessor for TreeNode(0, v5, v4, v61);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v44 - v10;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AE23D7CC();
  v13 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = *v2;
  v58 = v2[1];
  v59 = v21;
  sub_1AE23DDAC();
  v22 = v7;
  swift_allocObject();
  v23 = sub_1AE23CFFC();
  v24 = v22[2];
  v24(v25, a1, v6);
  sub_1ADE0FCBC(v23, v6);
  v69 = v26;
  v57 = a1;
  v54 = v22 + 2;
  v53 = v24;
  v24(v20, a1, v6);
  v27 = v22[7];
  v52 = v22 + 7;
  v51 = v27;
  v27(v20, 0, 1, v6);
  v28 = *(v13 + 16);
  v50 = v13 + 16;
  v49 = v28;
  v28(v17, v20, v63);
  v64 = v22[6];
  v65 = v22 + 6;
  if (v64(v17, 1, v6) == 1)
  {
    v29 = *(v13 + 8);
LABEL_3:
    v30 = v63;
    v29(v20, v63);
    v29(v17, v30);
  }

  else
  {
    v47 = *(v48 + 48);
    v45 = (v48 + 32);
    v44 = v22;
    v31 = (v22 + 4);
    v46 = (v48 + 8);
    v48 = v13 + 8;
    while (1)
    {
      if (v47(v17, 1, v5) == 1)
      {
        (*v48)(v20, v63);
        (v44[1])(v17, v6);
        return v69;
      }

      v32 = v66;
      (*v45)(v66, v17, v5);
      v68[6] = v59;
      v68[7] = v58;
      WitnessTable = swift_getWitnessTable();
      v68[0] = v5;
      v68[1] = v6;
      v34 = v61;
      v68[2] = v62;
      v68[3] = v61;
      v68[4] = &off_1F23C93F8;
      v68[5] = WitnessTable;
      v35 = type metadata accessor for CROrderedDictionary(0, v68);
      v36 = v60;
      CROrderedDictionary.subscript.getter(v32, v35);
      v37 = v36;
      if (v64(v36, 1, v6) == 1)
      {
        (*v46)(v66, v5);
        v41 = *v48;
        v42 = v63;
        (*v48)(v20, v63);
        v41(v36, v42);
        return v69;
      }

      v38 = *v31;
      v39 = v56;
      (*v31)(v56, v37, v6);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v67 = *(v34 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        break;
      }

      v53(v55, v39, v6);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      (*v46)(v66, v5);
      v29 = *v48;
      v40 = v63;
      (*v48)(v20, v63);
      v38(v20, v39, v6);
      v51(v20, 0, 1, v6);
      v49(v17, v20, v40);
      if (v64(v17, 1, v6) == 1)
      {
        goto LABEL_3;
      }
    }

    (v44[1])(v39, v6);
    (*v46)(v66, v5);
    (*v48)(v20, v63);
  }

  return v69;
}

uint64_t sub_1AE1877E4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  v187 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v145 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v138 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v135 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v135 - v13;
  v14 = a2[2];
  v162 = sub_1AE23D7CC();
  v15 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v167 = &v135 - v18;
  v137 = a2;
  v19 = a2[3];
  v20 = a2[4];
  v169 = v19;
  v21 = type metadata accessor for TreeNode(255, v14, v19, v20);
  v22 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v168 = &v135 - v23;
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v135 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v185 = &v135 - v30;
  v135 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v150 = &v135 - v33;
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v148 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v141 = &v135 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v158 = &v135 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v172 = &v135 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v170 = &v135 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v189 = &v135 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v149 = &v135 - v48;
  v190 = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v136 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v165 = &v135 - v51;
  v191 = v14;
  v52 = v20;
  v201 = sub_1AE23C9EC();
  if (!sub_1AE23D0AC())
  {
  }

  v151 = v4;
  v53 = 0;
  v155 = *(TupleTypeMetadata2 + 48);
  v156 = v50;
  v157 = (v50 + 16);
  v184 = (v34 + 32);
  v177 = (v24 + 32);
  v181 = (v24 + 16);
  v173 = v34 + 16;
  v188 = v34 + 48;
  v147 = v34;
  v54 = (v34 + 8);
  v166 = (v24 + 48);
  v152 = v24;
  v55 = (v24 + 8);
  v161 = (v15 + 8);
  v139 = (v187 + 56);
  v144 = (v187 + 48);
  v56 = v171;
  v57 = v150;
  v58 = v149;
  v146 = a1;
  v154 = TupleTypeMetadata2;
  v163 = v54;
  v174 = v55;
  v186 = v52;
  while (1)
  {
    v60 = TupleTypeMetadata2;
    v61 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v61)
    {
      result = (*(v156 + 16))(v165, a1 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v53, v60);
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v136 != 8)
      {
        goto LABEL_53;
      }

      v192 = result;
      (*v157)(v165, &v192, v60);
      result = swift_unknownObjectRelease();
    }

    v63 = __OFADD__(v53, 1);
    v64 = v53 + 1;
    v65 = v163;
    if (v63)
    {
      break;
    }

    v164 = v64;
    v66 = v165;
    v183 = *v184;
    (v183)(v58, v165, v191);
    v176 = *v177;
    v176(v57, &v66[v155], v190);
    v67 = v57;
    v178 = v180[3];
    if (sub_1AE23D37C())
    {
      (*v55)(v57, v190);
      (*v65)(v58, v191);
      goto LABEL_4;
    }

    v68 = *v181;
    v69 = v58;
    v70 = v185;
    v71 = v190;
    (*v181)(v185, v67, v190);
    v72 = v191;
    sub_1ADE0FC48(v191, v191);
    v73 = v147;
    swift_allocObject();
    v74 = sub_1AE23CFFC();
    v175 = *(v73 + 16);
    v175(v75, v69, v72);
    sub_1ADE0FCBC(v74, v72);
    v192 = v76;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v200 = sub_1AE23D39C();
    v179 = v68;
    v68(v56, v70, v71);
    v55 = v174;
    v187 = *(v73 + 48);
    if ((v187)(v56, 1, v72) == 1)
    {
      v77 = *v55;
LABEL_24:
      v103 = v190;
      v77(v185, v190);
      v57 = v150;
      v77(v150, v103);
      v58 = v149;
      (*v65)(v149, v191);

      v77(v56, v103);
      a1 = v146;
      goto LABEL_4;
    }

    v142 = v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v172;
    while (1)
    {
      (v183)(v189, v56, v191);
      if (sub_1AE23D37C())
      {
        v84 = *v65;
LABEL_22:
        v99 = v191;
        v84(v189, v191);
        v100 = *v55;
        v101 = v190;
        (*v55)(v185, v190);
        v102 = v150;
        v100(v150, v101);
        v57 = v102;
        v58 = v149;
        v84(v149, v99);

        a1 = v146;
        goto LABEL_23;
      }

      v80 = v191;
      v81 = v175;
      v175(v78, v189, v191);
      sub_1AE23D38C();
      v82 = v170;
      v83 = sub_1AE23D33C();
      v84 = *v65;
      (*v65)(v82, v80);
      if ((v83 & 1) == 0)
      {
        v55 = v174;
        goto LABEL_22;
      }

      v86 = v190;
      v85 = v191;
      v81(v78, v189, v191);
      sub_1AE23D33C();
      v182 = v84;
      v84(v82, v85);
      v87 = v180[1];
      v198 = *v180;
      v199 = v87;
      WitnessTable = swift_getWitnessTable();
      v192 = v85;
      v193 = v86;
      v194 = v169;
      v195 = v186;
      v196 = &off_1F23C93F8;
      v197 = WitnessTable;
      v89 = type metadata accessor for CROrderedDictionary(0, &v192);
      v90 = v168;
      CROrderedDictionary.subscript.getter(v189, v89);
      result = (*v166)(v90, 1, v86);
      if (result == 1)
      {
        goto LABEL_52;
      }

      v55 = v174;
      v77 = *v174;
      v91 = v185;
      v92 = v190;
      (*v174)(v185, v190);
      v176(v91, v90, v92);
      v93 = v167;
      sub_1ADE17570(v92, v167);
      if ((v187)(v93, 1, v85) != 1)
      {
        break;
      }

      v182(v189, v191);
      (*v161)(v93, v162);
LABEL_13:
      v56 = v171;
      v179(v171, v185, v190);
      v79 = (v187)(v56, 1, v191);
      v78 = v172;
      if (v79 == 1)
      {
        goto LABEL_24;
      }
    }

    v94 = v158;
    (v183)(v158, v93, v191);
    v95 = v200;
    v96 = sub_1AE23D37C();
    v97 = v182;
    if ((v96 & 1) == 0)
    {
      v98 = v191;
      v182(v94, v191);
      v97(v189, v98);
      goto LABEL_13;
    }

    v104 = *v180;
    v176 = v180[1];
    v106 = v180[2];
    v105 = v180[3];
    v178 = v104;
    v192 = v104;
    v193 = v176;
    v194 = v106;
    v195 = v105;

    v107 = sub_1AE18707C(v185, v137);

    v175(v141, v94, v191);
    v176 = *v139;
    (v176)(v143, 1, 1, v151);
    v108 = sub_1AE23D0AC();
    v175 = v95;
    if (v108)
    {
      v109 = 0;
      do
      {
        v110 = sub_1AE23D08C();
        sub_1AE23D00C();
        if (v110)
        {
          result = (v179)(v159, v107 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v109, v190);
          v111 = v153;
        }

        else
        {
          result = sub_1AE23DAAC();
          v111 = v153;
          if (v135 != 8)
          {
            goto LABEL_54;
          }

          v192 = result;
          v179(v159, &v192, v190);
          result = swift_unknownObjectRelease();
        }

        if (__OFADD__(v109, 1))
        {
          goto LABEL_51;
        }

        v178 = v109 + 1;
        v112 = v107;
        v113 = v190;
        v114 = v159;
        sub_1ADE17570(v190, v160);
        v115 = v160;
        v77(v114, v113);
        if ((v187)(v115, 1, v191) == 1)
        {
          (*v161)(v115, v162);
          v107 = v112;
        }

        else
        {
          v116 = v148;
          v183();
          v117 = v180[1];
          v192 = *v180;
          v193 = v117;
          sub_1ADE15AA0(v116, v89);
          v118 = *v144;
          v107 = v112;
          if ((*v144)(v111, 1, v151) == 1)
          {
            v97 = v182;
            v182(v116, v191);
            sub_1ADE1727C(v111);
          }

          else
          {
            sub_1ADE172E4(v111, v145);
            v119 = v143;
            v120 = v140;
            sub_1ADE17348(v143, v140);
            v121 = v151;
            v122 = v118(v120, 1, v151);
            sub_1ADE1727C(v120);
            v123 = v122 == 1;
            v97 = v182;
            if (!v123)
            {
              v126 = v138;
              sub_1ADE17348(v119, v138);
              result = v118(v126, 1, v121);
              if (result == 1)
              {
                goto LABEL_55;
              }

              v127 = *(v121 + 20);
              v128 = *(v126 + v127);
              v129 = *(v145 + v127);
              if (v128 == v129)
              {
                v130 = sub_1ADF5EB00(v126);
                sub_1ADE173B8(v126);
                v119 = v143;
                if ((v130 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                sub_1ADE173B8(v126);
                v119 = v143;
                if (v128 >= v129)
                {
LABEL_43:
                  sub_1ADE173B8(v145);
                  v97(v148, v191);
                  goto LABEL_28;
                }
              }
            }

            sub_1ADE1727C(v119);
            v124 = v141;
            v125 = v191;
            v97(v141, v191);
            sub_1ADE172E4(v145, v119);
            (v176)(v119, 0, 1, v151);
            (v183)(v124, v148, v125);
          }
        }

LABEL_28:
        ++v109;
      }

      while (v178 != sub_1AE23D0AC());
    }

    v131 = v141;
    sub_1ADE158F4(v141, v137);
    sub_1ADE1727C(v143);
    v132 = v191;
    v97(v131, v191);
    v97(v158, v132);
    v97(v189, v132);
    v133 = v190;
    v77(v185, v190);
    v57 = v150;
    v77(v150, v133);
    v134 = v149;
    v97(v149, v132);
    a1 = v146;
    v58 = v134;
LABEL_23:
    v56 = v171;
LABEL_4:
    TupleTypeMetadata2 = v154;
    v59 = sub_1AE23D0AC();
    v53 = v164;
    if (v164 == v59)
    {
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1AE188C74(uint64_t a1, void *a2)
{
  v22 = a2;
  v4 = a2[2];
  v23 = sub_1AE23D7CC();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - v6;
  v9 = *v2;
  v21 = v2[1];
  v8 = v21;
  v11 = v2[2];
  v10 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1AE23DFCC();
  v13 = v31;
  *(v12 + 32) = v30;
  *(v12 + 40) = v13;
  v30 = v9;
  v31 = v8;
  v32 = v11;
  v33 = v10;
  v14 = *(v4 - 8);
  (*(v14 + 16))(v7, a1, v4);
  (*(v14 + 56))(v7, 0, 1, v4);
  v15 = v22;
  v16 = CROrderedTree.children(of:)(v7, v22);
  (*(v5 + 8))(v7, v23);
  v30 = v16;
  v24 = v4;
  v25 = *(v15 + 3);
  v26 = v9;
  v27 = v21;
  v28 = v11;
  v29 = v10;
  sub_1AE23D11C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  v17 = MEMORY[0x1E69E6328];
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38, v17);
  v18 = sub_1AE23CF3C();

  v30 = v12;
  sub_1ADFB6F58(v18);
  return v30;
}

uint64_t sub_1AE188F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>)
{
  v7 = type metadata accessor for CROrderedTree(0, a2, a3, a4);
  v8 = sub_1AE188C74(a1, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v9, 0);
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      MEMORY[0x1B26FB670](v12, v13);

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1ADE0B11C((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = 8224;
      *(v16 + 40) = 0xE200000000000000;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v10;
  return result;
}

uint64_t CROrderedTree.description.getter(uint64_t a1)
{
  sub_1AE23D38C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38, MEMORY[0x1E69E6328]);
  sub_1AE23CF3C();

  sub_1AE18F584(&qword_1EB5B8C10, MEMORY[0x1E69E6310]);
  v1 = sub_1AE23CBFC();

  return v1;
}

uint64_t CROrderedTree.MergeableDelta.merge(delta:)(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for TreeNode(255, v3, v4, v5);

  v10[0] = v3;
  v10[1] = v6;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = &off_1F23C93F8;
  v10[5] = swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary.MergeableDelta(0, v10);
  v8 = CROrderedDictionary.MergeableDelta.merge(delta:)(v11, v7);

  return v8 & 1;
}

double CROrderedTree.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v12[6] = v5;
  v12[7] = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary.MergeableDelta(0, v12);
  CROrderedDictionary.MergeableDelta.visitReferences(_:)(a1, v10);

  return result;
}

void CROrderedTree.MergeableDelta.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = type metadata accessor for TreeNode(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary.MergeableDelta.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, WitnessTable, v14);
  if (!v5)
  {
    v13 = v14[1];
    *a5 = v14[0];
    a5[1] = v13;
  }
}

double CROrderedTree.MergeableDelta.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v12[6] = v5;
  v12[7] = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary.MergeableDelta(0, v12);
  CROrderedDictionary.MergeableDelta.encode(to:)(a1, v10);

  return result;
}

double CROrderedTree<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v13[6] = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v13[0] = v6;
  v13[1] = v9;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary(0, v13);
  v13[9] = a3;
  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary<>.encode(to:)(a1, v10, a3, WitnessTable);

  return result;
}

uint64_t CRUnorderedTree.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TreeNode(0, a1, a2, a3);
  WitnessTable = swift_getWitnessTable();
  CRDictionary.init()(a1, v8, a2, a3, &off_1F23C93F8, WitnessTable, &v17);
  *a4 = v17;
  v10 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v11 = sub_1AE18F13C(v10, a1, a3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  a4[2] = v11;
  v12 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v13 = sub_1AE23D05C();
  v14 = swift_getWitnessTable();
  v15 = sub_1ADDEAF38(v13, v8, v12, v14);

  a4[1] = v15;
  return result;
}

uint64_t sub_1AE1897F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  v9 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v10 = sub_1AE18F13C(v9, a2, a4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  a5[2] = v10;
  v11 = type metadata accessor for TreeNode(255, a2, a3, a4);
  v12 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v13 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1ADDEAF38(v13, v11, v12, WitnessTable);

  a5[1] = v15;
  v16 = type metadata accessor for CRUnorderedTree(0, a2, a3, a4);
  return sub_1AE189934(1, v16);
}

uint64_t sub_1AE189934(int a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v5 = a2[3];
  v59 = a2;
  v7 = a2[4];
  v77 = v5;
  v8 = type metadata accessor for TreeNode(255, v6, v5, v7);
  v58 = sub_1AE23D7CC();
  v78 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50[-v9];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v50[-v10];
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50[-v15];
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  v22 = swift_getTupleTypeMetadata2();
  v75 = sub_1AE23D7CC();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v50[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v50[-v25];
  v52 = 0;
  v51 = a1;
  if ((a1 & 1) == 0)
  {
    v52 = v2[2];
  }

  v26 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v27 = sub_1AE18F13C(v26, v6, v7);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CD0];
  }

  v3[2] = v27;
  v88 = sub_1AE23D05C();
  v86 = *v3;
  WitnessTable = swift_getWitnessTable();
  v80 = v6;
  v81 = v8;
  v82 = v77;
  v83 = v7;
  v84 = &off_1F23C93F8;
  v85 = WitnessTable;
  v72 = WitnessTable;
  v55 = type metadata accessor for CRDictionary(0, &v80);
  CRDictionary.makeIterator()(&v87);

  v71 = (v79 + 4);
  v70 = v22 - 8;
  v79 = (v61 + 4);
  v65 = (v60 + 4);
  v64 = (v61 + 2);
  v63 = (v60 + 2);
  v62 = (v61 + 6);
  v54 = (v60 + 6);
  ++v61;
  ++v60;
  v53 = (v78 + 8);
  v69 = v22;
  v67 = v7;
  v66 = v3;
  while (1)
  {
    v80 = v6;
    v81 = v8;
    v82 = v77;
    v83 = v7;
    v84 = &off_1F23C93F8;
    v85 = v72;
    v29 = type metadata accessor for CRDictionary.Iterator(0, &v80);
    v30 = v74;
    CRDictionary.Iterator.next()(v29, v31, v74);
    v32 = v73;
    (*v71)(v73, v30, v75);
    if ((*(*(v22 - 8) + 48))(v32, 1, v22) == 1)
    {
      break;
    }

    v33 = v32;
    v34 = *(v22 + 48);
    v78 = *v79;
    (v78)(v21, v33, v6);
    (*v65)(v16, &v33[v34], v8);
    v35 = *(TupleTypeMetadata2 + 48);
    v36 = v13;
    v37 = v68;
    (*v64)(v68, v21, v6);
    v38 = *v63;
    (*v63)(&v37[v35], v16, v8);
    sub_1AE23D11C();
    v13 = v36;
    sub_1AE23D0CC();
    v38(v36, v16, v8);
    if ((*v62)(v36, 1, v6) == 1)
    {
      sub_1ADFB14A8(v21, v59);
      (*v60)(v16, v8);
      (*v61)(v21, v6);
    }

    else
    {
      v39 = v21;
      v40 = v56;
      (v78)(v56, v13, v6);
      v41 = v57;
      CRDictionary.subscript.getter(v42, v57);
      if ((*v54)(v41, 1, v8) == 1)
      {
        (*v53)(v41, v58);
        sub_1ADFB14A8(v39, v59);
        v43 = *v61;
        v44 = v40;
        v21 = v39;
        (*v61)(v44, v6);
        (*v60)(v16, v8);
        v43(v39, v6);
      }

      else
      {
        v45 = v41;
        v46 = *v61;
        (*v61)(v40, v6);
        (*v60)(v16, v8);
        v21 = v39;
        v46(v39, v6);
        (*v53)(v45, v58);
      }
    }

    v7 = v67;
    v22 = v69;
  }

  sub_1ADDDCE74(v87);
  sub_1AE18D284(v88, v59);
  if (v51)
  {

LABEL_18:
    v48 = sub_1AE23DB9C();

    sub_1AE18A294(v48, v59);
  }

  if (!v52)
  {
    goto LABEL_18;
  }

  v47 = sub_1AE23D30C();

  swift_bridgeObjectRelease_n();
  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_1AE18A294(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[4];
  v5 = a2[2];
  v124 = a2[3];
  v7 = type metadata accessor for TreeNode(255, v5, v124, v6);
  v114 = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v138 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v153 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v111 - v13;
  v111 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v111 - v16;
  v119 = sub_1AE23D7CC();
  v146 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v133 = &v111 - v17;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v151 = (&v111 - v26);
  v27 = swift_getTupleTypeMetadata2();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v137 = (&v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v135 = (&v111 - v31);
  v112 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v134 = &v111 - v34;
  v150 = v6;
  v35 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v36 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v148 = v35;
  v123 = WitnessTable;
  v38 = sub_1ADDEAF38(v36, v7, v35, WitnessTable);

  *(v3 + 8) = v38;
  v152 = TupleTypeMetadata2;
  v39 = sub_1AE23D05C();
  v157 = v39;
  v40 = sub_1AE23D0AC();
  v144 = v3;
  v154 = v5;
  v149 = v7;
  v113 = v18;
  if (!v40)
  {
    goto LABEL_21;
  }

  v41 = 0;
  v131 = *(v27 + 48);
  v147 = (v28 + 16);
  v130 = v5 - 8;
  v132 = (v18 + 32);
  v129 = *(v3 + 16);
  v128 = (v138 + 48);
  v136 = (v18 + 8);
  v127 = (v28 + 8);
  v115 = (v146 + 8);
  v120 = (v18 + 16);
  v42 = v28;
  v125 = v28;
  v43 = v135;
  v126 = a1;
  v116 = v27;
  while (1)
  {
    v58 = sub_1AE23D08C();
    sub_1AE23D00C();
    v59 = v154;
    if ((v58 & 1) == 0)
    {
      break;
    }

    v60 = a1 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41;
    v61 = *(v42 + 16);
    v62 = v134;
    v146 = v61;
    (v61)(v134, v60, v27);
    v63 = v132;
    v64 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_19;
    }

LABEL_8:
    v142 = v64;
    v65 = *(v27 + 48);
    v66 = *(v59 - 8);
    v67 = *(v66 + 32);
    v140 = (v66 + 32);
    v141 = v67;
    (v67)(v43, v62, v59);
    v68 = *v63;
    (*v63)(v43 + v65, &v62[v131], v7);
    if (sub_1AE23D37C())
    {
      (*(v66 + 56))(v151, 1, 1, v59);
    }

    else
    {
      v69 = v137;
      (v146)(v137, v43, v27);
      v68(v151, &v69[*(v27 + 48)], v7);
      (*(v66 + 8))(v69, v59);
    }

    v156 = v157;
    v70 = v152;
    v71 = sub_1AE23D11C();
    swift_getWitnessTable();
    v72 = v133;
    sub_1AE23CBEC();
    if ((*v128)(v72, 1, v70) == 1)
    {
      v139 = v71;
      (*v115)(v72, v119);
    }

    else
    {

      v73 = v118;
      v74 = v72;
      v75 = v149;
      v68(v118, v74, v149);
      v76 = v121;
      v68(v121, v73, v75);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v155 = *(v150 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        v77 = sub_1AE23D0AC();
        v78 = v77 - 1;
        v27 = v116;
        if (__OFSUB__(v77, 1))
        {
          goto LABEL_40;
        }

        sub_1AE23D04C();
        sub_1ADF86080(v78, v157, v70);
        v43 = v135;
        sub_1ADE17700(v135, v114);
        v79 = *v136;
        v7 = v149;
        (*v136)(v121, v149);
        v79(v151, v7);
        (*v127)(v43, v27);
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v71);
        goto LABEL_5;
      }

      v139 = v71;
      (*v136)(v76, v75);
      v27 = v116;
    }

    v44 = v154;
    sub_1ADE0FC48(v154, v154);
    swift_allocObject();
    v45 = sub_1AE23CFFC();
    v47 = v46;
    v48 = v137;
    v49 = v135;
    (v146)(v137, v135, v27);
    v50 = *(v27 + 48);
    (v141)(v47, v48, v44);
    sub_1ADE0FCBC(v45, v44);
    v52 = v51;
    v53 = *v136;
    v7 = v149;
    (*v136)(v48 + v50, v149);
    v54 = v151;
    v55 = *(v152 + 48);
    v56 = v122;
    (*v120)(v122, v151, v7);
    *&v56[v55] = v52;
    v43 = v49;
    sub_1AE23D0CC();
    v53(v54, v7);
    (*v127)(v49, v27);
LABEL_5:
    a1 = v126;
    v57 = sub_1AE23D0AC();
    ++v41;
    v42 = v125;
    if (v142 == v57)
    {
      goto LABEL_20;
    }
  }

  v80 = sub_1AE23DAAC();
  v63 = v132;
  if (v112 != 8)
  {
    goto LABEL_41;
  }

  v156 = v80;
  v62 = v134;
  v146 = *v147;
  (v146)(v134, &v156, v27);
  swift_unknownObjectRelease();
  v64 = v41 + 1;
  if (!__OFADD__(v41, 1))
  {
    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v39 = v157;
LABEL_21:
  v81 = v152;
  if (sub_1AE23D0AC())
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v151 = 0;
    v85 = 0;
    v86 = *(v81 + 48);
    v147 = (v138 + 16);
    v140 = (v113 + 32);
    v141 = v86;
    v135 = (v113 + 16);
    v137 = (v113 + 8);
    v136 = (v138 + 8);
    v139 = v39;
    while (1)
    {
      v88 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v88)
      {
        v89 = v83;
        v90 = *(v138 + 16);
        (v90)(v145, v39 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v82, v81);
        v91 = (v82 + 1);
        if (__OFADD__(v82, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v89 = v83;
        v109 = sub_1AE23DAAC();
        if (v111 != 8)
        {
          goto LABEL_42;
        }

        v156 = v109;
        v90 = *v147;
        (*v147)(v145, &v156, v81);
        swift_unknownObjectRelease();
        v91 = (v82 + 1);
        if (__OFADD__(v82, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v146 = v91;
      v92 = *&v141[v145];
      v93 = *(v81 + 48);
      v94 = v143;
      (*v140)(v143);
      v142 = v92;
      *&v94[v93] = v92;
      v95 = v153;
      (v90)(v153, v94, v81);

      v96 = swift_allocObject();
      v97 = v154;
      v98 = v124;
      v96[2] = v154;
      v96[3] = v98;
      v99 = v150;
      v96[4] = v150;
      sub_1ADDDCE80(v89, v84);
      v100 = swift_allocObject();
      *(v100 + 16) = v97;
      *(v100 + 24) = v98;
      v101 = v149;
      *(v100 + 32) = v99;
      *(v100 + 40) = sub_1ADFB21B0;
      *(v100 + 48) = v96;
      sub_1ADDDCE80(v151, v85);
      v102 = v144;
      swift_isUniquelyReferenced_nonNull_native();
      v103 = *(v102 + 8);
      v156 = v103;
      v104 = v123;
      sub_1ADDFFB6C(v95, v101, v123);
      if (__OFADD__(*(v103 + 16), (v105 & 1) == 0))
      {
        break;
      }

      v106 = v105;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        v107 = v101;
        sub_1ADDFFB6C(v153, v101, v104);
        if ((v106 & 1) != (v108 & 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v107 = v101;
      }

      *(v144 + 8) = v156;
      if ((v106 & 1) == 0)
      {
        sub_1ADFB1F18(*(v100 + 40), &v156);
        (*v135)(v117, v153, v107);
        sub_1AE23DBFC();
      }

      sub_1ADFB10FC(v142, v148);
      (*v137)(v153, v107);
      v81 = v152;
      (*v136)(v143, v152);
      v39 = v139;
      v87 = sub_1AE23D0AC();
      ++v82;
      v151 = sub_1AE18F934;
      v83 = sub_1ADFB21B0;
      v84 = v96;
      v85 = v100;
      if (v146 == v87)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
LABEL_37:
    v83 = 0;
    v96 = 0;
    v151 = 0;
    v100 = 0;
LABEL_38:

    sub_1ADDDCE80(v83, v96);
    return sub_1ADDDCE80(v151, v100);
  }

  return result;
}

BOOL sub_1AE18B234(char *a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v31 = a3;
  v5 = a3[2];
  v6 = sub_1AE23D7CC();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v30 = *v3;
  v29 = *(v3 + 2);
  v16 = *(v9 + 16);
  v9 += 16;
  v26 = v16;
  v16(&v24 - v14, a1, v5);
  v17 = (v9 - 8);
  v18 = (v9 + 32);
  v27 = v9;
  v19 = (v9 + 16);
  while (1)
  {
    v32 = v30;
    v33 = v29;
    CRUnorderedTree.parent(of:)(v31, v8);
    v20 = *v17;
    (*v17)(v15, v5);
    v21 = (*v18)(v8, 1, v5);
    if (v21 == 1)
    {
      break;
    }

    (*v19)(v12, v8, v5);
    v26(v15, v12, v5);
    v22 = sub_1AE23CCBC();
    v20(v12, v5);
    if (v22)
    {
      v20(v15, v5);
      return v21 != 1;
    }
  }

  (*(v24 + 8))(v8, v25);
  return v21 != 1;
}

uint64_t sub_1AE18B4D8@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v6 = a1[4];
  v5 = a1[2];
  v88 = a1[3];
  v98 = v6;
  v7 = type metadata accessor for TreeNode(0, v5, v88, v6);
  v100 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v63 - v8;
  v87 = v9;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v86 = &v63 - v11;
  v99 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v71 = sub_1AE23D7CC();
  v65 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v21 = &v63 - v20;
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v97 = *v3;
  v27 = *(v3 + 2);
  v28 = *(v22 + 16);
  v22 += 16;
  v101 = &v63 - v29;
  v94 = v28;
  v28();
  v30 = a1;
  v31 = (v22 - 8);
  v96 = (v22 + 32);
  v32 = (v22 + 16);
  v91 = (v22 + 40);
  v82 = (v100 + 56);
  v81 = (v12 + 16);
  v80 = (v100 + 48);
  v67 = (v100 + 32);
  v69 = (v100 + 8);
  v83 = (v12 + 8);
  v79 = v97;
  v95 = v19;
  v89 = v5;
  v78 = v30;
  v77 = v21;
  v85 = v25;
  v84 = (v22 + 16);
  v76 = v22;
  v75 = v27;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v103 = v97;
        v104 = v27;
        v33 = v101;
        v34 = v30;
        CRUnorderedTree.parent(of:)(v30, v21);
        v35 = *v31;
        (*v31)(v33, v5);
        if ((*v96)(v21, 1, v5) == 1)
        {
          (*(v65 + 8))(v21, v71);
          return (*v91)(v66, 1, 1, v5);
        }

        v100 = v35;
        v36 = *v32;
        (*v32)(v25, v21, v5);
        (v94)(v101, v25, v5);
        v37 = v98;
        if (sub_1AE23D37C())
        {
          break;
        }

        (v100)(v25, v5);
        v30 = v34;
      }

      v74 = v36;
      v108 = v79;
      v38 = v87;
      WitnessTable = swift_getWitnessTable();
      *&v103 = v5;
      *(&v103 + 1) = v38;
      v104 = v88;
      v105 = v37;
      v106 = &off_1F23C93F8;
      v107 = WitnessTable;
      type metadata accessor for CRDictionary(0, &v103);
      v40 = v95;
      CRDictionary.subscript.getter(v41, v95);
      v42 = v92;
      v73 = *v91;
      v73(v92, 1, 1, v5);
      (*v82)(v42, 0, 1, v38);
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = *v81;
      v45 = v86;
      v46 = v99;
      (*v81)(v86, v40, v99);
      v93 = v43;
      v44(&v45[v43], v42, v46);
      v47 = *v80;
      if ((*v80)(v45, 1, v38) != 1)
      {
        break;
      }

      v48 = *v83;
      v49 = v42;
      v50 = v99;
      (*v83)(v49, v99);
      v48(v95, v50);
      v25 = v85;
      (v100)(v85, v5);
      v51 = v47(&v45[v93], 1, v38) == 1;
      v52 = v45;
      if (!v51)
      {
        goto LABEL_14;
      }

      v48(v45, v99);
      v30 = v78;
      v21 = v77;
      v32 = v84;
      v5 = v89;
      v27 = v75;
    }

    v53 = v70;
    v44(v70, v45, v99);
    v54 = v93;
    if (v47(&v45[v93], 1, v38) == 1)
    {
      break;
    }

    v55 = v68;
    (*v67)(v68, &v45[v54], v38);
    swift_getWitnessTable();
    v102 = *(v98 + 8);
    swift_getWitnessTable();
    LODWORD(v93) = sub_1AE23E0AC();
    v72 = *v69;
    v72(v55, v38);
    v56 = *v83;
    v57 = v99;
    (*v83)(v92, v99);
    v56(v95, v57);
    v25 = v85;
    v58 = v53;
    v5 = v89;
    (v100)(v85, v89);
    v72(v58, v38);
    v56(v45, v57);
    v30 = v78;
    v21 = v77;
    v32 = v84;
    v27 = v75;
    if ((v93 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v60 = *v83;
  v61 = v99;
  (*v83)(v92, v99);
  v60(v95, v61);
  (v100)(v85, v89);
  (*v69)(v53, v38);
  v52 = v45;
LABEL_14:
  (*(v64 + 8))(v52, TupleTypeMetadata2);
  v5 = v89;
LABEL_15:
  v62 = v66;
  v74(v66, v101, v5);
  return v73(v62, 0, 1, v5);
}

BOOL CRUnorderedTree.contains(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for TreeNode(255, v3, v4, v5);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-1] - v9;
  v16[6] = *v2;
  WitnessTable = swift_getWitnessTable();
  v16[0] = v3;
  v16[1] = v6;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = &off_1F23C93F8;
  v16[5] = WitnessTable;
  type metadata accessor for CRDictionary(0, v16);
  CRDictionary.subscript.getter(v12, v10);
  v13 = (*(*(v6 - 8) + 48))(v10, 1, v6) != 1;
  (*(v8 + 8))(v10, v7);
  return v13;
}

void CRUnorderedTree.remove(_:)(uint64_t a1, void *a2)
{
  v79 = a1;
  v4 = a2[2];
  v71 = sub_1AE23D7CC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = a2;
  v73 = v59 - v8;
  v9 = a2[3];
  v10 = a2[4];
  v11 = type metadata accessor for TreeNode(255, v4, v9, v10);
  v12 = sub_1AE23D7CC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v59 - v16;
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v69 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v67 = v59 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v75 = v59 - v24;
  WitnessTable = swift_getWitnessTable();
  v84 = v4;
  v85 = v11;
  v86 = v9;
  v87 = v10;
  v74 = v10;
  v88 = &off_1F23C93F8;
  v89 = WitnessTable;
  v26 = type metadata accessor for CRDictionary(0, &v84);
  CRDictionary.subscript.getter(v27, v17);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    (*(v13 + 8))(v17, v12);
    return;
  }

  v60 = v26;
  v62 = v13;
  v61 = v12;
  v64 = v9;
  v63 = v18;
  v28 = *(v18 + 32);
  v66 = v11;
  v28(v75, v17, v11);
  v29 = *v2;
  v30 = v2[1];
  v65 = v2 + 1;
  v80 = v2;
  v31 = v73;
  v32 = v2[2];
  v59[1] = v2 + 2;
  v84 = v29;
  v85 = v30;
  v86 = v32;
  v33 = *(v4 - 8);
  v76 = *(v33 + 16);
  v77 = v33 + 16;
  v76(v73, v79, v4);
  v78 = v33;
  v81 = *(v33 + 56);
  v82 = v33 + 56;
  v81(v31, 0, 1, v4);

  v34 = v72;
  v35 = CRUnorderedTree.children(of:)(v31, v72);
  (*(v70 + 8))(v31, v71);

  if ((v35 & 0xC000000000000001) != 0)
  {
    sub_1AE23D93C();
    sub_1AE23D36C();
    v35 = v84;
    v36 = v85;
    v37 = v86;
    v38 = v87;
    v39 = v88;
  }

  else
  {
    v38 = 0;
    v40 = -1 << *(v35 + 32);
    v36 = v35 + 56;
    v37 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v35 + 56);
  }

  v72 = v37;
  v43 = (v37 + 64) >> 6;
  v44 = (v78 + 8);
  while (v35 < 0)
  {
    if (!sub_1AE23D9AC())
    {
LABEL_22:
      v81(v6, 1, 1, v4);
      sub_1ADDDCE74(v35);
      v48 = v63;
      v49 = v67;
      (*(v63 + 16))(v67, v75, v66);
      v50 = sub_1AE23D38C();
      swift_getWitnessTable();
      sub_1AE23CB1C();
      v51 = sub_1AE23CB6C();
      v53 = v79;
      v54 = v61;
      if (*v52)
      {
        sub_1ADFB1024(v79, v50);
      }

      v51(v83, 0);
      v55 = *(v48 + 8);
      v56 = v66;
      v55(v49, v66);
      v57 = v68;
      CRDictionary.removeValue(forKey:)(v53, v60, v68);
      (*(v62 + 8))(v57, v54);
      sub_1ADFB1024(v53, v50);
      v58 = v73;
      v76(v73, v53, v4);
      v81(v58, 0, 1, v4);
      sub_1ADE1E114(v58, v4, v69);
      v83[0] = 0;
      sub_1AE23CB8C();
      v55(v75, v56);
      return;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_12:
    v81(v6, 0, 1, v4);
    CRUnorderedTree.remove(_:)(v6, v34);
    (*v44)(v6, v4);
  }

  if (v39)
  {
    v45 = v38;
LABEL_11:
    v46 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v76(v6, *(v35 + 48) + *(v78 + 72) * (v46 | (v45 << 6)), v4);
    goto LABEL_12;
  }

  v47 = v38;
  while (1)
  {
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v45 >= v43)
    {
      goto LABEL_22;
    }

    v39 = *(v36 + 8 * v45);
    ++v47;
    if (v39)
    {
      v38 = v45;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t CRUnorderedTree.parent(of:)@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for TreeNode(255, v5, v6, v7);
  v9 = sub_1AE23D7CC();
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *v3;
  if (sub_1AE23D37C())
  {
    v13 = *(*(v5 - 8) + 56);

    return v13(a3, 1, 1, v5);
  }

  else
  {
    v19 = a3;
    v21[6] = v12;
    WitnessTable = swift_getWitnessTable();
    v21[0] = v5;
    v21[1] = v8;
    v21[2] = v6;
    v21[3] = v7;
    v21[4] = &off_1F23C93F8;
    v21[5] = WitnessTable;
    type metadata accessor for CRDictionary(0, v21);
    CRDictionary.subscript.getter(v16, v11);
    v17 = *(v8 - 8);
    if ((*(v17 + 48))(v11, 1, v8) == 1)
    {
      (*(v20 + 8))(v11, v9);
      return (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
    }

    else
    {
      sub_1ADE17570(v8, v19);
      return (*(v17 + 8))(v11, v8);
    }
  }
}

uint64_t sub_1AE18CB30(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[2];
  v58 = a2[4];
  v59 = v4;
  v6 = type metadata accessor for TreeNode(0, v5, v4, v58);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v42 - v10;
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1AE23D7CC();
  v13 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v56 = *v2;
  sub_1AE23DDAC();
  v21 = v7;
  swift_allocObject();
  v22 = sub_1AE23CFFC();
  v23 = v21[2];
  v23(v24, a1, v6);
  sub_1ADE0FCBC(v22, v6);
  v66 = v25;
  v55 = a1;
  v52 = v21 + 2;
  v51 = v23;
  v23(v20, a1, v6);
  v26 = v21[7];
  v50 = v21 + 7;
  v49 = v26;
  v26(v20, 0, 1, v6);
  v27 = *(v13 + 16);
  v48 = v13 + 16;
  v47 = v27;
  v27(v17, v20, v60);
  v61 = v21[6];
  v62 = v21 + 6;
  if (v61(v17, 1, v6) == 1)
  {
    v28 = *(v13 + 8);
LABEL_3:
    v29 = v60;
    v28(v20, v60);
    v28(v17, v29);
  }

  else
  {
    v45 = *(v46 + 48);
    v43 = (v46 + 32);
    v42 = v21;
    v30 = (v21 + 4);
    v44 = (v46 + 8);
    v46 = v13 + 8;
    while (1)
    {
      if (v45(v17, 1, v5) == 1)
      {
        (*v46)(v20, v60);
        (v42[1])(v17, v6);
        return v66;
      }

      (*v43)(v63, v17, v5);
      v65[6] = v56;
      WitnessTable = swift_getWitnessTable();
      v65[0] = v5;
      v65[1] = v6;
      v32 = v58;
      v65[2] = v59;
      v65[3] = v58;
      v65[4] = &off_1F23C93F8;
      v65[5] = WitnessTable;
      type metadata accessor for CRDictionary(0, v65);
      v33 = v57;
      CRDictionary.subscript.getter(v34, v57);
      v35 = v33;
      if (v61(v33, 1, v6) == 1)
      {
        (*v44)(v63, v5);
        v39 = *v46;
        v40 = v60;
        (*v46)(v20, v60);
        v39(v33, v40);
        return v66;
      }

      v36 = *v30;
      v37 = v54;
      (*v30)(v54, v35, v6);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v64 = *(v32 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        break;
      }

      v51(v53, v37, v6);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      (*v44)(v63, v5);
      v28 = *v46;
      v38 = v60;
      (*v46)(v20, v60);
      v36(v20, v37, v6);
      v49(v20, 0, 1, v6);
      v47(v17, v20, v38);
      if (v61(v17, 1, v6) == 1)
      {
        goto LABEL_3;
      }
    }

    (v42[1])(v37, v6);
    (*v44)(v63, v5);
    (*v46)(v20, v60);
  }

  return v66;
}

uint64_t sub_1AE18D284(uint64_t a1, void *a2)
{
  v151 = type metadata accessor for FinalizedTimestamp(0);
  v186 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v142 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v138 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v135 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v135 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v135 - v12;
  v13 = a2[2];
  v163 = sub_1AE23D7CC();
  v14 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v153 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v135 - v17;
  v18 = a2[3];
  v19 = a2[4];
  v137 = a2;
  v170 = v18;
  v20 = type metadata accessor for TreeNode(255, v13, v18, v19);
  v21 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v169 = &v135 - v22;
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v160 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v135 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v188 = &v135 - v29;
  v135 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v135 - v32;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v141 = &v135 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v159 = &v135 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v175 = &v135 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v171 = &v135 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v190 = &v135 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v149 = &v135 - v47;
  v191 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v136 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v166 = &v135 - v50;
  v199 = sub_1AE23C9EC();
  if (!sub_1AE23D0AC())
  {
  }

  v51 = 0;
  v156 = *(TupleTypeMetadata2 + 48);
  v157 = v49;
  v158 = (v49 + 16);
  v187 = (v33 + 32);
  v179 = (v23 + 32);
  v182 = (v23 + 16);
  v176 = v33 + 16;
  v189 = v33 + 48;
  v147 = v33;
  v52 = (v33 + 8);
  v167 = (v23 + 48);
  v152 = v23;
  v185 = (v23 + 8);
  v162 = (v14 + 8);
  v139 = (v186 + 56);
  v146 = (v186 + 48);
  v53 = v173;
  v54 = v150;
  v55 = v149;
  v155 = a1;
  v154 = TupleTypeMetadata2;
  v164 = v52;
  v184 = v19;
  while (1)
  {
    v57 = TupleTypeMetadata2;
    v58 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v58)
    {
      result = (*(v157 + 16))(v166, a1 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v51, v57);
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v136 != 8)
      {
        goto LABEL_56;
      }

      v192 = result;
      (*v158)(v166, &v192, v57);
      result = swift_unknownObjectRelease();
    }

    v60 = __OFADD__(v51, 1);
    v61 = v51 + 1;
    v62 = v164;
    if (v60)
    {
      break;
    }

    v165 = v61;
    v63 = v166;
    v186 = *v187;
    (v186)(v55, v166, v13);
    v178 = *v179;
    (v178)(v54, &v63[v156], v191);
    v64 = v54;
    v180 = v183[2];
    if ((sub_1AE23D37C() & 1) == 0)
    {
      v65 = *v182;
      v66 = v55;
      v67 = v188;
      v68 = v191;
      (*v182)(v188, v64, v191);
      sub_1ADE0FC48(v13, v13);
      v69 = v147;
      swift_allocObject();
      v70 = sub_1AE23CFFC();
      v177 = *(v69 + 16);
      v177(v71, v66, v13);
      sub_1ADE0FCBC(v70, v13);
      v192 = v72;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v73 = v184;
      v198 = sub_1AE23D39C();
      v181 = v65;
      v65(v53, v67, v68);
      v74 = *(v69 + 48);
      if (v74(v53, 1, v13) == 1)
      {
        v75 = *v185;
LABEL_25:
        v102 = v191;
        v75(v188, v191);
        v54 = v150;
        v75(v150, v102);
        v55 = v149;
        (*v62)(v149, v13);

        v75(v53, v102);
        goto LABEL_4;
      }

      v145 = (v185 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v174 = v74;
      v76 = v175;
      v77 = v73;
      while (2)
      {
        (v186)(v190, v53, v13);
        if (sub_1AE23D37C())
        {
          v82 = *v62;
          (*v62)(v190, v13);
        }

        else
        {
          v79 = v177;
          v177(v76, v190, v13);
          sub_1AE23D38C();
          v80 = v171;
          v81 = sub_1AE23D33C();
          v82 = *v62;
          (*v62)(v80, v13);
          if (v81)
          {
            v83 = v79;
            v84 = v191;
            v83(v76, v190, v13);
            sub_1AE23D33C();
            v85 = v82;
            v82(v80, v13);
            WitnessTable = swift_getWitnessTable();
            v192 = v13;
            v193 = v84;
            v194 = v170;
            v195 = v77;
            v196 = &off_1F23C93F8;
            v197 = WitnessTable;
            v87 = type metadata accessor for CRDictionary(0, &v192);
            v88 = v169;
            CRDictionary.subscript.getter(v89, v169);
            result = (*v167)(v88, 1, v84);
            if (result == 1)
            {
              goto LABEL_55;
            }

            v75 = *v185;
            v90 = v188;
            v91 = v191;
            (*v185)(v188, v191);
            (v178)(v90, v88, v91);
            v92 = v168;
            sub_1ADE17570(v91, v168);
            v93 = v92;
            v94 = v174;
            v95 = v174(v92, 1, v13);
            v96 = v172;
            if (v95 == 1)
            {
              v85(v190, v13);
              (*v162)(v93, v163);
              goto LABEL_14;
            }

            v161 = v87;
            v97 = v159;
            (v186)();
            v98 = v198;
            if ((sub_1AE23D37C() & 1) == 0)
            {
              v85(v97, v13);
              v85(v190, v13);
LABEL_14:
              v53 = v173;
              v181(v173, v188, v191);
              v78 = v94(v53, 1, v13);
              v77 = v184;
              v76 = v175;
              if (v78 == 1)
              {
                goto LABEL_25;
              }

              continue;
            }

            v145 = v85;
            v178 = v75;
            v103 = v183[1];
            v104 = v183[2];
            v192 = *v183;
            v193 = v103;
            v194 = v104;

            v105 = sub_1AE18CB30(v188, v137);

            v177(v141, v159, v13);
            v177 = *v139;
            (v177)(v144, 1, 1, v151);
            if (sub_1AE23D0AC())
            {
              v106 = 0;
              v143 = v98;
              do
              {
                v107 = sub_1AE23D08C();
                sub_1AE23D00C();
                if (v107)
                {
                  result = (v181)(v160, v105 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v106, v191);
                  v108 = v153;
                  v109 = v178;
                  v110 = v106 + 1;
                  if (__OFADD__(v106, 1))
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  result = sub_1AE23DAAC();
                  v108 = v153;
                  v109 = v178;
                  if (v135 != 8)
                  {
                    goto LABEL_57;
                  }

                  v192 = result;
                  v181(v160, &v192, v191);
                  result = swift_unknownObjectRelease();
                  v110 = v106 + 1;
                  if (__OFADD__(v106, 1))
                  {
                    goto LABEL_54;
                  }
                }

                v180 = v110;
                v111 = v105;
                v112 = v191;
                v113 = v160;
                sub_1ADE17570(v191, v108);
                v109(v113, v112);
                if (v94(v108, 1, v13) == 1)
                {
                  (*v162)(v108, v163);
                  v105 = v111;
                }

                else
                {
                  v114 = v148;
                  (v186)();
                  v192 = *v183;
                  sub_1ADE17038(v115, v96);
                  v116 = *v146;
                  v105 = v111;
                  if ((*v146)(v96, 1, v151) != 1)
                  {
                    v117 = v142;
                    sub_1ADE172E4(v96, v142);
                    v118 = v144;
                    v119 = v140;
                    sub_1ADE17348(v144, v140);
                    v120 = v151;
                    v121 = v116(v119, 1, v151);
                    sub_1ADE1727C(v119);
                    v122 = v121 == 1;
                    v123 = v145;
                    if (!v122)
                    {
                      v125 = v138;
                      sub_1ADE17348(v118, v138);
                      result = (v116)(v125, 1, v120);
                      if (result == 1)
                      {
                        goto LABEL_58;
                      }

                      v126 = *(v120 + 20);
                      v127 = *(v125 + v126);
                      v117 = v142;
                      v128 = *(v142 + v126);
                      if (v127 == v128)
                      {
                        v129 = sub_1ADF5EB00(v125);
                        sub_1ADE173B8(v125);
                        v120 = v151;
                        v118 = v144;
                        if ((v129 & 1) == 0)
                        {
LABEL_43:
                          sub_1ADE173B8(v117);
                          v123(v148, v13);
                          goto LABEL_44;
                        }
                      }

                      else
                      {
                        sub_1ADE173B8(v125);
                        v130 = v127 < v128;
                        v120 = v151;
                        v118 = v144;
                        if (!v130)
                        {
                          goto LABEL_43;
                        }
                      }
                    }

                    sub_1ADE1727C(v118);
                    v124 = v141;
                    v123(v141, v13);
                    sub_1ADE172E4(v117, v118);
                    (v177)(v118, 0, 1, v120);
                    (v186)(v124, v148, v13);
LABEL_44:
                    v96 = v172;
                    goto LABEL_29;
                  }

                  v145(v114, v13);
                  sub_1ADE1727C(v96);
                }

LABEL_29:
                ++v106;
              }

              while (v180 != sub_1AE23D0AC());
            }

            v131 = v141;
            sub_1ADFB14A8(v141, v137);
            sub_1ADE1727C(v144);
            v132 = v145;
            v145(v131, v13);
            v132(v159, v13);
            v132(v190, v13);
            v133 = v191;
            v134 = v178;
            v178(v188, v191);
            v54 = v150;
            v134(v150, v133);
            v55 = v149;
            v132(v149, v13);
            a1 = v155;
LABEL_24:
            v53 = v173;
            goto LABEL_5;
          }

          v82(v190, v13);
        }

        break;
      }

      v99 = *v185;
      v100 = v191;
      (*v185)(v188, v191);
      v101 = v150;
      v99(v150, v100);
      v54 = v101;
      v55 = v149;
      v82(v149, v13);

      a1 = v155;
      goto LABEL_24;
    }

    (*v185)(v54, v191);
    (*v62)(v55, v13);
LABEL_4:
    a1 = v155;
LABEL_5:
    TupleTypeMetadata2 = v154;
    v56 = sub_1AE23D0AC();
    v51 = v165;
    if (v165 == v56)
    {
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1AE18E6C0(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v21 = sub_1AE23D7CC();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v20 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1AE23DFCC();
  v13 = v29;
  *(v12 + 32) = v28;
  *(v12 + 40) = v13;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v14 = *(v5 - 8);
  (*(v14 + 16))(v8, a1, v5);
  (*(v14 + 56))(v8, 0, 1, v5);
  v15 = CRUnorderedTree.children(of:)(v8, a2);
  (*(v6 + 8))(v8, v21);
  v28 = v15;
  v17 = a2[3];
  v16 = a2[4];
  v22 = v5;
  v23 = v17;
  v24 = v16;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  sub_1AE23D38C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38, MEMORY[0x1E69E6328]);
  v18 = sub_1AE23CF3C();

  v28 = v12;
  sub_1ADFB6F58(v18);
  return v28;
}

uint64_t sub_1AE18E944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = type metadata accessor for CRUnorderedTree(0, a2, a3, a4);
  v8 = sub_1AE18E6C0(a1, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v9, 0);
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      MEMORY[0x1B26FB670](v12, v13);

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1ADE0B11C((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = 8224;
      *(v16 + 40) = 0xE200000000000000;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v10;
  return result;
}

uint64_t CRUnorderedTree.description.getter(uint64_t a1)
{
  sub_1AE23D38C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38, MEMORY[0x1E69E6328]);
  sub_1AE23CF3C();

  sub_1AE18F584(&qword_1EB5B8C10, MEMORY[0x1E69E6310]);
  v1 = sub_1AE23CBFC();

  return v1;
}

void CRUnorderedTree.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v9[0] = v3;
  v9[1] = type metadata accessor for TreeNode(255, v3, v4, v5);
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = &off_1F23C93F8;
  v9[5] = swift_getWitnessTable();
  v6 = type metadata accessor for CRDictionary.MergeableDelta(0, v9);
  CRDictionary.MergeableDelta.visitReferences(_:)(a1, v6, v7, v8);
}

uint64_t sub_1AE18ECF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11[0] = a2;
  v11[1] = type metadata accessor for TreeNode(255, a2, a3, a4);
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = &off_1F23C93F8;
  v11[5] = swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary.MergeableDelta(0, v11);
  return (*(*(v9 - 8) + 32))(a5, a1, v9);
}

void CRUnorderedTree.MergeableDelta.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v9 = type metadata accessor for TreeNode(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v19[0] = a2;
  v19[1] = v9;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = &off_1F23C93F8;
  v19[5] = WitnessTable;
  v11 = type metadata accessor for CRDictionary.MergeableDelta(0, v19);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = swift_checkMetadataState();
  v16 = v19[7];
  CRDictionary.MergeableDelta.init(from:)(a1, a2, v15, a3, a4, &off_1F23C93F8, WitnessTable, v14);
  if (!v16)
  {
    (*(v12 + 32))(v18, v14, v11);
  }
}

double CRUnorderedTree.MergeableDelta.encode(to:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v9[0] = v3;
  v9[1] = type metadata accessor for TreeNode(255, v3, v4, v5);
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = &off_1F23C93F8;
  v9[5] = swift_getWitnessTable();
  v6 = type metadata accessor for CRDictionary.MergeableDelta(0, v9);
  return CRDictionary.MergeableDelta.encode(to:)(a1, v6, v7);
}

double CRUnorderedTree<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v13[6] = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v13[0] = v6;
  v13[1] = v9;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CRDictionary(0, v13);
  WitnessTable = swift_getWitnessTable();
  CRDictionary<>.encode(to:)(a1, v10, a3, WitnessTable);

  return result;
}

uint64_t sub_1AE18F13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1AE23D0AC())
  {
    sub_1AE23DA0C();
    v15 = sub_1AE23D9FC();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1AE23D0AC();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1AE23CBBC();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1AE23CCBC();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1AE18F510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CROrderedTree(0, v2[2], v2[3], v2[4]);
  result = sub_1AE188C74(a1, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1AE18F584(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE18F5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CRUnorderedTree(0, v2[2], v2[3], v2[4]);
  result = sub_1AE18E6C0(a1, v5);
  *a2 = result;
  return result;
}

void sub_1AE18F644(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3[0] = a1[2];
  v3[1] = type metadata accessor for TreeNode(255, v3[0], v1, v2);
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = &off_1F23C93F8;
  v3[5] = swift_getWitnessTable();
  type metadata accessor for CRDictionary.MergeableDelta(0, v3);
  sub_1ADFAF3A4();
}

uint64_t sub_1AE18F6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE18F730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVyxAA8TreeNodeOyxG_GSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE18F79C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v5[0] = a1[2];
  v5[1] = type metadata accessor for TreeNode(255, v5[0], v1, v2);
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = &off_1F23C93F8;
  v5[5] = swift_getWitnessTable();
  result = type metadata accessor for CRDictionary.MergeableDelta(319, v5);
  if (v4 <= 0x3F)
  {
    v6 = 0;
    v5[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE18F894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double Anonymous.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v25 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Anonymous(0, a2, a3, v14);
  v15 = *(v24 + 36);
  v16 = *(a2 - 8);
  v17 = *(v16 + 16);
  v26 = a1;
  v27 = a4;
  v17(a4 + v15, a1, a2);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v28 = sub_1ADDCC6B4(&unk_1F23BC168);
  *(&v28 + 1) = v18;
  v19 = sub_1ADDD8E0C(v28);
  v21 = v20;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v19, v21);
  (*(v11 + 8))(v13, v10);
  v22 = v27;
  *v27 = v28;
  *&v28 = MEMORY[0x1E69E7CC8];
  *(&v28 + 1) = MEMORY[0x1E69E7CC8];
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v9[*(type metadata accessor for Replica(0) + 20)] = 0;
  *&v9[*(v25 + 20)] = 0;
  sub_1ADDD8290(v9);
  (*(v16 + 8))(v26, a2);
  sub_1AE017AB8(v9);
  result = *&v28;
  *(v22 + *(v24 + 40)) = v28;
  return result;
}