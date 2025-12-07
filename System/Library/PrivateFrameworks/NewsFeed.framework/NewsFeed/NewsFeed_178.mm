unint64_t sub_1D6B7FD08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(_OWORD *__return_ptr, void *, uint64_t *))
{
  v10 = v8;
  v35[5] = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v14)
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v34[3] = MEMORY[0x1E69E6158];
      v34[0] = v28;
      v34[1] = v27;
      MEMORY[0x1EEE9AC00](v27, a2);
      v30 = v29;

      sub_1D632A5E4(v34, v30, a4, v35);
      v21 = v34;
      if (v8)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_1D5B76B10(v35, v34);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v32 = a2;
      v32[1] = a3;
      v32[2] = 0x676E69727453;
      v32[3] = 0xE600000000000000;
      v32[4] = 0x676E69727453;
      v32[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v21 = v35;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v21);
      return a3;
    }

    goto LABEL_3;
  }

  if (((1 << v14) & 0x36FC) == 0)
  {
    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v25 = a7(v22, a2, a3, a4, a5);
      if (!v10)
      {
        a3 = v25;
      }

      return a3;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x676E69727453;
      v26[3] = 0xE600000000000000;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3;
    }

    goto LABEL_14;
  }

LABEL_3:
  v33 = a1;
  sub_1D6BE73AC(v34);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1D632A5E4(v34, a8, a4, v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (!v8)
  {
    sub_1D5B76B10(v35, v34);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v35);
      return v33;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v18 = v17;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    swift_getDynamicType();

    v19 = sub_1D7264C5C();
    *v18 = a2;
    v18[1] = a3;
    v18[2] = 0x676E69727453;
    v18[3] = 0xE600000000000000;
    v18[4] = v19;
    v18[5] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3;
}

void sub_1D6B8028C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *__return_ptr, void *, uint64_t *)@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128)@<X6>, void (*a8)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, char *a9@<X8>)
{
  v54 = a7;
  v55 = a6;
  v58 = a3;
  v56 = a9;
  v57 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  v21 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = &v53 - v29;
  v63 = a5;
  v31 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v31) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = v28;
      v60 = a1;
      sub_1D6BE73AC(v61);
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v53 - 2) = &v63;
      v35 = v59;
      sub_1D632A5E4(v61, a8, a4, v62);
      __swift_destroy_boxed_opaque_existential_1(v61);
      if (v35)
      {
        return;
      }

      sub_1D5B76B10(v62, v61);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v62);
        (*(v32 + 56))(v20, 0, 1, v21);
        v36 = *(v32 + 32);
        v36(v30, v20, v21);
        v36(v56, v30, v21);
        return;
      }

      (*(v32 + 56))(v20, 1, 1, v21);
      sub_1D5D282A8(v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v38 = v37;
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      swift_getDynamicType();
      v39 = v58;

      v40 = sub_1D7264C5C();
      *v38 = v57;
      v38[1] = v39;
      v38[2] = 5001813;
      v38[3] = 0xE300000000000000;
      v38[4] = v40;
      v38[5] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v31 == 8)
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      (v54)(v43, v57, v58, a4, a5);

      return;
    }

    if (v31 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v44 = v58;
      *v45 = v57;
      v45[1] = v44;
      v45[2] = 5001813;
      v45[3] = 0xE300000000000000;
      v45[4] = 0x7463617274736261;
      v45[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v31)
  {
    goto LABEL_3;
  }

  v46 = v28;
  v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v61[3] = MEMORY[0x1E69E6158];
  v61[0] = v48;
  v61[1] = v47;
  MEMORY[0x1EEE9AC00](v47, v27);
  *(&v53 - 2) = &v63;

  v49 = v59;
  sub_1D632A5E4(v61, v55, a4, v62);
  v42 = v61;
  if (v49)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1D5B76B10(v62, v61);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v46 + 56))(v16, 0, 1, v21);
    v50 = *(v46 + 32);
    v50(v24, v16, v21);
    v50(v56, v24, v21);
    return;
  }

  (*(v46 + 56))(v16, 1, 1, v21);
  sub_1D5D282A8(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v51 = v58;
  *v52 = v57;
  v52[1] = v51;
  v52[2] = 5001813;
  v52[3] = 0xE300000000000000;
  v52[4] = 0x676E69727453;
  v52[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v42 = v62;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_1D6B809D8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *__return_ptr, void *, uint64_t *)@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128)@<X6>, void (*a8)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, char *a9@<X8>)
{
  v54 = a7;
  v55 = a6;
  v58 = a3;
  v56 = a9;
  v57 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  v21 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = &v53 - v29;
  v63 = a5;
  v31 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v31) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = v28;
      v60 = a1;
      sub_1D6BE73AC(v61);
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v53 - 2) = &v63;
      v35 = v59;
      sub_1D632A5E4(v61, a8, a4, v62);
      __swift_destroy_boxed_opaque_existential_1(v61);
      if (v35)
      {
        return;
      }

      sub_1D5B76B10(v62, v61);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v62);
        (*(v32 + 56))(v20, 0, 1, v21);
        v36 = *(v32 + 32);
        v36(v30, v20, v21);
        v36(v56, v30, v21);
        return;
      }

      (*(v32 + 56))(v20, 1, 1, v21);
      sub_1D5D282A8(v20, &qword_1EDF45B00, MEMORY[0x1E6969530], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v38 = v37;
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      swift_getDynamicType();
      v39 = v58;

      v40 = sub_1D7264C5C();
      *v38 = v57;
      v38[1] = v39;
      v38[2] = 1702125892;
      v38[3] = 0xE400000000000000;
      v38[4] = v40;
      v38[5] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v31 == 8)
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      (v54)(v43, v57, v58, a4, a5);

      return;
    }

    if (v31 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v44 = v58;
      *v45 = v57;
      v45[1] = v44;
      v45[2] = 1702125892;
      v45[3] = 0xE400000000000000;
      v45[4] = 0x7463617274736261;
      v45[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v31)
  {
    goto LABEL_3;
  }

  v46 = v28;
  v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v61[3] = MEMORY[0x1E69E6158];
  v61[0] = v48;
  v61[1] = v47;
  MEMORY[0x1EEE9AC00](v47, v27);
  *(&v53 - 2) = &v63;

  v49 = v59;
  sub_1D632A5E4(v61, v55, a4, v62);
  v42 = v61;
  if (v49)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1D5B76B10(v62, v61);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v46 + 56))(v16, 0, 1, v21);
    v50 = *(v46 + 32);
    v50(v24, v16, v21);
    v50(v56, v24, v21);
    return;
  }

  (*(v46 + 56))(v16, 1, 1, v21);
  sub_1D5D282A8(v16, &qword_1EDF45B00, MEMORY[0x1E6969530], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v51 = v58;
  *v52 = v57;
  v52[1] = v51;
  v52[2] = 1702125892;
  v52[3] = 0xE400000000000000;
  v52[4] = 0x676E69727453;
  v52[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v42 = v62;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_1D6B811CC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a6;
  sub_1D5D27E80(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v48 - v16;
  v18 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v27 = &v48 - v26;
  v28 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v28) & 0x36FC) != 0)
    {
LABEL_3:
      v29 = v25;
      v53[5] = a1;
      sub_1D6BE73AC(v52);
      MEMORY[0x1EEE9AC00](v30, v31);
      *(&v48 - 2) = a5;
      sub_1D632A5E4(v52, sub_1D6B85528, a4, v53);
      __swift_destroy_boxed_opaque_existential_1(v52);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v53, v52);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
        (*(v29 + 56))(v17, 0, 1, v18);
        v32 = *(v29 + 32);
        v32(v27, v17, v18);
        v32(v49, v27, v18);
        return;
      }

      (*(v29 + 56))(v17, 1, 1, v18);
      sub_1D5D282A8(v17, &qword_1EDF45B00, MEMORY[0x1E6969530], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v34 = v33;
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      swift_getDynamicType();
      v35 = v51;

      v36 = sub_1D7264C5C();
      *v34 = v50;
      v34[1] = v35;
      v34[2] = 1702125892;
      v34[3] = 0xE400000000000000;
      v34[4] = v36;
      v34[5] = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v28 == 8)
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D6B811CC(v39, v50, v51, a4, a5, v49);

      return;
    }

    if (v28 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v40 = v51;
      *v41 = v50;
      v41[1] = v40;
      v41[2] = 1702125892;
      v41[3] = 0xE400000000000000;
      v41[4] = 0x7463617274736261;
      v41[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v28)
  {
    goto LABEL_3;
  }

  v42 = v25;
  v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v52[3] = MEMORY[0x1E69E6158];
  v52[0] = v44;
  v52[1] = v43;
  MEMORY[0x1EEE9AC00](v43, v24);
  *(&v48 - 2) = a5;

  sub_1D632A5E4(v52, sub_1D6B85528, a4, v53);
  v38 = v52;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_1D5B76B10(v53, v52);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    (*(v42 + 56))(v13, 0, 1, v18);
    v45 = *(v42 + 32);
    v45(v21, v13, v18);
    v45(v49, v21, v18);
    return;
  }

  (*(v42 + 56))(v13, 1, 1, v18);
  sub_1D5D282A8(v13, &qword_1EDF45B00, MEMORY[0x1E6969530], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v46 = v51;
  *v47 = v50;
  v47[1] = v46;
  v47[2] = 1702125892;
  v47[3] = 0xE400000000000000;
  v47[4] = 0x676E69727453;
  v47[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v38 = v53;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v38);
}

void sub_1D6B81928(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v27[4] = a5;
  v11 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v11) & 0x36FC) != 0)
    {
LABEL_3:
      v25 = a1;
      sub_1D6BE73AC(v26);
      MEMORY[0x1EEE9AC00](v12, v13);
      sub_1D632A5E4(v26, sub_1D6B854B0, a4, v27);
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v27, v26);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v27);
        *a6 = v25;
        return;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v15 = v14;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      swift_getDynamicType();

      v16 = sub_1D7264C5C();
      *v15 = a2;
      v15[1] = a3;
      v15[2] = 0xD000000000000016;
      v15[3] = 0x80000001D73E7430;
      v15[4] = v16;
      v15[5] = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v11 == 8)
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D6B81928(v19, a2, a3, a4, a5, a6);

      return;
    }

    if (v11 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v21 = a2;
      v21[1] = a3;
      v21[2] = 0xD000000000000016;
      v21[3] = 0x80000001D73E7430;
      v21[4] = 0x7463617274736261;
      v21[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v11)
  {
    goto LABEL_3;
  }

  v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v26[3] = MEMORY[0x1E69E6158];
  v26[0] = v23;
  v26[1] = v22;
  MEMORY[0x1EEE9AC00](v22, a2);

  sub_1D632A5E4(v26, sub_1D6B854B0, a4, v27);
  v18 = v26;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1D5B76B10(v27, v26);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v24 = a2;
  v24[1] = a3;
  v24[2] = 0xD000000000000016;
  v24[3] = 0x80000001D73E7430;
  v24[4] = 0x676E69727453;
  v24[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v18 = v27;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D6B81DE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28[5] = a5;
  v10 = a1 >> 60;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v10)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v27[3] = MEMORY[0x1E69E6158];
      v27[0] = v23;
      v27[1] = v22;
      MEMORY[0x1EEE9AC00](v22, a2);

      sub_1D632A5E4(v27, sub_1D6B854B0, a4, v28);
      v17 = v27;
      if (v5)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_1D5B76B10(v28, v27);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 1819242306;
      v25[3] = 0xE400000000000000;
      v25[4] = 0x676E69727453;
      v25[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v17 = v28;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v17);
      return a3 & 1;
    }

    goto LABEL_3;
  }

  if (((1 << v10) & 0x36FC) == 0)
  {
    if (v10 == 8)
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v20 = sub_1D6B81DE8(v18, a2, a3, a4, a5);
      if (!v6)
      {
        LOBYTE(a3) = v20;
      }

      return a3 & 1;
    }

    if (v10 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v21 = a2;
      v21[1] = a3;
      v21[2] = 1819242306;
      v21[3] = 0xE400000000000000;
      v21[4] = 0x7463617274736261;
      v21[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3 & 1;
    }

    goto LABEL_14;
  }

LABEL_3:
  v26 = a1;
  sub_1D6BE73AC(v27);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1D632A5E4(v27, sub_1D6B854B0, a4, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (!v5)
  {
    sub_1D5B76B10(v28, v27);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v28);
      LOBYTE(a3) = v26;
      return a3 & 1;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v14 = v13;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    swift_getDynamicType();

    v15 = sub_1D7264C5C();
    *v14 = a2;
    v14[1] = a3;
    v14[2] = 1819242306;
    v14[3] = 0xE400000000000000;
    v14[4] = v15;
    v14[5] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3 & 1;
}

void sub_1D6B8227C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v27[4] = a5;
  v11 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v11) & 0x36FC) != 0)
    {
LABEL_3:
      v25 = a1;
      sub_1D6BE73AC(v26);
      MEMORY[0x1EEE9AC00](v12, v13);
      sub_1D632A5E4(v26, sub_1D6B854C8, a4, v27);
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v27, v26);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v27);
        *a6 = v25;
        return;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v15 = v14;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      swift_getDynamicType();

      v16 = sub_1D7264C5C();
      *v15 = a2;
      v15[1] = a3;
      v15[2] = 0xD000000000000017;
      v15[3] = 0x80000001D73E7410;
      v15[4] = v16;
      v15[5] = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v11 == 8)
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D6B8227C(v19, a2, a3, a4, a5, a6);

      return;
    }

    if (v11 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v21 = a2;
      v21[1] = a3;
      v21[2] = 0xD000000000000017;
      v21[3] = 0x80000001D73E7410;
      v21[4] = 0x7463617274736261;
      v21[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v11)
  {
    goto LABEL_3;
  }

  v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v26[3] = MEMORY[0x1E69E6158];
  v26[0] = v23;
  v26[1] = v22;
  MEMORY[0x1EEE9AC00](v22, a2);

  sub_1D632A5E4(v26, sub_1D6B852A4, a4, v27);
  v18 = v26;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1D5B76B10(v27, v26);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v24 = a2;
  v24[1] = a3;
  v24[2] = 0xD000000000000017;
  v24[3] = 0x80000001D73E7410;
  v24[4] = 0x676E69727453;
  v24[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v18 = v27;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_1D6B82790(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(_OWORD *__return_ptr, void *, uint64_t *))
{
  v14 = a1 >> 60;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v14)
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v33[3] = MEMORY[0x1E69E6158];
      v33[0] = v27;
      v33[1] = v26;
      MEMORY[0x1EEE9AC00](v26, a2);
      v29 = v28;

      sub_1D632A5E4(v33, v29, a4, v34);
      v21 = v33;
      if (v8)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v33);
      sub_1D5B76B10(v34, v33);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v31 = a2;
      v31[1] = a3;
      v31[2] = 0x676E69727453;
      v31[3] = 0xE600000000000000;
      v31[4] = 0x676E69727453;
      v31[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v21 = v34;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v21);
      return a3;
    }

    goto LABEL_3;
  }

  if (((1 << v14) & 0x36FC) == 0)
  {
    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v24 = a7(v22, a2, a3, a4, a5);
      if (!v8)
      {
        a3 = v24;
      }

      return a3;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x676E69727453;
      v25[3] = 0xE600000000000000;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3;
    }

    goto LABEL_14;
  }

LABEL_3:
  v32 = a1;
  sub_1D6BE73AC(v33);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1D632A5E4(v33, a8, a4, v34);
  __swift_destroy_boxed_opaque_existential_1(v33);
  if (!v8)
  {
    sub_1D5B76B10(v34, v33);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v32;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v18 = v17;
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    swift_getDynamicType();

    v19 = sub_1D7264C5C();
    *v18 = a2;
    v18[1] = a3;
    v18[2] = 0x676E69727453;
    v18[3] = 0xE600000000000000;
    v18[4] = v19;
    v18[5] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3;
}

void sub_1D6B82C60(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v15 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v15) & 0x36FC) != 0)
    {
LABEL_3:
      v33 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v16, v17);
      sub_1D632A5E4(v31, a7, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v8)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a8 = v33;
        return;
      }

      v33 = 0xF000000000000007;
      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4674616D726F46;
      v19[3] = 0xEA0000000000746ELL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v15 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v23, a2, a3, a4, a5);

      return;
    }

    if (v15 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x6F4674616D726F46;
      v25[3] = 0xEA0000000000746ELL;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v27;
  v31[1] = v26;
  MEMORY[0x1EEE9AC00](v26, a2);
  v29 = v28;

  sub_1D632A5E4(v31, v29, a4, v32);
  v22 = v31;
  if (v8)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v33 = 0xF000000000000007;
  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4674616D726F46;
  v30[3] = 0xEA0000000000746ELL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_1D6B83160(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v15 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v15) & 0x36FC) != 0)
    {
LABEL_3:
      v33 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v16, v17);
      sub_1D632A5E4(v31, a7, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v8)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a8 = v33;
        return;
      }

      v33 = 0xF000000000000007;
      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v20 = sub_1D7264C5C();
      *v19 = a2;
      v19[1] = a3;
      v19[2] = 0x6F4374616D726F46;
      v19[3] = 0xEB00000000726F6CLL;
      v19[4] = v20;
      v19[5] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v15 == 8)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v23, a2, a3, a4, a5);

      return;
    }

    if (v15 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x6F4374616D726F46;
      v25[3] = 0xEB00000000726F6CLL;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v27;
  v31[1] = v26;
  MEMORY[0x1EEE9AC00](v26, a2);
  v29 = v28;

  sub_1D632A5E4(v31, v29, a4, v32);
  v22 = v31;
  if (v8)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v33 = 0xF000000000000007;
  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4374616D726F46;
  v30[3] = 0xEB00000000726F6CLL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v22 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_1D6B8366C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X4>, void (*a6)(_OWORD *__return_ptr, void *, uint64_t *)@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X6>, void (*a8)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, char *a9@<X8>)
{
  v53 = a7;
  v54 = a6;
  v57 = a3;
  v55 = a9;
  v56 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  v21 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = &v53 - v29;
  v31 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v31) & 0x36FC) != 0)
    {
LABEL_3:
      v32 = v28;
      v60[5] = a1;
      sub_1D6BE73AC(v59);
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v53 - 2) = a5;
      v35 = v58;
      sub_1D632A5E4(v59, a8, a4, v60);
      __swift_destroy_boxed_opaque_existential_1(v59);
      if (v35)
      {
        return;
      }

      sub_1D5B76B10(v60, v59);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v60);
        (*(v32 + 56))(v20, 0, 1, v21);
        v36 = *(v32 + 32);
        v36(v30, v20, v21);
        v36(v55, v30, v21);
        return;
      }

      (*(v32 + 56))(v20, 1, 1, v21);
      sub_1D5D282A8(v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v38 = v37;
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      swift_getDynamicType();
      v39 = v57;

      v40 = sub_1D7264C5C();
      *v38 = v56;
      v38[1] = v39;
      v38[2] = 5001813;
      v38[3] = 0xE300000000000000;
      v38[4] = v40;
      v38[5] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v31 == 8)
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      (v53)(v43, v56, v57, a4, a5);

      return;
    }

    if (v31 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v44 = v57;
      *v45 = v56;
      v45[1] = v44;
      v45[2] = 5001813;
      v45[3] = 0xE300000000000000;
      v45[4] = 0x7463617274736261;
      v45[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v31)
  {
    goto LABEL_3;
  }

  v46 = v28;
  v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v59[3] = MEMORY[0x1E69E6158];
  v59[0] = v48;
  v59[1] = v47;
  MEMORY[0x1EEE9AC00](v47, v27);
  *(&v53 - 2) = a5;

  v49 = v58;
  sub_1D632A5E4(v59, v54, a4, v60);
  v42 = v59;
  if (v49)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1D5B76B10(v60, v59);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
    (*(v46 + 56))(v16, 0, 1, v21);
    v50 = *(v46 + 32);
    v50(v24, v16, v21);
    v50(v55, v24, v21);
    return;
  }

  (*(v46 + 56))(v16, 1, 1, v21);
  sub_1D5D282A8(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v51 = v57;
  *v52 = v56;
  v52[1] = v51;
  v52[2] = 5001813;
  v52[3] = 0xE300000000000000;
  v52[4] = 0x676E69727453;
  v52[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v42 = v60;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_1D6B83D5C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[3];
  v35 = a5[2];
  v36 = v11;
  v12 = a5[5];
  v37 = a5[4];
  v38 = v12;
  v13 = a5[1];
  v33 = *a5;
  v34 = v13;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v31, sub_1D6B854E0, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a6 = v30;
        return;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4674616D726F46;
      v18[3] = 0xEA0000000000746ELL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = a5[3];
      v39[2] = a5[2];
      v39[3] = v23;
      v24 = a5[5];
      v39[4] = a5[4];
      v39[5] = v24;
      v25 = a5[1];
      v39[0] = *a5;
      v39[1] = v25;
      swift_retain_n();

      sub_1D6B83D5C(v22, a2, a3, a4, v39, a6);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4674616D726F46;
      v26[3] = 0xEA0000000000746ELL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v28;
  v31[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);

  sub_1D632A5E4(v31, sub_1D6B85320, a4, v32);
  v21 = v31;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v29 = a2;
  v29[1] = a3;
  v29[2] = 0x6F4674616D726F46;
  v29[3] = 0xEA0000000000746ELL;
  v29[4] = 0x676E69727453;
  v29[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D6B84254(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[3];
  v35 = a5[2];
  v36 = v11;
  v12 = a5[5];
  v37 = a5[4];
  v38 = v12;
  v13 = a5[1];
  v33 = *a5;
  v34 = v13;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v31, sub_1D6B854E0, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a6 = v30;
        return;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4374616D726F46;
      v18[3] = 0xEB00000000726F6CLL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = a5[3];
      v39[2] = a5[2];
      v39[3] = v23;
      v24 = a5[5];
      v39[4] = a5[4];
      v39[5] = v24;
      v25 = a5[1];
      v39[0] = *a5;
      v39[1] = v25;
      swift_retain_n();

      sub_1D6B84254(v22, a2, a3, a4, v39, a6);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4374616D726F46;
      v26[3] = 0xEB00000000726F6CLL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v28;
  v31[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);

  sub_1D632A5E4(v31, sub_1D6B854E0, a4, v32);
  v21 = v31;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v29 = a2;
  v29[1] = a3;
  v29[2] = 0x6F4374616D726F46;
  v29[3] = 0xEB00000000726F6CLL;
  v29[4] = 0x676E69727453;
  v29[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D6B84758@<X0>(uint64_t a2@<X8>)
{

  sub_1D7257B2C();

  v3 = sub_1D7257B5C();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_1D6B84804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a4@<X8>)
{
  if (*a2)
  {
    return sub_1D6B78028(a1, *a2, a4);
  }

  result = sub_1D7263F9C();
  a4[3] = MEMORY[0x1E69E6158];
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D6B848AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void, __n128)@<X3>, void (*a4)(void, __n128)@<X4>, uint64_t *a5@<X8>)
{
  if (*a2)
  {
    return sub_1D6B782E0(a1, *a2, a3, a4, a5);
  }

  result = sub_1D7263F9C();
  a5[3] = MEMORY[0x1E69E6158];
  *a5 = 0;
  a5[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D6B84934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (v3)
  {
    return sub_1D6B785B0(a1, v3, a3);
  }

  result = sub_1D7263F9C();
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D6B849B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, __n128)@<X3>, void (*a5)(void, __n128)@<X4>, uint64_t *a6@<X8>)
{
  if (*a2)
  {
    return sub_1D6B78890(a1, a3, *a2, a4, a5, a6);
  }

  result = sub_1D7263F9C();
  a6[3] = MEMORY[0x1E69E6158];
  *a6 = 0;
  a6[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D6B84A3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (v3)
  {
    return sub_1D6B78B68(a1, v3, a3);
  }

  result = sub_1D7263F9C();
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

BOOL _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v59[0] = *a1;
  v59[1] = v4;
  v59[2] = v6;
  v59[3] = v5;
  v59[4] = v7;
  v60 = v8;
  v61 = v9;
  v62 = v10;
  v63 = v12;
  v64 = v11;
  v65 = v13;
  v15 = (v8 >> 1) & 0xF;
  v66 = v14;
  if (v15 <= 4)
  {
    if (((v8 >> 1) & 0xF) > 1)
    {
      if (v15 == 2)
      {
        if ((v14 & 0x1E) == 4)
        {
          v53 = v3;
          v54 = v4;
          v55 = v6;
          v56 = v5;
          v57 = v7;
          v58 = v8 & 0xE1;
          v47 = v9;
          v48 = v10;
          v49 = v12;
          v50 = v11;
          v51 = v13;
          v52 = v14 & 0xE1;
          v43 = v5;
          v45 = v7;
          sub_1D62B4B68(v9, v10, v12, v11, v13, v14, a3);
          sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v24);
          sub_1D62B4B68(v9, v10, v12, v11, v13, v14, v25);
          sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v26);
          v19 = _s8NewsFeed18FormatGroupBindingV5ImageO2eeoiySbAE_AEtFZ_0(&v53, &v47);
          goto LABEL_20;
        }

        sub_1D62B4D50(v3, v4, v6, v5, v7, v8 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
      }

      else
      {
        if (v15 == 3)
        {
          if ((v14 & 0x1E) == 6)
          {
            v53 = v3;
            v54 = v4;
            v55 = v6;
            v56 = v5;
            v47 = v9;
            v48 = v10;
            v49 = v12;
            v50 = v11;
            v43 = v5;
            v45 = v7;
            sub_1D62B4B68(v9, v10, v12, v11, v13, v14, a3);
            sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v16);
            sub_1D62B4B68(v9, v10, v12, v11, v13, v14, v17);
            sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v18);
            v19 = _s8NewsFeed16FormatTagBindingV5ImageO2eeoiySbAE_AEtFZ_0(&v53, &v47);
LABEL_20:
            v42 = v3;
            v23 = v19;
            sub_1D6B850C8(v59, sub_1D6B85380);
            v28.n128_f64[0] = sub_1D62B4C5C(v9, v10, v12, v11, v13, v14, v27);
            sub_1D62B4C5C(v42, v4, v6, v43, v45, v8, v28);
            return v23;
          }

          sub_1D5F58484(v3, v4);
          goto LABEL_39;
        }

        if ((v14 & 0x1E) == 8)
        {
LABEL_28:
          sub_1D6B850C8(v59, sub_1D6B85380);
          return v9 == v3;
        }
      }

      goto LABEL_39;
    }

    if (!v15)
    {
      if ((v14 & 0x1E) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }

    if ((v14 & 0x1E) != 2)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if (((v8 >> 1) & 0xF) > 6)
  {
    if (v15 == 7)
    {
      if ((v14 & 0x1E) == 0xE)
      {
        v44 = v5;
        v46 = v7;
        if (v3 == v9 && v4 == v10 || (sub_1D72646CC() & 1) != 0)
        {
          sub_1D62B4B68(v9, v10, v12, v11, v13, v14, a3);
          sub_1D62B4B68(v3, v4, v6, v44, v46, v8, v29);
          sub_1D62B4B68(v9, v10, v12, v11, v13, v14, v30);
          sub_1D62B4B68(v3, v4, v6, v44, v46, v8, v31);
          v41 = sub_1D6341C50(v6, v12);
          sub_1D6B850C8(v59, sub_1D6B85380);
          v33.n128_f64[0] = sub_1D62B4C5C(v9, v10, v12, v11, v13, v14, v32);
          sub_1D62B4C5C(v3, v4, v6, v44, v46, v8, v33);
          return (v41 & 1) != 0;
        }

        sub_1D62B4B68(v9, v10, v12, v11, v13, v14, a3);
        v34 = v3;
        v35 = v4;
        v36 = v6;
        v37 = v44;
        v38 = v46;
        v39 = v8;
LABEL_40:
        sub_1D62B4B68(v34, v35, v36, v37, v38, v39, a3);
        sub_1D6B850C8(v59, sub_1D6B85380);
        return 0;
      }

      goto LABEL_39;
    }

    if (v15 == 8)
    {
      if ((v14 & 0x1E) == 0x10)
      {
        v53 = v3;
        v54 = v4;
        v55 = v6;
        v56 = v5;
        v57 = v7;
        v58 = v8 & 1;
        v47 = v9;
        v48 = v10;
        v49 = v12;
        v50 = v11;
        v51 = v13;
        v52 = v14 & 1;
        v43 = v5;
        v45 = v7;
        sub_1D62B4B68(v9, v10, v12, v11, v13, v14, a3);
        sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v20);
        sub_1D62B4B68(v9, v10, v12, v11, v13, v14, v21);
        sub_1D62B4B68(v3, v4, v6, v43, v45, v8, v22);
        v19 = _s8NewsFeed24FormatSportsEventBindingV5ImageO2eeoiySbAE_AEtFZ_0(&v53, &v47);
        goto LABEL_20;
      }

      sub_1D62B4DD8(v3, v4, v6, v5, v7, v8 & 1, sub_1D5F58484);
      goto LABEL_39;
    }

    if ((v14 & 0x1E) != 0x12)
    {
LABEL_39:
      v34 = v9;
      v35 = v10;
      v36 = v12;
      v37 = v11;
      v38 = v13;
      v39 = v14;
      goto LABEL_40;
    }

LABEL_34:
    sub_1D6B850C8(v59, sub_1D6B85380);
    return ((v9 ^ v3) & 1) == 0;
  }

  if (v15 != 5)
  {
    if ((v14 & 0x1E) != 0xC)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if ((v14 & 0x1E) != 0xA)
  {
    goto LABEL_39;
  }

  sub_1D6B850C8(v59, sub_1D6B85380);
  return 1;
}

uint64_t sub_1D6B850C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6B85128(uint64_t a1)
{
  result = sub_1D6B85150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B85150()
{
  result = qword_1EC892A78;
  if (!qword_1EC892A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A78);
  }

  return result;
}

unint64_t sub_1D6B851A4(void *a1)
{
  a1[1] = sub_1D5CBDC54();
  a1[2] = sub_1D6678B70();
  result = sub_1D6B851DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B851DC()
{
  result = qword_1EC892A80;
  if (!qword_1EC892A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A80);
  }

  return result;
}

void sub_1D6B85380()
{
  if (!qword_1EC892A88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892A88);
    }
  }
}

uint64_t FormatUserInterfaceStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

NewsFeed::FormatUserInterfaceStyle_optional __swiftcall FormatUserInterfaceStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1D6B855EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6B8568C()
{
  result = qword_1EC892A90;
  if (!qword_1EC892A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A90);
  }

  return result;
}

uint64_t sub_1D6B856E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B85758(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B857BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B85830(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6B85890(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6B858C4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B858F4();
  result = sub_1D6B85948();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B858F4()
{
  result = qword_1EC892A98;
  if (!qword_1EC892A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A98);
  }

  return result;
}

unint64_t sub_1D6B85948()
{
  result = qword_1EDF25C28;
  if (!qword_1EDF25C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C28);
  }

  return result;
}

unint64_t sub_1D6B8599C(uint64_t a1)
{
  result = sub_1D6B859C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B859C4()
{
  result = qword_1EC892AA0;
  if (!qword_1EC892AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892AA0);
  }

  return result;
}

unint64_t sub_1D6B85A18(void *a1)
{
  a1[1] = sub_1D668E4E4();
  a1[2] = sub_1D668E704();
  result = sub_1D6B8568C();
  a1[3] = result;
  return result;
}

uint64_t SportsDataVisualizationResult.scores.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (!(v5 >> 61))
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.standings.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 1)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.bracketGroups.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 2)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.boxScores.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 3)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.lineScores.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 4)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.injuryReports.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 5)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

uint64_t SportsDataVisualizationResult.keyPlayers.getter()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(*v0 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 61 == 6)
    {

      MEMORY[0x1DA6F9CE0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v7;
    }
  }

  return result;
}

void *SportsEventVisualizationResult.init(visualizationResult:)()
{
  v1 = v0;
  v2 = SportsDataVisualizationResult.scores.getter();
  v3 = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    swift_deallocPartialClassInstance();
    return 0;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:

    v1[2] = v5;

    v1[3] = SportsDataVisualizationResult.boxScores.getter();
    v1[4] = SportsDataVisualizationResult.lineScores.getter();
    v1[5] = SportsDataVisualizationResult.injuryReports.getter();
    v6 = SportsDataVisualizationResult.keyPlayers.getter();

    v1[6] = v6;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6B8632C()
{
  v1 = *v0;
  v2 = 0x65726F6373;
  v3 = 0x726F6353656E696CLL;
  v4 = 0x65527972756A6E69;
  if (v1 != 3)
  {
    v4 = 0x6579616C5079656BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65726F6353786F62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6B863D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B876A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B86400(uint64_t a1)
{
  v2 = sub_1D6B8683C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B8643C(uint64_t a1)
{
  v2 = sub_1D6B8683C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEventVisualizationResult.deinit()
{

  return v0;
}

uint64_t SportsEventVisualizationResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SportsEventVisualizationResult.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B870C8(0, &qword_1EC892AA8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B8683C();
  sub_1D7264B5C();
  v13 = v3[2];
  HIBYTE(v12) = 0;
  type metadata accessor for SportsScoreDataVisualization(0);
  sub_1D6B8743C(&unk_1EDF0A6F0, type metadata accessor for SportsScoreDataVisualization, &protocol conformance descriptor for SportsScoreDataVisualization);
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3[3];
    HIBYTE(v12) = 1;
    sub_1D6B86ADC(0, &qword_1EC892AB8, type metadata accessor for SportsBoxScoreDataVisualization);
    sub_1D6B86890();
    sub_1D726443C();
    v13 = v3[4];
    HIBYTE(v12) = 2;
    sub_1D6B86ADC(0, &qword_1EC892AD0, type metadata accessor for SportsLineScoreDataVisualization);
    sub_1D6B86954();
    sub_1D726443C();
    v13 = v3[5];
    HIBYTE(v12) = 3;
    sub_1D6B86ADC(0, &qword_1EC892AE8, type metadata accessor for SportsInjuryReportDataVisualization);
    sub_1D6B86A18();
    sub_1D726443C();
    v13 = v3[6];
    HIBYTE(v12) = 4;
    sub_1D6B86ADC(0, &qword_1EC892B00, type metadata accessor for SportsKeyPlayerDataVisualization);
    sub_1D6B86B30();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6B8683C()
{
  result = qword_1EC892AB0;
  if (!qword_1EC892AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892AB0);
  }

  return result;
}

unint64_t sub_1D6B86890()
{
  result = qword_1EC892AC0;
  if (!qword_1EC892AC0)
  {
    sub_1D6B86ADC(255, &qword_1EC892AB8, type metadata accessor for SportsBoxScoreDataVisualization);
    sub_1D6B8743C(&qword_1EC892AC8, type metadata accessor for SportsBoxScoreDataVisualization, &protocol conformance descriptor for SportsBoxScoreDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892AC0);
  }

  return result;
}

unint64_t sub_1D6B86954()
{
  result = qword_1EC892AD8;
  if (!qword_1EC892AD8)
  {
    sub_1D6B86ADC(255, &qword_1EC892AD0, type metadata accessor for SportsLineScoreDataVisualization);
    sub_1D6B8743C(&qword_1EC892AE0, type metadata accessor for SportsLineScoreDataVisualization, &protocol conformance descriptor for SportsLineScoreDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892AD8);
  }

  return result;
}

unint64_t sub_1D6B86A18()
{
  result = qword_1EC892AF0;
  if (!qword_1EC892AF0)
  {
    sub_1D6B86ADC(255, &qword_1EC892AE8, type metadata accessor for SportsInjuryReportDataVisualization);
    sub_1D6B8743C(&qword_1EC892AF8, type metadata accessor for SportsInjuryReportDataVisualization, &protocol conformance descriptor for SportsInjuryReportDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892AF0);
  }

  return result;
}

void sub_1D6B86ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6B86B30()
{
  result = qword_1EC892B08;
  if (!qword_1EC892B08)
  {
    sub_1D6B86ADC(255, &qword_1EC892B00, type metadata accessor for SportsKeyPlayerDataVisualization);
    sub_1D6B8743C(&qword_1EC892B10, type metadata accessor for SportsKeyPlayerDataVisualization, &protocol conformance descriptor for SportsKeyPlayerDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B08);
  }

  return result;
}

uint64_t SportsEventVisualizationResult.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsEventVisualizationResult.init(from:)(a1);
  return v2;
}

void *SportsEventVisualizationResult.init(from:)(void *a1)
{
  sub_1D6B870C8(0, &qword_1EC892B18, MEMORY[0x1E69E6F48]);
  v15 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B8683C();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v12 = a1;
  }

  else
  {
    v9 = v5;
    type metadata accessor for SportsScoreDataVisualization(0);
    v16 = 0;
    sub_1D6B8743C(&qword_1EDF0A6E8, type metadata accessor for SportsScoreDataVisualization, &protocol conformance descriptor for SportsScoreDataVisualization);
    v10 = v15;
    sub_1D726431C();
    v1[2] = v17;
    sub_1D6B86ADC(0, &qword_1EC892AB8, type metadata accessor for SportsBoxScoreDataVisualization);
    v16 = 1;
    sub_1D6B8712C();
    sub_1D726431C();
    v1[3] = v17;
    sub_1D6B86ADC(0, &qword_1EC892AD0, type metadata accessor for SportsLineScoreDataVisualization);
    v16 = 2;
    sub_1D6B871F0();
    sub_1D726431C();
    v1[4] = v17;
    sub_1D6B86ADC(0, &qword_1EC892AE8, type metadata accessor for SportsInjuryReportDataVisualization);
    v16 = 3;
    sub_1D6B872B4();
    sub_1D726431C();
    v14 = a1;
    v1[5] = v17;
    sub_1D6B86ADC(0, &qword_1EC892B00, type metadata accessor for SportsKeyPlayerDataVisualization);
    v16 = 4;
    sub_1D6B87378();
    sub_1D726431C();
    (*(v9 + 8))(v8, v10);
    v1[6] = v17;
    v12 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v1;
}

void sub_1D6B870C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B8683C();
    v7 = a3(a1, &type metadata for SportsEventVisualizationResult.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B8712C()
{
  result = qword_1EC892B20;
  if (!qword_1EC892B20)
  {
    sub_1D6B86ADC(255, &qword_1EC892AB8, type metadata accessor for SportsBoxScoreDataVisualization);
    sub_1D6B8743C(&qword_1EC892B28, type metadata accessor for SportsBoxScoreDataVisualization, &protocol conformance descriptor for SportsBoxScoreDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B20);
  }

  return result;
}

unint64_t sub_1D6B871F0()
{
  result = qword_1EC892B30;
  if (!qword_1EC892B30)
  {
    sub_1D6B86ADC(255, &qword_1EC892AD0, type metadata accessor for SportsLineScoreDataVisualization);
    sub_1D6B8743C(&qword_1EC892B38, type metadata accessor for SportsLineScoreDataVisualization, &protocol conformance descriptor for SportsLineScoreDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B30);
  }

  return result;
}

unint64_t sub_1D6B872B4()
{
  result = qword_1EC892B40;
  if (!qword_1EC892B40)
  {
    sub_1D6B86ADC(255, &qword_1EC892AE8, type metadata accessor for SportsInjuryReportDataVisualization);
    sub_1D6B8743C(&qword_1EC892B48, type metadata accessor for SportsInjuryReportDataVisualization, &protocol conformance descriptor for SportsInjuryReportDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B40);
  }

  return result;
}

unint64_t sub_1D6B87378()
{
  result = qword_1EC892B50;
  if (!qword_1EC892B50)
  {
    sub_1D6B86ADC(255, &qword_1EC892B00, type metadata accessor for SportsKeyPlayerDataVisualization);
    sub_1D6B8743C(&qword_1EC892B58, type metadata accessor for SportsKeyPlayerDataVisualization, &protocol conformance descriptor for SportsKeyPlayerDataVisualization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B50);
  }

  return result;
}

uint64_t sub_1D6B8743C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D6B87484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsEventVisualizationResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D6B8759C()
{
  result = qword_1EC892B60;
  if (!qword_1EC892B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B60);
  }

  return result;
}

unint64_t sub_1D6B875F4()
{
  result = qword_1EC892B68;
  if (!qword_1EC892B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B68);
  }

  return result;
}

unint64_t sub_1D6B8764C()
{
  result = qword_1EC892B70;
  if (!qword_1EC892B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B70);
  }

  return result;
}

uint64_t sub_1D6B876A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6353786F62 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6353656E696CLL && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65527972756A6E69 && a2 == 0xED00007374726F70 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6579616C5079656BLL && a2 == 0xEA00000000007372)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FormatStateViewNodeStateLayoutAttributes.state.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6B878A0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6574617473;
  }
}

void sub_1D6B878DC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6B879BC(uint64_t a1)
{
  v2 = sub_1D6B87C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B879F8(uint64_t a1)
{
  v2 = sub_1D6B87C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateViewNodeStateLayoutAttributes.deinit()
{

  return v0;
}

uint64_t FormatStateViewNodeStateLayoutAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatStateViewNodeStateLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B87F4C(0, &qword_1EC892B78, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B87C4C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v12[15] = 1;
    type metadata accessor for FormatLayoutAttributes();
    sub_1D6B87FB0(&qword_1EDF28600, &protocol conformance descriptor for FormatLayoutAttributes);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6B87C4C()
{
  result = qword_1EC892B80;
  if (!qword_1EC892B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B80);
  }

  return result;
}

uint64_t FormatStateViewNodeStateLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatStateViewNodeStateLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatStateViewNodeStateLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6B87F4C(0, &qword_1EC892B88, MEMORY[0x1E69E6F48]);
  v13[0] = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B87C4C();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v15 = 0;
    v10 = v13[0];
    v1[2] = sub_1D72642BC();
    v1[3] = v11;
    type metadata accessor for FormatLayoutAttributes();
    v14 = 1;
    sub_1D6B87FB0(&qword_1EDF285F8, &protocol conformance descriptor for FormatLayoutAttributes);
    sub_1D726431C();
    (*(v9 + 8))(v8, v10);
    v1[4] = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6B87F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B87C4C();
    v7 = a3(a1, &type metadata for FormatStateViewNodeStateLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6B87FB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6B87FF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatStateViewNodeStateLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D6B880E8()
{
  result = qword_1EC892B90;
  if (!qword_1EC892B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B90);
  }

  return result;
}

unint64_t sub_1D6B88140()
{
  result = qword_1EC892B98;
  if (!qword_1EC892B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892B98);
  }

  return result;
}

unint64_t sub_1D6B88198()
{
  result = qword_1EC892BA0;
  if (!qword_1EC892BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892BA0);
  }

  return result;
}

unint64_t sub_1D6B88200(uint64_t a1)
{
  result = sub_1D6B88228();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B88228()
{
  result = qword_1EC892BA8;
  if (!qword_1EC892BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892BA8);
  }

  return result;
}

unint64_t sub_1D6B8827C(void *a1)
{
  a1[1] = sub_1D66C9188();
  a1[2] = sub_1D66F6240();
  result = sub_1D6B882B4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B882B4()
{
  result = qword_1EC892BB0;
  if (!qword_1EC892BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892BB0);
  }

  return result;
}

unint64_t _s8NewsFeed18FormatHOverlayNodeC4sizeAA0C4SizeOvg_0@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC7reverseAA0C7BooleanOvg_0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return sub_1D5E04CC4(v3, v4, v5);
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC10identifierSSvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC4nameSSSgvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC11descriptionSSSgvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FormatHOverlayNode.targetIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatHOverlayNode.__allocating_init(identifier:targetIdentifier:targetPath:name:description:size:adjustments:children:reversed:reverse:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v28 = *a10;
  v30 = a14[1];
  v31 = *a14;
  v21 = *(a14 + 16);
  v32 = *(a15 + 40);
  v33 = *(a15 + 32);
  *(v20 + 72) = 0u;
  *(v20 + 56) = 0u;
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  swift_beginAccess();
  *(v20 + 48) = a5;
  swift_beginAccess();
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;

  swift_beginAccess();
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;

  swift_beginAccess();
  *(v20 + 88) = v28;
  swift_beginAccess();
  *(v20 + 96) = a11;
  swift_beginAccess();
  *(v20 + 104) = a12;
  swift_beginAccess();
  *(v20 + 112) = a13;
  if (v21 == 255)
  {
    v22 = a13 & 1;
  }

  else
  {
    v22 = v31;
  }

  if (v21 == 255)
  {
    v23 = 0;
  }

  else
  {
    v23 = v30;
  }

  swift_beginAccess();
  *(v20 + 120) = v22;
  *(v20 + 128) = v23;
  *(v20 + 136) = (v21 != 255) & v21;
  v24 = *(a15 + 16);
  *(v20 + 144) = *a15;
  *(v20 + 160) = v24;
  *(v20 + 176) = v33;
  *(v20 + 184) = v32;
  return v20;
}

uint64_t FormatHOverlayNode.init(identifier:targetIdentifier:targetPath:name:description:size:adjustments:children:reversed:reverse:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14, uint64_t a15)
{
  v27 = *a10;
  v30 = a14[1];
  v31 = *a14;
  v29 = *(a14 + 16);
  v32 = *(a15 + 40);
  v33 = *(a15 + 32);
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  swift_beginAccess();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  swift_beginAccess();
  *(v15 + 48) = a5;
  swift_beginAccess();
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;

  swift_beginAccess();
  *(v15 + 72) = a8;
  *(v15 + 80) = a9;

  swift_beginAccess();
  *(v15 + 88) = v27;
  swift_beginAccess();
  *(v15 + 96) = a11;
  swift_beginAccess();
  *(v15 + 104) = a12;
  swift_beginAccess();
  *(v15 + 112) = a13;
  if (v29 == 255)
  {
    v22 = a13 & 1;
  }

  else
  {
    v22 = v31;
  }

  if (v29 == 255)
  {
    v23 = 0;
  }

  else
  {
    v23 = v30;
  }

  swift_beginAccess();
  *(v15 + 120) = v22;
  *(v15 + 128) = v23;
  *(v15 + 136) = (v29 != 255) & v29;
  v24 = *(a15 + 16);
  *(v15 + 144) = *a15;
  *(v15 + 160) = v24;
  *(v15 + 176) = v33;
  *(v15 + 184) = v32;
  return v15;
}

uint64_t FormatHOverlayNode.__deallocating_deinit()
{
  FormatHOverlayNode.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6B88D84@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D6693EE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double _s8NewsFeed18FormatHOverlayNodeC10identifierSSvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double _s8NewsFeed18FormatHOverlayNodeC10targetPathSaySSGvs_0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double sub_1D6B88F1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;

  return result;
}

double _s8NewsFeed18FormatHOverlayNodeC4nameSSSgvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

double sub_1D6B89020(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;

  return result;
}

double _s8NewsFeed18FormatHOverlayNodeC11descriptionSSSgvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;

  return result;
}

unint64_t sub_1D6B89124(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  sub_1D5C82CD8(v2);
  *(v3 + 88) = v2;
  return sub_1D5C92A8C(v4);
}

unint64_t _s8NewsFeed18FormatHOverlayNodeC4sizeAA0C4SizeOvs_0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5C92A8C(v3);
}

double _s8NewsFeed18FormatHOverlayNodeC11adjustmentsSayAA0C10AdjustmentOGvs_0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

double sub_1D6B892B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;

  return result;
}

double _s8NewsFeed18FormatHOverlayNodeC8childrenSayAA0c9SourceMapE0VGvs_0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;

  return result;
}

uint64_t sub_1D6B893FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  v6 = *(v3 + 136);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_1D5E04CC4(v4, v5, v6);
}

uint64_t sub_1D6B89450(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 120);
  v7 = *(v5 + 128);
  v8 = *(v5 + 136);
  sub_1D5E04CC4(v2, v3, v4);
  *(v5 + 120) = v2;
  *(v5 + 128) = v3;
  *(v5 + 136) = v4;
  return sub_1D5D2F2C4(v6, v7, v8);
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC7reverseAA0C7BooleanOvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  *(v1 + 120) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  return sub_1D5D2F2C4(v5, v6, v7);
}

uint64_t _s8NewsFeed18FormatHOverlayNodeC4flexAA0c7FlexBoxE4ItemVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t _s8NewsFeed18FormatHOverlayNodeCfd_0()
{

  sub_1D5C92A8C(*(v0 + 88));

  sub_1D5D2F2C4(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1D5EB2398(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t sub_1D6B89618(uint64_t a1)
{
  result = sub_1D6B89924(&qword_1EC892BB8, type metadata accessor for FormatHOverlayNode, &protocol conformance descriptor for FormatHOverlayNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B89694(void *a1)
{
  a1[1] = sub_1D6B89924(&qword_1EDF2DF78, type metadata accessor for FormatHOverlayNode, &protocol conformance descriptor for FormatHOverlayNode);
  a1[2] = sub_1D6B89924(&qword_1EDF104B8, type metadata accessor for FormatHOverlayNode, &protocol conformance descriptor for FormatHOverlayNode);
  result = sub_1D6B89924(&qword_1EC892BC0, type metadata accessor for FormatHOverlayNode, &protocol conformance descriptor for FormatHOverlayNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B89740(uint64_t a1)
{
  result = sub_1D6B89924(&qword_1EC892BC8, type metadata accessor for FormatHOverlayNode, &protocol conformance descriptor for FormatHOverlayNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B89798(uint64_t a1)
{
  result = sub_1D6B89924(&qword_1EC892BD0, type metadata accessor for FormatVOverlayNode, &protocol conformance descriptor for FormatVOverlayNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B897F0(void *a1)
{
  a1[1] = sub_1D6B89924(&qword_1EDF2D970, type metadata accessor for FormatVOverlayNode, &protocol conformance descriptor for FormatVOverlayNode);
  a1[2] = sub_1D6B89924(&qword_1EDF10190, type metadata accessor for FormatVOverlayNode, &protocol conformance descriptor for FormatVOverlayNode);
  result = sub_1D6B89924(&qword_1EC892BD8, type metadata accessor for FormatVOverlayNode, &protocol conformance descriptor for FormatVOverlayNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B898CC(uint64_t a1)
{
  result = sub_1D6B89924(&unk_1EC892BE0, type metadata accessor for FormatVOverlayNode, &protocol conformance descriptor for FormatVOverlayNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B89924(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B89968(unint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D725991C();
  v9 = *(a2 + 104);
  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = 32;
    while (v11 < *(v9 + 16))
    {
      v13 = *(v9 + v12);
      v14 = *(v9 + v12 + 32);
      v19[1] = *(v9 + v12 + 16);
      v19[2] = v14;
      v19[0] = v13;
      v15 = *(v9 + v12 + 48);
      v16 = *(v9 + v12 + 64);
      v17 = *(v9 + v12 + 80);
      v20 = *(v9 + v12 + 96);
      v19[4] = v16;
      v19[5] = v17;
      v19[3] = v15;
      sub_1D5C5C4CC(v19, &v18);
      sub_1D6FC044C(a1, a3, a4);
      if (v4)
      {

        sub_1D5C5C540(v19);
        return;
      }

      ++v11;
      sub_1D5C5C540(v19);
      v12 += 104;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t keypath_get_6Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t keypath_get_10Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

unint64_t keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t keypath_get_14Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

void keypath_get_18Tm(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

void keypath_set_19Tm(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

unint64_t ContextMenu.ItemOptions.description.getter()
{
  result = 0x6F6C6552206E6143;
  switch(*v0)
  {
    case 1:
      return result;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 0x19:
      result = 0xD00000000000001ELL;
      break;
    case 5:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x69736552206E6143;
      break;
    case 7:
    case 0x10:
    case 0x17:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0x6B636F6C42207349;
      break;
    case 0xB:
      result = 0x6373627553207349;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x6168432065646948;
      break;
    case 0xF:
    case 0x1A:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0x6C6F462065646948;
      break;
    case 0x12:
      result = 0x6F6C422065646948;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x14:
      result = 0xD000000000000018;
      break;
    case 0x15:
      result = 0x6F74532064616552;
      break;
    case 0x16:
      result = 0x726F6853206E6143;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x1B:
      result = 0xD000000000000017;
      break;
    case 0x1C:
      result = 0x6168532065646948;
      break;
    case 0x1D:
      result = 0x7661532065646948;
      break;
    case 0x1E:
      result = 0x666153206E65704FLL;
      break;
    case 0x1F:
      result = 0xD000000000000011;
      break;
    case 0x20:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t static ContextMenu.MenuType.feedHeadline(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for FeedHeadline(0) + 56)))
  {
    v4 = 0;
    v5 = a1[5];
    v6 = *a1;
    v7 = a1[1];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = a1[5];
    v8 = *a1;
    v9 = a1[1];
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    v4 = 2;
  }

  swift_unknownObjectRetain();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 66) = v4;
  return result;
}

double sub_1D6B8A238@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_1D61881BC())
  {
    goto LABEL_2;
  }

  v5 = objc_opt_self();
  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    sub_1D6B48774(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7270C10;
    v9 = _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
    v10 = v9;
    if (v9)
    {
      v9 = sub_1D725D3DC();
      v11 = MEMORY[0x1E69D7890];
    }

    else
    {
      v11 = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
    }

    *(v8 + 32) = v10;
    *(v8 + 56) = v9;
    *(v8 + 64) = v11;
    v18 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
    v19 = v18;
    if (v18)
    {
      v18 = sub_1D725D3DC();
      v20 = MEMORY[0x1E69D7890];
    }

    else
    {
      v20 = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
    }

    *(v8 + 72) = v19;
    *(v8 + 96) = v18;
    *(v8 + 104) = v20;
  }

  else
  {
    v12 = [v5 currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 1)
    {
LABEL_2:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    sub_1D6B48774(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    v15 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
    v16 = v15;
    if (v15)
    {
      v15 = sub_1D725D3DC();
      v17 = MEMORY[0x1E69D7890];
    }

    else
    {
      v17 = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
    }

    *(v14 + 32) = v16;
    *(v14 + 56) = v15;
    *(v14 + 64) = v17;
  }

  sub_1D725D72C();
  sub_1D725D71C();

  return result;
}

void sub_1D6B8A430(int a1@<W0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D725D73C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725DC6C();
  v16 = *(v15 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v15, v17).n128_u64[0];
  v21 = &ObjectType - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v60 = a1;
    v59 = v18;
    v22 = [a3 sourceChannel];
    v64 = MEMORY[0x1E69E7CC0];
    if ((sub_1D61881BC() & 1) == 0)
    {
      v58 = a4;
      if (v22)
      {
        v55 = v11;
        v56 = v10;
        v57 = v14;
        ObjectType = swift_getObjectType();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v24 = objc_opt_self();
        swift_unknownObjectRetain_n();
        v25 = [v24 bundleForClass_];
        sub_1D725811C();

        sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D7273AE0;
        v27 = FCTagProviding.localizedTagType.getter();
        v29 = v28;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1D5B7E2C0();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        sub_1D72620BC();
        ObjectType = v30;

        if (qword_1EDF3B010 != -1)
        {
          swift_once();
        }

        v31 = qword_1EDF05C18;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        if (v31 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDF05C20;
        (*(v16 + 104))(v21, *MEMORY[0x1E69D7B48], v59);
        v61 = v22;
        v62 = 0;
        v63 = a3;
        v33 = sub_1D725D3DC();
        swift_allocObject();
        v34 = v32;
        v35 = sub_1D725D3AC();
        swift_unknownObjectRelease_n();
        v36 = MEMORY[0x1E69D7890];
        v14 = v57;
        v10 = v56;
        v11 = v55;
      }

      else
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
      }

      v37 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1D6995D68((v38 > 1), v39 + 1, 1, v37);
      }

      v37[2] = v39 + 1;
      v40 = &v37[5 * v39];
      v40[4] = v35;
      v40[5] = 0;
      v40[6] = 0;
      v40[7] = v33;
      v40[8] = v36;
      v64 = v37;
    }

    sub_1D6B48774(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v42 = swift_unknownObjectRetain();
    v43 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v42);
    swift_unknownObjectRelease();
    v44 = 0;
    if (v43)
    {
      v44 = sub_1D725D3DC();
      v45 = MEMORY[0x1E69D7890];
    }

    else
    {
      v45 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v43;
    *(inited + 56) = v44;
    *(inited + 64) = v45;
    v46 = swift_unknownObjectRetain();
    v47 = _s5TeaUI15ContextMenuItemC8NewsFeedE5block3tagACSgSo14FCTagProviding_pSg_tFZ_0(v46);
    swift_unknownObjectRelease();
    v48 = 0;
    if (v47)
    {
      v48 = sub_1D725D3DC();
      v49 = MEMORY[0x1E69D7890];
    }

    else
    {
      v49 = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
    }

    *(inited + 72) = v47;
    *(inited + 96) = v48;
    *(inited + 104) = v49;
    sub_1D6988798(inited);
    if ((v60 & 1) != 0 && (sub_1D61881BC() & 1) == 0)
    {
      if (v22)
      {
        v50 = [v22 displayName];
        sub_1D726207C();
      }

      (*(v11 + 104))(v14, *MEMORY[0x1E69D79B0], v10);
      v51 = sub_1D725D72C();
      swift_allocObject();
      v52 = sub_1D725D70C();
      v53 = MEMORY[0x1E69D79A8];
      *(a5 + 24) = v51;
      *(a5 + 32) = v53;
      swift_unknownObjectRelease();
      *a5 = v52;
    }

    else
    {
      sub_1D725D72C();
      sub_1D725D71C();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

double sub_1D6B8AAA4@<D0>(int a1@<W0>, char a2@<W1>, unint64_t *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v68 = a4;
  v69 = a8;
  v67 = sub_1D725DC6C();
  v14 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    HIDWORD(v65) = a1;
    v66 = a6;
    sub_1D6B978C0(0, &qword_1EDF023A0, sub_1D6B97924, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    v18[1] = xmmword_1D7279960;
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;

    v20 = swift_unknownObjectRetain();
    sub_1D61EC958(v20);
    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDF1BB80;
    (*(v14 + 104))(v17, *MEMORY[0x1E69D7B48], v67);
    v70 = a3;
    v71 = sub_1D6B979CC;
    v72 = v19;
    v22 = v68;
    *&v73 = v68;
    *(&v73 + 1) = a5;
    v75 = 0;
    v74 = 0;
    sub_1D725D3DC();
    swift_allocObject();
    v23 = v21;
    *(v18 + 4) = sub_1D725D3AC();
    if ((v65 & 0x100000000) != 0)
    {
      v24 = 0;
      *(v18 + 5) = 0;
    }

    else
    {
      *(v18 + 5) = sub_1D6AC60FC(a3);
      v70 = a3;
      LOBYTE(v71) = 0;
      swift_unknownObjectRetain();
      v24 = _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(&v70, 1, v39);
      sub_1D68AF74C(v70, v71);
    }

    *(v18 + 6) = v24;
    v70 = a3;
    v71 = v22;
    *&v72 = a5;
    swift_unknownObjectRetain();

    v41 = _s5TeaUI15ContextMenuItemC8NewsFeedE4like7contextAcD013LikingCommandC0V_tFZ_0(&v70, v40);
    swift_unknownObjectRelease();

    *(v18 + 7) = v41;
    v70 = a3;
    v71 = v22;
    *&v72 = a5;
    swift_unknownObjectRetain();

    v43 = _s5TeaUI15ContextMenuItemC8NewsFeedE7dislike7contextAcD013LikingCommandC0V_tFZ_0(&v70, v42);
    swift_unknownObjectRelease();

    *(v18 + 8) = v43;
    v70 = v18;
    if (sub_1D61881BC())
    {
      v44 = [a3 identifier];
      v45 = sub_1D726207C();
      v47 = v46;

      _s5TeaUI15ContextMenuItemC8NewsFeedE17removeFromHistory8headlineACSS_tFZ_0(v45, v47);

      MEMORY[0x1DA6F9CE0](v48);
      if (*(v70 + 2) >= *(v70 + 3) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v18 = v70;
    }

    sub_1D725D72C();
    sub_1D5F649CC(v18);

    sub_1D725D71C();
  }

  else
  {
    sub_1D6B48774(0);
    if (a7)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D7274590;
      v73 = 0u;
      v72 = 0u;
      v70 = a3;
      LOWORD(v71) = 0;
      BYTE2(v71) = 7;
      swift_unknownObjectRetain();
      v26 = sub_1D69AF0EC(&v70);
      sub_1D6B97864(&v70);
      v27 = sub_1D725D72C();
      v28 = MEMORY[0x1E69D79A8];
      v66 = v27;
      *(v25 + 56) = v27;
      *(v25 + 64) = v28;
      *(v25 + 32) = v26;
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;

      v30 = swift_unknownObjectRetain();
      sub_1D61EC958(v30);
      if (qword_1EDF1BB78 != -1)
      {
        swift_once();
      }

      v31 = qword_1EDF1BB80;
      (*(v14 + 104))(v17, *MEMORY[0x1E69D7B48], v67);
      v70 = a3;
      v71 = sub_1D6B979CC;
      v72 = v29;
      *&v73 = v68;
      *(&v73 + 1) = a5;
      v75 = 0;
      v74 = 0;
      v32 = sub_1D725D3DC();
      swift_allocObject();
      v33 = v31;
      v34 = sub_1D725D3AC();
      v35 = MEMORY[0x1E69D7890];
      *(v25 + 96) = v32;
      *(v25 + 104) = v35;
      *(v25 + 72) = v34;
      v36 = sub_1D6AC60FC(a3);
      if (v36)
      {
        v37 = MEMORY[0x1E69D7890];
        v38 = v32;
      }

      else
      {
        v38 = 0;
        v37 = 0;
        *(v25 + 120) = 0;
        *(v25 + 128) = 0;
      }

      *(v25 + 112) = v36;
      *(v25 + 136) = v38;
      *(v25 + 144) = v37;
      v70 = a3;
      LOBYTE(v71) = 0;
      swift_unknownObjectRetain();
      v61 = _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(&v70, 1, v60);
      sub_1D68AF74C(v70, v71);
      *(v25 + 176) = v32;
      *(v25 + 184) = v35;
      *(v25 + 152) = v61;
    }

    else
    {
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1D7279970;
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;

      v51 = swift_unknownObjectRetain();
      sub_1D61EC958(v51);
      if (qword_1EDF1BB78 != -1)
      {
        swift_once();
      }

      v52 = qword_1EDF1BB80;
      (*(v14 + 104))(v17, *MEMORY[0x1E69D7B48], v67);
      v70 = a3;
      v71 = sub_1D6B9785C;
      v72 = v50;
      *&v73 = v68;
      *(&v73 + 1) = a5;
      v75 = 0;
      v74 = 0;
      v53 = sub_1D725D3DC();
      swift_allocObject();
      v54 = v52;
      v55 = sub_1D725D3AC();
      v56 = MEMORY[0x1E69D7890];
      *(v49 + 56) = v53;
      *(v49 + 64) = v56;
      *(v49 + 32) = v55;
      v57 = sub_1D6AC60FC(a3);
      if (v57)
      {
        v58 = MEMORY[0x1E69D7890];
        v59 = v53;
      }

      else
      {
        v59 = 0;
        v58 = 0;
        *(v49 + 80) = 0;
        *(v49 + 88) = 0;
      }

      *(v49 + 72) = v57;
      *(v49 + 96) = v59;
      *(v49 + 104) = v58;
      sub_1D725D72C();
      v70 = a3;
      LOBYTE(v71) = 0;
      swift_unknownObjectRetain();
      v63 = _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(&v70, 1, v62);
      sub_1D68AF74C(v70, v71);
      *(v49 + 136) = v53;
      *(v49 + 144) = v56;
      *(v49 + 112) = v63;
    }

    sub_1D725D71C();
  }

  return result;
}

double sub_1D6B8B2F8(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v5 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV9listenNow8headline14ignorePlaylistACSgSo19FCHeadlineProviding_p_SbtFZ_0(a2, 1);
    if (v5)
    {
      v6 = sub_1D725D3DC();
      v7 = MEMORY[0x1E69D7890];
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v11 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D6995D68((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    v14 = &v11[5 * v13];
    v14[4] = v5;
    v14[5] = 0;
    v14[6] = 0;
    v14[7] = v6;
    v14[8] = v7;
    if ((a3 & 1) == 0)
    {
      sub_1D6B48774(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;
      v16 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV10listenNext8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
      v17 = v16;
      if (v16)
      {
        v16 = sub_1D725D3DC();
        v18 = MEMORY[0x1E69D7890];
      }

      else
      {
        v18 = 0;
        *(inited + 40) = 0;
        *(inited + 48) = 0;
      }

      *(inited + 32) = v17;
      *(inited + 56) = v16;
      *(inited + 64) = v18;
      v23 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV11listenLater8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
      v24 = v23;
      if (v23)
      {
        v23 = sub_1D725D3DC();
        v25 = MEMORY[0x1E69D7890];
      }

      else
      {
        v25 = 0;
        *(inited + 80) = 0;
        *(inited + 88) = 0;
      }

      *(inited + 72) = v24;
      *(inited + 96) = v23;
      *(inited + 104) = v25;
      sub_1D6988798(inited);
    }
  }

  else
  {
    v8 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV07previewH08headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    if (v8)
    {
      v9 = sub_1D725D3DC();
      v10 = MEMORY[0x1E69D7890];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v19 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1D6995D68((v20 > 1), v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    v22 = &v19[5 * v21];
    v22[4] = v8;
    v22[5] = 0;
    v22[6] = 0;
    v22[7] = v9;
    v22[8] = v10;
  }

  sub_1D725D72C();
  sub_1D725D71C();

  return result;
}

double sub_1D6B8B540@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50[1] = a3;
  v5 = sub_1D725DC6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1E69E7CC0];
  if ((a1 & 1) == 0)
  {
    sub_1D6B48774(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v11 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV10listenNext8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    v12 = v11;
    if (v11)
    {
      v11 = sub_1D725D3DC();
      v13 = MEMORY[0x1E69D7890];
    }

    else
    {
      v13 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v12;
    *(inited + 56) = v11;
    *(inited + 64) = v13;
    v14 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV11listenLater8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    v15 = v14;
    if (v14)
    {
      v14 = sub_1D725D3DC();
      v16 = MEMORY[0x1E69D7890];
    }

    else
    {
      v16 = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
    }

    *(inited + 72) = v15;
    *(inited + 96) = v14;
    *(inited + 104) = v16;
    sub_1D6988798(inited);
  }

  v17 = qword_1EDF3AB98;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  swift_unknownObjectRetain();

  v20 = [v19 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B10 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDF05B18;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7B48], v5);
  *&v51 = a2;
  v22 = sub_1D725D3DC();
  swift_allocObject();
  v23 = v21;
  v24 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  v25 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1D6995D68(0, v25[2] + 1, 1, v25);
  }

  v26 = MEMORY[0x1E69D7890];
  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1D6995D68((v27 > 1), v28 + 1, 1, v25);
  }

  v25[2] = v28 + 1;
  v29 = &v25[5 * v28];
  v29[4] = v24;
  *(v29 + 5) = v51;
  v29[7] = v22;
  v29[8] = v26;
  if (sub_1D61881BC())
  {
    v30 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV6remove8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    if (v30)
    {
      v31 = v26;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v22;
    }

    else
    {
      v32 = 0;
    }

    v34 = v25[2];
    v33 = v25[3];
    if (v34 >= v33 >> 1)
    {
      v50[0] = v30;
      v25 = sub_1D6995D68((v33 > 1), v34 + 1, 1, v25);
      v30 = v50[0];
    }

    v25[2] = v34 + 1;
    v35 = &v25[5 * v34];
    v35[4] = v30;
    v35[5] = 0;
    v35[6] = 0;
    v35[7] = v32;
    v35[8] = v31;
  }

  if (sub_1D61881BC())
  {
    v36 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV010removeFromH7History8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    if (v36)
    {
      v37 = v22;
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v26;
    }

    else
    {
      v38 = 0;
    }

    v40 = v25[2];
    v39 = v25[3];
    if (v40 >= v39 >> 1)
    {
      v50[0] = v36;
      v25 = sub_1D6995D68((v39 > 1), v40 + 1, 1, v25);
      v36 = v50[0];
    }

    v25[2] = v40 + 1;
    v41 = &v25[5 * v40];
    v41[4] = v36;
    v41[5] = 0;
    v41[6] = 0;
    v41[7] = v37;
    v41[8] = v38;
  }

  if (sub_1D61881BC())
  {
    v42 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV010removeFromH8Playlist8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a2);
    if (v42)
    {
      v43 = v22;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v26;
    }

    else
    {
      v44 = 0;
    }

    v46 = v25[2];
    v45 = v25[3];
    if (v46 >= v45 >> 1)
    {
      v49 = v42;
      v25 = sub_1D6995D68((v45 > 1), v46 + 1, 1, v25);
      v42 = v49;
    }

    v25[2] = v46 + 1;
    v47 = &v25[5 * v46];
    v47[4] = v42;
    v47[5] = 0;
    v47[6] = 0;
    v47[7] = v43;
    v47[8] = v44;
  }

  sub_1D725D72C();
  sub_1D725D71C();

  return result;
}

uint64_t ContextMenu.ItemOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t ContextMenuContext.contextMenuItemOptionsWithAccess(_:)(char a1, void *a2)
{
  v3 = ContextMenuContext.contextMenuItemOptions.getter(a2);
  if (a1)
  {
    v4 = &unk_1F51195C0;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D5EEFCA0(v4, v3);

  return v5;
}

uint64_t ContextMenuContext.contextMenuItemOptions.getter(void *a1)
{
  MEMORY[0x1EEE9AC00](a1, a1[5]);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 72);
  v6 = v5;
  v28[1] = v5;
  v29 = sub_1D725DDFC();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v8);
  v10 = v28 - v9;
  v11 = sub_1D7258DBC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = a1[8];
  *&v17 = a1[4];
  *(&v17 + 1) = v6;
  *(&v16 + 1) = v4;
  v34 = v16;
  v33 = v17;
  v18 = sub_1D725D34C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v28 - v21;
  sub_1D725C8DC();
  sub_1D725C90C();
  sub_1D725D35C();
  (*(v12 + 8))(v15, v11);
  (*(v19 + 8))(v22, v18);
  v23 = v29;
  sub_1D725DDEC();
  (*(v7 + 8))(v10, v23);
  sub_1D5B49474(0, &qword_1EC892BF0, &protocol descriptor for ContextMenuItemOptionsProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v31, &v33);
    v24 = *(&v34 + 1);
    v25 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v26 = (*(v25 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(&v33);
    return v26;
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_1D6B97548(v31);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D6B8BEA0(void *a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  v31 = sub_1D61881BC();
  v28 = sub_1D61881BC();
  v29 = sub_1D61881BC();
  v32 = sub_1D61881BC();
  v30 = sub_1D61881BC();
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = sub_1D726207C();
    v12 = v11;

    if (v10 == 0x6C7070612E6D6F63 && v12 == 0xEE007377656E2E65)
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1D72646CC();
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = sub_1D726207C();
    v19 = v18;

    if (v17 == 0xD000000000000010 && 0x80000001D73E7810 == v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1D72646CC();
    }

    v21 = v32;

    if (v31)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v20 = 0;
    v21 = v32;
    if (v31)
    {
LABEL_18:
      sub_1D6B48774(0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7274590;
      sub_1D6B8B540(v20 & 1, a1, v22 + 32);
      sub_1D6B8A238(a1, v22 + 72);
      sub_1D6B8AAA4(1, v14 & 1, a1, a2, a3, a4, v20 & 1, v22 + 112);
      v26 = v30 | v21;
LABEL_20:
      v23 = v22 + 152;
      v24 = v26 & 1;
      v25 = v14 & 1;
      goto LABEL_21;
    }
  }

  sub_1D6B48774(0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7274590;
  sub_1D6B8A238(a1, v22 + 32);
  if ((v14 & v21 & 1) == 0)
  {
    sub_1D6B8B2F8(v29 & 1, a1, v20 & 1);
    sub_1D6B8AAA4(0, v14 & 1, a1, a2, a3, a4, v20 & 1, v22 + 112);
    v26 = v30 | v21 | v28;
    goto LABEL_20;
  }

  sub_1D6B8AAA4(0, 1, a1, a2, a3, a4, v20 & 1, v22 + 72);
  sub_1D6B8B2F8(v29 & 1, a1, v20 & 1);
  v23 = v22 + 152;
  v24 = 1;
  v25 = 1;
LABEL_21:
  sub_1D6B8A430(v24, v25, a1, a4, v23);
  return v22;
}

uint64_t sub_1D6B8C228(uint64_t a1)
{
  if ((sub_1D61881BC() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D726207C();
  v6 = v5;

  v7 = v4 == 0x6C7070612E6D6F63 && v6 == 0xEE007377656E2E65;
  if (v7 || (sub_1D72646CC() & 1) != 0)
  {

    sub_1D6B48774(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7279970;
    v9 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV9listenNow8headline14ignorePlaylistACSgSo19FCHeadlineProviding_p_SbtFZ_0(a1, 1);
    v10 = v9;
    if (v9)
    {
      v9 = sub_1D725D3DC();
      v11 = MEMORY[0x1E69D7890];
    }

    else
    {
      v11 = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
    }

    *(v8 + 32) = v10;
    *(v8 + 56) = v9;
    *(v8 + 64) = v11;
    v12 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV10listenNext8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
    v13 = v12;
    if (v12)
    {
      v12 = sub_1D725D3DC();
      v14 = MEMORY[0x1E69D7890];
    }

    else
    {
      v14 = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
    }

    *(v8 + 72) = v13;
    *(v8 + 96) = v12;
    *(v8 + 104) = v14;
    v15 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV11listenLater8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x1E69D7890];
      *(v8 + 136) = sub_1D725D3DC();
      *(v8 + 144) = v17;
      *(v8 + 112) = v16;
    }

    else
    {
      *(v8 + 144) = 0;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
    }

    return v8;
  }

  if (v4 == 0xD000000000000010 && 0x80000001D73E7810 == v6)
  {
  }

  else
  {
    v19 = sub_1D72646CC();

    if ((v19 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1D6B48774(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE5AudioV9listenNow8headline14ignorePlaylistACSgSo19FCHeadlineProviding_p_SbtFZ_0(a1, 1);
  v22 = v21;
  if (v21)
  {
    v21 = sub_1D725D3DC();
    v23 = MEMORY[0x1E69D7890];
  }

  else
  {
    v23 = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
  }

  *(v8 + 32) = v22;
  *(v8 + 56) = v21;
  *(v8 + 64) = v23;
  v30 = 0u;
  v31 = 0u;
  v27 = a1;
  v28 = 0;
  v29 = 7;
  swift_unknownObjectRetain();
  v24 = sub_1D69AF0EC(&v27);
  sub_1D6B97864(&v27);
  v25 = sub_1D725D72C();
  v26 = MEMORY[0x1E69D79A8];
  *(v8 + 96) = v25;
  *(v8 + 104) = v26;
  *(v8 + 72) = v24;
  return v8;
}

void *sub_1D6B8C4EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v170 = a2;
  v7 = MEMORY[0x1E69D7C80];
  sub_1D6B97960(0, &unk_1EDF3B550, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v169 = v159 - v10;
  v11 = MEMORY[0x1E69D7AE0];
  sub_1D6B97960(0, &unk_1EDF3B630, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v168 = v159 - v14;
  v15 = MEMORY[0x1E69D7AE8];
  sub_1D6B97960(0, &unk_1EDF3B610, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v167 = v159 - v18;
  sub_1D6B97960(0, &qword_1EDF170A0, sub_1D5B65B58, &type metadata for BlockingCommandState, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v165 = v159 - v21;
  sub_1D6B97960(0, &qword_1EDF171B0, sub_1D5B65B58, &type metadata for BlockingCommandState, v11);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v164 = v159 - v24;
  sub_1D6B97960(0, &unk_1EDF17180, sub_1D5B65B58, &type metadata for BlockingCommandState, v15);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v163 = v159 - v27;
  v28 = sub_1D725DC6C();
  v160 = *(v28 - 8);
  v161 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v162 = v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D61881BC();
  v32 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    sub_1D725D72C();
    sub_1D6B48774(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    sub_1D62E40B8();
    v36 = v35;
    *(v34 + 56) = sub_1D725D3DC();
    *(v34 + 64) = MEMORY[0x1E69D7890];
    *(v34 + 32) = v36;
    sub_1D725D71C();

    v33 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v38 = v33[2];
    v37 = v33[3];
    if (v38 >= v37 >> 1)
    {
      v33 = sub_1D6995D68((v37 > 1), v38 + 1, 1, v33);
    }

    v33[2] = v38 + 1;
    v39 = &v33[5 * v38];
    *(v39 + 2) = v176;
    *(v39 + 3) = v177;
    v39[8] = v178;
  }

  v172 = a3;
  v179 = v32;
  v40 = objc_opt_self();
  v41 = [v40 currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 5)
  {
    sub_1D6B48774(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v44 = a1;
    v45 = _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab5issueACSgSo7FCIssueC_tFZ_0(a1);
    v46 = v45;
    if (v45)
    {
      v45 = sub_1D725D3DC();
      v47 = MEMORY[0x1E69D7890];
    }

    else
    {
      v47 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    v50 = MEMORY[0x1E69D7890];
    v51 = v33;
    *(inited + 32) = v46;
    *(inited + 56) = v45;
    *(inited + 64) = v47;
    v55 = sub_1D687860C(a1);
    v56 = v55;
    if (v55)
    {
      v55 = sub_1D725D3DC();
      v57 = MEMORY[0x1E69D7890];
    }

    else
    {
      v57 = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
    }

    *(inited + 72) = v56;
    *(inited + 96) = v55;
    *(inited + 104) = v57;
    sub_1D6988798(inited);
  }

  else
  {
    v48 = [v40 currentDevice];
    v49 = [v48 userInterfaceIdiom];

    v44 = a1;
    v50 = MEMORY[0x1E69D7890];
    v51 = v33;
    if (v49 == 1)
    {
      v52 = sub_1D687860C(a1);
      if (v52)
      {
        v53 = sub_1D725D3DC();
        v54 = MEMORY[0x1E69D7890];
      }

      else
      {
        v54 = 0;
        v53 = 0;
      }

      v58 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v60 = v58[2];
      v59 = v58[3];
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1D6995D68((v59 > 1), v60 + 1, 1, v58);
      }

      v58[2] = v60 + 1;
      v61 = &v58[5 * v60];
      v61[4] = v52;
      v61[5] = 0;
      v61[6] = 0;
      v61[7] = v53;
      v61[8] = v54;
      v179 = v58;
      v51 = v33;
      v44 = a1;
    }
  }

  if (sub_1D61881BC())
  {
  }

  else
  {
    sub_1D725D72C();
    sub_1D725D71C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1D6995D68(0, v51[2] + 1, 1, v51);
    }

    v63 = v51[2];
    v62 = v51[3];
    if (v63 >= v62 >> 1)
    {
      v51 = sub_1D6995D68((v62 > 1), v63 + 1, 1, v51);
    }

    v51[2] = v63 + 1;
    v64 = &v51[5 * v63];
    v65 = v176;
    v66 = v177;
    v64[8] = v178;
    *(v64 + 2) = v65;
    *(v64 + 3) = v66;
  }

  v67 = sub_1D61881BC();
  v173 = v44;
  if (v67)
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v69 = v51;
    LOBYTE(v176) = 0;
    v70 = _s5TeaUI15ContextMenuItemC8NewsFeedE5share5issue0hC0ACSgSo7FCIssueC_AD012CommandShareC0OtFZ_0(v44, &v176);
    if (v70)
    {
      v71 = sub_1D725D3DC();
      v72 = MEMORY[0x1E69D7890];
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v68 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v74 = v68[2];
    v73 = v68[3];
    if (v74 >= v73 >> 1)
    {
      v68 = sub_1D6995D68((v73 > 1), v74 + 1, 1, v68);
    }

    v68[2] = v74 + 1;
    v75 = &v68[5 * v74];
    v75[4] = v70;
    v75[5] = 0;
    v75[6] = 0;
    v75[7] = v71;
    v75[8] = v72;
    v51 = v69;
    v44 = v173;
  }

  v76 = _s5TeaUI15ContextMenuItemC8NewsFeedE9copyIssue5issueACSo7FCIssueC_tFZ_0(v44);
  v77 = sub_1D725D3DC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v68 = sub_1D6995D68(0, v68[2] + 1, 1, v68);
  }

  v79 = v68[2];
  v78 = v68[3];
  if (v79 >= v78 >> 1)
  {
    v68 = sub_1D6995D68((v78 > 1), v79 + 1, 1, v68);
  }

  v68[2] = v79 + 1;
  v80 = &v68[5 * v79];
  v80[4] = v76;
  *(v80 + 5) = v176;
  v80[7] = v77;
  v80[8] = v50;
  v175 = v68;
  v171 = a4;
  if (v172 && (sub_1D61881BC() & 1) != 0)
  {
    v81 = v51;
    v82 = swift_unknownObjectRetain();
    v83 = _s5TeaUI15ContextMenuItemC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(v82);
    v84 = v83;
    if (v83)
    {
      v85 = v50;
    }

    else
    {
      v85 = 0;
    }

    if (v83)
    {
      v86 = v77;
    }

    else
    {
      v86 = 0;
    }

    v88 = v68[2];
    v87 = v68[3];
    if (v88 >= v87 >> 1)
    {
      v68 = sub_1D6995D68((v87 > 1), v88 + 1, 1, v68);
    }

    swift_unknownObjectRelease();
    v68[2] = v88 + 1;
    v89 = &v68[5 * v88];
    v89[4] = v84;
    v89[5] = 0;
    v89[6] = 0;
    v89[7] = v86;
    v89[8] = v85;
    v175 = v68;
    v51 = v81;
  }

  v90 = v173;
  v91 = &off_1D7270000;
  if (sub_1D61881BC())
  {
    v92 = v51;
    v93 = _s5TeaUI15ContextMenuItemC8NewsFeedE15searchInArticleACSgyFZ_0();
    if (v93)
    {
      v94 = v77;
    }

    else
    {
      v94 = 0;
    }

    if (v93)
    {
      v95 = v50;
    }

    else
    {
      v95 = 0;
    }

    v97 = v68[2];
    v96 = v68[3];
    if (v97 >= v96 >> 1)
    {
      v158 = v93;
      v68 = sub_1D6995D68((v96 > 1), v97 + 1, 1, v68);
      v93 = v158;
    }

    v68[2] = v97 + 1;
    v98 = &v68[5 * v97];
    v98[4] = v93;
    v98[5] = 0;
    v98[6] = 0;
    v98[7] = v94;
    v98[8] = v95;
    v175 = v68;
    v51 = v92;
    v90 = v173;
    v91 = &off_1D7270000;
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    sub_1D6B48774(0);
    v99 = swift_initStackObject();
    *(v99 + 16) = *(v91 + 193);
    v100 = _s5TeaUI15ContextMenuItemC8NewsFeedE8download5issueACSo7FCIssueC_tFZ_0(v90);
    *(v99 + 56) = v77;
    *(v99 + 64) = v50;
    *(v99 + 32) = v100;
    v101 = _s5TeaUI15ContextMenuItemC8NewsFeedE17removeIssuePrompt5issue7actionsACSgSo7FCIssueCSg_SayAA8CommandsCADE12RemoveIssuesV0J0C6ActionOGtFZ_0(v90, v170);
    if (v101)
    {
      v102 = MEMORY[0x1E69D7890];
      v103 = v77;
    }

    else
    {
      v103 = 0;
      v102 = 0;
      *(v99 + 80) = 0;
      *(v99 + 88) = 0;
    }

    *(v99 + 72) = v101;
    *(v99 + 96) = v103;
    *(v99 + 104) = v102;
    sub_1D6988798(v99);
  }

  v159[1] = sub_1D725D72C();
  sub_1D725D71C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1D6995D68(0, v51[2] + 1, 1, v51);
  }

  v105 = v51[2];
  v104 = v51[3];
  if (v105 >= v104 >> 1)
  {
    v51 = sub_1D6995D68((v104 > 1), v105 + 1, 1, v51);
  }

  v51[2] = v105 + 1;
  v166 = v51;
  v106 = &v51[5 * v105];
  v107 = v176;
  v108 = v177;
  v106[8] = v178;
  *(v106 + 2) = v107;
  *(v106 + 3) = v108;
  v109 = sub_1D61881BC();
  v170 = v77;
  if (v109)
  {
    v110 = [v90 sourceChannel];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v112 = objc_opt_self();
    swift_unknownObjectRetain();
    v113 = [v112 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF3B010 != -1)
    {
      swift_once();
    }

    v114 = qword_1EDF05C18;
    v115 = v172;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    if (v114 != -1)
    {
      swift_once();
    }

    v116 = qword_1EDF05C20;
    (*(v160 + 104))(v162, *MEMORY[0x1E69D7B48], v161);
    *&v176 = v110;
    BYTE8(v176) = 1;
    *&v177 = v115;
    swift_allocObject();
    v117 = v116;
    v118 = sub_1D725D3AC();
    swift_unknownObjectRelease_n();
    v119 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v121 = v119[2];
    v120 = v119[3];
    if (v121 >= v120 >> 1)
    {
      v119 = sub_1D6995D68((v120 > 1), v121 + 1, 1, v119);
    }

    v122 = v173;
    v119[2] = v121 + 1;
    v123 = &v119[5 * v121];
    v123[4] = v118;
    *(v123 + 5) = v176;
    v124 = v170;
    v123[7] = v170;
    v123[8] = v50;
    v77 = v124;
  }

  else
  {
    v125 = [v90 sourceChannel];
    swift_getObjectType();
    type metadata accessor for Localized();
    v126 = swift_getObjCClassFromMetadata();
    v127 = objc_opt_self();
    swift_unknownObjectRetain();
    v128 = [v127 bundleForClass_];
    sub_1D725811C();

    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1D7273AE0;
    v130 = FCTagProviding.localizedTagType.getter();
    v132 = v131;
    *(v129 + 56) = MEMORY[0x1E69E6158];
    *(v129 + 64) = sub_1D5B7E2C0();
    *(v129 + 32) = v130;
    *(v129 + 40) = v132;
    sub_1D72620BC();

    if (qword_1EDF3B010 != -1)
    {
      swift_once();
    }

    v133 = qword_1EDF05C18;
    v134 = v172;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    if (v133 != -1)
    {
      swift_once();
    }

    v135 = qword_1EDF05C20;
    (*(v160 + 104))(v162, *MEMORY[0x1E69D7B48], v161);
    *&v176 = v125;
    BYTE8(v176) = 0;
    *&v177 = v134;
    swift_allocObject();
    v136 = v135;
    v137 = sub_1D725D3AC();
    swift_unknownObjectRelease_n();
    v119 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v139 = v119[2];
    v138 = v119[3];
    if (v139 >= v138 >> 1)
    {
      v119 = sub_1D6995D68((v138 > 1), v139 + 1, 1, v119);
    }

    v122 = v173;
    v119[2] = v139 + 1;
    v140 = &v119[5 * v139];
    v140[4] = v137;
    *(v140 + 5) = v176;
    v140[7] = v77;
    v140[8] = v50;
  }

  v174 = v119;
  sub_1D6B48774(0);
  v141 = swift_initStackObject();
  *(v141 + 16) = xmmword_1D7279970;
  v142 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0([v122 sourceChannel]);
  swift_unknownObjectRelease();
  if (v142)
  {
    v143 = MEMORY[0x1E69D7890];
  }

  else
  {
    v77 = 0;
    v143 = 0;
    *(v141 + 40) = 0;
    *(v141 + 48) = 0;
  }

  *(v141 + 32) = v142;
  *(v141 + 56) = v77;
  *(v141 + 64) = v143;
  v144 = [v122 sourceChannel];
  v145 = qword_1EDF3AB68;
  swift_unknownObjectRetain();
  if (v145 != -1)
  {
    swift_once();
  }

  LOBYTE(v176) = 1;
  *(swift_allocObject() + 16) = v144;
  sub_1D5B65B58();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v176) = 1;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v176 = v144;
  v146 = v170;
  swift_allocObject();
  v147 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  *(v141 + 96) = v146;
  *(v141 + 104) = MEMORY[0x1E69D7890];
  *(v141 + 72) = v147;
  v148 = [v173 sourceChannel];
  v149 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v149 != -1)
  {
    swift_once();
  }

  LOBYTE(v176) = 0;
  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v176) = 0;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v176 = v148;
  swift_allocObject();
  v150 = sub_1D725D3BC();
  swift_unknownObjectRelease_n();
  *(v141 + 136) = v146;
  *(v141 + 144) = MEMORY[0x1E69D7890];
  *(v141 + 112) = v150;
  sub_1D6988798(v141);
  if (sub_1D61881BC())
  {

    return v166;
  }

  else
  {
    sub_1D725D71C();

    v151 = v166;
    v153 = v166[2];
    v152 = v166[3];
    if (v153 >= v152 >> 1)
    {
      v151 = sub_1D6995D68((v152 > 1), v153 + 1, 1, v166);
    }

    v151[2] = v153 + 1;
    v154 = &v151[5 * v153];
    v155 = v176;
    v156 = v177;
    v154[8] = v178;
    *(v154 + 2) = v155;
    *(v154 + 3) = v156;
  }

  return v151;
}

void *sub_1D6B8D88C(void *a1, uint64_t a2, uint64_t a3)
{
  v119 = a3;
  v5 = MEMORY[0x1E69D7C80];
  sub_1D6B97960(0, &unk_1EDF3B550, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v118 = &v109 - v8;
  v9 = MEMORY[0x1E69D7AE0];
  sub_1D6B97960(0, &unk_1EDF3B630, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v117 = &v109 - v12;
  v13 = MEMORY[0x1E69D7AE8];
  sub_1D6B97960(0, &unk_1EDF3B610, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v116 = &v109 - v16;
  sub_1D6B97960(0, &unk_1EC892C00, sub_1D5B8A1B8, &type metadata for IgnoringCommandState, v5);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v115 = &v109 - v19;
  sub_1D6B97960(0, &qword_1EC892C10, sub_1D5B8A1B8, &type metadata for IgnoringCommandState, v9);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v114 = &v109 - v22;
  sub_1D6B97960(0, &unk_1EC89D130, sub_1D5B8A1B8, &type metadata for IgnoringCommandState, v13);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v113 = &v109 - v25;
  sub_1D6B97960(0, &qword_1EDF170A0, sub_1D5B65B58, &type metadata for BlockingCommandState, v5);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v112 = &v109 - v28;
  sub_1D6B97960(0, &qword_1EDF171B0, sub_1D5B65B58, &type metadata for BlockingCommandState, v9);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v111 = &v109 - v31;
  sub_1D6B97960(0, &unk_1EDF17180, sub_1D5B65B58, &type metadata for BlockingCommandState, v13);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v123 = MEMORY[0x1E69E7CC0];
  v34 = objc_opt_self();
  v35 = [v34 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  v37 = MEMORY[0x1E69D7890];
  if (v36 == 5)
  {
    sub_1D6B48774(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v39 = sub_1D725D3DC();
    swift_getObjectType();
    v40 = sub_1D5E40908(a1, a2, v39);
    if (v40)
    {
      v41 = MEMORY[0x1E69D7890];
      v42 = v39;
    }

    else
    {
      v42 = 0;
      v41 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v40;
    *(inited + 56) = v42;
    *(inited + 64) = v41;
    v54 = sub_1D68783D8(a1, a2, v39);
    if (v54)
    {
      v55 = MEMORY[0x1E69D7890];
    }

    else
    {
      v39 = 0;
      v55 = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
    }

    *(inited + 72) = v54;
    *(inited + 96) = v39;
    *(inited + 104) = v55;
    sub_1D6988798(inited);
  }

  else
  {
    v43 = [v34 currentDevice];
    v44 = [v43 userInterfaceIdiom];

    if (v44 == 1)
    {
      v45 = sub_1D725D3DC();
      swift_getObjectType();
      v46 = sub_1D68783D8(a1, a2, v45);
      v47 = v46;
      if (v46)
      {
        v48 = v37;
      }

      else
      {
        v48 = 0;
      }

      if (v46)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0;
      }

      v50 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v52 = v50[2];
      v51 = v50[3];
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1D6995D68((v51 > 1), v52 + 1, 1, v50);
      }

      v50[2] = v52 + 1;
      v53 = &v50[5 * v52];
      v53[4] = v47;
      v53[5] = 0;
      v53[6] = 0;
      v53[7] = v49;
      v53[8] = v48;
      v123 = v50;
    }
  }

  if (sub_1D61881BC())
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D725D72C();
    sub_1D725D71C();

    v56 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1D6995D68((v57 > 1), v58 + 1, 1, v56);
    }

    v56[2] = v58 + 1;
    v59 = &v56[5 * v58];
    *(v59 + 2) = v120;
    *(v59 + 3) = v121;
    v59[8] = v122;
  }

  sub_1D6B48774(0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1D7270C10;
  v61 = sub_1D725D3DC();
  v62 = sub_1D61881BC();
  LOBYTE(v120) = 0;
  ObjectType = swift_getObjectType();
  v64 = sub_1D61ED6EC(a1, v62 & 1, &v120, v61, ObjectType);
  if (v64)
  {
    v65 = MEMORY[0x1E69D7890];
    v66 = v61;
  }

  else
  {
    v66 = 0;
    v65 = 0;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
  }

  *(v60 + 32) = v64;
  *(v60 + 56) = v66;
  *(v60 + 64) = v65;
  v67 = sub_1D611A244(a1, v61);
  *(v60 + 96) = v61;
  *(v60 + 104) = v37;
  *(v60 + 72) = v67;
  if (sub_1D61881BC())
  {
    v68 = [a1 identifier];
    v69 = sub_1D726207C();
    v71 = v70;

    v72 = _s5TeaUI15ContextMenuItemC8NewsFeedE14toggleShortcut3forACSS_tFZ_0(v69, v71);

    v74 = *(v60 + 16);
    v73 = *(v60 + 24);
    if (v74 >= v73 >> 1)
    {
      v60 = sub_1D6995D68((v73 > 1), v74 + 1, 1, v60);
    }

    *(v60 + 16) = v74 + 1;
    v75 = v60 + 40 * v74;
    *(v75 + 32) = v72;
    *(v75 + 40) = v120;
    *(v75 + 56) = v61;
    *(v75 + 64) = v37;
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    v76 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(a1);
    if (v76)
    {
      v77 = v61;
    }

    else
    {
      v77 = 0;
    }

    if (v76)
    {
      v78 = v37;
    }

    else
    {
      v78 = 0;
    }

    v80 = *(v60 + 16);
    v79 = *(v60 + 24);
    if (v80 >= v79 >> 1)
    {
      v110 = v76;
      v60 = sub_1D6995D68((v79 > 1), v80 + 1, 1, v60);
      v76 = v110;
    }

    *(v60 + 16) = v80 + 1;
    v81 = (v60 + 40 * v80);
    v81[4] = v76;
    v81[5] = 0;
    v81[6] = 0;
    v81[7] = v77;
    v81[8] = v78;
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    v82 = qword_1EDF3AB68;
    swift_unknownObjectRetain();
    if (v82 != -1)
    {
      swift_once();
    }

    LOBYTE(v120) = 1;
    *(swift_allocObject() + 16) = a1;
    sub_1D5B65B58();
    swift_unknownObjectRetain();

    sub_1D725DADC();
    LOBYTE(v120) = 1;
    sub_1D725DABC();
    sub_1D725DF0C();
    *&v120 = a1;
    swift_allocObject();
    v83 = sub_1D725D3BC();
    v85 = *(v60 + 16);
    v84 = *(v60 + 24);
    if (v85 >= v84 >> 1)
    {
      v107 = v83;
      v60 = sub_1D6995D68((v84 > 1), v85 + 1, 1, v60);
      v83 = v107;
    }

    *(v60 + 16) = v85 + 1;
    v86 = v60 + 40 * v85;
    *(v86 + 32) = v83;
    *(v86 + 40) = v120;
    *(v86 + 56) = v61;
    *(v86 + 64) = MEMORY[0x1E69D7890];
  }

  if (sub_1D61881BC())
  {
    v87 = qword_1EDF16D48;
    swift_unknownObjectRetain();
    if (v87 != -1)
    {
      swift_once();
    }

    LOBYTE(v120) = 1;
    sub_1D5B8A1B8();
    swift_unknownObjectRetain();

    sub_1D725DADC();
    LOBYTE(v120) = 1;
    sub_1D725DABC();
    sub_1D725DF0C();
    *&v120 = a1;
    swift_allocObject();
    v88 = sub_1D725D3BC();
    swift_unknownObjectRelease();
    v90 = *(v60 + 16);
    v89 = *(v60 + 24);
    if (v90 >= v89 >> 1)
    {
      v60 = sub_1D6995D68((v89 > 1), v90 + 1, 1, v60);
    }

    *(v60 + 16) = v90 + 1;
    v91 = v60 + 40 * v90;
    *(v91 + 32) = v88;
    *(v91 + 40) = v120;
    *(v91 + 56) = v61;
    *(v91 + 64) = MEMORY[0x1E69D7890];
  }

  if (sub_1D61881BC())
  {
    v92 = _s5TeaUI15ContextMenuItemC8NewsFeedE14manageMySportsACyFZ_0();
    v94 = *(v60 + 16);
    v93 = *(v60 + 24);
    if (v94 >= v93 >> 1)
    {
      v108 = v92;
      v60 = sub_1D6995D68((v93 > 1), v94 + 1, 1, v60);
      v92 = v108;
    }

    *(v60 + 16) = v94 + 1;
    v95 = v60 + 40 * v94;
    *(v95 + 32) = v92;
    *(v95 + 40) = v120;
    *(v95 + 56) = v61;
    *(v95 + 64) = MEMORY[0x1E69D7890];
  }

  v96 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v96 != -1)
  {
    swift_once();
  }

  LOBYTE(v120) = 0;
  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v120) = 0;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v120 = a1;
  swift_allocObject();
  v97 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  v99 = *(v60 + 16);
  v98 = *(v60 + 24);
  if (v99 >= v98 >> 1)
  {
    v60 = sub_1D6995D68((v98 > 1), v99 + 1, 1, v60);
  }

  *(v60 + 16) = v99 + 1;
  v100 = v60 + 40 * v99;
  *(v100 + 32) = v97;
  *(v100 + 40) = v120;
  *(v100 + 56) = v61;
  *(v100 + 64) = MEMORY[0x1E69D7890];
  sub_1D725D72C();
  sub_1D725D71C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_1D6995D68(0, v56[2] + 1, 1, v56);
  }

  v102 = v56[2];
  v101 = v56[3];
  if (v102 >= v101 >> 1)
  {
    v56 = sub_1D6995D68((v101 > 1), v102 + 1, 1, v56);
  }

  v56[2] = v102 + 1;
  v103 = &v56[5 * v102];
  v104 = v120;
  v105 = v121;
  v103[8] = v122;
  *(v103 + 2) = v104;
  *(v103 + 3) = v105;
  return v56;
}

void *sub_1D6B8E704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v57 = sub_1D725DC6C();
  v9 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v10);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D61881BC();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = &off_1D7270000;
  if ((v12 & 1) == 0)
  {
    v15 = a2;
    v16 = a5;
    v65 = MEMORY[0x1E69E7CC0];
    v17 = objc_opt_self();
    v18 = [v17 currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 5)
    {
      sub_1D6B48774(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;
      v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
      v22 = v21;
      if (v21)
      {
        v21 = sub_1D725D3DC();
        v23 = MEMORY[0x1E69D7890];
      }

      else
      {
        v23 = 0;
        *(inited + 40) = 0;
        *(inited + 48) = 0;
      }

      *(inited + 32) = v22;
      *(inited + 56) = v21;
      *(inited + 64) = v23;
      v28 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
      v29 = v28;
      a2 = v15;
      if (v28)
      {
        v28 = sub_1D725D3DC();
        v30 = MEMORY[0x1E69D7890];
      }

      else
      {
        v30 = 0;
        *(inited + 80) = 0;
        *(inited + 88) = 0;
      }

      v14 = &off_1D7270000;
      *(inited + 72) = v29;
      *(inited + 96) = v28;
      *(inited + 104) = v30;
      sub_1D6988798(inited);
    }

    else
    {
      v24 = [v17 currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if (v25 == 1)
      {
        v26 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(a1);
        if (v26)
        {
          v27 = sub_1D725D3DC();
          v55 = MEMORY[0x1E69D7890];
        }

        else
        {
          v55 = 0;
          v27 = 0;
        }

        v31 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = sub_1D6995D68((v32 > 1), v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v34 = &v31[5 * v33];
        v34[4] = v26;
        v34[5] = 0;
        v34[6] = 0;
        v34[7] = v27;
        v34[8] = v55;
        v65 = v31;
      }

      a5 = v16;
      a2 = v15;
      v14 = &off_1D7270000;
    }

    sub_1D725D72C();
    sub_1D725D71C();

    v13 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v36 = v13[2];
    v35 = v13[3];
    if (v36 >= v35 >> 1)
    {
      v13 = sub_1D6995D68((v35 > 1), v36 + 1, 1, v13);
    }

    v13[2] = v36 + 1;
    v37 = &v13[5 * v36];
    *(v37 + 2) = v59;
    *(v37 + 3) = v60;
    v37[8] = v61;
  }

  sub_1D6B48774(0);
  v38 = swift_allocObject();
  *(v38 + 16) = *(v14 + 193);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = a3;

  swift_unknownObjectRetain();

  v55 = sub_1D61EC958(a1);
  v40 = a1;
  v41 = a5;
  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDF1BB80;
  (*(v9 + 104))(v56, *MEMORY[0x1E69D7B48], v57);
  *&v59 = v40;
  *(&v59 + 1) = sub_1D6B979CC;
  v60 = v39;
  v61 = v58;
  v62 = v41;
  v64 = 0;
  v63 = 0;
  v43 = sub_1D725D3DC();
  swift_allocObject();
  v44 = v42;
  v45 = sub_1D725D3AC();
  *(v38 + 56) = v43;
  *(v38 + 64) = MEMORY[0x1E69D7890];
  *(v38 + 32) = v45;
  v46 = sub_1D6AC60FC(v40);
  if (v46)
  {
    v47 = MEMORY[0x1E69D7890];
  }

  else
  {
    v43 = 0;
    v47 = 0;
    *(v38 + 80) = 0;
    *(v38 + 88) = 0;
  }

  *(v38 + 72) = v46;
  *(v38 + 96) = v43;
  *(v38 + 104) = v47;
  sub_1D725D72C();
  sub_1D725D71C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D6995D68(0, v13[2] + 1, 1, v13);
  }

  v49 = v13[2];
  v48 = v13[3];
  if (v49 >= v48 >> 1)
  {
    v13 = sub_1D6995D68((v48 > 1), v49 + 1, 1, v13);
  }

  v13[2] = v49 + 1;
  v50 = &v13[5 * v49];
  v51 = v59;
  v52 = v60;
  v50[8] = v61;
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  return v13;
}

void *sub_1D6B8ECF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v253 = a4;
  v258 = a1;
  v245 = sub_1D725D73C();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245, v10);
  v246 = v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B97960(0, &unk_1EDF3B550, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v243[3] = v243 - v14;
  sub_1D6B97960(0, &unk_1EDF3B630, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v243[2] = v243 - v17;
  sub_1D6B97960(0, &unk_1EDF3B610, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v243[1] = v243 - v20;
  v255 = sub_1D725DC6C();
  v21 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255, v22);
  v256 = v243 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D61881BC();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    sub_1D6B48774(0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    v27 = sub_1D61F8764();
    v28 = v27;
    if (v27)
    {
      v27 = sub_1D725D3DC();
      v29 = MEMORY[0x1E69D7890];
    }

    else
    {
      v29 = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
    }

    *(v26 + 32) = v28;
    *(v26 + 56) = v27;
    *(v26 + 64) = v29;
    sub_1D725D72C();
    sub_1D725D71C();

    v25 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = v25[2];
    v30 = v25[3];
    if (v31 >= v30 >> 1)
    {
      v25 = sub_1D6995D68((v30 > 1), v31 + 1, 1, v25);
    }

    v25[2] = v31 + 1;
    v32 = &v25[5 * v31];
    *(v32 + 2) = v260;
    *(v32 + 3) = v261;
    v32[8] = v262;
  }

  v33 = sub_1D61881BC();
  v257 = a6;
  v254 = a5;
  v34 = v25;
  if (v33)
  {
    v35 = v258;
    if ([v258 respondsToSelector_])
    {
      v36 = [v35 parentIssue];
      if (v36)
      {
        v37 = v36;
        sub_1D725D72C();
        sub_1D6B48774(0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1D7273AE0;
        sub_1D62E40B8();
        v40 = v39;
        *(v38 + 56) = sub_1D725D3DC();
        *(v38 + 64) = MEMORY[0x1E69D7890];
        *(v38 + 32) = v40;
        sub_1D725D71C();

        v41 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1D6995D68(0, v34[2] + 1, 1, v34);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_1D6995D68((v42 > 1), v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v34 = v41;
        v44 = &v41[5 * v43];
        v45 = v260;
        v46 = v261;
        v44[8] = v262;
        *(v44 + 2) = v45;
        *(v44 + 3) = v46;
      }
    }
  }

  v268 = MEMORY[0x1E69E7CC0];
  v47 = objc_opt_self();
  v48 = [v47 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if (v49 == 5)
  {
    sub_1D6B48774(0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D7270C10;
    v51 = v258;
    v52 = _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v258);
    v53 = v52;
    if (v52)
    {
      v52 = sub_1D725D3DC();
      v54 = MEMORY[0x1E69D7890];
    }

    else
    {
      v54 = 0;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
    }

    v57 = v34;
    *(v50 + 32) = v53;
    *(v50 + 56) = v52;
    *(v50 + 64) = v54;
    v61 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v51);
    v62 = v61;
    if (v61)
    {
      v61 = sub_1D725D3DC();
      v63 = MEMORY[0x1E69D7890];
    }

    else
    {
      v63 = 0;
      *(v50 + 80) = 0;
      *(v50 + 88) = 0;
    }

    *(v50 + 72) = v62;
    *(v50 + 96) = v61;
    *(v50 + 104) = v63;
    sub_1D6988798(v50);
  }

  else
  {
    v55 = [v47 currentDevice];
    v56 = [v55 userInterfaceIdiom];

    v51 = v258;
    v57 = v34;
    if (v56 == 1)
    {
      v58 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v258);
      if (v58)
      {
        v59 = sub_1D725D3DC();
        v60 = MEMORY[0x1E69D7890];
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }

      v64 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1D6995D68((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v67 = &v64[5 * v66];
      v67[4] = v58;
      v67[5] = 0;
      v67[6] = 0;
      v67[7] = v59;
      v67[8] = v60;
      v268 = v64;
      v51 = v258;
      v57 = v34;
    }
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    sub_1D725D72C();
    sub_1D725D71C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1D6995D68(0, v57[2] + 1, 1, v57);
    }

    v69 = v57[2];
    v68 = v57[3];
    if (v69 >= v68 >> 1)
    {
      v57 = sub_1D6995D68((v68 > 1), v69 + 1, 1, v57);
    }

    v57[2] = v69 + 1;
    v70 = &v57[5 * v69];
    v71 = v260;
    v72 = v261;
    v70[8] = v262;
    *(v70 + 2) = v71;
    *(v70 + 3) = v72;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v267 = MEMORY[0x1E69E7CC0];
  if ((sub_1D61881BC() & 1) == 0)
  {
    _s5TeaUI15ContextMenuItemC8NewsFeedE15openSportsEvent3forACSo19FCHeadlineProviding_p_tFZ_0(v51);
    MEMORY[0x1DA6F9CE0]();
    if (*(v267 + 16) >= *(v267 + 24) >> 1)
    {
      sub_1D726272C();
      v51 = v258;
    }

    sub_1D726278C();
    v73 = v267;
  }

  if (sub_1D61881BC())
  {
    *&v260 = v51;
    *(&v260 + 1) = v253;
    *&v261 = v254;

    swift_unknownObjectRetain();
    _s5TeaUI15ContextMenuItemC8NewsFeedE04readG5Story7contextACSgAD0g4Readi7CommandC0V_tFZ_0(&v260);
    swift_unknownObjectRelease();

    MEMORY[0x1DA6F9CE0](v74);
    if (*(v267 + 16) >= *(v267 + 24) >> 1)
    {
      sub_1D726272C();
      v51 = v258;
    }

    sub_1D726278C();
    v73 = v267;
  }

  v75 = *(v73 + 16);
  v251 = v73;
  if (v75)
  {
    sub_1D725D72C();
    sub_1D5F649CC(v73);
    sub_1D725D71C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1D6995D68(0, v57[2] + 1, 1, v57);
    }

    v77 = v57[2];
    v76 = v57[3];
    if (v77 >= v76 >> 1)
    {
      v57 = sub_1D6995D68((v76 > 1), v77 + 1, 1, v57);
    }

    v57[2] = v77 + 1;
    v78 = &v57[5 * v77];
    v79 = v260;
    v80 = v261;
    v78[8] = v262;
    *(v78 + 2) = v79;
    *(v78 + 3) = v80;
  }

  v266 = MEMORY[0x1E69E7CC0];
  if ((sub_1D61881BC() & 1) == 0)
  {
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    v81 = swift_allocObject();
    *(v81 + 16) = a2;
    *(v81 + 24) = a3;

    swift_unknownObjectRetain();
    v82 = v254;

    sub_1D61EC958(v51);
    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v83 = qword_1EDF1BB80;
    (*(v21 + 104))(v256, *MEMORY[0x1E69D7B48], v255);
    *&v260 = v51;
    *(&v260 + 1) = sub_1D6B979CC;
    v261 = v81;
    v262 = v253;
    v263 = v82;
    v265 = 0;
    v264 = 0;
    v84 = sub_1D725D3DC();
    swift_allocObject();
    v85 = v83;
    v86 = sub_1D725D3AC();
    v87 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v89 = v87[2];
    v88 = v87[3];
    if (v89 >= v88 >> 1)
    {
      v87 = sub_1D6995D68((v88 > 1), v89 + 1, 1, v87);
    }

    v90 = MEMORY[0x1E69D7890];
    v87[2] = v89 + 1;
    v91 = &v87[5 * v89];
    v91[4] = v86;
    *(v91 + 5) = v260;
    v91[7] = v84;
    v91[8] = v90;
    v266 = v87;
    v51 = v258;
  }

  v92 = v57;
  sub_1D6B48774(0);
  v252 = v93;
  v94 = swift_allocObject();
  v250 = xmmword_1D7270C10;
  v94[1] = xmmword_1D7270C10;
  v95 = sub_1D725D3DC();
  static ContextMenuItem.replyToSharer(headline:)(v51, v94 + 2);
  static ContextMenuItem.hideShare(headline:)(v51, (v94 + 72));
  sub_1D6988798(v94);
  v96 = qword_1EDF3ACD0;
  swift_unknownObjectRetain();
  if (v96 != -1)
  {
    swift_once();
  }

  *&v260 = v51;
  swift_unknownObjectRetain();

  sub_1D6E0DE00();
  if (qword_1EDF1BBE8 != -1)
  {
    swift_once();
  }

  v97 = qword_1EDF1BBF0;
  v98 = *(v21 + 104);
  v248 = *MEMORY[0x1E69D7B48];
  v249 = v21 + 104;
  v247 = v98;
  v98(v256);
  v259 = v51;
  swift_allocObject();
  v99 = v97;
  v100 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  v101 = v266;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v101 = sub_1D6995D68(0, v101[2] + 1, 1, v101);
  }

  v102 = MEMORY[0x1E69D7890];
  v104 = v101[2];
  v103 = v101[3];
  if (v104 >= v103 >> 1)
  {
    v101 = sub_1D6995D68((v103 > 1), v104 + 1, 1, v101);
  }

  v101[2] = v104 + 1;
  v105 = &v101[5 * v104];
  v105[4] = v100;
  *(v105 + 5) = v260;
  v105[7] = v95;
  v105[8] = v102;
  if ((sub_1D61881BC() & 1) == 0)
  {
    *&v260 = v258;
    BYTE8(v260) = 0;
    swift_unknownObjectRetain();
    v107 = _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(&v260, 1, v106);
    sub_1D68AF74C(v260, SBYTE8(v260));
    v109 = v101[2];
    v108 = v101[3];
    if (v109 >= v108 >> 1)
    {
      v101 = sub_1D6995D68((v108 > 1), v109 + 1, 1, v101);
    }

    v101[2] = v109 + 1;
    v110 = &v101[5 * v109];
    v110[4] = v107;
    *(v110 + 5) = v260;
    v110[7] = v95;
    v110[8] = v102;
  }

  v111 = sub_1D6AC60FC(v258);
  if (v111)
  {
    v112 = v95;
  }

  else
  {
    v112 = 0;
  }

  if (v111)
  {
    v113 = v102;
  }

  else
  {
    v113 = 0;
  }

  v115 = v101[2];
  v114 = v101[3];
  if (v115 >= v114 >> 1)
  {
    v241 = v111;
    v101 = sub_1D6995D68((v114 > 1), v115 + 1, 1, v101);
    v111 = v241;
    v102 = MEMORY[0x1E69D7890];
  }

  v101[2] = v115 + 1;
  v116 = &v101[5 * v115];
  v116[4] = v111;
  v116[5] = 0;
  v116[6] = 0;
  v116[7] = v112;
  v116[8] = v113;
  v266 = v101;
  v117 = sub_1D61881BC();
  v118 = v258;
  if ((v117 & 1) == 0)
  {
    v119 = swift_allocObject();
    *(v119 + 16) = v250;
    v121 = v253;
    v120 = v254;
    *&v260 = v118;
    *(&v260 + 1) = v253;
    *&v261 = v254;

    swift_unknownObjectRetain();
    v123 = _s5TeaUI15ContextMenuItemC8NewsFeedE4like7contextAcD013LikingCommandC0V_tFZ_0(&v260, v122);
    swift_unknownObjectRelease();

    *(v119 + 56) = v95;
    *(v119 + 64) = v102;
    *(v119 + 32) = v123;
    *&v260 = v118;
    *(&v260 + 1) = v121;
    *&v261 = v120;
    swift_unknownObjectRetain();

    v125 = _s5TeaUI15ContextMenuItemC8NewsFeedE7dislike7contextAcD013LikingCommandC0V_tFZ_0(&v260, v124);
    swift_unknownObjectRelease();

    *(v119 + 96) = v95;
    *(v119 + 104) = v102;
    *(v119 + 72) = v125;
    sub_1D6988798(v119);
  }

  if (sub_1D61881BC())
  {
    v126 = _s5TeaUI15ContextMenuItemC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v118);
    v127 = v126;
    if (v126)
    {
      v128 = v102;
    }

    else
    {
      v128 = 0;
    }

    if (v126)
    {
      v129 = v95;
    }

    else
    {
      v129 = 0;
    }

    v130 = v266;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_1D6995D68(0, v130[2] + 1, 1, v130);
    }

    v132 = v130[2];
    v131 = v130[3];
    if (v132 >= v131 >> 1)
    {
      v130 = sub_1D6995D68((v131 > 1), v132 + 1, 1, v130);
    }

    v130[2] = v132 + 1;
    v133 = &v130[5 * v132];
    v133[4] = v127;
    v133[5] = 0;
    v133[6] = 0;
    v133[7] = v129;
    v133[8] = v128;
    v266 = v130;
    v118 = v258;
  }

  if (sub_1D61881BC())
  {
    v134 = _s5TeaUI15ContextMenuItemC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(v118);
    v135 = v134;
    if (v134)
    {
      v136 = v102;
    }

    else
    {
      v136 = 0;
    }

    if (v134)
    {
      v137 = v95;
    }

    else
    {
      v137 = 0;
    }

    v138 = v266;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_1D6995D68(0, v138[2] + 1, 1, v138);
    }

    v140 = v138[2];
    v139 = v138[3];
    if (v140 >= v139 >> 1)
    {
      v138 = sub_1D6995D68((v139 > 1), v140 + 1, 1, v138);
    }

    v138[2] = v140 + 1;
    v141 = &v138[5 * v140];
    v141[4] = v135;
    v141[5] = 0;
    v141[6] = 0;
    v141[7] = v137;
    v141[8] = v136;
    v266 = v138;
    v118 = v258;
  }

  if (sub_1D61881BC())
  {
    v142 = _s5TeaUI15ContextMenuItemC8NewsFeedE15searchInArticleACSgyFZ_0();
    v143 = v142;
    if (v142)
    {
      v144 = v102;
    }

    else
    {
      v144 = 0;
    }

    if (v142)
    {
      v145 = v95;
    }

    else
    {
      v145 = 0;
    }

    v146 = v266;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1D6995D68(0, v146[2] + 1, 1, v146);
    }

    v148 = v146[2];
    v147 = v146[3];
    if (v148 >= v147 >> 1)
    {
      v146 = sub_1D6995D68((v147 > 1), v148 + 1, 1, v146);
    }

    v146[2] = v148 + 1;
    v149 = &v146[5 * v148];
    v149[4] = v143;
    v149[5] = 0;
    v149[6] = 0;
    v149[7] = v145;
    v149[8] = v144;
    v266 = v146;
    v118 = v258;
  }

  if (sub_1D61881BC())
  {
    v150 = [v118 identifier];
    v151 = sub_1D726207C();
    v153 = v152;

    v154 = _s5TeaUI15ContextMenuItemC8NewsFeedE17removeFromHistory8headlineACSS_tFZ_0(v151, v153);

    v155 = v266;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_1D6995D68(0, v155[2] + 1, 1, v155);
    }

    v157 = v155[2];
    v156 = v155[3];
    if (v157 >= v156 >> 1)
    {
      v155 = sub_1D6995D68((v156 > 1), v157 + 1, 1, v155);
    }

    v155[2] = v157 + 1;
    v158 = &v155[5 * v157];
    v158[4] = v154;
    *(v158 + 5) = v260;
    v158[7] = v95;
    v158[8] = v102;
    v266 = v155;
    v118 = v258;
  }

  if (sub_1D61881BC())
  {
    v159 = sub_1D6721440(v118);
    v160 = v159;
    if (v159)
    {
      v161 = v102;
    }

    else
    {
      v161 = 0;
    }

    if (v159)
    {
      v162 = v95;
    }

    else
    {
      v162 = 0;
    }

    v163 = v266;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v163 = sub_1D6995D68(0, v163[2] + 1, 1, v163);
    }

    v165 = v163[2];
    v164 = v163[3];
    if (v165 >= v164 >> 1)
    {
      v163 = sub_1D6995D68((v164 > 1), v165 + 1, 1, v163);
    }

    v163[2] = v165 + 1;
    v166 = &v163[5 * v165];
    v166[4] = v160;
    v166[5] = 0;
    v166[6] = 0;
    v166[7] = v162;
    v166[8] = v161;
    v266 = v163;
  }

  v167 = sub_1D725D72C();
  sub_1D725D71C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_1D6995D68(0, v92[2] + 1, 1, v92);
  }

  v169 = v92[2];
  v168 = v92[3];
  if (v169 >= v168 >> 1)
  {
    v92 = sub_1D6995D68((v168 > 1), v169 + 1, 1, v92);
  }

  v92[2] = v169 + 1;
  v254 = v92;
  v170 = &v92[5 * v169];
  v171 = v260;
  v172 = v261;
  v170[8] = v262;
  *(v170 + 2) = v171;
  *(v170 + 3) = v172;
  v173 = objc_opt_self();
  v174 = [v173 mainBundle];
  v175 = [v174 bundleIdentifier];

  if (!v175)
  {
    goto LABEL_151;
  }

  v176 = sub_1D726207C();
  v178 = v177;

  if (v176 == 0x6C7070612E6D6F63 && v178 == 0xEE007377656E2E65)
  {

    goto LABEL_144;
  }

  v179 = sub_1D72646CC();

  if ((v179 & 1) == 0)
  {
LABEL_151:

    return v254;
  }

LABEL_144:
  v259 = MEMORY[0x1E69E7CC0];
  v180 = &off_1E84D3000;
  if ((sub_1D61881BC() & 1) == 0)
  {
    v181 = [v258 sourceChannel];
    if (v181)
    {
      v182 = v181;
      swift_getObjectType();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      swift_unknownObjectRetain();
      v184 = [v173 bundleForClass_];
      sub_1D725811C();

      sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v185 = swift_allocObject();
      *(v185 + 16) = xmmword_1D7273AE0;
      v186 = FCTagProviding.localizedTagType.getter();
      v188 = v187;
      *(v185 + 56) = MEMORY[0x1E69E6158];
      *(v185 + 64) = sub_1D5B7E2C0();
      *(v185 + 32) = v186;
      *(v185 + 40) = v188;
      v253 = sub_1D72620BC();

      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v189 = qword_1EDF05C18;
      v190 = v258;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      if (v189 != -1)
      {
        swift_once();
      }

      v191 = qword_1EDF05C20;
      v247(v256, v248, v255);
      *&v260 = v182;
      BYTE8(v260) = 0;
      *&v261 = v190;
      swift_allocObject();
      v192 = v191;
      v193 = sub_1D725D3AC();
      swift_unknownObjectRelease_n();
      v194 = MEMORY[0x1E69D7890];
      v195 = v95;
      v180 = &off_1E84D3000;
    }

    else
    {
      v193 = 0;
      v195 = 0;
      v194 = 0;
    }

    v197 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v199 = v197[2];
    v198 = v197[3];
    if (v199 >= v198 >> 1)
    {
      v197 = sub_1D6995D68((v198 > 1), v199 + 1, 1, v197);
    }

    v197[2] = v199 + 1;
    v200 = &v197[5 * v199];
    v200[4] = v193;
    v200[5] = 0;
    v200[6] = 0;
    v200[7] = v195;
    v200[8] = v194;
    v259 = v197;
  }

  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1D7279970;
  v202 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0([v258 v180[402]]);
  swift_unknownObjectRelease();
  if (v202)
  {
    v203 = MEMORY[0x1E69D7890];
    v204 = v95;
  }

  else
  {
    v204 = 0;
    v203 = 0;
    *(v201 + 40) = 0;
    *(v201 + 48) = 0;
  }

  *(v201 + 32) = v202;
  *(v201 + 56) = v204;
  *(v201 + 64) = v203;
  v205 = _s5TeaUI15ContextMenuItemC8NewsFeedE5block3tagACSgSo14FCTagProviding_pSg_tFZ_0([v258 v180[402]]);
  swift_unknownObjectRelease();
  if (v205)
  {
    v206 = MEMORY[0x1E69D7890];
    v207 = v95;
  }

  else
  {
    v207 = 0;
    v206 = 0;
    *(v201 + 80) = 0;
    *(v201 + 88) = 0;
  }

  *(v201 + 72) = v205;
  *(v201 + 96) = v207;
  *(v201 + 104) = v206;
  v208 = [v258 v180[402]];
  v253 = v167;
  if (v208)
  {
    v209 = v208;
    v210 = qword_1EDF169F8;
    swift_unknownObjectRetain();
    if (v210 != -1)
    {
      swift_once();
    }

    LOBYTE(v260) = 0;
    sub_1D5B8D68C();
    swift_unknownObjectRetain();

    sub_1D725DADC();
    LOBYTE(v260) = 0;
    sub_1D725DABC();
    sub_1D725DF0C();
    *&v260 = v209;
    swift_allocObject();
    v211 = sub_1D725D3BC();
    swift_unknownObjectRelease_n();
    *(v201 + 136) = v95;
    *(v201 + 144) = MEMORY[0x1E69D7890];
    *(v201 + 112) = v211;
    v180 = &off_1E84D3000;
  }

  else
  {
    *(v201 + 144) = 0;
    *(v201 + 112) = 0u;
    *(v201 + 128) = 0u;
  }

  sub_1D6988798(v201);
  if ((sub_1D61881BC() & 1) == 0)
  {
    v216 = sub_1D61881BC();
    v212 = MEMORY[0x1E69D7890];
    if (v216)
    {
      v217 = sub_1D61881BC();

      if ((v217 & 1) == 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
    }

    sub_1D725D71C();

    v196 = v254;
    v219 = v254[2];
    v218 = v254[3];
    if (v219 >= v218 >> 1)
    {
      v196 = sub_1D6995D68((v218 > 1), v219 + 1, 1, v254);
    }

    v196[2] = v219 + 1;
    v220 = &v196[5 * v219];
    v221 = v260;
    v222 = v261;
    v220[8] = v262;
    *(v220 + 2) = v221;
    *(v220 + 3) = v222;
    goto LABEL_181;
  }

  v212 = MEMORY[0x1E69D7890];
LABEL_169:
  v213 = [v258 v180[402]];
  v214 = v253;
  v196 = v254;
  if (v213)
  {
    v215 = [v213 displayName];
    swift_unknownObjectRelease();
    sub_1D726207C();
  }

  (*(v244 + 104))(v246, *MEMORY[0x1E69D79B0], v245);
  swift_allocObject();
  v223 = sub_1D725D70C();
  v225 = v196[2];
  v224 = v196[3];
  if (v225 >= v224 >> 1)
  {
    v242 = v223;
    v196 = sub_1D6995D68((v224 > 1), v225 + 1, 1, v196);
    v223 = v242;
  }

  v196[2] = v225 + 1;
  v226 = &v196[5 * v225];
  v226[4] = v223;
  *(v226 + 5) = v260;
  v227 = MEMORY[0x1E69D79A8];
  v226[7] = v214;
  v226[8] = v227;
LABEL_181:
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D588 != -1)
  {
    swift_once();
  }

  v228 = sub_1D72596EC();

  if (v228)
  {
    v229 = swift_allocObject();
    *(v229 + 16) = xmmword_1D7273AE0;
    v230 = qword_1EDF169B8;
    v231 = v258;
    swift_unknownObjectRetain();
    if (v230 != -1)
    {
      swift_once();
    }

    swift_unknownObjectRetain();

    v232 = sub_1D726203C();
    v233 = [objc_opt_self() systemImageNamed_];

    v247(v256, v248, v255);
    *&v260 = v231;
    swift_allocObject();
    v234 = sub_1D725D3AC();
    swift_unknownObjectRelease();
    *(v229 + 56) = v95;
    *(v229 + 64) = v212;
    *(v229 + 32) = v234;
    sub_1D725D71C();

    v236 = v196[2];
    v235 = v196[3];
    if (v236 >= v235 >> 1)
    {
      v196 = sub_1D6995D68((v235 > 1), v236 + 1, 1, v196);
    }

    v196[2] = v236 + 1;
    v237 = &v196[5 * v236];
    v238 = v260;
    v239 = v261;
    v237[8] = v262;
    *(v237 + 2) = v238;
    *(v237 + 3) = v239;
  }

  return v196;
}

void *sub_1D6B90AA4(uint64_t a1)
{
  v177 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v177, v2);
  v178 = (&v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_1D725D73C();
  v180 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202, v4);
  v203 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1D725DC6C();
  v181 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v6);
  v201 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D7C80];
  sub_1D6B97960(0, &qword_1EDF170A0, sub_1D5B65B58, &type metadata for BlockingCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v200 = &v176 - v11;
  v12 = MEMORY[0x1E69D7AE0];
  sub_1D6B97960(0, &qword_1EDF171B0, sub_1D5B65B58, &type metadata for BlockingCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v199 = &v176 - v15;
  v16 = MEMORY[0x1E69D7AE8];
  sub_1D6B97960(0, &unk_1EDF17180, sub_1D5B65B58, &type metadata for BlockingCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v198 = (&v176 - v19);
  sub_1D6B97960(0, &unk_1EDF17090, sub_1D5B61274, &type metadata for FollowingCommandState, v8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v197 = &v176 - v22;
  sub_1D6B97960(0, &unk_1EDF171A0, sub_1D5B61274, &type metadata for FollowingCommandState, v12);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  *&v196 = &v176 - v25;
  sub_1D6B97960(0, &unk_1EDF17170, sub_1D5B61274, &type metadata for FollowingCommandState, v16);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v195 = &v176 - v28;
  v29 = MEMORY[0x1E69E7CC0];
  v179 = *(a1 + 56);
  if (v179)
  {
    ObjectType = swift_getObjectType();
    if ([swift_unknownObjectRetain() isRouteable])
    {
      v215 = v29;
      v31 = objc_opt_self();
      v32 = [v31 currentDevice];
      v33 = [v32 userInterfaceIdiom];

      if (v33 == 5)
      {
        sub_1D6B48774(0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7270C10;
        v35 = sub_1D725D3DC();
        v36 = swift_unknownObjectRetain();
        v37 = sub_1D5E40908(v36, 8, v35);
        swift_unknownObjectRelease();
        if (v37)
        {
          v38 = MEMORY[0x1E69D7890];
          v39 = v35;
        }

        else
        {
          v39 = 0;
          v38 = 0;
          *(inited + 40) = 0;
          *(inited + 48) = 0;
        }

        *(inited + 32) = v37;
        *(inited + 56) = v39;
        *(inited + 64) = v38;
        v51 = swift_unknownObjectRetain();
        v52 = sub_1D68783D8(v51, 8, v35);
        swift_unknownObjectRelease();
        if (v52)
        {
          v53 = MEMORY[0x1E69D7890];
        }

        else
        {
          v35 = 0;
          v53 = 0;
          *(inited + 80) = 0;
          *(inited + 88) = 0;
        }

        *(inited + 72) = v52;
        *(inited + 96) = v35;
        *(inited + 104) = v53;
        sub_1D6988798(inited);
      }

      else
      {
        v40 = [v31 currentDevice];
        v41 = [v40 userInterfaceIdiom];

        if (v41 == 1)
        {
          v42 = sub_1D725D3DC();
          v43 = swift_unknownObjectRetain();
          v44 = sub_1D68783D8(v43, 8, v42);
          swift_unknownObjectRelease();
          if (v44)
          {
            v45 = v42;
          }

          else
          {
            v45 = 0;
          }

          if (v44)
          {
            v46 = MEMORY[0x1E69D7890];
          }

          else
          {
            v46 = 0;
          }

          v47 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v49 = v47[2];
          v48 = v47[3];
          if (v49 >= v48 >> 1)
          {
            v47 = sub_1D6995D68((v48 > 1), v49 + 1, 1, v47);
          }

          v47[2] = v49 + 1;
          v50 = &v47[5 * v49];
          v50[4] = v44;
          v50[5] = 0;
          v50[6] = 0;
          v50[7] = v45;
          v50[8] = v46;
          v215 = v47;
        }
      }

      if (sub_1D61881BC())
      {

        v29 = MEMORY[0x1E69E7CC0];
        v54 = MEMORY[0x1E69D7890];
      }

      else
      {
        sub_1D725D72C();
        sub_1D725D71C();

        v29 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v56 = v29[2];
        v55 = v29[3];
        v54 = MEMORY[0x1E69D7890];
        if (v56 >= v55 >> 1)
        {
          v29 = sub_1D6995D68((v55 > 1), v56 + 1, 1, v29);
        }

        v29[2] = v56 + 1;
        v57 = &v29[5 * v56];
        *(v57 + 2) = v211;
        *(v57 + 3) = v212;
        v57[8] = v213;
      }

      sub_1D6B48774(0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7270C10;
      v59 = sub_1D725D3DC();
      v60 = _s5TeaUI15ContextMenuItemC8NewsFeedE15openSportsEvent3forAcD0I22ScoreDataVisualizationC_tFZ_0(a1);
      *(v58 + 56) = v59;
      *(v58 + 64) = v54;
      *(v58 + 32) = v60;
      LOBYTE(v211) = 0;
      v61 = swift_unknownObjectRetain();
      v62 = sub_1D61ED6EC(v61, 0, &v211, v59, ObjectType);
      swift_unknownObjectRelease();
      if (v62)
      {
        v63 = MEMORY[0x1E69D7890];
      }

      else
      {
        v59 = 0;
        v63 = 0;
        *(v58 + 80) = 0;
        *(v58 + 88) = 0;
      }

      *(v58 + 72) = v62;
      *(v58 + 96) = v59;
      *(v58 + 104) = v63;
      sub_1D725D72C();
      sub_1D725D71C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D6995D68(0, v29[2] + 1, 1, v29);
      }

      v65 = v29[2];
      v64 = v29[3];
      if (v65 >= v64 >> 1)
      {
        v29 = sub_1D6995D68((v64 > 1), v65 + 1, 1, v29);
      }

      swift_unknownObjectRelease();
      v29[2] = v65 + 1;
      v66 = &v29[5 * v65];
      v67 = v211;
      v68 = v212;
      v66[8] = v213;
      *(v66 + 2) = v67;
      *(v66 + 3) = v68;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v69 = *(a1 + 32);
  if (v69 >> 62)
  {
    goto LABEL_115;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
  v208 = a1;
  if (v70)
  {
    v71 = 0;
    v72 = v69 & 0xC000000000000001;
    v191 = OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata;
    v183 = v69 & 0xFFFFFFFFFFFFFF8;
    v182 = v69 + 32;
    v187 = 0x80000001D73E7830;
    v186 = *MEMORY[0x1E69D7B48];
    v185 = (v181 + 104);
    v190 = *MEMORY[0x1E69D79B0];
    v189 = (v180 + 104);
    v73 = &off_1E84D3000;
    v188 = xmmword_1D7270C10;
    v184 = xmmword_1D7273AE0;
    v194 = v69;
    v193 = v70;
    v192 = v69 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        if (v72)
        {
          v74 = MEMORY[0x1DA6FB460](v71, v69);
          v75 = __OFADD__(v71++, 1);
          if (v75)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v71 >= *(v183 + 16))
          {
            goto LABEL_114;
          }

          v74 = *(v182 + 8 * v71);
          swift_unknownObjectRetain();
          v75 = __OFADD__(v71++, 1);
          if (v75)
          {
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            v70 = sub_1D7263BFC();
            goto LABEL_37;
          }
        }

        v76 = swift_getObjectType();
        if (![v74 v73[450]])
        {
          break;
        }

        swift_unknownObjectRelease();
        if (v71 == v70)
        {
          goto LABEL_89;
        }
      }

      v206 = v76;
      v207 = v71;
      v209 = v29;
      sub_1D6B978C0(0, &qword_1EDF023A0, sub_1D6B97924, MEMORY[0x1E69E6F90]);
      v77 = swift_allocObject();
      *(v77 + 16) = v188;
      v78 = qword_1EDF3AB00;
      swift_unknownObjectRetain_n();
      if (v78 != -1)
      {
        swift_once();
      }

      LOBYTE(v211) = 1;
      v79 = swift_allocObject();
      *(v79 + 16) = v74;
      *(v79 + 24) = 256;
      sub_1D5B61274();
      swift_unknownObjectRetain_n();

      sub_1D725DADC();
      LOBYTE(v211) = 1;
      sub_1D725DABC();
      sub_1D725DF0C();
      *&v211 = v74;
      WORD4(v211) = 256;
      sub_1D725D3DC();
      swift_allocObject();
      v80 = sub_1D725D3BC();
      swift_unknownObjectRelease_n();
      *(v77 + 32) = v80;
      v81 = qword_1EDF3AB68;
      swift_unknownObjectRetain();
      if (v81 != -1)
      {
        swift_once();
      }

      LOBYTE(v211) = 1;
      *(swift_allocObject() + 16) = v74;
      sub_1D5B65B58();
      swift_unknownObjectRetain_n();

      sub_1D725DADC();
      LOBYTE(v211) = 1;
      sub_1D725DABC();
      sub_1D725DF0C();
      *&v211 = v74;
      swift_allocObject();
      v82 = sub_1D725D3BC();
      swift_unknownObjectRelease();
      *(v77 + 40) = v82;
      v215 = v77;
      a1 = v208;
      v83 = *(v208 + v191);
      v71 = v207;
      if (!v83)
      {
        goto LABEL_58;
      }

      v84 = *(v83 + 16);
      if (!v84)
      {
        goto LABEL_58;
      }

      if ([swift_unknownObjectRetain() sportsType] != 3)
      {
        break;
      }

      v85 = [v84 identifier];
      v86 = sub_1D726207C();
      v88 = v87;

      v89 = [v74 identifier];
      v90 = sub_1D726207C();
      v92 = v91;

      if (v86 == v90 && v88 == v92)
      {
        swift_unknownObjectRelease();

LABEL_81:
        a1 = v208;
        goto LABEL_66;
      }

      v122 = sub_1D72646CC();

      if (v122)
      {
        swift_unknownObjectRelease();
        goto LABEL_81;
      }

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v124 = objc_opt_self();
      swift_unknownObjectRetain();
      v125 = [v124 bundleForClass_];
      sub_1D725811C();

      sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v126 = swift_allocObject();
      *(v126 + 16) = v184;
      v127 = FCTagProviding.localizedTagType.getter();
      v129 = v128;
      *(v126 + 56) = MEMORY[0x1E69E6158];
      *(v126 + 64) = sub_1D5B7E2C0();
      *(v126 + 32) = v127;
      *(v126 + 40) = v129;
      sub_1D72620BC();

      a1 = v208;
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v130 = qword_1EDF05C18;
      swift_unknownObjectRetain();

      if (v130 != -1)
      {
        swift_once();
      }

      v131 = qword_1EDF05C20;
      (*v185)(v201, v186, v205);
      *&v211 = v74;
      BYTE8(v211) = 0;
      *&v212 = 0;
      swift_allocObject();
      v132 = v131;
      sub_1D725D3AC();
      v133 = swift_unknownObjectRelease();
      MEMORY[0x1DA6F9CE0](v133);
      if (v215[2] >= v215[3] >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_unknownObjectRelease();
LABEL_65:
      v77 = v215;
LABEL_66:
      v104 = MEMORY[0x1E69E7CC0];
      v105 = [v74 compactDisplayName];
      v106 = sub_1D726207C();
      v108 = v107;

      v109 = *(v77 + 16);
      if (v109)
      {
        v204 = v108;
        v206 = v106;
        v214 = v104;
        sub_1D6999A38(0, v109, 0);
        v110 = v214;
        sub_1D6B97924(0);
        sub_1D5F572B0(0, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
        v111 = 32;
        do
        {
          v210 = *(v77 + v111);

          swift_dynamicCast();
          v214 = v110;
          v113 = *(v110 + 16);
          v112 = *(v110 + 24);
          if (v113 >= v112 >> 1)
          {
            sub_1D6999A38((v112 > 1), v113 + 1, 1);
            v110 = v214;
          }

          *(v110 + 16) = v113 + 1;
          v114 = v110 + 40 * v113;
          v115 = v211;
          v116 = v212;
          *(v114 + 64) = v213;
          *(v114 + 32) = v115;
          *(v114 + 48) = v116;
          v111 += 8;
          --v109;
        }

        while (v109);

        a1 = v208;
      }

      else
      {
      }

      (*v189)(v203, v190, v202);
      v117 = sub_1D725D72C();
      swift_allocObject();
      v118 = sub_1D725D70C();
      v29 = v209;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D6995D68(0, v29[2] + 1, 1, v29);
      }

      v120 = v29[2];
      v119 = v29[3];
      if (v120 >= v119 >> 1)
      {
        v29 = sub_1D6995D68((v119 > 1), v120 + 1, 1, v29);
      }

      swift_unknownObjectRelease();
      v29[2] = v120 + 1;
      v121 = &v29[5 * v120];
      v121[4] = v118;
      *(v121 + 5) = v211;
      v121[7] = v117;
      v121[8] = MEMORY[0x1E69D79A8];
      v69 = v194;
      v70 = v193;
      v72 = v192;
      v73 = &off_1E84D3000;
      if (v71 == v193)
      {
        goto LABEL_89;
      }
    }

    swift_unknownObjectRelease();
LABEL_58:
    type metadata accessor for Localized();
    v93 = swift_getObjCClassFromMetadata();
    v94 = objc_opt_self();
    swift_unknownObjectRetain();
    v95 = [v94 bundleForClass_];
    sub_1D725811C();

    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v96 = swift_allocObject();
    *(v96 + 16) = v184;
    v97 = FCTagProviding.localizedTagType.getter();
    v99 = v98;
    *(v96 + 56) = MEMORY[0x1E69E6158];
    *(v96 + 64) = sub_1D5B7E2C0();
    *(v96 + 32) = v97;
    *(v96 + 40) = v99;
    sub_1D72620BC();

    if (qword_1EDF3B010 != -1)
    {
      swift_once();
    }

    v100 = qword_1EDF05C18;
    swift_unknownObjectRetain();

    if (v100 != -1)
    {
      swift_once();
    }

    v101 = qword_1EDF05C20;
    (*v185)(v201, v186);
    *&v211 = v74;
    BYTE8(v211) = 0;
    *&v212 = 0;
    swift_allocObject();
    v102 = v101;
    sub_1D725D3AC();
    v103 = swift_unknownObjectRelease();
    MEMORY[0x1DA6F9CE0](v103);
    if (v215[2] >= v215[3] >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    goto LABEL_65;
  }

LABEL_89:
  v209 = v29;
  type metadata accessor for Localized();
  v134 = swift_getObjCClassFromMetadata();
  v135 = [objc_opt_self() bundleForClass_];
  v207 = sub_1D725811C();
  v206 = v136;

  v137 = sub_1D726203C();
  v200 = objc_opt_self();
  v204 = [v200 systemImageNamed_];

  sub_1D6B48774(0);
  v197 = v138;
  v139 = swift_allocObject();
  v196 = xmmword_1D7279970;
  *(v139 + 16) = xmmword_1D7279970;
  if (qword_1EDF3AD98 != -1)
  {
    swift_once();
  }

  sub_1D6B16ACC(a1, 1);
  v140 = *MEMORY[0x1E69D7B48];
  v141 = *(v181 + 104);
  v142 = v201;
  v181 += 104;
  v141(v201, v140, v205);
  *&v211 = a1;
  BYTE8(v211) = 1;
  v143 = sub_1D725D3DC();
  swift_allocObject();

  v144 = sub_1D725D3AC();
  *(v139 + 56) = v143;
  *(v139 + 64) = MEMORY[0x1E69D7890];
  *(v139 + 32) = v144;
  if (qword_1EDF3ADE0 != -1)
  {
    swift_once();
  }

  sub_1D6B16ACC(a1, 0);
  v141(v142, v140, v205);
  *&v211 = a1;
  BYTE8(v211) = 0;
  swift_allocObject();

  v145 = sub_1D725D3AC();
  *(v139 + 96) = v143;
  *(v139 + 104) = MEMORY[0x1E69D7890];
  *(v139 + 72) = v145;
  if (qword_1EDF3ADC8 != -1)
  {
    swift_once();
  }

  sub_1D6B16ACC(a1, 2);
  LODWORD(v199) = v140;
  v198 = v141;
  v141(v142, v140, v205);
  *&v211 = a1;
  BYTE8(v211) = 2;
  swift_allocObject();

  v146 = sub_1D725D3AC();
  *(v139 + 136) = v143;
  *(v139 + 144) = MEMORY[0x1E69D7890];
  *(v139 + 112) = v146;
  (*(v180 + 104))(v203, *MEMORY[0x1E69D79B0], v202);
  v147 = sub_1D725D72C();
  swift_allocObject();
  v148 = sub_1D725D70C();
  v149 = v209;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_1D6995D68(0, v149[2] + 1, 1, v149);
  }

  v151 = v149[2];
  v150 = v149[3];
  v152 = v208;
  if (v151 >= v150 >> 1)
  {
    v149 = sub_1D6995D68((v150 > 1), v151 + 1, 1, v149);
  }

  v149[2] = v151 + 1;
  v153 = &v149[5 * v151];
  v153[4] = v148;
  *(v153 + 5) = v211;
  v153[7] = v147;
  v153[8] = MEMORY[0x1E69D79A8];
  if (NFInternalBuild())
  {
    v209 = v149;
    v154 = swift_allocObject();
    *(v154 + 16) = v196;
    v155 = swift_allocObject();
    *(v155 + 16) = v152;
    v156 = qword_1EDF3AB50;

    if (v156 != -1)
    {
      swift_once();
    }

    *v178 = v155;
    swift_storeEnumTagMultiPayload();

    v157 = sub_1D726203C();
    v158 = [v200 systemImageNamed_];

    v198(v201, v199, v205);
    swift_allocObject();
    v159 = sub_1D725D3AC();

    *(v154 + 56) = v143;
    v160 = MEMORY[0x1E69D7890];
    *(v154 + 64) = MEMORY[0x1E69D7890];
    *(v154 + 32) = v159;
    v161 = v179;
    if (v179 && (v161 = [v179 UMCCanonicalID]) != 0)
    {
      v162 = v161;
      v163 = sub_1D726207C();
      v165 = v164;

      v161 = v163;
      v160 = MEMORY[0x1E69D7890];
    }

    else
    {
      v165 = 0;
    }

    v149 = v209;
    v166 = sub_1D6B592F8(v161, v165);

    *(v154 + 96) = v143;
    *(v154 + 104) = v160;
    *(v154 + 72) = v166;
    v167 = swift_allocObject();
    *(v167 + 16) = v152;
    *&v211 = v167;

    v168 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(&v211);

    if (v168)
    {
      v169 = MEMORY[0x1E69D7890];
    }

    else
    {
      v143 = 0;
      v169 = 0;
      *(v154 + 120) = 0;
      *(v154 + 128) = 0;
    }

    *(v154 + 112) = v168;
    *(v154 + 136) = v143;
    *(v154 + 144) = v169;
    sub_1D725D71C();

    v171 = v149[2];
    v170 = v149[3];
    if (v171 >= v170 >> 1)
    {
      v149 = sub_1D6995D68((v170 > 1), v171 + 1, 1, v149);
    }

    v149[2] = v171 + 1;
    v172 = &v149[5 * v171];
    v173 = v211;
    v174 = v212;
    v172[8] = v213;
    *(v172 + 2) = v173;
    *(v172 + 3) = v174;
  }

  return v149;
}

void *sub_1D6B92904(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0x2000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0x2000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void *sub_1D6B92CA0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0x4000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0x4000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void *sub_1D6B9303C(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0x6000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0x6000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void *sub_1D6B933D8(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0x8000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0x8000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void *sub_1D6B93774(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0xA000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0xA000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void *sub_1D6B93B18(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!NFInternalBuild())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6B48774(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v12 | 0xC000000000000000;
  v14 = qword_1EDF3AB50;

  if (v14 != -1)
  {
    swift_once();
  }

  *v10 = v13;
  swift_storeEnumTagMultiPayload();

  v15 = sub_1D726203C();
  v16 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v17 = sub_1D725D3DC();
  swift_allocObject();
  v18 = sub_1D725D3AC();

  v19 = MEMORY[0x1E69D7890];
  *(v11 + 56) = v17;
  *(v11 + 64) = v19;
  *(v11 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *&v30[0] = v20 | 0xC000000000000000;

  v21 = _s5TeaUI15ContextMenuItemC8NewsFeedE19copySportsDatastore13visualizationACSgAD0I17DataVisualizationO_tFZ_0(v30);

  if (v21)
  {
    v22 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v22 = 0;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
  }

  *(v11 + 72) = v21;
  *(v11 + 96) = v17;
  *(v11 + 104) = v22;
  sub_1D725D72C();
  sub_1D725D71C();

  v23 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[5 * v25];
  v27 = v30[1];
  *(v26 + 2) = v30[0];
  *(v26 + 3) = v27;
  v26[8] = v31;
  return v23;
}

void sub_1D6B93EB4(void *a1, uint64_t a2)
{
  v194 = sub_1D725D73C();
  v172 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v4);
  v195 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725DC6C();
  v173 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v193 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D7C80];
  sub_1D6B97960(0, &unk_1EDF17090, sub_1D5B61274, &type metadata for FollowingCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v187 = &v170 - v12;
  v13 = MEMORY[0x1E69D7AE0];
  sub_1D6B97960(0, &unk_1EDF171A0, sub_1D5B61274, &type metadata for FollowingCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v186 = &v170 - v16;
  v17 = MEMORY[0x1E69D7AE8];
  sub_1D6B97960(0, &unk_1EDF17170, sub_1D5B61274, &type metadata for FollowingCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v185 = &v170 - v20;
  sub_1D6B97960(0, &unk_1EDF3B550, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, v9);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = (&v170 - v23);
  sub_1D6B97960(0, &unk_1EDF3B630, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, v13);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v199 = &v170 - v27;
  sub_1D6B97960(0, &unk_1EDF3B610, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, v17);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v198 = &v170 - v30;
  sub_1D6B97960(0, &qword_1EDF170A0, sub_1D5B65B58, &type metadata for BlockingCommandState, v9);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v191 = &v170 - v33;
  sub_1D6B97960(0, &qword_1EDF171B0, sub_1D5B65B58, &type metadata for BlockingCommandState, v13);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v190 = &v170 - v36;
  sub_1D6B97960(0, &unk_1EDF17180, sub_1D5B65B58, &type metadata for BlockingCommandState, v17);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v189 = &v170 - v39;
  v40 = [FCFeedDescriptor.feedTag.getter() asPuzzleType];
  swift_unknownObjectRelease();
  v192 = v6;
  v200 = v24;
  if (v40)
  {
    LOBYTE(v201) = 0;
    v41 = _s5TeaUI15ContextMenuItemC8NewsFeedE5share10puzzleType0hC0ACSgSo08FCPuzzleJ9Providing_p_AD012CommandShareC0OtFZ_0(v40, &v201);
    if (v41)
    {
      v42 = sub_1D725D3DC();
      v43 = MEMORY[0x1E69D7890];
    }

    else
    {
      v43 = 0;
      v42 = 0;
    }

    v44 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = v44[2];
    v45 = v44[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1D6995D68((v45 > 1), v46 + 1, 1, v44);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v201) = 0;
    v41 = _s5TeaUI15ContextMenuItemC8NewsFeedE5share14feedDescriptor0hC0ACSgSo06FCFeedJ0C_AD012CommandShareC0OtFZ_0(a1, &v201);
    if (v41)
    {
      v42 = sub_1D725D3DC();
      v43 = MEMORY[0x1E69D7890];
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v44 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = v44[2];
    v48 = v44[3];
    v47 = v46 + 1;
    if (v46 >= v48 >> 1)
    {
      v44 = sub_1D6995D68((v48 > 1), v46 + 1, 1, v44);
    }
  }

  v44[2] = v47;
  v49 = &v44[5 * v46];
  v49[4] = v41;
  v49[5] = 0;
  v49[6] = 0;
  v49[7] = v42;
  v49[8] = v43;
  v50 = _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink14feedDescriptorACSo06FCFeedK0C_tFZ_0(a1);
  v51 = sub_1D725D3DC();
  v53 = v44[2];
  v52 = v44[3];
  if (v53 >= v52 >> 1)
  {
    v44 = sub_1D6995D68((v52 > 1), v53 + 1, 1, v44);
  }

  v44[2] = v53 + 1;
  v54 = &v44[5 * v53];
  v54[4] = v50;
  *(v54 + 5) = v201;
  v54[7] = v51;
  v55 = MEMORY[0x1E69D7890];
  v54[8] = MEMORY[0x1E69D7890];
  v56 = [FCFeedDescriptor.feedTag.getter() asPuzzleType];
  swift_unknownObjectRelease();
  if (v56)
  {
    swift_getObjectType();
    if (FCPuzzleTypeProviding.puzzleTypeTraits.getter())
    {
      v57 = _s5TeaUI15ContextMenuItemC8NewsFeedE7PuzzlesV21openPuzzleFullArchive10puzzleTypeACSo08FCPuzzleN9Providing_p_tFZ_0(v56);
      v59 = v44[2];
      v58 = v44[3];
      if (v59 >= v58 >> 1)
      {
        v44 = sub_1D6995D68((v58 > 1), v59 + 1, 1, v44);
      }

      swift_unknownObjectRelease();
      v44[2] = v59 + 1;
      v60 = &v44[5 * v59];
      v60[4] = v57;
      *(v60 + 5) = v201;
      v60[7] = v51;
      v60[8] = v55;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    v61 = FCFeedDescriptor.feedTag.getter();
    v62 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v61);
    swift_unknownObjectRelease();
    if (v62)
    {
      v63 = v51;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = v55;
    }

    else
    {
      v64 = 0;
    }

    v66 = v44[2];
    v65 = v44[3];
    if (v66 >= v65 >> 1)
    {
      v44 = sub_1D6995D68((v65 > 1), v66 + 1, 1, v44);
    }

    v44[2] = v66 + 1;
    v67 = &v44[5 * v66];
    v67[4] = v62;
    v67[5] = 0;
    v67[6] = 0;
    v67[7] = v63;
    v67[8] = v64;
    v55 = MEMORY[0x1E69D7890];
  }

  if ((sub_1D61881BC() & 1) == 0)
  {
    v197 = a2;
    v68 = FCFeedDescriptor.feedTag.getter();
    v69 = qword_1EDF3AB68;
    swift_unknownObjectRetain();
    if (v69 != -1)
    {
      swift_once();
    }

    LOBYTE(v201) = 1;
    *(swift_allocObject() + 16) = v68;
    sub_1D5B65B58();
    swift_unknownObjectRetain();

    sub_1D725DADC();
    LOBYTE(v201) = 1;
    sub_1D725DABC();
    sub_1D725DF0C();
    *&v201 = v68;
    swift_allocObject();
    v70 = sub_1D725D3BC();
    swift_unknownObjectRelease();
    v72 = v44[2];
    v71 = v44[3];
    if (v72 >= v71 >> 1)
    {
      v44 = sub_1D6995D68((v71 > 1), v72 + 1, 1, v44);
    }

    v55 = MEMORY[0x1E69D7890];
    v44[2] = v72 + 1;
    v73 = &v44[5 * v72];
    v73[4] = v70;
    *(v73 + 5) = v201;
    v73[7] = v51;
    v73[8] = v55;
  }

  if (sub_1D61881BC())
  {
    v74 = _s5TeaUI15ContextMenuItemC8NewsFeedE14manageMySportsACyFZ_0();
    v76 = v44[2];
    v75 = v44[3];
    if (v76 >= v75 >> 1)
    {
      v169 = v74;
      v44 = sub_1D6995D68((v75 > 1), v76 + 1, 1, v44);
      v74 = v169;
    }

    v44[2] = v76 + 1;
    v77 = &v44[5 * v76];
    v77[4] = v74;
    *(v77 + 5) = v201;
    v77[7] = v51;
    v77[8] = v55;
  }

  v78 = FCFeedDescriptor.feedTag.getter();
  v79 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v79 != -1)
  {
    swift_once();
  }

  LOBYTE(v201) = 0;
  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v201) = 0;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v201 = v78;
  swift_allocObject();
  v80 = sub_1D725D3BC();
  swift_unknownObjectRelease_n();
  v82 = v44[2];
  v81 = v44[3];
  if (v82 >= v81 >> 1)
  {
    v44 = sub_1D6995D68((v81 > 1), v82 + 1, 1, v44);
  }

  v83 = MEMORY[0x1E69D7890];
  v44[2] = v82 + 1;
  v84 = &v44[5 * v82];
  v84[4] = v80;
  *(v84 + 5) = v201;
  v84[7] = v51;
  v84[8] = v83;
  v85 = sub_1D725D72C();
  sub_1D725D71C();

  v86 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v88 = v86[2];
  v87 = v86[3];
  if (v88 >= v87 >> 1)
  {
    v86 = sub_1D6995D68((v87 > 1), v88 + 1, 1, v86);
  }

  v86[2] = v88 + 1;
  v89 = &v86[5 * v88];
  *(v89 + 2) = v201;
  *(v89 + 3) = v202;
  v89[8] = v203;
  v90 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
  swift_unknownObjectRelease();
  if (v90)
  {
    v91 = [v90 eventCompetitorTags];
    v92 = MEMORY[0x1E69D7B48];
    v188 = v85;
    if (v91)
    {
      v93 = v91;
      sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
      v94 = sub_1D726267C();

      if (v94 >> 62)
      {
        v95 = sub_1D7263BFC();
      }

      else
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v171 = v90;
      if (v95)
      {
        if (v95 < 1)
        {
          __break(1u);
          return;
        }

        v96 = 0;
        v97 = v94 & 0xC000000000000001;
        v181 = 0x80000001D73E7830;
        v180 = *MEMORY[0x1E69D7B48];
        v179 = (v173 + 104);
        v178 = *MEMORY[0x1E69D79B0];
        v177 = (v172 + 104);
        v98 = &off_1E84D3000;
        v176 = xmmword_1D7279970;
        v174 = xmmword_1D7273AE0;
        v184 = v94;
        v183 = v95;
        v182 = v94 & 0xC000000000000001;
        v175 = v51;
        do
        {
          if (v97)
          {
            v99 = MEMORY[0x1DA6FB460](v96, v94);
          }

          else
          {
            v99 = *(v94 + 8 * v96 + 32);
            swift_unknownObjectRetain();
          }

          ObjectType = swift_getObjectType();
          if ([v99 v98[450]])
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v196 = ObjectType;
            v199 = v96;
            v200 = v86;
            v101 = [v99 compactDisplayName];
            v102 = sub_1D726207C();
            v197 = v103;
            v198 = v102;

            sub_1D6B48774(0);
            v104 = swift_allocObject();
            *(v104 + 16) = v176;
            v105 = qword_1EDF3AB00;
            swift_unknownObjectRetain_n();
            if (v105 != -1)
            {
              swift_once();
            }

            LOBYTE(v201) = 1;
            v106 = swift_allocObject();
            *(v106 + 16) = v99;
            *(v106 + 24) = 256;
            sub_1D5B61274();
            swift_unknownObjectRetain_n();

            sub_1D725DADC();
            LOBYTE(v201) = 1;
            sub_1D725DABC();
            sub_1D725DF0C();
            *&v201 = v99;
            WORD4(v201) = 256;
            v107 = v175;
            swift_allocObject();
            v108 = sub_1D725D3BC();
            swift_unknownObjectRelease_n();
            *(v104 + 56) = v107;
            v109 = MEMORY[0x1E69D7890];
            *(v104 + 64) = MEMORY[0x1E69D7890];
            *(v104 + 32) = v108;
            v110 = qword_1EDF3AB68;
            swift_unknownObjectRetain_n();
            if (v110 != -1)
            {
              swift_once();
            }

            LOBYTE(v201) = 1;
            *(swift_allocObject() + 16) = v99;
            sub_1D5B65B58();
            swift_unknownObjectRetain();

            sub_1D725DADC();
            LOBYTE(v201) = 1;
            sub_1D725DABC();
            sub_1D725DF0C();
            *&v201 = v99;
            swift_allocObject();
            v111 = sub_1D725D3BC();
            swift_unknownObjectRelease();
            *(v104 + 96) = v107;
            *(v104 + 104) = v109;
            *(v104 + 72) = v111;
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v113 = objc_opt_self();
            swift_unknownObjectRetain();
            v114 = [v113 bundleForClass_];
            sub_1D725811C();

            sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v115 = swift_allocObject();
            *(v115 + 16) = v174;
            v116 = FCTagProviding.localizedTagType.getter();
            v118 = v117;
            *(v115 + 56) = MEMORY[0x1E69E6158];
            *(v115 + 64) = sub_1D5B7E2C0();
            *(v115 + 32) = v116;
            *(v115 + 40) = v118;
            sub_1D72620BC();

            v51 = v107;
            if (qword_1EDF3B010 != -1)
            {
              swift_once();
            }

            v119 = qword_1EDF05C18;
            swift_unknownObjectRetain();

            v120 = v193;
            if (v119 != -1)
            {
              swift_once();
            }

            v121 = qword_1EDF05C20;
            (*v179)(v120, v180, v192);
            *&v201 = v99;
            BYTE8(v201) = 0;
            *&v202 = 0;
            swift_allocObject();
            v122 = v121;
            v123 = sub_1D725D3AC();
            swift_unknownObjectRelease();
            *(v104 + 136) = v107;
            *(v104 + 144) = MEMORY[0x1E69D7890];
            *(v104 + 112) = v123;
            (*v177)(v195, v178, v194);
            v124 = v188;
            swift_allocObject();
            v125 = sub_1D725D70C();
            v86 = v200;
            v127 = v200[2];
            v126 = v200[3];
            if (v127 >= v126 >> 1)
            {
              v86 = sub_1D6995D68((v126 > 1), v127 + 1, 1, v200);
            }

            v96 = v199;
            swift_unknownObjectRelease();
            v86[2] = v127 + 1;
            v128 = &v86[5 * v127];
            v128[4] = v125;
            *(v128 + 5) = v201;
            v128[7] = v124;
            v128[8] = MEMORY[0x1E69D79A8];
            v94 = v184;
            v95 = v183;
            v97 = v182;
            v98 = &off_1E84D3000;
          }

          ++v96;
        }

        while (v95 != v96);
      }

      v90 = v171;
      v92 = MEMORY[0x1E69D7B48];
    }

    v200 = v86;
    type metadata accessor for Localized();
    v129 = swift_getObjCClassFromMetadata();
    v130 = [objc_opt_self() bundleForClass_];
    v131 = sub_1D725811C();
    v196 = v132;
    v197 = v131;

    v133 = sub_1D726203C();
    v191 = [objc_opt_self() systemImageNamed_];

    sub_1D6B48774(0);
    v190 = v134;
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1D7279970;
    v136 = qword_1EDF3AD98;
    swift_unknownObjectRetain();
    if (v136 != -1)
    {
      swift_once();
    }

    sub_1D6B16ACC(v90, 4);
    v137 = *(v173 + 104);
    v138 = v192;
    v139 = v193;
    LODWORD(v199) = *v92;
    v198 = v137;
    (v137)(v193);
    *&v201 = v90;
    BYTE8(v201) = 4;
    swift_allocObject();
    v140 = sub_1D725D3AC();
    *(v135 + 56) = v51;
    *(v135 + 64) = MEMORY[0x1E69D7890];
    *(v135 + 32) = v140;
    v141 = qword_1EDF3ADE0;
    swift_unknownObjectRetain();
    if (v141 != -1)
    {
      swift_once();
    }

    sub_1D6B16ACC(v90, 3);
    (v198)(v139, v199, v138);
    *&v201 = v90;
    BYTE8(v201) = 3;
    swift_allocObject();
    v142 = sub_1D725D3AC();
    *(v135 + 96) = v51;
    *(v135 + 104) = MEMORY[0x1E69D7890];
    *(v135 + 72) = v142;
    v143 = qword_1EDF3ADC8;
    swift_unknownObjectRetain();
    if (v143 != -1)
    {
      swift_once();
    }

    sub_1D6B16ACC(v90, 5);
    (v198)(v139, v199, v138);
    *&v201 = v90;
    BYTE8(v201) = 5;
    swift_allocObject();
    v144 = sub_1D725D3AC();
    *(v135 + 136) = v51;
    v145 = MEMORY[0x1E69D7890];
    *(v135 + 144) = MEMORY[0x1E69D7890];
    *(v135 + 112) = v144;
    (*(v172 + 104))(v195, *MEMORY[0x1E69D79B0], v194);
    v146 = v188;
    swift_allocObject();
    v147 = sub_1D725D70C();
    v148 = v200;
    v150 = v200[2];
    v149 = v200[3];
    v151 = v90;
    if (v150 >= v149 >> 1)
    {
      v168 = v147;
      v148 = sub_1D6995D68((v149 > 1), v150 + 1, 1, v200);
      v147 = v168;
      v146 = v188;
    }

    v148[2] = v150 + 1;
    v152 = &v148[5 * v150];
    v152[4] = v147;
    *(v152 + 5) = v201;
    v152[7] = v146;
    v152[8] = MEMORY[0x1E69D79A8];
    if (NFInternalBuild())
    {
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_1D7270C10;
      v154 = _s5TeaUI15ContextMenuItemC8NewsFeedE11sportsEventAeCSgSo08FCSportsI9Providing_p_tFZ_0(v151);
      if (v154)
      {
        v155 = MEMORY[0x1E69D7890];
        v156 = v51;
      }

      else
      {
        v156 = 0;
        v155 = 0;
        *(v153 + 40) = 0;
        *(v153 + 48) = 0;
      }

      *(v153 + 32) = v154;
      *(v153 + 56) = v156;
      *(v153 + 64) = v155;
      v157 = [v151 UMCCanonicalID];
      if (v157)
      {
        v158 = v157;
        v159 = sub_1D726207C();
        v161 = v160;
      }

      else
      {
        v159 = 0;
        v161 = 0;
      }

      v162 = sub_1D6B592F8(v159, v161);

      *(v153 + 96) = v51;
      *(v153 + 104) = v145;
      *(v153 + 72) = v162;
      sub_1D725D71C();

      v164 = v148[2];
      v163 = v148[3];
      if (v164 >= v163 >> 1)
      {
        v148 = sub_1D6995D68((v163 > 1), v164 + 1, 1, v148);
      }

      swift_unknownObjectRelease();
      v148[2] = v164 + 1;
      v165 = &v148[5 * v164];
      v166 = v201;
      v167 = v202;
      v165[8] = v203;
      *(v165 + 2) = v166;
      *(v165 + 3) = v167;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1D6B958D4(void *a1, __int128 *a2)
{
  v4 = sub_1D725DC6C();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  v49 = *a2;
  v50 = v8;
  v51[0] = a2[2];
  *(v51 + 10) = *(a2 + 42);
  v48 = 0;
  v9 = _s5TeaUI15ContextMenuItemC8NewsFeedE5share6puzzle0H4Data0hC0ACSgSo17FCPuzzleProviding_p_AD011PuzzleShareJ0VSgAD07CommandnC0OtFZ_0(a1, &v49, &v48);
  if (v9)
  {
    v10 = sub_1D725D3DC();
    v11 = MEMORY[0x1E69D7890];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1D6995D68((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[5 * v14];
  v15[4] = v9;
  v15[5] = 0;
  v15[6] = 0;
  v15[7] = v10;
  v15[8] = v11;
  v16 = _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6puzzleACSo17FCPuzzleProviding_p_tFZ_0(a1);
  v17 = sub_1D725D3DC();
  v19 = v12[2];
  v18 = v12[3];
  if (v19 >= v18 >> 1)
  {
    v12 = sub_1D6995D68((v18 > 1), v19 + 1, 1, v12);
  }

  v12[2] = v19 + 1;
  v20 = &v12[5 * v19];
  v20[4] = v16;
  *(v20 + 5) = v49;
  v20[7] = v17;
  v21 = MEMORY[0x1E69D7890];
  v20[8] = MEMORY[0x1E69D7890];
  if ((sub_1D61881BC() & 1) == 0)
  {
    v22 = _s5TeaUI15ContextMenuItemC8NewsFeedE7PuzzlesV04moreH06puzzleACSgSo17FCPuzzleProviding_p_tFZ_0(a1);
    if (v22)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v21 = 0;
    }

    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      v44 = v22;
      v12 = sub_1D6995D68((v24 > 1), v25 + 1, 1, v12);
      v22 = v44;
    }

    v12[2] = v25 + 1;
    v26 = &v12[5 * v25];
    v26[4] = v22;
    v26[5] = 0;
    v26[6] = 0;
    v26[7] = v23;
    v26[8] = v21;
  }

  if (NFInternalBuild())
  {
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EDF182D8 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    if (v49 == 1)
    {
      v45[2] = sub_1D725D72C();
      sub_1D6B48774(0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7270C10;
      if (qword_1EDF3AD00 != -1)
      {
        swift_once();
      }

      v46 = v4;
      v45[1] = "with a sports score";
      v28 = qword_1EC87DB18;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = qword_1EC895190;
      v30 = *MEMORY[0x1E69D7B48];
      v31 = *(v47 + 104);
      v47 += 104;
      v31(v7, v30, v46);
      *&v49 = a1;
      swift_allocObject();
      v32 = v29;
      swift_unknownObjectRetain();
      v33 = sub_1D725D3AC();
      *(v27 + 56) = v17;
      *(v27 + 64) = MEMORY[0x1E69D7890];
      *(v27 + 32) = v33;
      if (qword_1EDF3ACE8 != -1)
      {
        swift_once();
      }

      v34 = qword_1EC87DB20;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_1EC895198;
      v31(v7, v30, v46);
      *&v49 = a1;
      swift_allocObject();
      swift_unknownObjectRetain();
      v36 = v35;
      v37 = sub_1D725D3AC();
      *(v27 + 96) = v17;
      *(v27 + 104) = MEMORY[0x1E69D7890];
      *(v27 + 72) = v37;
      sub_1D725D71C();

      v39 = v12[2];
      v38 = v12[3];
      if (v39 >= v38 >> 1)
      {
        v12 = sub_1D6995D68((v38 > 1), v39 + 1, 1, v12);
      }

      v12[2] = v39 + 1;
      v40 = &v12[5 * v39];
      v41 = v49;
      v42 = v50;
      v40[8] = *&v51[0];
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
    }
  }

  return v12;
}

uint64_t sub_1D6B95E64(void *a1)
{
  sub_1D6B48774(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7270C10;
  v3 = sub_1D725D3DC();
  ObjectType = swift_getObjectType();
  v5 = sub_1D61881BC();
  v12 = 0;
  v6 = sub_1D61ED6EC(a1, v5 & 1, &v12, v3, ObjectType);
  v7 = MEMORY[0x1E69D7890];
  if (v6)
  {
    v8 = MEMORY[0x1E69D7890];
    v9 = v3;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
  }

  *(v2 + 32) = v6;
  *(v2 + 56) = v9;
  *(v2 + 64) = v8;
  v10 = sub_1D611A244(a1, v3);
  *(v2 + 96) = v3;
  *(v2 + 104) = v7;
  *(v2 + 72) = v10;
  return v2;
}

void *sub_1D6B95F50(void *a1, uint64_t a2)
{
  v4 = sub_1D725D73C();
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v124 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D7C80];
  sub_1D6B97960(0, &unk_1EDF3B550, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v136 = &v120 - v10;
  v11 = MEMORY[0x1E69D7AE0];
  sub_1D6B97960(0, &unk_1EDF3B630, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1E69D7AE8];
  sub_1D6B97960(0, &unk_1EDF3B610, sub_1D5B8D68C, &type metadata for ManageChannelNotificationsCommandState, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v134 = &v120 - v18;
  sub_1D6B97960(0, &qword_1EDF170A0, sub_1D5B65B58, &type metadata for BlockingCommandState, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v132 = &v120 - v21;
  sub_1D6B97960(0, &qword_1EDF171B0, sub_1D5B65B58, &type metadata for BlockingCommandState, v11);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v131 = &v120 - v24;
  sub_1D6B97960(0, &unk_1EDF17180, sub_1D5B65B58, &type metadata for BlockingCommandState, v15);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v130 = &v120 - v27;
  v28 = sub_1D725DC6C();
  v120 = *(v28 - 8);
  v121 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v125 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 != 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v33 = sub_1D6878914(a1);
  if (v33)
  {
    v34 = sub_1D725D3DC();
    inited = MEMORY[0x1E69D7890];
  }

  else
  {
    v34 = 0;
    inited = 0;
  }

  v36 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v38 = v36[2];
  v37 = v36[3];
  v39 = (v38 + 1);
  if (v38 >= v37 >> 1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v36[2] = v39;
    v40 = &v36[5 * v38];
    v40[4] = v33;
    v40[5] = 0;
    v40[6] = 0;
    v40[7] = v34;
    v40[8] = inited;
LABEL_8:
    v41 = sub_1D61881BC();
    v38 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    if ((v41 & 1) == 0)
    {
      sub_1D725D72C();
      sub_1D725D71C();
      v42 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1D6995D68((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v45 = &v42[5 * v44];
      *(v45 + 2) = v141;
      *(v45 + 3) = v142;
      v45[8] = v143;
    }

    v46 = v42;
    v140 = v38;
    sub_1D6B48774(0);
    v137 = v47;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7274590;
    LOBYTE(v141) = 0;
    v48 = _s5TeaUI15ContextMenuItemC8NewsFeedE5share6recipe0hC0ACSgSo8FCRecipeC_AD012CommandShareC0OtFZ_0(a1, &v141);
    v49 = v48;
    v133 = v36;
    if (v48)
    {
      v48 = sub_1D725D3DC();
      v50 = MEMORY[0x1E69D7890];
    }

    else
    {
      v50 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v49;
    *(inited + 56) = v48;
    *(inited + 64) = v50;
    v39 = [a1 articles];
    v34 = sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v33 = sub_1D726267C();

    if (v33 >> 62)
    {
      break;
    }

    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_17:
    if ((v33 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x1DA6FB460](0, v33);
      goto LABEL_20;
    }

    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      v51 = *(v33 + 32);
      swift_unknownObjectRetain();
LABEL_20:

      goto LABEL_23;
    }

    __break(1u);
LABEL_39:
    v36 = sub_1D6995D68((v37 > 1), v39, 1, v36);
  }

  if (sub_1D7263BFC())
  {
    goto LABEL_17;
  }

LABEL_22:

  v51 = 0;
LABEL_23:
  v52 = _s5TeaUI15ContextMenuItemC8NewsFeedE9readStory8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(v51);
  swift_unknownObjectRelease();
  v53 = 0;
  if (v52)
  {
    v53 = sub_1D725D3DC();
    v54 = MEMORY[0x1E69D7890];
  }

  else
  {
    v54 = 0;
    *(inited + 80) = 0;
    *(inited + 88) = 0;
  }

  *(inited + 72) = v52;
  *(inited + 96) = v53;
  *(inited + 104) = v54;
  *&v141 = a1;
  BYTE8(v141) = 1;
  v55 = a1;
  v57 = _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(&v141, 1, v56);
  sub_1D68AF74C(v141, SBYTE8(v141));
  v58 = sub_1D725D3DC();
  *(inited + 136) = v58;
  v59 = MEMORY[0x1E69D7890];
  *(inited + 144) = MEMORY[0x1E69D7890];
  *(inited + 112) = v57;
  v60 = _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6recipeACSo8FCRecipeC_tFZ_0(v55);
  v138 = v58;
  *(inited + 176) = v58;
  *(inited + 184) = v59;
  *(inited + 152) = v60;
  sub_1D6988798(inited);
  v61 = sub_1D725D72C();
  v126 = v140;
  v127 = v61;
  sub_1D725D71C();
  v62 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v62 = sub_1D6995D68(0, v46[2] + 1, 1, v46);
  }

  v64 = v62[2];
  v63 = v62[3];
  if (v64 >= v63 >> 1)
  {
    v62 = sub_1D6995D68((v63 > 1), v64 + 1, 1, v62);
  }

  v62[2] = v64 + 1;
  v65 = &v62[5 * v64];
  v66 = v141;
  v67 = v142;
  v65[8] = v143;
  *(v65 + 2) = v66;
  *(v65 + 3) = v67;
  v139 = v38;
  v68 = sub_1D61881BC();
  v128 = v62;
  v129 = a2;
  if (v68)
  {
    goto LABEL_49;
  }

  v69 = [v55 sourceChannel];
  v70 = [v55 articles];
  v71 = sub_1D726267C();

  if (v71 >> 62)
  {
    result = sub_1D7263BFC();
    if (!result)
    {
      goto LABEL_41;
    }

LABEL_33:
    if ((v71 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1DA6FB460](0, v71);
    }

    else
    {
      if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v73 = *(v71 + 32);
      swift_unknownObjectRetain();
    }

    goto LABEL_42;
  }

  result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_33;
  }

LABEL_41:

  v73 = 0;
LABEL_42:
  swift_getObjectType();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  swift_unknownObjectRetain();
  v76 = [v75 bundleForClass_];
  sub_1D725811C();

  sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D7273AE0;
  v78 = FCTagProviding.localizedTagType.getter();
  v80 = v79;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = sub_1D5B7E2C0();
  *(v77 + 32) = v78;
  *(v77 + 40) = v80;
  sub_1D72620BC();

  if (qword_1EDF3B010 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDF05C18;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  if (v81 != -1)
  {
    swift_once();
  }

  v82 = qword_1EDF05C20;
  (*(v120 + 104))(v125, *MEMORY[0x1E69D7B48], v121);
  *&v141 = v69;
  BYTE8(v141) = 0;
  *&v142 = v73;
  swift_allocObject();
  v83 = v82;
  v84 = sub_1D725D3AC();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  v85 = sub_1D6995D68(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v87 = v85[2];
  v86 = v85[3];
  if (v87 >= v86 >> 1)
  {
    v85 = sub_1D6995D68((v86 > 1), v87 + 1, 1, v85);
  }

  v88 = MEMORY[0x1E69D7890];
  v85[2] = v87 + 1;
  v89 = &v85[5 * v87];
  v89[4] = v84;
  *(v89 + 5) = v141;
  v89[7] = v138;
  v89[8] = v88;
  v139 = v85;
LABEL_49:
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_1D7279970;
  v91 = _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0([v55 sourceChannel]);
  swift_unknownObjectRelease();
  if (v91)
  {
    v92 = MEMORY[0x1E69D7890];
    v93 = v138;
  }

  else
  {
    v93 = 0;
    v92 = 0;
    *(v90 + 40) = 0;
    *(v90 + 48) = 0;
  }

  *(v90 + 32) = v91;
  *(v90 + 56) = v93;
  *(v90 + 64) = v92;
  v94 = [v55 sourceChannel];
  v95 = qword_1EDF3AB68;
  swift_unknownObjectRetain();
  v125 = v55;
  v137 = v90;
  if (v95 != -1)
  {
    swift_once();
  }

  LOBYTE(v141) = 1;
  *(swift_allocObject() + 16) = v94;
  sub_1D5B65B58();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v141) = 1;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v141 = v94;
  v96 = v138;
  swift_allocObject();
  v97 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  v98 = v137;
  *(v137 + 96) = v96;
  *(v98 + 104) = MEMORY[0x1E69D7890];
  *(v98 + 72) = v97;
  v99 = v125;
  v100 = [v125 sourceChannel];
  v101 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v101 != -1)
  {
    swift_once();
  }

  LOBYTE(v141) = 0;
  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  LOBYTE(v141) = 0;
  sub_1D725DABC();
  sub_1D725DF0C();
  *&v141 = v100;
  swift_allocObject();
  v102 = sub_1D725D3BC();
  swift_unknownObjectRelease_n();
  v103 = v137;
  *(v137 + 136) = v96;
  *(v103 + 144) = MEMORY[0x1E69D7890];
  *(v103 + 112) = v102;
  sub_1D6988798(v103);
  if (sub_1D61881BC())
  {

    v105 = v127;
    v104 = v128;
    goto LABEL_58;
  }

  v112 = sub_1D61881BC();
  v105 = v127;
  v104 = v128;
  if ((v112 & 1) == 0)
  {

    goto LABEL_65;
  }

  v113 = sub_1D61881BC();

  if (v113)
  {
LABEL_65:
    sub_1D725D71C();

    v115 = v104[2];
    v114 = v104[3];
    if (v115 >= v114 >> 1)
    {
      v104 = sub_1D6995D68((v114 > 1), v115 + 1, 1, v104);
    }

    v104[2] = v115 + 1;
    v116 = &v104[5 * v115];
    v117 = v141;
    v118 = v142;
    v116[8] = v143;
    *(v116 + 2) = v117;
    *(v116 + 3) = v118;
  }

  else
  {
LABEL_58:
    v106 = [objc_msgSend(v99 sourceChannel)];
    swift_unknownObjectRelease();
    sub_1D726207C();

    (*(v122 + 104))(v124, *MEMORY[0x1E69D79B0], v123);
    swift_allocObject();
    v107 = sub_1D725D70C();
    v109 = v104[2];
    v108 = v104[3];
    if (v109 >= v108 >> 1)
    {
      v119 = v107;
      v104 = sub_1D6995D68((v108 > 1), v109 + 1, 1, v104);
      v107 = v119;
    }

    v104[2] = v109 + 1;
    v110 = &v104[5 * v109];
    v110[4] = v107;
    *(v110 + 5) = v141;
    v111 = MEMORY[0x1E69D79A8];
    v110[7] = v105;
    v110[8] = v111;
  }

  return v104;
}