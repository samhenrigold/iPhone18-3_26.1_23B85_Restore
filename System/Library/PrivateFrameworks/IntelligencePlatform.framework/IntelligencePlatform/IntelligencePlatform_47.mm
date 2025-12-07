uint64_t sub_1ABE1B2C0(uint64_t a1)
{
  v2 = type metadata accessor for KnosisConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE1B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v11 + 32))(&v20 - v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a4;
  (*(v11 + 16))(v13, v17, a5);
  sub_1ABE1B494(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v21, a5, a6);
  result = (*(v11 + 8))(v17, a5);
  *a4 = v21;
  return result;
}

uint64_t sub_1ABE1B494(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v13 = sub_1ABA93DC0(&v42);
  (*(*(a6 - 8) + 32))(v13, a1, a6);
  v14 = *a5;
  v21 = sub_1ABA94FC8(a2, a3, v15, v16, v17, v18, v19, v20, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49);
  if (__OFADD__(v14[2], (v22 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = v21;
  v24 = v22;
  sub_1ABAD219C(qword_1EB4DA900, &unk_1ABF68180);
  if ((sub_1ABF24C64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v31 = sub_1ABA94FC8(a2, a3, v25, v26, v27, v28, v29, v30, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49);
  if ((v24 & 1) != (v32 & 1))
  {
LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v23 = v31;
LABEL_5:
  v33 = *a5;
  if (v24)
  {
    v34 = (v33[7] + 40 * v23);
    sub_1ABA84B54(v34);
    return sub_1ABA946C0(&v42, v34);
  }

  else
  {
    v36 = sub_1ABA94E50(&v42, v44);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    sub_1ABE1B6BC(v23, a2, a3, v39, v33, a6, a7);

    return sub_1ABA84B54(&v42);
  }
}

uint64_t sub_1ABE1B6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1ABA93DC0(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1ABA946C0(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1ABE1B794()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 29295;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = &unk_1F208E668;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x80000001ABF92540;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABE1B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1ABE1B8B8()
{
  sub_1ABA7E2A8();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 24);
  v7 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  sub_1ABA7BD7C();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = *(v9 + 16);
  v28 = v4;
  v22(v15, v4, v7);
  if (sub_1ABA7E1E0(v15, 1, v6) == 1)
  {
    v23 = *(v9 + 8);
    v23(v15, v7);
    sub_1ABE1BDBC();
    sub_1ABA810DC();
    (*(v24 + 8))(v2);
    v23(v28, v7);
    v23(v12, v7);
  }

  else
  {
    (*(v17 + 32))(v21, v15, v6);
    sub_1ABE1BB50();
    sub_1ABA810DC();
    (*(v25 + 8))(v2);
    v26 = *(v9 + 8);
    v26(v28, v7);
    v26(v12, v7);
    (*(v17 + 8))(v21, v6);
  }

  sub_1ABA7BC1C();
}

void sub_1ABE1BB50()
{
  sub_1ABA7E2A8();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v34 = v4;
  v6 = *(v5 + 16);
  sub_1ABA7BD7C();
  v31 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v13 = *(v12 + 24);
  sub_1ABA7BD7C();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v31 - v25;
  (*(v15 + 16))(v19, v3, v13, v24);
  sub_1ABA7C2D4();
  sub_1ABF23A44();
  v27 = v33;
  sub_1ABF239A4();
  if (sub_1ABA7E1E0(v26, 1, v13) == 1)
  {
    (*(v22 + 8))(v26, v20);
    (*(v31 + 16))(v11, v27, v6);
    sub_1ABA7C2D4();
    sub_1ABF241F4();
    sub_1ABF241A4();
    v28 = 1;
    v29 = v34;
  }

  else
  {
    v30 = v34;
    (*(v15 + 32))(v34, v26, v13);
    v28 = 0;
    v29 = v30;
  }

  sub_1ABA7B9B4(v29, v28, 1, v13);
  sub_1ABA7BC1C();
}

void sub_1ABE1BDBC()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v36 = v6;
  v7 = *(v2 + 16);
  sub_1ABA7BD7C();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v32 = v11 - v10;
  v13 = *(v12 + 24);
  v14 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1ABA7BD7C();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v34 = (v24 - v23);
  v25 = *(v3 + 32);
  sub_1ABA7C2D4();
  sub_1ABF23A44();
  v35 = v1;
  sub_1ABF23994();
  if (sub_1ABA7E1E0(v19, 1, v13) == 1)
  {
    (*(v16 + 8))(v19, v14);
    v26 = 1;
    v27 = v36;
LABEL_5:
    sub_1ABA7B9B4(v27, v26, 1, v13);
    sub_1ABA7BC1C();
    return;
  }

  v28 = *(v21 + 32);
  v31 = v21 + 32;
  v29 = v28(v34, v19, v13);
  v37 = *v35;
  MEMORY[0x1EEE9AC00](v29);
  *(&v31 - 4) = v7;
  *(&v31 - 3) = v13;
  *(&v31 - 2) = v25;
  *(&v31 - 1) = v5;
  sub_1ABA7C2D4();
  sub_1ABF241F4();

  sub_1ABA7F390();
  swift_getWitnessTable();
  sub_1ABF244D4();

  if ((v38 & 1) == 0)
  {
    v30 = v32;
    sub_1ABF241B4();
    (*(v33 + 8))(v30, v7);
    v27 = v36;
    v28(v36, v34, v13);
    v26 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1ABE1C0D4(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1ABE1C0E4()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v17 = v4;
  v6 = v5;
  v7 = sub_1ABF247E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  sub_1ABA7BD7C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  sub_1ABF24224();
  (*(v11 + 16))(v6, v15, v3);
  sub_1ABF23A64();
  if (sub_1ABA7E1E0(v9, 1, v1) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 8))(v15, v3);
    (*(*(v1 - 8) + 32))(v17, v9, v1);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABE1C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ABE1C0CC(*v3, a2, *(a1 + 16));
  *a3 = result;
  return result;
}

void (*sub_1ABE1C2C4(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = sub_1ABAFDD10(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = sub_1ABAFDD10(*(v11 + 64));
  v7[6] = v12;
  v13 = sub_1ABE1C4BC(v7, *a2, *v3, v3[1], v9, v8);
  v15 = v14;
  v7[7] = v13;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v15, v8);
  return sub_1ABE1C444;
}

void sub_1ABE1C444(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1ABE1C4BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v8 = *(TupleTypeMetadata2 - 8);
  a1[1] = v8;
  a1[2] = sub_1ABAFDD10(*(v8 + 64));
  sub_1ABE1C0E4();
  return sub_1ABE1C5D0;
}

void sub_1ABE1C5D0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1ABE1C644@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE1C0D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABE1C670(uint64_t *a1)
{
  result = sub_1ABE1C0D4(*a1);
  *a1 = result;
  return result;
}

__n128 sub_1ABE1C69C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1ABE1C6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ABE1C700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1ABE1C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getTupleTypeMetadata2();
  v6 = sub_1ABF241F4();
  sub_1ABA7F390();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1ABB66290(sub_1ABE1CB1C, v11, v6, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  v12 = a1;
  swift_getWitnessTable();
  sub_1ABF239D4();
  return v9;
}

uint64_t sub_1ABE1C860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata2, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

uint64_t sub_1ABE1C9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ABE1C754(a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1ABE1C9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1ABF24204() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](a2, a4, a5, a6, a7, a8);
}

uint64_t sub_1ABE1CB7C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = a1;
  v50 = sub_1ABF23744();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v48 = sub_1ABF23774();
  sub_1ABA7BB64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v42 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  v47 = *v2;
  v26 = *(v2 + 3);
  v46 = *(v2 + 2);
  v45 = v26;
  v27 = *(v2 + 5);
  v44 = *(v2 + 4);
  v43 = v27;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v28 = sub_1ABA7AA24(v10, qword_1ED871EF8);
  (*(v12 + 16))(v16, v28, v10);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v29 = sub_1ABF23764();
  v30 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v29, v30, v32, "Knosis.parseKGQ", "", v31, 2u);
    MEMORY[0x1AC5AB8B0](v31, -1, -1);
  }

  v33 = v50;
  (*(v4 + 16))(v49, v9, v50);
  sub_1ABF237B4();
  swift_allocObject();
  v34 = sub_1ABF237A4();
  (*(v4 + 8))(v9, v33);
  *v25 = "Knosis.parseKGQ";
  *(v25 + 8) = 15;
  *(v25 + 16) = 2;
  *(v25 + 24) = v34;
  (*(v18 + 32))(v25 + *(v42 + 24), v22, v48);
  v35 = v46;
  v36 = v45;
  sub_1ABDEC5F8(v51, v52, v46, v45, v58);
  v53 = v47;
  v54 = v35;
  v55 = v36;
  v56 = v44;
  v57 = v43;
  v37 = v58[10];
  sub_1ABE1D8D4(v58);
  if (v37)
  {
    sub_1ABA903B8();
  }

  else
  {
    v39 = v38;
    sub_1ABA903B8();
    v33 = *(v39 + 16);
  }

  sub_1ABE1D62C(v25);
  sub_1ABBA4F10(v25);
  return v33;
}

uint64_t sub_1ABE1D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1ABE1D0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a4;
  v46 = a3;
  v42 = a2;

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  v50 = *(a1 + 16);
  if (v50)
  {
    v7 = 0;
    v8 = (a1 + 72);
    v48 = a1;
    while (v7 < *(a1 + 16))
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 4);
      HIDWORD(v54) = *(v8 - 16);
      v11 = *(v8 - 1);
      v57 = *v8;

      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAAA4F4();
        v5 = v38;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1ABA7BBEC(v12);
        sub_1ABAAA4F4();
        v5 = v39;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;

      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1ABA94FC8(v9, v10, v15, v16, v17, v18, v19, v20, v42, v44, v46, v48, v50, v5, v54, v11, v57, v6);
      if (__OFADD__(*(v6 + 16), (v22 & 1) == 0))
      {
        goto LABEL_19;
      }

      v23 = v21;
      v24 = v22;
      sub_1ABAD219C(&qword_1EB4DA9A0, &qword_1ABF68588);
      if (sub_1ABF24C64())
      {
        v31 = sub_1ABA94FC8(v9, v10, v25, v26, v27, v28, v29, v30, v43, v45, v47, v49, v51, v52, v55, v56, v58, v59);
        if ((v24 & 1) != (v32 & 1))
        {
          goto LABEL_21;
        }

        v23 = v31;
      }

      v6 = v59;
      if (v24)
      {
        sub_1ABAA4B38(*(v59 + 56) + 48 * v23, v43, v45, v47, v49, v51, v52, v55, v56, v58);
      }

      else
      {
        sub_1ABA7F258(v59 + 8 * (v23 >> 6));
        v34 = (v33 + 16 * v23);
        *v34 = v9;
        v34[1] = v10;
        sub_1ABAA4B38(*(v59 + 56) + 48 * v23, v43, v45, v47, v49, v51, v52, v55, v56, v58);

        v35 = *(v59 + 16);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_20;
        }

        *(v59 + 16) = v37;
      }

      ++v7;
      v8 += 6;
      a1 = v48;
      v5 = v53;
      if (v50 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1ABF25104();
    __break(1u);
  }

  else
  {
LABEL_17:

    result = sub_1ABDEC2F4(v5, v42);
    *v44 = v6;
    v44[1] = v42;
    v44[2] = result;
    v44[3] = v41;
    v44[4] = 500;
    v44[5] = v46;
  }

  return result;
}

void *sub_1ABE1D390()
{
  result = sub_1ABF239C4();
  off_1EB4DA988 = result;
  return result;
}

uint64_t sub_1ABE1D3CC()
{
  v1 = v0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0;
  type metadata accessor for KnosisQueryParam();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v2 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  *(v1 + 16) = sub_1ABE73A74(0, 0xE000000000000000, v2);
  return v1;
}

uint64_t sub_1ABE1D46C()
{

  return v0;
}

uint64_t sub_1ABE1D4B8()
{
  sub_1ABE1D46C();

  return swift_deallocClassInstance();
}

uint64_t ParserError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x457265737261503CLL, 0xED000020726F7272);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](544497952, 0xE400000000000000);
  if (v3)
  {
    v7 = sub_1ABDEC1BC(v1, v2, v3, v4);
    v9 = v8;
  }

  else
  {
    v9 = 0xE100000000000000;
    v7 = 45;
  }

  MEMORY[0x1AC5A9410](v7, v9);

  MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
  MEMORY[0x1AC5A9410](v5, v6);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1ABE1D62C(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1ABE1D8D4(uint64_t a1)
{
  v621 = v1[2];
  v626 = v1[1];
  v616 = v1[3];
  v631 = v1[5];
  v635 = v1[4];
  v651 = MEMORY[0x1E69E7CC0];
  v639 = type metadata accessor for Node();
  v2 = swift_allocObject();
  v3 = sub_1ABE1D3CC();
  v4 = &v651;
  MEMORY[0x1AC5A9710](v3);
  v5 = *((v651 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v651 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5 >> 1)
  {
    sub_1ABA7BBEC(v5);
    sub_1ABF24134();
  }

  sub_1ABF24184();
  v6 = 0;
  HIDWORD(v597) = 0;
  v7 = v651;
  v656 = v651;
  v592 = 0x80000001ABF91620;
  v8 = a1;
LABEL_4:
  v607 = v6;
LABEL_5:
  v648 = v7;
  while (2)
  {
    v9 = *(v8 + 56);
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_388:
      sub_1ABA7F8E8();
      sub_1ABAA4698(v549);
      sub_1ABAA54D8();
      v550 = sub_1ABE22DF0();
      sub_1ABA7BD00(&type metadata for ParserError, v550);
      sub_1ABA8C3F0();
      v521 = 1;
LABEL_380:
      v522 = sub_1ABAA5048(v520, v521);
      sub_1ABA8ECB0(v522, v523, v524, v525, v526, v527, v528, v529, v587, v592, v597, v602);

      goto LABEL_386;
    }

    *(v8 + 56) = v10;
    v11 = *(v8 + 48);
    if (v10 >= *(v11 + 16))
    {
      v13 = sub_1ABDEC8B8();
      v14 = v24;
      v26 = v25;
      v15 = v27;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7C708();
        v11 = isUniquelyReferenced_nonNull_native;
      }

      v2 = *(v11 + 16);
      v28 = *(v11 + 24);
      v4 = v2 + 1;
      if (v2 >= v28 >> 1)
      {
        v43 = sub_1ABA7BBEC(v28);
        sub_1ABA9A6A8(v43, v2 + 1);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      *(v11 + 16) = v4;
      v29 = v11 + 32 * v2;
      *(v29 + 32) = v13;
      *(v29 + 40) = v14;
      *(v29 + 48) = v26;
      v661 = v26;
      *(v29 + 56) = v15;
      v8 = a1;
      *(a1 + 48) = v11;
    }

    else
    {
      if (v10 < 0)
      {
        __break(1u);
LABEL_398:
        __break(1u);

LABEL_382:

        return;
      }

      v12 = v11 + 32 * v10;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v15 = *(v12 + 56);
      v661 = *(v12 + 48);
    }

    *(v8 + 56) = v10;
    v30 = v7 >> 62;
    switch(v13)
    {
      case 1:
        sub_1ABDEC684();
        v2 = v205;

        if (v2 != 11)
        {
          goto LABEL_388;
        }

        sub_1ABA8F9FC(v206, v207, v208, v209, v210, v211, v212, v213, v587, v592, v597, v602, v607, v616, v621, v626);
        v653 = v215;
        v654 = v214;
        sub_1ABE1FAB8(1, v14, v661, v15, BYTE4(v597) & 1);
        if (v7 >> 62)
        {
          if (sub_1ABA94D04())
          {
LABEL_122:
            v4 = &v656;
            MEMORY[0x1AC5A9710]();
            sub_1ABA810F0();
            if (v84)
            {
              v488 = sub_1ABA7BBEC(v216);
              sub_1ABAA425C(v488);
            }

            sub_1ABF24184();
            HIDWORD(v597) = 0;
            v7 = v656;
            goto LABEL_365;
          }
        }

        else if (sub_1ABA8E44C())
        {
          goto LABEL_122;
        }

        v656 = MEMORY[0x1E69E7CC0];
        goto LABEL_122;
      case 2:
      case 11:
        v645 = v13;
        v86 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
        }

        else
        {
          *(v8 + 56) = v86;
          if (v86 >= *(v11 + 16))
          {
            v602 = v14;
            v4 = sub_1ABDEC8B8();
            v2 = v217;
            v89 = v218;
            v220 = v219;

            v221 = v15;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v11 = v485;
            }

            v223 = *(v11 + 16);
            v222 = *(v11 + 24);
            if (v223 >= v222 >> 1)
            {
              v486 = sub_1ABA7BBEC(v222);
              sub_1ABA9A6A8(v486, v223 + 1);
              v11 = v487;
            }

            *(v11 + 16) = v223 + 1;
            v224 = v11 + 32 * v223;
            *(v224 + 32) = v4;
            *(v224 + 40) = v2;
            *(v224 + 48) = v89;
            *(v224 + 56) = v220;
            v87 = v648;
            v8 = a1;
            *(a1 + 48) = v11;
            v15 = v221;
            v14 = v602;
            goto LABEL_131;
          }

          if ((v86 & 0x8000000000000000) == 0)
          {
            v87 = v7;
            v88 = v11 + 32 * v86;
            v4 = *(v88 + 32);
            v2 = *(v88 + 40);
            v89 = *(v88 + 48);

LABEL_131:
            *(v8 + 56) = v86 - 1;
            if (v4 > 0x10u || ((1 << v4) & 0x12910) == 0)
            {

              v7 = v87;
              v91 = v607;
              goto LABEL_367;
            }

            sub_1ABA7F8E8();
            sub_1ABAA4698(v533);
            sub_1ABAA54D8();

            MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
            MEMORY[0x1AC5A9410](v2, v89);

            v534 = sub_1ABE22DF0();
            sub_1ABA7BD00(&type metadata for ParserError, v534);
            sub_1ABA8C3F0();
            *v535 = v645;
            v535[1] = v14;
            v535[2] = v8;
            goto LABEL_385;
          }
        }

        __break(1u);
        goto LABEL_410;
      case 3:
      case 6:
        v31 = v13;
        v32 = v14;
        v33 = v15;
        v34 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_391;
        }

        *(v8 + 56) = v34;
        if (v34 >= *(v11 + 16))
        {
          v4 = sub_1ABDEC8B8();
          v642 = v36;
          v644 = v35;
          v10 = v37;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7C708();
            v11 = v44;
          }

          v39 = *(v11 + 16);
          v38 = *(v11 + 24);
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v45 = sub_1ABA7BBEC(v38);
            v587 = v46;
            sub_1ABA9A6A8(v45, v46);
            v40 = v587;
            v11 = v47;
          }

          *(v11 + 16) = v40;
          v41 = v11 + 32 * v39;
          *(v41 + 32) = v4;
          *(v41 + 40) = v644;
          *(v41 + 48) = v10;
          *(v41 + 56) = v642;

          v7 = v648;
          v8 = a1;
          *(a1 + 48) = v11;
        }

        else
        {
          if (v34 < 0)
          {
            goto LABEL_398;
          }

          v4 = *(v11 + 32 * v34 + 32);
        }

        *(v8 + 56) = v34 - 1;
        if (v4 != 8 && v4 != 13)
        {
          v15 = v33;
          v14 = v32;
          v13 = v31;
          if ((v597 & 0x100000000) != 0)
          {
            goto LABEL_395;
          }

          if (v4 != 2 && v4 != 12 && v4 != 16)
          {
            if (v4 == 11)
            {
LABEL_395:
              v651 = v14;
              v652 = v661;

              MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF92780);
              v558 = sub_1ABE22DF0();
              sub_1ABA7BD00(&type metadata for ParserError, v558);
              sub_1ABA8C3F0();
              v560 = v31;
            }

            else
            {
              sub_1ABA7F8E8();
              sub_1ABAA4698(v569);
              sub_1ABAA54D8();

              v570 = sub_1ABE22DF0();
              sub_1ABA7BD00(&type metadata for ParserError, v570);
              sub_1ABA8C3F0();
              v560 = v31;
            }

            v561 = sub_1ABAA5048(v559, v560);
            sub_1ABA8ECB0(v561, v562, v563, v564, v565, v566, v567, v568, v587, v592, v597, v602);
            goto LABEL_386;
          }

          sub_1ABA8F9FC(isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v22, v23, v587, v592, v597, v602, v607, v616, v621, v626);
          v653 = v236;
          v654 = v235;
          v2 = v30;
          if (v30)
          {
            v237 = sub_1ABF24CA4();
          }

          else
          {
            v237 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v238 = v7;
          if (!v237)
          {
            sub_1ABA7DEEC(0, v228, v229, v230, v231, v232, v233, v234, v587, v592, v597, v602, v611, v616, v621, v626, v631, v635, v639);
            swift_allocObject();
            sub_1ABAA3DC4();
            goto LABEL_172;
          }

          v92 = __OFSUB__(v237, 1);
          v239 = v237 - 1;
          if (!v92)
          {
            if ((v7 & 0xC000000000000001) == 0)
            {
              if ((v239 & 0x8000000000000000) == 0)
              {
                sub_1ABA83C64();
                if (!v84)
                {
                  v10 = *(v7 + 8 * v240 + 32);

                  goto LABEL_172;
                }

LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
                goto LABEL_429;
              }

LABEL_426:
              __break(1u);
              goto LABEL_427;
            }

            v10 = MEMORY[0x1AC5AA170](v239, v7);
LABEL_172:
            v4 = &v651;
            sub_1ABE217C4(v10, v13, v14, v661, v15);
            if (!v640)
            {

              if (!v2)
              {
                v271 = v7;
                v272 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v272)
                {
                  goto LABEL_175;
                }

LABEL_180:
                sub_1ABA7DEEC(v272, v271, v265, v266, v267, v268, v269, v270, v587, v592, v597, v602, v611, v616, v621, v626, v631, v635, v639);
                v4 = swift_allocObject();
                sub_1ABE1D3CC();
LABEL_181:
                v274 = *(v4 + 83);

                if (v274)
                {
                  HIDWORD(v597) = 0;
                  v91 = v611;
LABEL_209:
                  v7 = v238;
                  goto LABEL_367;
                }

                v281 = v7;
                if (v2)
                {
                  v282 = sub_1ABF24CA4();
                  v281 = v7;
                  if (!v282)
                  {
                    goto LABEL_206;
                  }

LABEL_185:
                  v92 = __OFSUB__(v282, 1);
                  v283 = v282 - 1;
                  v91 = v611;
                  if (v92)
                  {
                    goto LABEL_438;
                  }

                  if (v283 < 0)
                  {
                    goto LABEL_439;
                  }

                  sub_1ABA83C64();
                  if (v84)
                  {
                    goto LABEL_440;
                  }

                  sub_1ABA842C4();
                }

                else
                {
                  v282 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v282)
                  {
                    goto LABEL_185;
                  }

LABEL_206:
                  sub_1ABA7DEEC(v282, v281, v275, v276, v277, v278, v279, v280, v587, v592, v597, v602, v611, v616, v621, v626, v631, v635, v639);
                  v4 = swift_allocObject();
                  sub_1ABE1D3CC();
                  v91 = v612;
                }

                v316 = *(v4 + 72);
                v92 = __OFADD__(v316, 1);
                v317 = v316 + 1;
                if (!v92)
                {
                  *(v4 + 72) = v317;

                  HIDWORD(v597) = 0;
                  goto LABEL_209;
                }

LABEL_432:
                __break(1u);
LABEL_433:
                __break(1u);
LABEL_434:
                __break(1u);
                goto LABEL_435;
              }

              v272 = sub_1ABF24CA4();
              v271 = v7;
              if (!v272)
              {
                goto LABEL_180;
              }

LABEL_175:
              v92 = __OFSUB__(v272, 1);
              v273 = v272 - 1;
              if (v92)
              {
                goto LABEL_428;
              }

              if (v273 < 0)
              {
LABEL_429:
                __break(1u);
              }

              else
              {
                sub_1ABA83C64();
                if (!v84)
                {
                  sub_1ABA842C4();
                  goto LABEL_181;
                }
              }

              __break(1u);
LABEL_431:
              __break(1u);
              goto LABEL_432;
            }

LABEL_391:

            goto LABEL_386;
          }

LABEL_425:
          __break(1u);
          goto LABEL_426;
        }

        v2 = v7;

        continue;
      case 4:
        HIDWORD(v597) = 1;
        goto LABEL_366;
      case 7:
        v13 = v7;
        v509 = *(v8 + 16);
        v657 = *v8;
        v658 = v509;
        v510 = *(v8 + 48);
        v659 = *(v8 + 32);
        v660 = v510;
        v511 = sub_1ABDEC828();
        v514 = v513;
        if (v511 != 12)
        {
          v517 = v512;

          v651 = sub_1ABB28D54(51);
          v652 = v518;
          MEMORY[0x1AC5A9410](0xD000000000000031, 0x80000001ABF92630);
          MEMORY[0x1AC5A9410](v517, v514);

          v519 = sub_1ABE22DF0();
          sub_1ABA7BD00(&type metadata for ParserError, v519);
          sub_1ABA8C3F0();
          v521 = 7;
          goto LABEL_380;
        }

        v515 = sub_1ABAAB7C8(v7);
        v516 = v661;
        if (!v515 || sub_1ABAAB7C8(v7) != 1)
        {
          v530 = sub_1ABE22DF0();
          sub_1ABA7BD00(&type metadata for ParserError, v530);
          sub_1ABAA3A78();
          *v531 = 7;
          v531[1] = v14;
          v531[2] = v516;
          v531[3] = v15;

          sub_1ABAA3284();
          *(v2 + 32) = v532 + 19;
          *(v2 + 40) = 0x80000001ABF92670;
          *(v2 + 48) = 0;
          swift_willThrow();

          goto LABEL_386;
        }

        sub_1ABAAB7C0(0, (v7 & 0xC000000000000001) == 0, v7);
        if ((v7 & 0xC000000000000001) != 0)
        {
          goto LABEL_453;
        }

        goto LABEL_378;
      case 8:
        v643 = v15;
        v100 = v7;
        sub_1ABDEC780();

        sub_1ABA7DEEC(v101, v102, v103, v104, v105, v106, v107, v108, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
        v109 = swift_allocObject();
        sub_1ABE1D3CC();
        v655 = v109;
        v110 = v661;

        v111 = *(v8 + 56);
        v646 = v14;
        v603 = v14;
        do
        {
          v112 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
            goto LABEL_407;
          }

          *(v8 + 56) = v112;
          if (v112 >= *(v11 + 16))
          {
            v113 = sub_1ABDEC8B8();
            v115 = v114;
            v117 = v116;
            v119 = v118;
            v10 = v113;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v11 = v196;
            }

            v121 = *(v11 + 16);
            v120 = *(v11 + 24);
            if (v121 >= v120 >> 1)
            {
              v197 = sub_1ABA7BBEC(v120);
              sub_1ABA9A6A8(v197, v121 + 1);
              v11 = v198;
            }

            *(v11 + 16) = v121 + 1;
            v122 = v11 + 32 * v121;
            *(v122 + 32) = v113;
            *(v122 + 40) = v115;
            *(v122 + 48) = v117;
            *(v122 + 56) = v119;
            v100 = v648;
            v8 = a1;
            *(a1 + 48) = v11;
            v14 = v603;
          }

          else if (v112 < 0)
          {
            goto LABEL_405;
          }

          *(v8 + 56) = v112;
          v123 = qword_1EB4D03F0;

          if (v123 != -1)
          {
            swift_once();
          }

          v130 = off_1EB4DA988;
          v131 = v661;
          if (!*(off_1EB4DA988 + 2))
          {
            goto LABEL_402;
          }

          v132 = sub_1ABA94FC8(v646, v110, v124, v125, v126, v127, v128, v129, v588, v593, v598, v603, v608, v617, v622, v627, v632, v636);
          if ((v133 & 1) == 0)
          {
            goto LABEL_403;
          }

          v134 = v100;
          v135 = (v130[7] + 16 * v132);
          v136 = *v135;
          v137 = v135[1];

          sub_1ABA7DEEC(v138, v139, v140, v141, v142, v143, v144, v145, v589, v594, v599, v604, v609, v618, v623, v628, v633, v637, v639);
          swift_allocObject();
          sub_1ABAA3DC4();
          type metadata accessor for KnosisQueryParam();
          v146 = sub_1ABF239C4();
          type metadata accessor for QueryNode();
          swift_allocObject();
          v147 = sub_1ABE73A74(v136, v137, v146);
          *(v10 + 16) = v147;

          v148 = *(v147 + 16);
          v149 = *(v147 + 24);

          if (*(v641 + 16) && (v156 = sub_1ABA94FC8(v148, v149, v150, v151, v152, v153, v154, v155, v590, v595, v600, v605, v610, v619, v624, v629, v634, v638), (v157 & 1) != 0))
          {
            v158 = *(v641 + 56) + 48 * v156;
            v160 = *v158;
            v159 = *(v158 + 8);
            v161 = *(v158 + 16);
            v162 = *(v158 + 24);
            v163 = *(v158 + 40);
            v647 = *(v158 + 32);

            *(v10 + 24) = v160;
            *(v10 + 32) = v159;
            v131 = v661;
            *(v10 + 40) = v161;
            *(v10 + 48) = v162;
            v134 = v648;
            *(v10 + 56) = v647;
            *(v10 + 64) = v163;
            v14 = v605;

            *(v10 + 80) = 0;
          }

          else
          {

            sub_1ABA7DEEC(v172, v173, v174, v175, v176, v177, v178, v179, v590, v595, v600, v605, v610, v619, v624, v629, v634, v638, v639);
            v180 = swift_allocObject();
            sub_1ABE1D3CC();

            v10 = v180;
          }

          v650 = v10;
          v651 = v641;
          sub_1ABA90AE8(v164, v165, v166, v167, v168, v169, v170, v171, v590, v595, v600, v605, v610, v619, v624, v629, v634, v638);
          sub_1ABE20494(a1, &v655, &v650);
          if (v640)
          {

            goto LABEL_382;
          }

          v10 = v181;

          v655 = v10;
          v182 = *(a1 + 56);
          v183 = v182 + 1;
          if (__OFADD__(v182, 1))
          {
            goto LABEL_404;
          }

          v100 = v134;
          *(a1 + 56) = v183;
          v11 = *(a1 + 48);
          v184 = *(v11 + 16);
          v661 = v131;
          if (v183 >= v184)
          {
            v188 = v14;
            v186 = sub_1ABDEC8B8();
            v646 = v189;
            v110 = v190;
            v192 = v191;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7C708();
              v11 = v199;
            }

            v194 = *(v11 + 16);
            v193 = *(v11 + 24);
            if (v194 >= v193 >> 1)
            {
              v200 = sub_1ABA7BBEC(v193);
              sub_1ABA9A6A8(v200, v194 + 1);
              v11 = v201;
            }

            *(v11 + 16) = v194 + 1;
            v195 = v11 + 32 * v194;
            *(v195 + 32) = v186;
            v100 = v648;
            *(v195 + 40) = v646;
            *(v195 + 48) = v110;
            *(v195 + 56) = v192;
            v187 = a1;
            *(a1 + 48) = v11;
            v14 = v188;
          }

          else
          {
            if (v183 < 0)
            {
              goto LABEL_406;
            }

            v185 = v11 + 32 * v183;
            v186 = *(v185 + 32);
            v110 = *(v185 + 48);
            v646 = *(v185 + 40);

            v187 = a1;
          }

          v111 = v183 - 1;
          *(v187 + 56) = v183 - 1;
          v8 = v187;
        }

        while (v186 == 8);

        if (v100 >> 62)
        {
          v241 = sub_1ABF24CA4();
          v15 = v643;
          v13 = v661;
          if (!v241)
          {
            goto LABEL_349;
          }

          if (sub_1ABF24CA4())
          {
            goto LABEL_156;
          }

LABEL_436:
          __break(1u);
          goto LABEL_437;
        }

        v15 = v643;
        v13 = v661;
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_156:
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v100 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v250 = sub_1ABD8EE9C(v100);
          }

          else
          {
            v250 = v100;
          }

          if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            sub_1ABAA61C0();
            v327 = *(v326 + 32);
            *(v328 + 16) = v329;
            v100 = v318;
            v656 = v318;
            goto LABEL_350;
          }

LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
          goto LABEL_443;
        }

LABEL_349:
        sub_1ABA7DEEC(v241, v242, v243, v244, v245, v246, v247, v248, v588, v593, v598, v603, v608, v617, v622, v627, v632, v636, v639);
        v327 = swift_allocObject();
        v318 = sub_1ABE1D3CC();
LABEL_350:
        v650 = v327;
        v651 = v641;
        sub_1ABA90AE8(v318, v319, v320, v321, v322, v323, v324, v325, v588, v593, v598, v603, v608, v617, v622, v627, v632, v636);
        sub_1ABE20178(&v650, v10);
        v13 = v650;
        v489 = *(v650 + 72);
        v92 = __OFADD__(v489, 1);
        v490 = v489 + 1;
        if (v92)
        {
          goto LABEL_431;
        }

        *(v650 + 72) = v490;
        if (v100 >> 62)
        {
          if (!sub_1ABA94D04())
          {
LABEL_353:

            v656 = MEMORY[0x1E69E7CC0];
          }
        }

        else if (!sub_1ABA8E44C())
        {
          goto LABEL_353;
        }

        v4 = &v656;
        MEMORY[0x1AC5A9710](v491);
        sub_1ABA810F0();
        if (v84)
        {
          v493 = sub_1ABA7BBEC(v492);
          sub_1ABAA425C(v493);
        }

        sub_1ABF24184();
        v2 = v656;

        v7 = v2;
LABEL_365:
        v8 = a1;
LABEL_366:
        v91 = v607;
LABEL_367:
        v6 = v91 + 1;
        if (v6 < v635)
        {

          goto LABEL_4;
        }

        sub_1ABA7F8E8();
        v651 = v537 + 1;
        v652 = v536;
        v655 = v635;
        v538 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v538);

        MEMORY[0x1AC5A9410](0x6465686361657220, 0xE800000000000000);
        v539 = sub_1ABE22DF0();
        sub_1ABA7BD00(&type metadata for ParserError, v539);
        sub_1ABA8C3F0();
        *v535 = v540;
        v535[1] = v14;
        v535[2] = v661;
LABEL_385:
        v535[3] = v15;

        sub_1ABA8ECB0(v541, v542, v543, v544, v545, v546, v547, v548, v587, v592, v597, v602);
LABEL_386:

        return;
      case 10:
        v506 = sub_1ABE22DF0();
        sub_1ABA7BD00(&type metadata for ParserError, v506);
        sub_1ABAA3A78();
        *v507 = 10;
        v507[1] = v14;
        v508 = v661;
        v507[2] = v661;
        v507[3] = v15;
        swift_bridgeObjectRetain_n();

        *(v2 + 32) = v14;
        *(v2 + 40) = v508;
        *(v2 + 48) = 2;
        goto LABEL_372;
      case 12:
        if (v7 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_1ABF24CA4();
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_41:
            sub_1ABA7DEEC(isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v22, v23, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
            v48 = v7;
            v59 = swift_allocObject();
            v50 = sub_1ABE1D3CC();
            goto LABEL_42;
          }

          if (!sub_1ABF24CA4())
          {
            goto LABEL_413;
          }
        }

        else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v48 = v7;
        v49 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v7 >> 62 || (v49 & 1) == 0)
        {
          v48 = sub_1ABD8EE9C(v7);
        }

        if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_417;
        }

        sub_1ABAA61C0();
        v59 = *(v58 + 32);
        *(v60 + 16) = v61;
        v656 = v48;
LABEL_42:
        if (*(v59 + 80))
        {
          goto LABEL_51;
        }

        if (v48 >> 62)
        {
          v62 = sub_1ABA94D04();
          v70 = v48;
          if (!v62)
          {
LABEL_48:
            sub_1ABA7DEEC(v62, v63, v64, v65, v66, v67, v68, v69, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
            swift_allocObject();
            sub_1ABE1D3CC();
            goto LABEL_49;
          }
        }

        else
        {
          v62 = sub_1ABA8E44C();
          if (!v62)
          {
            goto LABEL_48;
          }
        }

        if (!sub_1ABB31024(v70))
        {
          goto LABEL_462;
        }

LABEL_49:

        sub_1ABB130E0();
        v72 = v71;

        if (v72)
        {
          *(v59 + 82) = 1;
        }

LABEL_51:
        sub_1ABA8F9FC(v50, v51, v52, v53, v54, v55, v56, v57, v587, v592, v597, v602, v607, v616, v621, v626);
        v653 = v74;
        v654 = v73;
        sub_1ABE1FCB0(v59);
        if (v640)
        {
          goto LABEL_391;
        }

        sub_1ABDEC684();
        v2 = v75;

        if (v2 != 4)
        {
          if (*(v59 + 80) == 1)
          {
            sub_1ABA8F9FC(v48, v76, v77, v78, v79, v80, v81, v82, v587, v592, v597, v602, v607, v616, v621, v626);
            v653 = v347;
            v654 = v346;
            if (sub_1ABAAB7C8(v348))
            {

              v357 = sub_1ABB31024(v356);
              if (!v357)
              {
                goto LABEL_466;
              }

              v358 = v357;
            }

            else
            {
              sub_1ABA7DEEC(0, v349, v350, v351, v352, v353, v354, v355, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
              v358 = swift_allocObject();

              sub_1ABE1D3CC();
            }

            v374 = &v651;
            sub_1ABE20118(v358, v59);
            while (2)
            {

              v13 = v48;
              if (v48 >> 62)
              {
                v382 = sub_1ABF24CA4();
                v13 = v48;
                if (v382)
                {
                  goto LABEL_239;
                }
              }

              else
              {
                v382 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v382)
                {
LABEL_239:
                  v92 = __OFSUB__(v382, 1);
                  v383 = v382 - 1;
                  if (v92)
                  {
                    goto LABEL_441;
                  }

                  if ((v13 & 0xC000000000000001) != 0)
                  {
                    v415 = MEMORY[0x1AC5AA170](v383, v13);
                    v13 = v48;
                    v374 = v415;
                  }

                  else
                  {
                    if (v383 < 0)
                    {
                      goto LABEL_442;
                    }

                    sub_1ABA83C64();
                    if (v84)
                    {
LABEL_443:
                      __break(1u);
LABEL_444:
                      __break(1u);
LABEL_445:
                      __break(1u);
LABEL_446:
                      __break(1u);
LABEL_447:
                      __break(1u);
LABEL_448:
                      __break(1u);
LABEL_449:
                      __break(1u);
LABEL_450:
                      __break(1u);
LABEL_451:
                      __break(1u);
                      goto LABEL_452;
                    }

                    sub_1ABA842C4();
                  }

LABEL_246:

                  v384 = *(v374 + 80);

                  if ((v384 & 1) == 0)
                  {
                    if (sub_1ABAAB7C8(v13))
                    {
                      if (sub_1ABAAB7C8(v13))
                      {
                        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
                        {
                          v13 = sub_1ABD8EE9C(v13);
                        }

                        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          sub_1ABAA61C0();
                          v358 = *(v423 + 32);
                          *(v424 + 16) = v425;
                          v656 = v13;
                          goto LABEL_295;
                        }

LABEL_459:
                        __break(1u);
LABEL_460:
                        __break(1u);
                        goto LABEL_461;
                      }

LABEL_458:
                      __break(1u);
                      goto LABEL_459;
                    }

                    sub_1ABA7DEEC(0, v416, v417, v418, v419, v420, v421, v422, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
                    swift_allocObject();
                    sub_1ABAA3DC4();
LABEL_295:
                    if (!sub_1ABAAB7C8(v13))
                    {
                      v440 = v13;
                      sub_1ABA7DEEC(0, v433, v434, v435, v436, v437, v438, v439, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
                      swift_allocObject();
                      v441 = sub_1ABE1D3CC();
                      goto LABEL_299;
                    }

                    v440 = v13;
                    v441 = sub_1ABB31024(v13);
                    if (!v441)
                    {
                      goto LABEL_467;
                    }

LABEL_299:
                    sub_1ABA8F9FC(v441, v442, v443, v444, v445, v446, v447, v448, v591, v596, v601, v606, v613, v620, v625, v630);
                    v450 = sub_1ABAA2E00(v449);
                    sub_1ABE20178(v450, v358);
                    if (sub_1ABAAB7C8(v440))
                    {
                      if (!sub_1ABAAB7C8(v440))
                      {
                        goto LABEL_460;
                      }

                      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v440 < 0 || (v440 & 0x4000000000000000) != 0)
                      {
                        v440 = sub_1ABD8EE9C(v440);
                      }

                      if (*((v440 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        sub_1ABAA61C0();
                        *(v451 + 16) = v452;

                        v656 = v440;
                        goto LABEL_308;
                      }

LABEL_461:
                      __break(1u);
LABEL_462:
                      __break(1u);
LABEL_463:
                      __break(1u);
LABEL_464:
                      __break(1u);
LABEL_465:
                      __break(1u);
LABEL_466:
                      __break(1u);
LABEL_467:
                      __break(1u);
LABEL_468:
                      __break(1u);
                      return;
                    }

                    swift_initStackObject();
                    sub_1ABE1D3CC();

LABEL_308:
                    if (!sub_1ABAAB7C8(v440))
                    {

                      v656 = MEMORY[0x1E69E7CC0];
                    }

                    MEMORY[0x1AC5A9710](v453);
                    sub_1ABA810F0();
                    if (v84)
                    {
                      v502 = sub_1ABA7BBEC(v454);
                      sub_1ABAA425C(v502);
                    }

                    sub_1ABF24184();
                    v432 = v656;

LABEL_313:

                    v91 = v614;
                    if (sub_1ABAAB7C8(v432))
                    {
                      v238 = v432;
                      v462 = sub_1ABB31024(v432);
                      if (!v462)
                      {
                        goto LABEL_464;
                      }

                      v4 = v462;
                    }

                    else
                    {
                      v238 = v432;
                      sub_1ABA7DEEC(0, v455, v456, v457, v458, v459, v460, v461, v587, v592, v597, v602, v614, v616, v621, v626, v631, v635, v639);
                      v4 = swift_allocObject();
                      sub_1ABE1D3CC();
                    }

                    v2 = *(v4 + 83);

                    if (v2)
                    {

                      v8 = a1;
                      goto LABEL_209;
                    }

                    v2 = v238;
                    if (sub_1ABAAB7C8(v238))
                    {
                      v470 = sub_1ABB31024(v238);
                      if (!v470)
                      {
                        goto LABEL_468;
                      }

                      v4 = v470;
                    }

                    else
                    {
                      sub_1ABA7DEEC(0, v463, v464, v465, v466, v467, v468, v469, v587, v592, v597, v602, v614, v616, v621, v626, v631, v635, v639);
                      v4 = swift_allocObject();
                      sub_1ABE1D3CC();
                    }

                    v8 = a1;
                    v471 = *(v4 + 72);
                    v92 = __OFADD__(v471, 1);
                    v472 = v471 + 1;
                    if (!v92)
                    {
                      *(v4 + 72) = v472;

                      goto LABEL_209;
                    }

LABEL_455:
                    __break(1u);
LABEL_456:
                    __break(1u);
                    goto LABEL_457;
                  }

                  v393 = v13 >> 62;
                  if (v13 >> 62)
                  {
                    v385 = sub_1ABF24CA4();
                    if (!v385)
                    {
                      goto LABEL_258;
                    }

                    v13 = v48;
                    if (!sub_1ABF24CA4())
                    {
                      goto LABEL_444;
                    }

LABEL_249:
                    v394 = swift_isUniquelyReferenced_nonNull_bridgeObject();
                    if (v393 || (v394 & 1) == 0)
                    {
                      v395 = sub_1ABD8EE9C(v48);
                    }

                    else
                    {
                      v395 = v48;
                    }

                    if (!*((v395 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_445;
                    }

                    v396 = v395;
                    sub_1ABAA61C0();
                    v398 = *(v397 + 32);
                    *(v399 + 16) = v400;

                    v656 = v396;
                    v401 = v398;
                    v402 = v396;
                  }

                  else
                  {
                    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_249;
                    }

LABEL_258:
                    sub_1ABA7DEEC(v385, v386, v387, v388, v389, v390, v391, v392, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
                    v403 = swift_allocObject();
                    sub_1ABE1D3CC();

                    v402 = v48;
                    v401 = v403;
                  }

                  v48 = v402;
                  if (v402 >> 62)
                  {
                    v404 = sub_1ABA94D04();
                    if (v404)
                    {
                      goto LABEL_261;
                    }
                  }

                  else
                  {
                    v404 = sub_1ABA8E44C();
                    if (v404)
                    {
LABEL_261:
                      v412 = v404 - 1;
                      if (__OFSUB__(v404, 1))
                      {
                        goto LABEL_446;
                      }

                      if ((v48 & 0xC000000000000001) != 0)
                      {

                        v413 = MEMORY[0x1AC5AA170](v412, v48);
                      }

                      else
                      {
                        if ((v412 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_447;
                        }

                        if (v412 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_448;
                        }

                        v413 = *(v48 + 8 * v412 + 32);
                      }

                      goto LABEL_268;
                    }
                  }

                  sub_1ABA7DEEC(v404, v405, v406, v407, v408, v409, v410, v411, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
                  v413 = swift_allocObject();

                  sub_1ABE1D3CC();
LABEL_268:
                  v414 = *(v413 + 16);

                  v374 = *(v401 + 16);

                  v358 = *(v414 + 40);
                  *(v414 + 40) = v374;

                  continue;
                }
              }

              break;
            }

            sub_1ABA7DEEC(v382, v375, v376, v377, v378, v379, v380, v381, v591, v596, v601, v606, v613, v620, v625, v630, v631, v635, v639);
            v374 = swift_allocObject();
            sub_1ABE1D3CC();
            v13 = v48;
            goto LABEL_246;
          }

          if (sub_1ABAAB7C8(v48))
          {
            if (sub_1ABAAB7C8(v48))
            {
              v366 = sub_1ABB31024(v48);
              if (!v366)
              {
                goto LABEL_465;
              }
            }

            else
            {
              sub_1ABA7DEEC(0, v359, v360, v361, v362, v363, v364, v365, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
              swift_allocObject();
              v366 = sub_1ABE1D3CC();
            }

            sub_1ABA8F9FC(v366, v367, v368, v369, v370, v371, v372, v373, v587, v592, v597, v602, v607, v616, v621, v626);
            v427 = sub_1ABAA2E00(v426);
            sub_1ABE20178(v427, v59);
            if (sub_1ABAAB7C8(v48))
            {
              if (!sub_1ABAAB7C8(v48))
              {
                goto LABEL_456;
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
              {
                v48 = sub_1ABD8EE9C(v48);
              }

              if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_457:
                __break(1u);
                goto LABEL_458;
              }

              sub_1ABAA61C0();
              *(v428 + 16) = v429;

              v656 = v48;
            }

            else
            {
              swift_initStackObject();
              sub_1ABE1D3CC();
            }

            if (!sub_1ABAAB7C8(v48))
            {

              v656 = MEMORY[0x1E69E7CC0];
            }

            MEMORY[0x1AC5A9710](v430);
            sub_1ABA810F0();
            if (v84)
            {
              v501 = sub_1ABA7BBEC(v431);
              sub_1ABAA425C(v501);
            }

            sub_1ABF24184();
            v432 = v656;
            goto LABEL_313;
          }

LABEL_411:
          sub_1ABA7F8E8();
          v651 = v575 + 15;
          v652 = v574;
          v655 = v15;

          v576 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v576);

          v577 = sub_1ABE22DF0();
          sub_1ABA7BD00(&type metadata for ParserError, v577);
          sub_1ABA8C3F0();
          v579 = sub_1ABAA5048(v578, 12);
          sub_1ABA8ECB0(v579, v580, v581, v582, v583, v584, v585, v586, v587, v592, v597, v602);
          goto LABEL_391;
        }

        if (!(v48 >> 62))
        {
          if (sub_1ABA8E44C())
          {
            goto LABEL_56;
          }

LABEL_55:

          v656 = MEMORY[0x1E69E7CC0];
          goto LABEL_56;
        }

        if (!sub_1ABA94D04())
        {
          goto LABEL_55;
        }

LABEL_56:
        v4 = &v656;
        MEMORY[0x1AC5A9710]();
        sub_1ABA810F0();
        if (v84)
        {
          v85 = sub_1ABA7BBEC(v83);
          sub_1ABAA425C(v85);
        }

        sub_1ABF24184();

        v7 = v656;
        v8 = a1;
        goto LABEL_5;
      case 13:
        v94 = v7 >> 62;
        if (v10)
        {
          if (v10 > *(v11 + 16))
          {
            goto LABEL_416;
          }

          v95 = v7;
          v96 = v11 + 32 * v10;
          v98 = *(v96 + 8);
          v97 = *(v96 + 16);

          v99 = v98 == 0x7079547865646E69 && v97 == 0xE900000000000065;
          v13 = v661;
          if (v99)
          {
            goto LABEL_163;
          }
        }

        else
        {
          v95 = v7;
          sub_1ABAA3284();
          v98 = (v251 + 13);
          v97 = v592;
          v13 = v661;
        }

        if (sub_1ABAA5A48(0x7079547865646E69, 0xE900000000000065))
        {
LABEL_163:

          if (v94)
          {
            v259 = sub_1ABF24CA4();
          }

          else
          {
            v259 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v661 = v13;
          if (v259)
          {
            v92 = __OFSUB__(v259, 1);
            v260 = v259 - 1;
            if (v92)
            {
              goto LABEL_433;
            }

            if ((v95 & 0xC000000000000001) != 0)
            {
              v494 = v95;
              v263 = v15;
              v264 = MEMORY[0x1AC5AA170](v260, v494);
            }

            else
            {
              if (v260 < 0)
              {
                goto LABEL_434;
              }

              sub_1ABA83C64();
              if (v84)
              {
LABEL_435:
                __break(1u);
                goto LABEL_436;
              }

              v263 = v15;
              v264 = *(v262 + 8 * v261 + 32);
            }
          }

          else
          {
            v263 = v15;
            sub_1ABA7DEEC(0, v252, v253, v254, v255, v256, v257, v258, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
            v264 = swift_allocObject();
            sub_1ABE1D3CC();
          }

          v4 = a1;
          sub_1ABDEC684();
          v309 = *(a1 + 56);
          v92 = __OFADD__(v309, 1);
          v310 = v309 + 1;
          if (!v92)
          {
            v311 = v305;
            v312 = v306;
            v313 = v307;
            v314 = v308;
            *(a1 + 56) = v310;
            v651 = v306;
            v652 = v307;

            v315._countAndFlagsBits = sub_1ABF23EB4();
            KnosisIndexType.init(rawValue:)(v315);
            v2 = v655;
            if (v655 != 9)
            {

              *(*(v264 + 16) + 64) = v2;

              v15 = v263;
              v7 = v648;
              goto LABEL_365;
            }

            sub_1ABA7F8E8();
            v651 = v552;
            v652 = v551;
            MEMORY[0x1AC5A9410](v312, v313);
            v553 = v651;
            v554 = v652;
            v555 = sub_1ABE22DF0();
            sub_1ABA7BD00(&type metadata for ParserError, v555);
            v557 = v556;
            *v556 = v311;
            v556[1] = v312;
            v556[2] = v313;
            v556[3] = v314;

            v557[4] = v553;
            v557[5] = v554;
            *(v557 + 48) = 1;
            swift_willThrow();

            goto LABEL_393;
          }

          __break(1u);
LABEL_413:
          __break(1u);
          goto LABEL_414;
        }

        v284 = v98 == 0x74696D696CLL && v97 == 0xE500000000000000;
        if (v284 || (sub_1ABAA5A48(0x74696D696CLL, 0xE500000000000000) & 1) != 0)
        {

          sub_1ABA8F9FC(v285, v286, v287, v288, v289, v290, v291, v292, v587, v592, v597, v602, v607, v616, v621, v626);
          v653 = v301;
          v654 = v300;
          if (v94)
          {
            v302 = sub_1ABF24CA4();
            if (v302)
            {
LABEL_196:
              v92 = __OFSUB__(v302, 1);
              v303 = v302 - 1;
              if (v92)
              {
                goto LABEL_450;
              }

              if ((v95 & 0xC000000000000001) != 0)
              {
                v2 = v95;
                v98 = MEMORY[0x1AC5AA170](v303, v95);
              }

              else
              {
                if (v303 < 0)
                {
                  goto LABEL_451;
                }

                sub_1ABA83C64();
                if (v84)
                {
LABEL_452:
                  __break(1u);
LABEL_453:
                  MEMORY[0x1AC5AA170](0, v13);
LABEL_378:

                  return;
                }

                v2 = v95;
                v98 = *(v95 + 8 * v304 + 32);
              }

              goto LABEL_362;
            }
          }

          else
          {
            v302 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v302)
            {
              goto LABEL_196;
            }
          }

          v2 = v95;
          sub_1ABA7DEEC(v302, v293, v294, v295, v296, v297, v298, v299, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
          swift_allocObject();
          sub_1ABAA3DC4();
LABEL_362:
          sub_1ABDEC684();
          v499 = *(a1 + 56);
          v92 = __OFADD__(v499, 1);
          v500 = v499 + 1;
          if (v92)
          {
            goto LABEL_449;
          }

          *(a1 + 56) = v500;
          v4 = &v651;
          sub_1ABE20CD8(v98, v495, v496, v497, v498);
          if (!v640)
          {

            v7 = v2;
            goto LABEL_365;
          }

          goto LABEL_407;
        }

        if (v98 == 0x736D61726170 && v97 == 0xE600000000000000)
        {
        }

        else
        {
          v331 = sub_1ABAA5A48(0x736D61726170, 0xE600000000000000);

          if ((v331 & 1) == 0)
          {
            v571 = sub_1ABE22DF0();
            sub_1ABA7BD00(&type metadata for ParserError, v571);
            sub_1ABAA3A78();
            *v572 = 13;
            v572[1] = v14;
            v572[2] = v13;
            v572[3] = v15;

            sub_1ABAA3284();
            *(v331 + 32) = v573 + 5;
            *(v331 + 40) = 0x80000001ABF926F0;
            *(v331 + 48) = 0;
LABEL_372:
            swift_willThrow();
            goto LABEL_393;
          }
        }

        if (sub_1ABAAB7C8(v95))
        {
          v2 = v95;
          v339 = sub_1ABB31024(v95);
          v8 = a1;
          if (!v339)
          {
            goto LABEL_463;
          }

          v98 = v339;
        }

        else
        {
          v2 = v95;
          sub_1ABA7DEEC(0, v332, v333, v334, v335, v336, v337, v338, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
          swift_allocObject();
          sub_1ABAA3DC4();
          v8 = a1;
        }

        sub_1ABDEC684();
        v344 = *(v8 + 56);
        v92 = __OFADD__(v344, 1);
        v345 = v344 + 1;
        if (v92)
        {
          __break(1u);
          goto LABEL_455;
        }

        v4 = v342;
        *(v8 + 56) = v345;
        sub_1ABE21098(v98, v340, v341, v342, v343);
        if (v640)
        {
LABEL_407:

LABEL_393:

          goto LABEL_386;
        }

        v91 = v607;
        goto LABEL_337;
      case 15:
        if (v30)
        {
          v90 = sub_1ABF24CA4();
        }

        else
        {
          v90 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v91 = v607;
        if (v90)
        {
          v92 = __OFSUB__(v90, 1);
          v93 = v90 - 1;
          if (v92)
          {
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
            goto LABEL_418;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v2 = v7;
            v4 = MEMORY[0x1AC5AA170](v93, v7);
          }

          else
          {
            if (v93 < 0)
            {
LABEL_419:
              __break(1u);
              goto LABEL_420;
            }

            sub_1ABA83C64();
            if (v84)
            {
LABEL_422:
              __break(1u);
              goto LABEL_423;
            }

            v2 = v7;
            sub_1ABA842C4();
          }
        }

        else
        {
          v2 = v7;
          sub_1ABA7DEEC(0, v17, v18, v19, v20, v21, v22, v23, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
          v4 = swift_allocObject();
          sub_1ABE1D3CC();
        }

        *(v4 + 83) = 1;

        goto LABEL_337;
      case 16:
        if (v30)
        {
          isUniquelyReferenced_nonNull_native = sub_1ABF24CA4();
          v202 = isUniquelyReferenced_nonNull_native;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v202 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v202)
          {
LABEL_113:
            v203 = v202 - 1;
            if (__OFSUB__(v202, 1))
            {
LABEL_414:
              __break(1u);
              goto LABEL_415;
            }

            if ((v7 & 0xC000000000000001) != 0)
            {
              v204 = v7;
              v4 = MEMORY[0x1AC5AA170](v203, v7);
            }

            else
            {
              if (v203 < 0)
              {
LABEL_420:
                __break(1u);
                goto LABEL_421;
              }

              sub_1ABA83C64();
              if (v84)
              {
LABEL_421:
                __break(1u);
                goto LABEL_422;
              }

              v204 = v7;
              sub_1ABA842C4();
            }

            goto LABEL_328;
          }
        }

        v204 = v7;
        sub_1ABA7DEEC(isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v22, v23, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
        v4 = swift_allocObject();
        sub_1ABE1D3CC();
LABEL_328:
        *(v4 + 83) = 0;

        if (v202)
        {
          v481 = v202 - 1;
          if (__OFSUB__(v202, 1))
          {
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

          v482 = v204;
          if ((v204 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x1AC5AA170](v481, v204);
            v91 = v607;
          }

          else
          {
            v91 = v607;
            if (v481 < 0)
            {
LABEL_423:
              __break(1u);
              goto LABEL_424;
            }

            sub_1ABA83C64();
            if (v84)
            {
LABEL_424:
              __break(1u);
              goto LABEL_425;
            }

            sub_1ABA842C4();
          }
        }

        else
        {
          sub_1ABA7DEEC(v473, v474, v475, v476, v477, v478, v479, v480, v587, v592, v597, v602, v607, v616, v621, v626, v631, v635, v639);
          v4 = swift_allocObject();
          sub_1ABE1D3CC();
          v91 = v615;
          v482 = v204;
        }

        v483 = *(v4 + 72);
        v92 = __OFADD__(v483, 1);
        v484 = v483 + 1;
        if (v92)
        {
LABEL_410:
          __break(1u);
          goto LABEL_411;
        }

        v2 = v482;
        *(v4 + 72) = v484;

LABEL_337:
        v7 = v2;
        goto LABEL_367;
      default:
        v503 = sub_1ABE22DF0();
        sub_1ABA7BD00(&type metadata for ParserError, v503);
        sub_1ABAA3A78();
        *v504 = v13;
        v504[1] = v14;
        v504[2] = v661;
        v504[3] = v15;

        sub_1ABAA3284();
        *(v2 + 32) = v505 + 6;
        *(v2 + 40) = 0x80000001ABF92610;
        *(v2 + 48) = 2;
        swift_willThrow();

        goto LABEL_386;
    }
  }
}

uint64_t sub_1ABE1FAB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *v5;
  if (a1 == 8)
  {
    v10 = qword_1EB4D03F0;

    if (v10 != -1)
    {
      swift_once();
    }

    result = sub_1ABA94FF4(a2, a3, off_1EB4DA988);
    if (!v12)
    {
      __break(1u);
      return result;
    }

    a2 = result;
    v13 = v12;

    a3 = v13;
  }

  else
  {
  }

  type metadata accessor for Node();
  v14 = swift_allocObject();
  sub_1ABE1D3CC();
  type metadata accessor for KnosisQueryParam();
  v15 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  v16 = sub_1ABE73A74(a2, a3, v15);
  *(v14 + 16) = v16;

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  sub_1ABAD52F8(&v22, v17, v18, v9);

  v19 = v23;
  if (v23)
  {
    *(v14 + 24) = v22;
    *(v14 + 32) = v19;
    v20 = v25;
    *(v14 + 40) = v24;
    *(v14 + 56) = v20;

    *(v14 + 80) = a5 & 1;
  }

  else
  {
    v21 = swift_allocObject();
    sub_1ABE1D3CC();

    return v21;
  }

  return v14;
}

uint64_t sub_1ABE1FCB0(uint64_t a1)
{
  v45[4] = *v1;
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  sub_1ABE222D0(v5, v6, v7, v8, v9, v10, v11, v12, &v32);

  if (v2)
  {
    return result;
  }

  v14 = *(a1 + 16);
  v15 = v14[2] == 26217 && v14[3] == 0xE200000000000000;
  v16 = a1;
  if (v15 || (v17 = sub_1ABF25054(), v16 = a1, (v17 & 1) != 0))
  {
    if (*(v16 + 72) == 2)
    {
      v38 = v32;
      sub_1ABAFEEA0(&v38);
      v37 = v33;
      v18 = &v36;
      v19 = &v37;
LABEL_23:
      sub_1ABA925A4(v19, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      *v18 = v35;
      return sub_1ABA925A4(v18, &qword_1EB4D33A8, &unk_1ABF627B0);
    }
  }

  v45[0] = v33;
  v20 = *(v33 + 16);
  if ((*(v16 + 82) & 1) != 0 || (*(v16 + 81) & 1) == 0 && *(v16 + 80) == 1)
  {
    v21 = v16;
    swift_beginAccess();
    v22 = v14[4];
    if (v22)
    {
      v16 = v21;
      if (v20 - 1 != *(v22 + 16))
      {
        goto LABEL_17;
      }

      sub_1ABE22404(v21);
    }

    v16 = v21;
  }

LABEL_17:
  v23 = *(v16 + 72);
  if (v20 != v23 && (v34 & 1) == 0)
  {
    v24 = v16;
    v44 = v32;
    sub_1ABAFEEA0(&v44);
    sub_1ABA925A4(v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v43 = v35;
    sub_1ABA925A4(&v43, &qword_1EB4D33A8, &unk_1ABF627B0);
LABEL_25:
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
    v26 = *(v24 + 16);
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);

    MEMORY[0x1AC5A9410](v27, v28);

    MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
    v29 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v29);

    MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
    v30 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v30);

    sub_1ABE22DF0();
    swift_allocError();
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0xE000000000000000;
    *(v31 + 48) = 1;
    return swift_willThrow();
  }

  if (v23 >= v20)
  {
    v42 = v32;
    sub_1ABAFEEA0(&v42);
    v18 = &v41;
    v19 = v45;
    goto LABEL_23;
  }

  v24 = v16;
  v25 = v34;
  v40 = v32;
  sub_1ABAFEEA0(&v40);
  sub_1ABA925A4(v45, &unk_1EB4D33D0, &unk_1ABF3A8C0);
  v39 = v35;
  result = sub_1ABA925A4(&v39, &qword_1EB4D33A8, &unk_1ABF627B0);
  if (v25)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1ABE20118(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 16) + 40) = *(a2 + 16);
}

uint64_t sub_1ABE20178(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v8;
  }

  if (!v9)
  {

    *a1 = a2;
    return result;
  }

  result = sub_1ABE21F48(v4);
  if (!v2)
  {
    v12 = result;
    v13 = v11;
    v14 = *(v4 + 16);
    swift_beginAccess();
    if (*(v14 + 32))
    {

      v15 = sub_1ABAE305C();
      swift_endAccess();

      if (v15)
      {
        if (*(v4 + 83) != 1)
        {
          sub_1ABF24AB4();

          *&v24 = 0x206D61726170;
          *(&v24 + 1) = 0xE600000000000000;

          sub_1ABAD219C(&qword_1EB4DA998, &qword_1ABF68580);
          v19 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v19);

          MEMORY[0x1AC5A9410](0x67726120726F6620, 0xE900000000000020);
          MEMORY[0x1AC5A9410](v12, v13);

          MEMORY[0x1AC5A9410](0x7265706F206E6920, 0xED000020726F7461);
          v20 = *(v4 + 16);
          v22 = *(v20 + 16);
          v21 = *(v20 + 24);

          MEMORY[0x1AC5A9410](v22, v21);

          MEMORY[0x1AC5A9410](0x79646165726C6120, 0xEF73747369786520);
          sub_1ABE22DF0();
          swift_allocError();
          *v23 = 0u;
          *(v23 + 16) = 0u;
          *(v23 + 32) = v24;
          *(v23 + 48) = 1;
          swift_willThrow();
        }

        v16 = *(a2 + 16);
        swift_beginAccess();
        *(v15 + 24) = v16;

        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    v18 = *(a2 + 16);
    type metadata accessor for KnosisQueryParam();
    swift_allocObject();
    v15 = sub_1ABE75D88(v18);

LABEL_13:

    sub_1ABE71E8C(v12, v13, v15);
  }

  return result;
}

void sub_1ABE20494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = v113;
  v8 = *v3;
  v114 = v3[1];
  v9 = v3[2];
  v10 = v3[5];
  v104 = v3[3];
  v105 = v3[4];
  v101 = *a3;
  v11 = sub_1ABE1D018(*(*(*a3 + 16) + 16), *(*(*a3 + 16) + 24), &unk_1F208F188);
  if (v12)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = *a2;
  v15 = sub_1ABE1D018(*(*(*a2 + 16) + 16), *(*(*a2 + 16) + 24), &unk_1F208F188);
  if ((v16 & 1) != 0 || *(v14 + 72) < 1)
  {
    goto LABEL_11;
  }

  v100 = v14;
  if (v15 < v13)
  {
    v107 = v8;
    v108 = v114;
    v17 = v9;
    v109 = v9;
    v110 = v104;
    v9 = v105;
    v111 = v105;
    v112 = v10;
    sub_1ABE20178(a3, v100);
    if (v103)
    {
      return;
    }

    v7 = *a3;
    v18 = *(*a3 + 72);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v21 = v8;
    v8 = 0;
    *(v7 + 9) = v20;
    v107 = v21;
    v108 = v114;
    v109 = v17;
    v110 = v104;
    v111 = v105;
    v112 = v10;
    sub_1ABDEC684();
    v26 = *(a1 + 56);
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    *(a1 + 56) = v27;
    sub_1ABE217C4(v7, v22, v23, v24, v25);

    v28 = *(v7 + 9);
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_11:
    v107 = v8;
    v108 = v114;
    v30 = v9;
    v31 = v104;
    v109 = v9;
    v110 = v104;
    v9 = v105;
    v111 = v105;
    v112 = v10;
    v32 = *(a1 + 16);
    v7[4] = *a1;
    v7[5] = v32;
    v33 = *(a1 + 48);
    v7[6] = *(a1 + 32);
    v7[7] = v33;
    v34 = sub_1ABDEC828();
    v35 = a1;
    v36 = v8;
    v37 = v101;
    sub_1ABE217C4(v101, v34, v38, v39, v40);
    if (!v103)
    {

      v41 = *(v101 + 72);
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        *(v101 + 72) = v42;
        v107 = v36;
        v108 = v114;
        v109 = v30;
        v110 = v104;
        v111 = v105;
        v112 = v10;
        sub_1ABDEC684();
        v47 = *(v35 + 56);
        v19 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (!v19)
        {
          *(v35 + 56) = v48;
          sub_1ABE217C4(v101, v43, v44, v45, v46);

          v49 = *(v101 + 72);
          v19 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (!v19)
          {
            *(v101 + 72) = v50;
LABEL_19:

            return;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_15:

    return;
  }

  if (v13 == v15)
  {
    v107 = v8;
    v108 = v114;
    v109 = v9;
    v110 = v104;
    v111 = v105;
    v112 = v10;
    sub_1ABDEC684();
    v55 = *(a1 + 56);
    v19 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v19)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    *(a1 + 56) = v56;
    v7 = v14;
    sub_1ABE217C4(v14, v51, v52, v53, v54);
    if (!v103)
    {

      v62 = *(v14 + 72);
      v19 = __OFADD__(v62, 1);
      v29 = v62 + 1;
      if (!v19)
      {
LABEL_30:
        *(v7 + 9) = v29;
        goto LABEL_19;
      }

      goto LABEL_57;
    }

    goto LABEL_15;
  }

  v107 = v8;
  v108 = v114;
  v109 = v9;
  v110 = v104;
  v111 = v105;
  v112 = v10;
  v57 = sub_1ABE21B40(v14);
  if (v103)
  {
    return;
  }

  v97 = v10;
  v98 = v57;
  v96 = a2;
  v99 = v58;
  v35 = v8;
  v59 = *(v14 + 16);
  swift_beginAccess();
  if (!*(v59 + 32) || (, v60 = sub_1ABAE305C(), , !v60))
  {
LABEL_34:

    sub_1ABE22DF0();
    swift_allocError();
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0xD00000000000001FLL;
    *(v70 + 40) = 0x80000001ABF92810;
    *(v70 + 48) = 0;
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  if (*(v60 + 24))
  {
    v61 = v114;
    v107 = v35;
    v108 = v114;
    v109 = v9;
    v110 = v104;
    v111 = v105;
    v112 = v97;

    v106[0] = sub_1ABE21D78(v102);
    v107 = v35;
    v108 = v61;
    v109 = v9;
    v110 = v104;
    v111 = v105;
    v112 = v97;
    sub_1ABE20494(a1, v106, a3);
    v80 = v79;
    v81 = *(v14 + 16);
    swift_beginAccess();
    if (*(v81 + 32))
    {
      v82 = *(v80 + 16);
      type metadata accessor for KnosisQueryParam();
      swift_allocObject();
      v83 = sub_1ABE75D88(v82);

      sub_1ABE22E44(v83, v98, v99);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = v114;
  if (!*(*(v60 + 16) + 16))
  {

    goto LABEL_34;
  }

  v107 = v35;
  v108 = v114;
  v109 = v9;
  v110 = v104;
  v111 = v105;
  v112 = v97;
  v63 = *(a1 + 16);
  v113[0] = *a1;
  v64 = *(a1 + 32);
  v65 = *(a1 + 48);
  v113[1] = v63;
  v113[2] = v64;
  v113[3] = v65;
  v66 = sub_1ABDEC828();
  sub_1ABE217C4(v101, v66, v67, v68, v69);

  v71 = *(v101 + 72);
  v19 = __OFADD__(v71, 1);
  v72 = v71 + 1;
  if (v19)
  {
    goto LABEL_58;
  }

  *(v101 + 72) = v72;
  v107 = v35;
  v108 = v10;
  v109 = v9;
  v110 = v104;
  v111 = v105;
  v112 = v97;
  sub_1ABDEC684();
  v77 = *(a1 + 56);
  v19 = __OFADD__(v77, 1);
  v78 = v77 + 1;
  if (v19)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(a1 + 56) = v78;
  sub_1ABE217C4(v101, v73, v74, v75, v76);

  v84 = *(v101 + 72);
  v19 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (v19)
  {
    goto LABEL_60;
  }

  v37 = 0;
  *(v101 + 72) = v85;
  v31 = v14;
  v86 = *(v14 + 16);
  swift_beginAccess();
  if (*(v86 + 32))
  {

    sub_1ABC25B28(v98, v99, v87, v88, v89, v90, v91, v92);
    swift_endAccess();

    goto LABEL_48;
  }

LABEL_47:
  swift_endAccess();

LABEL_48:
  v93 = *(v31 + 72);
  v19 = __OFSUB__(v93, 1);
  v94 = v93 - 1;
  if (v19)
  {
LABEL_61:
    __break(1u);
    return;
  }

  *(v31 + 72) = v94;
  v107 = v35;
  v108 = v10;
  v109 = v9;
  v110 = v104;
  v111 = v105;
  v112 = v97;
  sub_1ABE20178(v96, v101);

  if (!v37)
  {
    v7 = *v96;
    v95 = *(*v96 + 72);
    v19 = __OFADD__(v95, 1);
    v29 = v95 + 1;
    if (!v19)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_53;
  }
}

unsigned __int8 *sub_1ABE20CD8(unsigned __int8 *result, unsigned __int8 a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = HIBYTE(a4) & 0xF;
  v10 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_63;
  }

  v12 = result;
  if ((a4 & 0x1000000000000000) != 0)
  {

    v14 = sub_1ABB81A68(a3, a4, 10);
    v37 = v36;

    if (v37)
    {
      goto LABEL_63;
    }

LABEL_65:
    *(*(v12 + 2) + 48) = v14;
    return result;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v14 = 0;
          if (result)
          {
            v21 = result + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_61;
              }

              v23 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_61;
              }

              v14 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_61;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v13 != 45)
    {
      if (v10)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_61;
            }

            v28 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_61;
            }

            v14 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v14 = 0;
      LOBYTE(v9) = 1;
LABEL_62:
      v40 = v9;
      if (v9)
      {
LABEL_63:
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1ABF24AB4();

        v38 = 0xD000000000000013;
        v39 = 0x80000001ABF92710;
        MEMORY[0x1AC5A9410](a3, a4);
        v32 = v38;
        v33 = v39;
        sub_1ABE22DF0();
        swift_allocError();
        v35 = v34;
        *v34 = a2;
        v34[1] = a3;
        v34[2] = a4;
        v34[3] = a5;

        v35[4] = v32;
        v35[5] = v33;
        *(v35 + 48) = 1;
        return swift_willThrow();
      }

      goto LABEL_65;
    }

    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        v14 = 0;
        if (result)
        {
          v15 = result + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_61;
            }

            v14 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v9)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v9) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v38 = a3;
  v39 = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v9)
      {
        v14 = 0;
        v29 = &v38;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          v29 = (v29 + 1);
          if (!--v9)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v9)
    {
      if (--v9)
      {
        v14 = 0;
        v18 = &v38 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v9)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v9)
  {
    if (--v9)
    {
      v14 = 0;
      v24 = &v38 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          break;
        }

        v14 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v9)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1ABE21098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v85 = a2;
  v83 = a1;
  v96 = sub_1ABF21944();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  v86 = a3;
  *&v100 = a3;
  *(&v100 + 1) = a4;
  sub_1ABAE28EC();

  v13 = sub_1ABF248E4();
  v88 = a4;

  v14 = *(v13 + 16);
  if (!v14)
  {

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v103 = MEMORY[0x1E69E7CC0];
  sub_1ABADDEEC(0, v14, 0);
  v15 = 0;
  v16 = v103;
  v90 = v13;
  v91 = v13 + 32;
  v94 = (v8 + 8);
  v89 = v14;
  while (v15 < *(v13 + 16))
  {
    v92 = v15;
    v17 = v91 + 32 * v15;
    v100 = *v17;
    v101 = *(v17 + 16);
    v102 = *(v17 + 24);
    sub_1ABBA2890();

    v18 = sub_1ABF248E4();
    v19 = *(v18 + 16);
    if (v19)
    {
      v99 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v19, 0);
      v20 = v99;
      v21 = (v18 + 56);
      do
      {
        v100 = *(v21 - 3);
        v101 = *(v21 - 1);
        v102 = *v21;

        sub_1ABF21914();
        v22 = sub_1ABF248A4();
        v24 = v23;
        (*v94)(v12, v96);

        v26 = *(v99 + 16);
        v25 = *(v99 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = sub_1ABA7BBEC(v25);
          sub_1ABADDBD4(v28, v26 + 1, 1);
        }

        *(v99 + 16) = v26 + 1;
        v27 = v99 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v21 += 4;
        --v19;
      }

      while (v19);

      v14 = v89;
      v13 = v90;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v103 = v16;
    v30 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (v30 >= v29 >> 1)
    {
      v31 = sub_1ABA7BBEC(v29);
      sub_1ABADDEEC(v31, v30 + 1, 1);
      v16 = v103;
    }

    v15 = v92 + 1;
    *(v16 + 16) = v30 + 1;
    *(v16 + 8 * v30 + 32) = v20;
    if (v92 + 1 == v14)
    {

LABEL_16:
      v32 = 0;
      v33 = *(v16 + 16);
      v34 = MEMORY[0x1E69E7CC0];
      while (v33 != v32)
      {
        if (v32 >= *(v16 + 16))
        {
          goto LABEL_44;
        }

        v35 = *(v16 + 8 * v32 + 32);
        v36 = *(v35 + 16);

        if (v36 != 2)
        {

          sub_1ABF24AB4();

          strcpy(&v100, "params pair ");
          BYTE13(v100) = 0;
          HIWORD(v100) = -5120;
          v75 = MEMORY[0x1AC5A9750](v35, MEMORY[0x1E69E6158]);
          MEMORY[0x1AC5A9410](v75);

          MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF92890);
          v76 = v100;
          v77 = sub_1ABE22DF0();
          sub_1ABA7BD00(&type metadata for ParserError, v77);
          v79 = v78;
          *v78 = v85;
          v78[1] = v86;
          v78[2] = v88;
          v78[3] = v87;

          *(v79 + 2) = v76;
          *(v79 + 48) = 0;
          swift_willThrow();
        }

        v103 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADDEEC(0, *(v34 + 16) + 1, 1);
          v34 = v103;
        }

        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          v39 = sub_1ABA7BBEC(v37);
          sub_1ABADDEEC(v39, v38 + 1, 1);
          v34 = v103;
        }

        *(v34 + 16) = v38 + 1;
        *(v34 + 8 * v38 + 32) = v35;
        ++v32;
      }

      v40 = 0;
      v41 = MEMORY[0x1E69E7CC8];
      v93 = v34;
      v95 = *(v34 + 16);
      while (2)
      {
        if (v95 == v40)
        {

          if (*(v41 + 16))
          {
            v81 = *(v83 + 16);
            swift_beginAccess();
            *(v81 + 72) = v41;
          }
        }

        if (v40 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v42 = *(v34 + 8 * v40 + 32);
        v43 = *(v42 + 16);
        if (!v43)
        {
          goto LABEL_46;
        }

        if (v43 == 1)
        {
          goto LABEL_47;
        }

        v97 = v40;
        v44 = *(v42 + 56);

        v45 = sub_1ABF23EB4();
        v47 = v46;
        *(&v100 + 1) = v44;
        v48 = sub_1ABF23EB4();
        v98 = v49;
        swift_isUniquelyReferenced_nonNull_native();
        *&v100 = v41;
        v56 = sub_1ABA94FC8(v45, v47, v50, v51, v52, v53, v54, v55, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
        if (__OFADD__(*(v41 + 16), (v57 & 1) == 0))
        {
          goto LABEL_48;
        }

        v58 = v56;
        v59 = v57;
        sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
        if (sub_1ABF24C64())
        {
          v66 = sub_1ABA94FC8(v45, v47, v60, v61, v62, v63, v64, v65, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
          v34 = v93;
          if ((v59 & 1) != (v67 & 1))
          {
            goto LABEL_50;
          }

          v58 = v66;
          if ((v59 & 1) == 0)
          {
LABEL_34:
            v41 = v100;
            sub_1ABA7F258(v100 + 8 * (v58 >> 6));
            v69 = (v68 + 16 * v58);
            *v69 = v45;
            v69[1] = v47;
            v70 = (*(v41 + 56) + 16 * v58);
            *v70 = v48;
            v70[1] = v98;

            v71 = *(v41 + 16);
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_49;
            }

            *(v41 + 16) = v73;
            goto LABEL_38;
          }
        }

        else
        {
          v34 = v93;
          if ((v59 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v41 = v100;
        v74 = (*(v100 + 56) + 16 * v58);
        *v74 = v48;
        v74[1] = v98;

LABEL_38:
        v40 = v97 + 1;
        continue;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

_OWORD *sub_1ABE217C4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1ABE21F48(a1);
  if (!v5)
  {
    v13 = result;
    v14 = v12;
    v15 = *(a1 + 16);
    swift_beginAccess();
    if (*(v15 + 32))
    {
      v27 = a5;

      v16 = sub_1ABAE305C();
      swift_endAccess();

      if (v16)
      {
        if (*(a1 + 83) != 1)
        {
          sub_1ABF24AB4();

          *&v28 = 0x206D61726170;
          *(&v28 + 1) = 0xE600000000000000;

          sub_1ABAD219C(&qword_1EB4DA998, &qword_1ABF68580);
          v21 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v21);

          MEMORY[0x1AC5A9410](0x67726120726F6620, 0xE900000000000020);
          MEMORY[0x1AC5A9410](v13, v14);

          MEMORY[0x1AC5A9410](0x7265706F206E6920, 0xED000020726F7461);
          v22 = *(a1 + 16);
          v23 = *(v22 + 16);
          v24 = *(v22 + 24);

          MEMORY[0x1AC5A9410](v23, v24);

          MEMORY[0x1AC5A9410](0x79646165726C6120, 0xEF73747369786520);
          sub_1ABE22DF0();
          swift_allocError();
          v26 = v25;
          *v25 = a2;
          v25[1] = a3;
          v25[2] = a4;
          v25[3] = v27;

          *(v26 + 2) = v28;
          *(v26 + 48) = 1;
          swift_willThrow();
        }

        swift_beginAccess();

        sub_1ABB4DC20();
        v17 = *(*(v16 + 16) + 16);
        sub_1ABB4E024(v17);
        v18 = *(v16 + 16);
        *(v18 + 16) = v17 + 1;
        v19 = v18 + 16 * v17;
        *(v19 + 32) = a3;
        *(v19 + 40) = a4;
        *(v16 + 16) = v18;
        swift_endAccess();
        goto LABEL_9;
      }
    }

    else
    {
      swift_endAccess();
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1ABF34740;
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;
    type metadata accessor for KnosisQueryParam();
    swift_allocObject();
    v16 = sub_1ABE75D28(v20);

    if (a2 == 3)
    {
      *(v16 + 32) = 3;
    }

LABEL_9:

    sub_1ABE71E8C(v13, v14, v16);
  }

  return result;
}

uint64_t sub_1ABE21B40(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  sub_1ABE222D0(v4, v5, v6, v7, v8, v9, v10, v11, &v26);

  if (!v1)
  {
    v12 = v28;
    v31 = v26;
    sub_1ABAFEEA0(&v31);
    v32 = v27;
    sub_1ABA925A4(&v32, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v30 = v29;
    sub_1ABA925A4(&v30, &qword_1EB4D33A8, &unk_1ABF627B0);
    if ((v12 & 1) == 0)
    {
      sub_1ABF24AB4();

      v21 = *(a1 + 16);
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      MEMORY[0x1AC5A9410](v23, v22);

      v4 = 0x80000001ABF92830;
      v20 = 0xD00000000000002ALL;
      goto LABEL_8;
    }

    if (*(a1 + 72) < 1 || (v13 = *(a1 + 16), swift_beginAccess(), !*(v13 + 32)) || (, sub_1ABD23704(), v4 = v14, v16 = v15, , !v16))
    {
      sub_1ABF24AB4();

      v17 = *(a1 + 16);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);

      MEMORY[0x1AC5A9410](v19, v18);

      v20 = 0xD000000000000024;
      v4 = 0x80000001ABF92860;
LABEL_8:
      sub_1ABE22DF0();
      swift_allocError();
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 32) = v20;
      *(v24 + 40) = v4;
      *(v24 + 48) = 1;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_1ABE21D78(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  v5 = a1[3];

  sub_1ABAD52F8(&v15, v4, v5, v3);

  v6 = v16;
  if (v16)
  {
    v7 = v15;
    type metadata accessor for Node();
    v8 = swift_allocObject();
    sub_1ABE1D3CC();
    *(v8 + 16) = a1;

    swift_beginAccess();
    v9 = a1[4];
    if (v9)
    {
      v9 = *(v9 + 16);
    }

    *(v8 + 72) = v9;
    *(v8 + 24) = v7;
    *(v8 + 32) = v6;
    v10 = v18;
    *(v8 + 40) = v17;
    *(v8 + 56) = v10;
  }

  else
  {
    sub_1ABF24AB4();

    v12 = a1[2];
    v11 = a1[3];

    MEMORY[0x1AC5A9410](v12, v11);

    MEMORY[0x1AC5A9410](0x20746E73656F6420, 0xED00007473697865);
    v8 = 0x726F74617265706FLL;
    sub_1ABE22DF0();
    swift_allocError();
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0x726F74617265706FLL;
    *(v13 + 40) = 0xE900000000000020;
    *(v13 + 48) = 1;
    swift_willThrow();
  }

  return v8;
}

_OWORD *sub_1ABE21F48(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v34[0] = *v1;
  v34[1] = v6;
  v35 = v4;
  v36 = v5;
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  v10 = v34;
  sub_1ABE222D0(v8, v9, v11, v12, v13, v14, v15, v16, &v37);

  if (v2)
  {
    return v10;
  }

  v47 = v38;
  v18 = *(v38 + 16);
  v19 = *(a1 + 72);
  if (v19 >= v18)
  {
    if ((v39 & 1) == 0)
    {
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
      v21 = *(a1 + 16);
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      MEMORY[0x1AC5A9410](v23, v22);

      MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
      v24 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v24);
      v46 = v37;
      sub_1ABAFEEA0(&v46);
      sub_1ABA925A4(&v47, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      v45 = v40;
      sub_1ABA925A4(&v45, &qword_1EB4D33A8, &unk_1ABF627B0);

      result = MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
      if (!__OFADD__(*(a1 + 72), 1))
      {
        v25 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v25);

        v26 = *(&v34[0] + 1);
        v10 = *&v34[0];
        sub_1ABE22DF0();
        swift_allocError();
        *v27 = 0u;
        *(v27 + 16) = 0u;
        *(v27 + 32) = v10;
        *(v27 + 40) = v26;
        *(v27 + 48) = 1;
        swift_willThrow();
        return v10;
      }

      goto LABEL_15;
    }
  }

  else if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = v19 - (v18 - 1);
  if (v19 < (v18 - 1))
  {
LABEL_7:
    if (v19 < v18)
    {
      v10 = *(v38 + 16 * v19 + 32);
      v42 = v37;

      sub_1ABAFEEA0(&v42);
      sub_1ABA925A4(&v47, &unk_1EB4D33D0, &unk_1ABF3A8C0);
      v41 = v40;
      sub_1ABA925A4(&v41, &qword_1EB4D33A8, &unk_1ABF627B0);
      return v10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18)
  {
    v28 = v38 + 16 * (v18 - 1);
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    *&v34[0] = v20;

    v31 = sub_1ABF24FF4();
    v33 = v32;
    *&v34[0] = v29;
    *(&v34[0] + 1) = v30;

    MEMORY[0x1AC5A9410](v31, v33);
    v10 = *&v34[0];
    v44 = v37;
    sub_1ABAFEEA0(&v44);
    sub_1ABA925A4(&v47, &unk_1EB4D33D0, &unk_1ABF3A8C0);
    v43 = v40;
    sub_1ABA925A4(&v43, &qword_1EB4D33A8, &unk_1ABF627B0);

    return v10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABE222D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *v9;
  if (*(v13 + 16) && (v14 = sub_1ABA94FC8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8), (v15 & 1) != 0))
  {
    v16 = *(v13 + 56) + 48 * v14;
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v21 = *(v16 + 40);
    *a9 = *v16;
    *(a9 + 8) = v17;
    *(a9 + 16) = v18;
    *(a9 + 24) = v19;
    *(a9 + 32) = v20;
    *(a9 + 40) = v21;
  }

  else
  {
    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](a1, a2);
    sub_1ABE22DF0();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0xD000000000000011;
    *(v23 + 40) = 0x80000001ABF927F0;
    *(v23 + 48) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABE22404(uint64_t a1)
{
  v2 = sub_1ABF239C4();
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v5 = v2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v4 - 1;
  v113 = a1;
  while (1)
  {
    if (v8 >= v4)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v11 = *(v3 + v6 + 32);
    v10 = *(v3 + v6 + 40);
    if ((v7 & 1) == 0)
    {
      v12 = *(a1 + 64);
      if (!v12)
      {
        break;
      }

      v13 = v11 == *(a1 + 56) && v12 == v10;
      if (!v13 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }
    }

    if (v8 >= v4 - 1)
    {
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(v3 + v6 + 56);
      v111 = *(v3 + v6 + 48);

      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1ABA94FC8(v11, v10, v15, v16, v17, v18, v19, v20, v108, v6, v111, v14, v113, v5, v115, v116, v117, v118);
      if (__OFADD__(*(v5 + 16), (v22 & 1) == 0))
      {
        goto LABEL_62;
      }

      v23 = v21;
      v24 = v22;
      sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
      if (sub_1ABF24C64())
      {
        v31 = sub_1ABA94FC8(v11, v10, v25, v26, v27, v28, v29, v30, v108, v109, v110, v112, v113, v114, v115, v116, v117, v118);
        if ((v24 & 1) != (v32 & 1))
        {
          goto LABEL_69;
        }

        v23 = v31;
      }

      if (v24)
      {

        v5 = v114;
        v33 = (v114[7] + 16 * v23);
        *v33 = v110;
        v33[1] = v112;
      }

      else
      {
        v5 = v114;
        v114[(v23 >> 6) + 8] |= 1 << v23;
        v34 = (v114[6] + 16 * v23);
        *v34 = v11;
        v34[1] = v10;
        v35 = (v114[7] + 16 * v23);
        *v35 = v110;
        v35[1] = v112;
        v36 = v114[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_64;
        }

        v114[2] = v38;
      }

      a1 = v113;
      v6 = v109;
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    v7 = 1;
LABEL_26:
    ++v8;
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    v6 += 16;
  }

  if (v9 != v8)
  {
    v7 = 0;
    goto LABEL_26;
  }

  if (!*(v5 + 16))
  {
LABEL_59:
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF927C0);
    v102 = *(a1 + 16);
    v103 = *(v102 + 16);
    v104 = *(v102 + 24);

    MEMORY[0x1AC5A9410](v103, v104);

    MEMORY[0x1AC5A9410](0x746365707865202CLL, 0xEB00000000206465);
    v105 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v105);

    MEMORY[0x1AC5A9410](0x20746F6720, 0xE500000000000000);
    v106 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v106);

    sub_1ABE22DF0();
    swift_allocError();
    *v107 = 0u;
    *(v107 + 16) = 0u;
    *(v107 + 32) = 0;
    *(v107 + 40) = 0xE000000000000000;
    *(v107 + 48) = 1;
    swift_willThrow();
  }

LABEL_28:
  v39 = *(*(a1 + 40) + 16);
  v40 = v39 - 2;
  v41 = 16 * v39;
  if (((v39 - 2) & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v42 = *(a1 + 40);
      if (v40 >= *(v42 + 16))
      {
        break;
      }

      v43 = (v42 + v41);
      v45 = *v43;
      v44 = v43[1];
      v46 = *(a1 + 16);
      swift_beginAccess();
      v47 = *(v46 + 32);
      if (!v47 || !*(v47 + 16))
      {

LABEL_58:
        swift_endAccess();

        goto LABEL_59;
      }

      v54 = sub_1ABA94FC8(v45, v44, v48, v49, v50, v51, v52, v53, v108, v109, v110, v112, v113, v114, v115, v116, v117, v118);
      if ((v55 & 1) == 0)
      {
        goto LABEL_58;
      }

      v56 = *(*(v47 + 56) + 8 * v54);
      swift_endAccess();

      if (*(v5 + 16) && (v63 = sub_1ABA94FC8(v45, v44, v57, v58, v59, v60, v61, v62, v108, v109, v110, v112, v113, v114, v115, v116, v117, v118), (v64 & 1) != 0))
      {
        v65 = (*(v5 + 56) + 16 * v63);
        v66 = v65[1];
        v110 = *v65;
        v67 = *(v113 + 16);
        swift_beginAccess();
        v109 = v41;
        v112 = v66;
        if (*(v67 + 32))
        {

          sub_1ABA94FC8(v45, v44, v68, v69, v70, v71, v72, v73, v108, v41, v110, v66, v113, v114, v115, v116, v117, v118);
          if (v74)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v118 = *(v67 + 32);
            *(v67 + 32) = 0x8000000000000000;
            sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
            v41 = v109;
            sub_1ABF24C64();

            type metadata accessor for KnosisQueryParam();
            sub_1ABF24C84();
            *(v67 + 32) = v118;
          }

          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v75 = *(v113 + 16);
        swift_beginAccess();
        if (*(v75 + 32))
        {

          swift_isUniquelyReferenced_nonNull_native();
          v76 = *(v75 + 32);
          *(v75 + 32) = 0x8000000000000000;
          v83 = sub_1ABA94FC8(v110, v112, v77, v78, v79, v80, v81, v82, v108, v109, v110, v112, v113, v114, v115, v116, v117, v76);
          if (__OFADD__(*(v76 + 16), (v84 & 1) == 0))
          {
            goto LABEL_65;
          }

          v85 = v83;
          v86 = v84;
          sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
          if (sub_1ABF24C64())
          {
            v93 = v112;
            v94 = sub_1ABA94FC8(v110, v112, v87, v88, v89, v90, v91, v92, v108, v109, v110, v112, v113, v114, v115, v116, v117, v118);
            v41 = v109;
            if ((v86 & 1) != (v95 & 1))
            {
              goto LABEL_69;
            }

            v85 = v94;
          }

          else
          {
            v41 = v109;
            v93 = v112;
          }

          if (v86)
          {
            *(v118[7] + 8 * v85) = v56;
          }

          else
          {
            v118[(v85 >> 6) + 8] |= 1 << v85;
            v96 = (v118[6] + 16 * v85);
            *v96 = v110;
            v96[1] = v93;
            *(v118[7] + 8 * v85) = v56;
            v97 = v118[2];
            v37 = __OFADD__(v97, 1);
            v98 = v97 + 1;
            if (v37)
            {
              goto LABEL_67;
            }

            v118[2] = v98;
          }

          *(v75 + 32) = v118;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }
      }

      else
      {
      }

      --v40;
      v41 -= 16;
      a1 = v113;
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_55:
  *(a1 + 81) = 1;
  v99 = *(a1 + 72);
  v37 = __OFADD__(v99, 1);
  v100 = v99 + 1;
  if (v37)
  {
    goto LABEL_68;
  }

  *(a1 + 72) = v100;
}

uint64_t sub_1ABE22BC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE22C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABE22C6C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE22D48()
{
  result = qword_1EB4DA990;
  if (!qword_1EB4DA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA990);
  }

  return result;
}

unint64_t sub_1ABE22DF0()
{
  result = qword_1EB4CF6D8;
  if (!qword_1EB4CF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6D8);
  }

  return result;
}

uint64_t sub_1ABE22E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  v15 = sub_1ABA94FC8(a2, a3, v9, v10, v11, v12, v13, v14, v29, v8, v32, v34, v36, v38, v40, v42, v44, v46);
  if (__OFADD__(*(v8 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
  if (sub_1ABF24C64())
  {
    v25 = sub_1ABA94FC8(a2, a3, v19, v20, v21, v22, v23, v24, v30, v31, v33, v35, v37, v39, v41, v43, v45, v47);
    if ((v18 & 1) == (v26 & 1))
    {
      v17 = v25;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v18)
  {
    v27 = *(v31 + 56);
    result = *(v27 + 8 * v17);
    *(v27 + 8 * v17) = a1;
  }

  else
  {
    sub_1ABAFF5B0();

    result = 0;
  }

  *v4 = v31;
  return result;
}

uint64_t static ParserV2.parse(kgq:)@<X0>(uint64_t *x8_0@<X8>)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v6 = sub_1ABE272C0(0xD000000000000014, 0x80000001ABF928B0, 0);
  if (v3)
  {
  }

  else
  {
    v7 = v6;
    if (v6)
    {
      sub_1ABA805B4();
      v8 = sub_1ABF23BD4();
      sub_1ABA805B4();
      v9 = sub_1ABF23D44();
      v10 = sub_1ABF23BD4();
      v11 = [v7 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{v9, v10}];

      sub_1ABF23C04();
      goto LABEL_6;
    }
  }

LABEL_6:
  v17[0] = 0x5941444F54;
  v17[1] = 0xE500000000000000;
  __dst[15] = 5721934;
  __dst[16] = 0xE300000000000000;
  sub_1ABAE28EC();
  v12 = sub_1ABF248B4();
  v14 = v13;

  sub_1ABDED8E4(v12, v14, __src);
  memcpy(__dst, __src, 0x41uLL);
  __dst[9] = MEMORY[0x1E69E7CC0];
  memset(&__dst[10], 0, 24);
  LOBYTE(__dst[13]) = -4;
  __dst[14] = 0;
  sub_1ABE2739C(__src, v17);
  sub_1ABE2319C(x8_0, v15);
  memcpy(v17, __dst, sizeof(v17));
  sub_1ABE273F8(v17);
  return sub_1ABE27428(__src);
}

uint64_t sub_1ABE2319C@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  v83 = a1;
  v93 = MEMORY[0x1E69E7CD0];
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1ABDEE424(&v88, a2);
    if (v91 > 0xFBu)
    {
      break;
    }

    sub_1ABDEFF58(v88, v89, v90, v91);
    sub_1ABE234C0(&v88, v4);
    if (v2)
    {
    }

    v6 = v88;
    v5 = v89;
    v7 = v90;
    v8 = v91;
    if (sub_1ABB139C4(v88, v93))
    {

      sub_1ABD75F08(v5, v7, v8);

      v79 = sub_1ABE27554();
      sub_1ABA7BD00(&type metadata for ParserV2Error, v79);
      *v80 = xmmword_1ABF47830;
      *(v80 + 16) = 2;
      return swift_willThrow();
    }

    sub_1ABB19A34(&v88, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_1ABA7BEF0();
      sub_1ABADC7E8(v71, v72, v73, v3);
      v3 = v74;
    }

    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v11 >= v10 >> 1)
    {
      v75 = sub_1ABA7BBEC(v10);
      sub_1ABADC7E8(v75, v11 + 1, 1, v3);
      v3 = v76;
    }

    *(v3 + 16) = v11 + 1;
    v12 = v3 + 32 * v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    *(v12 + 48) = v7;
    *(v12 + 56) = v8;
    sub_1ABDEE424(v92, v9);
    sub_1ABE276A8();
    if (!v14 & v13)
    {
      sub_1ABA7AE34();
      sub_1ABA98080();
      sub_1ABA925A4(v15, &qword_1EB4DA9A8, &unk_1ABF68720);
LABEL_13:
      sub_1ABDEE424(v92, a2);
      sub_1ABE276A8();
      if (!v14 & v13)
      {
        sub_1ABA7AE34();
        sub_1ABA98080();
        sub_1ABA925A4(v37, &qword_1EB4DA9A8, &unk_1ABF68720);
      }

      else
      {
        sub_1ABA7AE34();
        v84 = 7;
        v85 = 0;
        v86 = 0;
        LOBYTE(v87) = -32;
        v38 = sub_1ABAA4B5C();
        sub_1ABDEFF6C(v38, v39, v40, v41);
        v42 = sub_1ABDEF364(&v88, &v84);
        v43 = sub_1ABB344F0(v84, v85, v86, v87);
        v51 = sub_1ABAA1614(v43, v44, v45, v46, v47, v48, v49, v50, v82, v83, v84, v85, v86, v87, v88);
        sub_1ABB344F0(v51, v52, v53, v54);
        v55 = sub_1ABAA4B5C();
        sub_1ABDEFF58(v55, v56, v57, v58);
        if (v42)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1ABA7AE34();
      v84 = 8;
      v85 = 0;
      v86 = 0;
      LOBYTE(v87) = -32;
      v16 = sub_1ABAA4B5C();
      sub_1ABDEFF6C(v16, v17, v18, v19);
      v20 = sub_1ABDEF364(&v88, &v84);
      v21 = sub_1ABB344F0(v84, v85, v86, v87);
      v29 = sub_1ABAA1614(v21, v22, v23, v24, v25, v26, v27, v28, v82, v83, v84, v85, v86, v87, v88);
      sub_1ABB344F0(v29, v30, v31, v32);
      v33 = sub_1ABAA4B5C();
      sub_1ABDEFF58(v33, v34, v35, v36);
      if (!v20)
      {
        goto LABEL_13;
      }

LABEL_17:
      v59 = sub_1ABDEE144(&v88, a2);
      v67 = sub_1ABAA1614(v59, v60, v61, v62, v63, v64, v65, v66, v82, v83, v84, v85, v86, v87, v88);
      sub_1ABDEFF58(v67, v68, v69, v70);
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F17C();
    v3 = v81;
  }

  v77 = *(v3 + 16);
  v88 = v3 + 32;
  v89 = v77;
  result = sub_1ABD75FD0(&v88);
  *v83 = v3;
  return result;
}

unint64_t sub_1ABE234C0@<X0>(uint64_t a2@<X8>, __n128 q0_0@<Q0>)
{
  sub_1ABDEE144(&v33, q0_0);
  if (v36 > 0xFBu)
  {
    goto LABEL_9;
  }

  v6 = v33;
  if ((v36 & 0xE0) != 0xC0)
  {
    sub_1ABDEFF58(v33, v34, v35, v36);
LABEL_9:
    v19 = sub_1ABE27554();
    sub_1ABA7BD00(&type metadata for ParserV2Error, v19);
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }

  sub_1ABDEE144(&v33, v5);
  v8 = v36;
  if (v36 > 0xFBu)
  {
    goto LABEL_6;
  }

  v10 = v33;
  v9 = v34;
  v11 = v35;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = -32;
  if (!sub_1ABDEF364(&v33, &v29))
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1ABF24AB4();
    v29 = v33;
    v30 = v34;
    MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF928F0);
    v33 = v10;
    v34 = v9;
    v35 = v11;
    v36 = v8;
    sub_1ABF24C54();
    v21 = sub_1ABAA61CC();
    sub_1ABDEFF58(v21, v22, v23, v24);
    v25 = v29;
    v26 = v30;
    v27 = sub_1ABE27554();
    sub_1ABA7BD00(&type metadata for ParserV2Error, v27);
    *v28 = v25;
    *(v28 + 8) = v26;
    *(v28 + 16) = 0;
    return swift_willThrow();
  }

  v12 = sub_1ABAA61CC();
  sub_1ABDEFF58(v12, v13, v14, v15);
LABEL_6:
  result = sub_1ABE23670(v7);
  if (!v3)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  return result;
}

unint64_t sub_1ABE23670(__n128 a1)
{
  sub_1ABDEE424(&v40, a1);
  if (v42 > 0xFBu)
  {
    goto LABEL_40;
  }

  if (v42 < 0xE0u)
  {
LABEL_39:
    sub_1ABDEFF58(v40, v41, *(&v41 + 1), v42);
LABEL_40:
    v1 = 0x80000001ABF92910;
    v17 = sub_1ABE27554();
    v18 = sub_1ABA7BD00(&type metadata for ParserV2Error, v17);
    *v19 = 0xD000000000000027;
    v19[1] = 0x80000001ABF92910;
    sub_1ABAB591C(v18, v19, v20, v21, v22, v23, v24, v25);
    return v1;
  }

  if (v42 == 224 && v40 == 15 && v41 == 0)
  {
    sub_1ABE23820();
    if (v2)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v42 == 224 && v40 == 16 && v41 == 0)
  {
    sub_1ABE244A0(v40, v41, *(&v41 + 1));
    if (v2)
    {
      goto LABEL_43;
    }

LABEL_42:
    sub_1ABAB57B0();
LABEL_43:
    sub_1ABA9A6C0();
    sub_1ABDEFF58(v27, v28, v29, v30);
    return v1;
  }

  v7 = v42 == 224 && v40 == 17;
  if (v7 && v41 == 0)
  {
    sub_1ABE245F8(v40, v41, *(&v41 + 1));
    if (v2)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v8 = v42 == 224 && v40 == 18;
  if (!v8 || v41 != 0)
  {
    goto LABEL_39;
  }

  sub_1ABE247C4();
  if (v2)
  {
    goto LABEL_43;
  }

  sub_1ABA97958(v9, v10, v11, v12, v13, v14, v15, v16, v36, v37, v38, v39);
  sub_1ABE26428();
  v1 = v31;
  sub_1ABA9A6C0();
  sub_1ABDEFF58(v32, v33, v34, v35);
  return v1;
}

void sub_1ABE23820()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for KGQ.Value(0);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v190 - v12;
  sub_1ABE247C4();
  if (v1)
  {
    goto LABEL_113;
  }

  v203 = v4;
  v204 = v6;
  v196 = 0;
  sub_1ABB344F0(v205, v206, v207, v208);
  v14 = 0;
  v192 = 0x80000001ABF85AA0;
  *&v15 = 136315138;
  v198 = v15;
  v193 = MEMORY[0x1E69E7CC0];
  v197 = MEMORY[0x1E69E7CC0];
  v202 = v13;
  v200 = v10;
LABEL_3:
  LODWORD(v191) = v14;
LABEL_4:
  HIDWORD(v191) = v14;
  while (1)
  {
    while (1)
    {
LABEL_5:
      v16 = *(v3 + 72);
      if (*(v16 + 16))
      {
        v18 = *(v16 + 32);
        v17 = *(v16 + 40);
        v19 = *(v16 + 48);
        v209 = *(v3 + 72);
        v20 = *(v16 + 56);
        v21 = *(v3 + 80);
        v2 = *(v3 + 88);
        v22 = *(v3 + 96);
        v23 = *(v3 + 104);
        v24 = sub_1ABA8E458();
        sub_1ABB344B0(v24, v25, v26, v27);
        v28 = v23;
        v13 = v202;
        sub_1ABDEFF58(v21, v2, v22, v28);
        *(v3 + 80) = v18;
        *(v3 + 88) = v17;
        *(v3 + 96) = v19;
        *(v3 + 104) = v20;
        v29 = sub_1ABA8E458();
        isUniquelyReferenced_nonNull_native = sub_1ABB344B0(v29, v30, v31, v32);
      }

      else
      {
        sub_1ABE276BC();
        if (v37)
        {
          goto LABEL_118;
        }

        sub_1ABA82F90(v35, v36);
        v20 = v208;
        v18 = v205;
        v17 = v206;
        v19 = v207;
        if (v208 > 0xFBu)
        {
          v184 = sub_1ABA8E458();
          sub_1ABDEFF58(v184, v185, v186, v187);
          goto LABEL_113;
        }

        sub_1ABDEFF58(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
        *(v3 + 80) = v18;
        *(v3 + 88) = v17;
        *(v3 + 96) = v19;
        *(v3 + 104) = v20;
        v38 = sub_1ABA8E458();
        sub_1ABB344B0(v38, v39, v40, v41);
        v42 = sub_1ABA8E458();
        sub_1ABB344B0(v42, v43, v44, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v125 = sub_1ABA7BEF0();
          sub_1ABADC53C(v125, v126, v127, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        v2 = *(v16 + 16);
        v46 = *(v16 + 24);
        if (v2 >= v46 >> 1)
        {
          v128 = sub_1ABA7BBEC(v46);
          sub_1ABADC53C(v128, v2 + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        *(v16 + 16) = v2 + 1;
        v47 = v16 + 32 * v2;
        *(v47 + 32) = v18;
        *(v47 + 40) = v17;
        *(v47 + 48) = v19;
        *(v47 + 56) = v20;
        v209 = v16;
        *(v3 + 72) = v16;
      }

      if (v20 < 0xE0)
      {
        goto LABEL_52;
      }

      v48 = v19 | v17;
      v49 = v20 == 224 && v18 == 3;
      if (!v49 || v48 != 0)
      {
        break;
      }

      if (*(v209 + 16))
      {
        sub_1ABA82930();
        if (v49)
        {
          v52 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v51 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v52 = sub_1ABAA2E14(v51);
          sub_1ABA83C70(v52);
          sub_1ABA96B10(v53);
          swift_arrayInitWithCopy();
        }

        v60 = sub_1ABA81C24();
        sub_1ABB344B0(v60, v61, v62, v63);

        *(v3 + 72) = v52;
        v64 = sub_1ABA8ECD0();
        sub_1ABB344B0(v64, v65, v66, v67);
      }

      else
      {
        sub_1ABE276BC();
        if (v37)
        {
          goto LABEL_119;
        }

        sub_1ABA82F90(v54, v55);
        v2 = v205;
        v56 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v56, v57, v58, v59);
      }

      v68 = sub_1ABA81C24();
      sub_1ABDEFF58(v68, v69, v70, v71);
    }

    if (v20 == 224 && v18 == 6 && v48 == 0)
    {
      if (*(v209 + 16))
      {
        sub_1ABA82930();
        if (v49)
        {
          v153 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v152 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v153 = sub_1ABAA2E14(v152);
          sub_1ABA83C70(v153);
          sub_1ABA96B10(v154);
          swift_arrayInitWithCopy();
        }

        v161 = sub_1ABA81C24();
        sub_1ABB344B0(v161, v162, v163, v164);

        *(v3 + 72) = v153;
        v165 = sub_1ABA8ECD0();
        sub_1ABB344B0(v165, v166, v167, v168);
      }

      else
      {
        sub_1ABE276BC();
        if (v37)
        {
          __break(1u);
LABEL_125:
          __break(1u);
          return;
        }

        sub_1ABA82F90(v155, v156);
        v2 = v205;
        v157 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v157, v158, v159, v160);
      }

      v169 = sub_1ABA81C24();
      sub_1ABDEFF58(v169, v170, v171, v172);
      v14 = 1;
      if (v191)
      {

        v173 = sub_1ABA955B4();
        sub_1ABA7BD00(&type metadata for ParserV2Error, v173);
        *v174 = 0xD000000000000017;
        *(v174 + 8) = v2;
        *(v174 + 16) = 0;
        goto LABEL_123;
      }

      goto LABEL_3;
    }

    if (v20 == 224 && v18 == 7 && v48 == 0)
    {
      if (*(v209 + 16))
      {
        sub_1ABA82930();
        if (v49)
        {
          v132 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v131 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
          v132 = sub_1ABAA2E14(v131);
          sub_1ABA83C70(v132);
          sub_1ABA96B10(v133);
          swift_arrayInitWithCopy();
        }

        v140 = sub_1ABA81C24();
        sub_1ABB344B0(v140, v141, v142, v143);

        *(v3 + 72) = v132;
        v144 = sub_1ABA8ECD0();
        sub_1ABB344B0(v144, v145, v146, v147);
      }

      else
      {
        sub_1ABE276BC();
        if (v37)
        {
          goto LABEL_125;
        }

        sub_1ABA82F90(v134, v135);
        v2 = v205;
        v136 = sub_1ABA8ECD0();
        sub_1ABDEFF6C(v136, v137, v138, v139);
      }

      v148 = sub_1ABA81C24();
      sub_1ABDEFF58(v148, v149, v150, v151);
      v14 = 0;
      if ((v191 & 0x100000000) != 0)
      {
        goto LABEL_120;
      }

      goto LABEL_4;
    }

    if (v20 == 224 && v18 == 8 && v48 == 0)
    {
      goto LABEL_113;
    }

LABEL_52:
    v195 = v18;
    v201 = v17;
    v78 = v196;
    v79 = sub_1ABE249AC(isUniquelyReferenced_nonNull_native, v34);
    v196 = v78;
    if (v78)
    {
      sub_1ABA96500();

      goto LABEL_113;
    }

    v82 = v79;
    v2 = v80;
    v83 = v81;
    v85 = sub_1ABD7738C(v79) == 1701869940 && v84 == 0xE400000000000000;
    v199 = v2;
    if (v85)
    {
      break;
    }

    v86 = sub_1ABF25054();

    if (v86)
    {
      goto LABEL_64;
    }

    v87 = v193;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADC630();
      v87 = v129;
    }

    v2 = *(v87 + 16);
    v88 = *(v87 + 24);
    v193 = v87;
    if (v2 >= v88 >> 1)
    {
      sub_1ABA7BBEC(v88);
      sub_1ABADC630();
      v193 = v130;
    }

    sub_1ABA96500();
    v89 = v193;
    *(v193 + 16) = v2 + 1;
    v90 = v89 + 24 * v2;
    *(v90 + 32) = v82;
    *(v90 + 40) = v199;
    *(v90 + 48) = v83;
  }

LABEL_64:
  v194 = v19;
  v91 = 0;
  v210 = *(v2 + 16);
  v93 = v200;
  v92 = v201;
  while (1)
  {
    if (v210 == v91)
    {
      sub_1ABDEFF58(v195, v92, v194, v20);

      goto LABEL_5;
    }

    if (v91 >= *(v2 + 16))
    {
      break;
    }

    sub_1ABA7AD90();
    sub_1ABB2D38C(v2 + v94 + *(v95 + 72) * v91, v13);
    sub_1ABB2D38C(v13, v93);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      v108 = sub_1ABF24D84();

      if (v108 < 4)
      {
        v109 = v108;
      }

      else if (v108 == 4)
      {
        v109 = 4;
      }

      else
      {
        if (v108 != 5)
        {
          sub_1ABD6DC28(v13);
LABEL_81:
          ++v91;
          continue;
        }

        v109 = 5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1ABA7BEF0();
        sub_1ABADC708(v115, v116, v117, v118);
        v197 = v119;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {

        v205 = 0;
        v206 = 0xE000000000000000;
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD000000000000024, 0x80000001ABF92940);
        sub_1ABF24C54();
        sub_1ABA90DFC();
        v175 = sub_1ABE27554();
        v176 = sub_1ABA7BD00(&type metadata for ParserV2Error, v175);
        sub_1ABA90B04(v176, v177, v178, v179, v180, v181, v182, v183, v190, v191, v192, v193);
        sub_1ABDEFF58(v195, v92, v194, v20);
        sub_1ABD6DC28(v13);
        sub_1ABD6DC28(v93);
        goto LABEL_113;
      }

      v97 = *v93;
      v98 = v93[1];
      v99 = sub_1ABF24D84();
      if (v99 > 5)
      {
        if (qword_1ED86E458 != -1)
        {
          swift_once();
        }

        v100 = sub_1ABF237F4();
        sub_1ABA7AA24(v100, qword_1ED86E460);

        v101 = sub_1ABF237D4();
        v102 = sub_1ABF24664();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v205 = v104;
          *v103 = v198;
          v105 = sub_1ABADD6D8(v97, v98, &v205);

          *(v103 + 4) = v105;
          _os_log_impl(&dword_1ABA78000, v101, v102, "type %s not found", v103, 0xCu);
          sub_1ABA84B54(v104);
          v106 = v104;
          v2 = v199;
          MEMORY[0x1AC5AB8B0](v106, -1, -1);
          v107 = v103;
          v13 = v202;
          MEMORY[0x1AC5AB8B0](v107, -1, -1);
        }

        else
        {
        }

        sub_1ABD6DC28(v13);
        v93 = v200;
        v92 = v201;
        goto LABEL_81;
      }

      v109 = v99;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_1ABA7BEF0();
        sub_1ABADC708(v120, v121, v122, v123);
        v197 = v124;
      }

      v92 = v201;
    }

    v111 = *(v197 + 16);
    v110 = *(v197 + 24);
    if (v111 >= v110 >> 1)
    {
      v113 = sub_1ABA7BBEC(v110);
      sub_1ABADC708(v113, v111 + 1, 1, v197);
      v197 = v114;
    }

    sub_1ABD6DC28(v13);
    v112 = v197;
    *(v197 + 16) = v111 + 1;
    *(v112 + v111 + 32) = v109;
    ++v91;
    v2 = v199;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  if (!*(v197 + 16) || (v2 = v193, !*(v193 + 16)))
  {

    v188 = sub_1ABA955B4();
    sub_1ABA7BD00(&type metadata for ParserV2Error, v188);
    *v189 = 0xD00000000000002ELL;
    *(v189 + 8) = v2;
    *(v189 + 16) = 1;
LABEL_123:
    swift_willThrow();
  }

LABEL_113:
  sub_1ABA7BC90();
}

unint64_t sub_1ABE244A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABE247C4();
  if (!v4)
  {
    sub_1ABA97958(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22, v23, v24);
    sub_1ABE26428();
    v3 = v13;
    if (*(v14 + 16))
    {
      if (sub_1ABD7738C(*(v14 + 32)) == 0x65756C6176 && v15 == 0xE500000000000000)
      {

LABEL_11:

        return v3;
      }

      v17 = sub_1ABF25054();

      if (v17)
      {
        goto LABEL_11;
      }
    }

    v3 = 0x80000001ABF92A60;
    v18 = sub_1ABE27554();
    sub_1ABA7BD00(&type metadata for ParserV2Error, v18);
    *v19 = 0xD000000000000033;
    *(v19 + 8) = 0x80000001ABF92A60;
    *(v19 + 16) = 1;
    swift_willThrow();
  }

  return v3;
}

void sub_1ABE247C4()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABDEE424(&v27, v4);
  v7 = v27;
  v6 = v28;
  v8 = v29;
  v9 = v30;
  if (v30 <= 0xFBu && (MEMORY[0x1EEE9AC00](v5), v10 = sub_1ABA805B4(), sub_1ABB344B0(v10, v11, v8, v9), v12 = sub_1ABB2FAF4(), v13 = sub_1ABA805B4(), sub_1ABDEFF58(v13, v14, v8, v9), v12))
  {
    sub_1ABDEE144(&v27, v15);
    sub_1ABDEFF58(v27, v28, v29, v30);
    *v3 = v7;
    *(v3 + 8) = v6;
    *(v3 + 16) = v8;
    *(v3 + 24) = v9;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1ABF24AB4();

    v16 = MEMORY[0x1AC5A9750](v1, &unk_1F209CFE0);
    MEMORY[0x1AC5A9410](v16);

    MEMORY[0x1AC5A9410](0x20746F67202CLL, 0xE600000000000000);
    v27 = v7;
    v28 = v6;
    v29 = v8;
    v30 = v9;
    sub_1ABAD219C(&qword_1EB4DA9B8, &unk_1ABF68730);
    v17 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v17);

    v18 = sub_1ABE27554();
    v19 = sub_1ABA7BD00(&type metadata for ParserV2Error, v18);
    sub_1ABA90B04(v19, v20, v21, v22, v23, v24, v25, v26, 0x6465746365707865, 0xE900000000000020, v27, v28);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABE249AC(uint64_t a1, __n128 a2)
{
  sub_1ABDEE144(&v68, a2);
  if (v70 > 0xFBu)
  {
    goto LABEL_6;
  }

  v5 = v68;
  v6 = v69;
  if ((v70 & 0xE0) != 0x80)
  {
    v18 = sub_1ABAA61CC();
    sub_1ABDEFF58(v18, v19, v20, v21);
LABEL_6:
    sub_1ABA8B290();
    sub_1ABF24AB4();

    sub_1ABAB1224();
    v66 = v23 + 18;
    v67 = v22;
    v24 = *(v2 + 88);
    v25 = *(v2 + 96);
    v26 = *(v2 + 104);
    v68 = *(v2 + 80);
    *&v69 = v24;
    *(&v69 + 1) = v25;
    LOBYTE(v70) = v26;
    sub_1ABDEFF6C(v68, v24, v25, v26);
    sub_1ABAD219C(&qword_1EB4DA9B8, &unk_1ABF68730);
    v27 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v27);

    goto LABEL_7;
  }

  v7 = sub_1ABAA61CC();
  sub_1ABB344B0(v7, v8, v9, v10);
  v11 = sub_1ABD779A4(v5, v6);
  if (v11 == 26)
  {
    sub_1ABA8B290();
    sub_1ABF24AB4();

    sub_1ABAB1224();
    v68 = v13 + 16;
    *&v69 = v12;
    MEMORY[0x1AC5A9410](v5, v6);
    v14 = sub_1ABAA61CC();
    sub_1ABDEFF58(v14, v15, v16, v17);
    MEMORY[0x1AC5A9410](0x2071676B206F7420, 0xEC00000062726576);
LABEL_7:
    v28 = sub_1ABE27554();
    v29 = sub_1ABA7BD00(&type metadata for ParserV2Error, v28);
    sub_1ABA90B04(v29, v30, v31, v32, v33, v34, v35, v36, v66, v67, v68, v69);
    return v4;
  }

  v4 = v11;
  v38 = sub_1ABAA61CC();
  sub_1ABDEFF58(v38, v39, v40, v41);
  sub_1ABE247C4();
  if (!v3)
  {
    v49 = v68;
    v50 = v69;
    v51 = v70;
    if (v70 >= 0xE0u && (!(*(&v69 + 1) | v69 | v68) && v70 == 224 || (v70 == 224 ? (v52 = v68 == 2) : (v52 = 0), v52 && v69 == 0 || (v70 == 224 ? (v53 = v68 == 10) : (v53 = 0), v53 && v69 == 0))))
    {
      sub_1ABE24C74(0, v42, v43, v44, v45, v46, v47, v48, v66, v67, SHIDWORD(v67), v68, v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76);
    }

    else
    {
      sub_1ABA8B290();
      sub_1ABF24AB4();

      sub_1ABAB1224();
      v68 = v55;
      *&v69 = v54;
      v56 = MEMORY[0x1AC5A9750](&unk_1F2093B98, &type metadata for KGQ.Argument.Operation);
      MEMORY[0x1AC5A9410](v56);

      v57 = sub_1ABE27554();
      v58 = sub_1ABA7BD00(&type metadata for ParserV2Error, v57);
      sub_1ABA90B04(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      sub_1ABB344F0(v49, v50, *(&v50 + 1), v51);
    }
  }

  return v4;
}

void sub_1ABE24C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  a20 = v24;
  a21 = v25;
  v503 = v22;
  v26 = v21;
  v504 = v27;
  v28 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v515 = &v502 - v29;
  v521 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BC58();
  v519 = v34 - v33;
  type metadata accessor for KGQ.Value(0);
  sub_1ABA7BB64();
  v523 = v36;
  v524 = v35;
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v518 = (v37 - v38);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA88E50();
  v517 = v40;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA88E50();
  v522 = v42;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA88E50();
  v506 = v44;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA88E50();
  v505 = v46;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA88E50();
  v507 = v48;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA88E50();
  v512 = v50;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA88E50();
  v516 = v52;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA88E50();
  v514 = v54;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v55);
  v513 = (&v502 - v56);
  v57 = 0;
  v58 = 0;
  v508 = 0;
  v511 = (v31 + 32);
  v510 = (v31 + 16);
  v509 = (v31 + 8);
  v533 = 0;
  v534 = 0xE000000000000000;
  v525 = MEMORY[0x1E69E7CC0];
  v526 = v21;
  while (2)
  {
    v59 = v57;
    v60 = *(v26 + 72);
    v61 = *(v60 + 16);
    a10 = v59;
    a11 = v58;
    if (v61)
    {
      v63 = *(v60 + 32);
      v62 = *(v60 + 40);
      v64 = *(v60 + 48);
      v65 = *(v60 + 56);
      v31 = *(v26 + 80);
      v21 = *(v26 + 88);
      v23 = *(v26 + 96);
      v66 = *(v526 + 104);
      v67 = sub_1ABA93980();
      sub_1ABB344B0(v67, v68, v69, v70);
      v71 = sub_1ABA7D000();
      v72 = v66;
      v26 = v526;
      sub_1ABDEFF58(v71, v73, v23, v72);
      *(v26 + 80) = v63;
      *(v26 + 88) = v62;
      *(v26 + 96) = v64;
      *(v26 + 104) = v65;
      v74 = sub_1ABA93980();
      sub_1ABB344B0(v74, v75, v76, v77);
    }

    else
    {
      sub_1ABAA2A5C();
      if (v80)
      {
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
        return;
      }

      sub_1ABAA3DDC(v78, v79);
      v65 = v530;
      v63 = v527;
      v62 = v528;
      v64 = v529;
      if (v530 > 0xFBu)
      {
        v457 = sub_1ABA93980();
        sub_1ABDEFF58(v457, v458, v459, v460);

        if (a10)
        {
LABEL_270:
          sub_1ABAD219C(&qword_1EB4D1350, qword_1ABF68740);
          sub_1ABE27694();
          v463 = v462 & ~v461;
          v464 = swift_allocObject();
          *(v464 + 16) = xmmword_1ABF34740;
          v465 = (v464 + v463);
          v466 = v534;
          *v465 = v533;
          v465[1] = v466;
          goto LABEL_271;
        }

        v467 = sub_1ABE27554();
        sub_1ABA7BD00(&type metadata for ParserV2Error, v467);
        *v468 = 0;
        *(v468 + 8) = 0;
        *(v468 + 16) = 2;
LABEL_273:
        swift_willThrow();
        goto LABEL_276;
      }

      sub_1ABAA5A64();
      *(v26 + 80) = v63;
      *(v26 + 88) = v62;
      *(v26 + 96) = v64;
      *(v26 + 104) = v65;
      v81 = sub_1ABA93980();
      sub_1ABB344B0(v81, v82, v83, v84);
      v85 = sub_1ABA93980();
      sub_1ABB344B0(v85, v86, v87, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v433 = sub_1ABA80F18();
        sub_1ABADC53C(v433, v434, v435, v436);
        v60 = v437;
      }

      sub_1ABA99684();
      if (v90)
      {
        v438 = sub_1ABA7EB6C(v89);
        sub_1ABADC53C(v438, v439, v440, v441);
        v60 = v442;
      }

      *(v60 + 16) = v31;
      v91 = v60 + 32 * v21;
      *(v91 + 32) = v63;
      *(v91 + 40) = v62;
      *(v91 + 48) = v64;
      *(v91 + 56) = v65;
      *(v26 + 72) = v60;
    }

    switch(v65 >> 5)
    {
      case 1u:
        v26 = *(v60 + 16);
        if (v26)
        {
          v21 = *(v60 + 32);
          v23 = *(v60 + 40);
          v31 = *(v60 + 48);
          v92 = *(v60 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          v93 = sub_1ABA903EC();
          sub_1ABB344B0(v93, v94, v95, v96);
          v97 = *(v60 + 16);

          v98 = v26 - 1;
          v99 = v60;
          v189 = v97 == v98;
          v100 = a11;
          if (!v189)
          {
            if (v98)
            {
              v446 = sub_1ABADD23C(v98, 0);
              sub_1ABAB2BCC(v446);
              swift_arrayInitWithCopy();
            }

            else
            {
              v99 = MEMORY[0x1E69E7CC0];
            }
          }

          v101 = v526;
          *(v526 + 72) = v99;
          v26 = v101;
          sub_1ABDEFF58(*(v101 + 80), *(v101 + 88), *(v101 + 96), *(v101 + 104));
          *(v26 + 80) = v21;
          *(v26 + 88) = v23;
          *(v26 + 96) = v31;
          *(v26 + 104) = v92;
          v102 = sub_1ABA903EC();
          sub_1ABB344B0(v102, v103, v104, v105);
        }

        else
        {
          sub_1ABAA54F4();
          if (v80)
          {
            goto LABEL_288;
          }

          sub_1ABAA3DDC(v257, v258);
          v21 = v527;
          v23 = v528;
          v31 = v529;
          v259 = v530;
          sub_1ABAA5A64();
          MEMORY[0x50] = v21;
          MEMORY[0x58] = v23;
          MEMORY[0x60] = v31;
          MEMORY[0x68] = v259;
          v260 = sub_1ABA903EC();
          sub_1ABDEFF6C(v260, v261, v262, v263);
          v100 = a11;
        }

        v264 = sub_1ABA903EC();
        sub_1ABDEFF58(v264, v265, v266, v267);
        if (a10)
        {
          v527 = v63;
          v252 = sub_1ABF24FF4();
LABEL_119:
          v31 = v253;
          v21 = &v533;
          MEMORY[0x1AC5A9410](v252);

          v57 = 1;
          v58 = v100;
        }

        else
        {
          *v513 = v63;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v90)
          {
            sub_1ABA7EB6C(v268);
            sub_1ABADC558();
          }

          sub_1ABA7DEFC();
          v256 = v513;
LABEL_125:
          sub_1ABD71960(v256, v255);
          v57 = 0;
          v58 = v100;
        }

        continue;
      case 2u:
        v26 = *(v60 + 16);
        if (v26)
        {
          v21 = *(v60 + 32);
          v23 = *(v60 + 40);
          v31 = *(v60 + 48);
          v168 = *(v60 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          v169 = sub_1ABA903EC();
          sub_1ABB344B0(v169, v170, v171, v172);
          v173 = *(v60 + 16);

          v174 = v26 - 1;
          v175 = v60;
          v189 = v173 == v174;
          v100 = a11;
          if (!v189)
          {
            if (v174)
            {
              v445 = sub_1ABADD23C(v174, 0);
              sub_1ABAB2BCC(v445);
              swift_arrayInitWithCopy();
            }

            else
            {
              v175 = MEMORY[0x1E69E7CC0];
            }
          }

          v176 = v526;
          *(v526 + 72) = v175;
          v26 = v176;
          sub_1ABDEFF58(*(v176 + 80), *(v176 + 88), *(v176 + 96), *(v176 + 104));
          *(v26 + 80) = v21;
          *(v26 + 88) = v23;
          *(v26 + 96) = v31;
          *(v26 + 104) = v168;
          v177 = sub_1ABA903EC();
          sub_1ABB344B0(v177, v178, v179, v180);
        }

        else
        {
          sub_1ABAA54F4();
          if (v80)
          {
            goto LABEL_287;
          }

          sub_1ABAA3DDC(v241, v242);
          v21 = v527;
          v23 = v528;
          v31 = v529;
          v243 = v530;
          sub_1ABAA5A64();
          MEMORY[0x50] = v21;
          MEMORY[0x58] = v23;
          MEMORY[0x60] = v31;
          MEMORY[0x68] = v243;
          v244 = sub_1ABA903EC();
          sub_1ABDEFF6C(v244, v245, v246, v247);
          v100 = a11;
        }

        v248 = sub_1ABA903EC();
        sub_1ABDEFF58(v248, v249, v250, v251);
        if (a10)
        {
          v252 = sub_1ABF24314();
          goto LABEL_119;
        }

        *v514 = v63;
        swift_storeEnumTagMultiPayload();
        if ((sub_1ABA8879C() & 1) == 0)
        {
          sub_1ABA80F18();
          sub_1ABADC558();
        }

        sub_1ABA99684();
        if (v90)
        {
          sub_1ABA7EB6C(v254);
          sub_1ABADC558();
        }

        sub_1ABA7DEFC();
        v256 = v514;
        goto LABEL_125;
      case 3u:
        v117 = sub_1ABA93980();
        sub_1ABDEFF6C(v117, v118, v119, v120);
        sub_1ABAA3670();
        sub_1ABDEE144(v121, v122);
        sub_1ABA96158();
        v31 = v515;
        sub_1ABA7C5D0();
        sub_1ABE26C20(v123);
        v21 = v521;
        if (sub_1ABA7E1E0(v31, 1, v521) == 1)
        {
          sub_1ABA925A4(v31, &qword_1EB4D9BF0, &qword_1ABF34240);
          sub_1ABA7C5D0();
          v124 = sub_1ABE26FD8();
          if (v125)
          {
            v126 = sub_1ABA93980();
            sub_1ABDEFF6C(v126, v127, v128, v129);
            v130 = sub_1ABA7C5D0();
            EntityIdentifier.init(_:)(v130, v131, v132);
            if (v528)
            {
              v133 = sub_1ABA93980();
              sub_1ABDEFF6C(v133, v134, v135, v136);
              v137 = sub_1ABA7C5D0();
              v139 = sub_1ABD779A4(v137, v138);
              if (v139 == 26)
              {
                v140 = v506;
                *v506 = v63;
                v140[1] = v62;
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA80F18();
                  sub_1ABADC558();
                }

                sub_1ABA99684();
                if (v90)
                {
                  sub_1ABA7EB6C(v141);
                  sub_1ABADC558();
                }

                v142 = sub_1ABA93980();
                sub_1ABDEFF58(v142, v143, v144, v145);
                sub_1ABA7DEFC();
                v147 = &a12;
              }

              else
              {
                v31 = v139;
                v323 = sub_1ABA93980();
                sub_1ABDEFF58(v323, v324, v325, v326);
                *v505 = v31;
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA80F18();
                  sub_1ABADC558();
                }

                sub_1ABA99684();
                if (v90)
                {
                  sub_1ABA7EB6C(v327);
                  sub_1ABADC558();
                }

                v328 = sub_1ABA93980();
                sub_1ABDEFF58(v328, v329, v330, v331);
                sub_1ABA7DEFC();
                v147 = &a10;
              }
            }

            else
            {
              v31 = v527;
              v296 = sub_1ABA93980();
              sub_1ABDEFF58(v296, v297, v298, v299);
              *v507 = v31;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABA80F18();
                sub_1ABADC558();
              }

              sub_1ABA99684();
              if (v90)
              {
                sub_1ABA7EB6C(v300);
                sub_1ABADC558();
              }

              v301 = sub_1ABA93980();
              sub_1ABDEFF58(v301, v302, v303, v304);
              sub_1ABA7DEFC();
              v147 = &a13;
            }
          }

          else
          {
            v31 = v124;
            v269 = sub_1ABA93980();
            sub_1ABDEFF58(v269, v270, v271, v272);
            *v512 = v31;
            swift_storeEnumTagMultiPayload();
            if ((sub_1ABA8879C() & 1) == 0)
            {
              sub_1ABA80F18();
              sub_1ABADC558();
            }

            sub_1ABA99684();
            if (v90)
            {
              sub_1ABA7EB6C(v273);
              sub_1ABADC558();
            }

            v274 = sub_1ABA93980();
            sub_1ABDEFF58(v274, v275, v276, v277);
            sub_1ABA7DEFC();
            v147 = &a18;
          }

          v167 = *(v147 - 32);
        }

        else
        {
          v205 = sub_1ABA93980();
          sub_1ABDEFF58(v205, v206, v207, v208);
          v209 = v519;
          (*v511)(v519, v31, v21);
          v31 = v516;
          (*v510)(v516, v209, v21);
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v90)
          {
            sub_1ABA7EB6C(v210);
            sub_1ABADC558();
          }

          v211 = sub_1ABA93980();
          sub_1ABDEFF58(v211, v212, v213, v214);
          (*v509)(v519, v521);
          sub_1ABA7DEFC();
          v167 = v516;
        }

        goto LABEL_157;
      case 4u:
        v148 = sub_1ABA93980();
        sub_1ABDEFF6C(v148, v149, v150, v151);
        sub_1ABAA3670();
        sub_1ABDEE144(v152, v153);
        sub_1ABA96158();
        v154 = sub_1ABA93980();
        sub_1ABDEFF6C(v154, v155, v156, v157);
        v158 = sub_1ABA7C5D0();
        v160 = sub_1ABD779A4(v158, v159);
        if (v160 == 26)
        {
          v161 = v518;
          *v518 = v63;
          v161[1] = v62;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v90)
          {
            sub_1ABA7EB6C(v162);
            sub_1ABADC558();
          }

          v163 = sub_1ABA93980();
          sub_1ABDEFF58(v163, v164, v165, v166);
          sub_1ABA7DEFC();
          v167 = v518;
        }

        else
        {
          v31 = v160;
          v215 = sub_1ABA93980();
          sub_1ABDEFF58(v215, v216, v217, v218);
          *v517 = v31;
          swift_storeEnumTagMultiPayload();
          if ((sub_1ABA8879C() & 1) == 0)
          {
            sub_1ABA80F18();
            sub_1ABADC558();
          }

          sub_1ABA99684();
          if (v90)
          {
            sub_1ABA7EB6C(v219);
            sub_1ABADC558();
          }

          v220 = sub_1ABA93980();
          sub_1ABDEFF58(v220, v221, v222, v223);
          sub_1ABA7DEFC();
          v167 = v517;
        }

LABEL_157:
        sub_1ABD71960(v167, v146);
        v57 = a10;
        v58 = a11;
        continue;
      case 5u:
        v26 = *(v60 + 16);
        if (v26)
        {
          v520 = v63;
          v107 = *(v60 + 32);
          v106 = *(v60 + 40);
          v108 = *(v60 + 48);
          v109 = *(v60 + 56);
          sub_1ABA97680();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();
          a10 = v109;
          sub_1ABB344B0(v107, v106, v108, v109);
          v110 = *(v60 + 16);

          v111 = v26 - 1;
          v189 = v110 == v26 - 1;
          v112 = v107;
          v63 = v108;
          v113 = v60;
          v26 = v526;
          if (!v189)
          {
            v502 = v63;
            if (v111)
            {
              v113 = sub_1ABADD23C(v111, 0);
              swift_arrayInitWithCopy();
            }

            else
            {
              v113 = MEMORY[0x1E69E7CC0];
            }

            v63 = v502;
          }

          *(v26 + 72) = v113;
          sub_1ABAA5A64();
          *(v26 + 80) = v112;
          *(v26 + 88) = v106;
          *(v26 + 96) = v63;
          v23 = a10;
          *(v26 + 104) = a10;
          v114 = sub_1ABA7D000();
          sub_1ABB344B0(v114, v115, v63, v23);
          v116 = v63;
          LOBYTE(v63) = v520;
        }

        else
        {
          sub_1ABAA54F4();
          if (v80)
          {
            goto LABEL_289;
          }

          sub_1ABAA3DDC(v232, v233);
          v234 = v527;
          v235 = v528;
          v116 = v529;
          v23 = v530;
          sub_1ABAA5A64();
          MEMORY[0x50] = v234;
          MEMORY[0x58] = v235;
          MEMORY[0x60] = v116;
          MEMORY[0x68] = v23;
          v236 = sub_1ABA7D000();
          sub_1ABDEFF6C(v236, v237, v116, v23);
        }

        v238 = sub_1ABA7D000();
        sub_1ABDEFF58(v238, v239, v116, v23);
        v31 = 0xE200000000000000;
        v240 = 17741;
        switch(v63)
        {
          case 1:
            v31 = 0xE300000000000000;
            v240 = 4999502;
            break;
          case 2:
            v31 = 0xE300000000000000;
            v240 = 5721934;
            break;
          case 3:
            v31 = 0xE900000000000054;
            v240 = 0x524154535F594144;
            break;
          case 4:
            v31 = 0xE700000000000000;
            v240 = 0x444E455F594144;
            break;
          case 5:
            v31 = 0xEA00000000005452;
            v333 = 1262830935;
            goto LABEL_170;
          case 6:
            v31 = 0xE800000000000000;
            v334 = 1262830935;
            goto LABEL_174;
          case 7:
            v240 = 0x54535F48544E4F4DLL;
            v332 = 5526081;
            goto LABEL_168;
          case 8:
            v31 = 0xE900000000000044;
            v240 = 0x4E455F48544E4F4DLL;
            break;
          case 9:
            v31 = 0xEA00000000005452;
            v333 = 1380009305;
LABEL_170:
            v240 = v333 | 0x4154535F00000000;
            break;
          case 10:
            v31 = 0xE800000000000000;
            v334 = 1380009305;
LABEL_174:
            v240 = v334 | 0x444E455F00000000;
            break;
          case 11:
            v31 = 0xE500000000000000;
            v240 = 0x5941445F31;
            break;
          case 12:
            v31 = 0xE600000000000000;
            v240 = 0x4B4545575F31;
            break;
          case 13:
            v31 = 0xE700000000000000;
            v240 = 0x48544E4F4D5F31;
            break;
          case 14:
            v31 = 0xE600000000000000;
            v240 = 0x524145595F31;
            break;
          case 15:
            v240 = 0x464F5F5452415453;
            v31 = 0xED0000454D49545FLL;
            break;
          case 16:
            v240 = 0x545F464F5F444E45;
            v332 = 4541769;
LABEL_168:
            v31 = (v332 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
            break;
          default:
            break;
        }

        v21 = &v533;
        MEMORY[0x1AC5A9410](v240, v31);
        v335 = sub_1ABA93980();
        sub_1ABDEFF58(v335, v336, v337, v338);

        v57 = 1;
        v58 = a11;
        continue;
      case 6u:
        sub_1ABAA3670();
        sub_1ABDEE144(v181, v182);
        sub_1ABA96158();
        *v522 = v63;
        swift_storeEnumTagMultiPayload();
        if ((sub_1ABA8879C() & 1) == 0)
        {
          sub_1ABA80F18();
          sub_1ABADC558();
          v60 = v443;
        }

        v183 = a10;
        v23 = a11;
        sub_1ABA99684();
        if (v90)
        {
          sub_1ABA7EB6C(v184);
          sub_1ABADC558();
          v60 = v444;
        }

        *(v60 + 16) = v31;
        sub_1ABA7AD90();
        v525 = v60;
        sub_1ABD71960(v187, v60 + v185 + *(v186 + 72) * v21);
        v57 = v183;
        v58 = v23;
        continue;
      case 7u:
        v188 = v64 | v62;
        v189 = v65 == 224 && v63 == 3;
        if (!v189 || v188 != 0)
        {
          if (v65 == 224 && v63 == 4 && v188 == 0)
          {
            v31 = *(v60 + 16);
            if (v31)
            {
              sub_1ABA84354();
              v278 = sub_1ABA7C72C();
              sub_1ABB344B0(v278, v279, v280, v281);
              sub_1ABAA0FC4();

              sub_1ABAA3290();
              v26 = v526;
              if (!v189)
              {
                if (v23)
                {
                  v449 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                  v31 = sub_1ABAA2E14(v449);
                  v450 = j__malloc_size(v31);
                  sub_1ABA7F8FC(v450);
                  swift_arrayInitWithCopy();
                }

                else
                {
                  v31 = MEMORY[0x1E69E7CC0];
                }
              }

              *(v26 + 72) = v31;
              v282 = sub_1ABA8FA14();
              sub_1ABB344B0(v282, v283, v284, v285);
            }

            else
            {
              sub_1ABAA2A5C();
              if (v80)
              {
                goto LABEL_291;
              }

              sub_1ABAA3DDC(v313, v314);
              v21 = v527;
              v315 = sub_1ABA8FA14();
              sub_1ABDEFF6C(v315, v316, v317, v318);
            }

            v319 = sub_1ABA7C72C();
            sub_1ABDEFF58(v319, v320, v321, v322);
            sub_1ABAB559C();
          }

          else
          {
            if (v65 == 224 && v63 == 5 && v188 == 0)
            {
              sub_1ABAA3670();
              sub_1ABDEE144(v484, v485);
              sub_1ABA96158();
              if ((v508 & 1) == 0)
              {
                v486 = v534;

                v487 = sub_1ABA955B4();
                sub_1ABA7BD00(&type metadata for ParserV2Error, v487);
                *v488 = 0xD000000000000017;
                *(v488 + 8) = v486;
                *(v488 + 16) = 0;
                goto LABEL_273;
              }

              if (a10)
              {
LABEL_284:

                goto LABEL_270;
              }

LABEL_285:

              goto LABEL_276;
            }

            if (v65 == 224 && v63 == 6 && v188 == 0)
            {
              v31 = *(v60 + 16);
              if (v31)
              {
                sub_1ABA84354();
                swift_unknownObjectRetain();
                v305 = sub_1ABA7C72C();
                sub_1ABB344B0(v305, v306, v307, v308);
                sub_1ABAA0FC4();

                sub_1ABAA3290();
                v26 = v526;
                if (!v189)
                {
                  if (v23)
                  {
                    v451 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                    v31 = sub_1ABAA2E14(v451);
                    v452 = j__malloc_size(v31);
                    sub_1ABA7F8FC(v452);
                    swift_arrayInitWithCopy();
                  }

                  else
                  {
                    v31 = MEMORY[0x1E69E7CC0];
                  }
                }

                *(v26 + 72) = v31;
                v309 = sub_1ABA8FA14();
                sub_1ABB344B0(v309, v310, v311, v312);
              }

              else
              {
                sub_1ABAA2A5C();
                if (v80)
                {
                  goto LABEL_292;
                }

                sub_1ABAA3DDC(v345, v346);
                v21 = v527;
                v347 = sub_1ABA8FA14();
                sub_1ABDEFF6C(v347, v348, v349, v350);
              }

              v351 = sub_1ABA7C72C();
              sub_1ABDEFF58(v351, v352, v353, v354);
              sub_1ABAB559C();
              if ((v504 & 1) == 0)
              {

                v489 = sub_1ABE27554();
                v490 = sub_1ABA7BD00(&type metadata for ParserV2Error, v489);
                *v491 = xmmword_1ABF68590;
                sub_1ABAB591C(v490, v491, v492, v493, v494, v495, v496, v497);
                sub_1ABA9A6C0();
                goto LABEL_275;
              }
            }

            else
            {
              if (v65 == 224 && v63 == 7 && v188 == 0)
              {
                if (a10)
                {
                  goto LABEL_284;
                }

                goto LABEL_285;
              }

              v199 = v65 == 224 && v63 == 11;
              if (!v199 || v188)
              {
                v339 = v65 == 224 && v63 == 12;
                if (!v339 || v188)
                {
                  v355 = v65 == 224 && v63 == 13;
                  if (!v355 || v188)
                  {
                    v370 = v65 == 224 && v63 == 14;
                    v26 = v526;
                    if (!v370 || v188)
                    {
LABEL_274:

                      v531 = sub_1ABB28D54(2);
                      v532 = v469;
                      v527 = v63;
                      v528 = v62;
                      v529 = v64;
                      v530 = v65;
                      sub_1ABF24C54();
                      v470 = v531;
                      v471 = v532;
                      v472 = sub_1ABE27554();
                      v473 = sub_1ABA7BD00(&type metadata for ParserV2Error, v472);
                      *v474 = v470;
                      v474[1] = v471;
                      sub_1ABAB591C(v473, v474, v475, v476, v477, v478, v479, v480);
                      v498 = sub_1ABA93980();
LABEL_275:
                      sub_1ABDEFF58(v498, v499, v500, v501);
                      goto LABEL_276;
                    }

                    v31 = *(v60 + 16);
                    if (v31)
                    {
                      sub_1ABA84354();
                      swift_unknownObjectRetain();
                      v371 = sub_1ABA7C72C();
                      sub_1ABB344B0(v371, v372, v373, v374);
                      sub_1ABAA0FC4();

                      sub_1ABAA3290();
                      if (!v189)
                      {
                        if (v23)
                        {
                          v455 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                          v31 = sub_1ABAA2E14(v455);
                          v456 = j__malloc_size(v31);
                          sub_1ABA7F8FC(v456);
                          swift_arrayInitWithCopy();
                        }

                        else
                        {
                          v31 = MEMORY[0x1E69E7CC0];
                        }
                      }

                      v26 = v526;
                      *(v526 + 72) = v31;
                      v375 = sub_1ABA8FA14();
                      sub_1ABB344B0(v375, v376, v377, v378);
                    }

                    else
                    {
                      sub_1ABAA2A5C();
                      if (v80)
                      {
                        goto LABEL_296;
                      }

                      sub_1ABAA3DDC(v418, v419);
                      v21 = v527;
                      v420 = sub_1ABA8FA14();
                      sub_1ABDEFF6C(v420, v421, v422, v423);
                    }

                    v424 = sub_1ABA7C72C();
                    sub_1ABDEFF58(v424, v425, v426, v427);
                    sub_1ABAA205C();
                    if (v428)
                    {
                      v21 = &v533;
                      MEMORY[0x1AC5A9410](47, 0xE100000000000000);
LABEL_234:
                      sub_1ABA9A6C0();
                      sub_1ABDEFF58(v429, v430, v431, v432);
                      v57 = 1;
                      v58 = v31;
                    }
                  }

                  else
                  {
                    v31 = *(v60 + 16);
                    if (v31)
                    {
                      sub_1ABA84354();
                      swift_unknownObjectRetain();
                      v356 = sub_1ABA7C72C();
                      sub_1ABB344B0(v356, v357, v358, v359);
                      sub_1ABAA0FC4();

                      sub_1ABAA3290();
                      if (!v189)
                      {
                        if (v23)
                        {
                          v453 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                          v31 = sub_1ABAA2E14(v453);
                          v454 = j__malloc_size(v31);
                          sub_1ABA7F8FC(v454);
                          swift_arrayInitWithCopy();
                        }

                        else
                        {
                          v31 = MEMORY[0x1E69E7CC0];
                        }
                      }

                      v26 = v526;
                      *(v526 + 72) = v31;
                      v360 = sub_1ABA8FA14();
                      sub_1ABB344B0(v360, v361, v362, v363);
                    }

                    else
                    {
                      sub_1ABAA54F4();
                      if (v80)
                      {
                        goto LABEL_295;
                      }

                      sub_1ABAA3DDC(v407, v408);
                      v21 = v527;
                      v409 = sub_1ABA8FA14();
                      sub_1ABDEFF6C(v409, v410, v411, v412);
                    }

                    v413 = sub_1ABA7C72C();
                    sub_1ABDEFF58(v413, v414, v415, v416);
                    sub_1ABAA205C();
                    if (v417)
                    {
                      v21 = &v533;
                      MEMORY[0x1AC5A9410](42, 0xE100000000000000);
                      goto LABEL_234;
                    }
                  }
                }

                else
                {
                  v26 = *(v60 + 16);
                  if (!v26)
                  {
                    sub_1ABAA54F4();
                    if (v80)
                    {
                      goto LABEL_294;
                    }

                    sub_1ABAA3DDC(v390, v391);
                    v21 = v527;
                    v392 = sub_1ABA8FA14();
                    sub_1ABDEFF6C(v392, v393, v394, v395);
                    goto LABEL_224;
                  }

                  sub_1ABAA1AB4();
                  v340 = sub_1ABA7C72C();
                  sub_1ABB344B0(v340, v341, v342, v343);
                  v344 = sub_1ABA973C8();
                  if (v344)
                  {
                    v31 = v344;
                  }

                  else
                  {
                    v23 = v26 - 1;
                    if (v26 == 1)
                    {
                      sub_1ABA97680();
                      swift_bridgeObjectRelease_n();
                      v31 = MEMORY[0x1E69E7CC0];
                      goto LABEL_223;
                    }

                    v396 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                    v31 = sub_1ABAA2E14(v396);
                    v397 = j__malloc_size(v31);
                    sub_1ABA7F8FC(v397);
                    swift_arrayInitWithCopy();
                  }

                  sub_1ABA97680();
                  swift_bridgeObjectRelease_n();
LABEL_223:
                  v26 = v526;
                  *(v526 + 72) = v31;
                  v398 = sub_1ABA8FA14();
                  sub_1ABB344B0(v398, v399, v400, v401);
LABEL_224:
                  v402 = sub_1ABA7C72C();
                  sub_1ABDEFF58(v402, v403, v404, v405);
                  sub_1ABAA205C();
                  if (v406)
                  {
                    v21 = &v533;
                    MEMORY[0x1AC5A9410](43, 0xE100000000000000);
                    goto LABEL_234;
                  }
                }
              }

              else
              {
                v26 = *(v60 + 16);
                if (!v26)
                {
                  sub_1ABAA54F4();
                  if (v80)
                  {
                    goto LABEL_293;
                  }

                  sub_1ABAA3DDC(v364, v365);
                  v21 = v527;
                  v366 = sub_1ABA8FA14();
                  sub_1ABDEFF6C(v366, v367, v368, v369);
                  goto LABEL_216;
                }

                sub_1ABAA1AB4();
                v200 = sub_1ABA7C72C();
                sub_1ABB344B0(v200, v201, v202, v203);
                v204 = sub_1ABA973C8();
                if (v204)
                {
                  v31 = v204;
                }

                else
                {
                  v23 = v26 - 1;
                  if (v26 == 1)
                  {
                    sub_1ABA97680();
                    swift_bridgeObjectRelease_n();
                    v31 = MEMORY[0x1E69E7CC0];
                    goto LABEL_215;
                  }

                  v379 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
                  v31 = sub_1ABAA2E14(v379);
                  v380 = j__malloc_size(v31);
                  sub_1ABA7F8FC(v380);
                  swift_arrayInitWithCopy();
                }

                sub_1ABA97680();
                swift_bridgeObjectRelease_n();
LABEL_215:
                v26 = v526;
                *(v526 + 72) = v31;
                v381 = sub_1ABA8FA14();
                sub_1ABB344B0(v381, v382, v383, v384);
LABEL_216:
                v385 = sub_1ABA7C72C();
                sub_1ABDEFF58(v385, v386, v387, v388);
                sub_1ABAA205C();
                if (v389)
                {
                  v21 = &v533;
                  MEMORY[0x1AC5A9410](45, 0xE100000000000000);
                  goto LABEL_234;
                }
              }
            }
          }

          continue;
        }

        v31 = *(v60 + 16);
        if (v31)
        {
          sub_1ABA84354();
          swift_unknownObjectRetain();
          v224 = sub_1ABA7C72C();
          sub_1ABB344B0(v224, v225, v226, v227);
          sub_1ABAA0FC4();

          sub_1ABAA3290();
          v26 = v526;
          if (!v189)
          {
            if (v23)
            {
              v447 = sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
              v31 = sub_1ABAA2E14(v447);
              v448 = j__malloc_size(v31);
              sub_1ABA7F8FC(v448);
              swift_arrayInitWithCopy();
            }

            else
            {
              v31 = MEMORY[0x1E69E7CC0];
            }
          }

          *(v26 + 72) = v31;
          v228 = sub_1ABA8FA14();
          sub_1ABB344B0(v228, v229, v230, v231);
        }

        else
        {
          sub_1ABAA2A5C();
          if (v80)
          {
            goto LABEL_290;
          }

          sub_1ABAA3DDC(v286, v287);
          v21 = v527;
          v288 = sub_1ABA8FA14();
          sub_1ABDEFF6C(v288, v289, v290, v291);
        }

        v292 = sub_1ABA7C72C();
        sub_1ABDEFF58(v292, v293, v294, v295);
        v58 = 1;
        v57 = a10;
        if (a11)
        {
          continue;
        }

        if ((a10 & 1) == 0)
        {
          goto LABEL_285;
        }

        sub_1ABAD219C(&qword_1EB4D1350, qword_1ABF68740);
        sub_1ABE27694();
        v481 = swift_allocObject();
        sub_1ABB7D790(v481, 1);
        v482 = v534;
        *v483 = v533;
        v483[1] = v482;
LABEL_271:
        swift_storeEnumTagMultiPayload();
LABEL_276:
        sub_1ABA7BC90();
        return;
      default:
        goto LABEL_274;
    }
  }
}

void sub_1ABE26428()
{
  sub_1ABA7BCA8();
  v3 = v2;
  type metadata accessor for KGQ.Value(0);
  sub_1ABA7BB64();
  v141 = v5;
  v142 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v147 = (v6 - v7);
  sub_1ABA7D5FC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v134 - v10;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v136 = v1;
  v137 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    LODWORD(v135) = v12;
LABEL_3:
    HIDWORD(v135) = v12;
    while (1)
    {
      v139 = v3;
LABEL_5:
      v14 = *(v1 + 72);
      if (*(v14 + 16))
      {
        v16 = *(v14 + 32);
        v15 = *(v14 + 40);
        v17 = *(v14 + 48);
        v18 = *(v14 + 56);
        v19 = *(v1 + 80);
        *&v140 = *(v1 + 88);
        *(&v140 + 1) = v19;
        v138 = *(v1 + 96);
        v20 = *(v1 + 104);
        sub_1ABAA2654();
        sub_1ABB344B0(v21, v22, v23, v18);
        v24 = v20;
        v0 = v18;
        v25 = v16;
        sub_1ABDEFF58(*(&v140 + 1), v140, v138, v24);
        *(v1 + 80) = v16;
        *(v1 + 88) = v15;
        *(v1 + 96) = v17;
        *(v1 + 104) = v0;
        *&v140 = v15;
        *(&v140 + 1) = v17;
        sub_1ABAA2654();
        isUniquelyReferenced_nonNull_native = sub_1ABB344B0(v26, v27, v28, v0);
        v3 = v139;
      }

      else
      {
        v31 = *(v1 + 112);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          goto LABEL_79;
        }

        *(v1 + 112) = v33;
        sub_1ABDED914(&v143, v9);
        v34 = v146;
        v25 = v143;
        v35 = v144;
        v36 = v145;
        if (v146 > 0xFBu)
        {
          sub_1ABAA2654();
          sub_1ABDEFF58(v129, v130, v131, v34);
          goto LABEL_71;
        }

        sub_1ABAA5064();
        *(v1 + 96) = v36;
        *(v1 + 104) = v34;
        sub_1ABAA2654();
        sub_1ABB344B0(v37, v38, v39, v34);
        *&v140 = v35;
        *(&v140 + 1) = v36;
        sub_1ABAA2654();
        sub_1ABB344B0(v40, v41, v42, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = v139;
        v43 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = sub_1ABA80F18();
          sub_1ABADC53C(v69, v70, v71, v72);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v45 = *(v14 + 16);
        v44 = *(v14 + 24);
        if (v45 >= v44 >> 1)
        {
          v73 = sub_1ABA7BBEC(v44);
          sub_1ABADC53C(v73, v45 + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v45 + 1;
        v46 = v14 + 32 * v45;
        v47 = v140;
        *(v46 + 32) = v25;
        *(v46 + 40) = v47;
        v0 = v43;
        *(v46 + 56) = v43;
        *(v1 + 72) = v14;
      }

      if (v0 < 0xE0)
      {
        goto LABEL_29;
      }

      v48 = v0 == 224 && v25 == 6;
      if (v48 && v140 == 0)
      {
        break;
      }

      if (v0 == 224 && v25 == 7 && v140 == 0)
      {
        v81 = *(v14 + 16);
        if (v81)
        {
          v83 = *(v14 + 32);
          v82 = *(v14 + 40);
          v139 = *(v14 + 48);
          *&v140 = v82;
          v84 = *(v14 + 56);
          v85 = v81 - 1;
          if (v81 == 1)
          {
            *(&v140 + 1) = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
            v86 = swift_allocObject();
            sub_1ABA83C70(v86);
            v86[2] = v85;
            v86[3] = v87;
            *(&v140 + 1) = v86;
            swift_arrayInitWithCopy();
          }

          v0 = v139;
          sub_1ABB344B0(v83, v140, v139, v84);

          *(v1 + 72) = *(&v140 + 1);
          sub_1ABAA5064();
          sub_1ABAA11C4();
        }

        else
        {
          v88 = *(v1 + 112);
          v32 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v32)
          {
            goto LABEL_82;
          }

          *(v1 + 112) = v89;
          sub_1ABDED914(&v143, v30);
          v1 = v136;
          v90 = v145;
          v91 = v146;
          sub_1ABAA5064();
          *(v1 + 96) = v90;
          *(v1 + 104) = v91;
          v92 = sub_1ABAA46B4();
          sub_1ABDEFF6C(v92, v93, v94, v95);
        }

        v96 = sub_1ABAA46B4();
        sub_1ABDEFF58(v96, v97, v98, v99);
        v12 = 0;
        if ((v135 & 0x100000000) == 0)
        {
          goto LABEL_3;
        }

LABEL_75:
        if (*(v13 + 16))
        {
          v0 = v137;
          if (*(v137 + 16))
          {
            goto LABEL_71;
          }
        }

LABEL_79:

        v132 = sub_1ABA955B4();
        sub_1ABA7BD00(&type metadata for ParserV2Error, v132);
        *v133 = 0xD000000000000031;
        *(v133 + 8) = v0;
        *(v133 + 16) = 1;
        goto LABEL_80;
      }

LABEL_29:
      LODWORD(v138) = v0;
      v52 = sub_1ABE249AC(isUniquelyReferenced_nonNull_native, v30);
      if (v3)
      {
        sub_1ABAA18B4();

        goto LABEL_71;
      }

      v55 = v52;
      v0 = v53;
      v56 = v54;
      v139 = 0;
      if (sub_1ABD7738C(v52) == 0x656372756F73 && v57 == 0xE600000000000000)
      {

LABEL_37:
        v60 = 0;
        v61 = *(v0 + 16);
        while (1)
        {
          if (v61 == v60)
          {
            sub_1ABAA18B4();

            v1 = v136;
            goto LABEL_5;
          }

          if (v60 >= *(v0 + 16))
          {
            break;
          }

          sub_1ABA7AD90();
          sub_1ABB2D38C(v0 + v62 + *(v63 + 72) * v60, v11);
          sub_1ABB2D38C(v11, v147);
          if (swift_getEnumCaseMultiPayload() != 5)
          {

            v143 = 0;
            v144 = 0xE000000000000000;
            sub_1ABF24AB4();
            MEMORY[0x1AC5A9410](0xD000000000000024, 0x80000001ABF92940);
            sub_1ABF24C54();
            sub_1ABA90DFC();
            v120 = sub_1ABE27554();
            v121 = sub_1ABA7BD00(&type metadata for ParserV2Error, v120);
            sub_1ABA90B04(v121, v122, v123, v124, v125, v126, v127, v128, v134, v135, v136, v137);
            sub_1ABAA18B4();
            sub_1ABD6DC28(v11);
            sub_1ABD6DC28(v147);
            goto LABEL_71;
          }

          v64 = *v147;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABADC7D4();
            v13 = v67;
          }

          v66 = *(v13 + 16);
          v65 = *(v13 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1ABA7BBEC(v65);
            sub_1ABADC7D4();
            v13 = v68;
          }

          sub_1ABD6DC28(v11);
          *(v13 + 16) = v66 + 1;
          *(v13 + 8 * v66 + 32) = v64;
          ++v60;
        }

        __break(1u);
        goto LABEL_75;
      }

      v59 = sub_1ABF25054();

      if (v59)
      {
        goto LABEL_37;
      }

      v74 = swift_isUniquelyReferenced_nonNull_native();
      if ((v74 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC630();
        v137 = v79;
      }

      v76 = *(v137 + 16);
      v75 = *(v137 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1ABA7BBEC(v75);
        sub_1ABADC630();
        v137 = v80;
      }

      sub_1ABAA18B4();
      v77 = v137;
      *(v137 + 16) = v76 + 1;
      v78 = v77 + 24 * v76;
      *(v78 + 32) = v55;
      *(v78 + 40) = v0;
      *(v78 + 48) = v56;
      v3 = v139;
      v1 = v136;
    }

    v100 = *(v14 + 16);
    if (v100)
    {
      v101 = *(v14 + 32);
      *(&v140 + 1) = *(v14 + 40);
      v139 = *(v14 + 48);
      v102 = *(v14 + 56);
      v103 = v100 - 1;
      if (v100 == 1)
      {
        *&v140 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D1340, &qword_1ABF334C8);
        v104 = swift_allocObject();
        sub_1ABA83C70(v104);
        v104[2] = v103;
        v104[3] = v105;
        *&v140 = v104;
        swift_arrayInitWithCopy();
      }

      v0 = v139;
      sub_1ABB344B0(v101, *(&v140 + 1), v139, v102);

      *(v1 + 72) = v140;
      sub_1ABAA5064();
      sub_1ABAA11C4();
LABEL_68:
      v114 = sub_1ABAA46B4();
      sub_1ABDEFF58(v114, v115, v116, v117);
      v12 = 1;
      if ((v135 & 1) == 0)
      {
        continue;
      }

      v118 = sub_1ABA955B4();
      sub_1ABA7BD00(&type metadata for ParserV2Error, v118);
      *v119 = 0xD00000000000001ALL;
      *(v119 + 8) = v0;
      *(v119 + 16) = 0;
LABEL_80:
      swift_willThrow();
LABEL_71:
      sub_1ABA7BC90();
      return;
    }

    break;
  }

  v106 = *(v1 + 112);
  v32 = __OFADD__(v106, 1);
  v107 = v106 + 1;
  if (!v32)
  {
    *(v1 + 112) = v107;
    sub_1ABDED914(&v143, v30);
    v1 = v136;
    v108 = v145;
    v109 = v146;
    sub_1ABAA5064();
    *(v1 + 96) = v108;
    *(v1 + 104) = v109;
    v110 = sub_1ABAA46B4();
    sub_1ABDEFF6C(v110, v111, v112, v113);
    goto LABEL_68;
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1ABE26C20@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v31 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  v7 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1ABF21F54();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1ABF21F14();
  v18 = sub_1ABF21F34();
  (*(v12 + 8))(v16, v10);
  [v17 setLocale_];

  sub_1ABF21FF4();
  v19 = sub_1ABF22014();
  v20 = 0;
  if (sub_1ABA7E1E0(v9, 1, v19) != 1)
  {
    v20 = sub_1ABF22004();
    (*(*(v19 - 8) + 8))(v9, v19);
  }

  [v17 setTimeZone_];

  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  v22 = 0;
  *(inited + 16) = xmmword_1ABF3BFB0;
  *(inited + 32) = 0x2D4D4D2D79797979;
  *(inited + 40) = 0xEA00000000006464;
  *(inited + 48) = 0x79792D64642D4D4DLL;
  *(inited + 56) = 0xEA00000000007979;
  *(inited + 64) = 0x797979792D4D4DLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 2038004089;
  *(inited + 88) = 0xE400000000000000;
  while (1)
  {
    v23 = v22 + 16;
    if (v22 == 64)
    {
      break;
    }

    v24 = sub_1ABA7C5D0();
    sub_1ABE275A8(v24, v25, v17);
    sub_1ABA805B4();
    v26 = sub_1ABF23BD4();
    v27 = [v17 dateFromString_];

    v22 = v23;
    if (v27)
    {
      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABF21E64();

      v28 = v32;
      (*(v31 + 32))(v32, v6, v1);
      v29 = 0;
      return sub_1ABA7B9B4(v28, v29, 1, v1);
    }
  }

  swift_setDeallocating();
  sub_1ABB4DB5C();
  v29 = 1;
  v28 = v32;
  return sub_1ABA7B9B4(v28, v29, 1, v1);
}

uint64_t sub_1ABE26FD8()
{
  sub_1ABAE28EC();
  v0 = sub_1ABF248E4();
  v1 = v0;
  v24 = *(v0 + 16);
  if (!v24)
  {
    goto LABEL_43;
  }

  v2 = 0;
  v3 = v0 + 56;
  v4 = 0.0;
  while (v2 < *(v1 + 16))
  {
    v5 = *(v3 - 24);
    v6 = *(v3 - 16);
    swift_bridgeObjectRetain_n();
    sub_1ABAABD80();
    if (__OFSUB__(sub_1ABF24834(), 1))
    {
      goto LABEL_46;
    }

    v7 = sub_1ABF24814();
    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    if (v5 >> 14 > v9 >> 14)
    {
      goto LABEL_47;
    }

    v25 = v3;
    sub_1ABAABD80();
    sub_1ABF24854();

    v10 = sub_1ABF24354();
    v11 = v10;
    if (v12)
    {

      return v11;
    }

    if (v5 >> 14 == v6 >> 14)
    {

      goto LABEL_43;
    }

    v13 = *&v10;
    sub_1ABA7FD4C();
    sub_1ABF24804();
    sub_1ABA7FD4C();
    v14 = sub_1ABF24844();
    v16 = v15;

    if (v14 == 100 && v16 == 0xE100000000000000)
    {

      v18 = v25;
    }

    else
    {
      v18 = v25;
      if ((sub_1ABA8F8B8(100) & 1) == 0)
      {
        v19 = v14 == 104 && v16 == 0xE100000000000000;
        if (v19 || (sub_1ABA8F8B8(104) & 1) != 0)
        {

          v13 = v13 * 3600.0;
        }

        else
        {
          v20 = v14 == 109 && v16 == 0xE100000000000000;
          if (v20 || (sub_1ABA8F8B8(109) & 1) != 0)
          {

            v13 = v13 * 60.0;
          }

          else if (v14 == 115 && v16 == 0xE100000000000000)
          {
          }

          else
          {
            v22 = sub_1ABA8F8B8(115);

            if ((v22 & 1) == 0)
            {
              goto LABEL_43;
            }
          }
        }

        goto LABEL_19;
      }
    }

    v13 = v13 * 86400.0;
LABEL_19:
    ++v2;
    v4 = v4 + v13;
    v3 = v18 + 32;
    if (v24 == v2)
    {

      return *&v4;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_43:

  return 0;
}

id sub_1ABE272C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1ABF23BD4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1ABE2747C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (((2 * v1) & 0x38) != 0)
  {
    return 64 - ((2 * v1) & 0x38 | (v1 >> 5));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE274A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE274E8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABE27554()
{
  result = qword_1EB4DA9B0;
  if (!qword_1EB4DA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9B0);
  }

  return result;
}

void sub_1ABE275A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1ABF23BD4();

  [a3 setDateFormat_];
}

uint64_t sub_1ABE27668(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1ABE276C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_1ABE24C74(1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t PartOfDay.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      v2 = 1852993357;
      goto LABEL_6;
    case 2:
      result = 0x6F6F6E7265746641;
      break;
    case 3:
      v2 = 1852143173;
LABEL_6:
      result = v2 | 0x676E6900000000;
      break;
    case 4:
      result = 0x746867694ELL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::PartOfDay __swiftcall PartOfDay.init(hour:)(Swift::Int hour)
{
  if ((hour - 17) < 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if ((hour - 12) >= 5)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if ((hour - 6) >= 6)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  *v1 = v4;
  return hour;
}

IntelligencePlatform::PartOfDay_optional __swiftcall PartOfDay.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1ABE277C0()
{
  result = qword_1EB4DA9C0;
  if (!qword_1EB4DA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9C0);
  }

  return result;
}

uint64_t sub_1ABE2781C@<X0>(uint64_t *a1@<X8>)
{
  result = PartOfDay.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PartOfDay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t static Paths.createBaseDirectory()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v30[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1ABF21C24();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v29 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 URLsForDirectory:5 inDomains:1];

  v18 = sub_1ABF240D4();
  sub_1ABB2BC5C(v18);

  if (sub_1ABA7E1E0(v9, 1, v10) == 1)
  {
    sub_1ABE27F70(v9);
    sub_1ABE27FD8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v29 + 32))(v14, v9, v10);
    v30[0] = 0xD000000000000014;
    v30[1] = 0x80000001ABF688F0;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F58], v1);
    sub_1ABAE28EC();
    v20 = v28;
    sub_1ABF21CE4();
    (*(v3 + 8))(v6, v1);
    v21 = [v15 defaultManager];
    v22 = sub_1ABF21C54();
    v30[0] = 0;
    v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v30];

    if (v23)
    {
      v24 = *(v29 + 8);
      v25 = v30[0];
    }

    else
    {
      v26 = v30[0];
      sub_1ABF21BE4();

      swift_willThrow();
      v24 = *(v29 + 8);
      v24(v20, v10);
    }

    return (v24)(v14, v10);
  }
}

uint64_t sub_1ABE27F70(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABE27FD8()
{
  result = qword_1EB4DA9D8;
  if (!qword_1EB4DA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA9D8);
  }

  return result;
}

uint64_t sub_1ABE2802C()
{
  v0 = sub_1ABF21CF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABE27924(v3);
  v4 = sub_1ABF21C34();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EB4DA9C8 = v4;
  unk_1EB4DA9D0 = v6;
  return result;
}

uint64_t static Paths.baseDirectory.getter()
{
  if (qword_1EB4D03F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB4DA9C8;

  return v0;
}

uint64_t sub_1ABE28174()
{
  v0 = sub_1ABF21CF4();
  sub_1ABB9009C(v0, qword_1ED870E48);
  v1 = sub_1ABA7AA24(v0, qword_1ED870E48);
  return sub_1ABE27924(v1);
}

_BYTE *sub_1ABE281D0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABE282A0()
{
  result = qword_1EB4DA9E0[0];
  if (!qword_1EB4DA9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DA9E0);
  }

  return result;
}

uint64_t sub_1ABE282F8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1ABF241F4();
    if (v3 <= 0x3F)
    {
      v1 = sub_1ABF247E4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1ABE283D8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = 7;
  if (!v10)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
LABEL_32:
    if (v7 == v13)
    {

      return sub_1ABA7E1E0(a1, v7, v5);
    }

    v24 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) == 0)
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    if (v10 >= 2)
    {
      v26 = sub_1ABA7E1E0((v24 + v15 + 8) & ~v15, v10, result);
      if (v26 >= 2)
      {
        return v26 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v17 = ((v16 + *(*(result - 8) + 64) + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v13 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    case 2:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_28:
      v23 = v22 - 1;
      if (v18)
      {
        v23 = 0;
        LODWORD(v18) = *a1;
      }

      result = v13 + (v18 | v23) + 1;
      break;
    default:
      goto LABEL_32;
  }

  return result;
}

void sub_1ABE28638(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v18 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    if (((v18 + ((v17 + ((v16 + 7) & 0xFFFFFFF8) + 8) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v15)
  {
    switch(v11)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v9 == v15)
        {
          v24 = a1;
          v25 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v26 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          if (v13 < 2)
          {
            return;
          }

          v24 = ((v26 + v17 + 8) & ~v17);
          v25 = (a2 + 1);
        }

        sub_1ABA7B9B4(v24, v25, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (v19)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v15;
    }

    if (v19)
    {
      v23 = ~v15 + a2;
      bzero(a1, v19);
      *a1 = v23;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v19) = v22;
        break;
      case 2:
        *(a1 + v19) = v22;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *(a1 + v19) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABE288F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = *(a1 + 24);
  v27[1] = *(a1 + 16);
  v27[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1ABF247E4();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v28 = *(a1 + 36);
  v13 = *(v2 + v28);
  *&v33 = v13;
  sub_1ABF241F4();
  swift_getWitnessTable();
  sub_1ABF24544();
  if (sub_1ABA7E1E0(v12, 1, AssociatedTypeWitness) == 1)
  {
    v15 = v29;
    v14 = v30;
    result = (*(v7 + 8))(v12, v29);
    v17 = *(a1 + 44);
    v18 = *(v2 + v17);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v17) = v20;
      sub_1ABF24864();
      v21 = *(a1 + 40);
      (*(v7 + 40))(v2 + v21, v9, v15);
      return (*(v7 + 16))(v14, v2 + v21, v15);
    }
  }

  else
  {
    v22 = *(AssociatedTypeWitness - 8);
    (*(v22 + 32))(v30, v12, AssociatedTypeWitness);
    *&v31 = v13;

    sub_1ABF24594();
    v31 = v33;
    v32 = v34;
    sub_1ABF24904();
    swift_getWitnessTable();
    v23 = sub_1ABF24214();

    v24 = v29;
    *(v2 + v28) = v23;
    v25 = *(a1 + 40);
    (*(v7 + 8))(v2 + v25, v24);
    v26 = v30;
    (*(v22 + 16))(v3 + v25, v30, AssociatedTypeWitness);
    sub_1ABA7B9B4(v3 + v25, 0, 1, AssociatedTypeWitness);
    return sub_1ABA7B9B4(v26, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t RecordCursor.peekable.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PeekableRecordCursor(0, *(*v4 + *MEMORY[0x1E699FDE0]), *(*v4 + *MEMORY[0x1E699FDE0] + 8), a4);

  return PeekableRecordCursor.__allocating_init(_:)(v5);
}

uint64_t PeekableRecordCursor.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PeekableRecordCursor.init(_:)(a1);
  return v2;
}

char *PeekableRecordCursor.init(_:)(uint64_t a1)
{
  v4 = v1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  sub_1ABA7F418();
  sub_1ABF247E4();
  sub_1ABA7D958();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  sub_1ABA7B9B4(&v4[*(v6 + 104)], 1, 1, v7);
  *(v4 + 2) = a1;
  sub_1ABA7F418();
  sub_1ABF222C4();

  sub_1ABA8FA50();
  swift_getWitnessTable();
  sub_1ABF22444();

  if (v2)
  {
  }

  else
  {
    v13 = *(*v4 + 104);
    swift_beginAccess();
    (*(v9 + 40))(&v4[v13], v12, v3);
    swift_endAccess();
  }

  return v4;
}

uint64_t PeekableRecordCursor.next()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_1ABA7F418();
  sub_1ABF247E4();
  sub_1ABA7D958();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = *(v4 + 104);
  swift_beginAccess();
  (*(v6 + 16))(a1, &v1[v10], v2);
  sub_1ABA7F418();
  sub_1ABF222C4();
  sub_1ABA8FA50();
  swift_getWitnessTable();
  v11 = v14;
  sub_1ABF22444();
  if (v11)
  {
    return (*(v6 + 8))(a1, v2);
  }

  swift_beginAccess();
  (*(v6 + 40))(&v1[v10], v9, v2);
  return swift_endAccess();
}

uint64_t PeekableRecordCursor.peek()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1ABF247E4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t *PeekableRecordCursor.deinit()
{

  v1 = *(*v0 + 104);
  v2 = sub_1ABF247E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeekableRecordCursor.__deallocating_deinit()
{
  PeekableRecordCursor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE29224(uint64_t a1)
{
  result = sub_1ABF247E4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABE29318(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubgraphColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE294A0(uint64_t a1)
{
  v1 = sub_1ABF24D84();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1ABE294FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABE294A0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1ABE2952C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABE29318(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE29558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE29840();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABE295A4(uint64_t a1)
{
  v2 = sub_1ABE29894();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABE295F0(uint64_t a1)
{
  v2 = sub_1ABE29794();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABE2963C(uint64_t a1)
{
  v2 = sub_1ABE29794();

  return MEMORY[0x1EEE09A88](a1, v2);
}

unint64_t sub_1ABE2968C()
{
  result = qword_1EB4DAA70;
  if (!qword_1EB4DAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA70);
  }

  return result;
}

unint64_t sub_1ABE296E4()
{
  result = qword_1EB4DAA78;
  if (!qword_1EB4DAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA78);
  }

  return result;
}

unint64_t sub_1ABE2973C()
{
  result = qword_1EB4DAA80;
  if (!qword_1EB4DAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA80);
  }

  return result;
}

unint64_t sub_1ABE29794()
{
  result = qword_1EB4DAA88;
  if (!qword_1EB4DAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA88);
  }

  return result;
}

unint64_t sub_1ABE297EC()
{
  result = qword_1EB4DAA90;
  if (!qword_1EB4DAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA90);
  }

  return result;
}

unint64_t sub_1ABE29840()
{
  result = qword_1EB4DAA98;
  if (!qword_1EB4DAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAA98);
  }

  return result;
}

unint64_t sub_1ABE29894()
{
  result = qword_1EB4DAAA0;
  if (!qword_1EB4DAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAA0);
  }

  return result;
}

IntelligencePlatform::PersonalKnowledgeToolResultAttributeSemanticType_optional __swiftcall PersonalKnowledgeToolResultAttributeSemanticType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeSemanticType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D614E7473726966;
      break;
    case 5:
      result = 0x656D614E7473616CLL;
      break;
    case 6:
      result = 0x7961646874726962;
      break;
    case 7:
      result = 0x6D754E656E6F6870;
      break;
    case 8:
      result = 0x6464416C69616D65;
      break;
    case 9:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 0xA:
      result = 0x746361746E6F63;
      break;
    case 0xB:
      result = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x7473657265746E69;
      break;
    case 0xE:
      result = 0x7461447472617473;
      break;
    case 0xF:
      result = 0x65746144646E65;
      break;
    case 0x10:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 0x11:
      result = 0x69746E6565726373;
      break;
    case 0x12:
      result = 0x6765746143707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE29B6C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeToolResultAttributeSemanticType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatform::PersonalKnowledgeToolResultAttributeDataType_optional __swiftcall PersonalKnowledgeToolResultAttributeDataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeDataType.rawValue.getter()
{
  result = 0x676E69727473;
  switch(*v0)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 0x656C62756F64;
      break;
    case 3:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE29C9C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeToolResultAttributeDataType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalKnowledgeToolResultAttributeError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE29D74()
{
  result = qword_1EB4DAAB0;
  if (!qword_1EB4DAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAAB0);
  }

  return result;
}