uint64_t sub_21B2FEB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, void (*a10)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a11)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a8(&v82, a1, a2, a5, a6, a7);
  v14 = v82;
  v65 = v83;
  v70 = a6;
  v66 = *(a5 + 16);
  if (v66)
  {
    sub_21B233A74(a5 + 32, &v82);
    v15 = *(&v83 + 1);
    v16 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v17 = *(v16 + 8);
    v18 = *(v17 + 48);

    v19 = v18(v15, v17);
    sub_21B233960(&v82);
    if (v19 < 0)
    {
      goto LABEL_45;
    }

    if (v19)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v20 = 2;
  sub_21B2A6400();
  v19 = 0;
  if (v23)
  {
    v21 = 0;
  }

  else
  {
    v21 = v22;
  }

LABEL_9:
  sub_21B2A6400();
  *&v85 = a5;
  *(&v85 + 1) = v70;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v86 = a7;
  v87 = 0;
  v88 = v19;
  v89 = v20;
  *v90 = v79[0];
  *&v90[3] = *(v79 + 3);
  v91 = v21;
  v92 = v26;

  v27 = sub_21B2640C4(&v85);
  sub_21B261664(&v85, &qword_27CD7E510, &unk_21B351F10);
  *&v82 = v27;
  sub_21B308084(&v82, v14, *(&v14 + 1), v65, a3, a4, a10, a11);

  if (v73)
  {

    swift_bridgeObjectRelease_n();
  }

  v29 = v82;
  v30 = MEMORY[0x277D84F90];
  v63 = v82;
  if (v66)
  {
    v93 = MEMORY[0x277D84F90];
    sub_21B254088(0, v66, 0);
    v30 = v93;
    v31 = a5 + 32;
    v32 = v66;
    do
    {
      sub_21B233A74(v31, v79);
      v34 = v80;
      v33 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      (*(*(v33 + 8) + 88))(&v75, v34);
      v35 = v77;
      v36 = v78;
      __swift_project_boxed_opaque_existential_1(&v75, v77);
      v38 = v80;
      v37 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v39 = (*(*(v37 + 8) + 48))(v38);
      (*(v36 + 32))(&v82, v39, v35, v36);
      sub_21B233960(v79);
      __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      v93 = v30;
      v41 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21B254088((v40 > 1), v41 + 1, 1);
        v30 = v93;
      }

      *(v30 + 16) = v41 + 1;
      v42 = v30 + 40 * v41;
      v43 = v82;
      v44 = v83;
      *(v42 + 64) = v84;
      *(v42 + 32) = v43;
      *(v42 + 48) = v44;
      v31 += 40;
      --v32;
    }

    while (v32);
    v29 = v63;
  }

  sub_21B23BEF8(v30, &v75);
  v68 = *(v29 + 16);
  if (!v68)
  {

    v15 = v75;
LABEL_41:
    *a9 = v15;
    *(a9 + 8) = v76;
    return result;
  }

  v45 = 0;
  v67 = v29 + 32;
  v46 = v66;
  while (1)
  {
    v72 = v45;
    v74 = *(v67 + 8 * v45);
    if (v46)
    {
      sub_21B233A74(a5 + 32, &v82);
      v47 = *(&v83 + 1);
      v48 = v84;
      __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      v49 = *(v48 + 8);
      v50 = *(v49 + 48);

      v15 = v50(v47, v49);
      sub_21B233960(&v82);
      if (v15 < 0)
      {
        goto LABEL_43;
      }

      if (v15)
      {
        v51 = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v15 = 0;
    v51 = 2;
LABEL_30:
    sub_21B23A9F4(0, v15, v51);
    v52 = *(a5 + 16);
    v15 = v75;
    if (v52 != *(v75 + 2))
    {
      goto LABEL_46;
    }

    if (v52)
    {
      break;
    }

LABEL_23:
    v45 = v72 + 1;
    if (v72 + 1 == v68)
    {

      goto LABEL_41;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_21B23A2F4(v15);
  }

  if (v52 <= *(a5 + 16))
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      sub_21B233A74(a5 + v53 + 32, &v82);
      if (v54 >= *(v15 + 16))
      {
        break;
      }

      ++v54;
      v55 = *(&v83 + 1);
      v56 = v84;
      v57 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      v80 = v55;
      v81 = *(v56 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
      (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v57, v55);
      v59 = *(v15 + v53 + 56);
      v60 = *(v15 + v53 + 64);
      __swift_mutable_project_boxed_opaque_existential_1(v15 + v53 + 32, v59);
      (*(v60 + 56))(v74, v79, v59, v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      sub_21B233960(&v82);
      v75 = v15;
      v53 += 40;
      if (v52 == v54)
      {

        v46 = v66;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
  v79[0] = *(a5 + 16);
  v61 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v61);

  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
  v79[0] = *(v15 + 16);
  v62 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v62);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2FF264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *))
{
  if (a1 < 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_13:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_13;
  }

  v12 = sub_21B2B18C4(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_13;
  }

  v13 = *(v10 + 8);
  if (v13 <= a2)
  {
    goto LABEL_13;
  }

  v14 = v12;
  v15 = sub_21B2B18C4(a2, *(a5 + 16), v13);
  if (v14 == 2)
  {
    v16 = 0;
  }

  else if (v15 == 2)
  {
    v16 = 1;
  }

  else
  {
    v19 = v14 & 1;
    v18 = v15 & 1;
    v16 = a6(&v19, &v18);
  }

  return v16 & 1;
}

uint64_t sub_21B2FF3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t *))
{
  if (a1 < 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_11:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_11;
  }

  v12 = sub_21B2B1790(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_11;
  }

  v14 = *(v10 + 8);
  if (v14 <= a2)
  {
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  v18 = sub_21B2B1790(a2, *(a5 + 16), v14);
  v19 = v16 ^ 1;
  if ((v16 & 1) == 0 && (v17 & 1) == 0)
  {
    v21 = v18;
    v22 = v15;
    v19 = a6(&v22, &v21);
  }

  return v19 & 1;
}

uint64_t sub_21B2FF4EC()
{
  v1 = *(v0 + 2);
  v9 = *v0;
  v10 = v1;
  sub_21B2FF59C(v7);
  v2 = v7[3];
  v3 = v7[4];
  v4 = v8;
  v5 = DataFrame.Slice.columns.getter();

  sub_21B23A9F4(v2, v3, v4);
  return v5;
}

double sub_21B2FF59C@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v7 = &v14 - v6;
  v16 = *v2;
  sub_21B34B054();
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v15 = vdupq_n_s64(MEMORY[0x277D84F90]);
    v8 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v9 = 0uLL;
    v10 = 2;
  }

  else
  {
    sub_21B34B094();
    v11 = &v7[*(TupleTypeMetadata2 + 48)];
    v12 = *v11;
    v8 = *(v11 + 2);
    v14 = *(v11 + 24);
    v15 = v12;
    v10 = v11[40];
    (*(*(v4 - 8) + 8))(v7, v4);
    v9 = v14;
  }

  result = *v15.i64;
  *a2 = v15;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_21B2FF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>, uint64_t a6@<X3>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v13 = sub_21B2FF7B0(a1, a2, a3, a6, a4, a7, a8);
  result = (*(*(a4 - 8) + 8))(a1, a4);
  *a5 = v13;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_21B2FF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v52 = 0;
  (*(a7 + 24))(v69, a5, a7);
  v66 = v69[0];
  v67 = v69[1];
  v68 = v69[2];
  DataFrame.subscript.getter(a2, a3, &v57);

  v13 = *(a7 + 32);
  v53 = a1;
  v54 = a5;
  v13(&v62, a5, a7);
  v14 = v64;
  v15 = v65;
  sub_21B254074(v64, *(&v64 + 1), v65);

  sub_21B23A9F4(v14, *(&v14 + 1), v15);
  v16 = v59;
  __swift_project_boxed_opaque_existential_1(&v57, v59);
  (*(*(*(&v16 + 1) + 8) + 160))(v70, v14, *(&v14 + 1), v15, v16);
  sub_21B23A9F4(v14, *(&v14 + 1), v15);
  sub_21B233960(&v57);
  v18 = v71;
  v17 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v19 = (*(*(v17 + 8) + 80))(v18);
  if (v19 == a4)
  {
    AnyColumnSlice.assumingType<A>(_:)(a4, a4, &v62);
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v29 = type metadata accessor for DiscontiguousColumnSlice(0, a4, v27, v28);
    WitnessTable = swift_getWitnessTable();
    sub_21B34B474();
    v56 = v55;
    v31 = swift_getWitnessTable();
    sub_21B2966F4(v29, WitnessTable, v31);
    v32 = v59;
    v33 = v60;

    sub_21B23A9F4(v32, *(&v32 + 1), v33);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    v48 = a4;
    v49 = v54;
    v20 = v55;
    v50 = v55;
    v51 = a7;
    v21 = sub_21B34B474();
    v22 = sub_21B2F187C();
    v62 = sub_21B2FCC28(sub_21B3057F8, v47, &type metadata for AnyColumnSlice, v21, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v24 = sub_21B34B054();
    v25 = swift_getWitnessTable();
    v61 = v20;
    v26 = swift_getWitnessTable();
    sub_21B2966F4(v24, v25, v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v34 = sub_21B34B7B4();

  v62 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  v47[0] = a4;
  v47[1] = v54;
  v48 = v55;
  v49 = a7;
  v50 = v53;
  MEMORY[0x28223BE20](v36);
  v46[2] = a4;
  v46[3] = v37;
  v46[4] = v38;
  v46[5] = a7;
  v46[6] = sub_21B30581C;
  v46[7] = v39;
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  v40 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = swift_getWitnessTable();
  v44 = sub_21B2FCC28(sub_21B305850, v46, v40, TupleTypeMetadata2, MEMORY[0x277D84A98], v42, MEMORY[0x277D84AC0], v43);

  sub_21B25F000(v70);
  return v44;
}

uint64_t RowGrouping.description.getter(uint64_t a1)
{
  v3 = 1937207154;
  v4 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = &v58 - v8;
  v65 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_21B34B474();
  v11 = *(v68 - 8);
  v12 = MEMORY[0x28223BE20](v68);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v58 - v15;
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  if (v17 == 1937207154 && v18 == 0xE400000000000000 || (v19 = 0xE400000000000000, (sub_21B34B9F4() & 1) != 0))
  {
    v19 = 0xE500000000000000;
    v3 = 0x73776F725FLL;
  }

  v20 = sub_21B34B004();
  Column.init(name:capacity:)(v17, v18, v20, v69, v84);
  v81 = v3;
  v82 = v19;
  sub_21B234EF8(MEMORY[0x277D84F90]);
  v83 = v21;
  sub_21B235224(v20, sub_21B235334, &qword_27CD7E488, &unk_21B3544A0, sub_21B2AECDC);
  v70 = TupleTypeMetadata2 - 8;
  v67 = (v11 + 32);
  v60 = (v7 + 32);
  v59 = (v7 + 8);

  v22 = 0;
  v63 = TupleTypeMetadata2;
  v62 = v14;
  v61 = v16;
  while (1)
  {
    if (v22 == sub_21B34B004())
    {
      v23 = *(TupleTypeMetadata2 - 8);
      (*(v23 + 56))(v14, 1, 1, TupleTypeMetadata2);
      goto LABEL_11;
    }

    v24 = sub_21B34AFF4();
    sub_21B34AFA4();
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(TupleTypeMetadata2 - 8);
    (*(v25 + 16))(v14, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, TupleTypeMetadata2);
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
      goto LABEL_16;
    }

LABEL_10:
    v23 = v25;
    (*(v25 + 56))(v14, 0, 1, TupleTypeMetadata2);
LABEL_11:
    v27 = v66;
    (*v67)(v66, v14, v68);
    if ((*(v23 + 48))(v27, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_17;
    }

    v28 = &v27[*(TupleTypeMetadata2 + 48)];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = *(v28 + 2);
    v32 = *(v28 + 3);
    v33 = *(v28 + 4);
    v34 = *v60;
    v35 = v28[40];
    v71 = v22;
    v36 = v64;
    v37 = v65;
    v34(v64, v27, v65);
    v40 = type metadata accessor for Column(0, v69, v38, v39);
    Column.append(_:)(v36, v40, v41, v42);
    v43 = sub_21B2FB1D4(v32, v33, v35);
    v72 = v29;
    v73 = v30;
    v74 = v31;
    v75 = v32;
    v76 = v33;
    v77 = v35;
    DataFrame.Slice.columns.getter();

    v16 = v61;

    v44 = v35;
    TupleTypeMetadata2 = v63;
    sub_21B23A9F4(v32, v33, v44);

    sub_21B235528(v43, 0);
    v45 = v36;
    v22 = v71;
    v46 = v37;
    v14 = v62;
    (*v59)(v45, v46);
  }

  result = sub_21B34B684();
  v25 = *(TupleTypeMetadata2 - 8);
  if (*(v25 + 64) == 8)
  {
    v72 = result;
    (*(v25 + 16))(v14, &v72, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
LABEL_16:
      __break(1u);
LABEL_17:

      v78 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D84F90];
      v80 = sub_21B25DC2C(MEMORY[0x277D84F90]);
      v72 = v84[0];
      v73 = v84[1];
      v74 = v84[2];

      DataFrame.append<A>(column:)(&v72, v69, v48, v49);

      v50 = v81;
      v51 = v82;
      v52 = v83;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
      v76 = &off_282CAA128;
      v72 = v50;
      v73 = v51;
      v74 = v52;

      DataFrame.append(column:)(&v72);
      sub_21B233960(&v72);
      v53 = v78;
      v54 = v79;
      v55 = v80;
      v56 = v58;
      FormattingOptions.init()(v58);
      v57 = sub_21B2C6E78(v56, v53, v54, v55);

      sub_21B2B42B0(v56);

      return v57;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t RowGrouping.init<A>(groups:groupKeysColumnName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v23 = a1;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = sub_21B305378;
  v17[7] = &v18;
  sub_21B34B474();
  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B305384, v17, v11, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  *a8 = v15;
  a8[1] = a2;
  a8[2] = a3;
  return result;
}

double sub_21B300660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_21B34B474();
  (*(*(v13 - 8) + 16))(a1, a3, v13);
  (*(a8 + 24))(&v23, a6, a8);
  v14 = v24;
  (*(a8 + 32))(&v19, a6, a8);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  sub_21B254074(v20, v21, v22);

  sub_21B23A9F4(v15, v16, v17);
  result = *&v23;
  *a2 = v23;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_21B300794@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a5@<X8>)
{
  sub_21B34B474();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, a1 + v8);
}

uint64_t sub_21B300850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B2615FC(a1, &v7, &qword_27CD7E0F8, &unk_21B3557C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_21B300910(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = sub_21B34B474();
  (*(*(v17 - 8) + 16))(a1, a3, v17);
  (*(a11 + 24))(v35, a9, a11);
  v18 = v35[0];
  v19 = v35[1];
  v20 = v35[2];
  if (!*(v35[0] + 16))
  {

    goto LABEL_6;
  }

  v31 = a4;
  v21 = a6;
  sub_21B233A74(v35[0] + 32, v32);
  v22 = v33;
  v23 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v24 = *(v23 + 8);
  v25 = *(v24 + 48);

  v26 = v25(v22, v24);
  result = sub_21B233960(v32);
  if ((v26 & 0x8000000000000000) == 0)
  {
    a6 = v21;
    a4 = v31;
    if (v26)
    {
      v28 = 0;
LABEL_7:
      sub_21B254074(0, v26, v28);

      sub_21B23A9F4(0, v26, v28);
      result = sub_21B248CCC(a4, a5, a6, 0, v26, v28);
      *a2 = v18;
      *(a2 + 8) = v19;
      *(a2 + 16) = v20;
      *(a2 + 24) = result;
      *(a2 + 32) = v29;
      *(a2 + 40) = v30;
      return result;
    }

LABEL_6:
    v26 = 0;
    v28 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B300AF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v7 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, v8, v9, v10);
}

TabularData::DataFrame __swiftcall RowGrouping.counts(order:)(TabularData::Order_optional order)
{
  v4 = *&order;
  v58 = v2;
  v5 = *(v1 + 16);
  v6 = sub_21B34B474();
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = &v56[-v7];
  v64 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_21B34B474();
  v66 = *(v67 - 8);
  v10 = MEMORY[0x28223BE20](v67);
  v70 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v69 = &v56[-v12];
  v57 = *v4;
  v13 = v3[1];
  v68 = *v3;
  v14 = v3[2];

  v15 = sub_21B34B004();
  sub_21B265ED0(v13, v14, v5, v83);
  v65 = type metadata accessor for SingleColumnBuilder(0, v5, v16, v17);
  sub_21B265F40(v15, v65);
  v79 = 0x746E756F63;
  v80 = 0xE500000000000000;
  *v74 = 0x746E756F63;
  *&v74[8] = 0xE500000000000000;
  v18 = MEMORY[0x277D84F90];
  sub_21B234EF8(MEMORY[0x277D84F90]);
  *&v74[16] = v19;
  sub_21B235224(0, sub_21B235334, &qword_27CD7E488, &unk_21B3544A0, sub_21B2AECDC);
  *v74 = 0x746E756F63;
  *&v74[8] = 0xE500000000000000;
  sub_21B234EF8(v18);
  *&v74[16] = v20;
  v21 = v15;
  v22 = v68;
  sub_21B235224(v21, sub_21B235334, &qword_27CD7E488, &unk_21B3544A0, sub_21B2AECDC);
  v23 = *v74;

  v81 = v23;
  v59 = *&v74[8];
  v82 = *&v74[8];
  v71 = TupleTypeMetadata2 - 8;
  v66 += 4;
  v61 = (v72 + 32);
  v60 = (v72 + 8);

  v24 = 0;
  v62 = TupleTypeMetadata2;
  while (1)
  {
    if (v24 == sub_21B34B004())
    {
      v25 = *(TupleTypeMetadata2 - 8);
      v26 = v70;
      (*(v25 + 56))(v70, 1, 1, TupleTypeMetadata2);
      v27 = v69;
      goto LABEL_7;
    }

    v28 = sub_21B34AFF4();
    sub_21B34AFA4();
    v26 = v70;
    v27 = v69;
    if ((v28 & 1) == 0)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 - 8);
    (*(v29 + 16))(v70, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, TupleTypeMetadata2);
    v30 = __OFADD__(v24++, 1);
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_6:
    v25 = v29;
    (*(v29 + 56))(v26, 0, 1, TupleTypeMetadata2);
LABEL_7:
    (*v66)(v27, v26, v67);
    if ((*(v25 + 48))(v27, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v31 = &v27[*(TupleTypeMetadata2 + 48)];
    v72 = v24;
    v32 = *(v31 + 3);
    v33 = *(v31 + 4);
    v34 = v31[40];
    v35 = v63;
    v36 = v64;
    (*v61)(v63, v27, v64);
    sub_21B265FC0(v35, v65, v37, v38);

    sub_21B254074(v32, v33, v34);

    sub_21B23A9F4(v32, v33, v34);
    v39 = sub_21B2FB1D4(v32, v33, v34);
    v24 = v72;

    v22 = v68;

    sub_21B23A9F4(v32, v33, v34);
    sub_21B235528(v39, 0);
    v40 = v36;
    TupleTypeMetadata2 = v62;
    (*v60)(v35, v40);
  }

  v41.value = sub_21B34B684();
  v29 = *(TupleTypeMetadata2 - 8);
  if (*(v29 + 64) != 8)
  {
    goto LABEL_25;
  }

  *v74 = v41.value;
  (*(v29 + 16))(v26, v74, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v30 = __OFADD__(v24++, 1);
  if (!v30)
  {
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  *&v77 = MEMORY[0x277D84F90];
  *(&v77 + 1) = MEMORY[0x277D84F90];
  v78 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  sub_21B265FFC(&v77, 0, v65);

  v44 = 0x746E756F63;
  v81 = 0x746E756F63;
  *&v82 = 0xE500000000000000;
  v45 = v77;
  v46 = v78;
  *v74 = v77;
  *&v74[16] = v78;

  v47._countAndFlagsBits = 0x746E756F63;
  v47._object = 0xE500000000000000;
  v84 = DataFrame.indexOfColumn(_:)(v47);
  is_nil = v84.is_nil;

  v49 = 0xE500000000000000;
  if (!is_nil)
  {
    v50 = 0;
    while (!__OFADD__(v50, 1))
    {
      *v74 = 0x746E756F63;
      *&v74[8] = 0xE500000000000000;
      MEMORY[0x21CEED5E0](46, 0xE100000000000000);
      v73 = v50 + 1;
      v51 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v51);

      v44 = *v74;
      v49 = *&v74[8];
      *v74 = v45;
      *&v74[16] = v46;
      v52._countAndFlagsBits = v44;
      v52._object = v49;
      v41 = DataFrame.indexOfColumn(_:)(v52);
      ++v50;
      if (v41.is_nil)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_17:
  v53 = *(&v82 + 1);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
  v76 = &off_282CAA128;
  *v74 = v44;
  *&v74[8] = v49;
  *&v74[16] = v53;

  DataFrame.append(column:)(v74);
  sub_21B233960(v74);
  if (v57 == 2)
  {

    v54 = v78;
    v55 = v58;
    *v58 = v77;
    *(v55 + 2) = v54;
  }

  else
  {
    if (v57)
    {
      sub_21B2FEB0C(0x746E756F63, 0xE500000000000000, sub_21B301618, 0, v77, *(&v77 + 1), v78, sub_21B2A9768, v58, sub_21B3072AC, sub_21B307C70);
    }

    else
    {
      sub_21B2FEB0C(0x746E756F63, 0xE500000000000000, sub_21B301604, 0, v77, *(&v77 + 1), v78, sub_21B2A9768, v58, sub_21B3072AC, sub_21B307C70);
    }
  }

LABEL_26:
  result.columns = v41.value;
  LOBYTE(result.aliases._rawValue) = v41.is_nil;
  result.columnIndicesByName._rawValue = v43;
  *(&result.aliases._rawValue + 1) = *(&v42 + 1);
  *(&result.aliases._rawValue + 5) = *(&v42 + 5);
  HIBYTE(result.aliases._rawValue) = HIBYTE(v42);
  return result;
}

uint64_t RowGrouping.aggregated<A, B>(on:naming:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, _OWORD *a9@<X8>)
{
  v115 = a6;
  v107 = a4;
  v108 = a5;
  v118 = a3;
  v113 = a2;
  v99 = a9;
  v106 = sub_21B34B474();
  v100 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v121 = &v99 - v14;
  v15 = *(a6 + 16);
  v16 = sub_21B34B474();
  v120 = *(v16 - 8);
  v103 = *(v120 + 64);
  MEMORY[0x28223BE20](v16);
  v122 = &v99 - v17;
  v19 = *v9;
  v18 = v9[1];
  v20 = v9[2];

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v117 = v19;
  v111 = TupleTypeMetadata2;
  v22 = sub_21B34B004();
  sub_21B265ED0(v18, v20, v15, v137);
  v119 = type metadata accessor for SingleColumnBuilder(0, v15, v23, v24);
  sub_21B265F40(v22, v119);
  v110 = a1;
  *&v132 = a1;
  v123[2] = v15;
  v123[3] = a7;
  v112 = a7;
  v25 = *(v115 + 24);
  v123[4] = a8;
  v123[5] = v25;
  v115 = v25;
  v116 = v15;
  v123[6] = v113;
  v123[7] = v118;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v118 = a8;
  v29 = type metadata accessor for SingleColumnBuilder(0, a8, v27, v28);
  v30 = sub_21B305404();
  v31 = v114;
  v138 = sub_21B2FCC28(sub_21B3053B0, v123, v26, v29, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v32);

  v33 = sub_21B34B004();

  if (v33 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v113 = v16;
  v114 = v31;
  if (v33)
  {
    sub_21B34B054();
    sub_21B34AFC4();
    sub_21B34AFC4();
    v35 = 0;
    v36 = 32;
    do
    {
      sub_21B34AFC4();
      sub_21B305254(v35, v138, v29);
      sub_21B265F40(v22, v29);
      v36 += 40;
      ++v35;
    }

    while (v33 != v35);
  }

  v109 = v29;
  *&v132 = v117;
  MEMORY[0x28223BE20](result);
  v37 = v115;
  v38 = v112;
  *(&v99 - 4) = v116;
  *(&v99 - 3) = v38;
  v39 = v118;
  *(&v99 - 2) = v118;
  *(&v99 - 1) = v37;
  KeyPath = swift_getKeyPath();
  v105 = &v99;
  v41 = MEMORY[0x28223BE20](KeyPath);
  *(&v99 - 4) = v38;
  *(&v99 - 3) = v39;
  *(&v99 - 2) = v37;
  *(&v99 - 1) = v41;
  v42 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  v111 = v42;
  v45 = v113;
  v44 = v114;
  v104 = WitnessTable;
  v47 = sub_21B2FCC28(sub_21B305468, (&v99 - 6), v42, v113, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v46);
  v114 = v44;

  if (sub_21B34B004())
  {
    v48 = 0;
    v49 = (v120 + 16);
    v50 = (v120 + 8);
    do
    {
      v51 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v51)
      {
        (*(v120 + 16))(v122, v47 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v48, v45);
        v54 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_21B34B684();
        if (v103 != 8)
        {
          goto LABEL_39;
        }

        *&v132 = result;
        (*v49)(v122, &v132, v45);
        swift_unknownObjectRelease();
        v54 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v55 = v122;
      sub_21B265FC0(v122, v119, v52, v53);
      (*v50)(v55, v45);
      ++v48;
    }

    while (v54 != sub_21B34B004());
  }

  *&v132 = v117;
  MEMORY[0x28223BE20](v56);
  v57 = v115;
  v58 = v116;
  v59 = v112;
  *(&v99 - 4) = v116;
  *(&v99 - 3) = v59;
  v60 = v118;
  *(&v99 - 2) = v118;
  *(&v99 - 1) = v57;
  v61 = swift_getKeyPath();
  v62 = MEMORY[0x28223BE20](v61);
  *(&v99 - 6) = v58;
  *(&v99 - 5) = v59;
  *(&v99 - 4) = v60;
  *(&v99 - 3) = v57;
  *(&v99 - 2) = v62;

  v63 = v114;
  v65 = sub_21B2FCC28(sub_21B30548C, (&v99 - 8), v111, &type metadata for DataFrame.Slice, MEMORY[0x277D84A98], v104, MEMORY[0x277D84AC0], v64);
  v66 = v63;

  v101 = *(v65 + 16);
  if (v101)
  {
    v67 = v109;
    v68 = sub_21B34B054();
    sub_21B34AFC4();
    v103 = v65 + 32;
    v111 = v68;
    result = sub_21B34AFC4();
    v69 = 0;
    v105 = (v100 + 8);
    v100 = v110 + 40;
    v102 = v65;
    while (v69 < *(v65 + 16))
    {
      v71 = v103 + 48 * v69;
      v72 = *v71;
      v73 = *(v71 + 8);
      v74 = *(v71 + 16);
      v75 = *(v71 + 24);
      v76 = *(v71 + 32);
      v77 = *(v71 + 40);
      v122 = v138;
      v115 = v72;

      v114 = v73;

      v113 = v74;

      v116 = v75;
      v117 = v76;
      LODWORD(v118) = v77;
      sub_21B254074(v75, v76, v77);
      result = sub_21B34B004();
      if (result < 0)
      {
        goto LABEL_36;
      }

      v78 = result;
      v104 = v69;
      sub_21B34AFC4();
      result = sub_21B34AFC4();
      if (v78)
      {
        v79 = 0;
        v80 = v100;
        v81 = 32;
        while (v79 < *(v110 + 16))
        {
          v82 = *(v80 - 1);
          v83 = *v80;
          *&v132 = v115;
          *(&v132 + 1) = v114;
          v133 = v113;
          v134 = v116;
          v135 = v117;
          v136 = v118;

          DataFrame.Slice.subscript.getter(v82, v83, v112, &v128);

          v124 = v128;
          v125 = v129;
          v126 = v130;
          v127 = v131;
          v107(&v124);
          if (v66)
          {

            sub_21B23A9F4(v116, v117, v118);

            v92 = v126;
            v93 = v127;

            sub_21B23A9F4(v92, *(&v92 + 1), v93);
          }

          v122 = v79 + 1;
          v85 = *(&v126 + 1);
          v84 = v126;
          v120 = v79;
          v86 = v127;

          v87 = v85;
          v67 = v109;
          v88 = v86;
          v66 = 0;
          sub_21B23A9F4(v84, v87, v88);
          sub_21B34AFC4();
          sub_21B305254(v120, v138, v67);
          v89 = v121;
          sub_21B265FC0(v121, v67, v90, v91);
          result = (*v105)(v89, v106);
          v81 += 40;
          v80 += 2;
          v79 = v122;
          if (v78 == v122)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      v69 = v104 + 1;

      result = sub_21B23A9F4(v116, v117, v118);
      v65 = v102;
      v70 = v119;
      if (v69 == v101)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v67 = v109;
  v70 = v119;
LABEL_28:
  *&v132 = MEMORY[0x277D84F90];
  *(&v132 + 1) = MEMORY[0x277D84F90];
  v133 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  sub_21B265FFC(&v132, 0, v70);
  result = sub_21B34B004();
  if ((result & 0x8000000000000000) == 0)
  {
    v94 = result;
    if (result)
    {
      sub_21B34B054();
      sub_21B34AFC4();
      sub_21B34AFC4();
      v95 = 0;
      v96 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v95, v138, v67);
        sub_21B265FFC(&v132, 0, v67);
        v96 += 40;
        ++v95;
      }

      while (v94 != v95);
    }

    v97 = v133;
    v98 = v99;
    *v99 = v132;
    *(v98 + 2) = v97;
    return result;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21B3020C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v3 = *a2;
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  (*(v5 + 16))(&v19 - v9);
  v11 = *(v4 + 48);
  v12 = *&v10[v11];
  v20 = *&v10[v11 + 16];
  v13 = *&v10[v11 + 32];
  v14 = v10[v11 + 40];
  v15 = &v8[v11];
  v16 = *(*(*(v3 + *MEMORY[0x277D84DE8] + 8) - 8) + 32);
  v19 = v12;
  v16(v8, v10);
  v17 = v20;
  *v15 = v19;
  *(v15 + 1) = v17;
  *(v15 + 4) = v13;
  v15[40] = v14;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21B30229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v4 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  (*(v6 + 16))(&v20 - v10, a1, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = *&v11[v12];
  v21 = *&v11[v12 + 16];
  v14 = *&v11[v12 + 32];
  v15 = v11[v12 + 40];
  v16 = &v9[v12];
  v17 = *(*(v4 - 8) + 32);
  v20 = v13;
  v17(v9, v11, v4);
  v18 = v21;
  *v16 = v20;
  *(v16 + 1) = v18;
  *(v16 + 4) = v14;
  v16[40] = v15;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, TupleTypeMetadata2);
}

void sub_21B302460(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = sub_21B2FB1D4(v11, v13, v14);

  sub_21B254074(v11, v13, v14);

  sub_21B23A9F4(v11, v13, v14);

  sub_21B265ED0(a3, a4, a5, v25);
  v18 = type metadata accessor for SingleColumnBuilder(0, a5, v16, v17);
  sub_21B265F40(v15, v18);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    for (; v15; --v15)
    {
      sub_21B265FC0(a1, v18, v19, v20);
    }

    v23[0] = v10;
    v23[1] = v9;
    v23[2] = v12;
    v23[3] = v11;
    v23[4] = v13;
    v24 = v14;

    sub_21B254074(v11, v13, v14);
    DataFrame.init(_:)(v23, a6);
    sub_21B265FFC(a6, 1, v18);
  }
}

uint64_t RowGrouping.filter(_:)@<X0>(uint64_t *a4@<X8>)
{
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  sub_21B34B054();
  swift_getWitnessTable();
  result = sub_21B34B704();
  if (!v5)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_21B302704(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  sub_21B34B474();
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *(v6 + 2);
  v8 = *(v6 + 40);
  v10 = *v6;
  v11 = v7;
  v12 = *(v6 + 24);
  v13 = v8;
  return a2(&v10) & 1;
}

uint64_t RowGrouping.mapGroups(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = v4[1];
  v6 = v4[2];
  v27[2] = *v4;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v23 = v7;
  v24 = v8;
  v25 = a1;
  v26 = a2;
  v18 = v7;
  v19 = v8;
  v20 = sub_21B3054D8;
  v21 = &v22;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B3054F8, v17, v9, TupleTypeMetadata2, v11, WitnessTable, MEMORY[0x277D84950], v27);

  if (!v5)
  {

    return RowGrouping.init<A>(groups:groupKeysColumnName:)(v13, v15, v6, v7, &type metadata for DataFrame, v8, &protocol witness table for DataFrame, a4);
  }

  return result;
}

uint64_t sub_21B302958(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t (*a5)(_OWORD *), uint64_t a6, uint64_t a7)
{
  v17 = a4[1];
  v10 = *(a4 + 4);
  v11 = *(a4 + 40);
  v12 = sub_21B34B474();
  v13 = *(v12 - 8);
  v16 = *a4;
  (*(v13 + 16))(a1, a3, v12);
  v19[0] = v16;
  v19[1] = v17;
  v20 = v10;
  v21 = v11;
  v14 = v22;
  result = a5(v19);
  if (v14)
  {
    return (*(v13 + 8))(a1, v12);
  }

  return result;
}

uint64_t sub_21B302A74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a4@<X5>, uint64_t a5@<X8>)
{
  sub_21B34B474();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, a1 + v10);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B302B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 2);
  v13 = *v3;
  v14 = v6;
  sub_21B2FF59C(&v9);
  sub_21B23A9F4(v10, v11, v12);
  v7 = sub_21B23AC94(a1, a2);

  return v7;
}

uint64_t RowGrouping.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_21B34B474();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v33 = v7;
  v32 = *(v7 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v28 - v14;
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  if (*(a1 + 16))
  {
    sub_21B2615FC(a1 + 32, v34, &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    memset(v34, 0, 24);
    v34[3] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F360, &qword_21B356960);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, v6);
    v22 = (*(v16 + 32))(v18, v15, v6);
    v28[1] = v28;
    v34[0] = v19;
    MEMORY[0x28223BE20](v22);
    v23 = *(v31 + 24);
    v28[-4] = v6;
    v28[-3] = v23;
    v28[-2] = v18;
    sub_21B34B054();

    swift_getWitnessTable();
    sub_21B34AF14();

    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      (*(v29 + 8))(v12, v30);
      *(a3 + 25) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      v25 = &v12[*(TupleTypeMetadata2 + 48)];
      v26 = *(v25 + 2);
      v27 = v25[40];
      *a3 = *v25;
      *(a3 + 16) = v26;
      *(a3 + 24) = *(v25 + 24);
      *(a3 + 40) = v27;
      (*(v32 + 8))(v12, v33);
    }

    return (*(v16 + 8))(v18, v6);
  }

  else
  {
    v21(v15, 1, 1, v6);
    result = (*(v32 + 8))(v15, v33);
    *(a3 + 25) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21B30300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v41 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v32 - v11;
  v13 = *(v8 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v39 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  (*(v6 + 16))(&v32 - v16, a2, a3);
  (*(v6 + 56))(v17, 0, 1, a3);
  v37 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *(v13 + 16);
  v19(v12, v41, v8);
  v40 = v18;
  v19(&v12[v18], v17, v8);
  v38 = v6;
  v20 = *(v6 + 48);
  v41 = a3;
  if (v20(v12, 1, a3) != 1)
  {
    v33 = v13;
    v23 = v39;
    v19(v39, v12, v8);
    v25 = v40;
    v24 = v41;
    if (v20(&v12[v40], 1, v41) != 1)
    {
      v26 = v38;
      v27 = v34;
      (*(v38 + 32))(v34, &v12[v25], v24);
      v28 = v24;
      v22 = sub_21B34AC54();
      v29 = *(v26 + 8);
      v29(v27, v28);
      v30 = *(v33 + 8);
      v30(v17, v8);
      v29(v39, v28);
      v30(v12, v8);
      return v22 & 1;
    }

    (*(v33 + 8))(v17, v8);
    (*(v38 + 8))(v23, v24);
    goto LABEL_6;
  }

  v21 = *(v13 + 8);
  v21(v17, v8);
  if (v20(&v12[v40], 1, v41) != 1)
  {
LABEL_6:
    (*(v36 + 8))(v12, v37);
    v22 = 0;
    return v22 & 1;
  }

  v21(v12, v8);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_21B3034D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v16 = a5[1];
  v20 = *a5;
  v21[0] = v16;
  *(v21 + 9) = *(a5 + 25);
  v17 = sub_21B34B474();
  result = (*(*(v17 - 8) + 16))(a1, a4, v17);
  if (a7)
  {
    return sub_21B343AF4(a2, a3, a9);
  }

  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject();
    v19 = sub_21B262CF4(a6);
    sub_21B34351C(a2, a3, &v19, a9);
  }

  return result;
}

uint64_t sub_21B303620@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  sub_21B34B474();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a4 + *(TupleTypeMetadata2 + 48) + 48, a1, a1 + v7);
}

uint64_t sub_21B303710@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *&v37 = a1;
  v35 = a3;
  v5 = sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v41 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v40 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v7 + 16);
  v36 = v7 + 16;
  *&v38 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *(v13 + 3);
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  v34 = *(v13 + 9);
  v17 = *(v13 + 10);
  v32 = v16;
  v33 = v17;
  v18 = v13[40];
  v31 = v13[88];

  sub_21B23A9F4(v14, v15, v18);

  sub_21B23A9F4(v34, v33, v31);
  v19 = *(v41 - 8);
  (*(v19 + 32))(v35, v11);
  v20 = v39;
  (v38)(v39, v37, TupleTypeMetadata2);
  v21 = &v20[*(TupleTypeMetadata2 + 48)];
  v22 = *(v21 + 4);
  LOBYTE(v11) = v21[40];
  v23 = *(v21 + 9);
  v24 = *(v21 + 10);
  v25 = *(v21 + 1);
  v37 = *v21;
  v38 = v25;
  v26 = v21[88];

  sub_21B23A9F4(v23, v24, v26);
  v27 = v40;
  v28 = v38;
  *v40 = v37;
  v27[1] = v28;
  *(v27 + 4) = v22;
  *(v27 + 40) = v11;
  return (*(v19 + 8))(v20, v41);
}

uint64_t sub_21B303A04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v39 = a1;
  v37 = a3;
  v5 = sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v36 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-v10];
  v42 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v7 + 16);
  v38 = v7 + 16;
  v40 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *(v13 + 3);
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  v35 = *(v13 + 9);
  v17 = *(v13 + 10);
  v33 = v16;
  v34 = v17;
  v18 = v13[40];
  v32 = v13[88];

  sub_21B23A9F4(v14, v15, v18);

  sub_21B23A9F4(v35, v34, v32);
  v19 = *(v36 - 8);
  v20 = v11;
  v21 = v36;
  (*(v19 + 32))(v37, v20);
  v22 = v41;
  v40(v41, v39, TupleTypeMetadata2);
  v23 = &v22[*(TupleTypeMetadata2 + 48)];
  v24 = *(v23 + 3);
  v25 = *(v23 + 4);
  v26 = v23[40];

  sub_21B23A9F4(v24, v25, v26);
  v27 = *(v23 + 8);
  v28 = v23[88];
  v29 = v42;
  *v42 = *(v23 + 3);
  *(v29 + 2) = v27;
  *(v29 + 24) = *(v23 + 72);
  *(v29 + 40) = v28;
  return (*(v19 + 8))(v22, v21);
}

uint64_t sub_21B303D04(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B303D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, uint64_t a6@<X3>, uint64_t a7@<X4>, uint64_t a8@<X5>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11)
{
  v16 = sub_21B303E18(a1, a2, a3, a6, a7, a8, a4, a9, a10, a11);
  result = (*(*(a4 - 8) + 8))(a1, a4);
  *a5 = v16;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_21B303E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a7;
  (*(a10 + 24))(v80, a7, a10);
  v77 = v80[0];
  v78 = v80[1];
  v79 = v80[2];
  v37 = a8;
  DataFrame.subscript.getter(a2, a3, a8, a8);

  v14 = v74;
  v15 = v75;
  v16 = v76;
  (*(a10 + 32))(&v69, v11, a10);
  v17 = v71;
  v18 = v72;
  LOBYTE(v11) = v73;
  sub_21B254074(v71, v72, v73);

  sub_21B23A9F4(v17, v18, v11);
  v66 = v14;
  v67 = v15;
  v68 = v16;
  v21 = type metadata accessor for Column(0, v37, v19, v20);
  sub_21B28B2B8(v17, v18, v11, v21, &v62);
  sub_21B23A9F4(v17, v18, v11);

  v58 = v62;
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v24 = type metadata accessor for DiscontiguousColumnSlice(0, v37, v22, v23);
  DiscontiguousColumnSlice.map<A>(_:)(a4, a5, v24, a6, &v81);

  sub_21B23A9F4(v60, *(&v60 + 1), v61);
  v69 = v81;
  v70 = v82;
  v27 = type metadata accessor for Column(0, a6, v25, v26);
  WitnessTable = swift_getWitnessTable();
  sub_21B34B474();
  v29 = swift_getWitnessTable();
  v30 = sub_21B2966F4(v27, WitnessTable, v29);

  v69 = v30;
  v52 = a6;
  v53 = a7;
  v54 = v37;
  v55 = a9;
  v56 = a10;
  v57 = a1;
  v44 = a6;
  v45 = a7;
  v46 = v37;
  v47 = a9;
  v48 = a10;
  v49 = sub_21B3058AC;
  v50 = &v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  v31 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = swift_getWitnessTable();
  v35 = sub_21B2FCC28(sub_21B3058E4, v43, v31, TupleTypeMetadata2, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v34);

  return v35;
}

uint64_t sub_21B3041DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_21B34B474();
  (*(*(v18 - 8) + 16))(a1, a3, v18);
  (*(a12 + 24))(v36, a9, a12);
  v19 = v36[0];
  v20 = v36[1];
  v21 = v36[2];
  if (!*(v36[0] + 16))
  {

    goto LABEL_6;
  }

  v32 = a4;
  v22 = a6;
  sub_21B233A74(v36[0] + 32, v33);
  v23 = v34;
  v24 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v25 = *(v24 + 8);
  v26 = *(v25 + 48);

  v27 = v26(v23, v25);
  result = sub_21B233960(v33);
  if ((v27 & 0x8000000000000000) == 0)
  {
    a6 = v22;
    a4 = v32;
    if (v27)
    {
      v29 = 0;
LABEL_7:
      sub_21B254074(0, v27, v29);

      sub_21B23A9F4(0, v27, v29);
      result = sub_21B248CCC(a4, a5, a6, 0, v27, v29);
      *a2 = v19;
      *(a2 + 8) = v20;
      *(a2 + 16) = v21;
      *(a2 + 24) = result;
      *(a2 + 32) = v30;
      *(a2 + 40) = v31;
      return result;
    }

LABEL_6:
    v27 = 0;
    v29 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B3043C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v7 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, v8, v9, v10);
}

uint64_t RowGrouping.init<A>(frame:columnName:timeUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v45 = a6;
  v46 = a3;
  v43 = a5;
  v44 = a1;
  v39 = a4;
  v47 = a2;
  v48 = a7;
  v42 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B34A8A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B34A8B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v40 = &v37 - v18;
  sub_21B34A894();
  v20 = *(v14 + 16);
  v38 = v13;
  v20(v17, v19, v13);
  v21 = *(v10 + 16);
  v22 = a4;
  v23 = v9;
  v37 = v9;
  v21(v12, v22, v9);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = (v15 + *(v10 + 80) + v24) & ~*(v10 + 80);
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v24, v17, v13);
  (*(v10 + 32))(v26 + v25, v12, v23);
  v28 = v41;
  v27 = v42;
  v29 = v43;
  v30 = v44;
  (*(v42 + 16))(v41, v44, v43);
  v50 = sub_21B305540;
  v51 = v26;
  v31 = sub_21B34A834();
  v32 = v46;
  v33 = v47;
  v45 = sub_21B303E18(v28, v47, v46, sub_21B305614, v49, MEMORY[0x277D83B88], v29, v31, MEMORY[0x277D83B98], v45);
  v34 = *(v27 + 8);
  v34(v28, v29);
  (*(v10 + 8))(v39, v37);
  v34(v30, v29);
  (*(v14 + 8))(v40, v38);

  v36 = v48;
  *v48 = v45;
  v36[1] = v33;
  v36[2] = v32;
  return result;
}

uint64_t sub_21B304860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = sub_21B34A5C4();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_21B34A834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2615FC(a1, v10, &qword_27CD7E100, &unk_21B352A30);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21B261664(v10, &qword_27CD7E100, &unk_21B352A30);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F3E8, &qword_21B356C08);
    v16 = sub_21B34A8A4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 80);
    v23 = v5;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21B351EA0;
    (*(v17 + 16))(v20 + v19, a3, v16);
    sub_21B308194(v20);
    swift_setDeallocating();
    (*(v17 + 8))(v20 + v19, v16);
    swift_deallocClassInstance();
    sub_21B34A884();

    v21 = sub_21B34A5B4();
    (*(v25 + 8))(v7, v23);
    (*(v12 + 8))(v14, v11);
    return v21;
  }
}

uint64_t sub_21B304BF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return a2(v3, TupleTypeMetadata2);
}

Swift::Int __swiftcall RowGrouping.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall RowGrouping.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 RowGrouping.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v16 - v8;
  sub_21B34B094();
  v10 = &v9[*(TupleTypeMetadata2 + 48)];
  v11 = *v10;
  v17 = *(v10 + 1);
  v12 = *(v10 + 4);
  v13 = v10[40];
  v14 = *(*(v6 - 8) + 32);
  v16 = v11;
  v14(a1, v9, v6);
  result = v17;
  *a2 = v16;
  *(a2 + 16) = result;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_21B304DB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RowGrouping.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_21B304DE0(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v13 = v12;
  v8[6] = v12;
  v14 = sub_21B305008(v8, *a2, a3);
  v16 = v15;
  v8[7] = v14;
  (*(*(v9 - 8) + 16))(v13);
  v17 = v13 + *(TupleTypeMetadata2 + 48);
  v18 = *v16;
  v19 = v16[1];
  v20 = v16[2];
  v21 = v16[3];
  v22 = v16[4];
  LOBYTE(v16) = *(v16 + 40);
  *v17 = v18;
  *(v17 + 8) = v19;
  *(v17 + 16) = v20;
  *(v17 + 24) = v21;
  *(v17 + 32) = v22;
  *(v17 + 40) = v16;

  sub_21B254074(v21, v22, v16);
  return sub_21B304F90;
}

void sub_21B304F90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_21B305008(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  RowGrouping.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_21B2854A4;
}

void *sub_21B305110()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B30517C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[0];
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B305190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B3051E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_21B305254(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21B3052A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 8 * a3 - 8;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 8 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 8;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

double sub_21B3053B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = (*(v2 + 48))(*a1, a1[1]);
  return sub_21B265ED0(v5, v6, v4, a2);
}

unint64_t sub_21B305404()
{
  result = qword_27CD7F358;
  if (!qword_27CD7F358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E840, &qword_21B352A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F358);
  }

  return result;
}

uint64_t sub_21B305540(uint64_t a1)
{
  v3 = *(sub_21B34A8B4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21B34A8A4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21B304860(a1, v1 + v4, v7);
}

uint64_t sub_21B305614@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21B30564C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B3057A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B30591C(char *__src, char *__dst, char *a3, char *a4, int a5, int a6, uint64_t a7, uint64_t (*a8)(char *, char *), uint64_t a9)
{
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = __src;
  v14 = __dst - __src;
  v15 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v15 = __dst - __src;
  }

  v16 = v15 >> 3;
  v17 = a3 - __dst;
  v18 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v18 = a3 - __dst;
  }

  v19 = v18 >> 3;
  if (v16 < v18 >> 3)
  {
    if (a4 != __src || &__src[8 * v16] <= a4)
    {
      memmove(a4, __src, 8 * v16);
    }

    v82 = (v11 + 8 * v16);
    if (v14 >= 8 && __dst < v12)
    {
      v21 = __dst;
      do
      {
        v22 = *v21;
        if ((*v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_109;
        }

        v23 = v21;
        v24 = *v11;
        swift_beginAccess();
        v25 = *(a7 + 16);
        if (!v25)
        {
          goto LABEL_108;
        }

        v26 = v25[1];
        if (v22 >= v26)
        {
          goto LABEL_109;
        }

        v27 = v25 + 8;
        if ((*(v25 + (v22 >> 3) + 64) >> (v22 & 7)))
        {
          v28 = *v25 + 7;
          if (__OFADD__(*v25, 7))
          {
            __break(1u);
            goto LABEL_104;
          }

          if (v28 < 0)
          {
            v28 = *v25 + 14;
          }

          v29 = v28 >> 3;
          v31 = v29 - 1;
          v30 = v29 < 1;
          v32 = v29 + 62;
          if (!v30)
          {
            v32 = v31;
          }

          v33 = *(v27 + v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v33 = 2;
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_109;
          }
        }

        if (v24 >= v26)
        {
          goto LABEL_109;
        }

        if ((*(v27 + (v24 >> 3)) >> (v24 & 7)))
        {
          v34 = *v25;
          v35 = __OFADD__(v34, 7);
          v36 = v34 + 7;
          if (v35)
          {
            goto LABEL_106;
          }

          if (v33 == 2)
          {
            goto LABEL_32;
          }

          v37 = v36 / 8;
          v38 = v37 - 1;
          v30 = v37 < 1;
          v39 = v37 + 62;
          if (!v30)
          {
            v39 = v38;
          }

          v40 = *(v27 + v24 + (v39 & 0xFFFFFFFFFFFFFFC0) + 64);
          v84 = v33;
          v83 = v40;
          v41 = a8(&v84, &v83);
          if (v9)
          {
            v73 = &v82[-v11 + 7];
            if (&v82[-v11] >= 0)
            {
              v73 = &v82[-v11];
            }

            if (v13 < v11 || v13 >= v11 + (v73 & 0xFFFFFFFFFFFFFFF8) || v13 != v11)
            {
              v69 = 8 * (v73 >> 3);
              v70 = v13;
              goto LABEL_86;
            }

            goto LABEL_88;
          }

          if ((v41 & 1) == 0)
          {
LABEL_32:
            v42 = v11;
            v43 = v13 == v11;
            v11 += 8;
            v21 = v23;
            if (v43)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v13 = *v42;
            goto LABEL_34;
          }
        }

        else if (v33 == 2)
        {
          goto LABEL_32;
        }

        v42 = v23;
        v21 = v23 + 8;
        if (v13 != v23)
        {
          goto LABEL_33;
        }

LABEL_34:
        v13 += 8;
      }

      while (v11 < v82 && v21 < v12);
    }

    v44 = v13;
LABEL_80:
    v68 = &v82[-v11 + 7];
    if (&v82[-v11] >= 0)
    {
      v68 = &v82[-v11];
    }

    if (v44 < v11 || v44 >= v11 + (v68 & 0xFFFFFFFFFFFFFFF8) || v44 != v11)
    {
      v69 = 8 * (v68 >> 3);
      v70 = v44;
LABEL_86:
      v71 = v11;
LABEL_87:
      memmove(v70, v71, v69);
    }

    goto LABEL_88;
  }

  v44 = __dst;
  if (a4 != __dst || &__dst[8 * v19] <= a4)
  {
    memmove(a4, __dst, 8 * v19);
  }

  v82 = (v11 + 8 * v19);
  if (v17 < 8 || v44 <= v13)
  {
    goto LABEL_80;
  }

  __srca = v11;
  v45 = -v11;
  v76 = -v11;
LABEL_46:
  v78 = v10;
  __dsta = v44;
  v46 = v44 - 8;
  v47 = v82;
  v48 = &v82[v45];
  v49 = v12;
  while (1)
  {
    v51 = *(v47 - 1);
    v47 -= 8;
    v50 = v51;
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    v52 = *v46;
    swift_beginAccess();
    v53 = *(a7 + 16);
    if (!v53)
    {
      goto LABEL_107;
    }

    v54 = v53[1];
    if (v50 >= v54)
    {
      goto LABEL_109;
    }

    v55 = v53 + 8;
    if ((*(v53 + (v50 >> 3) + 64) >> (v50 & 7)))
    {
      v56 = *v53 + 7;
      if (__OFADD__(*v53, 7))
      {
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      if (v56 < 0)
      {
        v56 = *v53 + 14;
      }

      v57 = v56 >> 3;
      v58 = v57 - 1;
      v30 = v57 < 1;
      v59 = v57 + 62;
      if (!v30)
      {
        v59 = v58;
      }

      v60 = *(v55 + v50 + (v59 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v60 = 2;
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }
    }

    if (v52 >= v54)
    {
      goto LABEL_109;
    }

    if ((*(v55 + (v52 >> 3)) >> (v52 & 7)))
    {
      break;
    }

    v12 = v49 - 8;
    if (v60 != 2)
    {
LABEL_72:
      if (v49 != __dsta)
      {
        *v12 = *v46;
      }

      v10 = v78;
      if (v82 <= __srca || (v44 = v46, v45 = v76, v46 <= v13))
      {
        v44 = v46;
LABEL_79:
        v11 = __srca;
        goto LABEL_80;
      }

      goto LABEL_46;
    }

LABEL_70:
    if (v82 != v49)
    {
      *v12 = *v47;
    }

    v48 -= 8;
    v82 = v47;
    v49 = v12;
    if (v47 <= __srca)
    {
      v82 = v47;
      v44 = __dsta;
      goto LABEL_79;
    }
  }

  v61 = *v53;
  v35 = __OFADD__(v61, 7);
  v62 = v61 + 7;
  if (v35)
  {
    goto LABEL_105;
  }

  v12 = v49 - 8;
  if (v60 == 2)
  {
    goto LABEL_70;
  }

  v63 = v62 / 8;
  v64 = v63 - 1;
  v30 = v63 < 1;
  v65 = v63 + 62;
  if (!v30)
  {
    v65 = v64;
  }

  v66 = *(v55 + v52 + (v65 & 0xFFFFFFFFFFFFFFC0) + 64);
  v84 = v60;
  v83 = v66;
  v67 = a8(&v84, &v83);
  if (!v78)
  {
    if (v67)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  if (v48 >= 0)
  {
    v74 = v48;
  }

  else
  {
    v74 = v48 + 7;
  }

  v75 = v74 >> 3;
  v70 = __dsta;
  v71 = __srca;
  if (__dsta < __srca || __dsta >= &__srca[v74 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dsta, __srca, 8 * v75);
  }

  else if (__dsta != __srca)
  {
    v69 = 8 * v75;
    goto LABEL_87;
  }

LABEL_88:

  return 1;
}

uint64_t sub_21B305EF4(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *), uint64_t a9)
{
  v10 = v9;
  v141 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v15 = 0;
    v132 = a6;
    v133 = MEMORY[0x277D84F90];
    v138 = a7;
    v124 = a4;
LABEL_5:
    v16 = v15;
    v17 = v15 + 1;
    if (v15 + 1 >= v13)
    {
      v39 = v133;
      goto LABEL_49;
    }

    v18 = *a3;
    v19 = sub_21B2FF264(*(*a3 + 8 * v17), *(*a3 + 8 * v15), a5, a6, a7, a8);
    if (v9)
    {
      goto LABEL_145;
    }

    v20 = v19;
    v17 = v16 + 2;
    if (v16 + 2 >= v13)
    {
      v39 = v133;
      if (v19)
      {
LABEL_36:
        if (v17 < v16)
        {
          goto LABEL_168;
        }

LABEL_37:
        if (v16 < v17)
        {
          v40 = v17 - 1;
          v41 = v16;
          while (1)
          {
            if (v41 != v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_175;
              }

              v42 = *(v43 + 8 * v41);
              *(v43 + 8 * v41) = *(v43 + 8 * v40);
              *(v43 + 8 * v40) = v42;
            }

            v29 = ++v41 < v40--;
            if (!v29)
            {
              goto LABEL_49;
            }
          }
        }
      }

      goto LABEL_49;
    }

    v21 = (v18 + 8 * v16 + 16);
    while (1)
    {
      v22 = *v21;
      if ((*v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_178;
      }

      v23 = *(v21 - 1);
      swift_beginAccess();
      v24 = *(a7 + 16);
      if (!v24)
      {
        goto LABEL_174;
      }

      v25 = v24[1];
      if (v22 >= v25)
      {
        goto LABEL_178;
      }

      v26 = v24 + 8;
      if ((*(v24 + (v22 >> 3) + 64) >> (v22 & 7)))
      {
        v27 = *v24 + 7;
        if (__OFADD__(*v24, 7))
        {
          goto LABEL_163;
        }

        if (v27 < 0)
        {
          v27 = *v24 + 14;
        }

        v28 = v27 >> 3;
        v30 = v28 - 1;
        v29 = v28 < 1;
        v31 = v28 + 62;
        if (!v29)
        {
          v31 = v30;
        }

        v32 = *(v26 + v22 + (v31 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v32 = 2;
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_178;
        }
      }

      if (v23 >= v25)
      {
        goto LABEL_178;
      }

      if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
      {
        break;
      }

      if (v32 == 2)
      {
        goto LABEL_9;
      }

      if ((v20 & 1) == 0)
      {
        v39 = v133;
        goto LABEL_49;
      }

LABEL_10:
      ++v21;
      if (v13 == ++v17)
      {
        v44 = v20;
        v17 = v13;
LABEL_48:
        v39 = v133;
        if (v44)
        {
          goto LABEL_36;
        }

LABEL_49:
        v45 = a3[1];
        if (v17 >= v45)
        {
          goto LABEL_57;
        }

        if (__OFSUB__(v17, v16))
        {
          goto LABEL_167;
        }

        if (v17 - v16 >= v124)
        {
LABEL_57:
          if (v17 < v16)
          {
            goto LABEL_166;
          }

          goto LABEL_58;
        }

        v46 = v16 + v124;
        if (__OFADD__(v16, v124))
        {
          goto LABEL_169;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 >= v16)
        {
          if (v17 == v46)
          {
            goto LABEL_57;
          }

          v99 = *a3;
          v100 = (*a3 + 8 * v17 - 8);
          v129 = v46;
          v101 = v16 - v17;
          do
          {
            v127 = v17;
            v102 = *(v99 + 8 * v17);
            v103 = v101;
            __src = v100;
            do
            {
              if ((v102 & 0x8000000000000000) != 0)
              {
                goto LABEL_178;
              }

              v104 = *v100;
              swift_beginAccess();
              v105 = *(v138 + 16);
              if (!v105)
              {
                goto LABEL_172;
              }

              v106 = v105[1];
              if (v102 >= v106)
              {
                goto LABEL_178;
              }

              v107 = v105 + 8;
              if ((*(v105 + (v102 >> 3) + 64) >> (v102 & 7)))
              {
                v108 = *v105 + 7;
                if (__OFADD__(*v105, 7))
                {
                  goto LABEL_151;
                }

                if (v108 < 0)
                {
                  v108 = *v105 + 14;
                }

                v109 = v108 >> 3;
                v110 = v109 - 1;
                v29 = v109 < 1;
                v111 = v109 + 62;
                if (!v29)
                {
                  v111 = v110;
                }

                v112 = *(v107 + v102 + (v111 & 0xFFFFFFFFFFFFFFC0) + 64);
                if ((v104 & 0x8000000000000000) != 0)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v112 = 2;
                if ((v104 & 0x8000000000000000) != 0)
                {
                  goto LABEL_178;
                }
              }

              if (v104 >= v106)
              {
                goto LABEL_178;
              }

              if ((*(v107 + (v104 >> 3)) >> (v104 & 7)))
              {
                v113 = *v105;
                v63 = __OFADD__(v113, 7);
                v114 = v113 + 7;
                if (v63)
                {
                  goto LABEL_152;
                }

                if (v112 == 2)
                {
                  break;
                }

                v115 = v114 / 8;
                v116 = v115 - 1;
                v29 = v115 < 1;
                v117 = v115 + 62;
                if (!v29)
                {
                  v117 = v116;
                }

                v118 = *(v107 + v104 + (v117 & 0xFFFFFFFFFFFFFFC0) + 64);
                v140 = v112;
                v139 = v118;
                v119 = a8(&v140, &v139);
                if (v9)
                {
                  goto LABEL_145;
                }

                if ((v119 & 1) == 0)
                {
                  break;
                }
              }

              else if (v112 == 2)
              {
                break;
              }

              if (!v99)
              {
                goto LABEL_173;
              }

              v120 = *v100;
              v102 = *(v100 + 1);
              *v100 = v102;
              *(v100 + 1) = v120;
              v100 -= 8;
            }

            while (!__CFADD__(v103++, 1));
            v17 = v127 + 1;
            v100 = __src + 8;
            --v101;
          }

          while (v127 + 1 != v129);
          v17 = v129;
          v39 = v133;
          if (v129 < v16)
          {
            goto LABEL_166;
          }

LABEL_58:
          v126 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21B2356AC(0, *(v39 + 2) + 1, 1, v39);
          }

          v48 = *(v39 + 2);
          v47 = *(v39 + 3);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v39 = sub_21B2356AC((v47 > 1), v48 + 1, 1, v39);
          }

          *(v39 + 2) = v49;
          v50 = v39 + 32;
          v51 = &v39[16 * v48 + 32];
          *v51 = v16;
          *(v51 + 1) = v17;
          v141 = v39;
          v130 = *a1;
          if (!*a1)
          {
            goto LABEL_176;
          }

          v133 = v39;
          if (!v48)
          {
LABEL_4:
            v13 = a3[1];
            v15 = v126;
            a6 = v132;
            a7 = v138;
            if (v126 >= v13)
            {
              goto LABEL_139;
            }

            goto LABEL_5;
          }

          v128 = v39 + 32;
          while (2)
          {
            v52 = v49 - 1;
            if (v49 >= 4)
            {
              v57 = &v50[16 * v49];
              v58 = *(v57 - 8);
              v59 = *(v57 - 7);
              v63 = __OFSUB__(v59, v58);
              v60 = v59 - v58;
              if (v63)
              {
                goto LABEL_153;
              }

              v62 = *(v57 - 6);
              v61 = *(v57 - 5);
              v63 = __OFSUB__(v61, v62);
              v55 = v61 - v62;
              v56 = v63;
              if (v63)
              {
                goto LABEL_154;
              }

              v64 = &v39[16 * v49];
              v66 = *v64;
              v65 = *(v64 + 1);
              v63 = __OFSUB__(v65, v66);
              v67 = v65 - v66;
              if (v63)
              {
                goto LABEL_156;
              }

              v63 = __OFADD__(v55, v67);
              v68 = v55 + v67;
              if (v63)
              {
                goto LABEL_159;
              }

              if (v68 >= v60)
              {
                v86 = &v50[16 * v52];
                v88 = *v86;
                v87 = *(v86 + 1);
                v63 = __OFSUB__(v87, v88);
                v89 = v87 - v88;
                if (v63)
                {
                  goto LABEL_165;
                }

                if (v55 < v89)
                {
                  v52 = v49 - 2;
                }
              }

              else
              {
LABEL_78:
                if (v56)
                {
                  goto LABEL_155;
                }

                v69 = &v39[16 * v49];
                v71 = *v69;
                v70 = *(v69 + 1);
                v72 = __OFSUB__(v70, v71);
                v73 = v70 - v71;
                v74 = v72;
                if (v72)
                {
                  goto LABEL_158;
                }

                v75 = &v50[16 * v52];
                v77 = *v75;
                v76 = *(v75 + 1);
                v63 = __OFSUB__(v76, v77);
                v78 = v76 - v77;
                if (v63)
                {
                  goto LABEL_161;
                }

                if (__OFADD__(v73, v78))
                {
                  goto LABEL_162;
                }

                if (v73 + v78 < v55)
                {
                  goto LABEL_92;
                }

                if (v55 < v78)
                {
                  v52 = v49 - 2;
                }
              }
            }

            else
            {
              if (v49 == 3)
              {
                v53 = *(v39 + 4);
                v54 = *(v39 + 5);
                v63 = __OFSUB__(v54, v53);
                v55 = v54 - v53;
                v56 = v63;
                goto LABEL_78;
              }

              v79 = &v39[16 * v49];
              v81 = *v79;
              v80 = *(v79 + 1);
              v63 = __OFSUB__(v80, v81);
              v73 = v80 - v81;
              v74 = v63;
LABEL_92:
              if (v74)
              {
                goto LABEL_157;
              }

              v82 = &v50[16 * v52];
              v84 = *v82;
              v83 = *(v82 + 1);
              v63 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v63)
              {
                goto LABEL_160;
              }

              if (v85 < v73)
              {
                goto LABEL_3;
              }
            }

            if (v52 - 1 >= v49)
            {
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
              break;
            }

            v90 = *a3;
            if (!*a3)
            {
              goto LABEL_171;
            }

            v91 = &v50[16 * v52 - 16];
            v92 = *v91;
            v93 = v52;
            v94 = &v50[16 * v52];
            v95 = *(v94 + 1);
            __srca = (v90 + 8 * *v91);
            v96 = (v90 + 8 * *v94);
            v97 = (v90 + 8 * v95);

            sub_21B30591C(__srca, v96, v97, v130, a5, v132, v138, a8, a9);
            if (v9)
            {
              v141 = v133;
              goto LABEL_145;
            }

            v39 = v133;
            if (v95 < v92)
            {
              goto LABEL_148;
            }

            v98 = *(v133 + 2);
            if (v93 > v98)
            {
              goto LABEL_149;
            }

            *v91 = v92;
            *(v91 + 1) = v95;
            if (v93 >= v98)
            {
              goto LABEL_150;
            }

            v49 = v98 - 1;
            memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
            *(v133 + 2) = v98 - 1;
            v50 = v128;
            if (v98 <= 2)
            {
LABEL_3:
              v141 = v39;
              goto LABEL_4;
            }

            continue;
          }
        }

        __break(1u);
LABEL_171:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_176:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_177:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_178:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }
    }

    v33 = *v24;
    v63 = __OFADD__(v33, 7);
    v34 = v33 + 7;
    if (v63)
    {
      goto LABEL_164;
    }

    if (v32 != 2)
    {
      v35 = v34 / 8;
      v36 = v35 - 1;
      v29 = v35 < 1;
      v37 = v35 + 62;
      if (!v29)
      {
        v37 = v36;
      }

      v38 = *(v26 + v23 + (v37 & 0xFFFFFFFFFFFFFFC0) + 64);
      v140 = v32;
      v139 = v38;
      if ((v20 ^ a8(&v140, &v139)))
      {
        v44 = v20;
        goto LABEL_48;
      }

      goto LABEL_10;
    }

LABEL_9:
    if (v20)
    {
      v39 = v133;
      if (v17 < v16)
      {
        goto LABEL_168;
      }

      goto LABEL_37;
    }

    goto LABEL_10;
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_139:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_177;
  }

  sub_21B3070AC(&v141, v122, a3, a5, a6, a7, a8, a9, sub_21B30591C);
  if (v10)
  {

LABEL_145:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B3068B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *))
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v35 = v13;
    v36 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v15 = *v12;
      result = swift_beginAccess();
      v16 = *(a7 + 16);
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16[1];
      if (v14 >= v17)
      {
        break;
      }

      v18 = v16 + 8;
      if ((*(v16 + (v14 >> 3) + 64) >> (v14 & 7)))
      {
        v19 = *v16 + 7;
        if (__OFADD__(*v16, 7))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

        if (v19 < 0)
        {
          v19 = *v16 + 14;
        }

        v20 = v19 >> 3;
        v22 = v20 - 1;
        v21 = v20 < 1;
        v23 = v20 + 62;
        if (!v21)
        {
          v23 = v22;
        }

        v24 = *(v18 + v14 + (v23 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v24 = 2;
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v15 >= v17)
      {
        break;
      }

      if ((*(v18 + (v15 >> 3)) >> (v15 & 7)))
      {
        v25 = *v16;
        v26 = __OFADD__(v25, 7);
        v27 = v25 + 7;
        if (v26)
        {
          goto LABEL_33;
        }

        if (v24 == 2)
        {
          goto LABEL_4;
        }

        v28 = v27 / 8;
        v29 = v28 - 1;
        v21 = v28 < 1;
        v30 = v28 + 62;
        if (!v21)
        {
          v30 = v29;
        }

        v31 = *(v18 + v15 + (v30 & 0xFFFFFFFFFFFFFFC0) + 64);
        v39 = v24;
        v38 = v31;
        result = a8(&v39, &v38);
        if (v8)
        {
          return result;
        }

        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v24 == 2)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      v32 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v32;
      --v12;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v36 + 1;
        v13 = v35 - 1;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B306AEC(char *__dst, char *__src, char *a3, char *a4, int a5, int a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *), uint64_t a9)
{
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = __src;
  v14 = __dst;
  v15 = __src - __dst;
  v16 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v16 = __src - __dst;
  }

  v17 = v16 >> 3;
  v18 = a3 - __src;
  v19 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v19 = a3 - __src;
  }

  v20 = v19 >> 3;
  if (v17 < v19 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v17] <= a4)
    {
      memmove(a4, __dst, 8 * v17);
      v13 = __src;
    }

    v81 = (v11 + 8 * v17);
    if (v15 < 8)
    {
      goto LABEL_10;
    }

    while (1)
    {
      if (v13 >= v12)
      {
        goto LABEL_10;
      }

      v24 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v25 = v13;
      v26 = *v11;
      swift_beginAccess();
      v27 = *(a7 + 16);
      if (!v27)
      {
        goto LABEL_104;
      }

      v28 = v27[1];
      if (v24 >= v28)
      {
        goto LABEL_105;
      }

      v29 = v27 + 8;
      v30 = *(v27 + (v24 >> 3) + 64) & (1 << (v24 & 7));
      if (v30)
      {
        v31 = *v27 + 7;
        if (__OFADD__(*v27, 7))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v31 < 0)
        {
          v31 = *v27 + 14;
        }

        v32 = v31 >> 3;
        v34 = v32 - 1;
        v33 = v32 < 1;
        v35 = v32 + 62;
        if (!v33)
        {
          v35 = v34;
        }

        v36 = *(&v29[v24 + 8] + (v35 & 0xFFFFFFFFFFFFFFC0));
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v36 = 0;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v26 >= v28)
      {
        goto LABEL_105;
      }

      if ((*(v29 + (v26 >> 3)) >> (v26 & 7)))
      {
        v37 = *v27;
        v38 = __OFADD__(v37, 7);
        v39 = v37 + 7;
        if (v38)
        {
          goto LABEL_102;
        }

        if (v30)
        {
          v40 = v39 / 8;
          v41 = v40 - 1;
          v33 = v40 < 1;
          v42 = v40 + 62;
          if (!v33)
          {
            v42 = v41;
          }

          v43 = *(&v29[v26 + 8] + (v42 & 0xFFFFFFFFFFFFFFC0));
          v83 = v36;
          v82 = v43;
          v44 = a8(&v83, &v82);
          if (v9)
          {
            v73 = &v81[-v11 + 7];
            if (&v81[-v11] >= 0)
            {
              v73 = &v81[-v11];
            }

            if (v14 < v11 || v14 >= v11 + (v73 & 0xFFFFFFFFFFFFFFF8) || v14 != v11)
            {
              v70 = 8 * (v73 >> 3);
              v71 = v14;
              goto LABEL_83;
            }

            goto LABEL_84;
          }

          if (v44)
          {
LABEL_37:
            v22 = v25;
            v13 = v25 + 8;
            if (v14 == v25)
            {
              goto LABEL_13;
            }

LABEL_12:
            *v14 = *v22;
            goto LABEL_13;
          }
        }
      }

      else if (v30)
      {
        goto LABEL_37;
      }

      v22 = v11;
      v23 = v14 == v11;
      v11 += 8;
      v13 = v25;
      if (!v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      v14 += 8;
      if (v11 >= v81)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v20] <= a4)
  {
    memmove(a4, __src, 8 * v20);
    v13 = __src;
  }

  v81 = (v11 + 8 * v20);
  if (v18 < 8 || v13 <= v14)
  {
    goto LABEL_77;
  }

  v46 = -v11;
  v76 = v14;
  while (2)
  {
    v78 = v10;
    __dsta = v13;
    v14 = v13 - 8;
    v47 = v81;
    v48 = &v81[v46];
    v49 = v12;
    while (1)
    {
      v51 = *(v47 - 1);
      v47 -= 8;
      v50 = v51;
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v52 = *v14;
      swift_beginAccess();
      v53 = *(a7 + 16);
      if (!v53)
      {
        goto LABEL_103;
      }

      v54 = v53[1];
      if (v50 >= v54)
      {
        goto LABEL_105;
      }

      v55 = v53 + 8;
      v56 = *(v53 + (v50 >> 3) + 64) & (1 << (v50 & 7));
      if (v56)
      {
        v57 = *v53 + 7;
        if (__OFADD__(*v53, 7))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          result = sub_21B34B824();
          __break(1u);
          return result;
        }

        if (v57 < 0)
        {
          v57 = *v53 + 14;
        }

        v58 = v57 >> 3;
        v59 = v58 - 1;
        v33 = v58 < 1;
        v60 = v58 + 62;
        if (!v33)
        {
          v60 = v59;
        }

        v61 = *(&v55[v50 + 8] + (v60 & 0xFFFFFFFFFFFFFFC0));
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v61 = 0;
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v52 >= v54)
      {
        goto LABEL_105;
      }

      if (((*(v55 + (v52 >> 3)) >> (v52 & 7)) & 1) == 0)
      {
        break;
      }

      v62 = *v53;
      v38 = __OFADD__(v62, 7);
      v63 = v62 + 7;
      if (v38)
      {
        goto LABEL_101;
      }

      v12 = v49 - 8;
      if (v56)
      {
        v64 = v63 / 8;
        v65 = v64 - 1;
        v33 = v64 < 1;
        v66 = v64 + 62;
        if (!v33)
        {
          v66 = v65;
        }

        v67 = *(&v55[v52 + 8] + (v66 & 0xFFFFFFFFFFFFFFC0));
        v83 = v61;
        v82 = v67;
        v68 = a8(&v83, &v82);
        if (v78)
        {
          if (v48 >= 0)
          {
            v74 = v48;
          }

          else
          {
            v74 = v48 + 7;
          }

          v75 = v74 >> 3;
          v71 = __dsta;
          if (__dsta < v11 || __dsta >= v11 + (v74 & 0xFFFFFFFFFFFFFFF8))
          {
            memmove(__dsta, v11, 8 * v75);
            goto LABEL_84;
          }

          if (__dsta == v11)
          {
            goto LABEL_84;
          }

          v70 = 8 * v75;
          goto LABEL_83;
        }

        if (v68)
        {
          goto LABEL_71;
        }
      }

LABEL_69:
      if (v81 != v49)
      {
        *v12 = *v47;
      }

      v48 -= 8;
      v81 = v47;
      v49 = v12;
      if (v47 <= v11)
      {
        v81 = v47;
        v13 = __dsta;
        goto LABEL_77;
      }
    }

    v12 = v49 - 8;
    if (!v56)
    {
      goto LABEL_69;
    }

LABEL_71:
    if (v49 != __dsta)
    {
      *v12 = *v14;
    }

    v10 = v78;
    if (v81 > v11)
    {
      v13 = v14;
      v46 = -v11;
      if (v14 > v76)
      {
        continue;
      }
    }

    break;
  }

LABEL_10:
  v13 = v14;
LABEL_77:
  v69 = &v81[-v11 + 7];
  if (&v81[-v11] >= 0)
  {
    v69 = &v81[-v11];
  }

  if (v13 < v11 || v13 >= v11 + (v69 & 0xFFFFFFFFFFFFFFF8) || v13 != v11)
  {
    v70 = 8 * (v69 >> 3);
    v71 = v13;
LABEL_83:
    memmove(v71, v11, v70);
  }

LABEL_84:

  return 1;
}

uint64_t sub_21B3070AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v9;
  v12 = a1;
  v13 = *a1;

  v30 = a6;

  v32 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v32 = sub_21B23A330(v32);
  }

  v24 = v12;
  *v12 = v32;
  v15 = (v32 + 16);
  v14 = *(v32 + 2);
  if (v14 < 2)
  {
LABEL_9:

    *v24 = v32;
    return 1;
  }

  else
  {
    while (1)
    {
      v16 = *a3;
      if (!*a3)
      {
        break;
      }

      v17 = &v32[16 * v14];
      v12 = *v17;
      v18 = &v15[2 * v14];
      v19 = v18[1];
      v34 = v16 + 8 * *v17;
      v33 = v16 + 8 * *v18;
      v20 = v16 + 8 * v19;

      a9(v34, v33, v20, a2, a4, a5, v30, a7, a8);
      if (v10)
      {
        *v24 = v32;

        return 1;
      }

      if (v19 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = *v15;
      if (v14 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v17 = v12;
      *(v17 + 1) = v19;
      v22 = v21 - v14;
      if (v21 < v14)
      {
        goto LABEL_14;
      }

      v14 = v21 - 1;
      memmove(v18, v18 + 2, 16 * v22);
      *v15 = v14;
      if (v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v24 = v32;
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3072AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *), uint64_t a9)
{
  v10 = v9;
  v142 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v133 = a6;
    v134 = MEMORY[0x277D84F90];
    v139 = a7;
    while (1)
    {
      v15 = v14;
      v16 = v14 + 1;
      if (v14 + 1 >= v13)
      {
        v38 = v134;
LABEL_35:
        v39 = a4;
        goto LABEL_48;
      }

      v17 = *a3;
      v18 = sub_21B2FF3BC(*(*a3 + 8 * v16), *(*a3 + 8 * v14), a5, a6, a7, a8);
      if (v9)
      {
        goto LABEL_146;
      }

      v19 = v18;
      v16 = v15 + 2;
      if (v15 + 2 >= v13)
      {
        v39 = a4;
        v38 = v134;
        if ((v18 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_37:
        if (v16 < v15)
        {
          goto LABEL_171;
        }

        goto LABEL_38;
      }

      v130 = v15;
      v20 = (v17 + 8 * v15 + 16);
      do
      {
        v21 = *v20;
        if ((*v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_179;
        }

        v22 = *(v20 - 1);
        swift_beginAccess();
        v23 = *(a7 + 16);
        if (!v23)
        {
          goto LABEL_175;
        }

        v24 = v23[1];
        if (v21 >= v24)
        {
          goto LABEL_179;
        }

        v25 = v23 + 8;
        v26 = *(v23 + (v21 >> 3) + 64) & (1 << (v21 & 7));
        if (v26)
        {
          v27 = *v23 + 7;
          if (__OFADD__(*v23, 7))
          {
            goto LABEL_164;
          }

          if (v27 < 0)
          {
            v27 = *v23 + 14;
          }

          v28 = v27 >> 3;
          v30 = v28 - 1;
          v29 = v28 < 1;
          v31 = v28 + 62;
          if (!v29)
          {
            v31 = v30;
          }

          v32 = *(&v25[v21 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0));
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v32 = 0;
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }
        }

        if (v22 >= v24)
        {
          goto LABEL_179;
        }

        if ((*(v25 + (v22 >> 3)) >> (v22 & 7)))
        {
          v33 = *v23;
          v63 = __OFADD__(v33, 7);
          v34 = v33 + 7;
          if (v63)
          {
            goto LABEL_165;
          }

          if (v26)
          {
            v35 = v34 / 8;
            v36 = v35 - 1;
            v29 = v35 < 1;
            v37 = v35 + 62;
            if (!v29)
            {
              v37 = v36;
            }

            v140 = *(&v25[v22 + 8] + (v37 & 0xFFFFFFFFFFFFFFC0));
            v141 = v32;
            if ((v19 ^ a8(&v141, &v140)))
            {
              v44 = v19;
              goto LABEL_47;
            }

            goto LABEL_10;
          }
        }

        else if (v26)
        {
          if ((v19 & 1) == 0)
          {
            v38 = v134;
            v39 = a4;
            v15 = v130;
            goto LABEL_48;
          }

          goto LABEL_10;
        }

        if (v19)
        {
          v38 = v134;
          v39 = a4;
          v15 = v130;
          if (v16 < v130)
          {
            goto LABEL_171;
          }

LABEL_38:
          if (v15 < v16)
          {
            v40 = v16 - 1;
            v41 = v15;
            while (1)
            {
              if (v41 != v40)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v42 = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = *(v43 + 8 * v40);
                *(v43 + 8 * v40) = v42;
              }

              v29 = ++v41 < v40--;
              if (!v29)
              {
                goto LABEL_35;
              }
            }
          }

          goto LABEL_48;
        }

LABEL_10:
        ++v20;
        ++v16;
      }

      while (v13 != v16);
      v44 = v19;
      v16 = v13;
LABEL_47:
      v39 = a4;
      v15 = v130;
      v38 = v134;
      if (v44)
      {
        goto LABEL_37;
      }

LABEL_48:
      v45 = a3[1];
      if (v16 >= v45)
      {
        goto LABEL_56;
      }

      if (__OFSUB__(v16, v15))
      {
        goto LABEL_168;
      }

      if (v16 - v15 >= v39)
      {
LABEL_56:
        if (v16 < v15)
        {
          goto LABEL_167;
        }

        goto LABEL_57;
      }

      v46 = v15 + v39;
      if (__OFADD__(v15, v39))
      {
        goto LABEL_169;
      }

      if (v46 >= v45)
      {
        v46 = a3[1];
      }

      if (v46 < v15)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_177:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_178:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_179:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      if (v16 == v46)
      {
        goto LABEL_56;
      }

      v99 = *a3;
      v100 = (*a3 + 8 * v16 - 8);
      v129 = v46;
      v101 = v15 - v16;
      do
      {
        v127 = v16;
        v102 = *(v99 + 8 * v16);
        v103 = v101;
        __dst = v100;
        do
        {
          if ((v102 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }

          v104 = *v100;
          swift_beginAccess();
          v105 = *(v139 + 16);
          if (!v105)
          {
            goto LABEL_173;
          }

          v106 = v105[1];
          if (v102 >= v106)
          {
            goto LABEL_179;
          }

          v107 = v105 + 8;
          v108 = *(v105 + (v102 >> 3) + 64) & (1 << (v102 & 7));
          if (v108)
          {
            v109 = *v105 + 7;
            if (__OFADD__(*v105, 7))
            {
              goto LABEL_152;
            }

            if (v109 < 0)
            {
              v109 = *v105 + 14;
            }

            v110 = v109 >> 3;
            v111 = v110 - 1;
            v29 = v110 < 1;
            v112 = v110 + 62;
            if (!v29)
            {
              v112 = v111;
            }

            v113 = *(&v107[v102 + 8] + (v112 & 0xFFFFFFFFFFFFFFC0));
            if ((v104 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }
          }

          else
          {
            v113 = 0;
            if ((v104 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }
          }

          if (v104 >= v106)
          {
            goto LABEL_179;
          }

          if ((*(v107 + (v104 >> 3)) >> (v104 & 7)))
          {
            v114 = *v105;
            v63 = __OFADD__(v114, 7);
            v115 = v114 + 7;
            if (v63)
            {
              goto LABEL_153;
            }

            if (!v108)
            {
              break;
            }

            v116 = v115 / 8;
            v117 = v116 - 1;
            v29 = v116 < 1;
            v118 = v116 + 62;
            if (!v29)
            {
              v118 = v117;
            }

            v140 = *(&v107[v104 + 8] + (v118 & 0xFFFFFFFFFFFFFFC0));
            v141 = v113;
            v119 = a8(&v141, &v140);
            if (v9)
            {
              goto LABEL_146;
            }

            if ((v119 & 1) == 0)
            {
              break;
            }
          }

          else if (!v108)
          {
            break;
          }

          if (!v99)
          {
            goto LABEL_174;
          }

          v120 = *v100;
          v102 = *(v100 + 1);
          *v100 = v102;
          *(v100 + 1) = v120;
          v100 -= 8;
        }

        while (!__CFADD__(v103++, 1));
        v16 = v127 + 1;
        v100 = __dst + 8;
        --v101;
      }

      while (v127 + 1 != v129);
      v16 = v129;
      v38 = v134;
      if (v129 < v15)
      {
        goto LABEL_167;
      }

LABEL_57:
      v126 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_21B2356AC(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v38 = sub_21B2356AC((v47 > 1), v48 + 1, 1, v38);
      }

      *(v38 + 2) = v49;
      v50 = v38 + 32;
      v51 = &v38[16 * v48 + 32];
      *v51 = v15;
      *(v51 + 1) = v16;
      v142 = v38;
      v131 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      v134 = v38;
      if (v48)
      {
        v128 = v38 + 32;
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v38 + 4);
            v54 = *(v38 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_77:
            if (v56)
            {
              goto LABEL_156;
            }

            v69 = &v38[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_159;
            }

            v75 = &v50[16 * v52];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_163;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          v79 = &v38[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_91:
          if (v74)
          {
            goto LABEL_158;
          }

          v82 = &v50[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_161;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_98:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v90 = *a3;
          if (!*a3)
          {
            goto LABEL_172;
          }

          v91 = &v50[16 * v52 - 16];
          v92 = *v91;
          v93 = v52;
          v94 = &v50[16 * v52];
          v95 = *(v94 + 1);
          __dsta = (v90 + 8 * *v91);
          v96 = (v90 + 8 * *v94);
          v97 = (v90 + 8 * v95);

          sub_21B306AEC(__dsta, v96, v97, v131, a5, v133, v139, a8, a9);
          if (v9)
          {
            v142 = v134;
            goto LABEL_146;
          }

          v38 = v134;
          if (v95 < v92)
          {
            goto LABEL_149;
          }

          v98 = *(v134 + 2);
          if (v93 > v98)
          {
            goto LABEL_150;
          }

          *v91 = v92;
          *(v91 + 1) = v95;
          if (v93 >= v98)
          {
            goto LABEL_151;
          }

          v49 = v98 - 1;
          memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
          *(v134 + 2) = v98 - 1;
          v50 = v128;
          if (v98 <= 2)
          {
LABEL_3:
            v142 = v38;
            goto LABEL_4;
          }
        }

        v57 = &v50[16 * v49];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_154;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_155;
        }

        v64 = &v38[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_157;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_160;
        }

        if (v68 >= v60)
        {
          v86 = &v50[16 * v52];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_166;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_77;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v126;
      a6 = v133;
      a7 = v139;
      if (v126 >= v13)
      {
        goto LABEL_140;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_140:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B3070AC(&v142, v122, a3, a5, a6, a7, a8, a9, sub_21B306AEC);
  if (v10)
  {

LABEL_146:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B307C70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v36 = v13;
    v37 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v15 = *v12;
      result = swift_beginAccess();
      v16 = *(a7 + 16);
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16[1];
      if (v14 >= v17)
      {
        break;
      }

      v18 = v16 + 8;
      v19 = *(v16 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v19)
      {
        v20 = *v16 + 7;
        if (__OFADD__(*v16, 7))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

        if (v20 < 0)
        {
          v20 = *v16 + 14;
        }

        v21 = v20 >> 3;
        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = *(&v18[v14 + 8] + (v24 & 0xFFFFFFFFFFFFFFC0));
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v15 >= v17)
      {
        break;
      }

      if ((*(v18 + (v15 >> 3)) >> (v15 & 7)))
      {
        v26 = *v16;
        v27 = __OFADD__(v26, 7);
        v28 = v26 + 7;
        if (v27)
        {
          goto LABEL_33;
        }

        if (!v19)
        {
          goto LABEL_4;
        }

        v29 = v28 / 8;
        v30 = v29 - 1;
        v22 = v29 < 1;
        v31 = v29 + 62;
        if (!v22)
        {
          v31 = v30;
        }

        v32 = *(&v18[v15 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0));
        v40 = v25;
        v39 = v32;
        result = a8(&v40, &v39);
        if (v8)
        {
          return result;
        }

        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (!v19)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      v33 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v33;
      --v12;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v37 + 1;
        v13 = v36 - 1;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B307EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_21B34B914();
  if (result < v14)
  {
    if (v14 >= -1)
    {
      v16 = result;
      v17 = v14 / 2;
      if (v14 <= 1)
      {
        v18 = MEMORY[0x277D84F90];
      }

      else
      {
        v18 = sub_21B34AFE4();
        *(v18 + 16) = v17;
      }

      v21[0] = v18 + 32;
      v21[1] = v17;

      a7(v21, v22, a1, v16, a2, a3, a4, a5, a6);

      *(v18 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v14 < 0)
  {
    goto LABEL_12;
  }

  if (v14)
  {

    a8(0, v14, 1, a1, a2, a3, a4, a5, a6);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B308084(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = a8;
  v15 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_21B33EA0C(v15);
  }

  v16 = *(v15 + 2);
  v18[0] = v15 + 32;
  v18[1] = v16;

  sub_21B307EA8(v18, a2, a3, a4, a5, a6, a7, v19);

  *a1 = v15;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B308194(uint64_t a1)
{
  v2 = sub_21B34A8A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F3F0, &qword_21B356C10);
    v9 = sub_21B34B5F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21B30848C(&qword_27CD7F3F8, MEMORY[0x277CC99D8]);
      v16 = sub_21B34AAA4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21B30848C(qword_27CD7F400, MEMORY[0x277CC99E0]);
          v23 = sub_21B34AC54();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B30848C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B34A8A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NumericSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t NumericSummary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for NumericSummary(0, a1, a2, a4);
  *a3 = 0;
  a3[1] = 0;
  sub_21B34AA54();
  sub_21B34AA54();
  sub_21B34AA54();
  sub_21B34AA54();
  sub_21B34AA54();
  sub_21B34AA54();
  return sub_21B34AA54();
}

uint64_t NumericSummary.init(someCount:noneCount:mean:standardDeviation:min:max:median:firstQuartile:thirdQuartile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for NumericSummary(0, a11, a12, a4);
  v22 = *(*(a11 - 8) + 32);
  v22(&a9[v19[13]], a3, a11);
  v22(&a9[v19[14]], a4, a11);
  v22(&a9[v19[15]], a5, a11);
  v22(&a9[v19[16]], a6, a11);
  v22(&a9[v19[10]], a7, a11);
  v22(&a9[v19[11]], a8, a11);
  v20 = &a9[v19[12]];

  return (v22)(v20, a10, a11);
}

uint64_t NumericSummary.debugDescription.getter(uint64_t a1)
{
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DA40);
  v1 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v1);

  MEMORY[0x21CEED5E0](0x43656E6F6E20200ALL, 0xEE00203A746E756FLL);
  v2 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v2);

  MEMORY[0x21CEED5E0](0x3A6E61656D20200ALL, 0xE900000000000020);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x642D64747320200ALL, 0xEC000000203A7665);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A6E696D20200ALL, 0xE800000000000000);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A78616D20200ALL, 0xE800000000000000);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A25353220200ALL, 0xE800000000000000);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x616964656D20200ALL, 0xEB00000000203A6ELL);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A25353720200ALL, 0xE800000000000000);
  sub_21B34B9C4();
  return 0;
}

uint64_t sub_21B308E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v109 = a6;
  v97 = a2;
  v108 = a1;
  v96 = a7;
  v106 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v94[1] = v94 - v10;
  v102 = a5;
  v131 = *(a5 + 16);
  v11 = *(*(v131 + 16) + 8);
  v101 = *(v11 + 16);
  v100 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v100);
  v99 = v94 - v12;
  v13 = sub_21B34B474();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v129 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v94 - v17;
  v107 = a4;
  v110 = *(a4 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v114 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v124 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v121 = v94 - v25;
  v115 = *(a3 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v105 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v103 = v94 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v104 = v94 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v112 = v94 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v125 = v94 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v113 = v94 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v123 = v94 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v94 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v94 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v94 - v47;
  MEMORY[0x28223BE20](v46);
  v118 = v11;
  v122 = v94 - v49;
  sub_21B34B864();
  v120 = v48;
  sub_21B34AA54();
  v119 = v45;
  sub_21B34AA54();
  v50 = *(v110 + 16);
  v110 += 16;
  v98 = v50;
  v50(v20, v108, v107);
  v51 = v20;
  v52 = v121;
  sub_21B34AEC4();
  v53 = v115;
  v54 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21B34B4D4();
  v126 = *(v53 + 48);
  WitnessTable = v53 + 48;
  v55 = v126(v18, 1, a3);
  v56 = v113;
  v57 = v114;
  v58 = 0;
  v130 = v21;
  if (v55 != 1)
  {
    v94[0] = v51;
    v59 = v53;
    v60 = 0;
    v61 = *(v59 + 32);
    v59 += 32;
    v116 = v61;
    v62 = (v59 - 8);
    v111 = (v59 - 24);
    v117 = v59;
    v63 = (v59 + 8);
    v64 = v120;
    v61(v42, v18, a3);
    while (1)
    {
      result = sub_21B34B854();
      v67 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (sub_21B34AA64() & 1) != 0 || (sub_21B34AB94())
      {
        (*v62)(v64, v42, a3);
      }

      v68 = v119;
      if (sub_21B34AA64() & 1) != 0 || (sub_21B34AB84())
      {
        (*v63)(v68, v42, a3);
      }

      else
      {
        (*v111)(v42, a3);
      }

      sub_21B34B4D4();
      v65 = v126(v18, 1, a3);
      ++v60;
      v64 = v120;
      if (v65 == 1)
      {
        v57 = v114;
        v53 = v115;
        v56 = v113;
        v58 = v67;
        v21 = v130;
        v51 = v94[0];
        v54 = v121;
        goto LABEL_14;
      }

      v116(v42, v18, a3);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v69 = v56;
  v116 = *(v57 + 8);
  (v116)(v54, v21);
  v117 = v58;
  v114 = v57 + 8;
  if (v58 < 1)
  {
    sub_21B34AA54();
  }

  else
  {
    sub_21B34AA84();
    sub_21B34AA44();
    (*(v53 + 8))(v69, a3);
  }

  sub_21B34B864();
  v98(v51, v108, v107);
  sub_21B34AEC4();
  v70 = v129;
  sub_21B34B4D4();
  v71 = v70;
  v72 = v126(v70, 1, a3);
  v73 = v112;
  v74 = v104;
  v75 = v103;
  if (v72 != 1)
  {
    v121 = *(v115 + 32);
    v76 = (v115 + 8);
    do
    {
      (v121)(v69, v71, a3);
      sub_21B34B844();
      sub_21B34B844();
      sub_21B34B144();
      v77 = *v76;
      (*v76)(v75, a3);
      v77(v74, a3);
      sub_21B34B854();
      v77(v73, a3);
      v77(v69, a3);
      sub_21B34B4D4();
      v71 = v129;
    }

    while (v126(v129, 1, a3) != 1);
  }

  (v116)(v124, v130);
  swift_getAssociatedConformanceWitness();
  sub_21B34BA24();
  sub_21B34B9E4();
  v78 = sub_21B34AB84();
  v79 = v115 + 8;
  v80 = *(v115 + 8);
  v80(v69, a3);
  v115 = v79;
  v130 = v80;
  if ((v78 & 1) == 0)
  {
    v82 = sub_21B34AA54();
    goto LABEL_24;
  }

  result = v117 - 1;
  if (!__OFSUB__(v117, 1))
  {
    v81 = v112;
    sub_21B34AA84();
    sub_21B34AA44();
    v80(v81, a3);
    sub_21B34AA34();
    v82 = (v80)(v69, a3);
LABEL_24:
    MEMORY[0x28223BE20](v82);
    v83 = v102;
    v132 = sub_21B34AEE4();
    v84 = sub_21B34B054();
    swift_getWitnessTable();
    v85 = sub_21B34AF54();

    v131 = v85;
    v132 = v85;
    v129 = swift_getAssociatedConformanceWitness();
    sub_21B34BA14();
    v86 = v112;
    sub_21B34B994();
    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = v84;
    sub_21B309D08(v86, v84, WitnessTable, v83, v113);
    v87 = v130;
    v130(v86, a3);
    v132 = v85;
    sub_21B34BA14();
    v88 = v104;
    sub_21B34B994();
    v89 = v86;
    v90 = v84;
    v91 = WitnessTable;
    v92 = v102;
    sub_21B309D08(v88, v90, WitnessTable, v102, v89);
    v87(v88, a3);
    v132 = v131;
    sub_21B34BA14();
    v93 = v103;
    sub_21B34B994();
    sub_21B309D08(v93, AssociatedConformanceWitness, v91, v92, v88);
    v87(v93, a3);
    v87(v125, a3);
    v87(v122, a3);

    return NumericSummary.init(someCount:noneCount:mean:standardDeviation:min:max:median:firstQuartile:thirdQuartile:)(v117, v97, v123, v105, v120, v119, v112, v113, v96, v88, a3, v92);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B309D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a5;
  v9 = sub_21B34B9A4();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(*(a3 + 8) + 8);
  v68 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v51 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v51 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v63 = &v51 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v66 = &v51 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v61 = &v51 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  v27 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v27);
  swift_getAssociatedConformanceWitness();
  sub_21B34BA14();
  sub_21B34B994();
  v60 = a4;
  v64 = *(a4 + 16);
  v69 = a1;
  LOBYTE(a2) = sub_21B34ABA4();
  v59 = v12;
  v30 = *(v12 + 8);
  v29 = v12 + 8;
  v28 = v30;
  v30(v26, AssociatedTypeWitness);
  if (a2)
  {
    sub_21B34BA14();
    sub_21B34B994();
    v31 = sub_21B34ABB4();
    v28(v26, AssociatedTypeWitness);
    if (v31)
    {
      v62 = v28;
      if (sub_21B34B214())
      {
        return sub_21B34AA54();
      }

      if (__OFSUB__(sub_21B34B1D4(), 1))
      {
        __break(1u);
      }

      else
      {
        v33 = v64;
        sub_21B34AA84();
        v34 = v61;
        v51 = *(*(v33 + 16) + 8);
        sub_21B34B144();
        v69 = v29;
        v62(v26, AssociatedTypeWitness);
        v35 = *MEMORY[0x277D84660];
        v36 = v56;
        v52 = *(v56 + 104);
        v37 = v55;
        v38 = v57;
        v52(v55, v35, v57);
        sub_21B34AA74();
        v56 = *(v36 + 8);
        (v56)(v37, v38);
        sub_21B34A9C4();
        v52(v37, *MEMORY[0x277D84668], v38);
        sub_21B34AA74();
        (v56)(v37, v38);
        v39 = v63;
        sub_21B34A9C4();
        v40 = v66;
        if (sub_21B34AC54())
        {
          sub_21B30AF44();
          sub_21B34B7E4();
          if ((v71 & 1) == 0)
          {
            v72 = v70;
            v41 = sub_21B34B314();
            (*(v59 + 16))(v65);
            v41(&v70, 0);
            v42 = v62;
            v62(v39, AssociatedTypeWitness);
            v42(v40, AssociatedTypeWitness);
            return (v42)(v34, AssociatedTypeWitness);
          }
        }

        else
        {
          v57 = sub_21B30AF44();
          sub_21B34B7E4();
          if ((v71 & 1) == 0)
          {
            v72 = v70;
            v43 = sub_21B34B314();
            v59 = *(v59 + 16);
            (v59)(v26);
            v43(&v70, 0);
            v44 = v53;
            v64 = *(v51 + 8);
            sub_21B34B844();
            sub_21B34B144();
            v45 = v62;
            v62(v44, AssociatedTypeWitness);
            v45(v26, AssociatedTypeWitness);
            sub_21B34B7E4();
            if ((v71 & 1) == 0)
            {
              v72 = v70;
              v46 = sub_21B34B314();
              (v59)(v26);
              v46(&v70, 0);
              v47 = v66;
              sub_21B34B844();
              v48 = v54;
              sub_21B34B144();
              v45(v44, AssociatedTypeWitness);
              v45(v26, AssociatedTypeWitness);
              v49 = v58;
              sub_21B34B834();
              v45(v48, AssociatedTypeWitness);
              v45(v49, AssociatedTypeWitness);
              v45(v63, AssociatedTypeWitness);
              v45(v47, AssociatedTypeWitness);
              return (v45)(v61, AssociatedTypeWitness);
            }
          }
        }

        v70 = 0;
        v71 = 0xE000000000000000;
        sub_21B34B634();
        v50 = sub_21B34BD24();
        MEMORY[0x21CEED5E0](v50);

        MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
        MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
        MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
      }
    }
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t static NumericSummary.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (type metadata accessor for NumericSummary(0, a3, a4, a4), (sub_21B34AC54() & 1) != 0) && (sub_21B34AC54() & 1) != 0 && (sub_21B34AC54() & 1) != 0 && (sub_21B34AC54() & 1) != 0 && (sub_21B34AC54() & 1) != 0 && (sub_21B34AC54() & 1) != 0)
  {
    return sub_21B34AC54() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t NumericSummary.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x21CEEE3B0](*v2);
  MEMORY[0x21CEEE3B0](v2[1]);
  sub_21B34AAB4();
  sub_21B34AAB4();
  sub_21B34AAB4();
  sub_21B34AAB4();
  sub_21B34AAB4();
  sub_21B34AAB4();
  return sub_21B34AAB4();
}

uint64_t NumericSummary.hashValue.getter(uint64_t a1)
{
  sub_21B34BBC4();
  NumericSummary.hash(into:)(v3, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B30A988(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  NumericSummary.hash(into:)(v4, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B30AA00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B30AA94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

void sub_21B30AC30(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v19(v20);
}

uint64_t sub_21B30AE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_21B30AF44()
{
  result = qword_27CD7F488;
  if (!qword_27CD7F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F488);
  }

  return result;
}

uint64_t DataFrame.Rows.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = a1;
}

uint64_t DataFrame.Rows.subscript.setter(void *a1, uint64_t a2)
{
  v17 = *a1;
  v3 = *(*a1 + 16);
  v4 = *v2;
  if (v3 != *(*v2 + 2))
  {
LABEL_15:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v5 = v2;
  if (v3)
  {
    v6 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (v3 <= *(v17 + 16))
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        sub_21B233A74(v17 + v7 + 32, v19);
        if (v8 >= *(v4 + 2))
        {
          break;
        }

        ++v8;
        v9 = v20;
        v10 = v21;
        v11 = __swift_project_boxed_opaque_existential_1(v19, v20);
        v18[3] = v9;
        v18[4] = *(v10 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
        (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
        v13 = *&v4[v7 + 56];
        v14 = *&v4[v7 + 64];
        __swift_mutable_project_boxed_opaque_existential_1(&v4[v7 + 32], v13);
        (*(v14 + 72))(a2, v6, v18, v13, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_21B233960(v19);
        *v5 = v4;
        v7 += 40;
        if (v3 == v8)
        {
        }
      }

      __break(1u);
LABEL_13:
      v4 = sub_21B23A2F4(v4);
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t DataFrame.Rows.startIndex.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1 && *(result + 16))
    {
      return *(result + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v3)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t DataFrame.Rows.endIndex.getter()
{
  sub_21B2A6400();
  if (v1)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

Swift::Int sub_21B30B2A8(Swift::Int result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v3 = 0;
    do
    {
      --v3;
      result = DataFrame.Rows.index(before:)(result);
    }

    while (v3 > v2);
  }

  else if (a2)
  {
    do
    {
      result = DataFrame.Rows.index(after:)(result);
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int sub_21B30B2FC(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2 < 0)
  {
    v5 = 0;
    while (result != a3)
    {
      --v5;
      result = DataFrame.Rows.index(before:)(result);
      if (v5 <= v4)
      {
        return result;
      }
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    while (result != a3)
    {
      result = DataFrame.Rows.index(after:)(result);
      if (!--v4)
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Int sub_21B30B388(Swift::Int result, Swift::Int a2)
{
  if (result < a2)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = DataFrame.Rows.index(after:)(result);
      if (result == a2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < result)
  {
    v4 = 0;
    while (!__OFSUB__(v4--, 1))
    {
      result = DataFrame.Rows.index(before:)(result);
      if (result == a2)
      {
        return v4;
      }
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t DataFrame.Row.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t DataFrame.Row.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 24);
  DataFrame.subscript.getter(a1, a2, a3);
  v10 = type metadata accessor for Column(0, a3, v8, v9);
  Column.subscript.getter(v7, v10, a4);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B30E918(a1, a2, a3, a4);
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*DataFrame.Row.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t a4))(unint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = sub_21B34B474();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  DataFrame.Row.subscript.getter(a2, a3, a4, v15);
  return sub_21B30B6C8;
}

void sub_21B30B6C8(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_21B30E918(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_21B30E918((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(v5 + 24);
  DataFrame.subscript.getter(a1, a2, a3, a4);
  v11 = type metadata accessor for Column(0, a4, v9, v10);
  Column.subscript.getter(v8, v11, a5);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_21B30E9D8(a1, a2, a3, a4, a5);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_21B34B474();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  DataFrame.Row.subscript.getter(a2, a3, a4, a5, v17);
  return sub_21B30BA4C;
}

void sub_21B30BA4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    sub_21B30E9D8(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {

    sub_21B30E9D8(v4, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v11 = *v2;
  v12 = v3;
  DataFrame.subscript.getter(a1, a2, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(*(v6 + 8) + 128))(v4, v5);
  return sub_21B233960(v8);
}

uint64_t sub_21B30BC04(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a2;
  v4 = a2[1];
  v12 = *a1;
  v13 = v2;
  DataFrame.subscript.getter(v5, v4, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(*(v7 + 8) + 128))(v3, v6);
  return sub_21B233960(v9);
}

uint64_t sub_21B30BCA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_21B2832C0(a1, v14);
  v6 = *(a2 + 24);
  sub_21B2832C0(v14, v13);

  DataFrame.subscript.getter(v4, v5, v10);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(*(v8 + 8) + 136))(v6, v13, v7);
  sub_21B28EEB4(v13);
  DataFrame.subscript.setter(v10, v4, v5);
  return sub_21B28EEB4(v14);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 24);
  sub_21B2832C0(a1, v14);
  DataFrame.subscript.getter(a2, a3, v11);
  v8 = v12;
  v9 = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 136))(v7, v14, v8);
  sub_21B28EEB4(v14);
  DataFrame.subscript.setter(v11, a2, a3);
  return sub_21B28EEB4(a1);
}

uint64_t (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xA8uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[18] = a3;
  v7[19] = v3;
  v7[17] = a2;
  v9 = *(v3 + 24);
  v7[20] = v9;
  DataFrame.subscript.getter(a2, a3, v7);
  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  (*(*(v11 + 8) + 128))(v9, v10);
  sub_21B233960(v8);
  return sub_21B30BF50;
}

void sub_21B30BF50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[20];
    v5 = v2[17];
    v4 = v2[18];
    sub_21B2832C0((v2 + 5), (v2 + 9));
    sub_21B2832C0((v2 + 9), (v2 + 13));
    DataFrame.subscript.getter(v5, v4, v2);
    v6 = v2[3];
    v7 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v6);
    (*(*(v7 + 8) + 136))(v3, v2 + 13, v6);
    sub_21B28EEB4((v2 + 13));

    DataFrame.subscript.setter(v2, v5, v4);
    sub_21B28EEB4((v2 + 9));
  }

  else
  {
    v8 = v2[20];
    v10 = v2[17];
    v9 = v2[18];
    sub_21B2832C0((v2 + 5), (v2 + 9));
    DataFrame.subscript.getter(v10, v9, v2);
    v11 = v2[3];
    v12 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v11);
    (*(*(v12 + 8) + 136))(v8, v2 + 9, v11);
    sub_21B28EEB4((v2 + 9));

    DataFrame.subscript.setter(v2, v10, v9);
  }

  sub_21B28EEB4((v2 + 5));

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v3 + 2);
  v9 = *(v3 + 3);
  v20 = *v3;
  v21 = v8;
  v14 = v7;
  v15 = v6;

  DataFrame.subscript.getter(&v14, a2);

  v14 = v17;
  v15 = v18;
  v16 = v19;
  v12 = type metadata accessor for Column(0, a2, v10, v11);
  Column.subscript.getter(v9, v12, a3);
}

uint64_t sub_21B30C1B0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v12 = *a1;
  v13 = v6;
  v14 = v7;
  v11[0] = v8;
  v11[1] = v9;

  DataFrame.Row.subscript.getter(v11, v5, a4);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B30EAA4(a1, a2, a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_21B34B474();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = *a2;
  v16 = a2[1];
  v9[5] = v13;
  v9[6] = v15;
  v9[7] = v16;
  v17 = *(v3 + 2);
  v18 = *(v3 + 3);
  v21 = *v3;
  v22 = v17;
  v23 = v18;
  v20[0] = v15;
  v20[1] = v16;
  swift_bridgeObjectRetain_n();
  DataFrame.Row.subscript.getter(v20, a3, v14);

  return sub_21B30C408;
}

void sub_21B30C408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[6];
  v3 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    v11 = v4;
    v12 = v3;
    sub_21B30EAA4(v5, &v11, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    v11 = (*a1)[6];
    v12 = v3;
    sub_21B30EAA4(v6, &v11, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

Swift::Int __swiftcall DataFrame.Rows.index(after:)(Swift::Int after)
{
  v3 = 0;
  result = *(v1 + 24);
  v5 = (result + 32);
  if (!*(v1 + 40))
  {
    goto LABEL_6;
  }

LABEL_2:
  if (*(v1 + 40) != 1)
  {
    goto LABEL_25;
  }

  v6 = *(result + 16);
  if (v3 == v6)
  {
    goto LABEL_25;
  }

  if (v3 < v6)
  {
    v8 = *v5;
    v7 = v5[1];
    while (v8 > after || v7 <= after)
    {
      if (*(v1 + 40))
      {
        if (v3 >= *(result + 16))
        {
          goto LABEL_29;
        }
      }

      else if (v3)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      ++v3;
      v5 += 2;
      if (*(v1 + 40))
      {
        goto LABEL_2;
      }

LABEL_6:
      if (v3 == 1)
      {
        goto LABEL_25;
      }

      v8 = *(v1 + 24);
      v7 = *(v1 + 32);
      if (v3)
      {
        goto LABEL_31;
      }
    }

    if (*(v1 + 40))
    {
      v9 = *(result + 16);
      if (v3 >= v9)
      {
        goto LABEL_32;
      }

      v10 = after + 1;
      if (v10 < *v5 || v10 >= v5[1])
      {
        if (v3 + 1 >= v9)
        {
          goto LABEL_25;
        }

        return v5[2];
      }

      return v10;
    }

    if (v3)
    {
      goto LABEL_33;
    }

    v10 = after + 1;
    if (v10 >= result && v10 < *(v1 + 32))
    {
      return v10;
    }

LABEL_25:
    sub_21B2A6400();
    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

Swift::Int __swiftcall DataFrame.Rows.index(before:)(Swift::Int before)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v4;
  if (*(v1 + 40))
  {
    if (v5 == 1 && *(v4 + 16))
    {
      v6 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v7)
      {
        if (before <= 0)
        {
          goto LABEL_54;
        }

        goto LABEL_9;
      }
    }
  }

  if (v6 >= before)
  {
    goto LABEL_54;
  }

LABEL_9:
  sub_21B2A6400();
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!before)
  {
LABEL_35:
    sub_21B2A6400();
    if ((v18 & 1) == 0)
    {
      result = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        return result;
      }

      __break(1u);
LABEL_39:
      if (!v10)
      {
        if (v4 == before)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_41:
        result = before - 1;
        if (!__OFSUB__(before, 1))
        {
          return result;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_11:
  v10 = 0;
  v11 = (v4 + 40);
  if (!v5)
  {
LABEL_12:
    v12 = v3;
    if (v10)
    {
      goto LABEL_44;
    }

    if (v4 <= before)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  while (1)
  {
    if (v5 != 1)
    {
      goto LABEL_54;
    }

    v13 = *(v4 + 16);
    if (v10 == v13)
    {
      goto LABEL_54;
    }

    if (v10 >= v13)
    {
      goto LABEL_46;
    }

    v12 = *v11;
    if (*(v11 - 1) <= before)
    {
LABEL_19:
      if (v12 > before)
      {
        if (!v5)
        {
          goto LABEL_39;
        }

        v14 = *(v4 + 16);
        if (v10 >= v14)
        {
          goto LABEL_48;
        }

        if (*(v11 - 1) != before)
        {
          goto LABEL_41;
        }

        if (!v10)
        {
          goto LABEL_50;
        }

        if (v10 - 1 >= v14)
        {
          goto LABEL_51;
        }

        v15 = *(v11 - 2);
        result = v15 - 1;
        if (!__OFSUB__(v15, 1))
        {
          return result;
        }

        __break(1u);
LABEL_34:
        if (v8 == before)
        {
          goto LABEL_35;
        }

        goto LABEL_11;
      }
    }

LABEL_20:
    if (v5)
    {
      if (v10 >= *(v4 + 16))
      {
        break;
      }

      goto LABEL_24;
    }

    if (v10)
    {
      break;
    }

LABEL_24:
    ++v10;
    v11 += 2;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  if (v10 != 1)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_54:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B30C88C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
}

uint64_t sub_21B30C8E0(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = v5;

  return DataFrame.Rows.subscript.setter(v8, v3);
}

void (*DataFrame.Rows.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = a2;

  return sub_21B30C9EC;
}

void sub_21B30C9EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7[0] = **a1;
  v7[1] = v3;
  v7[2] = v5;
  v7[3] = v4;
  if (a2)
  {

    DataFrame.Rows.subscript.setter(v7, v6);
  }

  else
  {
    DataFrame.Rows.subscript.setter(v7, v6);
  }

  free(v2);
}

uint64_t DataFrame.Rows.subscript.getter@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = a1 == a2;
  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (a1 == a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v13 = *(v3 + 40);

  sub_21B254074(v8, v9, v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v8, v9, v13);
  v17 = v16;
  v19 = v18;
  result = sub_21B23A9F4(v11, v12, v14);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_21B30CB78@<X0>(uint64_t *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a2[1];
  v10 = *a2 == v9;
  if (*a2 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a2;
  }

  if (*a2 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2[1];
  }

  v13 = *(a1 + 40);

  sub_21B254074(v7, v8, v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v7, v8, v13);
  v17 = v16;
  v19 = v18;
  result = sub_21B23A9F4(v11, v12, v14);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_21B30CC50(uint64_t a1, uint64_t a2, char **a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v12 = v9;

  sub_21B254074(v7, v8, v9);
  return DataFrame.Rows.subscript.setter(v11, v3, v4);
}

uint64_t DataFrame.Rows.subscript.setter(uint64_t *a1, char *a2, char *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v33 = a1[3];
  v35 = a1[4];
  v34 = *(a1 + 40);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = a2 == a3;
  if (a2 == a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  if (a2 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(v3 + 40);
  sub_21B254074(*(v3 + 24), *(v3 + 32), v12);
  v13 = 2 * v9;
  v36 = sub_21B248CCC(v10, v11, v13, v7, v8, v12);
  v37 = v14;
  v38 = v15;
  v16 = v13;
  v17 = v34;
  v18 = v35;
  sub_21B23A9F4(v10, v11, v16);
  v19 = v33;
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v19 = *(v33 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v21)
      {
        v19 = 0;
      }

      else
      {
        v19 = v20;
      }
    }
  }

  sub_21B2A6400();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v19 == v24)
  {
    v25 = v36;
    v26 = v37;
    v27 = v38;
  }

  else
  {

    sub_21B254074(v33, v35, v34);
    do
    {
      v39 = v4;
      v40 = v5;
      v41 = v6;
      v42 = v33;
      v29 = v18;
      v43 = v18;
      v30 = v17;
      v44 = v17;
      v31 = DataFrame.Rows.index(after:)(v19);
      if (sub_21B2D3BE8(v19, v36, v37, v38))
      {
        v39 = v4;
        v40 = v5;
        v41 = v6;
        v42 = v19;

        DataFrame.Rows.subscript.setter(&v39, v19);
      }

      v19 = v31;
      v28 = v31 == v24;
      v17 = v30;
      v18 = v29;
    }

    while (!v28);
    sub_21B23A9F4(v36, v37, v38);

    v25 = v33;
    v26 = v29;
    v27 = v17;
  }

  sub_21B23A9F4(v25, v26, v27);

  return sub_21B23A9F4(v33, v18, v17);
}

void (*DataFrame.Rows.subscript.modify(void *a1, char *a2, char *a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  v14 = a2 == a3;
  if (a2 == a3)
  {
    a2 = 0;
    a3 = 0;
  }

  v15 = *(v3 + 40);

  sub_21B254074(v12, v13, v15);
  v16 = 2 * v14;
  v17 = sub_21B248CCC(a2, a3, v16, v12, v13, v15);
  v19 = v18;
  v21 = v20;
  sub_21B23A9F4(a2, a3, v16);
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v17;
  v8[4] = v19;
  *(v8 + 40) = v21;
  return sub_21B30D074;
}

void sub_21B30D074(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v8 = (*a1)[7];
  v9 = (*a1)[6];
  v13[0] = **a1;
  v13[1] = v3;
  v13[2] = v5;
  v13[3] = v4;
  v13[4] = v6;
  v14 = v7;
  if (a2)
  {

    sub_21B254074(v4, v6, v7);
    DataFrame.Rows.subscript.setter(v13, v9, v8);
    v10 = v2[3];
    v11 = v2[4];
    v12 = *(v2 + 40);

    sub_21B23A9F4(v10, v11, v12);
  }

  else
  {
    DataFrame.Rows.subscript.setter(v13, v9, v8);
  }

  free(v2);
}

Swift::Int sub_21B30D188@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DataFrame.Rows.index(before:)(*a1);
  *a2 = result;
  return result;
}

void (*sub_21B30D1D4(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Rows.subscript.modify(v4, *a2);
  return sub_21B28EF30;
}

void (*sub_21B30D258(void *a1, char **a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Rows.subscript.modify(v4, *a2, a2[1]);
  return sub_21B28EF30;
}

uint64_t sub_21B30D2D0@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(__int128 *)@<X0>)
{
  result = sub_21B33834C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B30D308@<X0>(uint64_t *a1@<X8>)
{
  result = DataFrame.Rows.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B30D330@<X0>(void *a1@<X8>)
{
  result = sub_21B2A6400();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t (*sub_21B30D368(void *a1, uint64_t *a2))()
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v4;

  return sub_21B30D3D8;
}

uint64_t sub_21B30D3D8()
{
}

uint64_t sub_21B30D420@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *a1 == v4;
  if (*a1 == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  if (*a1 == v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[1];
  }

  v13 = *(v2 + 40);

  sub_21B254074(v8, v9, v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v8, v9, v13);
  v17 = v16;
  v19 = v18;
  result = sub_21B23A9F4(v11, v12, v14);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  return result;
}

uint64_t sub_21B30D4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 56) = v8;

  return sub_21B254074(v3, v4, v5);
}

BOOL sub_21B30D5C4()
{
  v0 = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  return v0 == v3;
}

Swift::Int sub_21B30D63C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B30B2FC(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

Swift::Int sub_21B30D690@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DataFrame.Rows.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B30D6D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = (a4)(*a1, a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B30D730@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v3 = DataFrame.Rows.startIndex.getter();

  sub_21B254074(v7, v8, v9);

  result = sub_21B23A9F4(v7, v8, v9);
  *(a1 + 48) = v3;
  return result;
}

void *sub_21B30D800()
{
  v1 = *(v0 + 25);
  v2 = v0[1];
  v14 = *v0;
  *v15 = v2;
  *&v15[9] = v1;
  v3 = sub_21B2FB1D4(*&v15[8], v1 >> 56, SHIBYTE(v1));
  if (!v3)
  {
    sub_21B25FE94(&v14);
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21B264218(v3, 0);
  v6 = sub_21B2652CC(v12, v5 + 4, v4);
  v7 = v12[3];
  v8 = v12[4];
  v9 = v13;
  sub_21B30F420(&v14, v11);

  result = sub_21B23A9F4(v7, v8, v9);
  if (v6 == v4)
  {
    sub_21B25FE94(&v14);
    return v5;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall DataFrame.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t DataFrame.Row.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    if (*(*v1 + 16) > result)
    {
      v3 = v1[3];
      sub_21B233A74(v2 + 40 * result + 32, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(*(v5 + 8) + 128))(v3, v4);
      return sub_21B233960(v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_21B30D9F8(void *result, unint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(*result + 16))
  {
    v3 = result[3];
    sub_21B233A74(*result + 40 * v2 + 32, v6);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(*(v5 + 8) + 128))(v3, v4);
    return sub_21B233960(v6);
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  result = sub_21B2832C0(a1, v13);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v3 + 16) > a2)
  {
    sub_21B233A74(*v3 + 40 * a2 + 32, v10);
    v8 = v11;
    v9 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    (*(*(v9 + 8) + 136))(v6, v13, v8);
    sub_21B28EEB4(v13);
    sub_21B239CC0(a2, v10);
    sub_21B28EEB4(a1);
    return sub_21B233960(v10);
  }

  __break(1u);
  return result;
}

uint64_t (*DataFrame.Row.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x58uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 9) = a2;
  *(result + 10) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    if (*(*v2 + 16) > a2)
    {
      v8 = v2[3];
      sub_21B233A74(v7 + 40 * a2 + 32, result);
      v9 = *(v6 + 3);
      v10 = *(v6 + 4);
      __swift_project_boxed_opaque_existential_1(v6, v9);
      (*(*(v10 + 8) + 128))(v8, v9);
      sub_21B233960(v6);
      return sub_21B30DC78;
    }
  }

  __break(1u);
  return result;
}

void sub_21B30DC78(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *a1 + 40;
  if (a2)
  {
    sub_21B2832C0(v4, v2);
    DataFrame.Row.subscript.setter(v2, v3);
    sub_21B28EEB4(v2 + 40);
  }

  else
  {
    DataFrame.Row.subscript.setter(v4, v3);
  }

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  a3[2] = *v3;
  a3[3] = v4;
  a3[4] = v6;
  a3[5] = v5;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_21B30DD44@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  *a3 = *a2;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v6;
  *(a3 + 40) = v5;
}

void *sub_21B30DD9C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  v3 = *(a1 + 5);
  v6 = *a1;
  v7 = v1;
  v8 = v2;
  v9 = v4;
  v10 = v3;

  return _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(&v6);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[6] = v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v7[2] = *v3;
  v7[3] = v8;
  v7[4] = v10;
  v7[5] = v9;
  *v7 = a2;
  v7[1] = a3;

  return sub_21B30DEBC;
}

void sub_21B30DEBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;
  if (a2)
  {

    _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(v9);
  }

  else
  {
    _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(v9);
  }

  free(v2);
}

void (*sub_21B30DF78(uint64_t (***a1)(), unint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = DataFrame.Row.subscript.modify(v4, *a2);
  return sub_21B28EF30;
}

void (*sub_21B30DFF4(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Row.subscript.modify(v4, *a2, a2[1]);
  return sub_21B28A810;
}

uint64_t (*sub_21B30E06C@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(void *)@<X0>))(void *)
{
  result = sub_21B338564(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t (*sub_21B30E0B4(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x48uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *v2;
    if (v7 < *(*v2 + 16))
    {
      v9 = v2[3];
      sub_21B233A74(v8 + 40 * v7 + 32, result);
      v10 = *(v6 + 3);
      v11 = *(v6 + 4);
      __swift_project_boxed_opaque_existential_1(v6, v10);
      (*(*(v11 + 8) + 128))(v9, v10);
      sub_21B233960(v6);
      return sub_21B30E1A8;
    }
  }

  __break(1u);
  return result;
}

void sub_21B30E1A8(void **a1)
{
  v1 = *a1;
  sub_21B28EEB4(*a1 + 40);

  free(v1);
}

uint64_t sub_21B30E1E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(a2 + 16) = *v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *a2 = *a1;
}

void sub_21B30E244(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_21B30E268@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B30E294@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B334E8C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_21B30E2D4(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

__n128 sub_21B30E2FC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  *(&a1[1] + 8) = v3;
  return result;
}

void *sub_21B30E314()
{
  v1 = sub_21B263CEC(*v0, v0[1], v0[2], v0[3]);

  return v1;
}

uint64_t DataFrame.Row.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = a1;
    v5 = v1[3];
    v22 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v3, 0);
    v4 = v22;
    v6 = v2 + 32;
    do
    {
      sub_21B233A74(v6, &v19);
      v7 = *(&v20 + 1);
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      (*(*(v8 + 8) + 128))(&v17, v5, v7);
      sub_21B233960(&v19);
      v16[0] = v17;
      v16[1] = v18;
      if (*(&v18 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(v16);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
      }

      v22 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21B253FF4((v9 > 1), v10 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 40 * v10;
      v12 = v19;
      v13 = v20;
      *(v11 + 64) = v21;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v6 += 40;
      --v3;
    }

    while (v3);
    a1 = v15;
  }

  sub_21B2F1184(a1, v4);
}

uint64_t DataFrame.Row.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B30E574()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B30E5CC(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v5);
  return sub_21B34BC24();
}

uint64_t _s11TabularData0B5FrameV3RowV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[3];
  v5 = *(*a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = *a2;
    v7 = a1[3];
    v36 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v5, 0);
    v6 = v36;
    v8 = v2 + 32;
    do
    {
      sub_21B233A74(v8, &v33);
      v9 = *(&v34 + 1);
      v10 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      (*(*(v10 + 8) + 128))(&v31, v7, v9);
      sub_21B233960(&v33);
      v29 = v31;
      v30 = v32;
      if (*(&v32 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(&v29);
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
      }

      v36 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21B253FF4((v11 > 1), v12 + 1, 1);
        v6 = v36;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 40 * v12;
      v14 = v33;
      v15 = v34;
      *(v13 + 64) = v35;
      *(v13 + 32) = v14;
      *(v13 + 48) = v15;
      v8 += 40;
      --v5;
    }

    while (v5);
    v3 = v28;
  }

  v16 = *(v3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v36 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v16, 0);
    v17 = v36;
    v18 = v3 + 32;
    do
    {
      sub_21B233A74(v18, &v33);
      v19 = *(&v34 + 1);
      v20 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      (*(*(v20 + 8) + 128))(&v31, v4, v19);
      sub_21B233960(&v33);
      v29 = v31;
      v30 = v32;
      if (*(&v32 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(&v29);
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
      }

      v36 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21B253FF4((v21 > 1), v22 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 40 * v22;
      v24 = v33;
      v25 = v34;
      *(v23 + 64) = v35;
      *(v23 + 32) = v24;
      *(v23 + 48) = v25;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  v26 = sub_21B2470A0(v6, v17);

  return v26 & 1;
}

uint64_t sub_21B30E918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  DataFrame.subscript.getter(a2, a3, a4);
  v12 = type metadata accessor for Column(0, a4, v10, v11);
  sub_21B28E8DC(a1, v9, v12, v13);
  v15 = v17;
  v16 = v18;
  return DataFrame.subscript.setter(&v15, a2, a3, a4);
}

uint64_t sub_21B30E9D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  DataFrame.subscript.getter(a2, a3, a4, a5);
  v14 = type metadata accessor for Column(0, a5, v12, v13);
  sub_21B28E8DC(a1, v11, v14, v15);
  v17 = v19;
  v18 = v20;
  return DataFrame.subscript.setter(&v17, a2, a3, a4, a5);
}

uint64_t sub_21B30EAA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  *v17 = *v3;
  *&v17[16] = v8;
  v15 = v7;
  v16 = v6;

  DataFrame.subscript.getter(&v15, a3);

  v12 = type metadata accessor for Column(0, a3, v10, v11);
  sub_21B28E8DC(a1, v9, v12, v13);
  v16 = v6;
  *v17 = v18;
  *&v17[8] = v19;
  v15 = v7;
  return DataFrame.subscript.setter(v17, &v15, a3);
}

void *_s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v16[0] = *a1;
  v16[1] = v1;
  v16[2] = v3;
  v17 = v2;
  v18 = v4;
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F4D0, &qword_21B356F30);
  result = sub_21B34BB14();
  v7 = v15;
  if (v15 == *(&v15 + 1))
  {
LABEL_13:
  }

  else
  {
    if (*(&v15 + 1) >= v15)
    {
      if (v1 <= v15)
      {
        v1 = v15;
      }

      v8 = v3 + 40 * v15 + 32;
      v9 = v15;
      while (*(&v7 + 1) != v9)
      {
        if (v7 < v12)
        {
          goto LABEL_15;
        }

        if (v1 == v9)
        {
          goto LABEL_16;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v9 >= *(v3 + 16))
        {
          goto LABEL_18;
        }

        sub_21B233A74(v8, v16);
        v11 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(*(v10 + 8) + 128))(&v13, v5, v11);
        result = sub_21B233960(v16);
        if (!v14)
        {
          goto LABEL_20;
        }

        sub_21B261720(&v13, &v15);
        swift_dynamicCast();
        sub_21B239CC0(v9, v16);
        result = sub_21B233960(v16);
        v8 += 40;
        if (*(&v7 + 1) == ++v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B30ED30()
{
  result = qword_27CD7F490;
  if (!qword_27CD7F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F490);
  }

  return result;
}

unint64_t sub_21B30ED88()
{
  result = qword_27CD7F498;
  if (!qword_27CD7F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E510, &unk_21B351F10);
    sub_21B30EE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F498);
  }

  return result;
}

unint64_t sub_21B30EE0C()
{
  result = qword_27CD7F4A0;
  if (!qword_27CD7F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4A0);
  }

  return result;
}

unint64_t sub_21B30EE68()
{
  result = qword_27CD7F4A8;
  if (!qword_27CD7F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4A8);
  }

  return result;
}

unint64_t sub_21B30EEC0()
{
  result = qword_280C83960;
  if (!qword_280C83960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C83960);
  }

  return result;
}

unint64_t sub_21B30EFA0()
{
  result = qword_27CD7F4C0;
  if (!qword_27CD7F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4C0);
  }

  return result;
}

unint64_t sub_21B30F03C()
{
  result = qword_27CD7F4D8;
  if (!qword_27CD7F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4D8);
  }

  return result;
}

unint64_t sub_21B30F090()
{
  result = qword_27CD7F4E0;
  if (!qword_27CD7F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4E0);
  }

  return result;
}

uint64_t sub_21B30F12C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F4D0, &qword_21B356F30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B30F1A4()
{
  result = qword_27CD7F4F0;
  if (!qword_27CD7F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4F0);
  }

  return result;
}

unint64_t sub_21B30F244()
{
  result = qword_27CD7F500;
  if (!qword_27CD7F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F500);
  }

  return result;
}

unint64_t sub_21B30F324()
{
  result = qword_27CD7F520;
  if (!qword_27CD7F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F520);
  }

  return result;
}

uint64_t sub_21B30F378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21B30F3C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B30F490(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    return 0;
  }

  v6 = (*a1 + v1);
  v7 = v1 + 1;
  do
  {
    v9 = *v6++;
    v8 = v9;
    v10 = (1 << v9) & 0x2000000000002400;
    if (v9 <= 0x3D && v10 != 0)
    {
      break;
    }

    if (v8 == 93)
    {
      break;
    }

    v12 = sub_21B34AD84();
    MEMORY[0x21CEED5D0](v12);

    a1[2] = v7++;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_21B30F5A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B30F490(a1);
  v6 = a1[1];
  v5 = a1[2];
  if (v5 < v6)
  {
    v7 = *a1;
    if (*(*a1 + v5) == 93)
    {
      a1[2] = v5 + 1;
      if (v5 + 1 != v6)
      {
        if (v5 + 1 >= v6)
        {
          goto LABEL_12;
        }

        v8 = *(v7 + v5 + 1);
        if (v8 != 10 && v8 != 13)
        {
          goto LABEL_12;
        }

        a1[2] = v5 + 2;
      }

      v10 = v4;
      sub_21B25F17C(MEMORY[0x277D84F90]);
      return v10;
    }
  }

LABEL_12:

  sub_21B30FD2C();
  swift_allocError();
  *v12 = a2;
  *(v12 + 8) = 1;
  return swift_willThrow();
}

uint64_t sub_21B30F688(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    return 0;
  }

  v6 = (*a1 + v1);
  v7 = v1 + 1;
  do
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 == 10 || v8 == 13)
    {
      break;
    }

    v11 = sub_21B34AD84();
    MEMORY[0x21CEED5D0](v11);

    a1[2] = v7++;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_21B30F780(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B30F490(a1);
  v6 = a1[1];
  v5 = a1[2];
  if (v5 >= v6)
  {
    goto LABEL_13;
  }

  v7 = *a1;
  if (*(*a1 + v5) != 61)
  {
    goto LABEL_13;
  }

  v8 = v4;
  a1[2] = v5 + 1;
  sub_21B30F688(a1);
  v9 = a1[2];
  if (v9 == v6)
  {
    return v8;
  }

  if (v9 < v6)
  {
    v10 = *(v7 + v9);
    if (v10 == 10 || v10 == 13)
    {
      a1[2] = v9 + 1;
      return v8;
    }
  }

LABEL_13:

  sub_21B30FD2C();
  swift_allocError();
  *v13 = a2;
  *(v13 + 8) = 2;
  return swift_willThrow();
}

uint64_t sub_21B30F880(uint64_t result, uint64_t a2)
{
  v41[0] = result;
  v41[1] = a2;
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 1;
  while (1)
  {
    while (1)
    {
      v7 = *(v3 + v4);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        break;
      }

      if (a2 == ++v4)
      {
        v42 = a2;
        goto LABEL_9;
      }
    }

    v42 = v4;
    if (v4 < a2)
    {
      v23 = *(v3 + v4);
      if (v23 == 91)
      {
        v26 = v5;
        v42 = v4 + 1;
        v5 = v6;
        v27 = sub_21B30F5A4(v41, v6);
        if (v40)
        {
          goto LABEL_38;
        }

        v30 = v27;
        v31 = v28;
        v32 = v29;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v33 = v26;
        }

        else
        {
          result = sub_21B24AD58(0, *(v26 + 16) + 1, 1, v26);
          v33 = result;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_21B24AD58((v34 > 1), v35 + 1, 1, v33);
          v33 = result;
        }

        *(v33 + 16) = v35 + 1;
        v39 = v33;
        v36 = (v33 + 24 * v35);
        v36[4] = v30;
        v36[5] = v31;
        v36[6] = v32;
        v6 = v5;
        goto LABEL_15;
      }

      if (v23 == 59)
      {
        v24 = v4 + 1;
        v39 = v5;
        while (a2 != v24)
        {
          v25 = *(v3 + v24++);
          if (v25 == 10 || v25 == 13)
          {
            v42 = v24;
            goto LABEL_15;
          }
        }

        v42 = a2;
        goto LABEL_15;
      }
    }

LABEL_9:
    if (!*(v5 + 16))
    {

      sub_21B30FD2C();
      swift_allocError();
      *v37 = v6;
      *(v37 + 8) = 0;
      swift_willThrow();
      return v5;
    }

    v11 = sub_21B30F780(v41, v6);
    if (v40)
    {
LABEL_38:

      return v5;
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v38 = v6;
    v19 = *(v5 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = sub_21B23A3A8(v5);
      v5 = result;
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    if (v19 > *(v5 + 16))
    {
      goto LABEL_43;
    }

    v39 = v5;
    v20 = v5 + 24 * v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v20 + 24);
    *(v20 + 24) = 0x8000000000000000;
    sub_21B23A73C(v17, v18, v15, v16, isUniquelyReferenced_nonNull_native);

    *(v20 + 24) = v43;
    v6 = v38;
LABEL_15:
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v4 = v42;
    v5 = v39;
    if (v42 == a2)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21B30FB6C(uint64_t result, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v14 = result;
      v15 = a2;
      v16 = BYTE2(a2);
      v17 = BYTE3(a2);
      v18 = BYTE4(a2);
      v19 = BYTE5(a2);
      return sub_21B30F880(&v14, BYTE6(a2));
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = sub_21B34A574();
  if (v5)
  {
    v6 = sub_21B34A594();
    if (__OFSUB__(v3, v6))
    {
      goto LABEL_24;
    }

    v5 += v3 - v6;
  }

  v7 = __OFSUB__(v4, v3);
  v8 = v4 - v3;
  if (v7)
  {
    goto LABEL_22;
  }

  result = sub_21B34A584();
  if (!v5)
  {
    __break(1u);
LABEL_11:
    v9 = result;
    v8 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v10 = sub_21B34A574();
      if (!v10)
      {
        result = sub_21B34A584();
        goto LABEL_26;
      }

      v11 = v10;
      v12 = sub_21B34A594();
      if (!__OFSUB__(v9, v12))
      {
        v5 = v9 - v12 + v11;
        result = sub_21B34A584();
        if (v5)
        {
          goto LABEL_15;
        }

LABEL_26:
        __break(1u);
        return result;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_15:
  if (result >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = result;
  }

  return sub_21B30F880(v5, v13);
}

unint64_t sub_21B30FD2C()
{
  result = qword_27CD7F528;
  if (!qword_27CD7F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F528);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for INILoadingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for INILoadingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t DiscontiguousColumnSlice<A>.sum()(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v9 = *v2;
  v10[0] = v3;
  *(v10 + 9) = *(v2 + 25);
  v6 = *(a1 + 16);
  v7 = a2;
  v8 = &v9;
  return sub_21B328CA8(sub_21B3131D4, &v5, v3, v6);
}

uint64_t DiscontiguousColumnSlice<A>.mean()(uint64_t a1, uint64_t a2)
{
  return sub_21B30FF74(a1, a2, sub_21B313CB0);
}

{
  return sub_21B315228(a1, a2, &qword_27CD7E110, &qword_21B351988, sub_21B3155BC);
}

uint64_t sub_21B30FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v11 = *v3;
  v12[0] = v4;
  *(v12 + 9) = *(v3 + 25);
  v7 = *(a2 + 16);
  v8 = a3;
  v9 = &v11;
  v10 = a1;
  return sub_21B328CA8(sub_21B316584, &v6, v4, v7);
}

uint64_t sub_21B30FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3[1];
  v12 = *v3;
  v13[0] = v5;
  *(v13 + 9) = *(v3 + 25);
  v6 = v5;
  v9 = *(a1 + 16);
  v10 = a2;
  v11 = &v12;
  sub_21B34B474();
  return sub_21B328CA8(a3, &v8, v6, v9);
}

uint64_t Column<A>.sum()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v8 = *(a1 + 16);
  v9 = a2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_21B328CA8(sub_21B313DB8, &v7, v5, v8);
}

uint64_t sub_21B310088@<X0>(char *a1@<X0>, void *a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a1;
  v45 = a4;
  v46 = a5;
  v6 = *(*(*(a4 + 16) + 8) + 16);
  v51 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = v6;
  v53 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v53);
  v54 = &v43 - v8;
  v9 = sub_21B34B474();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v50 = a2;
  v52 = *(a2 - 1);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v47 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v43 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v43 - v27;
  MEMORY[0x28223BE20](v26);
  v58 = &v43 - v29;
  sub_21B34B864();
  v56 = v28;
  sub_21B34B864();
  (v52[2])(v14, v57, v50);
  v30 = v43;
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  v57 = v19;
  sub_21B34B4D4();
  v31 = v47 + 6;
  v32 = v47[6];
  if (v32(v12, 1, AssociatedTypeWitness) != 1)
  {
    v49 = v47[4];
    v50 = v47 + 4;
    v48 = (v47 + 1);
    v51 = v32;
    v52 = v31;
    do
    {
      v49(v25, v12, AssociatedTypeWitness);
      sub_21B34B854();
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v33 = v51;
      sub_21B34B9E4();
      sub_21B34B854();
      v34 = *v48;
      (*v48)(v22, AssociatedTypeWitness);
      v34(v25, AssociatedTypeWitness);
      sub_21B34B4D4();
    }

    while (v33(v12, 1, AssociatedTypeWitness) != 1);
  }

  (*(v44 + 8))(v57, v30);
  sub_21B34B864();
  v35 = v56;
  v36 = sub_21B34AC54();
  v37 = v47;
  v38 = v47[1];
  v38(v25, AssociatedTypeWitness);
  if (v36)
  {
    v39 = 1;
    v40 = v46;
    v41 = v58;
  }

  else
  {
    v40 = v46;
    v41 = v58;
    sub_21B34AA44();
    v39 = 0;
  }

  v38(v35, AssociatedTypeWitness);
  v38(v41, AssociatedTypeWitness);
  return (v37[7])(v40, v39, 1, AssociatedTypeWitness);
}

uint64_t sub_21B3106A0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a6;
  v63 = a5;
  v81 = a1;
  v70 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v79 = &v59 - v10;
  v11 = a4;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_21B34B474();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v59 - v19;
  v21 = *(v12 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v72 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = &v59 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v74 = &v59 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v73 = &v59 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v77 = &v59 - v31;
  MEMORY[0x28223BE20](v30);
  v78 = &v59 - v32;
  v61 = a2;
  if (a2 < 0)
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    v33 = v81;
    v34 = v11;
    v35 = v63;
    sub_21B310088(v81, a3, v34, v63, v20);
    v75 = *(v21 + 48);
    v76 = v21 + 48;
    if (v75(v20, 1, v12) == 1)
    {
      (*(v14 + 8))(v20, v13);
      return (*(v21 + 56))(v62, 1, 1, v12);
    }

    else
    {
      v66 = *(v21 + 32);
      v66(v78, v20, v12);
      v65 = *(*(v35 + 16) + 8);
      v64 = *(v65 + 8);
      sub_21B34B864();
      (*(v70 + 16))(v69, v33, a3);
      sub_21B34AEC4();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = 0;
      v67 = v21 + 32;
      v68 = v17;
      v69 = AssociatedConformanceWitness;
      v70 = v21 + 8;
      v39 = -v61;
      v40 = v12;
      v41 = v73;
      while (1)
      {
        sub_21B34B4D4();
        if (v75(v17, 1, v40) == 1)
        {
          break;
        }

        v66(v41, v17, v40);
        v42 = v40;
        v43 = v71;
        sub_21B34B844();
        v44 = v72;
        sub_21B34B844();
        v81 = v39;
        v45 = v74;
        sub_21B34B144();
        v46 = v21;
        v47 = *v70;
        (*v70)(v44, v42);
        v48 = v43;
        v40 = v42;
        v47(v48, v42);
        sub_21B34B854();
        v49 = v45;
        v50 = v81;
        v47(v49, v42);
        v47(v41, v42);
        v21 = v46;
        v17 = v68;
        v39 = v50 + 1;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          break;
        }
      }

      (*(v60 + 8))(v79, AssociatedTypeWitness);
      if (v38 <= v61)
      {
        v58 = *(v21 + 8);
        v58(v77, v40);
        v58(v78, v40);
        return (*(v21 + 56))(v62, 1, 1, v40);
      }

      else
      {
        v52 = v74;
        sub_21B34AA84();
        v53 = v73;
        v54 = v77;
        sub_21B34AA44();
        v55 = v21;
        v56 = *(v21 + 8);
        v56(v52, v40);
        v57 = v62;
        sub_21B34AA34();
        v56(v53, v40);
        v56(v54, v40);
        v56(v78, v40);
        return (*(v55 + 56))(v57, 0, 1, v40);
      }
    }
  }

  return result;
}

uint64_t sub_21B310E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(char *, char *, uint64_t, uint64_t)@<X7>, char *a8@<X8>)
{
  v48 = a6;
  v49 = a7;
  v60 = a1;
  v13 = sub_21B34B474();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v58 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v47 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v46 = &v42 - v22;
  v61 = v23;
  v24 = *(v23 + 56);
  v59 = a8;
  v56 = v24;
  v57 = v23 + 56;
  v24(a8, 1, 1, a5);
  v62 = a2;
  v63 = a3;
  v64 = a2;
  v65 = a3;
  v67 = a4;
  v66 = a4;
  v50 = type metadata accessor for Column(0, a5, v25, v26);
  result = Column.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    if (result)
    {
      v29 = 0;
      v53 = (v61 + 48);
      v54 = (v14 + 16);
      v45 = v61 + 32;
      v52 = v61 + 16;
      v44 = v61 + 8;
      v30 = v14;
      v31 = (v14 + 8);
      v51 = (v30 + 32);
      v55 = result;
      v43 = v31;
      do
      {
        v64 = v62;
        v65 = v63;
        v66 = v67;
        result = Column.isNil(at:)(v29);
        if ((result & 1) == 0)
        {
          v34 = v59;
          (*v54)(v19, v59, v13);
          if ((*v53)(v19, 1, a5) == 1)
          {
            v32 = *v31;
            (*v31)(v19, v13);
            v33 = v58;
            (*(v61 + 16))(v58, v60 + *(v61 + 72) * v29, a5);
            v32(v34, v13);
          }

          else
          {
            v35 = v61;
            v36 = v46;
            (*(v61 + 32))(v46, v19, a5);
            v37 = v13;
            v38 = v19;
            v39 = v47;
            (*(v35 + 16))(v47, v60 + *(v35 + 72) * v29, a5);
            v33 = v58;
            v49(v36, v39, a5, v48);
            v40 = *(v35 + 8);
            v41 = v39;
            v19 = v38;
            v13 = v37;
            v40(v41, a5);
            v40(v36, a5);
            v31 = v43;
            (*v43)(v34, v13);
          }

          v56(v33, 0, 1, a5);
          result = (*v51)(v34, v33, v13);
          v28 = v55;
        }

        ++v29;
      }

      while (v28 != v29);
    }
  }

  return result;
}