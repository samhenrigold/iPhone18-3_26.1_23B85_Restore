uint64_t sub_21B322BC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F608, &unk_21B357470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B351EA0;
  swift_beginAccess();
  sub_21B233A10(a1 + 16, v4 + 32);
  result = sub_21B26797C(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21B322C50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = result;
    v11 = a2;
    v18 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v2, 0);
    v3 = v18;
    v5 = v4 + 32;
    do
    {
      sub_21B2615FC(v5, &v13, &qword_27CD7E0F8, &unk_21B3557C0);
      v12[0] = v13;
      v12[1] = v14;
      if (*(&v14 + 1))
      {
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
        }
      }

      else
      {
        result = sub_21B261664(v12, &qword_27CD7E0F8, &unk_21B3557C0);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }

      v18 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        result = sub_21B253FF4((v6 > 1), v7 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 40 * v7;
      v9 = v15;
      v10 = v16;
      *(v8 + 64) = v17;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
      v5 += 32;
      --v2;
    }

    while (v2);
    a2 = v11;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21B322DC0(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  result = swift_allocObject();
  *(result + 16) = xmmword_21B351EA0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a2)
  {
    v6 = result;
    sub_21B233A74(v3 + 40 * a2 + 32, v9);
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(*(v8 + 8) + 128))(v4, v7);
    sub_21B233960(v9);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.grouped<A, B>(by:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>, uint64_t a7@<X2>, uint64_t a8@<X3>, uint64_t a9@<X7>, uint64_t a10)
{
  v23 = a5;
  v24 = a4;
  MEMORY[0x28223BE20](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v10, v21);

  return sub_21B303D88(v19, a1, a2, a3, a6, a7, a8, v23, v24, a10, a9);
}

uint64_t DataFrameProtocol.grouped<A, B>(by:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>, uint64_t a6@<X1>, uint64_t a7@<X2>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v24 = a4;
  v25 = a3;
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v16;
  v19 = v16[1];
  (*(v21 + 16))(v18, v9, v22);

  return sub_21B303D88(v18, v20, v19, a2, a5, a6, a7, v24, v25, a9, a8);
}

uint64_t DataFrameProtocol.grouped(by:timeUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v23 = a5;
  v13 = sub_21B34A8A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v7, a4);
  (*(v14 + 16))(v17, a3, v13);

  return RowGrouping.init<A>(frame:columnName:timeUnit:)(v19, a1, a2, v17, a4, v23, a6);
}

uint64_t DataFrameProtocol.grouped(by:timeUnit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v23 = a4;
  v11 = sub_21B34A8A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  (*(v20 + 16))(v17, v6, a3);
  (*(v12 + 16))(v15, a2, v11);

  return RowGrouping.init<A>(frame:columnName:timeUnit:)(v17, v19, v18, v15, a3, v23, a5);
}

uint64_t sub_21B323438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(a3 + 24))(&v9, a2, a3);
  v7 = sub_21B23AC94(v5, v6);

  *a4 = v7;
  return result;
}

void *sub_21B3234E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = (*(a5 + 24))(&v19, a4, a5);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v19 + 16) > a1)
  {
    sub_21B233A74(v19 + 40 * a1 + 32, v16);

    v12 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(*(v11 + 8) + 88))(v12);
    sub_21B233960(v16);
    v13 = *(a6 + 24);
    v14 = *(a6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
    v15 = *(v14 + 16);

    return v15(a2, a3, v13, v14);
  }

  __break(1u);
  return result;
}

double DataFrameProtocol.grouped<A>(by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v56 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  type metadata accessor for ColumnID(255, a3, a3, a4);
  v11 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_21B2FCC28(sub_21B3269E4, v47, v11, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  *&v56 = v30;
  v52 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
  v15 = sub_21B278F78(&qword_27CD7EA20, &qword_27CD7E760, &unk_21B352380, MEMORY[0x277D83970]);
  v16 = swift_getWitnessTable();
  sub_21B34BA54();
  v52 = v54;
  v53 = v55;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = v7;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = sub_21B326A0C;
  v40 = &v41;
  *&v56 = v14;
  *(&v56 + 1) = v11;
  *&v57 = v15;
  *(&v57 + 1) = v16;
  v17 = sub_21B34B674();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5E0, &qword_21B357458);
  v19 = swift_getWitnessTable();
  v21 = sub_21B23CCA8(sub_21B326A1C, v34, v17, v18, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v33 = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0C8, &qword_21B3518B0);
  v24 = sub_21B326A74();
  sub_21B3492CC(&v56, v29, sub_21B326A54, v22, sub_21B326C6C, 0, sub_21B326A58, v32, v23, &type metadata for AnyHashableBuilder, a2, v24, &off_2817203A8, a4);

  result = *&v56;
  v26 = v57;
  *a6 = v56;
  *(a6 + 16) = v26;
  *(a6 + 32) = v58;
  return result;
}

uint64_t sub_21B323948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(a3 + 24))(&v9, a2, a3);
  v7 = sub_21B23AC94(v5, v6);

  *a4 = v7;
  return result;
}

void *sub_21B3239F4@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a4 + 24);

  result = v11(&v20, a3, a4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) > a1)
  {
    sub_21B233A74(v20 + 40 * a1 + 32, v17);

    v14 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v13 + 8) + 88))(v14);
    sub_21B233960(v17);
    v15 = *(a5 + 24);
    v16 = *(a5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
    return (*(v16 + 16))(v9, v10, v15, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B323B38(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v5 = a1[3];
  v6 = *a1;
  v21 = MEMORY[0x277D84F90];
  result = sub_21B254568(0, v2, 0);
  v3 = v21;
  v8 = (a2 + 32);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v6 + 16))
    {
      goto LABEL_10;
    }

    sub_21B233A74(v6 + 32 + 40 * v9, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v12 + 8) + 128))(v20, v5, v11);
    result = sub_21B233960(v17);
    v21 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_21B254568((v13 > 1), v14 + 1, 1);
      v3 = v21;
    }

    *(v3 + 16) = v14 + 1;
    v15 = v3 + 32 * v14;
    v16 = v20[1];
    *(v15 + 32) = v20[0];
    *(v15 + 48) = v16;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21B323C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v54 = a3;
  v11 = sub_21B34B474();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = sub_21B34B474();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  if (*(a1 + 16) == 2)
  {
    v47 = v19;
    v48 = a4;
    v49 = a5;
    v50 = v11;
    v51 = a6;
    sub_21B2615FC(a1 + 32, &v62, &qword_27CD7E0F8, &unk_21B3557C0);
    v22 = v65;
    sub_21B261664(&v62, &qword_27CD7E0F8, &unk_21B3557C0);
    if (v22 && (sub_21B2615FC(a1 + 32, &v62, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v23 = swift_dynamicCast(), v24 = *(a2 - 8), (*(v24 + 56))(v21, v23 ^ 1u, 1, a2), v25 = (*(v24 + 48))(v21, 1, a2), (*(v17 + 8))(v21, v16), v25))
    {
      v56 = v48;
      WitnessTable = swift_getWitnessTable();
      v55 = v49;
      v27 = v50;
      v28 = swift_getWitnessTable();
      v62 = v16;
      v63 = v27;
    }

    else
    {
      sub_21B2615FC(a1 + 64, &v62, &qword_27CD7E0F8, &unk_21B3557C0);
      v33 = v65;
      sub_21B261664(&v62, &qword_27CD7E0F8, &unk_21B3557C0);
      v34 = v50;
      if (!v33 || (sub_21B2615FC(a1 + 64, &v62, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v35 = v54, v36 = swift_dynamicCast(), v37 = *(v35 - 8), (*(v37 + 56))(v15, v36 ^ 1u, 1, v35), LODWORD(v35) = (*(v37 + 48))(v15, 1, v35), (*(v53 + 8))(v15, v34), !v35))
      {
        sub_21B2615FC(a1 + 32, &v62, &qword_27CD7E0F8, &unk_21B3557C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v38 = v47;
        v39 = swift_dynamicCast();
        (*(*(a2 - 8) + 56))(v38, v39 ^ 1u, 1, a2);
        sub_21B2615FC(a1 + 64, v61, &qword_27CD7E0F8, &unk_21B3557C0);
        v40 = v52;
        v41 = v54;
        v42 = swift_dynamicCast();
        (*(*(v41 - 8) + 56))(v40, v42 ^ 1u, 1, v41);
        v60 = v48;
        v43 = swift_getWitnessTable();
        v59 = v49;
        v44 = swift_getWitnessTable();
        a6 = v51;
        sub_21B2FBFE8(v38, v40, v16, v34, v43, v44, v51);
        v62 = v16;
        v63 = v34;
        v64 = v43;
        v65 = v44;
        v31 = type metadata accessor for Tuple2(0, &v62);
        v32 = 0;
        return (*(*(v31 - 8) + 56))(a6, v32, 1);
      }

      v58 = v48;
      WitnessTable = swift_getWitnessTable();
      v57 = v49;
      v28 = swift_getWitnessTable();
      v62 = v16;
      v63 = v34;
    }

    v64 = WitnessTable;
    v65 = v28;
    v31 = type metadata accessor for Tuple2(0, &v62);
    v32 = 1;
    a6 = v51;
  }

  else
  {
    v67 = a4;
    v29 = swift_getWitnessTable();
    v66 = a5;
    v30 = swift_getWitnessTable();
    v62 = v16;
    v63 = v11;
    v64 = v29;
    v65 = v30;
    v31 = type metadata accessor for Tuple2(0, &v62);
    v32 = 1;
  }

  return (*(*(v31 - 8) + 56))(a6, v32, 1);
}

double sub_21B324334@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;

  return sub_21B266A20(v12, v11, a5, a6, a7);
}

uint64_t sub_21B3243FC(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a3;
  v29 = a2;
  v9 = sub_21B34B474();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v25 - v10;
  v11 = sub_21B34B474();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21B352080;
  v31 = v14;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  DataFrame.Row.subscript.getter(v29, a5, a5, v13);
  v19 = *(a5 - 8);
  if ((*(v19 + 48))(v13, 1, a5) == 1)
  {
    (*(v25 + 8))(v13, v26);
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
  }

  else
  {
    *(v18 + 56) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    (*(v19 + 32))(boxed_opaque_existential_1, v13, a5);
  }

  v33 = v31;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v21 = v30;
  DataFrame.Row.subscript.getter(v32, a6, a6, v30);
  v22 = *(a6 - 8);
  if ((*(v22 + 48))(v21, 1, a6) == 1)
  {
    (*(v27 + 8))(v21, v28);
    *(v18 + 64) = 0u;
    *(v18 + 80) = 0u;
  }

  else
  {
    *(v18 + 88) = a6;
    v23 = __swift_allocate_boxed_opaque_existential_1((v18 + 64));
    (*(v22 + 32))(v23, v21, a6);
  }

  return v18;
}

uint64_t sub_21B324730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v86 = a8;
  v83 = a4;
  v14 = sub_21B34B474();
  v80 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v73 - v18;
  v84 = a3;
  v19 = sub_21B34B474();
  v82 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v78 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v81 = &v73 - v22;
  v85 = a2;
  v23 = sub_21B34B474();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  if (*(a1 + 16) == 3)
  {
    v29 = a1;
    v30 = v26;
    v75 = a5;
    v74 = v17;
    v76 = v14;
    v77 = a7;
    v31 = v29;
    sub_21B2615FC(v29 + 32, &v101, &qword_27CD7E0F8, &unk_21B3557C0);
    v32 = v104;
    sub_21B261664(&v101, &qword_27CD7E0F8, &unk_21B3557C0);
    if (v32 && (sub_21B2615FC(v31 + 32, &v101, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v33 = v85, v34 = swift_dynamicCast(), v35 = *(v33 - 8), (*(v35 + 56))(v28, v34 ^ 1u, 1, v33), LODWORD(v33) = (*(v35 + 48))(v28, 1, v33), (*(v24 + 8))(v28, v23), v33))
    {
      v89 = v75;
      WitnessTable = swift_getWitnessTable();
      v88 = a6;
      v37 = swift_getWitnessTable();
      v87 = v86;
      v38 = v76;
      v39 = swift_getWitnessTable();
      v101 = v23;
      v102 = v19;
    }

    else
    {
      sub_21B2615FC(v31 + 64, &v101, &qword_27CD7E0F8, &unk_21B3557C0);
      v46 = v104;
      sub_21B261664(&v101, &qword_27CD7E0F8, &unk_21B3557C0);
      v47 = v19;
      if (!v46 || (sub_21B2615FC(v31 + 64, &v101, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v48 = v81, v49 = v84, v50 = swift_dynamicCast(), v51 = *(v49 - 8), (*(v51 + 56))(v48, v50 ^ 1u, 1, v49), LODWORD(v49) = (*(v51 + 48))(v48, 1, v49), (*(v82 + 8))(v48, v19), !v49))
      {
        sub_21B2615FC(v31 + 96, &v101, &qword_27CD7E0F8, &unk_21B3557C0);
        v52 = v104;
        sub_21B261664(&v101, &qword_27CD7E0F8, &unk_21B3557C0);
        v53 = v76;
        if (!v52 || (sub_21B2615FC(v31 + 96, &v101, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v54 = v79, v55 = v83, v56 = swift_dynamicCast(), v57 = *(v55 - 8), (*(v57 + 56))(v54, v56 ^ 1u, 1, v55), LODWORD(v55) = (*(v57 + 48))(v54, 1, v55), (*(v80 + 8))(v54, v53), !v55))
        {
          v82 = v23;
          sub_21B2615FC(v31 + 32, &v101, &qword_27CD7E0F8, &unk_21B3557C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
          v58 = v30;
          v59 = v85;
          v60 = swift_dynamicCast();
          (*(*(v59 - 8) + 56))(v30, v60 ^ 1u, 1, v59);
          sub_21B2615FC(v31 + 64, v100, &qword_27CD7E0F8, &unk_21B3557C0);
          v61 = a6;
          v62 = v78;
          v63 = v84;
          v64 = swift_dynamicCast();
          (*(*(v63 - 8) + 56))(v62, v64 ^ 1u, 1, v63);
          sub_21B2615FC(v31 + 96, v99, &qword_27CD7E0F8, &unk_21B3557C0);
          v65 = v74;
          v66 = v83;
          v67 = swift_dynamicCast();
          (*(*(v66 - 8) + 56))(v65, v67 ^ 1u, 1, v66);
          v98 = v75;
          v68 = v82;
          v69 = swift_getWitnessTable();
          v97 = v61;
          v70 = swift_getWitnessTable();
          v96 = v86;
          v71 = swift_getWitnessTable();
          v40 = v77;
          sub_21B2FC488(v58, v62, v65, v68, v47, v53, v69, v70, v77, v71);
          v101 = v68;
          v102 = v47;
          v103 = v53;
          v104 = v69;
          v105 = v70;
          v106 = v71;
          v44 = type metadata accessor for Tuple3(0, &v101);
          v45 = 0;
          return (*(*(v44 - 8) + 56))(v40, v45, 1);
        }

        v95 = v75;
        WitnessTable = swift_getWitnessTable();
        v94 = a6;
        v37 = swift_getWitnessTable();
        v93 = v86;
        v39 = swift_getWitnessTable();
        v101 = v23;
        v102 = v47;
        v103 = v53;
        goto LABEL_10;
      }

      v92 = v75;
      WitnessTable = swift_getWitnessTable();
      v91 = a6;
      v37 = swift_getWitnessTable();
      v90 = v86;
      v38 = v76;
      v39 = swift_getWitnessTable();
      v101 = v23;
      v102 = v19;
    }

    v103 = v38;
LABEL_10:
    v104 = WitnessTable;
    v105 = v37;
    v106 = v39;
    v44 = type metadata accessor for Tuple3(0, &v101);
    v45 = 1;
    v40 = v77;
    return (*(*(v44 - 8) + 56))(v40, v45, 1);
  }

  v109 = a5;
  v40 = a7;
  v41 = swift_getWitnessTable();
  v108 = a6;
  v42 = swift_getWitnessTable();
  v107 = v86;
  v43 = swift_getWitnessTable();
  v101 = v23;
  v102 = v19;
  v103 = v14;
  v104 = v41;
  v105 = v42;
  v106 = v43;
  v44 = type metadata accessor for Tuple3(0, &v101);
  v45 = 1;
  return (*(*(v44 - 8) + 56))(v40, v45, 1);
}

double sub_21B3251D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15[0] = a1;
  v15[1] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = a5;
  v13[1] = a6;

  return sub_21B26703C(v15, v14, v13, a7, a9, a10, a8);
}

uint64_t sub_21B325284(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a3;
  v47 = a4;
  v42 = a2;
  v43 = a8;
  v11 = sub_21B34B474();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v48 = &v36 - v12;
  v13 = sub_21B34B474();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_21B34B474();
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v20 = *a1;
  v19 = a1[1];
  v22 = a1[2];
  v21 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B352090;
  v44 = v19;
  v45 = v20;
  v50 = v20;
  v51 = v19;
  v54 = v22;
  v52 = v22;
  v53 = v21;
  v49 = v21;
  DataFrame.Row.subscript.getter(v42, a6, a6, v18);
  v24 = *(a6 - 8);
  if ((*(v24 + 48))(v18, 1, a6) == 1)
  {
    (*(v36 + 8))(v18, v37);
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
  }

  else
  {
    *(v23 + 56) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
    (*(v24 + 32))(boxed_opaque_existential_1, v18, a6);
  }

  v27 = v44;
  v26 = v45;
  v50 = v45;
  v51 = v44;
  v52 = v54;
  v53 = v49;
  DataFrame.Row.subscript.getter(v46, a7, a7, v15);
  v28 = *(a7 - 8);
  v29 = (*(v28 + 48))(v15, 1, a7);
  v30 = v48;
  v31 = v43;
  if (v29 == 1)
  {
    (*(v38 + 8))(v15, v39);
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
  }

  else
  {
    *(v23 + 88) = a7;
    v32 = __swift_allocate_boxed_opaque_existential_1((v23 + 64));
    (*(v28 + 32))(v32, v15, a7);
  }

  v50 = v26;
  v51 = v27;
  v52 = v54;
  v53 = v49;
  DataFrame.Row.subscript.getter(v47, v31, v31, v30);
  v33 = *(v31 - 8);
  if ((*(v33 + 48))(v30, 1, v31) == 1)
  {
    (*(v40 + 8))(v30, v41);
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
  }

  else
  {
    *(v23 + 120) = v31;
    v34 = __swift_allocate_boxed_opaque_existential_1((v23 + 96));
    (*(v33 + 32))(v34, v30, v31);
  }

  return v23;
}

uint64_t sub_21B3256CC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_21B254188(0, v7, 0);
  v9 = v35;
  v31 = v6;
  v32 = v5;
  v29 = a2;
  v30 = v7;
  v28 = a1;
  if (v7)
  {
    v10 = (a1 + 32);
    v11 = (a2 + 40);
    v12 = v7;
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v13 = *v10;
      v14 = *(v11 - 1);
      v15 = *v11;

      a3(v34, v13, v14, v15);

      v35 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B254188((v16 > 1), v17 + 1, 1);
        v9 = v35;
      }

      *(v9 + 16) = v17 + 1;
      result = sub_21B234878(v34, v9 + 40 * v17 + 32);
      --v6;
      --v5;
      v11 += 2;
      ++v10;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v19 = v31;
    v18 = v32;
    if (v32 <= v31)
    {
      return v9;
    }

    v20 = v30;
    v21 = (v29 + 16 * v30 + 40);
    while (v20 < v18)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

      if (v19 != v20)
      {
        if (v20 >= v19)
        {
          goto LABEL_25;
        }

        v23 = *(v28 + 32 + 8 * v20);
        v24 = *(v21 - 1);
        v25 = *v21;

        a3(v34, v23, v24, v25);

        v35 = v9;
        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21B254188((v26 > 1), v27 + 1, 1);
          v9 = v35;
        }

        ++v20;
        v21 += 2;
        *(v9 + 16) = v27 + 1;
        result = sub_21B234878(v34, v9 + 40 * v27 + 32);
        v19 = v31;
        v18 = v32;
        if (v22 != v32)
        {
          continue;
        }
      }

      return v9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B3259BC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr)@<X5>, uint64_t a7@<X6>, void (*a8)(unint64_t *)@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v91 = sub_21B25F2B8(MEMORY[0x277D84F90]);
  v89 = a1;
  v76 = *(a1 + 16);
  v74 = a5;
  if (v76)
  {
    sub_21B233A74(a1 + 32, &v93);
    v15 = v96;
    v16 = v97;
    __swift_project_boxed_opaque_existential_1(&v93, v96);
    v17 = *(v16 + 8);
    v18 = *(v17 + 48);

    v19 = (v18)(v15, v17);
    sub_21B233960(&v93);
    if (v19 < 0)
    {
      goto LABEL_59;
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
  v90 = MEMORY[0x277D84F90];
  v92 = a3;
  v77 = a2;
LABEL_10:
  v18 = v21;
  while (1)
  {
    sub_21B2A6400();
    if ((v25 & 1) == 0)
    {
      v26 = v92;
      if (v18 != v24)
      {
        goto LABEL_15;
      }

LABEL_37:

      sub_21B23A9F4(0, v19, v20);
      v43 = v90[2];
      if (!v43)
      {

        v70 = MEMORY[0x277D84F90];
LABEL_52:
        *a9 = v70;
        a9[1] = a4;
        a9[2] = v74;
        a9[3] = a6;
        a9[4] = a7;
        return result;
      }

      v99 = MEMORY[0x277D84F90];
      sub_21B2541C8(0, v43, 0);
      v44 = v89;
      v45 = 0;
      v46 = v99;
      v47 = (v90 + 7);
      v75 = v43;
      while (1)
      {
        if (v45 >= v90[2])
        {
          goto LABEL_57;
        }

        v85 = v45;
        v86 = v46;
        v48 = *(v47 - 2);
        v49 = *(v47 - 1);
        v50 = *v47;
        v88 = *(v47 - 3);
        if (!v76)
        {
          break;
        }

        sub_21B233A74(v44 + 32, &v93);
        v83 = v96;
        v81 = v50;
        v51 = v97;
        __swift_project_boxed_opaque_existential_1(&v93, v96);
        v52 = *(v51 + 8);
        v78 = *(v52 + 48);
        swift_bridgeObjectRetain_n();
        v53 = v77;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v54 = v48;
        v55 = v49;
        v56 = v48;
        v18 = v81;
        sub_21B254074(v54, v49, v81);
        v57 = v78(v83, v52);
        sub_21B233960(&v93);
        if (v57 < 0)
        {
          goto LABEL_58;
        }

        v58 = v92;
        if (!v57)
        {
          goto LABEL_45;
        }

        v59 = 0;
LABEL_46:
        sub_21B254074(0, v57, v59);

        sub_21B23A9F4(0, v57, v59);
        v61 = sub_21B248CCC(v56, v55, v18, 0, v57, v59);
        v84 = v62;
        v82 = v63;
        v64 = v88;

        sub_21B23A9F4(v56, v55, v18);
        v46 = v86;
        v99 = v86;
        v66 = *(v86 + 16);
        v65 = *(v86 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21B2541C8((v65 > 1), v66 + 1, 1);
          v64 = v88;
          v46 = v99;
        }

        v45 = v85 + 1;
        *(v46 + 16) = v66 + 1;
        v67 = v46 + 56 * v66;
        *(v67 + 32) = v64;
        *(v67 + 40) = v89;
        *(v67 + 48) = v53;
        *(v67 + 56) = v58;
        *(v67 + 64) = v61;
        *(v67 + 72) = v84;
        *(v67 + 80) = v82;
        v47 += 32;
        v44 = v89;
        if (v75 == v85 + 1)
        {
          v68 = v46;

          v70 = v68;
          goto LABEL_52;
        }
      }

      swift_bridgeObjectRetain_n();
      v53 = v77;
      swift_bridgeObjectRetain_n();
      v58 = v92;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v60 = v48;
      v55 = v49;
      v56 = v48;
      v18 = v50;
      sub_21B254074(v60, v49, v50);
LABEL_45:
      v57 = 0;
      v59 = 2;
      goto LABEL_46;
    }

    v26 = v92;
    if (!v18)
    {
      goto LABEL_37;
    }

LABEL_15:
    v93 = a1;
    v94 = a2;
    v95 = v26;
    v96 = 0;
    v97 = v19;
    v98 = v20;
    v21 = DataFrame.Rows.index(after:)(v18);
    v93 = a1;
    v94 = a2;
    v95 = v26;
    v96 = v18;

    a8(&v93);
    if (v10)
    {

      sub_21B23A9F4(0, v19, v20);
    }

    v27 = v20;
    v28 = v19;
    a6(&v99);

    v29 = v99;
    if (!v99)
    {
      goto LABEL_62;
    }

    v30 = v91;
    if (!*(v91 + 16) || (v31 = sub_21B24B884(v99), v30 = v91, (v32 & 1) == 0))
    {
      v36 = v90[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_21B23A88C(v36, v29, isUniquelyReferenced_nonNull_native);
      v38 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_60;
      }

      if (v38 < v18)
      {
        goto LABEL_61;
      }

      v91 = v93;
      if (v18 == v38)
      {
        v18 = 0;
        v39 = 0;
      }

      else
      {
        v39 = v18 + 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_21B24AFD0(0, v90[2] + 1, 1, v90);
      }

      v41 = v90[2];
      v40 = v90[3];
      if (v41 >= v40 >> 1)
      {
        v90 = sub_21B24AFD0((v40 > 1), v41 + 1, 1, v90);
      }

      v90[2] = v41 + 1;
      v42 = &v90[4 * v41];
      v42[4] = v29;
      v42[5] = v18;
      v42[6] = v39;
      *(v42 + 56) = 0;

      a2 = v77;

      a1 = v89;

      v19 = v28;
      v20 = v27;
      goto LABEL_10;
    }

    v33 = *(*(v91 + 56) + 8 * v31);
    v34 = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_21:
    if (v33 >= v34[2])
    {
      goto LABEL_54;
    }

    v35 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_55;
    }

    if (v35 < v18)
    {
      goto LABEL_56;
    }

    v90 = v34;
    sub_21B28DFBC(v18, v35);

    a1 = v89;

    v18 = v21;
    v19 = v28;
    v20 = v27;
  }

  v34 = sub_21B23A3BC(v90);
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_53:
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
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v93 = 0;
  v94 = 0xE000000000000000;

  sub_21B34B634();

  v93 = 0xD00000000000002BLL;
  v94 = 0x800000021B34DBA0;
  v99 = v18;
  v71 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v71);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B326224@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, void (*a6)(unint64_t *)@<X5>, void *a7@<X8>)
{
  v8 = v7;
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v99[0] = *(a1 + 3);
  v10 = v99[0];
  v99[1] = v11;
  v100 = v12;
  sub_21B2615FC(v99, &v91, &qword_27CD7F600, &qword_21B357468);
  v89 = sub_21B25F2B8(MEMORY[0x277D84F90]);
  v97 = *a1;
  v81 = *(a1 + 2);
  v98 = v81;
  v83 = *(&v97 + 1);
  v85 = v97;
  v13 = v10;
  if (v12)
  {
    if (v12 == 1 && *(v10 + 16))
    {
      v13 = *(v10 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v15)
      {
        v13 = 0;
      }

      else
      {
        v13 = v14;
      }
    }
  }

  sub_21B2A62E0(&v97, &v91);
  v88 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21B2A6400();
    if ((v17 & 1) == 0)
    {
      if (v13 != v16)
      {
        goto LABEL_13;
      }

LABEL_39:

      sub_21B23A9F4(v10, v11, v12);
      v38 = v88[2];
      if (!v38)
      {

        v41 = MEMORY[0x277D84F90];
LABEL_54:
        *a7 = v41;
        a7[1] = a2;
        a7[2] = a3;
        a7[3] = a4;
        a7[4] = a5;
        return result;
      }

      v101 = MEMORY[0x277D84F90];
      sub_21B2541C8(0, v38, 0);
      v39 = v88;
      v40 = 0;
      v41 = v101;
      v72 = v97;
      v73 = v38;
      v75 = *(v97 + 16);
      v42 = (v88 + 7);
      while (1)
      {
        if (v40 >= v39[2])
        {
          goto LABEL_59;
        }

        v86 = v41;
        v79 = v8;
        v43 = *(v42 - 2);
        v44 = *(v42 - 1);
        v45 = *v42;
        v82 = v40;
        v84 = *(v42 - 3);
        if (!v75)
        {
          break;
        }

        sub_21B233A74(v72 + 32, &v91);
        v13 = v44;
        v46 = v43;
        v47 = v94;
        v48 = v95;
        __swift_project_boxed_opaque_existential_1(&v91, v94);
        v49 = *(v48 + 8);
        v76 = *(v49 + 48);
        sub_21B2A62E0(&v97, v90);

        sub_21B2A62E0(&v97, v90);

        v50 = v46;
        v51 = v46;
        v44 = v13;
        v52 = v45;
        sub_21B254074(v51, v13, v45);
        v53 = v76(v47, v49);
        sub_21B233960(&v91);
        if (v53 < 0)
        {
          goto LABEL_60;
        }

        v43 = v50;
        if (!v53)
        {
          goto LABEL_47;
        }

        v54 = 0;
LABEL_48:
        sub_21B254074(0, v53, v54);

        sub_21B23A9F4(0, v53, v54);
        v55 = v13;
        v56 = v13;
        v57 = v52;
        v58 = sub_21B248CCC(v43, v56, v52, 0, v53, v54);
        v60 = v59;
        v62 = v61;

        sub_21B23A9F4(v43, v55, v57);
        v63 = v97;
        v64 = v98;
        v41 = v86;
        v101 = v86;
        v13 = *(v86 + 16);
        v65 = *(v86 + 24);
        if (v13 >= v65 >> 1)
        {
          v87 = v97;
          sub_21B2541C8((v65 > 1), v13 + 1, 1);
          v63 = v87;
          v41 = v101;
        }

        *(v41 + 16) = v13 + 1;
        v66 = v41 + 56 * v13;
        *(v66 + 32) = v84;
        v40 = v82 + 1;
        *(v66 + 40) = v63;
        *(v66 + 56) = v64;
        *(v66 + 64) = v58;
        *(v66 + 72) = v60;
        *(v66 + 80) = v62;
        v42 += 32;
        v8 = v79;
        v39 = v88;
        if (v73 == v82 + 1)
        {

          goto LABEL_54;
        }
      }

      sub_21B2A62E0(&v97, v90);

      sub_21B2A62E0(&v97, v90);

      v52 = v45;
      sub_21B254074(v43, v44, v45);
LABEL_47:
      v13 = v44;
      v53 = 0;
      v54 = 2;
      goto LABEL_48;
    }

    if (!v13)
    {
      goto LABEL_39;
    }

LABEL_13:
    v91 = v85;
    v92 = v83;
    v93 = v81;
    v94 = v10;
    v95 = v11;
    v96 = v12;
    v80 = DataFrame.Rows.index(after:)(v13);
    v91 = v85;
    v92 = v83;
    v93 = v81;
    v94 = v13;

    v18 = v8;
    a6(&v91);
    if (v8)
    {

      sub_21B23A9F4(v10, v11, v12);
    }

    v19 = v12;
    v20 = v11;
    v21 = v10;
    a4(v90);

    v22 = v90[0];
    if (!v90[0])
    {
      goto LABEL_63;
    }

    v23 = v89;
    if (*(v89 + 16))
    {
      v24 = sub_21B24B884(v90[0]);
      v23 = v89;
      if (v25)
      {
        break;
      }
    }

    v29 = v88[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v23;
    sub_21B23A88C(v29, v22, isUniquelyReferenced_nonNull_native);
    v31 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_61;
    }

    if (v31 < v13)
    {
      goto LABEL_62;
    }

    if (v13 == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v13;
    }

    if (v13 == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = v13 + 1;
    }

    v34 = v88;
    v89 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21B24AFD0(0, v88[2] + 1, 1, v88);
    }

    v36 = v34[2];
    v35 = v34[3];
    v88 = v34;
    if (v36 >= v35 >> 1)
    {
      v88 = sub_21B24AFD0((v35 > 1), v36 + 1, 1, v34);
    }

    v88[2] = v36 + 1;
    v37 = &v88[4 * v36];
    v37[4] = v22;
    v37[5] = v32;
    v37[6] = v33;
    *(v37 + 56) = 0;

    v8 = v18;
    v13 = v80;
LABEL_23:
    v10 = v21;
    v11 = v20;
    v12 = v19;
  }

  v26 = *(*(v89 + 56) + 8 * v24);
  v27 = v88;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_19;
  }

  v27 = sub_21B23A3BC(v88);
  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if (v26 >= v27[2])
    {
      goto LABEL_56;
    }

    v28 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_57;
    }

    if (v28 < v13)
    {
      goto LABEL_58;
    }

    v88 = v27;
    sub_21B28DFBC(v13, v28);

    v13 = v80;
    goto LABEL_23;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v91 = 0;
  v92 = 0xE000000000000000;

  sub_21B34B634();

  v91 = 0xD00000000000002BLL;
  v92 = 0x800000021B34DBA0;
  v90[0] = v13;
  v68 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v68);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

unint64_t sub_21B326A74()
{
  result = qword_27CD7F5E8;
  if (!qword_27CD7F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0C8, &qword_21B3518B0);
    sub_21B326AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F5E8);
  }

  return result;
}

unint64_t sub_21B326AF8()
{
  result = qword_27CD7F5F0;
  if (!qword_27CD7F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E200, &unk_21B352050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F5F0);
  }

  return result;
}

uint64_t sub_21B326B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21B326C0C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_21B26797C(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_21B326C78(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *a2 = a4;
    a2[1] = a5;
    if (a3 == 1)
    {
      v7 = 1;
LABEL_9:
      v8 = a3;
      goto LABEL_10;
    }

    a2[2] = a6;
    a2[3] = a7;
    v7 = 2;
    v8 = 2;
    if (a3 == 2)
    {
      goto LABEL_9;
    }

LABEL_10:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = v7;
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_21B326CDC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *RowGrouping.summary()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = sub_21B302B3C(v6, v7, a1);
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[0] = v5;
  v20[1] = v6;
  v20[2] = v7;
  v9 = *(sub_21B2FF4EC() + 16);

  if (v9)
  {
    v10 = sub_21B2642A8(v9, 0);
    result = sub_21B326CDC(v20, (v10 + 4), v9, 0, v9);
    if (result != v9)
    {
      __break(1u);
      return result;
    }

    v12 = v10[2];
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v13 = v10 + 4;
      v14 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v13++;
        v17 = v18;
        if (v18 != v8)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20[0] = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21B254034(0, *(v14 + 16) + 1, 1);
            v14 = v20[0];
          }

          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_21B254034((v15 > 1), v16 + 1, 1);
            v14 = v20[0];
          }

          *(v14 + 16) = v16 + 1;
          *(v14 + 8 * v16 + 32) = v17;
        }

        --v12;
      }

      while (v12);
      goto LABEL_14;
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_14:

  sub_21B327334(v14, a1, a2);
}

uint64_t RowGrouping.summary(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v5 = *v3;
  v44 = v3[1];
  v45 = v5;
  v46 = v3[2];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1;
    v47[0] = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v8 = v47[0];
    v9 = (v7 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      v13 = *(a2 + 16);
      v12 = *(a2 + 24);
      *&v48 = v45;
      *(&v48 + 1) = v44;
      *&v49 = v46;
      v15 = type metadata accessor for RowGrouping(0, v13, v12, v14);
      v16 = sub_21B302B3C(v11, v10, v15);

      v47[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        a1 = sub_21B254034((v17 > 1), v18 + 1, 1);
        v8 = v47[0];
      }

      *(v8 + 16) = v18 + 1;
      *(v8 + 8 * v18 + 32) = v16;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v8 = MEMORY[0x277D84F90];
  }

  v19 = v45;
  *&v48 = v45;
  v20 = MEMORY[0x28223BE20](a1);
  v41[8] = v13;
  v41[9] = v12;
  v42 = v8;
  MEMORY[0x28223BE20](v20);
  v41[2] = v13;
  v41[3] = v12;
  v41[4] = sub_21B327850;
  v41[5] = v21;
  v22 = sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v23 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_21B2FCC28(sub_21B327870, v41, v23, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

  v28 = swift_allocObject();
  v28[2] = v13;
  v28[3] = v12;
  v29 = v44;
  v28[4] = v19;
  v28[5] = v29;
  v28[6] = v46;
  v30 = swift_allocObject();
  *(v30 + 16) = v13;
  *(v30 + 24) = v12;
  v33 = type metadata accessor for SingleColumnBuilder(0, v13, v31, v32);
  v47[4] = v12;
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v42 = v35;
  sub_21B2B1CC4(sub_21B327894, v28, sub_21B327898, v30, v27, &v48);
  v47[0] = v22;
  v47[1] = v33;
  v47[2] = v34;
  v47[3] = v35;
  v36 = type metadata accessor for _GroupSummaries(0, v47);
  v37 = v43;
  v43[3] = v36;
  v37[4] = swift_getWitnessTable();
  v38 = swift_allocObject();
  *v37 = v38;
  v39 = v49;
  *(v38 + 16) = v48;
  *(v38 + 32) = v39;
  *(v38 + 48) = v50;
}

uint64_t sub_21B327334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[1];
  v7 = v3[2];
  *&v36[0] = *v3;
  v5 = *&v36[0];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v32 = v8;
  v33 = v9;
  v34 = a1;
  v27 = v8;
  v28 = v9;
  v29 = sub_21B327950;
  v30 = &v31;
  v10 = sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B327958, v26, v11, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v5;
  v16[5] = v6;
  v16[6] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v9;
  v20 = type metadata accessor for SingleColumnBuilder(0, v8, v18, v19);
  v35[4] = v9;
  v21 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  sub_21B2B1CC4(sub_21B327954, v16, sub_21B32794C, v17, v15, v36);
  v35[0] = v10;
  v35[1] = v20;
  v35[2] = v21;
  v35[3] = v25;
  a3[3] = type metadata accessor for _GroupSummaries(0, v35);
  a3[4] = swift_getWitnessTable();
  v22 = swift_allocObject();
  *a3 = v22;
  v23 = v36[1];
  *(v22 + 16) = v36[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v37;
}

uint64_t sub_21B3275D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  sub_21B34B474();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, a1 + v7);
}

uint64_t sub_21B327690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_21B34B474();
  (*(*(v10 - 8) + 16))(a1, a3, v10);
  return sub_21B29C30C(a5, a2);
}

uint64_t sub_21B327758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    sub_21B2832C0(a1 + 32, v8);
  }

  else
  {
    memset(v8, 0, 24);
    v8[3] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F360, &qword_21B356960);
  v5 = swift_dynamicCast();
  (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
  v6 = sub_21B34B474();
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_21B3278F4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];

  return sub_21B265ED0(v5, v4, v3, a1);
}

__n128 PackedOptionalsStorage.buffer.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t PackedOptionalsStorage.buffer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_21B327A98(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  v6 = type metadata accessor for PackedOptionalsBuffer(0, *(v3 + 80), v4, v5);
  return a1(v6);
}

_OWORD *PackedOptionalsStorage.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  static PackedOptionalsBuffer.allocate(capacity:)(a1, *(*v2 + 80), &v4);
  v2[1] = v4;
  return v2;
}

_OWORD *PackedOptionalsStorage.init(capacity:)(uint64_t a1)
{
  static PackedOptionalsBuffer.allocate(capacity:)(a1, *(*v1 + 80), &v3);
  v1[1] = v3;
  return v1;
}

uint64_t *PackedOptionalsStorage.__allocating_init(copying:capacity:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B327F60(a1, a2);

  return v2;
}

uint64_t *PackedOptionalsStorage.init(copying:capacity:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B327EDC(a1, a2);

  return v2;
}

Swift::Void __swiftcall PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(Swift::Int minimumCapacity, Swift::Bool growForAppend)
{
  v3 = v2;
  v4 = *v2;
  v5 = PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(minimumCapacity, growForAppend);
  swift_beginAccess();
  v11 = *(v3 + 1);
  v6 = *(v4 + 80);
  PackedOptionalsBuffer.init(moving:capacity:)(&v11, v5, v6, &v10);
  swift_beginAccess();
  v11 = *(v3 + 1);
  type metadata accessor for PackedOptionalsBuffer(0, v6, v7, v8);
  PackedOptionalsBuffer.deallocate()();
  v9 = v10;
  swift_beginAccess();
  *(v3 + 1) = v9;
}

Swift::Int __swiftcall PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(Swift::Int minimumCapacity, Swift::Bool growForAppend)
{
  v2 = minimumCapacity;
  if (growForAppend)
  {
    v3 = PackedOptionalsStorage.capacity.getter();
    minimumCapacity = PackedOptionalsStorage.capacity.getter();
    if (v3 < v2)
    {
      if (minimumCapacity + 0x4000000000000000 < 0)
      {
        __break(1u);
      }

      else if (2 * minimumCapacity <= v2)
      {
        return v2;
      }

      else
      {
        minimumCapacity *= 2;
      }
    }
  }

  return minimumCapacity;
}

uint64_t *PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(Swift::Int a1, Swift::Bool a2)
{
  v2 = PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(a1, a2);
  swift_allocObject();

  v4 = sub_21B327EDC(v3, v2);

  return v4;
}

Swift::Void __swiftcall PackedOptionalsStorage.resize(by:)(Swift::Int by)
{
  v3 = *v1;
  swift_beginAccess();
  type metadata accessor for PackedOptionalsBuffer(0, *(v3 + 80), v4, v5);
  PackedOptionalsBuffer.resize(by:)(by);
}

uint64_t PackedOptionalsStorage.append(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v6 = type metadata accessor for PackedOptionalsBuffer(0, *(v3 + 80), v4, v5);
  return PackedOptionalsBuffer.append(_:)(a1, v6);
}

uint64_t *sub_21B327EDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v7 = *(a1 + 16);
  PackedOptionalsBuffer.init(copying:capacity:)(&v7, a2, *(v5 + 80), &v8);
  *(v2 + 1) = v8;
  return v2;
}

char *sub_21B327FEC@<X0>(size_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = *a1 + 1;
  v8 = **a1;
  *a1 = v7;
  if (v8)
  {
    sub_21B239564();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    *(v9 + 8) = 0x800000021B34DBE0;
    *(v9 + 16) = 3;
    return swift_willThrow();
  }

  if ((v7 & 7) != 0)
  {
    v12 = sub_21B34A1CC();
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = *(v6 + 1);
  *a1 = v6 + 9;
  if (v12 < 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  result = sub_21B22E2C4(0, v12, 0, MEMORY[0x277D84F90]);
  v2 = result;
  v3 = *a1;
  if (v12)
  {
    while (1)
    {
      v13 = *v3;
      v3 += 8;
      v4 = v13;
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_21B22E2C4((v14 > 1), v15 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 2) = v15 + 1;
      *&v2[8 * v15 + 32] = v4;
      if (!--v12)
      {
        *a1 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_11:
  if ((v3 & 7) != 0)
  {
    v16 = sub_21B34A1CC();
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_25:
  v23 = *v3;
  v3 += 8;
  v16 = v23;
  *a1 = v3;
  if (v23 < 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  result = sub_21B22E2C4(0, v16, 0, MEMORY[0x277D84F90]);
  v12 = result;
  v4 = *a1;
  if (v16)
  {
    while (1)
    {
      v18 = *v4;
      v4 += 8;
      v17 = v18;
      if (v18 < 0)
      {
        break;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      v3 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_21B22E2C4((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v3;
      *(v12 + 8 * v20 + 32) = v17;
      if (!--v16)
      {
        *a1 = v4;
        goto LABEL_19;
      }
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_19:
  if ((v4 & 7) != 0)
  {
    v21 = sub_21B34A1CC();
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_27:
  v21 = *v4;
  *a1 = v4 + 8;
  if (v21 < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v3 = 8 * v21;
  if (v21)
  {
    v22 = sub_21B34AFE4();
    *(v22 + 16) = v21;
    bzero((v22 + 32), 8 * v21);
    goto LABEL_30;
  }

LABEL_29:
  v22 = MEMORY[0x277D84F90];
LABEL_30:
  v24 = (v22 + 32);
  v25 = *a1;
  if (v22 + 32 != *a1 || v24 >= &v25[8 * v21])
  {
    memmove(v24, v25, v3);
  }

  return sub_21B328278(v2, v12, v22, a2);
}

uint64_t sub_21B328278@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    v6 = 1;
    v7 = *(result + 16);
    while (1)
    {
      v8 = *v5++;
      v9 = v6 * v8;
      if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
      {
        break;
      }

      v6 = v9;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 1;
LABEL_7:
    if (v9 == *(a3 + 16))
    {
      *a4 = result;
      a4[1] = a2;
      a4[2] = a3;
      return result;
    }
  }

  v10 = result;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000022, 0x800000021B34D200);
  v11 = MEMORY[0x21CEED760](v10, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
  if (v4)
  {
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = *(v10 + 32);
      v14 = (v10 + 40);
      v15 = 1;
      while (v4 != v15)
      {
        if (v15 >= v12)
        {
          goto LABEL_17;
        }

        ++v15;
        v16 = *v14++;
        v17 = (v13 * v16) >> 64;
        v13 *= v16;
        if (v17 != v13 >> 63)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }
  }

  v18 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v18);

  MEMORY[0x21CEED5E0](0x746E656D656C6520, 0xEF20747562202C73);
  v19 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v19);

  MEMORY[0x21CEED5E0](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B3284C0(unsigned __int8 **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  ++*a1;
  v10 = sub_21B270D34(a1, a2);
  if (v4)
  {
    return v5;
  }

  v11 = v10;
  result = sub_21B270D34(a1, a2);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v11 + 32);
    while (1)
    {
      v16 = *v15++;
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v14 = 0;
LABEL_8:
  v76 = result;
  v72 = sub_21B270D34(a1, v14);
  result = sub_21B270D34(a1, v14);
  v18 = *(v76 + 16);
  if (!v18)
  {
    v19 = 0;
LABEL_14:
    v66 = result;
    result = sub_21B34A3DC(a1, v19, a3, v6);
    v67 = result;
    if (a2 < 0)
    {
      goto LABEL_87;
    }

    if (a2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v62 = result + 32;
      v64 = v11 + 32;
      v65 = v11;
      v63 = v76 + 32;
      v5 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        v70 = v22;
        v69 = v5;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = *(v25 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21B22E2C4(0, v27, 1, v25);
          }

          if (v27)
          {
            v28 = *(v25 + 2) - v27;
            memmove(v25 + 32, &v25[8 * v27 + 32], 8 * v28);
            *(v25 + 2) = v28;
          }
        }

        else if (*(v25 + 3) > 1uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          v29 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v29);
          v31 = v30 - 32;
          if (v30 < 32)
          {
            v31 = v30 - 25;
          }

          v29[2] = 0;
          v29[3] = 2 * (v31 >> 3);

          v25 = v29;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v26 + 16);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_21B22E2C4(0, v32, 1, v26);
            v26 = result;
          }

          if (v32)
          {
            v33 = *(v26 + 16) - v32;
            result = memmove((v26 + 32), (v26 + 32 + 8 * v32), 8 * v33);
            *(v26 + 16) = v33;
          }
        }

        else if (*(v26 + 24) > 1uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          v34 = swift_allocObject();
          v35 = _swift_stdlib_malloc_size(v34);
          v36 = v35 - 32;
          if (v35 < 32)
          {
            v36 = v35 - 25;
          }

          v34[2] = 0;
          v34[3] = 2 * (v36 >> 3);

          v26 = v34;
        }

        else
        {

          v26 = MEMORY[0x277D84F90];
        }

        v37 = v67;
        if (v24 >= *(v65 + 16))
        {
          goto LABEL_81;
        }

        v73 = v24;
        v38 = *(v64 + 8 * v24);
        if (v38 < 0)
        {
          goto LABEL_82;
        }

        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21B22E2C4(0, *(v25 + 2) + 1, 1, v25);
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_21B22E2C4(0, *(v26 + 16) + 1, 1, v26);
            v26 = result;
          }

          v39 = v76;
          v40 = v72;
          v41 = v66;
          v37 = v67;
          v43 = v66 + 32;
          v42 = v72 + 32;
          v44 = v23;
          while ((v23 & 0x8000000000000000) == 0)
          {
            if (v44 >= *(v40 + 16))
            {
              goto LABEL_78;
            }

            v45 = *(v42 + 8 * v44);
            v47 = *(v25 + 2);
            v46 = *(v25 + 3);
            if (v47 >= v46 >> 1)
            {
              result = sub_21B22E2C4((v46 > 1), v47 + 1, 1, v25);
              v43 = v66 + 32;
              v42 = v72 + 32;
              v41 = v66;
              v37 = v67;
              v40 = v72;
              v25 = result;
              v39 = v76;
            }

            *(v25 + 2) = v47 + 1;
            *&v25[8 * v47 + 32] = v45;
            if (v44 >= *(v41 + 16))
            {
              goto LABEL_79;
            }

            v48 = *(v43 + 8 * v44);
            v50 = *(v26 + 16);
            v49 = *(v26 + 24);
            if (v50 >= v49 >> 1)
            {
              result = sub_21B22E2C4((v49 > 1), v50 + 1, 1, v26);
              v43 = v66 + 32;
              v42 = v72 + 32;
              v41 = v66;
              v37 = v67;
              v40 = v72;
              v26 = result;
              v39 = v76;
            }

            *(v26 + 16) = v50 + 1;
            *(v26 + 8 * v50 + 32) = v48;
            ++v44;
            if (!--v38)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_77;
        }

        v44 = v23;
        v39 = v76;
LABEL_57:
        if (v73 >= *(v39 + 16))
        {
          goto LABEL_83;
        }

        v51 = *(v63 + 8 * v73);
        v52 = v70 + v51;
        if (__OFADD__(v70, v51))
        {
          goto LABEL_84;
        }

        v53 = *(v63 + 8 * v73);
        if (v52 < v70)
        {
          goto LABEL_85;
        }

        v54 = v37[2];
        if (v54 < v52)
        {
          goto LABEL_86;
        }

        if (v54 == v53)
        {

          v55 = v37;
        }

        else
        {
          v55 = MEMORY[0x277D84F90];
          if (v52 != v70)
          {
            if (v53 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
              v55 = swift_allocObject();
              v60 = _swift_stdlib_malloc_size(v55);
              v61 = v60 - 32;
              if (v60 < 32)
              {
                v61 = v60 - 25;
              }

              v55[2] = v53;
              v55[3] = 2 * (v61 >> 3);
            }

            memcpy(v55 + 4, (v62 + 8 * v70), 8 * v53);
          }
        }

        sub_21B328278(v25, v26, v55, &v74);
        v71 = v74;
        v68 = v75;
        v56 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_21B24A490(0, v69[2] + 1, 1, v69);
        }

        v58 = v56[2];
        v57 = v56[3];
        v5 = v56;
        if (v58 >= v57 >> 1)
        {
          v5 = sub_21B24A490((v57 > 1), v58 + 1, 1, v56);
        }

        v5[2] = v58 + 1;
        v59 = &v5[3 * v58];
        v24 = v73 + 1;
        *(v59 + 2) = v71;
        v59[6] = v68;
        v22 = v52;
        v23 = v44;
        if (v73 + 1 == a2)
        {

          return v5;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  v19 = 0;
  v20 = (v76 + 32);
  while (1)
  {
    v21 = *v20++;
    v17 = __OFADD__(v19, v21);
    v19 += v21;
    if (v17)
    {
      break;
    }

    if (!--v18)
    {
      goto LABEL_14;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_21B328BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B328CA8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PackedOptionalsBuffer(0, a4, v6, v7);
  PackedOptionalsBuffer.elementsBuffer.getter();
  v8 = sub_21B34AC64();
  return a1(v8);
}

uint64_t sub_21B328D40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  type metadata accessor for PackedOptionalsBuffer(0, a2, v3, v4);
  return PackedOptionalsBuffer.nilCount.getter();
}

uint64_t sub_21B328DA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = PackedOptionalsStorage.count.getter();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage(0, v4, v6, v7);
    if (sub_21B34B9B4())
    {
      if (PackedOptionalsStorage.capacity.getter() < v8)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v8, 1);
      }
    }

    else
    {
      v9 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v8, 1);

      *v2 = v9;
    }

    return PackedOptionalsStorage.append(_:)(a1);
  }

  return result;
}

Swift::Int sub_21B328E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(a2 + 16);
  v7 = sub_21B34B474();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_21B34B474();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v34 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36 = &v30 - v16;
  v17 = v4;
  v18 = PackedOptionalsStorage.count.getter();
  AssociatedConformanceWitness = a1;
  result = sub_21B34AED4();
  v22 = __OFADD__(v18, result);
  v23 = v18 + result;
  if (v22)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage(0, v32, v20, v21);
    v24 = sub_21B34B9B4();
    v30 = v15;
    if (v24)
    {
      if (PackedOptionalsStorage.capacity.getter() < v23)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v23, 1);
      }
    }

    else
    {
      v25 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v23, 1);

      *v17 = v25;
    }

    (*(v34 + 16))(v31, AssociatedConformanceWitness, a3);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_21B34B4D4();
    v34 = *(v33 + 48);
    if ((v34)(v13, 1, v7) != 1)
    {
      v26 = *(v33 + 32);
      v27 = (v33 + 8);
      v26(v9, v13, v7);
      while (1)
      {
        v28 = PackedOptionalsStorage.count.getter();
        if (v28 >= PackedOptionalsStorage.capacity.getter())
        {
          v29 = PackedOptionalsStorage.count.getter();
          v22 = __OFADD__(v29, 1);
          result = v29 + 1;
          if (v22)
          {
            __break(1u);
            goto LABEL_15;
          }

          PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
        }

        PackedOptionalsStorage.append(_:)(v9);
        (*v27)(v9, v7);
        sub_21B34B4D4();
        if ((v34)(v13, 1, v7) == 1)
        {
          return (*(v30 + 8))(v36, AssociatedTypeWitness);
        }

        v26(v9, v13, v7);
      }
    }

    return (*(v30 + 8))(v36, AssociatedTypeWitness);
  }

  return result;
}

Swift::Int sub_21B329278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21B34B474();
  v9 = *(v48 - 8);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v38 - v13;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v49 = &v38 - v17;
  v18 = v4;
  v19 = PackedOptionalsStorage.count.getter();
  v46 = a1;
  result = sub_21B34AED4();
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage(0, v7, v21, v22);
    v24 = sub_21B34B9B4();
    v39 = v9;
    v40 = v16;
    if (v24)
    {
      if (PackedOptionalsStorage.capacity.getter() < v23)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v23, 1);
      }
    }

    else
    {
      v25 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v23, 1);

      *v18 = v25;
    }

    (*(v14 + 16))(v45, v46, a3);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v41;
    v46 = AssociatedConformanceWitness;
    sub_21B34B4D4();
    v44 = *(v51 + 48);
    v45 = (v51 + 48);
    v28 = v44(v27, 1, v7);
    v29 = v42;
    if (v28 != 1)
    {
      v43 = *(v51 + 32);
      v30 = (v51 + 16);
      v31 = (v51 + 56);
      v32 = (v39 + 8);
      v51 += 32;
      v33 = (v51 - 24);
      v43(v42, v27, v7);
      while (1)
      {
        v35 = PackedOptionalsStorage.count.getter();
        if (v35 >= PackedOptionalsStorage.capacity.getter())
        {
          v36 = PackedOptionalsStorage.count.getter();
          v37 = __OFADD__(v36, 1);
          result = v36 + 1;
          if (v37)
          {
            __break(1u);
            goto LABEL_15;
          }

          PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
          v27 = v41;
          v29 = v42;
        }

        v34 = v47;
        (*v30)(v47, v29, v7);
        (*v31)(v34, 0, 1, v7);
        PackedOptionalsStorage.append(_:)(v34);
        (*v32)(v34, v48);
        (*v33)(v29, v7);
        sub_21B34B4D4();
        if (v44(v27, 1, v7) == 1)
        {
          return (*(v40 + 8))(v49, AssociatedTypeWitness);
        }

        v43(v29, v27, v7);
      }
    }

    return (*(v40 + 8))(v49, AssociatedTypeWitness);
  }

  return result;
}

void sub_21B329774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  sub_21B32AD0C(a1);
  sub_21B32AD94(a2, v8, v9, v10);
  v11 = *v3;
  swift_beginAccess();
  v14 = type metadata accessor for PackedOptionalsBuffer(0, v7, v12, v13);
  v15 = PackedOptionalsBuffer.firstElementAddress.getter();
  v16 = sub_21B32A318(a1, v11, v7);
  v17 = *(v7 - 8);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    (*(*(v7 - 8) + 16))(a3, v15 + *(*(v7 - 8) + 72) * a1, v7);
    v18 = 0;
  }

  (*(v17 + 56))(a3, v18, 1, v7);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (a1 + 1 >= a1)
  {
    sub_21B34B474();
    sub_21B34B794();
    v19 = sub_21B34B7A4();
    WitnessTable = swift_getWitnessTable();
    PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a1 + 1, 0, v21, v14, v19, WitnessTable);
    return;
  }

  __break(1u);
}

uint64_t sub_21B329914(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v33 = a2;
  v34 = a4;
  v31 = sub_21B34B474();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - v9;
  v30 = sub_21B34B474();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - v12;
  type metadata accessor for PackedOptionalsStorage(0, a5, v14, v15);
  v36 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v16 = PackedOptionalsStorage.count.getter();
  v29 = type metadata accessor for PackedOptionalsArray(0, a5, v17, v18);
  sub_21B32BBF0(v16, 0, v29, v19);
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    if (result)
    {
      v22 = 0;
      v23 = v11;
      v24 = (v8 + 8);
      v25 = (v23 + 8);
      while (1)
      {
        swift_beginAccess();
        v35 = *(a3 + 16);
        v28 = type metadata accessor for PackedOptionalsBuffer(0, v34, v26, v27);
        PackedOptionalsBuffer.subscript.getter(v22, v28, v10);
        v32(v10);
        if (v5)
        {
          break;
        }

        ++v22;
        (*v24)(v10, v31);
        sub_21B328DA8(v13, v29);
        (*v25)(v13, v30);
        if (v21 == v22)
        {
          return v36;
        }
      }

      (*v24)(v10, v31);
    }

    else
    {
      return v36;
    }
  }

  return result;
}

uint64_t sub_21B329BA4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v33 = a2;
  v9 = sub_21B34B474();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v29 - v10;
  v31 = sub_21B34B474();
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = v29 - v13;
  type metadata accessor for PackedOptionalsStorage(0, a5, v15, v16);
  v35 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v17 = PackedOptionalsStorage.count.getter();
  v30 = type metadata accessor for PackedOptionalsArray(0, a5, v18, v19);
  sub_21B32BBF0(v17, 0, v30, v20);
  result = PackedOptionalsStorage.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v22 = result;
    if (!result)
    {
      return v35;
    }

    v23 = v12;
    v24 = 0;
    v29[0] = v23 + 8;
    v29[1] = a4 - 8;
    while (1)
    {
      if (!sub_21B32A318(v24, a3, a4))
      {
        swift_beginAccess();
        v34 = *(a3 + 16);
        v27 = type metadata accessor for PackedOptionalsBuffer(0, a4, v25, v26);
        PackedOptionalsBuffer.subscript.getter(v24, v27, v11);
        v28 = *(a4 - 8);
        result = (*(v28 + 48))(v11, 1, a4);
        if (result == 1)
        {
          goto LABEL_12;
        }

        v32(v11);
        if (v5)
        {

          return (*(v28 + 8))(v11, a4);
        }

        (*(v28 + 8))(v11, a4);
        sub_21B328DA8(v14, v30);
        (*v29[0])(v14, v31);
      }

      if (v22 == ++v24)
      {
        return v35;
      }
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B329E78(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v22 = a1;
  v5 = *(a3 + 16);
  v21 = sub_21B34B474();
  v6 = *(v21 - 8);
  v7 = MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *v3;
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    result = swift_beginAccess();
    if (v14)
    {
      v20 = (v6 + 8);
      v17 = type metadata accessor for PackedOptionalsBuffer(0, v5, v15, v16);
      v18 = 0;
      while (1)
      {
        v19 = *(v12 + 24);
        v25 = *(v12 + 16);
        v26 = v19;
        v23 = v25;
        v24 = v19;
        PackedOptionalsBuffer.subscript.getter(v18, v17, v9);
        v22(v9);
        if (v4)
        {
          break;
        }

        (*v20)(v9, v21);
        result = PackedOptionalsBuffer.subscript.setter(v11, v18++, v17);
        if (v14 == v18)
        {
          return result;
        }
      }

      return (*v20)(v9, v21);
    }
  }

  return result;
}

uint64_t sub_21B32A064(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v26 = a1;
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *v3;
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    v14 = result;
    if (result)
    {
      v24 = v11;
      swift_beginAccess();
      v15 = 0;
      v25 = v5 - 8;
      v22 = v12;
      v23 = v14;
      do
      {
        result = sub_21B32A318(v15, v12, v5);
        if ((result & 1) == 0)
        {
          v18 = *(v12 + 24);
          v29 = *(v12 + 16);
          v30 = v18;
          v27 = v29;
          v28 = v18;
          v19 = type metadata accessor for PackedOptionalsBuffer(0, v5, v16, v17);
          PackedOptionalsBuffer.subscript.getter(v15, v19, v9);
          v20 = *(v5 - 8);
          result = (*(v20 + 48))(v9, 1, v5);
          if (result == 1)
          {
            goto LABEL_11;
          }

          v21 = v24;
          v26(v9);
          result = (*(v20 + 8))(v9, v5);
          if (v4)
          {
            return result;
          }

          (*(v20 + 56))(v21, 0, 1, v5);
          result = PackedOptionalsBuffer.subscript.setter(v21, v15, v19);
          v12 = v22;
          v14 = v23;
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  return result;
}

void *sub_21B32A29C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21B32AD0C(a1);
  swift_beginAccess();
  v9 = type metadata accessor for PackedOptionalsBuffer(0, a3, v7, v8);
  return PackedOptionalsBuffer.subscript.getter(a1, v9, a4);
}

BOOL sub_21B32A318(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  type metadata accessor for PackedOptionalsBuffer(0, a3, v5, v6);
  return PackedOptionalsBuffer.isNil(at:)(a1);
}

void sub_21B32A38C(uint64_t a1, Swift::Int a2, void (**a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  v12 = *(a4 + 16);
  if (PackedOptionalsStorage.count.getter() < a2)
  {
    goto LABEL_14;
  }

  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = a6;
  v14 = sub_21B34B1D4();
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  if (v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = PackedOptionalsStorage.count.getter();
  v21 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_21B34B824();
    __break(1u);
    return;
  }

  type metadata accessor for PackedOptionalsStorage(0, v12, v19, v20);
  if (sub_21B34B9B4())
  {
    if (PackedOptionalsStorage.capacity.getter() < v21)
    {
      PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v21, 1);
    }
  }

  else
  {
    v22 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v21, 1);

    *v6 = v22;
  }

  swift_beginAccess();
  v25 = type metadata accessor for PackedOptionalsBuffer(0, v12, v23, v24);
  PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, v17, a3, v25, a5, v26);
}

uint64_t sub_21B32A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  result = sub_21B328CA8(sub_21B32D314, v10, a3, a4);
  if (!v6)
  {
    return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
  }

  return result;
}

uint64_t sub_21B32A6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  result = sub_21B32ABE8(sub_21B32D2EC, v9, a3, a4);
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

uint64_t sub_21B32A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PackedOptionalsStorage.count.getter();
  if (v8 == PackedOptionalsStorage.count.getter())
  {
    v9 = sub_21B328D40(a1, a3);
    if (v9 == sub_21B328D40(a2, a3))
    {
      swift_beginAccess();
      v20 = *(a1 + 16);
      type metadata accessor for PackedOptionalsBuffer(0, a3, v10, v11);
      v12 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      v14 = v13;
      swift_beginAccess();
      v15 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      if (sub_21B32AB44(v15, v16, v12, v14))
      {
        result = PackedOptionalsStorage.count.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        v18 = result;

        if (!v18)
        {
LABEL_14:

          return 1;
        }

        v19 = 0;
        while (1)
        {
          if (!sub_21B32A318(v19, a1, a3) && !sub_21B32A318(v19, a2, a3))
          {
            *&v20 = v19;
            if ((sub_21B32B52C(&v20, a1, a2, a3, a4) & 1) == 0)
            {
              break;
            }
          }

          if (v18 == ++v19)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B32A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = sub_21B34B714();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v15 - v11);
  if (a2 < 0 || PackedOptionalsStorage.count.getter() < a2)
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v8, v16, v5);
    sub_21B34B724();
    WitnessTable = swift_getWitnessTable();
    sub_21B32A38C(a2, a2, v12, a3, v9, WitnessTable);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_21B32AB44(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  if (a3)
  {
    v5 = &a3[a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[a2];
  if (a1)
  {
    v7 = &a1[a2];
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (a3)
    {
      if (a3 == v5)
      {
        v8 = 0;
        v9 = 1;
        a3 = v4;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
        v12 = *a3++;
        v8 = v12;
        if (!a1)
        {
LABEL_16:
          v10 = 0;
          v11 = 1;
          if (v9)
          {
            return v11;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    if (a1 == v7)
    {
      v10 = 0;
      v11 = 1;
      a1 = v6;
      if (v9)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
      v13 = *a1++;
      v10 = v13;
      if (v9)
      {
        return v11;
      }
    }

LABEL_19:
    if (v8 != v10)
    {
      LODWORD(v11) = 1;
    }
  }

  while (v11 != 1);
  return 0;
}

uint64_t sub_21B32ABE8(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B32AD94(a3, a2, a3, a4);
  v7 = *v4;
  v8 = PackedOptionalsStorage.count.getter();
  v9 = *(a3 + 16);
  type metadata accessor for PackedOptionalsStorage(0, v9, v10, v11);
  v18 = v7;
  *v4 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  swift_beginAccess();
  type metadata accessor for PackedOptionalsBuffer(0, v9, v12, v13);
  v14 = PackedOptionalsBuffer.firstElementAddress.getter();
  v17[0] = sub_21B34B4A4();
  v17[1] = v15;
  a1(v17);
  sub_21B32C30C(v17, v14, v8, &v18, v4, v9);
}

uint64_t sub_21B32AD0C(uint64_t a1)
{
  if (a1 < 0 || (result = PackedOptionalsStorage.count.getter(), result <= a1))
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B32AD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PackedOptionalsStorage(0, *(a1 + 16), a3, a4);
  result = sub_21B34B9B4();
  if ((result & 1) == 0)
  {
    v6 = PackedOptionalsStorage.capacity.getter();
    v7 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v6, 0);

    *v4 = v7;
  }

  return result;
}

void (*sub_21B32AE10(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v11 = sub_21B34B474();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v16 = *a2;
  v9[5] = v15;
  v9[6] = v16;
  sub_21B32A29C(v16, v10, v15);
  return sub_21B32AF3C;
}

void sub_21B32AF3C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v8 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v3, v7);
    sub_21B32CCD4(v5, v4, v8);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v9(v3, v7);
  }

  else
  {
    sub_21B32CCD4(*(*a1 + 40), v4, v8);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_21B32B034(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_21B2DBAB4(a1, &v5, a3, a4);
}

void (*sub_21B32B074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B2444C0;
}

uint64_t sub_21B32B1A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B32B44C();
  *a1 = result;
  return result;
}

void (*sub_21B32B1CC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_21B32B258(v7, *a2, *v3, *(a3 + 16));
  return sub_21B285370;
}

void (*sub_21B32B258(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = sub_21B34B474();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  sub_21B32A29C(a2, a4, v9);
  return sub_21B2854A4;
}

uint64_t sub_21B32B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

void *sub_21B32B3A0()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B32B470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_21B32B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_21B32CC60(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t sub_21B32B52C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v52 = a3;
  v53 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v42 - v12;
  v14 = *(v9 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = *a1;
  sub_21B32A29C(v22, a4, &v42 - v20);
  sub_21B32A29C(v22, a4, v19);
  v49 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v52 = v14;
  v24 = *(v14 + 16);
  v24(v13, v21, v9);
  v51 = v23;
  v25 = &v13[v23];
  v26 = v9;
  v24(v25, v19, v9);
  v50 = v7;
  v27 = *(v7 + 48);
  v53 = a4;
  if (v27(v13, 1, a4) != 1)
  {
    v43 = v19;
    v44 = v21;
    v30 = v47;
    v31 = v26;
    v24(v47, v13, v26);
    v32 = v51;
    v33 = v53;
    v34 = v27(&v13[v51], 1, v53);
    v35 = v50;
    v36 = (v50 + 8);
    if (v34 != 1)
    {
      v38 = v45;
      (*(v50 + 32))(v45, &v13[v32], v33);
      v29 = sub_21B34AC54();
      v39 = *(v35 + 8);
      v39(v38, v33);
      v40 = *(v52 + 8);
      v40(v43, v31);
      v40(v44, v31);
      v39(v30, v33);
      v40(v13, v31);
      return v29 & 1;
    }

    v37 = *(v52 + 8);
    v37(v43, v31);
    v37(v44, v31);
    (*v36)(v30, v33);
    goto LABEL_6;
  }

  v28 = *(v52 + 8);
  v28(v19, v26);
  v28(v21, v26);
  if (v27(&v13[v51], 1, v53) != 1)
  {
LABEL_6:
    (*(v48 + 8))(v13, v49);
    v29 = 0;
    return v29 & 1;
  }

  v28(v13, v26);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_21B32B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  result = PackedOptionalsStorage.count.getter();
  if (result)
  {
    v10 = 0;
    v11 = (v6 + 8);
    while (1)
    {
      result = sub_21B32A29C(v10, a3, v8);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_21B34B484();
      (*v11)(v8, v5);
      result = PackedOptionalsStorage.count.getter();
      ++v10;
      if (v12 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B32BB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B34BBC4();
  sub_21B32B9D4(v7, a1, a2, a3);
  return sub_21B34BC24();
}

uint64_t sub_21B32BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B32B9D4(v7, *v3, *(a2 + 16), v5);
  return sub_21B34BC24();
}

void sub_21B32BBF0(Swift::Int a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PackedOptionalsStorage(0, *(a3 + 16), a3, a4);
  v7 = sub_21B34B9B4();
  v8 = a2 & 1;
  if (v7)
  {
    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(a1, v8);
  }

  else
  {
    v9 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(a1, v8);

    *v4 = v9;
  }
}

void sub_21B32BC68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    swift_getWitnessTable();
    sub_21B34B194();
    sub_21B34B474();
    sub_21B34B794();
    v7 = sub_21B34B7A4();
    WitnessTable = swift_getWitnessTable();
    sub_21B32A38C(v11, v12, v9, a2, v7, WitnessTable);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage(0, *(a2 + 16), a3, a4);
    v10 = PackedOptionalsStorage.__allocating_init(capacity:)(0);

    *v5 = v10;
  }
}

_OWORD *sub_21B32BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_21B32BD70(*(a1 + 16), a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_21B32BDD0(uint64_t *a1, void (**a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B32A38C(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B32BE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = sub_21B32D284(a1, a2, *(a3 + 16), a5);
  v8 = sub_21B34B474();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = v7;
  return result;
}

uint64_t sub_21B32BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = sub_21B32C8B8(a1, *(a4 + 16), a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t sub_21B32BF50(uint64_t a1, uint64_t a2)
{
  sub_21B328DA8(a1, a2);
  v3 = sub_21B34B474();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t sub_21B32BFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B328E58(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_21B32C05C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  a5(a1, *a2);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_21B32C30C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  result = sub_21B34B494();
  if (result)
  {
    v12 = result == a2;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && a1[1] == a3)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

void *sub_21B32C3D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a3;
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC84();
  if (!PackedOptionalsStorage.count.getter())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  v10 = 0;
  v13 = (v7 + 8);
  while (1)
  {
    result = sub_21B32A29C(v10, v15, v9);
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
    v16[6] = v14;
    swift_getWitnessTable();
    sub_21B34B984();
    if (v4)
    {
      (*v13)(v9, v6);
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    (*v13)(v9, v6);
    ++v10;
    if (v12 == PackedOptionalsStorage.count.getter())
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_21B32C5E4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = sub_21B34B474();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  type metadata accessor for PackedOptionalsStorage(0, a2, v9, v10);
  v11 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v25 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC64();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v19 = a1;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    if ((sub_21B34B974() & 1) == 0)
    {
      v13 = (v20 + 8);
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
        v22 = v12;
        swift_getWitnessTable();
        sub_21B34B964();
        v16 = type metadata accessor for PackedOptionalsArray(0, a2, v14, v15);
        sub_21B328DA8(v8, v16);
        (*v13)(v8, v6);
        __swift_project_boxed_opaque_existential_1(v23, v24);
      }

      while ((sub_21B34B974() & 1) == 0);
      v11 = v25;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v11;
}

_OWORD *sub_21B32C830@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_21B32C5E4(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_21B32C864(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

_OWORD *sub_21B32C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B34B474();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_21B34B474();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  v34 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v29 - v16;
  type metadata accessor for PackedOptionalsStorage(0, a2, v18, v19);
  v20 = sub_21B34AED4();
  v21 = PackedOptionalsStorage.__allocating_init(capacity:)(v20);
  (*(v34 + 16))(v33, a1, a3);
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v17;
  v34 = AssociatedTypeWitness;
  v32 = AssociatedConformanceWitness;
  sub_21B34B4D4();
  v23 = v30;
  v31 = *(v30 + 48);
  if (v31(v13, 1, v7) == 1)
  {
LABEL_2:
    (*(v29 + 8))(v33, v34);
    return v21;
  }

  v25 = *(v23 + 32);
  v25(v9, v13, v7);
  while (1)
  {
    v26 = PackedOptionalsStorage.count.getter();
    if (v26 < PackedOptionalsStorage.capacity.getter())
    {
      goto LABEL_4;
    }

    v27 = PackedOptionalsStorage.count.getter();
    v28 = __OFADD__(v27, 1);
    result = (v27 + 1);
    if (v28)
    {
      break;
    }

    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
LABEL_4:
    PackedOptionalsStorage.append(_:)(v9);
    (*(v23 + 8))(v9, v7);
    sub_21B34B4D4();
    if (v31(v13, 1, v7) == 1)
    {
      goto LABEL_2;
    }

    v25(v9, v13, v7);
  }

  __break(1u);
  return result;
}

_OWORD *sub_21B32CC60(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_21B34B474();
  v3 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  return sub_21B32C8B8(&v6, a2, v3, WitnessTable);
}

void *sub_21B32CCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_21B34B474();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  sub_21B32AD0C(a2);
  sub_21B32AD94(a3, v12, v13, v14);
  v15 = *v3;
  swift_beginAccess();
  v20 = *(v15 + 16);
  (*(v9 + 16))(v11, a1, v8);
  v18 = type metadata accessor for PackedOptionalsBuffer(0, v7, v16, v17);
  return PackedOptionalsBuffer.subscript.setter(v11, a2, v18);
}

_OWORD *sub_21B32CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21B34B474();
  v35 = *(v44 - 8);
  v8 = MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v34 - v11;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v34 - v16;
  type metadata accessor for PackedOptionalsStorage(0, a2, v18, v19);
  v20 = sub_21B34AED4();
  v21 = PackedOptionalsStorage.__allocating_init(capacity:)(v20);
  (*(v12 + 16))(v14, a1, a3);
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v37;
  v45 = v17;
  v46 = AssociatedTypeWitness;
  v42 = AssociatedConformanceWitness;
  sub_21B34B4D4();
  v24 = v47;
  v25 = v38;
  v40 = *(v47 + 48);
  v41 = v47 + 48;
  if (v40(v23, 1, a2) == 1)
  {
LABEL_2:
    (*(v36 + 8))(v45, v46);
    return v21;
  }

  v28 = *(v24 + 32);
  v27 = v24 + 32;
  v39 = v28;
  v29 = (v35 + 8);
  v47 = v27;
  v28(v25, v23, a2);
  while (1)
  {
    v31 = PackedOptionalsStorage.count.getter();
    if (v31 < PackedOptionalsStorage.capacity.getter())
    {
      goto LABEL_4;
    }

    v32 = PackedOptionalsStorage.count.getter();
    v33 = __OFADD__(v32, 1);
    result = (v32 + 1);
    if (v33)
    {
      break;
    }

    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
LABEL_4:
    v30 = v43;
    (*(v27 - 16))(v43, v25, a2);
    (*(v27 + 24))(v30, 0, 1, a2);
    PackedOptionalsStorage.append(_:)(v30);
    (*v29)(v30, v44);
    (*(v27 - 24))(v25, a2);
    sub_21B34B4D4();
    if (v40(v23, 1, a2) == 1)
    {
      goto LABEL_2;
    }

    v39(v25, v23, a2);
  }

  __break(1u);
  return result;
}

_OWORD *sub_21B32D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PackedOptionalsStorage(0, a3, a3, a4);
  result = PackedOptionalsStorage.__allocating_init(capacity:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; a2; --a2)
    {
      PackedOptionalsStorage.append(_:)(a1);
    }

    return i;
  }

  return result;
}

uint64_t sub_21B32D350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v4, 0);
  if (!v4)
  {
    return v15;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;

    result = sub_21B2A0B58(v7, v6);
    if (result <= a2)
    {
      break;
    }

LABEL_6:
    v11 = *(v15 + 16);
    v10 = *(v15 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_21B231F10((v10 > 1), v11 + 1, 1);
    }

    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v6;
    if (!--v4)
    {
      return v15;
    }
  }

  if (!__OFSUB__(a2, result))
  {
    v13 = sub_21B34AE74();
    v14 = v9;

    MEMORY[0x21CEED5E0](v7, v6);

    v7 = v13;
    v6 = v14;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D494(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v5, 0);
  v6 = v18;
  if (!v5)
  {
    return v6;
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D600(void (*a1)(void *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v6, 0);
  v7 = v20;
  if (!v6)
  {
    return v7;
  }

  for (i = (a3 + 36); ; i += 8)
  {
    v9 = *i != 0;
    v16 = *(i - 1);
    v17 = v9;
    v18 = 0;
    a1(v19, &v16);
    if (v3)
    {
      break;
    }

    v11 = v19[0];
    v10 = v19[1];
    v20 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D734(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v6, 0);
  v7 = v20;
  if (!v6)
  {
    return v7;
  }

  for (i = (a3 + 40); ; i += 16)
  {
    v9 = *i;
    v16 = *(i - 1);
    v17 = v9;
    v18 = 0;
    a1(v19, &v16);
    if (v3)
    {
      break;
    }

    v10 = v19[0];
    v11 = v19[1];
    v20 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t OptionalColumnProtocol.description(options:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v112 = a3;
  v7 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 1);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v103 - v13;
  v15 = sub_21B34B1D4();
  if (a1[2] >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = a1[2];
  }

  sub_21B34B204();
  v106 = v7;
  v17 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v110 = v16;
  sub_21B34B2A4();
  v19 = *(AssociatedConformanceWitness + 8);
  v107 = a2;
  v108 = v3;
  sub_21B32E6F8(v14, v17, a2, AssociatedTypeWitness, v112, v19, &v117);
  v20 = (*(v9 + 8))(v14, AssociatedTypeWitness);
  v23 = v120;
  v24 = v120 + 2;
  if (__OFADD__(v120, 2))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v4 = 8623330;
    *&v121 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v25 = v121;
    AssociatedConformanceWitness = 0xA300000000000000;
    v109 = 8492258;
    v20 = sub_21B34AE74();
    v12 = *(v25 + 16);
    v22 = *(v25 + 24);
    AssociatedTypeWitness = (v12 + 1);
    if (v12 < v22 >> 1)
    {
      goto LABEL_6;
    }
  }

  v95 = v20;
  v96 = v21;
  sub_21B231F10((v22 > 1), AssociatedTypeWitness, 1);
  v21 = v96;
  v20 = v95;
  v25 = v121;
LABEL_6:
  *(v25 + 16) = AssociatedTypeWitness;
  v26 = v25 + 16 * v12;
  *(v26 + 32) = v20;
  *(v26 + 40) = v21;
  *&v121 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v111 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
  v112 = v27;
  v28 = sub_21B34AB74();
  v30 = v29;

  *&v121 = 9409762;
  *(&v121 + 1) = AssociatedConformanceWitness;
  MEMORY[0x21CEED5E0](v28, v30);

  MEMORY[0x21CEED5E0](9671906, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v116 = v121;
  v31 = *(&v117 + 1);
  v32 = v117;
  v33 = sub_21B2A0B58(v117, *(&v117 + 1));
  if (v23 >= v33)
  {
    if (__OFSUB__(v23, v33))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = sub_21B34AE74();
    v39 = v38;
    v121 = __PAIR128__(v31, v32);

    MEMORY[0x21CEED5E0](v37, v39);

    v36 = *(&v121 + 1);
    v32 = v121;
  }

  else
  {

    v36 = v31;
  }

  *&v121 = 32;
  *(&v121 + 1) = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v32, v36);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v40 = v121;
  *&v121 = v4;
  *(&v121 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v40, *(&v40 + 1));

  MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v121, *(&v121 + 1));

  if (*(v17 + 24) == 1)
  {
    v42 = *(&v118 + 1);
    v41 = v118;
    result = sub_21B2A0B58(v118, *(&v118 + 1));
    if (v23 >= result)
    {
      if (__OFSUB__(v23, result))
      {
        __break(1u);
        goto LABEL_51;
      }

      v44 = sub_21B34AE74();
      v46 = v45;
      v121 = __PAIR128__(v42, v41);

      MEMORY[0x21CEED5E0](v44, v46);

      v42 = *(&v121 + 1);
      v41 = v121;
    }

    else
    {
    }

    *&v121 = 32;
    *(&v121 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v41, v42);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v47 = v121;
    *&v121 = v4;
    *(&v121 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v47, *(&v47 + 1));

    MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v121, *(&v121 + 1));
  }

  v105 = v31;
  *&v121 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v48 = v121;
  v49 = sub_21B34AE74();
  v52 = *(v48 + 16);
  v51 = *(v48 + 24);
  if (v52 >= v51 >> 1)
  {
    v97 = v49;
    v98 = v50;
    sub_21B231F10((v51 > 1), v52 + 1, 1);
    v50 = v98;
    v49 = v97;
    v48 = v121;
  }

  *(v48 + 16) = v52 + 1;
  v53 = v48 + 16 * v52;
  *(v53 + 32) = v49;
  *(v53 + 40) = v50;
  *&v121 = v48;
  AssociatedConformanceWitness = sub_21B34AB74();
  v55 = v54;

  *&v121 = 10589410;
  *(&v121 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](AssociatedConformanceWitness, v55);

  MEMORY[0x21CEED5E0](11113698, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v28 = *(&v121 + 1);
  MEMORY[0x21CEED5E0](v121, *(&v121 + 1));

  v35 = &v123;
  v32 = v110;
  if ((v110 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v110)
  {
    v35 = v119;
    v122 = v119;
    if (v110 <= *(v119 + 16))
    {
      v104 = v24;
      v109 = v17;
      v17 = (v119 + 40);
      v4 = 0xE100000000000000;
      AssociatedConformanceWitness = 8557794;
      v24 = 0xA300000000000000;
      v56 = v110;
      while (1)
      {
        AssociatedTypeWitness = *(v17 - 1);
        v12 = *v17;

        v20 = sub_21B2A0B58(AssociatedTypeWitness, v12);
        if (v23 >= v20)
        {
          if (__OFSUB__(v23, v20))
          {
            __break(1u);
            goto LABEL_43;
          }

          v58 = sub_21B34AE74();
          v59 = v23;
          v61 = v60;
          *&v121 = AssociatedTypeWitness;
          *(&v121 + 1) = v12;

          MEMORY[0x21CEED5E0](v58, v61);
          v23 = v59;
          v4 = 0xE100000000000000;

          v12 = *(&v121 + 1);
          AssociatedTypeWitness = v121;
        }

        *&v121 = 32;
        *(&v121 + 1) = 0xE100000000000000;
        MEMORY[0x21CEED5E0](AssociatedTypeWitness, v12);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v57 = v121;
        *&v121 = 8557794;
        *(&v121 + 1) = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v57, *(&v57 + 1));

        MEMORY[0x21CEED5E0](8557794, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v121, *(&v121 + 1));

        v17 += 2;
        if (!--v56)
        {

          v121 = v118;
          sub_21B2B421C(&v121);
          v24 = v104;
          v32 = v110;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_46;
  }

  v121 = v118;
  sub_21B2B421C(&v121);
  v122 = v119;
LABEL_28:
  sub_21B332620(&v122);
  v28 = v106;
  if (v32 >= sub_21B34B1D4())
  {
    v114 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v90 = v114;
    v32 = 0xA300000000000000;
    v33 = sub_21B34AE74();
    AssociatedConformanceWitness = *(v90 + 16);
    v35 = *(v90 + 24);
    v28 = AssociatedConformanceWitness + 1;
    if (AssociatedConformanceWitness < v35 >> 1)
    {
LABEL_40:
      *(v90 + 16) = v28;
      v91 = v90 + 16 * AssociatedConformanceWitness;
      *(v91 + 32) = v33;
      *(v91 + 40) = v34;
      v114 = v90;
      v92 = sub_21B34AB74();
      v94 = v93;

      v114 = 9737442;
      v115 = v32;
      MEMORY[0x21CEED5E0](v92, v94);

      MEMORY[0x21CEED5E0](9999586, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      v89 = v114;
      v88 = v115;
      goto LABEL_41;
    }

LABEL_49:
    v99 = v33;
    v100 = v34;
    sub_21B231F10((v35 > 1), v28, 1);
    v34 = v100;
    v33 = v99;
    v90 = v114;
    goto LABEL_40;
  }

  v33 = sub_21B34B1D4();
  v35 = v33 - v32;
  if (__OFSUB__(v33, v32))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v113 = v33 - v32;
  v114 = sub_21B34B944();
  v115 = v62;
  MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
  v63 = sub_21B2A11F8(v23, v114, v115);
  v65 = v64;

  result = sub_21B2A0B58(v63, v65);
  v66 = v23 - result;
  if (v23 < result)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v23, result))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v67 = sub_21B34AE74();
  v69 = v68;
  v114 = v63;
  v115 = v65;

  MEMORY[0x21CEED5E0](v67, v69);

  v63 = v114;
  v65 = v115;
LABEL_33:
  v114 = 32;
  v115 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v63, v65, v66);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v71 = v114;
  v70 = v115;
  v114 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v72 = v114;
  v73 = sub_21B34AE74();
  v76 = *(v72 + 16);
  v75 = *(v72 + 24);
  if (v76 >= v75 >> 1)
  {
    v101 = v73;
    v102 = v74;
    sub_21B231F10((v75 > 1), v76 + 1, 1);
    v74 = v102;
    v73 = v101;
    v72 = v114;
  }

  *(v72 + 16) = v76 + 1;
  v77 = v72 + 16 * v76;
  *(v77 + 32) = v73;
  *(v77 + 40) = v74;
  v114 = v72;
  v78 = sub_21B34AB74();
  v80 = v79;

  v114 = 10654946;
  v115 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v78, v80);

  MEMORY[0x21CEED5E0](11179234, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v114, v115);

  result = sub_21B2A0B58(v71, v70);
  v81 = v24 - result;
  if (v24 < result)
  {
    goto LABEL_38;
  }

  if (!__OFSUB__(v24, result))
  {
    v82 = sub_21B34AE74();
    v84 = v83;
    v114 = v71;
    v115 = v70;

    MEMORY[0x21CEED5E0](v82, v84);

    v71 = v114;
    v70 = v115;
LABEL_38:
    v114 = 8885474;
    v115 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v71, v70, v81);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v114, v115);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v24;
    v86 = sub_21B33F0FC(inited);
    v88 = v87;
    swift_setDeallocating();
    v89 = v86;
LABEL_41:
    MEMORY[0x21CEED5E0](v89, v88);

    return v116;
  }

LABEL_52:
  __break(1u);
  return result;
}

double sub_21B32E658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

void *sub_21B32E6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = a5;
  v13 = (*(*(a5 + 8) + 16))(a3);
  v14 = *(a2 + 8);
  v42 = sub_21B2A11F8(v14, v13, v15);
  v41 = v16;

  v44 = a3;
  v45 = a4;
  v40 = a7;
  if (*(a2 + 24) != 1)
  {
    v32 = a6;
    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_15:
    v33 = sub_21B34ADA4();
    v34 = sub_21B34ADA4();

    if (v34 <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    v36 = sub_21B32FA30(a1, v35, v14, a2, v44, v45, v8, v32);
    result = sub_21B3419B8(v42, v41, v20, v18, v36, v46);
    v37 = v46[1];
    *v40 = v46[0];
    v40[1] = v37;
    v40[2] = v46[2];
    return result;
  }

  *&v46[0] = 60;
  *(&v46[0] + 1) = 0xE100000000000000;
  swift_getAssociatedTypeWitness();
  v17 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v17);

  MEMORY[0x21CEED5E0](62, 0xE100000000000000);
  v18 = 0xE100000000000000;
  if (!v14)
  {

    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_14:
    v32 = a6;

    goto LABEL_15;
  }

  v38 = v8;
  v39 = a6;
  v19 = 0;
  v20 = *&v46[0];
  v21 = HIBYTE(*(&v46[0] + 1)) & 0xFLL;
  v22 = 4 * v21;
  if (!v21 || v14 < 1)
  {
LABEL_9:
    if (v19 != v22)
    {
      sub_21B34ADC4();
      v29 = sub_21B34AEB4();
      v20 = MEMORY[0x21CEED540](v29);
      v31 = v30;

      *&v46[0] = v20;
      *(&v46[0] + 1) = v31;

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      v18 = v31;
    }

    a6 = v39;
    v8 = v38;
    goto LABEL_14;
  }

  v23 = 0;
  while (1)
  {
    v24 = sub_21B34AE94();
    v26 = sub_21B2A0BE0(v24, v25);

    v28 = __OFADD__(v23, v26);
    v23 += v26;
    if (v28)
    {
      break;
    }

    v19 = sub_21B34ADB4() >> 14;
    if (v19 >= v22 || v23 >= v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Column.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9[1] = *v1;
  v10 = *(v1 + 8);
  FormattingOptions.init()(v5);
  WitnessTable = swift_getWitnessTable();
  v7 = OptionalColumnProtocol.description(options:)(v5, a1, WitnessTable);
  sub_21B2B42B0(v5);
  return v7;
}

uint64_t Column.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = sub_21B34BC44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v12 = v2[1];
  v13 = v2[2];
  v23 = *v2;
  v11 = v23;
  v24 = v12;
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B352090;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 72) = v15;
  *(v14 + 80) = 0x746E756F63;
  *(v14 + 88) = 0xE500000000000000;
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = v13;
  v16 = Column.count.getter();
  v17 = MEMORY[0x277D83B88];
  *(v14 + 96) = v16;
  *(v14 + 120) = v17;
  *(v14 + 128) = 0x73746E65746E6F63;
  *(v14 + 136) = 0xE800000000000000;
  *(v14 + 168) = type metadata accessor for PackedOptionalsArray(0, *(a1 + 16), v18, v19);
  *(v14 + 144) = v13;
  v20 = sub_21B34BC34();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v5 + 104))(v7, *MEMORY[0x277D84C38], v4);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return sub_21B34BC54();
}

double sub_21B32ED28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t ColumnSlice.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 2);
  v10 = *v1;
  v11 = v6;
  v12 = *(v1 + 24);
  FormattingOptions.init()(v5);
  WitnessTable = swift_getWitnessTable();
  v8 = OptionalColumnProtocol.description(options:)(v5, a1, WitnessTable);
  sub_21B2B42B0(v5);
  return v8;
}

uint64_t ColumnSlice.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_21B34BC44();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v40 = *v2;
  v9 = v40;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v44 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B352090;
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;

  v15 = ColumnSlice.name.getter(a1);
  v16 = MEMORY[0x277D837D0];
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 72) = v16;
  *(v14 + 80) = 0x746E756F63;
  *(v14 + 88) = 0xE500000000000000;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v20 = ColumnSlice.count.getter(a1, v17, v18, v19);
  v21 = MEMORY[0x277D83B88];
  *(v14 + 96) = v20;
  *(v14 + 120) = v21;
  *(v14 + 128) = 0x73746E65746E6F63;
  *(v14 + 136) = 0xE800000000000000;
  type metadata accessor for Column(255, *(a1 + 16), v22, v23);
  swift_getWitnessTable();
  *(v14 + 168) = sub_21B34BB44();
  v24 = swift_allocObject();
  *(v14 + 144) = v24;
  v24[2] = v9;
  v24[3] = v10;
  v24[4] = v11;
  v24[5] = v12;
  v24[6] = v13;
  v25 = sub_21B34BC34();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  (*(v4 + 104))(v27, *MEMORY[0x277D84C38], v28);

  return sub_21B34BC54();
}

uint64_t sub_21B32F190@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_21B34BC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_21B32F204@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t DiscontiguousColumnSlice.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 40);
  v10 = *v1;
  v11 = *(v1 + 1);
  v12 = *(v1 + 3);
  v13 = v6;
  FormattingOptions.init()(v5);
  WitnessTable = swift_getWitnessTable();
  v8 = OptionalColumnProtocol.description(options:)(v5, a1, WitnessTable);
  sub_21B2B42B0(v5);
  return v8;
}

uint64_t DiscontiguousColumnSlice.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_21B34BC44();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = v2[1];
  v12 = v2[2];
  v11 = v2[3];
  v13 = v2[4];
  v14 = *(v2 + 40);
  v49 = *v2;
  v10 = v49;
  v50 = v9;
  v51 = v12;
  v52 = v11;
  v53 = v13;
  v54 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B352090;
  *(v15 + 32) = 1701667182;
  *(v15 + 40) = 0xE400000000000000;
  v43 = v10;
  v44 = v9;
  v45 = v12;
  v46 = v11;
  v47 = v13;
  v48 = v14;
  v16 = sub_21B233AD0();
  v17 = MEMORY[0x277D837D0];
  *(v15 + 48) = v16;
  *(v15 + 56) = v18;
  *(v15 + 72) = v17;
  *(v15 + 80) = 0x746E756F63;
  *(v15 + 88) = 0xE500000000000000;
  v37 = v10;
  v38 = v9;
  v39 = v12;
  v40 = v11;
  v41 = v13;
  v42 = v14;

  sub_21B254074(v11, v13, v14);
  v22 = DiscontiguousColumnSlice.count.getter(a1, v19, v20, v21);
  v23 = MEMORY[0x277D83B88];
  *(v15 + 96) = v22;
  *(v15 + 120) = v23;
  *(v15 + 128) = 0x73746E65746E6F63;
  *(v15 + 136) = 0xE800000000000000;
  v26 = type metadata accessor for Column(255, *(a1 + 16), v24, v25);
  WitnessTable = swift_getWitnessTable();
  *(v15 + 168) = type metadata accessor for _DiscontiguousSlice(0, v26, WitnessTable, v28);
  v29 = swift_allocObject();
  *(v15 + 144) = v29;
  *(v29 + 16) = v10;
  *(v29 + 24) = v9;
  *(v29 + 32) = v12;
  *(v29 + 40) = v11;
  *(v29 + 48) = v13;
  *(v29 + 56) = v14;
  v30 = sub_21B34BC34();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  (*(v34 + 104))(v33, *MEMORY[0x277D84C38], v35);

  sub_21B254074(v11, v13, v14);
  return sub_21B34BC54();
}

uint64_t sub_21B32F6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t *))
{
  v20[2] = a3;
  v20[3] = a2;
  v6 = sub_21B32D734(a5, v20, a4);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21B254034(0, v7, 0);
    v8 = v21;
    v9 = v6 + 40;
    do
    {

      v10 = sub_21B34ADA4();

      v21 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21B254034((v11 > 1), v12 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  v13 = sub_21B33F588(v8);
  v15 = v14;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  if (v16 <= a1)
  {
    v17 = a1;
  }

  else
  {
    v17 = v16;
  }

  v18 = sub_21B32D350(v6, v17);

  return v18;
}

uint64_t sub_21B32F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = a3;
  v19[3] = a2;
  v5 = sub_21B32D600(sub_21B332D74, v19, a4);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v7 = v20;
    v8 = v5 + 40;
    do
    {

      v9 = sub_21B34ADA4();

      v20 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254034((v10 > 1), v11 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v9;
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  v12 = sub_21B33F588(v7);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  if (v15 <= a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = v15;
  }

  v17 = sub_21B32D350(v5, v16);

  return v17;
}

uint64_t sub_21B32FA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  v16 = swift_dynamicCastMetatype();
  if (v16)
  {
    v17 = a4;
    v18 = a3;
    MEMORY[0x28223BE20](v16);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    v22 = sub_21B23CCA8(sub_21B332ED4, v40, a6, v20, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v21);
    v23 = sub_21B332D34;
LABEL_5:
    v28 = sub_21B32F6B8(a2, v18, v17, v22, v23);
LABEL_6:
    v29 = v28;

    return v29;
  }

  v24 = swift_dynamicCastMetatype();
  if (v24)
  {
    v17 = a4;
    v18 = a3;
    MEMORY[0x28223BE20](v24);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
    v22 = sub_21B23CCA8(sub_21B332EA8, v40, a6, v26, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v27);
    v23 = sub_21B332D54;
    goto LABEL_5;
  }

  v47 = a4;
  v31 = swift_dynamicCastMetatype();
  if (v31)
  {
    MEMORY[0x28223BE20](v31);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
    v34 = sub_21B23CCA8(sub_21B332E4C, v40, a6, v32, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v33);
    v28 = sub_21B32F800(a2, a3, v47, v34);
    goto LABEL_6;
  }

  sub_21B34A834();
  v35 = swift_dynamicCastMetatype();
  if (v35)
  {
    MEMORY[0x28223BE20](v35);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
    v38 = sub_21B23CCA8(sub_21B332DF0, v40, a6, v36, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v37);
    MEMORY[0x28223BE20](v38);
    v45 = v47;
    v46 = a3;
    v29 = sub_21B32D494(sub_21B332F30, &v43, v38);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v46 = a3;
    return sub_21B23CCA8(sub_21B332D94, v40, a6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v39);
  }

  return v29;
}

uint64_t sub_21B32FE8C@<X0>(uint64_t a2@<X1>, void *a5@<X8>)
{
  v19 = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = sub_21B34B314();
  (*(v7 + 16))(v10);
  v14(v21, 0);
  v15 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v15 == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v17 = v21[0];
  }

  v18 = v20;
  *v20 = v17;
  *(v18 + 8) = v15 == 1;
  return result;
}

uint64_t sub_21B3300DC@<X0>(uint64_t a2@<X1>, void *a5@<X8>)
{
  v19 = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = sub_21B34B314();
  (*(v7 + 16))(v10);
  v14(v21, 0);
  v15 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v15 == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v17 = v21[0];
  }

  v18 = v20;
  *v20 = v17;
  *(v18 + 8) = v15 == 1;
  return result;
}

uint64_t sub_21B33032C@<X0>(uint64_t a2@<X1>, _DWORD *a5@<X8>)
{
  v19 = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = sub_21B34B314();
  (*(v7 + 16))(v10);
  v14(v21, 0);
  v15 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v15 == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v17 = v21[0];
  }

  v18 = v20;
  *v20 = v17;
  *(v18 + 4) = v15 == 1;
  return result;
}

uint64_t sub_21B33057C@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v19 = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = sub_21B34B314();
  (*(v7 + 16))(v10);
  v14(v21, 0);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v15 = sub_21B34A834();
    return (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  }

  else
  {
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    v17 = sub_21B34A834();
    v18 = v20;
    swift_dynamicCast();
    return (*(*(v17 - 8) + 56))(v18, 0, 1, v17);
  }
}

uint64_t sub_21B330824@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a2;
  v27 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  v18 = sub_21B34B314();
  (*(v8 + 16))(v11);
  v18(v28, 0);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    (*(v12 + 32))(v17, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
    v22 = sub_21B34AD54();
    v21 = sub_21B2A11F8(v26[0], v22, v23);
    v20 = v24;

    result = (*(v12 + 8))(v17, AssociatedTypeWitness);
  }

  v25 = v27;
  *v27 = v21;
  v25[1] = v20;
  return result;
}

uint64_t FilledColumn.description.getter(uint64_t a1)
{
  v2 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  FormattingOptions.init()(v4);
  v5 = FilledColumn.description(options:)(v4, a1);
  sub_21B2B42B0(v4);
  return v5;
}

uint64_t FilledColumn.description(options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21B34AAF4();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v103 - v12;
  v14 = sub_21B34B264();
  if (a1[2] >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = a1[2];
  }

  v104 = WitnessTable;
  sub_21B34B2E4();
  swift_getWitnessTable();
  v107 = v15;
  sub_21B34B2A4();
  v16 = swift_getWitnessTable();
  v105 = a2;
  v106 = v2;
  sub_21B3319B0(v13, a1, a2, v7, v16, &v115);
  v18 = *(v8 + 8);
  v17 = v8 + 8;
  v19 = v18(v13, v7);
  v21 = v118;
  v22 = v118 + 2;
  if (__OFADD__(v118, 2))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v110 = v118;
    *&v119 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v23 = v119;
    v11 = 8492258;
    v3 = 0xA300000000000000;
    v19 = sub_21B34AE74();
    v17 = *(v23 + 16);
    v21 = *(v23 + 24);
    v13 = (v17 + 1);
    if (v17 < v21 >> 1)
    {
      goto LABEL_6;
    }
  }

  v95 = v19;
  v96 = v20;
  sub_21B231F10((v21 > 1), v13, 1);
  v20 = v96;
  v19 = v95;
  v23 = v119;
LABEL_6:
  *(v23 + 16) = v13;
  v24 = v23 + 16 * v17;
  *(v24 + 32) = v19;
  *(v24 + 40) = v20;
  *&v119 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v26 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
  v109 = v25;
  v108 = v26;
  v27 = sub_21B34AB74();
  v29 = v28;

  *&v119 = 9409762;
  *(&v119 + 1) = v3;
  MEMORY[0x21CEED5E0](v27, v29);

  MEMORY[0x21CEED5E0](9671906, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v114 = v119;
  v30 = *(&v115 + 1);
  v31 = v115;
  v32 = sub_21B2A0B58(v115, *(&v115 + 1));
  v35 = v110;
  if (v110 >= v32)
  {
    if (__OFSUB__(v110, v32))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = sub_21B34AE74();
    v39 = v38;
    v119 = __PAIR128__(v30, v31);

    MEMORY[0x21CEED5E0](v37, v39);

    v36 = *(&v119 + 1);
    v31 = v119;
  }

  else
  {

    v36 = v30;
  }

  *&v119 = 32;
  *(&v119 + 1) = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v31, v36);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v40 = v119;
  *&v119 = 8623330;
  *(&v119 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v40, *(&v40 + 1));

  MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v119, *(&v119 + 1));

  if (*(a1 + 24) == 1)
  {
    v42 = *(&v116 + 1);
    v41 = v116;
    result = sub_21B2A0B58(v116, *(&v116 + 1));
    if (v35 >= result)
    {
      if (__OFSUB__(v35, result))
      {
        __break(1u);
        goto LABEL_51;
      }

      v44 = sub_21B34AE74();
      v46 = v45;
      v119 = __PAIR128__(v42, v41);

      MEMORY[0x21CEED5E0](v44, v46);
      v35 = v110;

      v42 = *(&v119 + 1);
      v41 = v119;
    }

    else
    {
    }

    *&v119 = 32;
    *(&v119 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v41, v42);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v47 = v119;
    *&v119 = 8623330;
    *(&v119 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v47, *(&v47 + 1));

    MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v119, *(&v119 + 1));
  }

  v103[2] = v30;
  *&v119 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v48 = v119;
  v49 = sub_21B34AE74();
  v52 = *(v48 + 16);
  v51 = *(v48 + 24);
  if (v52 >= v51 >> 1)
  {
    v97 = v49;
    v98 = v50;
    sub_21B231F10((v51 > 1), v52 + 1, 1);
    v50 = v98;
    v49 = v97;
    v48 = v119;
  }

  *(v48 + 16) = v52 + 1;
  v53 = v48 + 16 * v52;
  *(v53 + 32) = v49;
  *(v53 + 40) = v50;
  *&v119 = v48;
  v11 = sub_21B34AB74();
  v55 = v54;

  *&v119 = 10589410;
  *(&v119 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v11, v55);

  MEMORY[0x21CEED5E0](11113698, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v27 = *(&v119 + 1);
  MEMORY[0x21CEED5E0](v119, *(&v119 + 1));

  v34 = &v121;
  v31 = v107;
  if ((v107 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v107)
  {
    v34 = v117;
    v120 = v117;
    if (v107 <= *(v117 + 16))
    {
      v103[0] = v22;
      v103[1] = a1;
      a1 = (v117 + 40);
      v3 = 32;
      v11 = 8557794;
      v22 = 0xA300000000000000;
      v56 = v107;
      while (1)
      {
        v13 = *(a1 - 1);
        v17 = *a1;

        v19 = sub_21B2A0B58(v13, v17);
        if (v35 >= v19)
        {
          if (__OFSUB__(v35, v19))
          {
            __break(1u);
            goto LABEL_43;
          }

          v58 = sub_21B34AE74();
          v60 = v59;
          *&v119 = v13;
          *(&v119 + 1) = v17;

          v61 = v58;
          v3 = 32;
          MEMORY[0x21CEED5E0](v61, v60);
          v35 = v110;

          v17 = *(&v119 + 1);
          v13 = v119;
        }

        *&v119 = 32;
        *(&v119 + 1) = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v13, v17);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v57 = v119;
        *&v119 = 8557794;
        *(&v119 + 1) = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v57, *(&v57 + 1));

        MEMORY[0x21CEED5E0](8557794, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v119, *(&v119 + 1));

        a1 += 2;
        if (!--v56)
        {

          v119 = v116;
          sub_21B2B421C(&v119);
          v22 = v103[0];
          v31 = v107;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_46;
  }

  v119 = v116;
  sub_21B2B421C(&v119);
  v120 = v117;
LABEL_28:
  sub_21B332620(&v120);
  v27 = v104;
  if (v31 >= sub_21B34B264())
  {
    v112 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v90 = v112;
    v31 = 0xA300000000000000;
    v32 = sub_21B34AE74();
    v11 = *(v90 + 16);
    v34 = *(v90 + 24);
    v27 = v11 + 1;
    if (v11 < v34 >> 1)
    {
LABEL_40:
      *(v90 + 16) = v27;
      v91 = v90 + 16 * v11;
      *(v91 + 32) = v32;
      *(v91 + 40) = v33;
      v112 = v90;
      v92 = sub_21B34AB74();
      v94 = v93;

      v112 = 9737442;
      v113 = v31;
      MEMORY[0x21CEED5E0](v92, v94);

      MEMORY[0x21CEED5E0](9999586, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      v89 = v112;
      v88 = v113;
      goto LABEL_41;
    }

LABEL_49:
    v99 = v32;
    v100 = v33;
    sub_21B231F10((v34 > 1), v27, 1);
    v33 = v100;
    v32 = v99;
    v90 = v112;
    goto LABEL_40;
  }

  v32 = sub_21B34B264();
  v34 = v32 - v31;
  if (__OFSUB__(v32, v31))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v111 = v32 - v31;
  v112 = sub_21B34B944();
  v113 = v62;
  MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
  v63 = sub_21B2A11F8(v35, v112, v113);
  v65 = v64;

  result = sub_21B2A0B58(v63, v65);
  v66 = v35 - result;
  if (v35 < result)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v35, result))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v67 = sub_21B34AE74();
  v69 = v68;
  v112 = v63;
  v113 = v65;

  MEMORY[0x21CEED5E0](v67, v69);

  v63 = v112;
  v65 = v113;
LABEL_33:
  v112 = 32;
  v113 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v63, v65, v66);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v71 = v112;
  v70 = v113;
  v112 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v72 = v112;
  v73 = sub_21B34AE74();
  v76 = *(v72 + 16);
  v75 = *(v72 + 24);
  if (v76 >= v75 >> 1)
  {
    v101 = v73;
    v102 = v74;
    sub_21B231F10((v75 > 1), v76 + 1, 1);
    v74 = v102;
    v73 = v101;
    v72 = v112;
  }

  *(v72 + 16) = v76 + 1;
  v77 = v72 + 16 * v76;
  *(v77 + 32) = v73;
  *(v77 + 40) = v74;
  v112 = v72;
  v78 = sub_21B34AB74();
  v80 = v79;

  v112 = 10654946;
  v113 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v78, v80);

  MEMORY[0x21CEED5E0](11179234, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v112, v113);

  result = sub_21B2A0B58(v71, v70);
  v81 = v22 - result;
  if (v22 < result)
  {
    goto LABEL_38;
  }

  if (!__OFSUB__(v22, result))
  {
    v82 = sub_21B34AE74();
    v84 = v83;
    v112 = v71;
    v113 = v70;

    MEMORY[0x21CEED5E0](v82, v84);

    v71 = v112;
    v70 = v113;
LABEL_38:
    v112 = 8885474;
    v113 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v71, v70, v81);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v112, v113);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v22;
    v86 = sub_21B33F0FC(inited);
    v88 = v87;
    swift_setDeallocating();
    v89 = v86;
LABEL_41:
    MEMORY[0x21CEED5E0](v89, v88);

    return v114;
  }

LABEL_52:
  __break(1u);
  return result;
}

void *sub_21B3319B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = FilledColumn.name.getter(a3);
  v12 = *(a2 + 8);
  v42 = sub_21B2A11F8(v12, v11, v13);
  v40 = v14;

  v44 = a4;
  v41 = a2;
  if (*(a2 + 24) != 1)
  {
    v31 = a5;
    v32 = a3;
    v18 = 0;
    v16 = 0xE000000000000000;
LABEL_15:
    v33 = sub_21B34ADA4();
    v34 = sub_21B34ADA4();

    if (v34 <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    v36 = sub_21B331C78(a1, v35, v12, v41, v32, v44, v31);
    result = sub_21B3419B8(v42, v40, v18, v16, v36, v45);
    v37 = v45[1];
    *a6 = v45[0];
    a6[1] = v37;
    a6[2] = v45[2];
    return result;
  }

  *&v45[0] = 60;
  *(&v45[0] + 1) = 0xE100000000000000;
  swift_getAssociatedTypeWitness();
  v15 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v15);

  MEMORY[0x21CEED5E0](62, 0xE100000000000000);
  v16 = 0xE100000000000000;
  if (!v12)
  {
    v31 = a5;

    v18 = 0;
    v16 = 0xE000000000000000;
LABEL_14:
    v32 = a3;

    goto LABEL_15;
  }

  v38 = a5;
  v39 = a6;
  v17 = 0;
  v18 = *&v45[0];
  v19 = HIBYTE(*(&v45[0] + 1)) & 0xFLL;
  v20 = 4 * v19;
  if (!v19 || v12 < 1)
  {
LABEL_9:
    if (v17 != v20)
    {
      sub_21B34ADC4();
      v27 = sub_21B34AEB4();
      v28 = MEMORY[0x21CEED540](v27);
      v30 = v29;

      *&v45[0] = v28;
      *(&v45[0] + 1) = v30;

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      v16 = v30;
      v18 = v28;
    }

    v31 = v38;
    a6 = v39;
    goto LABEL_14;
  }

  v21 = 0;
  while (1)
  {
    v22 = sub_21B34AE94();
    v24 = sub_21B2A0BE0(v22, v23);

    v26 = __OFADD__(v21, v24);
    v21 += v24;
    if (v26)
    {
      break;
    }

    v17 = sub_21B34ADB4() >> 14;
    if (v17 >= v20 || v21 >= v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B331C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(char *, uint64_t, uint64_t), uint64_t a7)
{
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v15 = swift_dynamicCastMetatype();
  if (v15)
  {
    v16 = a4;
    v17 = a3;
    MEMORY[0x28223BE20](v15);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    v21 = sub_21B23CCA8(sub_21B332D08, v39, a6, v19, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v20);
    v22 = sub_21B332D34;
LABEL_5:
    v27 = sub_21B32F6B8(a2, v17, v16, v21, v22);
LABEL_6:
    v28 = v27;

    return v28;
  }

  v23 = swift_dynamicCastMetatype();
  if (v23)
  {
    v16 = a4;
    v17 = a3;
    MEMORY[0x28223BE20](v23);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
    v21 = sub_21B23CCA8(sub_21B332CDC, v39, a6, v25, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v26);
    v22 = sub_21B332D54;
    goto LABEL_5;
  }

  v46 = a4;
  v30 = swift_dynamicCastMetatype();
  if (v30)
  {
    MEMORY[0x28223BE20](v30);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
    v33 = sub_21B23CCA8(sub_21B332CB0, v39, a6, v31, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v32);
    v27 = sub_21B32F800(a2, a3, v46, v33);
    goto LABEL_6;
  }

  sub_21B34A834();
  v34 = swift_dynamicCastMetatype();
  if (v34)
  {
    MEMORY[0x28223BE20](v34);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
    v37 = sub_21B23CCA8(sub_21B332C64, v39, a6, v35, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v36);
    MEMORY[0x28223BE20](v37);
    v44 = v46;
    v45 = a3;
    v28 = sub_21B32D494(sub_21B332C90, &v42, v37);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v45 = a3;
    return sub_21B23CCA8(sub_21B332C38, v39, a6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v38);
  }

  return v28;
}

uint64_t sub_21B3320D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v14 - v9;
  v12 = type metadata accessor for FilledColumn(0, a2, a3, v11);
  FilledColumn.subscript.getter(a1, v12, v10);
  result = swift_dynamicCast();
  *a4 = v14[1];
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_21B3321D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v14 - v9;
  v12 = type metadata accessor for FilledColumn(0, a2, a3, v11);
  FilledColumn.subscript.getter(a1, v12, v10);
  result = swift_dynamicCast();
  *a4 = v14[1];
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_21B3322D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v14 - v9;
  v12 = type metadata accessor for FilledColumn(0, a2, a3, v11);
  FilledColumn.subscript.getter(a1, v12, v10);
  result = swift_dynamicCast();
  *a4 = v14[3];
  *(a4 + 4) = 0;
  return result;
}

uint64_t sub_21B3323D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v12 = type metadata accessor for FilledColumn(0, a2, a3, v11);
  FilledColumn.subscript.getter(a1, v12, v10);
  v13 = sub_21B34A834();
  swift_dynamicCast();
  return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
}

uint64_t sub_21B332500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v14 = type metadata accessor for FilledColumn(0, a3, a4, v13);
  FilledColumn.subscript.getter(a1, v14, v12);
  v15 = sub_21B34AD54();
  v17 = sub_21B2A11F8(a2, v15, v16);
  v19 = v18;

  *a5 = v17;
  a5[1] = v19;
  return result;
}

uint64_t sub_21B332620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B332688@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 4))
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    type metadata accessor for FormattingOptions(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B2CFB44();
    sub_21B278F78(&qword_27CD7F610, &qword_27CD7EDC0, &unk_21B3581D0, MEMORY[0x277CC9168]);
    sub_21B34A9A4();
    v7 = v12;
    v6 = v13;
  }

  v8 = sub_21B2A11F8(a3, v7, v6);
  v10 = v9;

  *a4 = v8;
  a4[1] = v10;
  return result;
}

uint64_t sub_21B3327A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 8))
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    type metadata accessor for FormattingOptions(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B2CFB44();
    sub_21B278F78(&qword_27CD7F610, &qword_27CD7EDC0, &unk_21B3581D0, MEMORY[0x277CC9168]);
    sub_21B34A9A4();
    v7 = v12;
    v6 = v13;
  }

  v8 = sub_21B2A11F8(a3, v7, v6);
  v10 = v9;

  *a4 = v8;
  a4[1] = v10;
  return result;
}

uint64_t sub_21B3328C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 8))
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    type metadata accessor for FormattingOptions(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B2CFAF0();
    sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0, MEMORY[0x277CC8CE8]);
    sub_21B34B504();
    v7 = v12;
    v6 = v13;
  }

  v8 = sub_21B2A11F8(a3, v7, v6);
  v10 = v9;

  *a4 = v8;
  a4[1] = v10;
  return result;
}

uint64_t sub_21B3329E0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (!__OFSUB__(a5 >> 1, a4))
  {
    v34 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      goto LABEL_30;
    }

    v8 = v34;
    if (v7)
    {
      v9 = 0;
      v27 = a4 - v6;
      do
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (!(v27 + v9))
        {
          goto LABEL_26;
        }

        if ((a4 + v9) >= v6 || v9 >= v7)
        {
          goto LABEL_27;
        }

        v11 = v6;
        v30 = *(a3 + 8 * a4 + 8 * v9);
        v31 = 0;
        a1(&v32, &v30);
        if (v5)
        {
          goto LABEL_31;
        }

        v12 = v32;
        v13 = v33;
        v34 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = v32;
          sub_21B231F10((v14 > 1), v15 + 1, 1);
          v12 = v17;
          v8 = v34;
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        ++v9;
        v6 = v11;
      }

      while (v10 != v7);
      v18 = a4 + v9;
      if (v18 == v11)
      {
        return v8;
      }
    }

    else
    {
      v18 = a4;
      if (a4 == v6)
      {
        return v8;
      }
    }

    v20 = v18;
    while (v18 >= a4 && v20 < v6)
    {
      v30 = *(a3 + 8 * v20);
      a1(&v32, &v30);
      if (v5)
      {
        goto LABEL_32;
      }

      v21 = v32;
      v22 = v33;
      v34 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21B231F10((v23 > 1), v24 + 1, 1);
        v8 = v34;
      }

      ++v20;
      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      if (v6 == v20)
      {
        return v8;
      }
    }

LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:

  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t JoinKind.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t DataFrameProtocol.joined<A>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a1;
  v38 = a3;
  v39 = a5;
  v40 = a2;
  v41 = a4;
  v42 = a9;
  v14 = *(a8 - 8);
  v34 = a11;
  v35 = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v15);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = v22;
  v43[1] = v23;
  v43[2] = v24;
  v43[3] = v25;
  v26 = type metadata accessor for HashJoin(0, v43);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v33 - v28;
  LOBYTE(a6) = *a6;
  (*(v19 + 16))(v21, v36, a7);
  (*(v14 + 16))(v17, v37, a8);
  LOBYTE(v43[0]) = a6;
  v30 = v38;

  v31 = v39;

  sub_21B2E4200(v21, v17, v40, v30, v41, v31, a7, v29, a8, v35, v34);
  sub_21B2E4900(v26, v42);
  return (*(v27 + 8))(v29, v26);
}

uint64_t DataFrameProtocol.joined<A, B>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *x8_0@<X8>, uint64_t a9)
{
  v10 = a2[1];
  v11 = *a3;
  v15[0] = *a2;
  v15[1] = v10;
  v14[0] = v15[0];
  v14[1] = v10;
  v13 = v11;
  return DataFrameProtocol.joined<A, B>(_:on:kind:)(a1, v15, v14, &v13, a4, a5, a6, a7, x8_0, a8, a9);
}

uint64_t DataFrameProtocol.joined<A, B>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a1;
  v47 = a9;
  v48 = a7;
  v38 = a6;
  v15 = *(a6 - 8);
  v42 = a8;
  v43 = v15;
  v46 = a11;
  v40 = a10;
  v16 = MEMORY[0x28223BE20](a1);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v22;
  v53 = v23;
  v37 = v22;
  v54 = v24;
  v55 = v25;
  v41 = type metadata accessor for HashJoin(0, &v52);
  v26 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v28 = &v37 - v27;
  v30 = *a2;
  v29 = a2[1];
  v32 = *a3;
  v31 = a3[1];
  LOBYTE(a4) = *a4;
  (*(v19 + 16))(v21, v44, a5);
  v34 = v38;
  v33 = v39;
  (*(v43 + 16))(v39, v45, v38);

  v52 = v30;
  v53 = v29;

  v50 = v32;
  v51 = v31;
  v49 = a4;
  sub_21B2E4008(v21, v33, v37, v34, v28, v42, v40);
  v35 = v41;
  sub_21B2E4900(v41, v47);
  return (*(v26 + 8))(v28, v35);
}

unint64_t sub_21B3335AC()
{
  result = qword_27CD7F618;
  if (!qword_27CD7F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AnyColumn.name.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AnyColumn.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t AnyColumn.count.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

uint64_t AnyColumn.wrappedElementType.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t sub_21B3338E8(void x0_0, uint64_t a1)
{
  sub_21B233A10(v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  type metadata accessor for Column(0, a1, v4, v5);
  return swift_dynamicCast();
}

uint64_t AnyColumn.append(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

Swift::Void __swiftcall AnyColumn.remove(at:)(Swift::Int at)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 80))(at, v3, v4);
}

uint64_t AnyColumn.append(contentsOf:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t sub_21B333AD4()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D83B88])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B333C8C()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D84DC8])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7ED10, &qword_21B354A68);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x363174616F6C46, 0xE700000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B333E4C()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D83A90])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334008()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D839F8])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3341C4()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D839B0])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1819242306, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B33437C()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277D837D0])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x676E69727453, 0xE600000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334538()
{
  v2 = v1;
  v3 = sub_21B34A834();
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if (v3 == (*(*(v4 + 8) + 80))(v5))
  {
    sub_21B233A10(v2, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v10[0] = 0xD00000000000001CLL;
    v10[1] = 0x800000021B34C840;
    v8 = v2[3];
    v7 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v8);
    (*(*(v7 + 8) + 80))(v8);
    v9 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v9);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1702125892, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3346FC()
{
  v2 = v1;
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  if ((*(*(v3 + 8) + 80))(v4) == MEMORY[0x277CC9318])
  {
    sub_21B233A10(v2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1635017028, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumn.assumingType<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v8 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  if ((*(*(v7 + 8) + 80))(v8) == a1)
  {
    sub_21B233A10(v4, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    type metadata accessor for Column(0, a2, v9, v10);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v16[0] = 0xD00000000000001CLL;
    v16[1] = 0x800000021B34C840;
    v13 = v4[3];
    v12 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v13);
    (*(*(v12 + 8) + 80))(v13);
    v14 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v14);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    v15 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v15);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall AnyColumn.isNil(at:)(Swift::Int at)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 96))(at, v3) & 1;
}

uint64_t sub_21B334ADC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v17[12] = v3;
    v17[13] = v4;
    v5 = v2;
    v7 = v2[3];
    v8 = v2[4];
    v9 = result;
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v8 + 8) + 128))(v17, v9, v7);
    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v11 + 8) + 128))(v16, a2, v10);
    v12 = v2[3];
    v13 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v13 + 8) + 136))(v9, v16, v12);
    sub_21B261664(v16, &qword_27CD7E0F8, &unk_21B3557C0);
    v14 = v2[3];
    v15 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v15 + 8) + 136))(a2, v17, v14);
    return sub_21B261664(v17, &qword_27CD7E0F8, &unk_21B3557C0);
  }

  return result;
}

uint64_t sub_21B334C40(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v12[8] = v2;
    v12[10] = v3;
    v12[11] = v4;
    v5 = v2[1];
    v6 = v2[2];
    v12[0] = *v2;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = result;
    v7 = result;

    v9 = v2[1];
    v10 = v2[2];
    v11[0] = *v2;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = a2;

    DataFrame.Rows.subscript.setter(v11, v7);
    return DataFrame.Rows.subscript.setter(v12, a2);
  }

  return result;
}

unint64_t sub_21B334CEC(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      if (*(*v2 + 16) > result)
      {
        v6 = v2[3];
        sub_21B233A74(v4 + 32 + 40 * result, v12);
        v7 = v13;
        v8 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(*(v8 + 8) + 128))(v15, v6, v7);
        result = sub_21B233960(v12);
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*(v4 + 16) > a2)
          {
            sub_21B233A74(v4 + 32 + 40 * a2, v12);
            v9 = v13;
            v10 = v14;
            __swift_project_boxed_opaque_existential_1(v12, v13);
            (*(*(v10 + 8) + 128))(v11, v6, v9);
            sub_21B233960(v12);
            DataFrame.Row.subscript.setter(v11, v3);
            return DataFrame.Row.subscript.setter(v15, a2);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

__n128 sub_21B334E3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  *(a5 + 24) = type metadata accessor for Column(0, a2, a3, a4);
  *(a5 + 32) = &off_282CAA128;
  *a5 = v7;
  result = *(a1 + 1);
  *(a5 + 8) = result;
  return result;
}

unint64_t sub_21B334E8C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_21B3350B8(a1, a3);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v9 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v3[3];
    v10 = v3[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v12 = (*(*(v10 + 8) + 32))(v11);
    v14 = v4[3];
    v13 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v14);
    result = (*(*(v13 + 8) + 40))(v14);
    if (v8 >= v12 && result >= v8)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B334FF8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = sub_21B3351E4(a1, a3, a4, a5, a6);
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_8:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (result > v12)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_21B3350B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v8 = (*(*(v6 + 8) + 32))(v7);
  v10 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  result = (*(*(v9 + 8) + 40))(v10);
  if (v8 > a1 || result < a1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v14);
  v15 = (*(*(v13 + 8) + 32))(v14);
  v17 = v3[3];
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v17);
  result = (*(*(v16 + 8) + 40))(v17);
  if (v15 > a2 || result < a2)
  {
    goto LABEL_12;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B3351E4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      v5 = *(a3 + 16);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v6 = *(a3 + 16);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }

    if (v6 >= a2)
    {
      return a2 - result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B33524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = MEMORY[0x277D84FA0];
  v30 = 0;
  v31 = 0;
  v32 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v27 = a1;
    v28 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = sub_21B2B1790(v12, v11, v13);
        v16 = v15;
        v17 = v33;
        if (*(v33 + 16))
        {
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v16 & 1) == 0)
          {
            MEMORY[0x21CEEE3B0](v14);
          }

          v18 = sub_21B34BC24();
          v19 = -1 << *(v17 + 32);
          v20 = v18 & ~v19;
          if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            do
            {
              v22 = *(v17 + 48) + 16 * v20;
              if (*(v22 + 8))
              {
                if (v16)
                {
                  goto LABEL_6;
                }
              }

              else if ((v16 & 1) == 0 && *v22 == v14)
              {
                goto LABEL_6;
              }

              v20 = (v20 + 1) & v21;
            }

            while (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B256274(v29, v14, v16 & 1);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v24 = v30;
      v23 = v31;
      v25 = v32;
      a1 = v27;
      a2 = v28;
      goto LABEL_23;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v24;
  *(a4 + 32) = v23;
  *(a4 + 40) = v25;
}

uint64_t sub_21B3354E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = MEMORY[0x277D84FA0];
  v29 = 0;
  v28 = 0;
  v30 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v25 = a1;
    v26 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = sub_21B2B1C24(v12, v11, v13);
        v15 = v31;
        if (*(v31 + 16))
        {
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v14 & 0x10000) == 0)
          {
            sub_21B34BBF4();
          }

          v16 = sub_21B34BC24();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            do
            {
              v20 = *(v15 + 48) + 4 * v18;
              if (*(v20 + 2))
              {
                if ((v14 & 0x10000) != 0)
                {
                  goto LABEL_6;
                }
              }

              else if ((v14 & 0x10000) == 0 && *v20 == *&v14)
              {
                goto LABEL_6;
              }

              v18 = (v18 + 1) & v19;
            }

            while (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B256130(v27, v14 & 0x1FFFF);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v21 = v28;
      v22 = v29;
      v23 = v30;
      a1 = v25;
      a2 = v26;
      goto LABEL_23;
    }
  }

  v22 = 0;
  v21 = 0;
  v23 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v21;
  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
}

uint64_t sub_21B335780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = MEMORY[0x277D84FA0];
  v29 = 0;
  v28 = 0;
  v30 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v25 = a1;
    v26 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = sub_21B2B1B7C(v12, v11, v13);
        v15 = v31;
        if (*(v31 + 16))
        {
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v14 & 0x100000000) == 0)
          {
            sub_21B34BC04();
          }

          v16 = sub_21B34BC24();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            do
            {
              v20 = *(v15 + 48) + 8 * v18;
              if (*(v20 + 4))
              {
                if ((v14 & 0x100000000) != 0)
                {
                  goto LABEL_6;
                }
              }

              else if ((v14 & 0x100000000) == 0 && *v20 == *&v14)
              {
                goto LABEL_6;
              }

              v18 = (v18 + 1) & v19;
            }

            while (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255FD4(v27, v14 | ((HIDWORD(v14) & 1) << 32));
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v21 = v28;
      v22 = v29;
      v23 = v30;
      a1 = v25;
      a2 = v26;
      goto LABEL_23;
    }
  }

  v22 = 0;
  v21 = 0;
  v23 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v21;
  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
}

uint64_t sub_21B335A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = MEMORY[0x277D84FA0];
  v31 = 0;
  v32 = 0;
  v33 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  if (v9)
  {
    v28 = a1;
    v29 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_31;
        }

        ++v10;
        v14 = COERCE_DOUBLE(sub_21B2B1790(v12, v11, v13));
        v16 = v15;
        v17 = v34;
        if (*(v34 + 16))
        {
          sub_21B34BBC4();
          if (v16)
          {
            sub_21B34BBE4();
          }

          else
          {
            sub_21B34BBE4();
            v18 = (*&v14 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v14 : 0;
            MEMORY[0x21CEEE3F0](v18);
          }

          v19 = sub_21B34BC24();
          v20 = -1 << *(v17 + 32);
          v21 = v19 & ~v20;
          if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            v22 = ~v20;
            do
            {
              v23 = *(v17 + 48) + 16 * v21;
              if (*(v23 + 8))
              {
                if (v16)
                {
                  goto LABEL_6;
                }
              }

              else if ((v16 & 1) == 0 && *v23 == v14)
              {
                goto LABEL_6;
              }

              v21 = (v21 + 1) & v22;
            }

            while (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255E74(v30, *&v14, v16 & 1);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v25 = v31;
      v24 = v32;
      v26 = v33;
      a1 = v28;
      a2 = v29;
      goto LABEL_27;
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 2;
LABEL_27:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v25;
  *(a4 + 32) = v24;
  *(a4 + 40) = v26;
}

uint64_t sub_21B335CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = MEMORY[0x277D84FA0];
  v27 = 0;
  v28 = 0;
  v29 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v25 = a1;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = sub_21B2B18C4(v12, v11, v13);
        v15 = v30;
        if (*(v30 + 16))
        {
          sub_21B34BBC4();
          if (v14 != 2)
          {
            sub_21B34BBE4();
          }

          sub_21B34BBE4();
          v16 = sub_21B34BC24();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            do
            {
              v20 = *(*(v15 + 48) + v18);
              if (v20 == 2)
              {
                if (v14 == 2)
                {
                  goto LABEL_6;
                }
              }

              else if (v14 != 2 && ((v20 ^ v14) & 1) == 0)
              {
                goto LABEL_6;
              }

              v18 = (v18 + 1) & v19;
            }

            while (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255D28(v26, v14);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v22 = v27;
      v21 = v28;
      v23 = v29;
      a1 = v25;
      goto LABEL_23;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v22;
  *(a4 + 32) = v21;
  *(a4 + 40) = v23;
}

uint64_t sub_21B335F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = MEMORY[0x277D84FA0];
  v35 = 0;
  v36 = 0;
  v37 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  if (v9)
  {
    v31 = a1;
    v32 = a4;
    v33 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_32;
        }

        ++v10;
        v14 = sub_21B232880(v12, v11, v13);
        v16 = v15;
        v17 = v38;
        if (*(v38 + 16))
        {
          sub_21B34BBC4();
          sub_21B34BBE4();
          if (v16)
          {
            sub_21B34AD94();
          }

          v18 = sub_21B34BC24();
          v19 = v17 + 56;
          v20 = -1 << *(v17 + 32);
          v21 = v18 & ~v20;
          if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            v22 = ~v20;
            v23 = *(v17 + 48);
            do
            {
              v24 = (v23 + 16 * v21);
              v25 = v24[1];
              if (v25)
              {
                if (v16)
                {
                  v26 = *v24 == v14 && v25 == v16;
                  if (v26 || (sub_21B34B9F4() & 1) != 0)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else if (!v16)
              {
                goto LABEL_25;
              }

              v21 = (v21 + 1) & v22;
            }

            while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255BA0(&v34, v14, v16);
LABEL_24:

LABEL_25:
        if (v10 != v9)
        {
          continue;
        }
      }

      v28 = v35;
      v27 = v36;
      v29 = v37;
      a4 = v32;
      a2 = v33;
      a1 = v31;
      goto LABEL_28;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 2;
LABEL_28:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v28;
  *(a4 + 32) = v27;
  *(a4 + 40) = v29;
}

uint64_t sub_21B336228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v79);
  v8 = &v60 - v7;
  v9 = sub_21B34A834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v74 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v63 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v85 = &v60 - v27;
  MEMORY[0x28223BE20](v26);
  v70 = &v60 - v28;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F1A8, &qword_21B356240);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - v29;
  v89 = MEMORY[0x277D84FA0];
  v86 = 0;
  v87 = 0;
  v88 = 2;
  swift_beginAccess();
  v30 = *(a3 + 16);
  if (!v30)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v31 = *(v30 + 8);
  if (v31 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = a4;
  v61 = a2;
  v71 = v31;

  swift_beginAccess();
  if (v71)
  {
    v64 = v25;
    v32 = 0;
    v73 = (v10 + 32);
    v77 = (v10 + 8);
    v78 = v19;
    v75 = v22;
    v67 = a3;
    v83 = (v10 + 48);
    while (1)
    {
      v33 = *(a3 + 16);
      if (!v33)
      {
        goto LABEL_31;
      }

      v34 = v33[1];
      if (v32 == v34)
      {
        goto LABEL_27;
      }

      if (v32 >= v34)
      {
        goto LABEL_33;
      }

      v76 = v32 + 1;
      v35 = v70;
      v72 = v32;
      sub_21B2B194C(v32, v33, v70);
      v36 = *(v69 + 48);
      v37 = v68;
      sub_21B260BE8(v35, &v68[v36]);
      sub_21B260BE8(&v37[v36], v85);
      v84 = v89;
      if (*(v89 + 16))
      {
        sub_21B34BBC4();
        v38 = v64;
        sub_21B2615FC(v85, v64, &qword_27CD7E100, &unk_21B352A30);
        v39 = *v83;
        if ((*v83)(v38, 1, v9) == 1)
        {
          sub_21B34BBE4();
        }

        else
        {
          v40 = v74;
          (*v73)(v74, v38, v9);
          sub_21B34BBE4();
          sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
          sub_21B34AAB4();
          v41 = v40;
          v19 = v78;
          (*v77)(v41, v9);
        }

        v42 = sub_21B34BC24();
        v43 = -1 << *(v84 + 32);
        v44 = v42 & ~v43;
        v82 = v84 + 56;
        if ((*(v84 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          break;
        }
      }

LABEL_22:
      sub_21B28DFBC(v72, v76);
      v50 = v66;
      sub_21B2615FC(v85, v66, &qword_27CD7E100, &unk_21B352A30);
      v51 = v65;
      v52 = v50;
      v22 = v75;
      sub_21B255530(v65, v52);
      v53 = v51;
LABEL_23:
      sub_21B261664(v53, &qword_27CD7E100, &unk_21B352A30);
LABEL_24:
      sub_21B261664(v85, &qword_27CD7E100, &unk_21B352A30);
      v32 = v76;
      a3 = v67;
      if (v76 == v71)
      {
LABEL_27:
        v55 = v86;
        v54 = v87;
        v56 = v88;
        goto LABEL_29;
      }
    }

    v80 = ~v43;
    v81 = *(v63 + 72);
    while (1)
    {
      sub_21B2615FC(*(v84 + 48) + v81 * v44, v22, &qword_27CD7E100, &unk_21B352A30);
      v45 = *(v79 + 48);
      sub_21B2615FC(v22, v8, &qword_27CD7E100, &unk_21B352A30);
      sub_21B2615FC(v85, &v8[v45], &qword_27CD7E100, &unk_21B352A30);
      if (v39(v8, 1, v9) == 1)
      {
        break;
      }

      sub_21B2615FC(v8, v19, &qword_27CD7E100, &unk_21B352A30);
      if (v39(&v8[v45], 1, v9) == 1)
      {
        sub_21B261664(v22, &qword_27CD7E100, &unk_21B352A30);
        (*v77)(v19, v9);
LABEL_15:
        sub_21B261664(v8, &qword_27CD7E1D8, &qword_21B351B08);
        goto LABEL_16;
      }

      v46 = v74;
      (*v73)(v74, &v8[v45], v9);
      sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
      v47 = sub_21B34AC54();
      v48 = *v77;
      v49 = v46;
      v22 = v75;
      (*v77)(v49, v9);
      sub_21B261664(v22, &qword_27CD7E100, &unk_21B352A30);
      v48(v78, v9);
      v19 = v78;
      sub_21B261664(v8, &qword_27CD7E100, &unk_21B352A30);
      if (v47)
      {
        goto LABEL_24;
      }

LABEL_16:
      v44 = (v44 + 1) & v80;
      if (((*(v82 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_21B261664(v22, &qword_27CD7E100, &unk_21B352A30);
    if (v39(&v8[v45], 1, v9) == 1)
    {
      v53 = v8;
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v54 = 0;
  v55 = 0;
  v56 = 2;
LABEL_29:

  v57 = v61;

  v58 = v60;
  *v60 = v62;
  v58[1] = v57;
  v58[2] = a3;
  v58[3] = v55;
  v58[4] = v54;
  *(v58 + 40) = v56;
}

uint64_t sub_21B336B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = MEMORY[0x277D84FA0];
  v31 = 0;
  v32 = 0;
  v33 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  if (v9)
  {
    v29 = a1;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v14 = *(a3 + 16);
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = v14[1];
      if (v11 == v15)
      {
        goto LABEL_21;
      }

      if (v11 >= v15)
      {
        goto LABEL_28;
      }

      if ((*(v14 + (v11 >> 3) + 64) >> (v11 & 7)))
      {
        v16 = *v14 + 7;
        if (__OFADD__(*v14, 7))
        {
          __break(1u);
          goto LABEL_25;
        }

        if (v16 < 0)
        {
          v16 = *v14 + 14;
        }

        v17 = v16 >> 3;
        v19 = v17 - 1;
        v18 = v17 < 1;
        v20 = v17 + 62;
        if (!v18)
        {
          v20 = v19;
        }

        v21 = &v14[v10] + (v20 & 0xFFFFFFFFFFFFFFC0);
        v22 = *(v21 + 128);
        v23 = *(v21 + 136);
        sub_21B260DC0(v22, v23);
        if (v23 >> 60 == 11)
        {
LABEL_21:
          v26 = v31;
          v25 = v32;
          v27 = v33;
          a1 = v29;
          goto LABEL_23;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0xF000000000000000;
      }

      v24 = v11 + 1;
      if (sub_21B241ACC(v22, v23, v34))
      {
        v12 = v22;
        v13 = v23;
      }

      else
      {
        sub_21B28DFBC(v11, v11 + 1);
        sub_21B254968(v30, v22, v23);
        v12 = v30[0];
        v13 = v30[1];
      }

      sub_21B260C58(v12, v13);
      v10 += 2;
      ++v11;
      if (v9 == v24)
      {
        goto LABEL_21;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v26;
  *(a4 + 32) = v25;
  *(a4 + 40) = v27;
}

uint64_t AnyColumn.prototype.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 88))(v3);
}

uint64_t AnyColumn.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t AnyColumn.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(a2, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

uint64_t (*AnyColumn.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t AnyColumn.missingCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 56))(v2);
}

uint64_t AnyColumn.hashValue.getter()
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t sub_21B3370A0()
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumn.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_21B34AD94();

  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 48))(v6);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_11:
    sub_21B2F1184(a1, v8);
  }

  v9 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  result = (*(*(v10 + 8) + 32))(v11);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = result;
    do
    {
      v15 = v1[3];
      v14 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      (*(*(v14 + 8) + 128))(&v24, v13, v15);
      v23[0] = v24;
      v23[1] = v25;
      if (*(&v25 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
        }
      }

      else
      {
        sub_21B261664(v23, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v29 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B253FF4((v16 > 1), v17 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 40 * v17;
      v19 = v26;
      v20 = v27;
      *(v18 + 64) = v28;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v22 = v1[3];
      v21 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v22);
      v13 = (*(*(v21 + 8) + 64))(v13, v22);
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B337370(uint64_t a1)
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v2);
  return sub_21B34BC24();
}

uint64_t AnyColumn.startIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t AnyColumn.endIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 40))(v2);
}

Swift::Int __swiftcall AnyColumn.index(after:)(Swift::Int after)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 64))(after, v3);
}

Swift::Int __swiftcall AnyColumn.index(before:)(Swift::Int before)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 72))(before, v3);
}

void (*AnyColumn.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  *a1 = v6;
  *(v6 + 64) = a2;
  *(v6 + 72) = v3;
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 128))(a2, v7);
  return sub_21B2EF930;
}

uint64_t AnyColumn.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 152))(a2, a3, a1, v7);

  return sub_21B25F000(a1);
}

void (*AnyColumn.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(*(v10 + 8) + 144))(a2, a3, v9);
  return sub_21B2EFC2C;
}

uint64_t AnyColumn.subscript.getter(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  v11 = (*(*(v9 + 8) + 32))(v10);
  v13 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  result = (*(*(v12 + 8) + 40))(v13);
  if (result < v11)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_21B288DA4(a1, v11, result, a2, a3);
    v17 = v16;
    v19 = v18;
    (*(*(v8 + 8) + 160))();

    return sub_21B23A9F4(v15, v17, v19);
  }

  return result;
}

void (*sub_21B337858(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *(v5 + 64) = v2;
  *(v5 + 72) = v6;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  (*(*(v8 + 8) + 128))(v6, v7);
  return sub_21B2EFE58;
}

void (*sub_21B337910(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  *a1 = v5;
  v7 = *a2;
  v6 = a2[1];
  v5[10] = v2;
  v5[11] = v7;
  v5[12] = v6;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(*(v9 + 8) + 144))(v7, v6, v8);
  return sub_21B2F00C0;
}

uint64_t sub_21B3379D8@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(void *)@<X0>)
{
  result = sub_21B3387A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B337A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21B233A74(v1, a1);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  result = sub_21B233960(v2);
  *(a1 + 40) = v6;
  return result;
}

void *sub_21B337A9C()
{
  v1 = sub_21B263EC4(v0);
  sub_21B233960(v0);
  return v1;
}

uint64_t AnyColumn.customMirror.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t AnyColumn.distinct()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v4 + 8) + 80))(v5);
  if (swift_dynamicCastMetatype())
  {
    sub_21B333AD4();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
    a1[4] = &off_282CAB618;
    v6 = swift_allocObject();
    *a1 = v6;
    sub_21B33524C(v15, v16, v17, v6 + 16);
LABEL_17:
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333C8C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E708, &qword_21B352328);
    a1[4] = &off_282CAB618;
    v7 = swift_allocObject();
    *a1 = v7;
    sub_21B3354E0(v15, v16, v17, v7 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333E4C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
    a1[4] = &off_282CAB618;
    v8 = swift_allocObject();
    *a1 = v8;
    sub_21B335780(v15, v16, v17, v8 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B334008();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
    a1[4] = &off_282CAB618;
    v9 = swift_allocObject();
    *a1 = v9;
    sub_21B335A30(v15, v16, v17, v9 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B3341C4();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F0, &qword_21B352310);
    a1[4] = &off_282CAB618;
    v10 = swift_allocObject();
    *a1 = v10;
    sub_21B335CCC(v15, v16, v17, v10 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B33437C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E8, &qword_21B352308);
    a1[4] = &off_282CAB618;
    v11 = swift_allocObject();
    *a1 = v11;
    sub_21B335F68(v15, v16, v17, v11 + 16);
    goto LABEL_17;
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B334538();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E0, &qword_21B352300);
    a1[4] = &off_282CAB618;
    v12 = swift_allocObject();
    *a1 = v12;
    sub_21B336228(v15, v16, v17, (v12 + 16));
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B3346FC();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6D8, &qword_21B3522F8);
    a1[4] = &off_282CAB618;
    v13 = swift_allocObject();
    *a1 = v13;
    sub_21B336B70(v15, v16, v17, v13 + 16);
    goto LABEL_17;
  }

  return sub_21B337F8C();
}

uint64_t sub_21B337F8C()
{
  v1 = v0;
  v32 = MEMORY[0x277D84FA0];
  v29 = 0;
  v30 = 0;
  v31 = 2;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 40))(v6);
  if (v7 < v4)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_21B34B634();

    *&v26 = 0xD00000000000002ALL;
    *(&v26 + 1) = 0x800000021B34D600;
    v19 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(*(v18 + 8) + 80))(v19);
    v20 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v20);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v7;
  if (v4 != v7)
  {
    while (v4 < v8)
    {
      v12 = v1[3];
      v13 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(*(v13 + 8) + 128))(&v26, v4, v12);
      if (*(&v27 + 1))
      {
        sub_21B261720(&v26, v22);
        sub_21B2616C4(v22, v21);
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v26 = v23;
        v27 = v24;
        v28 = v25;
      }

      else
      {
        sub_21B261664(&v26, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v14 = v4 + 1;
      if ((sub_21B24185C(&v26, v32) & 1) == 0)
      {
        sub_21B2615FC(&v26, v22, &qword_27CD7E200, &unk_21B352050);
        sub_21B254668(&v23, v22);
        sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
        sub_21B28DFBC(v4, v4 + 1);
      }

      sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
      ++v4;
      if (v8 == v14)
      {
        v10 = v29;
        v9 = v30;
        v11 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2;
LABEL_14:

  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  (*(*(v16 + 8) + 160))(v10, v9, v11, v15);
  return sub_21B23A9F4(v10, v9, v11);
}

uint64_t sub_21B33834C(uint64_t (*a1)(__int128 *))
{
  v3 = v2;
  v4 = v1;
  v5 = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v5 < v8)
  {
LABEL_5:
    before = v8;
    do
    {
      v9 = v4[1];
      v10 = v4[2];
      *&v28 = *v4;
      *(&v28 + 1) = v9;
      v29 = v10;
      *&v30 = v5;

      v11 = a1(&v28);

      if (v3)
      {
        break;
      }

      v32 = v5;
      v12 = *v4;
      v13 = v4[1];
      v14 = v4[2];
      v15 = v4[3];
      v16 = v4[4];
      v17 = *(v4 + 40);
      if (v11)
      {
        do
        {
          *&v28 = v12;
          *(&v28 + 1) = v13;
          v29 = v14;
          *&v30 = v15;
          *(&v30 + 1) = v16;
          v31 = v17;
          v18 = DataFrame.Rows.index(before:)(before);
          if (v32 >= v18)
          {
            return v32;
          }

          v19 = v4[1];
          v20 = v4[2];
          *&v28 = *v4;
          *(&v28 + 1) = v19;
          v29 = v20;
          *&v30 = v18;
          before = v18;

          v21 = a1(&v28);
        }

        while ((v21 & 1) != 0);
        v22 = v32;
        v8 = before;
        sub_21B334C40(v32, before);
        v23 = v4[2];
        v24 = *(v4 + 40);
        v28 = *v4;
        v29 = v23;
        v30 = *(v4 + 3);
        v31 = v24;
        v5 = DataFrame.Rows.index(after:)(v22);
        if (v5 < before)
        {
          goto LABEL_5;
        }

        return v5;
      }

      *&v28 = *v4;
      *(&v28 + 1) = v13;
      v29 = v14;
      *&v30 = v15;
      *(&v30 + 1) = v16;
      v31 = v17;
      v5 = DataFrame.Rows.index(after:)(v32);
    }

    while (v5 < before);
  }

  return v5;
}