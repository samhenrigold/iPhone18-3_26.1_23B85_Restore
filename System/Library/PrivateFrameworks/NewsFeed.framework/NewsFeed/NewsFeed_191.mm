double FormatNotExpression.expression.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

unint64_t static FormatNotExpression.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D6CA8BB0(uint64_t a1)
{
  result = sub_1D6CA8BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CA8BD8()
{
  result = qword_1EC894820;
  if (!qword_1EC894820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894820);
  }

  return result;
}

unint64_t sub_1D6CA8C2C(void *a1)
{
  a1[1] = sub_1D5C79000();
  a1[2] = sub_1D66FEB6C();
  result = sub_1D6CA8C64();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CA8C64()
{
  result = qword_1EC894828;
  if (!qword_1EC894828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894828);
  }

  return result;
}

unint64_t sub_1D6CA8CD0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

uint64_t static CoverIssueViewLayout.makeLayoutForMagazineFeedGroup(context:factories:options:)(void *a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[40];
  v10 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v9);
  v11 = (*(v10 + 16))(v9, v10);
  if (qword_1EDF05CE0 != -1)
  {
    swift_once();
  }

  [qword_1EDFFC540 size];
  v14 = v11 * (v12 / v13);
  v15 = a1[40];
  v16 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v15);
  (*(v16 + 48))(v15, v16);
  v17 = a1[40];
  v18 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v17);
  v19 = (*(v18 + 56))(v17, v18);
  v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  *(&v23 - 6) = a2;
  *(&v23 - 5) = a1;
  *(&v23 - 4) = v14;
  *(&v23 - 3) = v11;
  *(&v23 - 2) = v21;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6CA8FB8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v21[-v17];
  v27 = a1;
  (*(v14 + 104))(&v21[-v17], *MEMORY[0x1E69D74A8], v13, v16);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v19, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1D6CA91AC(uint64_t a1, void *a2, void *a3)
{
  v74 = a2;
  v75 = a1;
  sub_1D69C61CC(0);
  v73 = v5;
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v68 - v16);
  *&v87 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4024000000000000;
  *v17 = v18;
  v19 = *(v10 + 104);
  v76 = *MEMORY[0x1E69D7488];
  v19(v17);
  v20 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v22 = v21;
  v23 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20, MEMORY[0x1E69D6F40]);
  v78 = v22;
  v24 = v23;
  sub_1D7259A9C();
  v25 = *(v10 + 8);
  v81 = v10 + 8;
  v77 = v25;
  v25(v17, v9);
  v94 = v75;
  KeyPath = swift_getKeyPath();
  v26 = *MEMORY[0x1E69D74A8];
  v80 = v10 + 104;
  v79 = v19;
  (v19)(v13, v26, v9);
  v93 = v74[3];
  v27 = a3[1];
  if (a3[11] == 1 || (v28 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v90);
  }

  else
  {
    v29 = a3[15];
    *&v90 = a3[1];
    *(&v90 + 1) = v29;
    *&v91 = v28;
    v92[24] = 0;

    v30 = v28;
    v31 = v27;
  }

  v87 = v90;
  v88 = v91;
  v89[0] = *v92;
  *(v89 + 9) = *&v92[9];
  v32 = a3[40];
  v33 = a3[41];
  __swift_project_boxed_opaque_existential_1(a3 + 37, v32);
  v34 = (*(v33 + 64))(v32, v33);
  v82 = 0;
  v83 = 0x4010000000000000;
  v84 = v34;
  v85 = -1;
  v86 = 0x3FE0000000000000;
  sub_1D6CAB4F0(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D5BEAA8C(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
  v74 = a3;
  v35 = v71;
  sub_1D7259D2C();
  v36 = v24;
  sub_1D7259A5C();

  (*(v72 + 8))(v35, v73);
  v37 = v77;
  v77(v13, v9);
  v38 = v75;
  *&v87 = v75;
  v39 = swift_allocObject();
  *(v39 + 16) = 0x4024000000000000;
  *v17 = v39;
  (v79)(v17, v76, v9);
  v68[0] = v36;
  sub_1D7259A9C();
  v37(v17, v9);
  *&v87 = v38;
  sub_1D5EF9444(0);
  v41 = v40;
  v73 = v40;
  v42 = swift_allocBox();
  v44 = v43;
  v45 = *(v41 + 48);
  LODWORD(v72) = *MEMORY[0x1E69D71E8];
  v46 = v72;
  v47 = sub_1D725A09C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 104);
  v69 = v49;
  v68[1] = v48 + 104;
  v49(v44, v46, v47);
  LODWORD(v71) = *MEMORY[0x1E69D7208];
  (v49)(v44 + v45);
  *v17 = v42;
  LODWORD(KeyPath) = *MEMORY[0x1E69D7468];
  v50 = v79;
  v51 = (v79)(v17);
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_1D72599EC();
  v53 = v77;
  v77(v17, v9);
  v54 = v75;
  *&v87 = v75;
  v55 = swift_allocObject();
  *(v55 + 16) = 0x401C000000000000;
  *v17 = v55;
  (v50)(v17, v76, v9);
  sub_1D7259A9C();
  v53(v17, v9);
  *&v87 = v54;
  v56 = v73;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = *(v56 + 48);
  v61 = v69;
  v69(v58, v72, v47);
  v61(v59 + v60, v71, v47);
  *v17 = v57;
  v62 = v79;
  v63 = (v79)(v17, KeyPath, v9);
  MEMORY[0x1EEE9AC00](v63, v64);
  sub_1D72599EC();
  v65 = v77;
  v77(v17, v9);
  *&v87 = v54;
  v66 = swift_allocObject();
  *(v66 + 16) = 0x4038000000000000;
  *v17 = v66;
  (v62)(v17, v76, v9);
  sub_1D7259A9C();
  v65(v17, v9);
  *&v87 = v54;
  (v62)(v17, *MEMORY[0x1E69D7460], v9);
  sub_1D7259B2C();
  return (v65)(v17, v9);
}

uint64_t sub_1D6CA9C40(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v60 - v12);
  v14 = a2[7] & 9;
  v67 = v15;
  v68 = v10;
  v66 = v13;
  v64 = a2;
  if (v14 == 1)
  {
    v69 = a1;
    sub_1D5EF9444(0);
    v17 = v16;
    v63 = swift_allocBox();
    v19 = v18;
    v65 = *(v17 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *v19 = v20;
    v21 = *MEMORY[0x1E69D71F0];
    v22 = sub_1D725A09C();
    v23 = *(v22 - 8);
    v62 = a1;
    v60 = *(v23 + 104);
    v61 = (v23 + 104);
    v60(v19, v21, v22);
    v24 = swift_allocObject();
    v25 = a2;
    v26 = a2[40];
    v27 = a2[41];
    __swift_project_boxed_opaque_existential_1(v25 + 37, v26);
    *(v24 + 16) = (*(v27 + 24))(v26, v27);
    v28 = v65;
    *(v19 + v65) = v24;
    LODWORD(v65) = v21;
    v60((v19 + v28), v21, v22);
    *v13 = v63;
    v29 = *MEMORY[0x1E69D7468];
    v61 = *(v10 + 104);
    LODWORD(v63) = v29;
    v30 = v67;
    v31 = v61(v13);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v60 - 4) = v25;
    *(&v60 - 3) = a3;
    v33 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v59 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v33, MEMORY[0x1E69D6F40]);
    sub_1D7259A2C();
    v34 = *(v68 + 8);
    v34(v13, v30);
    a1 = v62;
    v69 = v62;
    v35 = swift_allocObject();
    *(v35 + 16) = 0x4010000000000000;
    *v13 = v35;
    (v61)(v13, *MEMORY[0x1E69D7480], v30);
    sub_1D7259A9C();
    v34(v13, v30);
  }

  else
  {
    LODWORD(v65) = *MEMORY[0x1E69D71F0];
    LODWORD(v63) = *MEMORY[0x1E69D7468];
  }

  v69 = a1;
  sub_1D5EF9444(0);
  v37 = v36;
  v38 = swift_allocBox();
  v40 = v39;
  v61 = *(v37 + 48);
  v62 = v38;
  v41 = sub_1D725A09C();
  v42 = swift_allocBox();
  v44 = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = a5 + 12.0;
  *v44 = v45;
  v46 = *(*(v41 - 8) + 104);
  v47 = v65;
  v46(v44, v65, v41);
  *v40 = v42;
  v46(v40, *MEMORY[0x1E69D71F8], v41);
  v48 = swift_allocObject();
  v50 = v64[40];
  v49 = v64[41];
  __swift_project_boxed_opaque_existential_1(v64 + 37, v50);
  *(v48 + 16) = (*(v49 + 24))(v50, v49);
  v51 = v61;
  *(v61 + v40) = v48;
  v46((v51 + v40), v47, v41);
  v52 = v66;
  v53 = v67;
  *v66 = v62;
  v54 = v68;
  v55 = (*(v68 + 104))(v52, v63, v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  v57 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v59 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v57, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  return (*(v54 + 8))(v52, v53);
}

uint64_t sub_1D6CAA27C(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v37 - v12);
  v41 = a1;
  v14 = swift_allocObject();
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 24))(v15, v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  *(v14 + 16) = (v17 - (*(v19 + 32))(v18, v19)) * 0.5;
  *v13 = v14;
  v20 = *MEMORY[0x1E69D7488];
  v38 = *(v10 + 104);
  v37[0] = v9;
  v38(v13, v20, v9);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v37[3] = v22;
  v37[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v39 = v10 + 8;
  v40 = v23;
  v23(v13, v9);
  v41 = a1;
  v37[1] = swift_getKeyPath();
  sub_1D5EF9444(0);
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *v28 = v30;
  v31 = *MEMORY[0x1E69D71F0];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v28, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v28 + v29) = v34;
  v33((v28 + v29), v31, v32);
  *v13 = v26;
  v35 = v37[0];
  v38(v13, *MEMORY[0x1E69D7468], v37[0]);
  sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return v40(v13, v35);
}

uint64_t sub_1D6CAA660(uint64_t a1, uint64_t a2)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20, MEMORY[0x1E69D6F40]);
    sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CAA9A0(uint64_t a1, uint64_t a2, double a3)
{
  v65 = a1;
  v70 = sub_1D5EF9538;
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v61 = v6;
  v71 = *(v6 - 8);
  v8 = v71;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v55 - v10);
  v12 = sub_1D6CAB558(a2);
  v72 = a1;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *v11 = v13;
  v14 = *MEMORY[0x1E69D73E8];
  v15 = *(v8 + 104);
  v68 = v8 + 104;
  v69 = v15;
  v15(v11, v14, v7);
  sub_1D6076D50(0);
  v67 = v16;
  sub_1D6CAB4F0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 72);
  v66 = *(v19 + 80);
  v57 = v20;
  v21 = (v66 + 32) & ~v66;
  v64 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7270C10;
  v23 = (v22 + v21);
  *v23 = 0x4034000000000000;
  v24 = *MEMORY[0x1E69D7240];
  v25 = sub_1D725A13C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  v26 = *MEMORY[0x1E69D72D8];
  v27 = sub_1D725A29C();
  (*(*(v27 - 8) + 104))(v23, v26, v27);
  v28 = *MEMORY[0x1E69D6FC0];
  v29 = *(v19 + 104);
  v58 = v18;
  v29(v23, v28, v18);
  v59 = v29;
  v60 = v19 + 104;
  v30 = v23 + v20;
  sub_1D5ED83AC(0);
  v32 = &v30[*(v31 + 48)];
  v33 = *MEMORY[0x1E69D7238];
  v34 = sub_1D725A0DC();
  (*(*(v34 - 8) + 104))(v30, v33, v34);
  v63 = 0x80000001D73C7BD0;
  *v32 = 0xD000000000000016;
  *(v32 + 1) = 0x80000001D73C7BD0;
  v29(v30, *MEMORY[0x1E69D7020], v18);
  v35 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v55[3] = v36;
  v55[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v35, MEMORY[0x1E69D6F40]);
  v55[1] = sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v56 = v12;
  sub_1D7259A7C();

  v37 = *(v71 + 8);
  v71 += 8;
  KeyPath = v37;
  v38 = v61;
  v37(v11, v61);
  v72 = v65;
  v65 = swift_getKeyPath();
  sub_1D5EF9444(0);
  v40 = v39;
  v41 = swift_allocBox();
  v43 = v42;
  v44 = *(v40 + 48);
  v45 = swift_allocObject();
  *(v45 + 16) = a3;
  *v43 = v45;
  v46 = *MEMORY[0x1E69D71F0];
  v47 = sub_1D725A09C();
  v48 = *(*(v47 - 8) + 104);
  v48(v43, v46, v47);
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  *(v43 + v44) = v49;
  v48((v43 + v44), v46, v47);
  *v11 = v41;
  v69(v11, *MEMORY[0x1E69D7468], v38);
  v50 = v64;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D7273AE0;
  v52 = *MEMORY[0x1E69D7070];
  sub_1D6CAB4F0(0, &qword_1EDF180E0, v70, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v53 - 8) + 104))(v51 + v50, v52, v53);
  v59(v51 + v50, *MEMORY[0x1E69D7080], v58);
  sub_1D7259A7C();

  return KeyPath(v11, v38);
}

uint64_t sub_1D6CAB078(void *a1)
{
  v26[2] = *a1;
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v26[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v26 - v5);
  v26[3] = a1;
  v26[1] = swift_getKeyPath();
  sub_1D5EF9444(0);
  v8 = v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4000000000000000;
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  *v6 = v9;
  v17 = v26[0];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7468], v26[0]);
  sub_1D6076D50(0);
  sub_1D6CAB4F0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7050];
  sub_1D6CAB4F0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v24 - 8) + 104))(v22 + v21, v23, v24);
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69D7080], v19);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v3 + 8))(v6, v17);
}

void sub_1D6CAB4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6CAB558(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 56) & 4) == 0)
  {
    v8 = *(a1 + 368);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 376);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D6CAB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link) = a1;

    v8 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    v10 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock + 8);
    *v8 = a2;
    v8[1] = a3;
    sub_1D5B74328(v9, v10);
    v11 = OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer;
    v12 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer);
    if (a1)
    {
      if (v12)
      {
      }

      else
      {
        v15 = objc_allocWithZone(MEMORY[0x1E69DD060]);

        v16 = [v15 initWithTarget:v3 action:sel_didTap_];
        [v16 setDelegate_];
        [v18 addGestureRecognizer_];
        v17 = *(v3 + v11);
        *(v3 + v11) = v16;

        v12 = *(v3 + v11);
        if (!v12)
        {
LABEL_14:

          return;
        }
      }

      v14 = v12;
      [v14 setEnabled_];
    }

    else
    {
      if (!v12)
      {

        goto LABEL_14;
      }

      v14 = v12;
      [v14 setEnabled_];
    }

    goto LABEL_14;
  }

  v13 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer);
  if (v13)
  {

    [v13 setEnabled_];
  }
}

char *sub_1D6CAB904(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed11FormatLabel_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed11FormatLabel_linkHandler;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for FormatLabelLinkHandler()) init];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  v13 = v12;
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];

  return v13;
}

uint64_t sub_1D6CABB38()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed11FormatLabel_identifier);

  return v1;
}

void sub_1D6CABB78(void *a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link))
  {
    v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    if (v12)
    {
      v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock + 8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;

        sub_1D5DEA510(v12, v13);
        [a1 locationInView_];
        sub_1D613EC18(v6, v16, v17);
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_1D5B74328(v12, v13);

          sub_1D5E3E404(v6);
        }

        else
        {
          (*(v8 + 32))(v11, v6, v7);
          v12(v11);

          sub_1D5B74328(v12, v13);

          (*(v8 + 8))(v11, v7);
        }
      }
    }
  }
}

void *sub_1D6CABF14(void *a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = result;
    if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock))
    {

      [a1 locationInView_];
      sub_1D613EC18(v6, v9, v10);

      v11 = sub_1D72585BC();
      v12 = (*(*(v11 - 8) + 48))(v6, 1, v11) != 1;
      sub_1D5E3E404(v6);
      return v12;
    }
  }

  return 0;
}

BOOL sub_1D6CAC0A4(double a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v6 = v5();
  v7 = sub_1D5E02AFC(v6, v3);

  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return v7 > a1;
        }

        return v7 != a1;
      }

      return v7 == a1;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        return v7 <= a1;
      }

      return v7 < a1;
    }
  }

  else
  {
    if (v4 <= 2)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return v7 > a1;
        }

        return v7 != a1;
      }

      return v7 == a1;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return v7 <= a1;
      }

      return v7 < a1;
    }
  }

  return v7 >= a1;
}

unint64_t sub_1D6CAC218(uint64_t a1)
{
  result = sub_1D6CAC240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAC240()
{
  result = qword_1EC894868;
  if (!qword_1EC894868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894868);
  }

  return result;
}

unint64_t sub_1D6CAC294(void *a1)
{
  a1[1] = sub_1D6662D2C();
  a1[2] = sub_1D67051E8();
  result = sub_1D6CAC2CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAC2CC()
{
  result = qword_1EC894870;
  if (!qword_1EC894870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894870);
  }

  return result;
}

uint64_t sub_1D6CAC330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *v3;
  v7 = *v3 >> 61;
  if (v7 <= 2)
  {
    if (v7 >= 2)
    {
      v19 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *(v19 + 16);
      if (v20)
      {
        v35 = MEMORY[0x1E69E7CC0];

        sub_1D6997920(0, v20, 0);
        v21 = v19 + 56;
        do
        {

          swift_retain_n();

          v22 = sub_1D6E5B0C8(v5, v4, a3);
          v24 = v23;
          v26 = v25;

          v28 = *(v35 + 16);
          v27 = *(v35 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1D6997920((v27 > 1), v28 + 1, 1);
          }

          v21 += 32;
          *(v35 + 16) = v28 + 1;
          v29 = v35 + 24 * v28;
          *(v29 + 32) = v22;
          *(v29 + 40) = v24;
          *(v29 + 48) = v26 & 1;
          --v20;
          v4 = a2;
          v5 = a1;
        }

        while (v20);
        goto LABEL_19;
      }

LABEL_20:
      v5 = sub_1D60ED798();

      return v5;
    }

    goto LABEL_21;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      goto LABEL_18;
    }

LABEL_21:

    return v5;
  }

  if (v7 == 3)
  {
    v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *(v8 + 16);
    if (v9)
    {
      v34 = MEMORY[0x1E69E7CC0];

      sub_1D6997920(0, v9, 0);
      v10 = v8 + 56;
      do
      {

        swift_retain_n();

        v11 = sub_1D6E5B0C8(v5, v4, a3);
        v13 = v12;
        v15 = v14;

        v17 = *(v34 + 16);
        v16 = *(v34 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D6997920((v16 > 1), v17 + 1, 1);
        }

        v10 += 32;
        *(v34 + 16) = v17 + 1;
        v18 = v34 + 24 * v17;
        *(v18 + 32) = v11;
        *(v18 + 40) = v13;
        *(v18 + 48) = v15 & 1;
        --v9;
        v4 = a2;
        v5 = a1;
      }

      while (v9);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

LABEL_18:

  v5 = sub_1D6E5B0C8(v5, v4, a3);

  return v5;
}

uint64_t static FormatTextSize.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_31;
        }

LABEL_19:
        v15 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v19 = v15;
        sub_1D5D085B4(v3);
        sub_1D5D085B4(v2);
        v11 = static FormatTextContent.== infix(_:_:)(&v19, &v18);
        goto LABEL_20;
      }

      if (v2 == 0xC000000000000000)
      {
        if (v3 != 0xC000000000000000)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000000);
        v16 = 0xC000000000000000;
      }

      else if (v2 == 0xC000000000000008)
      {
        if (v3 != 0xC000000000000008)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000008);
        v16 = 0xC000000000000008;
      }

      else
      {
        if (v3 != 0xC000000000000010)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000010);
        v16 = 0xC000000000000010;
      }

      sub_1D5D05694(v16);
      v9 = 1;
      return v9 & 1;
    }

    if (v4 == 3)
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    if (v3 >> 61 == 4)
    {
      goto LABEL_19;
    }

LABEL_31:
    sub_1D5D085B4(*a2);
    sub_1D5D085B4(v2);
LABEL_32:
    sub_1D5D05694(v2);
    sub_1D5D05694(v3);
    v9 = 0;
    return v9 & 1;
  }

  if (!v4)
  {
    if (!(v3 >> 61))
    {
      v10 = *(v2 + 16);
      v18 = *(v3 + 16);
      v19 = v10;
      sub_1D5D085B4(v3);
      sub_1D5D085B4(v2);
      v11 = static FormatSize.== infix(_:_:)(&v19, &v18);
LABEL_20:
      v9 = v11;
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (v4 == 1)
  {
    if (v3 >> 61 == 1)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5D085B4(*a2);
      sub_1D5D085B4(v2);

      sub_1D5D085B4(v7);
      if ((sub_1D6353D38(v5, v8) & 1) == 0)
      {

        sub_1D5D05694(v7);
        goto LABEL_32;
      }

      v18 = v7;
      v19 = v6;
      v9 = static FormatTextSize.== infix(_:_:)(&v19, &v18);

      sub_1D5D05694(v7);
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (v3 >> 61 != 2)
  {
    goto LABEL_31;
  }

LABEL_17:
  v12 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1D5D085B4(*a2);
  sub_1D5D085B4(v2);

  sub_1D6353B70(v12, v13);
  v9 = v14;

LABEL_21:
  sub_1D5D05694(v2);
  sub_1D5D05694(v3);
  return v9 & 1;
}

unint64_t FormatTextSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v85 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v84 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v82 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v81 = &v81 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v83 = &v81 - v32;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D5C30408();
  v88 = v36;
  sub_1D71B5B30(&type metadata for FormatCodingKeys, v40, v38, &type metadata for FormatVersions.JazzkonC, v39, &off_1F51F6C78, v36);
  v41 = v37 >> 61;
  if ((v37 >> 61) <= 2)
  {
    if (!v41)
    {
      v58 = v6;
      v59 = *(v37 + 16);
      v60 = a1[3];
      v61 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v60);
      sub_1D5C82CD8(v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
      (*(*(v62 - 8) + 16))(v58, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v87;
      sub_1D5D2BEC4(v58, sub_1D6CAD334, 0, v60, v61);
      v65 = v88;
      if (!v64)
      {
        sub_1D5D2CF28(v58, type metadata accessor for FormatVersionRequirement);
        v89 = v59;
        FormatSize.encode(to:)(a1);
        sub_1D5D2CF28(v65, sub_1D5D30DC4);
        return sub_1D5C92A8C(v59);
      }

      sub_1D5C92A8C(v59);
      v19 = v58;
      goto LABEL_42;
    }

    if (v41 == 1)
    {
      v48 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5D085B4(v47);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      (*(*(v49 - 8) + 16))(v23, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = v88;
      sub_1D63BA708(3, v48, v47, v23);

      sub_1D5D05694(v47);
      sub_1D5D2CF28(v23, type metadata accessor for FormatVersionRequirement);
      v52 = v51;
      return sub_1D5D2CF28(v52, sub_1D5D30DC4);
    }

    v42 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66 = qword_1EDF31EB0;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = sub_1D725BD1C();
    v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
    (*(*(v67 - 8) + 16))(v19, v68, v67);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v46 = 5;
    goto LABEL_23;
  }

  if (v41 > 4)
  {
    if (v41 != 5)
    {
      if (v37 == 0xC000000000000000)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v76 = sub_1D725BD1C();
        v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
        v19 = v83;
        (*(*(v76 - 8) + 16))(v83, v77, v76);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v74 = 0;
        v78 = v19;
        v65 = v88;
      }

      else
      {
        if (v37 == 0xC000000000000008)
        {
          v65 = v88;
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v72 = sub_1D725BD1C();
          v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
          v19 = v81;
          (*(*(v72 - 8) + 16))(v81, v73, v72);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v74 = 1;
        }

        else
        {
          v65 = v88;
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v79 = sub_1D725BD1C();
          v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
          v19 = v82;
          (*(*(v79 - 8) + 16))(v82, v80, v79);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v74 = 4;
        }

        v78 = v19;
      }

      sub_1D6424100(v74, v78);
      goto LABEL_42;
    }

    v53 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = qword_1EDF31F10;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCDF8);
    v19 = v85;
    (*(*(v55 - 8) + 16))(v85, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = 7;
    goto LABEL_27;
  }

  if (v41 != 3)
  {
    v53 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v69 = qword_1EDF31F10;

    if (v69 != -1)
    {
      swift_once();
    }

    v70 = sub_1D725BD1C();
    v71 = __swift_project_value_buffer(v70, qword_1EDFFCDF8);
    v19 = v86;
    (*(*(v70 - 8) + 16))(v86, v71, v70);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = 8;
LABEL_27:
    v65 = v88;
    sub_1D63BAA9C(v57, v53, v19);

    goto LABEL_42;
  }

  v42 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = qword_1EDF31EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  v19 = v84;
  (*(*(v44 - 8) + 16))(v84, v45, v44);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = 6;
LABEL_23:
  v65 = v88;
  sub_1D63BA8DC(v46, v42, v19);

LABEL_42:
  sub_1D5D2CF28(v19, type metadata accessor for FormatVersionRequirement);
  v52 = v65;
  return sub_1D5D2CF28(v52, sub_1D5D30DC4);
}

uint64_t sub_1D6CAD350(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C626978656C66;
    v6 = 0x726568746FLL;
    if (a1 != 2)
    {
      v6 = 0x686374697773;
    }

    if (a1)
    {
      v5 = 1954047348;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6978656C46746C61;
    v2 = 0x6C6F686563616C70;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x694C656C676E6973;
    if (a1 != 4)
    {
      v3 = 0x74786554746C61;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6CAD490()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6950080(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6CAD4E0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6950080(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6CAD524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6CAD350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D6CAD5BC()
{
  result = qword_1EDF2ED90;
  if (!qword_1EDF2ED90)
  {
    sub_1D5C30200(255, &qword_1EDF2ED88, sub_1D66F46B0, &type metadata for FormatTextSize, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED90);
  }

  return result;
}

id sub_1D6CAD64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v17 = sub_1D6F7D0AC(a1, a4, a2, a3, &v73);
  v19 = v73;
  v20 = v73 >> 61;
  if ((v73 >> 61) <= 2)
  {
    if (v20)
    {
      v72 = a9;
      if (v20 == 1)
      {
        v71 = v9;
        v26 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v28 = swift_allocObject();
        v29 = swift_allocObject();
        v29[2] = v26;
        v29[3] = v27;
        v29[4] = a4;
        v29[5] = a5;
        v29[6] = a6;
        v29[7] = a7;
        v29[8] = a8;
        *(v28 + 16) = sub_1D60D68B4;
        *(v28 + 24) = v29;
        v30 = v72;
        *v72 = v28;
        v31 = *MEMORY[0x1E69D7498];
        sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        (*(*(v32 - 8) + 104))(v30, v31, v32);
        v33 = a5;

        sub_1D5D085B4(v27);

        return sub_1D5D05694(v19);
      }

      v37 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v17, v18);
      v68 = a4;
      v69 = a1;
      v70 = a6;

      v38 = sub_1D5ECBE6C(sub_1D6CAE1DC, v67, v37);

      if (v9)
      {
        return sub_1D5D05694(v19);
      }

      v46 = swift_allocObject();
      *(v46 + 16) = a5;
      *(v46 + 24) = v38;
      v24 = v72;
      *v72 = v46;
      v25 = MEMORY[0x1E69D7420];
      goto LABEL_21;
    }

    v36 = *(v73 + 16);
    v73 = v36;
    sub_1D5C82CD8(v36);
    sub_1D5BEB9F4(a4, a7, a8, a9);
    sub_1D5C92A8C(v36);
    return sub_1D5D05694(v19);
  }

  if (v20 <= 4)
  {
    v72 = a9;
    if (v20 != 3)
    {
      v73 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v39 = sub_1D6E5B35C(a4, a1, a6, 0);

      if (!v9)
      {
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        v41 = v72;
        *v72 = v40;
        v42 = *MEMORY[0x1E69D7440];
        sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        (*(*(v43 - 8) + 104))(v41, v42, v43);
      }

      return sub_1D5D05694(v19);
    }

    v21 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    MEMORY[0x1EEE9AC00](v17, v18);
    v68 = a4;
    v69 = a1;
    v70 = a6;

    v22 = sub_1D5ECBE6C(sub_1D6CAE218, v67, v21);

    if (!v9)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = a5;
      *(v23 + 24) = v22;
      v24 = v72;
      *v72 = v23;
      v25 = MEMORY[0x1E69D7448];
LABEL_21:
      v47 = *v25;
      sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      (*(*(v48 - 8) + 104))(v24, v47, v48);
      v49 = a5;
      return sub_1D5D05694(v19);
    }

    return sub_1D5D05694(v19);
  }

  if (v20 == 5)
  {
    v73 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v35 = sub_1D6E5B35C(a4, a1, a6, 0);
    if (v9)
    {
    }

    else
    {
      v50 = v35;

      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *a9 = v51;
      v52 = *MEMORY[0x1E69D73E8];
      sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      (*(*(v53 - 8) + 104))(a9, v52, v53);
    }

    return sub_1D5D05694(v19);
  }

  if (v73 == 0xC000000000000000)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = a5;
    *a9 = v54;
    v45 = MEMORY[0x1E69D7440];
    goto LABEL_25;
  }

  if (v73 == 0xC000000000000008)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = a5;
    *a9 = v44;
    v45 = MEMORY[0x1E69D73E8];
LABEL_25:
    v55 = *v45;
    sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
    (*(*(v56 - 8) + 104))(a9, v55, v56);
    return a5;
  }

  if ([a5 length] <= 0)
  {
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
  }

  else
  {
    v57 = [a5 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    sub_1D7261D3C();

    v58 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v59 = sub_1D726203C();
    v60 = sub_1D7261D2C();

    v61 = [v58 initWithString:v59 attributes:v60];

    [v61 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
    v63 = v62;

    v64 = swift_allocObject();
    *(v64 + 16) = v63;
  }

  *a9 = v64;
  v65 = *MEMORY[0x1E69D7488];
  sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  return (*(*(v66 - 8) + 104))(a9, v65, v66);
}

void sub_1D6CADF40(uint64_t *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v19[2] = a6;
  v13 = sub_1D7259BDC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v19[3] = a1[1];
  v18 = a1[3];
  v20 = a1[2];

  sub_1D6E5B35C(a2, a3, a4, 0);

  if (v7)
  {
    *a5 = v7;
  }

  else
  {
    v19[1] = v17;
    v20 = v18;

    sub_1D6806A1C(a2, v16);

    sub_1D725A53C();
  }
}

unint64_t sub_1D6CAE0B8(void *a1)
{
  a1[1] = sub_1D5C88E5C();
  a1[2] = sub_1D6666804();
  result = sub_1D6CAE0F0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAE0F0()
{
  result = qword_1EDF32088;
  if (!qword_1EDF32088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32088);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatTextSizeO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

unint64_t sub_1D6CAE188()
{
  result = qword_1EC894878;
  if (!qword_1EC894878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894878);
  }

  return result;
}

void WebEmbedDataVisualizationURLDataSourceContentType.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x617453746E657665 && a2 == 0xEF61746144636974;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x76694C746E657665 && v3 == 0xED00006174614465 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x746144746E657665 && v3 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x61446E6F73616573 && v3 == 0xEA00000000006174 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  *a3 = v4;
  a3[1] = v3;
}

uint64_t WebEmbedDataVisualizationURLDataSourceContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0x746144746E657665;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0x61446E6F73616573;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *v0;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0x617453746E657665;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0x76694C746E657665;
LABEL_11:
  sub_1D5C30618(v1, v2);
  return v3;
}

double sub_1D6CAE494@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  WebEmbedDataVisualizationURLDataSourceContentType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1D6CAE4D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = 0x746144746E657665;
      *(a1 + 8) = 0xE900000000000061;
      return sub_1D5C30618(v2, v3);
    }

    if (v3 == 3)
    {
      *a1 = 0x61446E6F73616573;
      *(a1 + 8) = 0xEA00000000006174;
      return sub_1D5C30618(v2, v3);
    }

LABEL_9:
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_1D5C30618(v2, v3);
  }

  if (!v3)
  {
    *a1 = 0x617453746E657665;
    *(a1 + 8) = 0xEF61746144636974;
    return sub_1D5C30618(v2, v3);
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  strcpy(a1, "eventLiveData");
  *(a1 + 14) = -4864;
  return sub_1D5C30618(v2, v3);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed49WebEmbedDataVisualizationURLDataSourceContentTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D6CAE688()
{
  result = qword_1EDF05F98;
  if (!qword_1EDF05F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F98);
  }

  return result;
}

void FeedChannelClusteringResult.scoredItems.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1D6CAE868()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CAE8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BundleSessionFixedProvider.nextSessionValue(after:)()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D7A8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  return v1;
}

uint64_t sub_1D6CAE9D0()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D7A8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  return v1;
}

uint64_t sub_1D6CAEACC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D6CAEB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = sub_1D726203C();
  v4 = [v2 assetHandleForResourceID:v3 contentContext:*(v1 + 24)];

  return v4;
}

id sub_1D6CAEB6C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = sub_1D725844C();
  v4 = [v2 assetHandleForURL:v3 lifetimeHint:1];

  return v4;
}

void FormatBindingFontSize.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t *FormatBindingFontSize.init(size:scaling:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 4);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t FormatBindingFontSize.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t _s8NewsFeed21FormatBindingFontSizeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if ((v3 & 0xFF00) == 0xC00)
  {
    if ((v4 & 0xFF00) == 0xC00)
    {
      return 1;
    }
  }

  else if ((v4 & 0xFF00) != 0xC00)
  {
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (a3.n128_f64[0] != *(a2 + 8))
      {
        return 0;
      }
    }

    v6 = FormatFontScalingStyle.rawValue.getter(a3);
    v8 = v7;
    if (v6 == FormatFontScalingStyle.rawValue.getter(v9) && v8 == v10)
    {

      return 1;
    }

    v11 = sub_1D72646CC();

    if (v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D6CAEDA8(uint64_t a1)
{
  result = sub_1D6CAEDD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAEDD0()
{
  result = qword_1EC894900;
  if (!qword_1EC894900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894900);
  }

  return result;
}

unint64_t sub_1D6CAEE24(void *a1)
{
  a1[1] = sub_1D6659898();
  a1[2] = sub_1D66FC3C4();
  result = sub_1D6CAEE5C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAEE5C()
{
  result = qword_1EC894908;
  if (!qword_1EC894908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatBindingFontSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 18))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 17);
  if (v3 <= 0xC)
  {
    v4 = 12;
  }

  else
  {
    v4 = *(a1 + 17);
  }

  v5 = v4 - 13;
  if (v3 < 0xC)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatBindingFontSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 12;
    }
  }

  return result;
}

uint64_t _s8NewsFeed19FormatNumberBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 5) & 3;
  v5 = v3 & 0x60;
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = (v3 ^ v2) & 0xFFFFFF9F;
      if (v5 == 32 && v6 == 0)
      {
        return 1;
      }
    }

    else if (v5 == 64)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x1F) == 0)
        {
          return 1;
        }
      }

      else if ((v3 & 0x80) == 0 && ((v3 ^ v2) & 0x1F) == 0)
      {
        return 1;
      }
    }
  }

  else if (v2 == v3 && v5 == 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6CAF020(uint64_t a1)
{
  result = sub_1D6CAF048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAF048()
{
  result = qword_1EC894910;
  if (!qword_1EC894910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894910);
  }

  return result;
}

unint64_t sub_1D6CAF09C(void *a1)
{
  a1[1] = sub_1D66A5F50();
  a1[2] = sub_1D66FAE54();
  result = sub_1D6CAF0D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAF0D4()
{
  result = qword_1EC894918;
  if (!qword_1EC894918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894918);
  }

  return result;
}

void sub_1D6CAF138(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v31 = v32;
    v3 = v1 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v6 = *(v1 + 36);
    v29 = v1 + 64;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v30 = v5;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = v1;
      v13 = *v10;
      v12 = v10[1];
      v14 = *(v9 + 8 * v4);

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v13, v12);
      MEMORY[0x1DA6F9910](0x726F6C6F632DLL, 0xE600000000000000);

      v15 = v31;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = 0xD000000000000010;
      *(v18 + 40) = 0x80000001D73F04A0;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v3 = v29;
      v19 = *(v29 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v31 = v15;
      v6 = v28;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1D5C25E1C(v4, v28, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v28, 0);
      }

LABEL_4:
      v5 = v30 + 1;
      v4 = v7;
      if (v30 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

double FeedIssue.init(identifier:issue:badge:issueTraits:premiumBadge:overrides:scoreProfile:userHasAccess:state:)@<D0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = a7[1];
  v18 = a7[2];
  v19 = *a11;
  if (!a3)
  {
    v28 = a8;
    v26 = a7[1];
    v27 = *a7;
    v25 = a7[2];
    v20 = [a1 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    v18 = v25;
    v17 = v26;
    v16 = v27;
    a8 = v28;
    a2 = v21;
    a3 = v23;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v13;
  *(a9 + 25) = v15;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = v14;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = v16;
  *(a9 + 88) = v17;
  *(a9 + 104) = v18;
  result = 0.0;
  *(a9 + 120) = xmmword_1D72F4110;
  *(a9 + 136) = v19;
  return result;
}

uint64_t FeedIssue.debugIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedIssue.debugSourceName.getter()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedIssue.debugTitle.getter()
{
  v1 = [*v0 coverDate];
  v2 = sub_1D726207C();

  return v2;
}

id FeedIssue.debugAssetHandle.getter()
{
  v1 = [*v0 coverImageAssetHandle];

  return v1;
}

void *FeedIssue.debugScoreProfile.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t FeedIssue.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 64))
  {
    result = FCIssue.issueCoverModel.getter(v5);
    if (v6)
    {
      if (v6 != 1)
      {
        v4 = 0;
        goto LABEL_11;
      }

      v4 = 16448;
    }

    else
    {
      v4 = 64;
    }
  }

  else
  {
    result = FCIssue.issueCoverModel.getter(v5);
    if (v6)
    {
      if (v6 != 1)
      {
        v4 = 4096;
        goto LABEL_11;
      }

      v4 = 20544;
    }

    else
    {
      v4 = 4160;
    }
  }

  result = sub_1D619CBDC(v5);
LABEL_11:
  *a1 = v4;
  return result;
}

uint64_t FeedIssue.additionalFormatFeedItems.getter()
{
  v1 = *v0;
  sub_1D6CB1220(0, &qword_1EDF199E0, sub_1D5EFF46C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v3 = [v1 sourceChannel];
  *(v2 + 56) = &type metadata for FeedTag;
  *(v2 + 64) = sub_1D5EE5BA8();
  v4 = swift_allocObject();
  *(v2 + 32) = v4;
  v5 = [v3 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  *(v4 + 96) = xmmword_1D7279980;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 16) = v6;
  *(v4 + 24) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xE000000000000000;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v9 = MEMORY[0x1E69E7CD0];
  *(v4 + 80) = 0;
  *(v4 + 88) = v9;
  return v2;
}

uint64_t FeedIssue.feedContextIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v10 = *(v0 + 8);
  v11 = v1;

  MEMORY[0x1DA6F9910](36, 0xE100000000000000);
  if (v2 == 1)
  {
    FCIssue.issueCoverModel.getter(&v7);
    if (!v9 || v9 == 1)
    {
LABEL_7:
      sub_1D619CBDC(&v7);
    }
  }

  else
  {
    FCIssue.issueCoverModel.getter(&v7);
    if (!v9 || v9 == 1)
    {
      goto LABEL_7;
    }
  }

  v7 = 91;
  v8 = 0xE100000000000000;
  sub_1D713AFE4();
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v3 = sub_1D7261F3C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v7, v8);

  return v10;
}

id FeedIssue.issueCover.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[13];
  if (v1[10] == 1 || v3 == 0)
  {
    return FCIssue.issueCoverModel.getter(a1);
  }

  v6 = v1[14];
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 56) = 0;
  v8 = v2;
  v7 = v3;

  return v8;
}

uint64_t sub_1D6CAFA6C()
{
  if (*(v0 + 80) >= 2uLL)
  {
    v8 = *(v0 + 72);
  }

  else
  {
    v1 = *v0;
    v2 = [*v0 title];
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = [v1 title];
    }

    else
    {
      v7 = [objc_msgSend(v1 sourceChannel)];
      swift_unknownObjectRelease();
    }

    v8 = sub_1D726207C();
  }

  return v8;
}

uint64_t sub_1D6CAFB7C()
{
  v1 = *v0;
  if (*v0)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    v1 = sub_1D726213C();
  }

  return v1;
}

uint64_t CoverViewBadge.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedIssue.Overrides.Image.init(assetHandle:aspectRatio:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t FeedIssue.Overrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedIssue.Overrides.coverDate.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id FeedIssue.Overrides.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

__n128 FeedIssue.Overrides.init(title:coverDate:image:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

uint64_t FeedIssue.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void FeedIssue.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FeedIssue.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedIssue.copy(overrides:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[3];
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 136);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v3;
  *(a2 + 80) = *(a1 + 1);
  *(a2 + 96) = v4;
  v13 = *(a1 + 2);
  *(a2 + 104) = v13;
  *(a2 + 120) = xmmword_1D72F4110;
  *(a2 + 136) = v12;
  v14 = v13;
  v15 = v6;

  v16 = v10;
}

uint64_t FeedIssue.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = *v1;
  v13 = *(v1 + 88);
  v14 = *(v1 + 120);
  v39 = *(v1 + 104);
  v40 = v14;
  v41 = *(v1 + 136);
  v15 = *(v1 + 24);
  v16 = *(v1 + 56);
  v35 = *(v1 + 40);
  v36 = v16;
  v37 = *(v1 + 72);
  v38 = v13;
  v33 = *(v1 + 8);
  v34 = v15;
  v17 = [v12 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [objc_opt_self() nss:v17 NewsURLForIssueID:?];

  if (v18)
  {
    sub_1D72584EC();

    (*(v4 + 32))(v11, v7, v3);
    sub_1D725844C();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v23 = v12;
    v32 = v41;
    v24 = v33;
    sub_1D6CAFA6C();
    sub_1D725F83C();
    (*(v4 + 8))(v11, v3);
    v19 = sub_1D725F84C();
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  else
  {
    v21 = sub_1D725F84C();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_1D6CB0324()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D6CB0354()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6CB03D0()
{
  v1 = [*v0 coverDate];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6CB0428()
{
  v1 = [*v0 coverImageAssetHandle];

  return v1;
}

void *sub_1D6CB0460()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t FeedIssue.State.selectors.getter()
{
  v1 = *v0;
  sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  v3 = 0xD000000000000012;
  v4 = "deleted-state-deleted";
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v4 = "blocked-state-blocked";
  }

  *(result + 32) = v3;
  *(result + 40) = v4 | 0x8000000000000000;
  return result;
}

uint64_t sub_1D6CB0550@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a3@<X8>)
{
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23[0] = v5;
  *(v23 + 9) = *(v3 + 121);
  v6 = v3[1];
  v7 = v3[3];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v9 = v3[3];
  v10 = v3[5];
  v20 = v3[4];
  v11 = v20;
  v21 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a3[6] = v22;
  a3[7] = v14;
  *(a3 + 121) = *(v3 + 121);
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v11;
  a3[5] = v4;
  *a3 = v13;
  a3[1] = v6;
  a1(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D5ECF2C4(v17, &v16);
}

uint64_t sub_1D6CB0624@<X0>(uint64_t (*a1)(void)@<X2>, _OWORD *a3@<X8>)
{
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23[0] = v5;
  *(v23 + 9) = *(v3 + 121);
  v6 = v3[1];
  v7 = v3[3];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v9 = v3[3];
  v10 = v3[5];
  v20 = v3[4];
  v11 = v20;
  v21 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a3[6] = v22;
  a3[7] = v14;
  *(a3 + 121) = *(v3 + 121);
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v11;
  a3[5] = v4;
  *a3 = v13;
  a3[1] = v6;
  a1(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D5ECF2C4(v17, &v16);
}

char *sub_1D6CB06DC()
{
  v1 = *v0;
  v2 = *(v0 + 25);
  sub_1D6CB1220(0, &unk_1EDF19568, sub_1D6C9F344);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 32) = 0x7972616D697270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [v1 coverImagePrimaryColor];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEA0000000000646ELL;
  *(inited + 72) = [v1 coverImageBackgroundColor];
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v1 coverImageTextColor];
  *(inited + 104) = 0x746E65636361;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = [v1 coverImageAccentColor];
  v4 = sub_1D605AE4C(inited);
  swift_setDeallocating();
  sub_1D6C9F344(0);
  swift_arrayDestroy();
  v5 = sub_1D6CB0BD4(v4);

  sub_1D6CAF138(v5);
  v7 = v6;

  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D5B858EC(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1D5B858EC((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = 0x6D75696D657270;
    *(v10 + 5) = 0xE700000000000000;
  }

  sub_1D7263D4C();

  v11 = [objc_msgSend(v1 sourceChannel)];
  swift_unknownObjectRelease();
  v12 = sub_1D726207C();
  v14 = v13;

  MEMORY[0x1DA6F9910](v12, v14);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D5B858EC(0, *(v7 + 2) + 1, 1, v7);
  }

  v16 = *(v7 + 2);
  v15 = *(v7 + 3);
  if (v16 >= v15 >> 1)
  {
    v7 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v7);
  }

  *(v7 + 2) = v16 + 1;
  v17 = &v7[16 * v16];
  *(v17 + 4) = 0xD000000000000012;
  *(v17 + 5) = 0x80000001D73C1100;
  return v7;
}

uint64_t sub_1D6CB0A0C()
{
  v0 = sub_1D6CB06DC();
  v1 = *(v0 + 2);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D6CB0B3C()
{
  v1 = *(v0 + 136);
  sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  v3 = 0xD000000000000012;
  v4 = "deleted-state-deleted";
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v4 = "blocked-state-blocked";
  }

  *(result + 32) = v3;
  *(result + 40) = v4 | 0x8000000000000000;
  return result;
}

unint64_t *sub_1D6CB0BD4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D6C9E5AC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D6C9E3D4(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t _s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = a1[6];
  v4 = *(a1 + 64);
  v5 = *(a1 + 136);
  v6 = *(a2 + 24);
  v14 = a2[6];
  v7 = *(a2 + 64);
  v8 = *(a2 + 136);
  sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
  if ((sub_1D726370C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    FCIssue.issueCoverModel.getter(v15);
    if (!v16)
    {
      v9 = 64;
      goto LABEL_12;
    }

    if (v16 == 1)
    {
      v9 = 16448;
LABEL_12:
      sub_1D619CBDC(v15);
      goto LABEL_13;
    }

    v9 = 0;
  }

  else
  {
    FCIssue.issueCoverModel.getter(v15);
    if (!v16)
    {
      v9 = 4160;
      goto LABEL_12;
    }

    if (v16 == 1)
    {
      v9 = 20544;
      goto LABEL_12;
    }

    v9 = 4096;
  }

LABEL_13:
  if (v7)
  {
    FCIssue.issueCoverModel.getter(v15);
    if (v16)
    {
      if (v16 != 1)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v11 = 16448;
    }

    else
    {
      v11 = 64;
    }
  }

  else
  {
    FCIssue.issueCoverModel.getter(v15);
    if (v16)
    {
      if (v16 != 1)
      {
        v11 = 4096;
        goto LABEL_23;
      }

      v11 = 20544;
    }

    else
    {
      v11 = 4160;
    }
  }

  sub_1D619CBDC(v15);
LABEL_23:
  v13 = v9 != v11 || v3 != v14;
  return (v2 == v6) & ~(v13 | v4 ^ v7 | v5 ^ v8);
}

unint64_t sub_1D6CB0EDC()
{
  result = qword_1EC894920;
  if (!qword_1EC894920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894920);
  }

  return result;
}

unint64_t sub_1D6CB0F30(uint64_t a1)
{
  result = sub_1D6CB0F58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CB0F58()
{
  result = qword_1EC894928;
  if (!qword_1EC894928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894928);
  }

  return result;
}

unint64_t sub_1D6CB0FB0()
{
  result = qword_1EC894930;
  if (!qword_1EC894930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894930);
  }

  return result;
}

unint64_t sub_1D6CB1008()
{
  result = qword_1EC894938;
  if (!qword_1EC894938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894938);
  }

  return result;
}

unint64_t sub_1D6CB1060()
{
  result = qword_1EDF13018;
  if (!qword_1EDF13018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13018);
  }

  return result;
}

unint64_t sub_1D6CB10B8()
{
  result = qword_1EDF13010;
  if (!qword_1EDF13010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13010);
  }

  return result;
}

unint64_t sub_1D6CB110C(uint64_t a1)
{
  result = sub_1D5FC45F8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6CB1144(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1D6CB118C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6CB1220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6CB1274(void *a1)
{
  sub_1D6CB1CE4(0, &qword_1EC894950, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB1C60();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D72643FC();
    v10[13] = 2;
    sub_1D72643FC();
    v10[12] = 3;
    sub_1D726441C();
    v10[11] = 4;
    sub_1D726440C();
    v10[10] = 5;
    sub_1D726440C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6CB1460()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65726F6373;
  v4 = 1852138867;
  if (v1 != 4)
  {
    v4 = 1684104562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1D6CB1508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6CB1E60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6CB1530(uint64_t a1)
{
  v2 = sub_1D6CB1C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB156C(uint64_t a1)
{
  v2 = sub_1D6CB1C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6CB15A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6CB18CC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

void sub_1D6CB160C(void *a1@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7284F00;
  v5 = v1[1];
  v16 = *v1;
  *(v4 + 48) = v16;
  v6 = MEMORY[0x1E69E6158];
  *(v4 + 32) = 0x696669746E656449;
  *(v4 + 40) = 0xEA00000000007265;
  v7 = MEMORY[0x1E69E61C8];
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  *(v4 + 88) = 0;
  *(v4 + 96) = 1701667150;
  *(v4 + 104) = 0xE400000000000000;
  *(v4 + 136) = v6;
  *(v4 + 144) = v7;
  *(v4 + 112) = v5;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0xD000000000000011;
  *(v4 + 168) = 0x80000001D73F04F0;
  v14 = v1[2];
  v8 = v14;
  v15 = v5;
  *(v4 + 200) = v6;
  *(v4 + 208) = v7;
  *(v4 + 176) = v8;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0x65726F6353;
  *(v4 + 232) = 0xE500000000000000;
  v9 = MEMORY[0x1E69E6418];
  *&v8 = *(v1 + 6);
  *(v4 + 264) = MEMORY[0x1E69E63B0];
  *(v4 + 272) = v9;
  *(v4 + 240) = v8;
  *(v4 + 280) = 0;
  *(v4 + 288) = 1852138835;
  *(v4 + 296) = 0xE400000000000000;
  v10 = MEMORY[0x1E69E6370];
  v11 = MEMORY[0x1E69E6398];
  LOBYTE(v6) = *(v1 + 56);
  *(v4 + 328) = MEMORY[0x1E69E6370];
  *(v4 + 336) = v11;
  *(v4 + 304) = v6;
  *(v4 + 344) = 0;
  *(v4 + 352) = 1684104530;
  *(v4 + 360) = 0xE400000000000000;
  LOBYTE(v6) = *(v1 + 57);
  *(v4 + 392) = v10;
  *(v4 + 400) = v11;
  *(v4 + 368) = v6;
  *(v4 + 408) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x657069636552;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  sub_1D5E422A8(&v16, v13);
  sub_1D5E422A8(&v15, v13);
  sub_1D5E422A8(&v14, v13);
  sub_1D60F3E18(inited);
  a1[3] = &type metadata for DebugInspectionDataSource;
  a1[4] = &off_1F51328C8;
  *a1 = v12;
}

uint64_t sub_1D6CB1824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1D6CB186C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6CB18CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6CB1CE4(0, &qword_1EC894940, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB1C60();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  LOBYTE(v33[0]) = 1;
  *&v29 = sub_1D72642BC();
  *(&v29 + 1) = v14;
  LOBYTE(v33[0]) = 2;
  v26 = sub_1D72642BC();
  v27 = 0;
  v28 = v15;
  LOBYTE(v33[0]) = 3;
  sub_1D72642DC();
  v17 = v16;
  LOBYTE(v33[0]) = 4;
  v25 = sub_1D72642CC();
  v40[0] = 5;
  v18 = sub_1D72642CC();
  LODWORD(v27) = v25 & 1;
  (*(v7 + 8))(v10, v6);
  v25 = v18 & 1;
  *&v30 = v11;
  *(&v30 + 1) = v13;
  v19 = v29;
  v31 = v29;
  v20 = v26;
  v21 = v28;
  *v32 = v26;
  *&v32[8] = v28;
  *&v32[16] = v17;
  v32[24] = v27;
  v32[25] = v25;
  sub_1D6C78B88(&v30, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v13;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v17;
  v38 = v27;
  v39 = v25;
  result = sub_1D6CB1CB4(v33);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  a2[2] = *v32;
  *(a2 + 42) = *&v32[10];
  return result;
}

unint64_t sub_1D6CB1C60()
{
  result = qword_1EC894948;
  if (!qword_1EC894948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894948);
  }

  return result;
}

void sub_1D6CB1CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB1C60();
    v7 = a3(a1, &type metadata for DebugInspectionRecipe.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CB1D5C()
{
  result = qword_1EC894958;
  if (!qword_1EC894958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894958);
  }

  return result;
}

unint64_t sub_1D6CB1DB4()
{
  result = qword_1EC894960;
  if (!qword_1EC894960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894960);
  }

  return result;
}

unint64_t sub_1D6CB1E0C()
{
  result = qword_1EC894968;
  if (!qword_1EC894968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894968);
  }

  return result;
}

uint64_t sub_1D6CB1E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F04F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852138867 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684104562 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0) + 24);

  return sub_1D5D5FBC4(v3, a1);
}

BOOL _s8NewsFeed44FormatCompilerSlotDefinitionItemSetAuxiliaryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D5FB44(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D633C7DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v18 = a1[1];
  v19 = a2[1];
  if (!v18)
  {
    if (!v19)
    {

      goto LABEL_9;
    }

LABEL_7:

    return 0;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  v29 = v5;
  v20 = v18;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v21 = sub_1D633C7DC(v20, v19);
  v5 = v29;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v22 = *(type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0) + 24);
  v23 = *(v14 + 48);
  sub_1D5D5FBC4(a1 + v22, v17);
  sub_1D5D5FBC4(a2 + v22, &v17[v23]);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_1D5D5FBC4(v17, v12);
    if (v24(&v17[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_14;
    }

    (*(v5 + 32))(v8, &v17[v23], v4);
    sub_1D6CB267C(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v12, v4);
    sub_1D6CB261C(v17, sub_1D5B57CA0);
    return (v26 & 1) != 0;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
LABEL_14:
    sub_1D6CB261C(v17, sub_1D5D5FB44);
    return 0;
  }

  sub_1D6CB261C(v17, sub_1D5B57CA0);
  return 1;
}

uint64_t sub_1D6CB24F0(uint64_t a1)
{
  result = sub_1D6CB267C(&qword_1EC894970, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB2548(void *a1)
{
  a1[1] = sub_1D6CB267C(&qword_1EDF1C0A0, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  a1[2] = sub_1D6CB267C(&qword_1EDF06118, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  result = sub_1D6CB267C(&qword_1EC894978, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CB261C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CB267C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6CB26C4()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EC9BAC88);
  __swift_project_value_buffer(v0, qword_1EC9BAC88);
  return sub_1D725BD2C();
}

uint64_t type metadata accessor for DebugFormatWorkspaceSnapshotManifest(uint64_t a1)
{
  result = qword_1EC894980;
  if (!qword_1EC894980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CB2790(uint64_t a1)
{
  sub_1D725891C();
  if (v1 <= 0x3F)
  {
    sub_1D725BD1C();
    if (v2 <= 0x3F)
    {
      sub_1D6CB2834();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6CB2834()
{
  if (!qword_1EC894990)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894990);
    }
  }
}

uint64_t sub_1D6CB2884(void *a1)
{
  v3 = v1;
  sub_1D6CB3460(0, &qword_1EC894998, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB33B8();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D725891C();
  sub_1D5CE456C(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
    v17 = 1;
    sub_1D725BD1C();
    sub_1D5CE456C(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
    sub_1D726443C();
    v16 = 2;
    sub_1D726443C();
    v15 = 3;
    sub_1D726443C();
    v13[1] = *(v3 + *(v11 + 32));
    v14 = 4;
    sub_1D6CB2834();
    sub_1D6CB34C4(&qword_1EC8949A8, sub_1D6CB340C, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CB2B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = sub_1D725891C();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB3460(0, &qword_1EC8949B8, MEMORY[0x1E69E6F48]);
  v52 = v17;
  v50 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB33B8();
  v51 = v20;
  v25 = v53;
  sub_1D7264B0C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v53 = v21;
  v27 = v48;
  v59 = 0;
  sub_1D5CE456C(&qword_1EDF45B08, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v28 = v49;
  sub_1D726431C();
  v29 = *(v27 + 32);
  v49 = v14;
  v29(v24, v28);
  v58 = 1;
  sub_1D5CE456C(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v30 = v26;
  v31 = v46;
  sub_1D726431C();
  v32 = v53[5];
  v40 = *(v47 + 32);
  v41 = v24;
  v40(&v24[v32], v30, v31);
  v57 = 2;
  v33 = v45;
  v42 = 0;
  sub_1D726431C();
  v34 = v33;
  v35 = v40;
  v40(&v41[v53[6]], v34, v31);
  v56 = 3;
  sub_1D726431C();
  v35(&v41[v53[7]], v44, v31);
  sub_1D6CB2834();
  v55 = 4;
  sub_1D6CB34C4(&qword_1EC8949C0, sub_1D6CB3530, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  v36 = v53[8];
  (*(v50 + 8))(v51, v52);
  v37 = v41;
  *&v41[v36] = v54;
  sub_1D6CB3584(v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6CB35E8(v37);
}

uint64_t sub_1D6CB3238()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6973726556707061;
  v4 = 0x74736566696E616DLL;
  if (v1 != 3)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x655674616D726F66;
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

uint64_t sub_1D6CB32E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6CB375C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6CB3310(uint64_t a1)
{
  v2 = sub_1D6CB33B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB334C(uint64_t a1)
{
  v2 = sub_1D6CB33B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6CB33B8()
{
  result = qword_1EC8949A0;
  if (!qword_1EC8949A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949A0);
  }

  return result;
}

unint64_t sub_1D6CB340C()
{
  result = qword_1EC8949B0;
  if (!qword_1EC8949B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949B0);
  }

  return result;
}

void sub_1D6CB3460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB33B8();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifest.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6CB34C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6CB2834();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CB3530()
{
  result = qword_1EC8949C8;
  if (!qword_1EC8949C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949C8);
  }

  return result;
}

uint64_t sub_1D6CB3584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CB35E8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6CB3658()
{
  result = qword_1EC8949D0;
  if (!qword_1EC8949D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949D0);
  }

  return result;
}

unint64_t sub_1D6CB36B0()
{
  result = qword_1EC8949D8;
  if (!qword_1EC8949D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949D8);
  }

  return result;
}

unint64_t sub_1D6CB3708()
{
  result = qword_1EC8949E0;
  if (!qword_1EC8949E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949E0);
  }

  return result;
}

uint64_t sub_1D6CB375C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEF6E6F6973726556 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
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

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = a1 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D6CB39AC(void *a1)
{
  sub_1D6CB4690(0, &qword_1EC894A00, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v8;
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v31 = *(v1 + 48);
  v10 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = v10;
  v11 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = v11;
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D6CB45E8();
  sub_1D7264B5C();
  LOBYTE(v29) = 0;
  v17 = v28;
  sub_1D72643FC();
  if (!v17)
  {
    v28 = v12;
    LOBYTE(v29) = 1;
    sub_1D72643FC();
    LOBYTE(v29) = 2;
    sub_1D72643FC();
    LOBYTE(v29) = 3;
    sub_1D726440C();
    LOBYTE(v29) = 4;
    sub_1D726437C();
    v29 = v21;
    v32 = 5;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D72643BC();
    v29 = v20;
    v30 = v28;
    v32 = 6;
    sub_1D6CB46F4();

    sub_1D726443C();
  }

  return (*(v4 + 8))(v7, v16);
}

void sub_1D6CB3CA8(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6CB4690(0, &qword_1EC8949E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB45E8();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v11 = sub_1D72642BC();
    v51 = v12;
    LOBYTE(v37[0]) = 1;
    *&v31 = sub_1D72642BC();
    *(&v31 + 1) = v13;
    LOBYTE(v37[0]) = 2;
    v30 = sub_1D72642BC();
    v15 = v14;
    LOBYTE(v37[0]) = 3;
    LODWORD(v28) = sub_1D72642CC();
    LOBYTE(v37[0]) = 4;
    v27 = sub_1D726422C();
    v29 = v16;
    sub_1D5BBE0A8();
    LOBYTE(v32[0]) = 5;
    sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v26 = v37[0];
    v48 = 6;
    sub_1D6CB463C();
    sub_1D726431C();
    v17 = v28 & 1;
    (*(v7 + 8))(v10, v6);
    v25 = *(&v49 + 1);
    v28 = v49;
    *&v32[0] = v11;
    v18 = v51;
    *(&v32[0] + 1) = v51;
    v19 = v31;
    v32[1] = v31;
    *&v33 = v30;
    *(&v33 + 1) = v15;
    LOBYTE(v34) = v17;
    *(&v34 + 1) = *v50;
    DWORD1(v34) = *&v50[3];
    v20 = v29;
    *(&v34 + 1) = v27;
    *&v35 = v29;
    *(&v35 + 1) = v26;
    v36 = v49;
    v21 = v31;
    *a2 = v32[0];
    a2[1] = v21;
    v22 = v36;
    a2[4] = v35;
    a2[5] = v22;
    v23 = v34;
    a2[2] = v33;
    a2[3] = v23;
    sub_1D66F4220(v32, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v11;
    v37[1] = v18;
    v38 = __PAIR128__(*(&v31 + 1), v19);
    v39 = v30;
    v40 = v15;
    v41 = v17;
    *v42 = *v50;
    *&v42[3] = *&v50[3];
    v43 = v27;
    v44 = v20;
    v45 = v26;
    v46 = v28;
    v47 = v25;
    sub_1D66F427C(v37);
  }
}

uint64_t sub_1D6CB423C()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C626973736F70;
  if (v1 != 5)
  {
    v3 = 0x6E656D656C456975;
  }

  v4 = 0x6465726975716572;
  if (v1 != 3)
  {
    v4 = 0x56746C7561666564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
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

uint64_t sub_1D6CB432C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6CB4860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6CB4354(uint64_t a1)
{
  v2 = sub_1D6CB45E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB4390(uint64_t a1)
{
  v2 = sub_1D6CB45E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6CB4400(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v22 = a1[8];
  v19 = a1[7];
  v20 = a1[9];
  v16 = a1[10];
  v17 = a1[11];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v18 = *(a2 + 56);
  v21 = *(a2 + 64);
  v23 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    if (sub_1D72646CC() & 1) == 0 || ((v6 ^ v11))
    {
      return v12 & 1;
    }
  }

  if (v22)
  {
    v12 = v23;
    if (!v21 || (v19 != v18 || v22 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = v23;
    if (v21)
    {
      goto LABEL_25;
    }
  }

  if (!v20)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v12)
  {
    if (sub_1D5BF1C0C(v20, v12))
    {
LABEL_23:
      v25[0] = v16;
      v25[1] = v17;
      v24[0] = v14;
      v24[1] = v15;

      LOBYTE(v12) = sub_1D67DBA4C(v25, v24);

      return v12 & 1;
    }

LABEL_25:
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

unint64_t sub_1D6CB45E8()
{
  result = qword_1EC8949F0;
  if (!qword_1EC8949F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949F0);
  }

  return result;
}

unint64_t sub_1D6CB463C()
{
  result = qword_1EC8949F8;
  if (!qword_1EC8949F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949F8);
  }

  return result;
}

void sub_1D6CB4690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB45E8();
    v7 = a3(a1, &type metadata for DebugFormatTemplateKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CB46F4()
{
  result = qword_1EC894A08;
  if (!qword_1EC894A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A08);
  }

  return result;
}

unint64_t sub_1D6CB475C()
{
  result = qword_1EC894A10;
  if (!qword_1EC894A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A10);
  }

  return result;
}

unint64_t sub_1D6CB47B4()
{
  result = qword_1EC894A18;
  if (!qword_1EC894A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A18);
  }

  return result;
}

unint64_t sub_1D6CB480C()
{
  result = qword_1EC894A20;
  if (!qword_1EC894A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A20);
  }

  return result;
}

uint64_t sub_1D6CB4860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C626973736F70 && a2 == 0xEE007365756C6156 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656D656C456975 && a2 == 0xE900000000000074)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 FormatItem.init(identifier:name:description:kind:traits:children:style:styles:selectors:options:types:accessibilityRole:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, char *a14)
{
  v19 = *a7;
  v20 = a7[1];
  v21 = *a14;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v19;
  *(a9 + 56) = v20;
  *(a9 + 64) = a8;
  result = a11;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = v21;
  return result;
}

uint64_t FormatItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatItem.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FormatItem.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void FormatItem.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatItem.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5CBA110(v2, v3);
}

uint64_t _s8NewsFeed10FormatItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v33 = a1[7];
  v34 = a1[6];
  v32 = a1[8];
  v30 = a1[9];
  v28 = a1[10];
  v26 = a1[11];
  v24 = a1[12];
  v22 = a1[13];
  v20 = a1[14];
  v18 = *(a1 + 120);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v31 = *(a2 + 64);
  v29 = *(a2 + 72);
  v27 = *(a2 + 80);
  v25 = *(a2 + 88);
  v23 = *(a2 + 96);
  v21 = *(a2 + 104);
  v19 = *(a2 + 112);
  v17 = *(a2 + 120);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v3 != v9 || v5 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v37 = v34;
  v38 = v33;
  v35 = v10;
  v36 = v11;
  sub_1D5CBA110(v34, v33);
  sub_1D5CBA110(v10, v11);
  v12 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(&v37, &v35);
  sub_1D5CBA0FC(v35, v36);
  sub_1D5CBA0FC(v37, v38);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1D634F2BC(v32, v31);
  if ((v13 & 1) == 0 || (sub_1D633E44C(v30, v29) & 1) == 0)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27)
    {
      return 0;
    }

    type metadata accessor for FormatItemNodeStyle(0);

    v14 = static FormatItemNodeStyle.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if ((sub_1D633E5BC(v26, v25) & 1) == 0)
    {
      return 0;
    }

    if ((sub_1D5BFC390(v24, v23) & 1) == 0)
    {
      return 0;
    }

    if ((sub_1D633BCCC(v22, v21) & 1) == 0)
    {
      return 0;
    }

    sub_1D63491BC(v20, v19);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (v18 == 7)
    {
      if (v17 != 7)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v37) = v18;
      if (v17 == 7)
      {
        return 0;
      }

      LOBYTE(v35) = v17;
      if (!_s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v37, &v35))
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v27)
  {
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_1D6CB5184(uint64_t a1)
{
  result = sub_1D5B4AD74();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB51CC(void *a1)
{
  v3 = v1;
  sub_1D6CBA878(0, &qword_1EC894B30, sub_1D6CBA824, &type metadata for H6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBA824();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6CB9D9C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    sub_1D6CBA8E0(&qword_1EC894B38, sub_1D67490D8, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CB5428()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x656D617266;
  }
}

void sub_1D6CB5464(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_1D6CB5544(uint64_t a1)
{
  v2 = sub_1D6CBA824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB5580(uint64_t a1)
{
  v2 = sub_1D6CBA824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6CB55BC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6CBA570(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6CB561C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6CB9E5C();

  return sub_1D725A24C();
}

uint64_t sub_1D6CB5698@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6CBA878(0, &qword_1EC894B08, sub_1D6CBA51C, &type metadata for HMultiLayoutItem, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6CB5754(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext(0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v59 = &type metadata for H6_V1;
  v42 = sub_1D5ECE190();
  v60 = v42;
  LOBYTE(v57[0]) = v17;
  v57[1] = v18;
  v58 = v19;
  type metadata accessor for GroupLayoutKey(0);
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for H6_V1.Bound(0);
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6CB9D9C(&qword_1EC894A38, type metadata accessor for H6_V1.Bound, &unk_1D7346F04);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for H6_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  sub_1D6C555B4(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = v36;
}

void sub_1D6CB5BEC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for H6_V1.Bound(0) + 28));
  v29 = v1;
  v24 = sub_1D5FBD90C(sub_1D6CB9DE4, v28, v9);
  *&v31 = v24;
  sub_1D6CBA34C(0, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E62F8]);
  v11 = v10;
  sub_1D5BD4AA4(&qword_1EC894A68, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E6340]);
  v25 = v11;
  v12 = sub_1D7262C1C();
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v26 = v12;
  v27 = v2;
  sub_1D6CBA2C8(0, &qword_1EC894A70, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v15 = v33;
  v16 = MEMORY[0x1E69E62F8];
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v17 = MEMORY[0x1E69E6328];
  sub_1D5BD4AA4(&qword_1EC894A90, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E6328]);
  sub_1D5BD4AA4(&qword_1EC894A98, &qword_1EC894A88, &type metadata for HMultiLayoutItem, v17);
  v22 = v32;
  v23 = v31;
  v30 = v15;
  *&v31 = v24;

  v18 = sub_1D725C00C();

  *a1 = 0;
  v19 = v23;
  *(a1 + 24) = v22;
  *(a1 + 8) = v19;
  *&v31 = v18;
  sub_1D6CBA34C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v16);
  sub_1D5BD4AA4(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v17);
  sub_1D5BDEFF8();
  v20 = sub_1D72623BC();

  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
}

uint64_t sub_1D6CB6014@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v287 = a3;
  v286 = sub_1D725891C();
  v6 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v7);
  v284 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v278 = &v274 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v274 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v277 = &v274 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v274 - v25;
  sub_1D5F76E40(a1, &v320);
  if (v336)
  {
    if (v336 != 1)
    {
      v302 = v326;
      v303[0] = v327[0];
      v303[1] = v327[1];
      v304 = v328;
      v298 = v322;
      v299 = v323;
      v300 = v324;
      v301 = v325;
      v296 = v320;
      v297 = v321;
      v137 = *a2;
      sub_1D5EE5AF8(&v296, &v288);
      v138 = a2 + *(type metadata accessor for H6_V1.Bound(0) + 24);
      v139 = type metadata accessor for GroupLayoutContext(0);
      v140 = *(*&v138[*(v139 + 40)] + 16);
      v141 = *&v138[*(v139 + 32)];
      sub_1D5B68374(v140 + 16, &v305);
      sub_1D5B68374(v140 + 56, v319);
      v142 = v141 * *(v140 + 96);
      type metadata accessor for FeedLayoutStylerFactory();
      v143 = swift_allocObject();
      sub_1D5B63F14(&v305, v143 + 16);
      sub_1D5B63F14(v319, v143 + 56);
      *(v143 + 96) = v142;

      FeedLayoutStylerFactory.styler()(&v308);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v143 + 16));
      __swift_destroy_boxed_opaque_existential_1((v143 + 56));
      swift_deallocClassInstance();
      v144 = v287;
      CoverChannelViewLayout.Context.init(key:model:styler:)(v137, &v288, &v308, v287);
      result = sub_1D5EE5B54(&v296);
      *(v144 + 392) = 1;
      return result;
    }

    v275 = v12;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v294 = v334;
    v295[0] = *v335;
    *(v295 + 9) = *&v335[9];
    v290 = v330;
    v291 = v331;
    v292 = v332;
    v293 = v333;
    v288 = v328;
    v289 = v329;
    v280 = *a2;
    v27 = v280;
    v28 = a2 + *(type metadata accessor for H6_V1.Bound(0) + 24);
    v29 = type metadata accessor for GroupLayoutContext(0);
    v30 = *(*&v28[*(v29 + 40)] + 16);
    v31 = *&v28[*(v29 + 32)];
    sub_1D5B68374(v30 + 16, &v305);
    sub_1D5B68374(v30 + 56, &v316);
    v32 = v31 * *(v30 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v33 = swift_allocObject();
    sub_1D5B63F14(&v305, v33 + 16);
    sub_1D5B63F14(&v316, v33 + 56);
    *(v33 + 96) = v32;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6CBA14C(&v288, &v308, &qword_1EDF34E30, &type metadata for FeedIssue);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v33 + 16));
    __swift_destroy_boxed_opaque_existential_1((v33 + 56));
    swift_deallocClassInstance();
    v34 = v300;
    v35 = v287;
    *(v287 + 11) = v301;
    v36 = v303[0];
    *(v35 + 13) = v302;
    *(v35 + 15) = v36;
    *(v35 + 129) = *(v303 + 9);
    v37 = v296;
    *(v35 + 3) = v297;
    v38 = v299;
    *(v35 + 5) = v298;
    *(v35 + 7) = v38;
    *(v35 + 9) = v34;
    *(v35 + 1) = v37;
    v39 = v292;
    *(v35 + 29) = v293;
    v40 = v295[0];
    *(v35 + 31) = v294;
    *(v35 + 33) = v40;
    *(v35 + 273) = *(v295 + 9);
    v41 = v288;
    *(v35 + 21) = v289;
    v42 = v291;
    *(v35 + 23) = v290;
    *(v35 + 25) = v42;
    *(v35 + 27) = v39;
    *v35 = v27;
    *(v35 + 19) = v41;
    sub_1D5B68374(v319, (v35 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v43 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v44 = v43;
    v45 = v303[0];
    v43[7] = v302;
    v43[8] = v45;
    *(v43 + 137) = *(v303 + 9);
    v46 = v299;
    v43[3] = v298;
    v43[4] = v46;
    v47 = v301;
    v43[5] = v300;
    v43[6] = v47;
    v48 = v297;
    v43[1] = v296;
    v43[2] = v48;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v277 = v49;
    v50 = swift_allocObject();
    *(v50 + 2) = 0xC04E000000000000;
    v51 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v52 = sub_1D6CAFA6C();
    v53 = (*(v51 + 80))(v52);

    *&v50[*(*v50 + 120)] = v53;
    *&v50[*(*v50 + 136)] = v53;
    v54 = v53;
    v55 = v284;
    sub_1D725890C();
    v56 = *(*v50 + 128);
    v57 = v286;
    v58 = *(v285 + 32);
    v285 += 32;
    v279 = v58;
    v58(&v50[v56], v55, v286);
    v280 = objc_opt_self();
    LOBYTE(v55) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v50[qword_1EDF347F8] = v55;
    v59 = v283;
    sub_1D5DF42F8(v283, &v50[qword_1EDF347F0]);
    v60 = swift_allocObject();
    v60[2] = sub_1D5EF97AC;
    v60[3] = v44;
    v60[4] = v54;
    *(v50 + 3) = sub_1D5EF97B4;
    *(v50 + 4) = v60;
    v35[42] = v50;
    sub_1D5B68374(v319, &v316);
    v281(v59, 1, 1, v57);
    v61 = swift_allocObject();
    v62 = v303[0];
    v61[7] = v302;
    v61[8] = v62;
    *(v61 + 137) = *(v303 + 9);
    v63 = v299;
    v61[3] = v298;
    v61[4] = v63;
    v64 = v301;
    v61[5] = v300;
    v61[6] = v64;
    v65 = v297;
    v61[1] = v296;
    v61[2] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = 0xC04E000000000000;
    v67 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v68 = sub_1D6CAFA6C();
    v69 = (*(v67 + 88))(v68);

    *&v66[*(*v66 + 120)] = v69;
    *&v66[*(*v66 + 136)] = v69;
    v70 = v69;
    v71 = v284;
    sub_1D725890C();
    v72 = v286;
    v279(&v66[*(*v66 + 128)], v71, v286);
    LOBYTE(v71) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v66[qword_1EDF347F8] = v71;
    sub_1D5DF42F8(v283, &v66[qword_1EDF347F0]);
    v73 = swift_allocObject();
    v73[2] = sub_1D5EF97C0;
    v73[3] = v61;
    v73[4] = v70;
    *(v66 + 3) = sub_1D5EF9FF8;
    *(v66 + 4) = v73;
    v35[43] = v66;
    sub_1D5B68374(v319, &v305);
    v281(v278, 1, 1, v72);
    v74 = swift_allocObject();
    v75 = v303[0];
    v74[7] = v302;
    v74[8] = v75;
    *(v74 + 137) = *(v303 + 9);
    v76 = v299;
    v74[3] = v298;
    v74[4] = v76;
    v77 = v301;
    v74[5] = v300;
    v74[6] = v77;
    v78 = v297;
    v74[1] = v296;
    v74[2] = v78;
    v79 = swift_allocObject();
    *(v79 + 2) = 0xC04E000000000000;
    v81 = v306;
    v80 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v146 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v147 = [v146 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v148 = sub_1D726213C();
    v150 = v149;

    v151 = (*(v80 + 96))(v148, v150, v81, v80);

    *&v79[*(*v79 + 120)] = v151;
    *&v79[*(*v79 + 136)] = v151;
    v152 = v151;
    v153 = v284;
    sub_1D725890C();
    v154 = v153;
    v155 = v286;
    v279(&v79[*(*v79 + 128)], v154, v286);
    LOBYTE(v150) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v79[qword_1EDF347F8] = v150;
    sub_1D5DF42F8(v278, &v79[qword_1EDF347F0]);
    v156 = swift_allocObject();
    v156[2] = sub_1D5EF97C8;
    v156[3] = v74;
    v156[4] = v152;
    *(v79 + 3) = sub_1D5EF9FF8;
    *(v79 + 4) = v156;
    v287[44] = v79;
    sub_1D5B68374(v319, &v305);
    v281(v275, 1, 1, v155);
    v157 = swift_allocObject();
    v158 = v303[0];
    v157[7] = v302;
    v157[8] = v158;
    *(v157 + 137) = *(v303 + 9);
    v159 = v299;
    v157[3] = v298;
    v157[4] = v159;
    v160 = v301;
    v157[5] = v300;
    v157[6] = v160;
    v161 = v297;
    v157[1] = v296;
    v157[2] = v161;
    v162 = swift_allocObject();
    *(v162 + 2) = 0xC04E000000000000;
    v163 = BYTE8(v297);
    v164 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v163 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v165 = sub_1D6CAFB7C();
      v166 = (*(v164 + 96))(v165);
    }

    else
    {
      LOBYTE(v316) = v163;
      sub_1D5ECF2C4(&v296, &v308);
      v188 = sub_1D6CAFB7C();
      v166 = (*(v164 + 104))(v188);
    }

    v189 = v166;

    *&v162[*(*v162 + 120)] = v189;
    *&v162[*(*v162 + 136)] = v189;
    v190 = v189;
    v191 = v284;
    sub_1D725890C();
    v192 = v286;
    v279(&v162[*(*v162 + 128)], v191, v286);
    LOBYTE(v191) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v162[qword_1EDF347F8] = v191;
    sub_1D5DF42F8(v275, &v162[qword_1EDF347F0]);
    v193 = swift_allocObject();
    v193[2] = sub_1D5EF97D0;
    v193[3] = v157;
    v193[4] = v190;
    *(v162 + 3) = sub_1D5EF9FF8;
    *(v162 + 4) = v193;
    v287[45] = v162;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v192);
    v194 = swift_allocObject();
    *(v194 + 2) = 0xC04E000000000000;
    v195 = *(&v309 + 1);
    v196 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v278 = ObjCClassFromMetadata;
    v275 = objc_opt_self();
    v198 = [v275 bundleForClass_];
    sub_1D725811C();

    v199 = sub_1D726213C();
    v201 = v200;

    v202 = (*(v196 + 112))(v199, v201, v195, v196);

    *&v194[*(*v194 + 120)] = v202;
    *&v194[*(*v194 + 136)] = v202;
    v203 = v202;
    v204 = v284;
    sub_1D725890C();
    v205 = v286;
    v279(&v194[*(*v194 + 128)], v204, v286);
    LOBYTE(v204) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v194[qword_1EDF347F8] = v204;
    v206 = v283;
    sub_1D5DF42F8(v283, &v194[qword_1EDF347F0]);
    v207 = swift_allocObject();
    v207[2] = sub_1D6EAD6D0;
    v207[3] = 0;
    v207[4] = v203;
    *(v194 + 3) = sub_1D5EF9FF8;
    *(v194 + 4) = v207;
    v287[46] = v194;
    sub_1D5B68374(v319, &v308);
    v208 = v205;
    v281(v206, 1, 1, v205);
    v209 = swift_allocObject();
    *(v209 + 2) = 0xC04E000000000000;
    v210 = *(&v309 + 1);
    v211 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v212 = [v275 bundleForClass_];
    sub_1D725811C();

    v213 = sub_1D726213C();
    v215 = v214;

    v216 = (*(v211 + 120))(v213, v215, v210, v211);

    *&v209[*(*v209 + 120)] = v216;
    *&v209[*(*v209 + 136)] = v216;
    v217 = v216;
    v218 = v284;
    sub_1D725890C();
    v219 = v208;
    v220 = v208;
    v221 = v279;
    v279(&v209[*(*v209 + 128)], v218, v220);
    LOBYTE(v213) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v209[qword_1EDF347F8] = v213;
    v222 = v283;
    sub_1D5DF42F8(v283, &v209[qword_1EDF347F0]);
    v223 = swift_allocObject();
    v223[2] = sub_1D6EAD7F8;
    v223[3] = 0;
    v223[4] = v217;
    *(v209 + 3) = sub_1D5EF9FF8;
    *(v209 + 4) = v223;
    v287[47] = v209;
    sub_1D5B68374(v319, &v305);
    v281(v222, 1, 1, v219);
    v224 = swift_allocObject();
    v225 = v303[0];
    v224[7] = v302;
    v224[8] = v225;
    *(v224 + 137) = *(v303 + 9);
    v226 = v299;
    v224[3] = v298;
    v224[4] = v226;
    v227 = v301;
    v224[5] = v300;
    v224[6] = v227;
    v228 = v297;
    v224[1] = v296;
    v224[2] = v228;
    sub_1D5EF97E0(0);
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v230 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v230;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v221(&v229[*(*v229 + 128)], v218, v219);
    LOBYTE(v222) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v222;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v231 = swift_allocObject();
    *(v231 + 16) = sub_1D5EF97D8;
    *(v231 + 24) = v224;
    *(v231 + 32) = v230;
    *(v229 + 3) = sub_1D5EF98AC;
    *(v229 + 4) = v231;
    sub_1D5ECF320(&v296);
    sub_1D6CBA1CC(&v288, &qword_1EDF34E30, &type metadata for FeedIssue);
  }

  else
  {
    v275 = v19;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v82 = *a2;
    sub_1D5D62850(&v288);
    v83 = a2 + *(type metadata accessor for H6_V1.Bound(0) + 24);
    v84 = type metadata accessor for GroupLayoutContext(0);
    v85 = *(*&v83[*(v84 + 40)] + 16);
    v86 = *&v83[*(v84 + 32)];
    sub_1D5B68374(v85 + 16, &v305);
    sub_1D5B68374(v85 + 56, &v316);
    v87 = v86 * *(v85 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v88 = swift_allocObject();
    sub_1D5B63F14(&v305, v88 + 16);
    sub_1D5B63F14(&v316, v88 + 56);
    *(v88 + 96) = v87;
    sub_1D5ECF2C4(&v296, &v308);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v88 + 16));
    __swift_destroy_boxed_opaque_existential_1((v88 + 56));
    swift_deallocClassInstance();
    v89 = v300;
    v90 = v287;
    *(v287 + 11) = v301;
    v91 = v303[0];
    *(v90 + 13) = v302;
    *(v90 + 15) = v91;
    *(v90 + 129) = *(v303 + 9);
    v92 = v296;
    *(v90 + 3) = v297;
    v93 = v299;
    *(v90 + 5) = v298;
    *(v90 + 7) = v93;
    *(v90 + 9) = v89;
    *(v90 + 1) = v92;
    v94 = v292;
    *(v90 + 29) = v293;
    v95 = v295[0];
    *(v90 + 31) = v294;
    *(v90 + 33) = v95;
    *(v90 + 273) = *(v295 + 9);
    v96 = v288;
    *(v90 + 21) = v289;
    v97 = v291;
    *(v90 + 23) = v290;
    *(v90 + 25) = v97;
    *(v90 + 27) = v94;
    *v90 = v82;
    *(v90 + 19) = v96;
    sub_1D5B68374(v319, (v90 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v98 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v99 = v98;
    v100 = v303[0];
    v98[7] = v302;
    v98[8] = v100;
    *(v98 + 137) = *(v303 + 9);
    v101 = v299;
    v98[3] = v298;
    v98[4] = v101;
    v102 = v301;
    v98[5] = v300;
    v98[6] = v102;
    v103 = v297;
    v98[1] = v296;
    v98[2] = v103;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v278 = v104;
    v105 = swift_allocObject();
    *(v105 + 2) = 0xC04E000000000000;
    v106 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v107 = sub_1D6CAFA6C();
    v108 = (*(v106 + 80))(v107);

    *&v105[*(*v105 + 120)] = v108;
    *&v105[*(*v105 + 136)] = v108;
    v109 = v108;
    v110 = v284;
    sub_1D725890C();
    v111 = *(*v105 + 128);
    v112 = v286;
    v113 = *(v285 + 32);
    v285 += 32;
    v279 = v113;
    v113(&v105[v111], v110, v286);
    v280 = objc_opt_self();
    LOBYTE(v110) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v105[qword_1EDF347F8] = v110;
    v114 = v283;
    sub_1D5DF42F8(v283, &v105[qword_1EDF347F0]);
    v115 = swift_allocObject();
    v115[2] = sub_1D6CBAA8C;
    v115[3] = v99;
    v115[4] = v109;
    *(v105 + 3) = sub_1D5EF9FF8;
    *(v105 + 4) = v115;
    v90[42] = v105;
    sub_1D5B68374(v319, &v316);
    v281(v114, 1, 1, v112);
    v116 = swift_allocObject();
    v117 = v303[0];
    v116[7] = v302;
    v116[8] = v117;
    *(v116 + 137) = *(v303 + 9);
    v118 = v299;
    v116[3] = v298;
    v116[4] = v118;
    v119 = v301;
    v116[5] = v300;
    v116[6] = v119;
    v120 = v297;
    v116[1] = v296;
    v116[2] = v120;
    v121 = swift_allocObject();
    *(v121 + 2) = 0xC04E000000000000;
    v122 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v123 = sub_1D6CAFA6C();
    v124 = (*(v122 + 88))(v123);

    *&v121[*(*v121 + 120)] = v124;
    *&v121[*(*v121 + 136)] = v124;
    v125 = v124;
    v126 = v284;
    sub_1D725890C();
    v127 = v286;
    v279(&v121[*(*v121 + 128)], v126, v286);
    LOBYTE(v126) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v121[qword_1EDF347F8] = v126;
    sub_1D5DF42F8(v283, &v121[qword_1EDF347F0]);
    v128 = swift_allocObject();
    v128[2] = sub_1D6CBAA90;
    v128[3] = v116;
    v128[4] = v125;
    *(v121 + 3) = sub_1D5EF9FF8;
    *(v121 + 4) = v128;
    v90[43] = v121;
    sub_1D5B68374(v319, &v305);
    v281(v277, 1, 1, v127);
    v129 = swift_allocObject();
    v130 = v303[0];
    v129[7] = v302;
    v129[8] = v130;
    *(v129 + 137) = *(v303 + 9);
    v131 = v299;
    v129[3] = v298;
    v129[4] = v131;
    v132 = v301;
    v129[5] = v300;
    v129[6] = v132;
    v133 = v297;
    v129[1] = v296;
    v129[2] = v133;
    v134 = swift_allocObject();
    *(v134 + 2) = 0xC04E000000000000;
    v135 = v306;
    v136 = v307;
    v274 = __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v167 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v168 = [v167 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v169 = v275;
    v170 = sub_1D726213C();
    v172 = v171;

    v173 = (*(v136 + 96))(v170, v172, v135, v136);

    *&v134[*(*v134 + 120)] = v173;
    *&v134[*(*v134 + 136)] = v173;
    v174 = v173;
    v175 = v284;
    sub_1D725890C();
    v176 = v286;
    v279(&v134[*(*v134 + 128)], v175, v286);
    LOBYTE(v175) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v134[qword_1EDF347F8] = v175;
    sub_1D5DF42F8(v277, &v134[qword_1EDF347F0]);
    v177 = swift_allocObject();
    v177[2] = sub_1D6CBAA94;
    v177[3] = v129;
    v177[4] = v174;
    *(v134 + 3) = sub_1D5EF9FF8;
    *(v134 + 4) = v177;
    v287[44] = v134;
    sub_1D5B68374(v319, &v305);
    v281(v169, 1, 1, v176);
    v178 = swift_allocObject();
    v179 = v303[0];
    v178[7] = v302;
    v178[8] = v179;
    *(v178 + 137) = *(v303 + 9);
    v180 = v299;
    v178[3] = v298;
    v178[4] = v180;
    v181 = v301;
    v178[5] = v300;
    v178[6] = v181;
    v182 = v297;
    v178[1] = v296;
    v178[2] = v182;
    v183 = swift_allocObject();
    *(v183 + 2) = 0xC04E000000000000;
    v184 = BYTE8(v297);
    v185 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v184 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v186 = sub_1D6CAFB7C();
      v187 = (*(v185 + 96))(v186);
    }

    else
    {
      LOBYTE(v316) = v184;
      sub_1D5ECF2C4(&v296, &v308);
      v232 = sub_1D6CAFB7C();
      v187 = (*(v185 + 104))(v232);
    }

    v233 = v187;

    *&v183[*(*v183 + 120)] = v233;
    *&v183[*(*v183 + 136)] = v233;
    v234 = v233;
    v235 = v284;
    sub_1D725890C();
    v236 = v286;
    v279(&v183[*(*v183 + 128)], v235, v286);
    LOBYTE(v235) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v183[qword_1EDF347F8] = v235;
    sub_1D5DF42F8(v275, &v183[qword_1EDF347F0]);
    v237 = swift_allocObject();
    v237[2] = sub_1D6CBAA98;
    v237[3] = v178;
    v237[4] = v234;
    *(v183 + 3) = sub_1D5EF9FF8;
    *(v183 + 4) = v237;
    v287[45] = v183;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v236);
    v238 = swift_allocObject();
    *(v238 + 2) = 0xC04E000000000000;
    v239 = *(&v309 + 1);
    v240 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    v241 = swift_getObjCClassFromMetadata();
    v277 = v241;
    v275 = objc_opt_self();
    v242 = [v275 bundleForClass_];
    sub_1D725811C();

    v243 = sub_1D726213C();
    v245 = v244;

    v246 = (*(v240 + 112))(v243, v245, v239, v240);

    *&v238[*(*v238 + 120)] = v246;
    *&v238[*(*v238 + 136)] = v246;
    v247 = v246;
    v248 = v284;
    sub_1D725890C();
    v249 = v286;
    v279(&v238[*(*v238 + 128)], v248, v286);
    LOBYTE(v248) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v238[qword_1EDF347F8] = v248;
    v250 = v283;
    sub_1D5DF42F8(v283, &v238[qword_1EDF347F0]);
    v251 = swift_allocObject();
    v251[2] = sub_1D6EAD6D0;
    v251[3] = 0;
    v251[4] = v247;
    *(v238 + 3) = sub_1D5EF9FF8;
    *(v238 + 4) = v251;
    v287[46] = v238;
    sub_1D5B68374(v319, &v308);
    v281(v250, 1, 1, v249);
    v252 = swift_allocObject();
    *(v252 + 2) = 0xC04E000000000000;
    v253 = *(&v309 + 1);
    v254 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v255 = [v275 bundleForClass_];
    sub_1D725811C();

    v256 = sub_1D726213C();
    v258 = v257;

    v259 = (*(v254 + 120))(v256, v258, v253, v254);

    *&v252[*(*v252 + 120)] = v259;
    *&v252[*(*v252 + 136)] = v259;
    v260 = v259;
    v261 = v284;
    sub_1D725890C();
    v262 = v286;
    v263 = v279;
    v279(&v252[*(*v252 + 128)], v261, v286);
    LOBYTE(v256) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v252[qword_1EDF347F8] = v256;
    v264 = v283;
    sub_1D5DF42F8(v283, &v252[qword_1EDF347F0]);
    v265 = swift_allocObject();
    v265[2] = sub_1D6EAD7F8;
    v265[3] = 0;
    v265[4] = v260;
    *(v252 + 3) = sub_1D5EF9FF8;
    *(v252 + 4) = v265;
    v287[47] = v252;
    sub_1D5B68374(v319, &v305);
    v281(v264, 1, 1, v262);
    v266 = swift_allocObject();
    v267 = v303[0];
    v266[7] = v302;
    v266[8] = v267;
    *(v266 + 137) = *(v303 + 9);
    v268 = v299;
    v266[3] = v298;
    v266[4] = v268;
    v269 = v301;
    v266[5] = v300;
    v266[6] = v269;
    v270 = v297;
    v266[1] = v296;
    v266[2] = v270;
    sub_1D5EF97E0(0);
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v271 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v271;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v263(&v229[*(*v229 + 128)], v261, v262);
    LOBYTE(v261) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v261;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v272 = swift_allocObject();
    *(v272 + 16) = sub_1D6CBAA9C;
    *(v272 + 24) = v266;
    *(v272 + 32) = v271;
    *(v229 + 3) = sub_1D6CBAA88;
    *(v229 + 4) = v272;
    sub_1D5ECF320(&v296);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v319);
  v273 = v287;
  v287[48] = v229;
  *(v273 + 392) = 0;
  return result;
}

void sub_1D6CB85A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_1D6CBA878(0, &qword_1EC894AA8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v27 = *MEMORY[0x1E69D7460];
    v26 = *(v8 + 104);
    v25 = *MEMORY[0x1E69D7098];
    v29 = v8 + 104;
    v24 = (v8 + 8);
    v23 = xmmword_1D7273AE0;
    v28 = a1;
    v22 = v6;
    do
    {
      v12 += 8;
      v31 = a1;
      v26(v10, v27, v6);
      sub_1D6CBA070(0);
      sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      v18 = (*(v15 + 104))(v17 + v16, v25, v14);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D7150];
      sub_1D6CBA2C8(0, &qword_1EC894AC0, MEMORY[0x1E69D7150]);
      sub_1D6CBA108(&qword_1EC894AC8, &qword_1EC894AC0, v20, MEMORY[0x1E69D7158]);

      a1 = v28;
      v6 = v22;
      sub_1D72599EC();

      (*v24)(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D6CB8904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v118 = a1;
  v102 = sub_1D725A34C();
  v4 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v105 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6CBA878(0, &qword_1EC894AA8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D74B0]);
  v123 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v117 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v96[-v13];
  v14 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v20 = 0;
  v21 = a2 + 32;
  v109 = *MEMORY[0x1E69D7378];
  v108 = (v16 + 104);
  v116 = *MEMORY[0x1E69D7200];
  v22 = *MEMORY[0x1E69D7208];
  v114 = *MEMORY[0x1E69D7468];
  v115 = v22;
  v113 = (v8 + 104);
  v112 = *MEMORY[0x1E69D7050];
  v111 = *MEMORY[0x1E69D7080];
  v107 = (v8 + 8);
  v98 = (v4 + 8);
  v99 = (v4 + 104);
  v97 = *MEMORY[0x1E69D7350];
  v100 = *MEMORY[0x1E69D7340];
  v110 = xmmword_1D7273AE0;
  v101 = v14;
  v119 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  while (1)
  {
    v120 = v21;
    v121 = v19;
    sub_1D6CB9EB0(v21, v133);
    v122 = v20;
    if ((v134 & 1) == 0)
    {
      memcpy(v124, v133, 0x188uLL);
      if ((BYTE8(v124[3]) & 0x10) != 0)
      {
        v23 = v104 + *(type metadata accessor for H6_V1.Bound(0) + 24);
        v24 = type metadata accessor for GroupLayoutContext(0);
        v25 = *(*(v23 + *(v24 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v24, v26);
        *&v96[-32] = v124;
        *&v96[-24] = v25;
        v94 = v28;
      }

      else
      {
        v73 = v104 + *(type metadata accessor for H6_V1.Bound(0) + 24);
        v74 = type metadata accessor for GroupLayoutContext(0);
        v75 = *(*(v73 + *(v74 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v74, v76);
        v94 = v124;
        v95 = v75;
      }

      (*v108)(v18, v109, v14, v27);
      sub_1D5EF94BC(0);
      swift_allocObject();

      v106 = sub_1D725A4CC();

      v125 = v118;
      swift_getKeyPath();
      sub_1D5EF9444(0);
      v30 = v29;
      v31 = swift_allocBox();
      v33 = v32;
      v34 = *(v30 + 48);
      sub_1D725993C();
      v35 = swift_allocBox();
      sub_1D725992C();
      *v33 = v35;
      v36 = sub_1D725A09C();
      v37 = *(*(v36 - 8) + 104);
      v37(v33, v116, v36);
      v37((v33 + v34), v115, v36);
      v38 = v103;
      *v103 = v31;
      (*v113)(v38, v114, v123);
      sub_1D6CBA070(0);
      sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
      v40 = v39;
      v41 = *(v39 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v110;
      sub_1D6CBA878(0, &qword_1EC894AD0, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v44 - 8) + 104))(v43 + v42, v112, v44);
      (*(v41 + 104))(v43 + v42, v111, v40);
      v45 = MEMORY[0x1E69D6F38];
      sub_1D6CBA2C8(0, &qword_1EC894AD8, MEMORY[0x1E69D6F38]);
      v47 = v46;
      v48 = sub_1D6CBA108(&qword_1EC894AE0, &qword_1EC894AD8, v45, MEMORY[0x1E69D6F40]);
      v94 = v47;
      v95 = v48;
      v20 = v122;
      sub_1D7259B0C();

      (*v107)(v38, v123);
      sub_1D5EF93F0(v124);
      v14 = v101;
      goto LABEL_5;
    }

    v124[12] = *&v133[192];
    v124[13] = *&v133[208];
    v124[14] = *&v133[224];
    *&v124[15] = *&v133[240];
    v124[8] = *&v133[128];
    v124[9] = *&v133[144];
    v124[10] = *&v133[160];
    v124[11] = *&v133[176];
    v124[4] = *&v133[64];
    v124[5] = *&v133[80];
    v124[6] = *&v133[96];
    v124[7] = *&v133[112];
    v124[0] = *v133;
    v124[1] = *&v133[16];
    v124[2] = *&v133[32];
    v124[3] = *&v133[48];
    v132 = v118;
    swift_getKeyPath();
    sub_1D5EF9444(0);
    v50 = v49;
    v51 = swift_allocBox();
    v53 = v52;
    v54 = *(v50 + 48);
    sub_1D725993C();
    v55 = swift_allocBox();
    sub_1D725992C();
    *v53 = v55;
    v56 = sub_1D725A09C();
    v57 = *(*(v56 - 8) + 104);
    v57(v53, v116, v56);
    v57((v53 + v54), v115, v56);
    *v117 = v51;
    (*v113)();
    sub_1D6CBA070(0);
    sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
    v59 = v58;
    v60 = *(v58 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v110;
    sub_1D6CBA878(0, &qword_1EC894AD0, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D7078]);
    (*(*(v63 - 8) + 104))(v62 + v61, v112, v63);
    (*(v60 + 104))(v62 + v61, v111, v59);
    v64 = *(&v124[11] + 1);
    v65 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v66 = (*(v65 + 48))(v64, v65);
    v67 = *(&v124[11] + 1);
    v68 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v69 = (*(v68 + 56))(v67, v68);
    sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
    if (v126 == 1)
    {
      v70 = &v125;
      v71 = &qword_1EDF13058;
      v72 = &type metadata for FeedTag.Overrides;
LABEL_18:
      sub_1D6CBA1CC(v70, v71, v72);
      v78 = v100;
      v20 = v122;
      goto LABEL_19;
    }

    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v70 = v128;
      v71 = &unk_1EC880A80;
      v72 = &type metadata for FeedTag.Overrides.Image;
      goto LABEL_18;
    }

    v77 = v131;
    sub_1D5EED4FC(v128);
    v78 = v100;
    v20 = v122;
    if ((v77 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v81 = v105;
    v82 = v102;
    v83 = (*v99)(v105, v78, v102);
    v85 = MEMORY[0x1EEE9AC00](v83, v84);
    *&v96[-32] = v81;
    *&v96[-24] = v66 + v69 + v69;
    v94 = v124;
    (*v108)(v119, v109, v14, v85);
    sub_1D6CBA24C(0);
    swift_allocObject();
    sub_1D725A4CC();
    (*v98)(v81, v82);
    v86 = MEMORY[0x1E69D6F38];
    sub_1D6CBA2C8(0, &qword_1EC894AD8, MEMORY[0x1E69D6F38]);
    v88 = v87;
    v89 = sub_1D6CBA108(&qword_1EC894AE0, &qword_1EC894AD8, v86, MEMORY[0x1E69D6F40]);
    v94 = v88;
    v95 = v89;
    v90 = v117;
    sub_1D7259B0C();

    (*v107)(v90, v123);
    sub_1D6CB9F0C(v124);
LABEL_5:
    v21 = v120 + 400;
    v19 = v121 - 1;
    v18 = v119;
    if (v121 == 1)
    {
      return;
    }
  }

  sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v126 != 1)
  {
    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v91 = &unk_1EC880A80;
      v92 = &type metadata for FeedTag.Overrides.Image;
      v93 = v128;
      goto LABEL_23;
    }

    v79 = v130;
    v80 = v131;
    sub_1D5EED4FC(v128);
    if (v80)
    {
      goto LABEL_24;
    }

    *v105 = v79;
    v78 = v97;
    goto LABEL_19;
  }

  v91 = &qword_1EDF13058;
  v92 = &type metadata for FeedTag.Overrides;
  v93 = &v125;
LABEL_23:
  sub_1D6CBA1CC(v93, v91, v92);
LABEL_24:
  __break(1u);
}

void *sub_1D6CB9734@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x180uLL);
  sub_1D674928C(__dst);
  return memcpy(a2, __dst, 0x181uLL);
}

void *sub_1D6CB9794@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  sub_1D6749280(v10);
  return memcpy(a2, v10, 0x181uLL);
}

uint64_t sub_1D6CB9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB9EB0(a2, v43);
  memcpy(v44, a3, sizeof(v44));
  if ((v43[392] & 1) == 0)
  {
    sub_1D6CB9EB0(v43, v41);
    memcpy(v42, a3, 0x181uLL);
    if (sub_1D67480B8(v42) != 1)
    {
      nullsub_1();
      v39 = v38;
      v40 = swift_allocObject();
      memcpy((v40 + 16), v41, 0x188uLL);
      memcpy((v40 + 408), v39, 0x180uLL);
      *(v40 + 792) = a1;
      v32 = v40 | 0x5000000000000000;
      goto LABEL_9;
    }

    nullsub_1();
    sub_1D5EF93F0(v41);
LABEL_7:
    v33 = swift_allocObject();
    sub_1D725894C();
    v34 = sub_1D725893C();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    *(v33 + 16) = v34;
    *(v33 + 24) = v36;
    *a4 = v33;
    return sub_1D6CB9F60(v43);
  }

  sub_1D6CB9EB0(v43, v41);
  memcpy(v42, a3, 0x181uLL);
  if (sub_1D67480B8(v42) != 1)
  {
    nullsub_1();
    sub_1D6CB9F0C(v41);
    goto LABEL_7;
  }

  nullsub_1();
  v14 = v13;
  v15 = swift_allocObject();
  v16 = v41[13];
  *(v15 + 208) = v41[12];
  *(v15 + 224) = v16;
  *(v15 + 240) = v41[14];
  *(v15 + 256) = *&v41[15];
  v17 = v41[9];
  *(v15 + 144) = v41[8];
  *(v15 + 160) = v17;
  v18 = v41[11];
  *(v15 + 176) = v41[10];
  *(v15 + 192) = v18;
  v19 = v41[5];
  *(v15 + 80) = v41[4];
  *(v15 + 96) = v19;
  v20 = v41[7];
  *(v15 + 112) = v41[6];
  *(v15 + 128) = v20;
  v21 = v41[1];
  *(v15 + 16) = v41[0];
  *(v15 + 32) = v21;
  v22 = v41[3];
  *(v15 + 48) = v41[2];
  *(v15 + 64) = v22;
  v23 = *v14;
  v24 = v14[1];
  v25 = v14[3];
  *(v15 + 296) = v14[2];
  *(v15 + 312) = v25;
  *(v15 + 264) = v23;
  *(v15 + 280) = v24;
  v26 = v14[4];
  v27 = v14[5];
  v28 = v14[7];
  *(v15 + 360) = v14[6];
  *(v15 + 376) = v28;
  *(v15 + 328) = v26;
  *(v15 + 344) = v27;
  v29 = v14[8];
  v30 = v14[9];
  v31 = v14[11];
  *(v15 + 424) = v14[10];
  *(v15 + 440) = v31;
  *(v15 + 392) = v29;
  *(v15 + 408) = v30;
  *(v15 + 456) = a1;
  v32 = v15 | 0x6000000000000000;
LABEL_9:
  *a4 = v32;
  return sub_1D6CBA01C(v43);
}

unint64_t sub_1D6CB9B20(uint64_t a1)
{
  *(a1 + 8) = sub_1D6CB9B50();
  result = sub_1D6CB9BA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6CB9B50()
{
  result = qword_1EC894A28;
  if (!qword_1EC894A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A28);
  }

  return result;
}

unint64_t sub_1D6CB9BA4()
{
  result = qword_1EC894A30;
  if (!qword_1EC894A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A30);
  }

  return result;
}

uint64_t type metadata accessor for H6_V1.Bound(uint64_t a1)
{
  result = qword_1EC894A40;
  if (!qword_1EC894A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CB9C6C(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D6CBA34C(319, &qword_1EC894A50, &type metadata for FeedCatalogItem, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6CB9D44(uint64_t a1)
{
  result = sub_1D6CB9D9C(&qword_1EC894A58, type metadata accessor for H6_V1.Bound, &unk_1D7346EDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB9D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6CB9E08()
{
  result = qword_1EC894A78;
  if (!qword_1EC894A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A78);
  }

  return result;
}

unint64_t sub_1D6CB9E5C()
{
  result = qword_1EC894A80;
  if (!qword_1EC894A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A80);
  }

  return result;
}

uint64_t sub_1D6CB9F60(uint64_t a1)
{
  sub_1D6CB9FBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6CB9FBC()
{
  if (!qword_1EC894AA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC894AA0);
    }
  }
}

void sub_1D6CBA070(uint64_t a1)
{
  if (!qword_1EC894AB0)
  {
    sub_1D6CBA878(255, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC894AB0);
    }
  }
}

uint64_t sub_1D6CBA108(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBA2C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CBA14C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6CBA34C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6CBA1CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6CBA34C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6CBA24C(uint64_t a1)
{
  if (!qword_1EC883CC0)
  {
    sub_1D60F9A08();
    sub_1D60F9A5C();
    v1 = sub_1D725A4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883CC0);
    }
  }
}

void sub_1D6CBA2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for H6_V1.Layout;
    v8[1] = &type metadata for H6_V1.Layout.Attributes;
    v8[2] = sub_1D6CB9E08();
    v8[3] = sub_1D6CB9E5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6CBA34C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6CBA3C0()
{
  result = qword_1EC894AE8;
  if (!qword_1EC894AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AE8);
  }

  return result;
}

unint64_t sub_1D6CBA418()
{
  result = qword_1EC894AF0;
  if (!qword_1EC894AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AF0);
  }

  return result;
}

unint64_t sub_1D6CBA470()
{
  result = qword_1EC894AF8;
  if (!qword_1EC894AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AF8);
  }

  return result;
}

unint64_t sub_1D6CBA4C8()
{
  result = qword_1EC894B00;
  if (!qword_1EC894B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B00);
  }

  return result;
}

unint64_t sub_1D6CBA51C()
{
  result = qword_1EC894B10;
  if (!qword_1EC894B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B10);
  }

  return result;
}

uint64_t sub_1D6CBA570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6CBA878(0, &qword_1EC894B18, sub_1D6CBA824, &type metadata for H6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBA824();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6CB9D9C(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D6CBA8E0(&qword_1EC894B28, sub_1D6749080, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6CBA824()
{
  result = qword_1EC894B20;
  if (!qword_1EC894B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B20);
  }

  return result;
}

void sub_1D6CBA878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6CBA8E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBA34C(255, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBA984()
{
  result = qword_1EC894B40;
  if (!qword_1EC894B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B40);
  }

  return result;
}

unint64_t sub_1D6CBA9DC()
{
  result = qword_1EC894B48;
  if (!qword_1EC894B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B48);
  }

  return result;
}

unint64_t sub_1D6CBAA34()
{
  result = qword_1EC894B50;
  if (!qword_1EC894B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B50);
  }

  return result;
}

unint64_t sub_1D6CBAAB4()
{
  result = qword_1EC894B58;
  if (!qword_1EC894B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B58);
  }

  return result;
}

double FormatBindingFloatExpressionLogicCompare.value.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  LOBYTE(v14) = *a1;
  LOBYTE(v13) = v3;
  v5 = FormatOperator.rawValue.getter();
  v7 = v6;
  if (v5 == FormatOperator.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = v4;
  v14 = v2;

  v11 = static FormatFloat.== infix(_:_:)(&v14, &v13);

  return v11 & 1;
}

uint64_t _s8NewsFeed33FormatBindingFloatExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *a1;
  if (v7 == 12)
  {
    if (v6 != 12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 != 13)
    {
      if ((v6 & 0xFE) != 0xC)
      {
        v15[0] = *a1;
        v16 = v3;
        v13[0] = v6;
        v14 = v5;
        v10 = v4;
        v11 = v3;
        sub_1D62B50D4(v6);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v6);
        v8 = _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v15, v13);
        sub_1D62B5230(v10, v11);
        sub_1D62B5230(v6, v5);
        sub_1D62B5230(v6, v5);
        sub_1D62B5230(v10, v11);
        return v8 & 1;
      }

      goto LABEL_8;
    }

    if (v6 != 13)
    {
LABEL_8:
      v9 = a1[1];
      sub_1D62B50D4(*a1);
      sub_1D62B50D4(v6);
      sub_1D62B5230(v4, v9);
      sub_1D62B5230(v6, v5);
      v8 = 0;
      return v8 & 1;
    }
  }

  sub_1D62B5230(*a1, v3);
  sub_1D62B5230(v6, v5);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D6CBADF0(uint64_t a1)
{
  result = sub_1D6CBAE18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBAE18()
{
  result = qword_1EC894B60;
  if (!qword_1EC894B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B60);
  }

  return result;
}

unint64_t sub_1D6CBAEAC()
{
  result = qword_1EC894B68;
  if (!qword_1EC894B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B68);
  }

  return result;
}

unint64_t sub_1D6CBAF00(uint64_t a1)
{
  result = sub_1D6CBAF28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBAF28()
{
  result = qword_1EC894B70;
  if (!qword_1EC894B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B70);
  }

  return result;
}

uint64_t sub_1D6CBAFBC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBB010()
{
  result = qword_1EC894B78;
  if (!qword_1EC894B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33FormatBindingFloatExpressionLogicO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t FCSportsEventController.fetchSportsEvents(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6CBB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_1D5B7E810(a6);
  v15 = sub_1D726265C();

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a6;
  v16[5] = sub_1D5BE643C;
  v16[6] = v14;
  v18[4] = sub_1D6CBD004;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D6CBB618;
  v18[3] = &block_descriptor_32_2;
  v17 = _Block_copy(v18);

  [a5 fetchSportsEventsForSportsEventIDs:v15 cachePolicy:a7 qualityOfService:25 completionHandler:v17];
  _Block_release(v17);
}

void sub_1D6CBB380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6CBB3E4(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v8 = a2;
    a3(a2);
  }

  else
  {
    v10 = *(a5 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v14 = (a5 + 40);
      do
      {
        if (a1 && *(a1 + 16))
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          sub_1D5B69D90(v15, v16);
          if (v17)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v14 += 2;
        --v10;
      }

      while (v10);
      v18 = v23;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = 0;
    v24 = v11;
    v20 = *(v18 + 16);
    while (v20 != v19)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        return;
      }

      if (*(v18 + 8 * v19++ + 32))
      {
        v22 = swift_unknownObjectRetain();
        MEMORY[0x1DA6F9CE0](v22);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v24;
      }
    }

    a6(v11);
  }
}

double sub_1D6CBB618(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B7D920();
    v4 = sub_1D7261D3C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t FCSportsEventController.fetchSportsEventsMap(for:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D605E094(MEMORY[0x1E69E7CC0]);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6CBB7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_1D5B7E810(a6);
  v13 = sub_1D726265C();

  v14 = [objc_opt_self() defaultCachePolicy];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_1D5B7E910;
  v15[5] = v12;
  v17[4] = sub_1D6CBCFF8;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D6CBB618;
  v17[3] = &block_descriptor_23_0;
  v16 = _Block_copy(v17);

  [a5 fetchSportsEventsForSportsEventIDs:v13 cachePolicy:v14 qualityOfService:25 completionHandler:v16];
  _Block_release(v16);
}

void sub_1D6CBB984(uint64_t a1)
{
  if (!qword_1EDF05650)
  {
    sub_1D5B7D920();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05650);
    }
  }
}

double sub_1D6CBB9EC(unint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDFFC538;
    v9 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    swift_getErrorValue();
    v11 = sub_1D726497C();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1D5B7E2C0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_1D725C30C("Failed to fetch event for sport event, error=%{public}@", 55, 2, &dword_1D5B42000, v8, v9, v10);

    a3(a2);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = sub_1D605E094(MEMORY[0x1E69E7CC0]);
    }

    a5(v16);
  }

  return result;
}

uint64_t FCSportsEventController.fetchSportsEvent(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = objc_opt_self();

  v9 = [v5 defaultCachePolicy];
  sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BBAC();

  v6 = sub_1D725B92C();
  sub_1D5B7D920();
  v7 = sub_1D725BA7C();

  return v7;
}

uint64_t FCSportsEventController.fetchSportsEvents(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCachePolicy];
  v4 = v2;
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v5 = sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v5 = sub_1D725BB1C();
  }

  return v5;
}

unint64_t *sub_1D6CBBE60(unint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D6CBCFA4();
    swift_allocError();
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    sub_1D6CBB380(0, &qword_1EC894B98, sub_1D5B7D920, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6CBBF68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6CBC094(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D605E094(MEMORY[0x1E69E7CC0]);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t FCSportsEventController.fetchSportsEventsAsync(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CBC22C, 0, 0);
}

uint64_t sub_1D6CBC22C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_task_alloc();
    v0[6] = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = swift_task_alloc();
    v0[7] = v5;
    sub_1D6CBB34C(0);
    *v5 = v0;
    v5[1] = sub_1D6CBC384;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000028, 0x80000001D73F0530, sub_1D6CBCD58, v4, v6);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1D6CBC384()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D6CBC4A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = aBlock - v13;
  sub_1D5B7E810(a3);
  v15 = sub_1D726265C();

  (*(v10 + 16))(v14, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  *(v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D6CBCEDC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6CBB618;
  aBlock[3] = &block_descriptor_14_0;
  v18 = _Block_copy(aBlock);

  [a2 fetchSportsEventsForSportsEventIDs:v15 cachePolicy:a4 qualityOfService:25 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1D6CBC6C4(uint64_t result, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
    return sub_1D726286C();
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = result;
      v18 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v9 = (a4 + 40);
      do
      {
        if (v7 && *(v7 + 16))
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_1D5B69D90(v10, v11);
          if (v12)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        result = sub_1D7263EAC();
        v9 += 2;
        --v5;
      }

      while (v5);
      v13 = v18;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = 0;
    v15 = *(v13 + 16);
    while (1)
    {
      if (v15 == v14)
      {

        sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
        return sub_1D726287C();
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      if (*(v13 + 8 * v14++ + 32))
      {
        v17 = swift_unknownObjectRetain();
        MEMORY[0x1DA6F9CE0](v17);
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FCSportsEventController.fetchSportsEventsMapAsync(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CBC910, 0, 0);
}

uint64_t sub_1D6CBC910()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    sub_1D6CBB984(0);
    *v4 = v0;
    v4[1] = sub_1D5F72418;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x80000001D73F0560, sub_1D6CBCD64, v3, v5);
  }

  else
  {
    v6 = sub_1D605E094(MEMORY[0x1E69E7CC0]);
    v7 = v0[1];

    return v7(v6);
  }
}

void sub_1D6CBCA5C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = aBlock - v10;
  sub_1D5B7E810(a3);
  v12 = sub_1D726265C();

  v13 = [objc_opt_self() defaultCachePolicy];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = sub_1D6CBCDBC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6CBB618;
  aBlock[3] = &block_descriptor_91;
  v16 = _Block_copy(aBlock);

  [a2 fetchSportsEventsForSportsEventIDs:v12 cachePolicy:v13 qualityOfService:25 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1D6CBCC88(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);
    return sub_1D726286C();
  }

  else
  {
    if (!a1)
    {
      sub_1D605E094(MEMORY[0x1E69E7CC0]);
    }

    sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);

    return sub_1D726287C();
  }
}

uint64_t sub_1D6CBCDBC(uint64_t a1, void *a2)
{
  sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);

  return sub_1D6CBCC88(a1, a2);
}

void sub_1D6CBCE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v4 = sub_1D726288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6CBCEDC(uint64_t a1, void *a2)
{
  sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D6CBC6C4(a1, a2, v2 + v7, v8);
}

unint64_t sub_1D6CBCFA4()
{
  result = qword_1EC894BA0;
  if (!qword_1EC894BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894BA0);
  }

  return result;
}

unint64_t sub_1D6CBD028()
{
  result = qword_1EC894BB0;
  if (!qword_1EC894BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894BB0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView(uint64_t a1)
{
  result = qword_1EC894BC0;
  if (!qword_1EC894BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CBD110(uint64_t a1)
{
  result = type metadata accessor for DebugFormatWorkspace(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6CBD198(__n128 a1)
{
  v2 = v1;
  v3 = sub_1D72611CC();
  v8 = 1;
  sub_1D6CBD364(v2, &v18);
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[7] = v25;
  sub_1D6CBD9AC(&v9, &v5);
  sub_1D6CBDEF0(v17, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
  *&v7[71] = v13;
  *&v7[87] = v14;
  *&v7[103] = v15;
  *&v7[119] = v16;
  *&v7[7] = v9;
  *&v7[23] = v10;
  *&v7[39] = v11;
  *&v7[55] = v12;
  *&v6[81] = *&v7[80];
  *&v6[97] = *&v7[96];
  *&v6[113] = *&v7[112];
  *&v6[17] = *&v7[16];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  *&v6[65] = *&v7[64];
  v5 = v3;
  v6[0] = v8;
  *&v6[128] = *(&v16 + 1);
  *&v6[1] = *v7;
  v6[136] = 0;
  sub_1D7260EDC();
  sub_1D6CBDB4C(0);
  sub_1D6CBDCCC();
  sub_1D72617DC();
  v24 = *&v6[80];
  v25 = *&v6[96];
  v26[0] = *&v6[112];
  *(v26 + 9) = *&v6[121];
  v20 = *&v6[16];
  v21 = *&v6[32];
  v22 = *&v6[48];
  v23 = *&v6[64];
  v18 = v5;
  v19 = *v6;
  return sub_1D6CBDE90(&v18, sub_1D6CBDB4C);
}

uint64_t sub_1D6CBD364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D726125C();
  LOBYTE(v21[0]) = 1;
  sub_1D6CBD574(a1, v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v28[3];
  v6 = 0;
  KeyPath = 0;
  v8 = 0;
  if (*(a1 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + 48) == 1)
  {
    v6 = sub_1D72618CC();
    v8 = sub_1D726188C();
    KeyPath = swift_getKeyPath();
  }

  v13 = v5;
  v14[0] = 1;
  *&v14[1] = *v27;
  *&v14[49] = *&v27[48];
  *&v14[33] = *&v27[32];
  *&v14[17] = *&v27[16];
  *&v14[64] = *&v27[63];
  v15 = v5;
  v16 = *v14;
  v20 = *&v27[63];
  v18 = *&v14[32];
  v19 = *&v14[48];
  v17 = *&v14[16];
  sub_1D6A4AC0C(&v13, v21);
  sub_1D6CBDDF4(v6);
  sub_1D6CBDE44(v6);
  v9 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v9;
  *(a2 + 64) = v19;
  v10 = v20;
  v11 = v16;
  *a2 = v15;
  *(a2 + 16) = v11;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v6;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v8;
  sub_1D6CBDE44(v6);
  v21[0] = v5;
  v21[1] = 0;
  v22 = 1;
  v24 = *&v27[16];
  v25 = *&v27[32];
  *v26 = *&v27[48];
  *&v26[15] = *&v27[63];
  v23 = *v27;
  return sub_1D6CBDE90(v21, sub_1D6A4A6D0);
}

double sub_1D6CBD574@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = MEMORY[0x1E6980E30];
  v4 = MEMORY[0x1E69E6720];
  sub_1D6CBDAE8(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v52 - v7;
  v56 = (a1 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
  v9 = v56[3];
  v59 = v56[2];
  v60 = v9;
  v10 = sub_1D5BF4D9C();

  v55 = v10;
  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1D726163C();
  v17 = *(v16 - 8);
  v53 = *(v17 + 56);
  v54 = v16;
  v52[1] = v17 + 56;
  v53(v8, 1, 1);
  sub_1D726167C();
  sub_1D6CBDEF0(v8, &qword_1EC881178, v3, v4);
  v18 = sub_1D72616DC();
  v20 = v19;
  v22 = v21;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726187C();
  v23 = sub_1D72616BC();
  v25 = v24;
  v57 = v26;
  v28 = v27;

  sub_1D5F26348(v18, v20, v22 & 1);

  v29 = v56[5];
  if (v29)
  {
    v59 = v56[4];
    v60 = v29;

    v30 = sub_1D726171C();
    v32 = v31;
    v34 = v33;
    (v53)(v8, 1, 1, v54);
    sub_1D726167C();
    sub_1D6CBDEF0(v8, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v35 = sub_1D72616DC();
    v55 = v23;
    v56 = v28;
    v37 = v36;
    v39 = v38;
    v54 = v25;

    sub_1D5F26348(v30, v32, v34 & 1);

    sub_1D726188C();
    v40 = sub_1D72616BC();
    v42 = v41;
    LOBYTE(v32) = v43;
    v45 = v44;

    v46 = v39 & 1;
    v47 = v37;
    v23 = v55;
    v28 = v56;
    sub_1D5F26348(v35, v47, v46);
    v25 = v54;

    v48 = v32 & 1;
    sub_1D5F26358(v40, v42, v32 & 1);
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v48 = 0;
    v45 = 0;
  }

  v49 = v57 & 1;
  sub_1D5F26358(v23, v25, v57 & 1);

  sub_1D6A4AD98(v40, v42, v48, v45);
  sub_1D68C4240(v40, v42, v48, v45);
  LOBYTE(v59) = v49;
  v50 = v58;
  *v58 = v23;
  v50[1] = v25;
  *(v50 + 16) = v49;
  v50[3] = v28;
  v50[4] = v40;
  v50[5] = v42;
  v50[6] = v48;
  v50[7] = v45;
  sub_1D68C4240(v40, v42, v48, v45);
  sub_1D5F26348(v23, v25, v49);

  return result;
}

uint64_t sub_1D6CBD9AC(uint64_t a1, uint64_t a2)
{
  sub_1D6CBDAE8(0, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6CBDA40(uint64_t a1)
{
  if (!qword_1EC894BD8)
  {
    sub_1D6A4A6D0(255);
    sub_1D6CBDAE8(255, &qword_1EC894BE0, sub_1D5F257F0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC894BD8);
    }
  }
}

void sub_1D6CBDAE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6CBDB4C(uint64_t a1)
{
  if (!qword_1EC894BE8)
  {
    sub_1D6CBDBB4(255);
    sub_1D5F25A44(255);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC894BE8);
    }
  }
}

void sub_1D6CBDBB4(uint64_t a1)
{
  if (!qword_1EC894BF0)
  {
    sub_1D6CBDAE8(255, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
    sub_1D6CBDC68(&qword_1EC894BF8, &qword_1EC894BD0, sub_1D6CBDA40);
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC894BF0);
    }
  }
}

uint64_t sub_1D6CBDC68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBDAE8(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBDCCC()
{
  result = qword_1EC894C00;
  if (!qword_1EC894C00)
  {
    sub_1D6CBDB4C(255);
    sub_1D6CBDDAC(&qword_1EC894C08, sub_1D6CBDBB4, MEMORY[0x1E69817F8]);
    sub_1D6CBDDAC(&qword_1EC881138, sub_1D5F25A44, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C00);
  }

  return result;
}

uint64_t sub_1D6CBDDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D6CBDDF4(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1D6CBDE44(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D6CBDE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CBDEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6CBDAE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s8NewsFeed20FormatProcessedColorV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v6 = *a2;
  v7 = v3;

  LOBYTE(v3) = static FormatColor.== infix(_:_:)(&v7, &v6);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6344A00(v2, v4);
}

unint64_t sub_1D6CBE028(uint64_t a1)
{
  result = sub_1D667DF98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBE050(void *a1)
{
  a1[1] = sub_1D667E21C();
  a1[2] = sub_1D67002C4();
  result = sub_1D6CBE088();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBE088()
{
  result = qword_1EC894C10;
  if (!qword_1EC894C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C10);
  }

  return result;
}

unint64_t FormatFlexBoxNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

double FormatFlexBoxNode.layout.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t FormatFlexBoxNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatFlexBoxNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatFlexBoxNode.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

double FormatFlexBoxNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatFlexBoxNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double FormatFlexBoxNode.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

unint64_t FormatFlexBoxNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatFlexBoxNode.resize.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

double FormatFlexBoxNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double sub_1D6CBE5E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;

  return result;
}

double FormatFlexBoxNode.layout.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t FormatFlexBoxNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

double FormatFlexBoxNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;

  return result;
}

uint64_t FormatFlexBoxNode.__allocating_init(identifier:name:description:size:resize:adjustments:layout:flex:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v19 = *a7;
  v20 = *a8;
  v23 = a8[1];
  v26 = *(a11 + 5);
  v27 = *(a11 + 4);
  *(v18 + 48) = 0u;
  *(v18 + 32) = 0u;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  swift_beginAccess();
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;

  swift_beginAccess();
  *(v18 + 64) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = v23;
  swift_beginAccess();
  *(v18 + 88) = a9;
  swift_beginAccess();
  *(v18 + 96) = a10;
  v21 = *a11;
  *(v18 + 120) = a11[1];
  *(v18 + 104) = v21;
  *(v18 + 136) = v27;
  *(v18 + 144) = v26;
  swift_beginAccess();
  *(v18 + 152) = a12;
  return v18;
}

uint64_t FormatFlexBoxNode.init(identifier:name:description:size:resize:adjustments:layout:flex:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v22 = *a8;
  v23 = *a7;
  v21 = a8[1];
  v24 = *(a11 + 5);
  v25 = *(a11 + 4);
  *(v12 + 48) = 0u;
  *(v12 + 32) = 0u;
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  swift_beginAccess();
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;

  swift_beginAccess();
  *(v12 + 64) = v23;
  *(v12 + 72) = v22;
  *(v12 + 80) = v21;
  swift_beginAccess();
  *(v12 + 88) = a9;
  swift_beginAccess();
  *(v12 + 96) = a10;
  v19 = *a11;
  *(v12 + 120) = a11[1];
  *(v12 + 104) = v19;
  *(v12 + 136) = v25;
  *(v12 + 144) = v24;
  swift_beginAccess();
  *(v12 + 152) = a12;
  return v12;
}

uint64_t FormatFlexBoxNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 64));

  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return v0;
}

uint64_t FormatFlexBoxNode.__deallocating_deinit()
{
  FormatFlexBoxNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CBEB6C(uint64_t a1)
{
  result = sub_1D6CBED00(&qword_1EC894C18, &protocol conformance descriptor for FormatFlexBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CBEBD4(void *a1)
{
  a1[1] = sub_1D6CBED00(&qword_1EDF2F6B8, &protocol conformance descriptor for FormatFlexBoxNode);
  a1[2] = sub_1D6CBED00(&qword_1EDF10C58, &protocol conformance descriptor for FormatFlexBoxNode);
  result = sub_1D6CBED00(&qword_1EC894C20, &protocol conformance descriptor for FormatFlexBoxNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CBEC60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6688B80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CBECBC(uint64_t a1)
{
  result = sub_1D6CBED00(&qword_1EC894C28, &protocol conformance descriptor for FormatFlexBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CBED00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFlexBoxNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6CBED40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  sub_1D7259F7C();
  v12 = sub_1D6B14744(a4, a5);
  v13 = *(a2 + 152);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 32);
      v23[1] = *(v13 + v16 + 16);
      v23[2] = v18;
      v23[0] = v17;
      v19 = *(v13 + v16 + 48);
      v20 = *(v13 + v16 + 64);
      v21 = *(v13 + v16 + 80);
      v24 = *(v13 + v16 + 96);
      v23[4] = v20;
      v23[5] = v21;
      v23[3] = v19;
      sub_1D5C5C4CC(v23, &v22);
      sub_1D6FC0A94(a1, v12, a6);
      if (v6)
      {

        sub_1D5C5C540(v23);
        return;
      }

      ++v15;
      sub_1D5C5C540(v23);
      v16 += 104;
      if (v14 == v15)
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

NewsFeed::FormatContentSubgroupSection __swiftcall FormatContentSubgroupSection.init(identifier:contents:)(Swift::String identifier, Swift::OpaquePointer contents)
{
  *v2 = identifier;
  *(v2 + 16) = contents;
  result.identifier = identifier;
  result.contents = contents;
  return result;
}

uint64_t FormatContentSubgroupSection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t static FormatContentSubgroupSection.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633BEDC(v2, v3);
}

uint64_t sub_1D6CBEFA0(uint64_t a1)
{
  v2 = sub_1D6CBF1F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CBEFDC(uint64_t a1)
{
  v2 = sub_1D6CBF1F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupSection.encode(to:)(void *a1)
{
  sub_1D6CBF4F0(0, &qword_1EC894C30, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v14[0] = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6CBF1F4();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1D6CBF248();
    sub_1D6CBF554(&qword_1EDF04FA0, sub_1D5B5C460, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6CBF1F4()
{
  result = qword_1EC894C38;
  if (!qword_1EC894C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C38);
  }

  return result;
}

void sub_1D6CBF248()
{
  if (!qword_1EDF3C908)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C908);
    }
  }
}

void FormatContentSubgroupSection.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6CBF4F0(0, &qword_1EC894C40, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBF1F4();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    sub_1D6CBF248();
    v17 = 1;
    sub_1D6CBF554(&qword_1EDF3C900, sub_1D5B5C40C, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v15 = v16[1];
    *a2 = v14;
    a2[1] = v13;
    a2[2] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D6CBF4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CBF1F4();
    v7 = a3(a1, &type metadata for FormatContentSubgroupSection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6CBF554(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBF248();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBF5C0(void *a1)
{
  a1[1] = sub_1D5B5C8E4();
  a1[2] = sub_1D5B59FD8();
  result = sub_1D6CBF5F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBF5F8()
{
  result = qword_1EC894C48;
  if (!qword_1EC894C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C48);
  }

  return result;
}

unint64_t sub_1D6CBF67C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633BEDC(v2, v3);
}

unint64_t sub_1D6CBF714()
{
  result = qword_1EC894C50;
  if (!qword_1EC894C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C50);
  }

  return result;
}

unint64_t sub_1D6CBF76C()
{
  result = qword_1EC894C58;
  if (!qword_1EC894C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C58);
  }

  return result;
}

unint64_t sub_1D6CBF7C4()
{
  result = qword_1EC894C60;
  if (!qword_1EC894C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C60);
  }

  return result;
}

id sub_1D6CBF818(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  v5 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_editor] = a1;
  v6 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerPaneViewController(0));
  v7 = swift_retain_n();
  *&v2[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_debuggerPaneViewController] = sub_1D71A9648(v7);
  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v10 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = a1;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v12;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = v9;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for DebugFormatInspectorPaneViewController();

  v13 = v9;
  v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v15 = sub_1D726203C();
  [v14 setTitle_];

  return v14;
}

void sub_1D6CBFB40()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();
  }

  else
  {
    __break(1u);
  }
}

double sub_1D6CBFD1C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - v7;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4EB8(a2, v12, sub_1D6CC4A78);
  v17 = type metadata accessor for FormatDebuggerContext(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_1D6CC4B10(v12, sub_1D6CC4A78);
    v18 = type metadata accessor for FormatDebuggerCallStackFrame(0);
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  else
  {
    (*(v5 + 16))(v8, &v12[*(v17 + 24)], v4);
    sub_1D6CC4B10(v12, type metadata accessor for FormatDebuggerContext);
    sub_1D725B8AC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1D6CBFFE0(a2, v16);
  sub_1D6CC4B10(v16, sub_1D6CC4A44);
  return result;
}

void sub_1D6CBFFE0(uint64_t a1, uint64_t a2)
{
  v544 = a2;
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v521 = &v488 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v503 = &v488 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v497 = &v488 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v502 = &v488 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v488 - v18;
  v20 = type metadata accessor for DebugFormatCacheFile(0);
  v518 = *(v20 - 8);
  v519 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v501 = &v488 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v498 = &v488 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v522 = &v488 - v28;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v551 = &v488 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v550 = type metadata accessor for FormatOption(0);
  v506 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550, v32);
  v539 = (&v488 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v530 = &v488 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v529 = &v488 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v538 = &v488 - v42;
  v43 = MEMORY[0x1E69D6AD8];
  sub_1D6CC4AAC(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
  v515 = v44;
  v505 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v504 = &v488 - v46;
  sub_1D6CC4B70(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v514 = &v488 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FormatDebuggerWorkspaceStackFrame(0);
  v512 = *(v50 - 8);
  v513 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v516 = &v488 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4AAC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, v43);
  v520 = v53;
  v511 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v510 = &v488 - v55;
  v558 = type metadata accessor for FormatInspectionItem(0);
  v531 = *(v558 - 8);
  MEMORY[0x1EEE9AC00](v558, v56);
  v545 = &v488 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v549 = &v488 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v548 = (&v488 - v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  v535 = &v488 - v66;
  sub_1D6CC4AAC(0, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v556 = &v488 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v536 = &v488 - v72;
  v554 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v554, v73);
  *&v553 = &v488 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4BA4(0);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v540 = &v488 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8(0);
  v555 = v78;
  v557 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v79);
  v546 = &v488 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v542 = &v488 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v547 = &v488 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v552 = (&v488 - v89);
  sub_1D5EB9994(0);
  v523 = *(v90 - 8);
  v524 = v90;
  MEMORY[0x1EEE9AC00](v90, v91);
  v533 = &v488 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  MEMORY[0x1EEE9AC00](v526, v93);
  v508 = &v488 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v96);
  v517 = &v488 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v543 = &v488 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v541 = &v488 - v103;
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v500 = &v488 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107, v108);
  v525 = &v488 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = &v488 - v112;
  v114 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v115 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v116);
  v499 = (&v488 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v118, v119);
  v527 = (&v488 - v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v534 = (&v488 - v123);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v124 - 8, v125);
  v127 = &v488 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for FormatDebuggerContext(0);
  v129 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v130);
  v132 = &v488 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4EB8(a1, v127, sub_1D6CC4A78);
  v133 = *(v129 + 48);
  v509 = v128;
  if (v133(v127, 1, v128) == 1)
  {
    v134 = sub_1D6CC4A78;
    v135 = v127;
LABEL_5:
    sub_1D6CC4B10(v135, v134);
    v137 = v528;
    v138 = v525;
    sub_1D6A6F8CC(MEMORY[0x1E69E7CC0]);
    (*(v115 + 56))(v138, 1, 1, v114);
    v139 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
    swift_beginAccess();
    sub_1D6CC4BD8(v138, v137 + v139);
    swift_endAccess();
    sub_1D71A93F8();
    return;
  }

  sub_1D6CC4E30(v127, v132, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4EB8(v544, v113, sub_1D6CC4A44);
  v136 = *(v115 + 48);
  if (v136(v113, 1, v114) == 1)
  {
    sub_1D6CC4B10(v113, sub_1D6CC4A44);
    v134 = type metadata accessor for FormatDebuggerContext;
    v135 = v132;
    goto LABEL_5;
  }

  v489 = v136;
  v490 = v115 + 48;
  v493 = v19;
  sub_1D6CC4E30(v113, v534, type metadata accessor for FormatDebuggerCallStackFrame);
  v140 = *(v114 + 24);
  v141 = *(sub_1D68B2DA8() + 40);

  v507 = v140;
  v142 = sub_1D68B2DA8();
  v143 = *(*(v142 + 40) + 16);
  swift_beginAccess();
  v144 = *(*(v143 + 16) + 16);
  v494 = v115;
  v495 = v114;
  if (v144)
  {
    *&v610 = *(v142 + 56);

    sub_1D6F622E0(v145);
    sub_1D5B886D0(v146);

    v544 = v610;
  }

  else
  {
    v544 = sub_1D6E46E28();
  }

  v147 = v541;
  v148 = *(v132 + 4);
  v149 = MEMORY[0x1E69E7CC0];
  if (v148 < 4)
  {
    goto LABEL_12;
  }

  sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v150 = (*(v557 + 80) + 32) & ~*(v557 + 80);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1D7273AE0;
  sub_1D6CC4E20(v148);
  v152 = v148;
  sub_1D712ED68(0x726F727245, 0xE500000000000000, v148, v151 + v150);
  (*(v531 + 56))(v151 + v150, 0, 1, v558);
  sub_1D6795150(0x726F727245, 0xE500000000000000, 0, 0, v151, v615);
  swift_setDeallocating();
  sub_1D6CC4B10(v151 + v150, sub_1D5EA74B8);
  swift_deallocClassInstance();
  v153 = swift_allocObject();
  v154 = v615[1];
  *(v153 + 16) = v615[0];
  *(v153 + 32) = v154;
  *(v153 + 48) = v616;
  v149 = sub_1D699039C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v156 = *(v149 + 2);
  v155 = *(v149 + 3);
  v157 = v156 + 1;
  if (v156 >= v155 >> 1)
  {
    goto LABEL_167;
  }

  while (1)
  {
    sub_1D6CC4E10(v148);
    *(v149 + 2) = v157;
    v158 = &v149[40 * v156];
    *(v158 + 4) = v153;
    *(v158 + 40) = v610;
    *(v158 + 7) = &type metadata for FormatInspectionGroup;
    *(v158 + 8) = &off_1F518B2C0;
LABEL_12:
    v541 = v149;
    v159 = v534;
    sub_1D6CC4EB8(v534 + v507, v147, type metadata accessor for FormatDebuggerCallStackFrameContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v496 = v132;
    v537 = v141;
    v491 = v148;
    if (EnumCaseMultiPayload == 1)
    {
      *&v532 = *v147;
      sub_1D6324784(0);
      (*(v523 + 32))(v533, &v147[*(v161 + 48)], v524);
      sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v162 = *(v557 + 72);
      v163 = (*(v557 + 80) + 32) & ~*(v557 + 80);
      v164 = swift_allocObject();
      v492 = v164;
      *(v164 + 16) = xmmword_1D7274590;
      v165 = v164 + v163;
      v166 = sub_1D725A55C();
      v167 = v558;
      v168 = *(v558 + 24);
      *(v165 + v168) = v166;
      v169 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v169 - 8) + 56))(v165 + v168, 0, 1, v169);
      *v165 = xmmword_1D72E27B0;
      *(v165 + 16) = 0;
      *(v165 + 24) = 0;
      v170 = v165 + *(v167 + 28);
      *v170 = 0;
      *(v170 + 8) = 0;
      *(v170 + 16) = -1;
      v171 = *(v531 + 56);
      v171(v165, 0, 1, v167);
      sub_1D725A55C();
      sub_1D725A43C();
      v173 = v172;
      v175 = v174;

      sub_1D7124550(0x6E6F697469736F50, 0xE800000000000000, v173, v175, 0, (v165 + v162));
      v171(v165 + v162, 0, 1, v167);
      sub_1D725A55C();
      sub_1D725A3BC();
      v177 = v176;
      v179 = v178;

      v180 = sub_1D69FA44C(v177, v179);
      v182 = sub_1D711F844(0x412064656C6C6946, 0xEB00000000616572, v180, v181, (v165 + 2 * v162));
      (v171)(v165 + 2 * v162, 0, 1, v167, v182);
      v162 *= 3;
      sub_1D725A55C();
      sub_1D725A3FC();
      v2 = v183;
      v185 = v184;
      v187 = v186;
      v189 = v188;

      v190 = sub_1D707FF40(v2, v185, v187, v189);
      v192 = sub_1D711F844(0xD000000000000010, 0x80000001D73F06F0, v190, v191, (v165 + v162));
      (v171)(v165 + v162, 0, 1, v167, v192);
      sub_1D6795150(0x74756F79614CLL, 0xE600000000000000, 0, 0, v492, v617);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v193 = swift_allocObject();
      v194 = v617[1];
      *(v193 + 16) = v617[0];
      *(v193 + 32) = v194;
      *(v193 + 48) = v618;
      v195 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v541 : sub_1D699039C(0, *(v541 + 2) + 1, 1, v541);
      v197 = *(v195 + 2);
      v196 = *(v195 + 3);
      v141 = v537;
      v198 = v543;
      v541 = v197 >= v196 >> 1 ? sub_1D699039C((v196 > 1), v197 + 1, 1, v195) : v195;

      (*(v523 + 8))(v533, v524);
      v199 = v541;
      *(v541 + 2) = v197 + 1;
      v200 = &v199[40 * v197];
      *(v200 + 4) = v193;
      *(v200 + 40) = v610;
      *(v200 + 7) = &type metadata for FormatInspectionGroup;
      *(v200 + 8) = &off_1F518B2C0;
      v159 = v534;
    }

    else
    {
      sub_1D6CC4B10(v147, type metadata accessor for FormatDebuggerCallStackFrameContext);
      v167 = v558;
      v198 = v543;
    }

    sub_1D6CC4EB8(v159 + v507, v198, type metadata accessor for FormatDebuggerCallStackFrameContext);
    v201 = swift_getEnumCaseMultiPayload();
    v202 = *v198;
    if (v201 != 1)
    {
      break;
    }

    sub_1D6324784(0);
    v204 = *(v203 + 48);
    v156 = *(v202 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v157 = *(v202 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

    (*(v523 + 8))(&v198[v204], v524);
    v153 = *(v157 + 16);
    if (!v153)
    {
      goto LABEL_24;
    }

LABEL_21:
    v148 = sub_1D5E23F34(v153, 0);
    v132 = sub_1D5E25814(&v610, (v148 + 4), v153, v157);
    v147 = *(&v610 + 1);
    v149 = v610;
    v543 = *(&v611 + 1);
    v533 = *&v612[0];

    sub_1D5B87E38(v149);
    if (v132 == v153)
    {

      v167 = v558;
      goto LABEL_25;
    }

    __break(1u);
LABEL_167:
    v149 = sub_1D699039C((v155 > 1), v157, 1, v149);
  }

  v156 = *(v202 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v157 = *(v202 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);

  v153 = *(v157 + 16);
  if (v153)
  {
    goto LABEL_21;
  }

LABEL_24:

LABEL_25:
  sub_1D5B7EFE8();
  v205 = sub_1D72626EC();

  v206 = *(v205 + 16);
  if (v206)
  {
    v492 = v205;
    v207 = v205 + 32;
    v533 = (v531 + 56);
    v543 = (v557 + 56);
    v208 = (v557 + 48);
    v209 = MEMORY[0x1E69E7CC0];
    v532 = xmmword_1D72E27B0;
    v210 = v540;
    do
    {
      sub_1D5B68374(v207, &v610);
      v211 = *(&v611 + 1);
      v212 = *&v612[0];
      __swift_project_boxed_opaque_existential_1(&v610, *(&v611 + 1));
      v213 = v553;
      (*(v212 + 8))(v211, v212);
      v214 = swift_getEnumCaseMultiPayload();
      sub_1D6CC4B10(v213, type metadata accessor for FeedGroupItem);
      if (v214 == 2)
      {
        v215 = 1;
        v167 = v558;
      }

      else
      {
        v216 = *(&v611 + 1);
        v217 = *&v612[0];
        __swift_project_boxed_opaque_existential_1(&v610, *(&v611 + 1));
        v218 = v536;
        (*(v217 + 8))(v216, v217);
        v219 = type metadata accessor for FormatInspectionFeedGroupItem(0);
        v220 = *(v219 - 8);
        (*(v220 + 56))(v218, 0, 1, v219);
        v221 = v556;
        sub_1D6CC4C3C(v218, v556);
        v222 = (*(v220 + 48))(v221, 1, v219);
        v167 = v558;
        v223 = *(v558 + 24);
        if (v222 == 1)
        {
          v224 = type metadata accessor for FormatInspectionItem.Value(0);
          v225 = v535;
          (*(*(v224 - 8) + 56))(&v535[v223], 1, 1, v224);
          *v225 = v532;
          *(v225 + 16) = 0;
          *(v225 + 24) = 0;
          v226 = v225 + *(v167 + 28);
          *v226 = 0;
          *(v226 + 8) = 0;
          *(v226 + 16) = -1;
        }

        else
        {
          v227 = v535;
          sub_1D6CC4EB8(v556, &v535[v223], type metadata accessor for FormatInspectionFeedGroupItem);
          v228 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v229 = *(*(v228 - 8) + 56);
          v230 = v228;
          v225 = v227;
          v229(&v227[v223], 0, 1, v230);
          *v227 = v532;
          *(v227 + 2) = 0;
          *(v227 + 3) = 0;
          v231 = &v227[*(v167 + 28)];
          *v231 = 0;
          *(v231 + 1) = 0;
          v231[16] = -1;
          sub_1D6CC4B10(v556, type metadata accessor for FormatInspectionFeedGroupItem);
        }

        v210 = v540;
        sub_1D6CC4E30(v225, v540, type metadata accessor for FormatInspectionItem);
        (*v533)(v210, 0, 1, v167);
        v215 = 0;
      }

      v232 = v555;
      (*v543)(v210, v215, 1, v555);
      __swift_destroy_boxed_opaque_existential_1(&v610);
      if ((*v208)(v210, 1, v232) == 1)
      {
        sub_1D6CC4B10(v210, sub_1D6CC4BA4);
      }

      else
      {
        sub_1D6CC4E30(v210, v552, sub_1D5EA74B8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_1D698C0A8(0, v209[2] + 1, 1, v209);
        }

        v234 = v209[2];
        v233 = v209[3];
        if (v234 >= v233 >> 1)
        {
          v209 = sub_1D698C0A8((v233 > 1), v234 + 1, 1, v209);
        }

        v209[2] = v234 + 1;
        sub_1D6CC4E30(v552, v209 + ((*(v557 + 80) + 32) & ~*(v557 + 80)) + *(v557 + 72) * v234, sub_1D5EA74B8);
      }

      v207 += 40;
      --v206;
    }

    while (v206);

    v141 = v537;
  }

  else
  {

    v209 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x69422070756F7247, 0xEE0073676E69646ELL, 0, 0, v209, v619);

  v235 = swift_allocObject();
  v236 = v619[1];
  v235[1] = v619[0];
  v235[2] = v236;
  *(v235 + 6) = v620;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_165;
  }

  for (i = v541; ; i = sub_1D699039C(0, *(v541 + 2) + 1, 1, v541))
  {
    v239 = *(i + 2);
    v238 = *(i + 3);
    if (v239 >= v238 >> 1)
    {
      i = sub_1D699039C((v238 > 1), v239 + 1, 1, i);
    }

    *(i + 2) = v239 + 1;
    v541 = i;
    v240 = &i[40 * v239];
    *(v240 + 4) = v235;
    *(v240 + 40) = v610;
    *(v240 + 7) = &type metadata for FormatInspectionGroup;
    *(v240 + 8) = &off_1F518B2C0;
    v241 = v517;
    sub_1D6CC4EB8(v534 + v507, v517, type metadata accessor for FormatDebuggerCallStackFrameContext);
    v242 = swift_getEnumCaseMultiPayload();
    v243 = *v241;
    if (v242 == 1)
    {
      sub_1D6324784(0);
      v245 = *(v244 + 48);
      v247 = *(v243 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
      v246 = *(v243 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

      (*(v523 + 8))(&v241[v245], v524);
    }

    else
    {
      v247 = *(v243 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
      v246 = *(v243 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);
    }

    v248 = *(v247 + 16);
    if (!v248)
    {
      break;
    }

    v552 = v246;
    *&v581[0] = MEMORY[0x1E69E7CC0];
    v554 = v248;
    sub_1D69972A4(0, v248, 0);
    v249 = 0;
    v235 = *&v581[0];
    v556 = *(v247 + 16);
    v250 = v247 + 32;
    v141 = &v610;
    v251 = (v531 + 56);
    v553 = xmmword_1D72E27B0;
    while (v556 != v249)
    {
      if (v249 >= *(v247 + 16))
      {
        goto LABEL_163;
      }

      sub_1D5B68374(v250, &v583);
      sub_1D5B68374(&v583, &v610);
      *(v612 + 8) = 0u;
      *(&v612[1] + 8) = 0u;
      *(&v612[2] + 8) = 0u;
      BYTE8(v612[3]) = 1;
      __swift_destroy_boxed_opaque_existential_1(&v583);
      v598 = v611;
      *(v601 + 9) = *(&v612[2] + 9);
      v600 = v612[1];
      v601[0] = v612[2];
      v599 = v612[0];
      v597 = v610;
      v252 = *(v167 + 24);
      if (*(&v611 + 1))
      {
        v253 = v548;
        sub_1D6725818(&v597, v548 + v252);
        v254 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        v255 = *(*(v254 - 8) + 56);
        v256 = v254;
        v167 = v558;
        v255(v253 + v252, 0, 1, v256);
        *v253 = v553;
        *(v253 + 16) = 0;
        *(v253 + 24) = 0;
        v257 = v253 + *(v167 + 28);
        *v257 = 0;
        *(v257 + 8) = 0;
        *(v257 + 16) = -1;
        sub_1D6725874(&v597);
      }

      else
      {
        v258 = type metadata accessor for FormatInspectionItem.Value(0);
        v253 = v548;
        (*(*(v258 - 8) + 56))(v548 + v252, 1, 1, v258);
        *v253 = v553;
        *(v253 + 16) = 0;
        *(v253 + 24) = 0;
        v259 = v253 + *(v167 + 28);
        *v259 = 0;
        *(v259 + 8) = 0;
        *(v259 + 16) = -1;
      }

      v260 = v547;
      sub_1D6CC4E30(v253, v547, type metadata accessor for FormatInspectionItem);
      (*v251)(v260, 0, 1, v167);
      *&v581[0] = v235;
      v262 = *(v235 + 2);
      v261 = *(v235 + 3);
      if (v262 >= v261 >> 1)
      {
        sub_1D69972A4((v261 > 1), v262 + 1, 1);
        v235 = *&v581[0];
      }

      ++v249;
      *(v235 + 2) = v262 + 1;
      sub_1D6CC4E30(v260, v235 + ((*(v557 + 80) + 32) & ~*(v557 + 80)) + *(v557 + 72) * v262, sub_1D5EA74B8);
      v250 += 40;
      v167 = v558;
      if (v554 == v249)
      {

        v141 = v537;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    ;
  }

  v235 = MEMORY[0x1E69E7CC0];
LABEL_62:
  sub_1D6795150(0x6E6942206D657449, 0xED000073676E6964, 0, 0, v235, v621);

  v263 = swift_allocObject();
  *(v263 + 48) = v622;
  v264 = v621[1];
  *(v263 + 16) = v621[0];
  *(v263 + 32) = v264;
  v265 = v541;
  v267 = *(v541 + 2);
  v266 = *(v541 + 3);
  v268 = v496;
  v269 = v528;
  v270 = v509;
  if (v267 >= v266 >> 1)
  {
    v483 = v263;
    v265 = sub_1D699039C((v266 > 1), v267 + 1, 1, v541);
    v263 = v483;
  }

  *(v265 + 2) = v267 + 1;
  v271 = &v265[40 * v267];
  *(v271 + 4) = v263;
  *(v271 + 40) = v610;
  *(v271 + 7) = &type metadata for FormatInspectionGroup;
  *(v271 + 8) = &off_1F518B2C0;
  v272 = *(v511 + 16);
  v540 = *(v270 + 24);
  v273 = v265;
  v272(v510, &v268[v540], v520);
  v274 = sub_1D6B98C0C();
  MEMORY[0x1EEE9AC00](v274, v275);
  *(&v488 - 4) = v534;
  *(&v488 - 3) = v269;
  *(&v488 - 2) = v268;
  sub_1D5ECD6F8(sub_1D6CC4CD0, (&v488 - 6), v274);
  v277 = v276;
  v543 = 0;

  sub_1D6795150(0x617453206C6C6143, 0xEA00000000006B63, 0, 0, v277, v623);

  v278 = swift_allocObject();
  v279 = v273;
  *(v278 + 48) = v624;
  v280 = v623[1];
  *(v278 + 16) = v623[0];
  *(v278 + 32) = v280;
  v282 = *(v273 + 2);
  v281 = *(v273 + 3);
  if (v282 >= v281 >> 1)
  {
    v484 = v278;
    v279 = sub_1D699039C((v281 > 1), v282 + 1, 1, v273);
    v278 = v484;
  }

  v284 = v514;
  v283 = v515;
  *(v279 + 2) = v282 + 1;
  v285 = &v279[40 * v282];
  *(v285 + 4) = v278;
  *(v285 + 40) = v610;
  *(v285 + 7) = &type metadata for FormatInspectionGroup;
  *(v285 + 8) = &off_1F518B2C0;
  v286 = *(v270 + 28);
  v287 = v279;
  sub_1D725B8AC();
  if ((*(v512 + 48))(v284, 1, v513) == 1)
  {
    v541 = v287;
    sub_1D6CC4B10(v284, sub_1D6CC4B70);
    v288 = v542;
  }

  else
  {
    v289 = v284;
    v290 = v516;
    sub_1D6CC4E30(v289, v516, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
    (*(v505 + 16))(v504, &v268[v286], v283);
    v291 = sub_1D6B98F1C();
    MEMORY[0x1EEE9AC00](v291, v292);
    *(&v488 - 2) = v290;
    v293 = v543;
    sub_1D5ECD724(sub_1D6CC4E98, (&v488 - 4), v291);
    v295 = v294;
    v543 = v293;

    sub_1D6795150(0x636170736B726F57, 0xEF6B636174532065, 0, 0, v295, v625);

    v296 = swift_allocObject();
    *(v296 + 48) = v626;
    v297 = v625[1];
    *(v296 + 16) = v625[0];
    *(v296 + 32) = v297;
    v299 = *(v287 + 2);
    v298 = *(v287 + 3);
    v300 = v287;
    if (v299 >= v298 >> 1)
    {
      v487 = v296;
      v300 = sub_1D699039C((v298 > 1), v299 + 1, 1, v287);
      v296 = v487;
    }

    v288 = v542;
    *(v300 + 2) = v299 + 1;
    v541 = v300;
    v301 = &v300[40 * v299];
    *(v301 + 4) = v296;
    *(v301 + 40) = v610;
    *(v301 + 7) = &type metadata for FormatInspectionGroup;
    *(v301 + 8) = &off_1F518B2C0;
    sub_1D6CC4B10(v516, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  }

  v547 = *(v269 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_editor);

  sub_1D725972C();

  v302 = v610;
  v303 = *(v610 + 16);
  if (v303)
  {
    *&v597 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v303, 0);
    v304 = v597;
    v548 = (v506 + 56);
    v552 = (v531 + 56);
    v536 = v302;
    v305 = (v302 + 40);
    while (1)
    {
      v306 = *(v305 - 1);
      v307 = *v305;
      v308 = *(v141 + 2);
      swift_beginAccess();
      v309 = *(*(v308 + 16) + 16);

      v556 = v304;
      if (v309 && (sub_1D5B69D90(v306, v307), (v310 & 1) != 0))
      {
        *&v553 = v306;
        v554 = v303;
        swift_endAccess();
        v311 = v530;
        sub_1D5D25108(v530);
        v312 = v311;
        v313 = v529;
        sub_1D6CC4E30(v312, v529, type metadata accessor for FormatOption);
        v314 = v313;
        v315 = v551;
        sub_1D6CC4E30(v314, v551, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v141 + 3) + 16) || (sub_1D5B69D90(v306, v307), (v316 & 1) == 0))
        {
          swift_endAccess();
          v327 = v551;
          (*v548)(v551, 1, 1, v550);
          sub_1D6CC4B10(v327, sub_1D5E04C00);
          v325 = v558;
          v328 = *(v558 + 24);
          v329 = type metadata accessor for FormatInspectionItem.Value(0);
          v326 = v306;
          v330 = v549;
          (*(*(v329 - 8) + 56))(&v549[v328], 1, 1, v329);
          *v330 = v326;
          *(v330 + 1) = v307;
          *(v330 + 2) = 0;
          *(v330 + 3) = 0;
          v331 = &v330[*(v325 + 28)];
          *v331 = 0;
          *(v331 + 1) = 0;
          v331[16] = -1;
          sub_1D6CC4CF4(&v330[v328], v288 + *(v325 + 24));
          swift_bridgeObjectRetain_n();
          sub_1D6CC4B10(v330, type metadata accessor for FormatInspectionItem);
          *v288 = v326;
          v288[1] = v307;
          v288[2] = 0;
          v288[3] = 0;
          goto LABEL_81;
        }

        *&v553 = v306;
        v554 = v303;
        swift_endAccess();
        v315 = v551;
        sub_1D5D25108(v551);
      }

      (*v548)(v315, 0, 1, v550);
      v317 = v315;
      v318 = v538;
      sub_1D6CC4E30(v317, v538, type metadata accessor for FormatOption);
      v319 = v539;
      sub_1D6CC4EB8(v318, v539, type metadata accessor for FormatOption);
      v320 = v549;
      sub_1D68B1FA4(v319, v549);
      sub_1D6CC4B10(v318, type metadata accessor for FormatOption);
      v322 = *v320;
      v321 = *(v320 + 1);
      v323 = *(v320 + 2);
      v324 = *(v320 + 3);
      v325 = v558;
      v288 = v542;
      sub_1D6CC4CF4(&v320[*(v558 + 24)], &v542[*(v558 + 24)]);

      sub_1D6CC4B10(v320, type metadata accessor for FormatInspectionItem);
      *v288 = v322;
      v288[1] = v321;
      v288[2] = v323;
      v288[3] = v324;
      v141 = v537;
      v303 = v554;
      v326 = v553;
LABEL_81:
      v332 = v288 + *(v325 + 28);
      *v332 = v326;
      *(v332 + 1) = v307;
      v332[16] = 0;
      (*v552)(v288, 0, 1, v325);
      v304 = v556;
      *&v597 = v556;
      v334 = *(v556 + 16);
      v333 = *(v556 + 24);
      if (v334 >= v333 >> 1)
      {
        sub_1D69972A4((v333 > 1), v334 + 1, 1);
        v304 = v597;
      }

      *(v304 + 16) = v334 + 1;
      sub_1D6CC4E30(v288, v304 + ((*(v557 + 80) + 32) & ~*(v557 + 80)) + *(v557 + 72) * v334, sub_1D5EA74B8);
      v305 += 2;
      if (!--v303)
      {

        goto LABEL_86;
      }
    }
  }

  v304 = MEMORY[0x1E69E7CC0];
LABEL_86:
  sub_1D6795150(0x704F206863746157, 0xED0000736E6F6974, 0, 0, v304, v627);

  v335 = swift_allocObject();
  *(v335 + 48) = v628;
  v336 = v627[1];
  *(v335 + 16) = v627[0];
  *(v335 + 32) = v336;
  v337 = v541;
  v339 = *(v541 + 2);
  v338 = *(v541 + 3);
  v340 = v544;
  if (v339 >= v338 >> 1)
  {
    v485 = v335;
    v337 = sub_1D699039C((v338 > 1), v339 + 1, 1, v541);
    v335 = v485;
  }

  *(v337 + 2) = v339 + 1;
  v541 = v337;
  v341 = &v337[40 * v339];
  *(v341 + 4) = v335;
  *(v341 + 40) = v610;
  *(v341 + 7) = &type metadata for FormatInspectionGroup;
  *(v341 + 8) = &off_1F518B2C0;

  sub_1D725972C();

  v342 = v610;
  v343 = *(v610 + 16);
  if (v343)
  {
    *&v597 = MEMORY[0x1E69E7CC0];
    v235 = &v597;
    sub_1D69972A4(0, v343, 0);
    v344 = 0;
    *&v553 = v342 + 32;
    v345 = v597;
    v167 = v340 + 56;
    v552 = (v531 + 56);
    v556 = v342;
    v554 = v343;
    v141 = v545;
    while (1)
    {
      if (v344 >= *(v342 + 16))
      {
        goto LABEL_164;
      }

      v346 = (v553 + 16 * v344);
      v347 = *v346;
      v348 = v346[1];
      if (*(v340 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v349 = sub_1D7264A5C();
        v350 = -1 << *(v340 + 32);
        v351 = v349 & ~v350;
        if ((*(v167 + ((v351 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v351))
        {
          v352 = ~v350;
          while (1)
          {
            v353 = (*(v340 + 48) + 16 * v351);
            v354 = *v353 == v347 && v353[1] == v348;
            if (v354 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v351 = (v351 + 1) & v352;
            if (((*(v167 + ((v351 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v351) & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          v355 = 1;
          goto LABEL_104;
        }
      }

      else
      {
      }

LABEL_102:
      v355 = 0;
LABEL_104:
      v356 = v558;
      v357 = *(v558 + 24);
      *(v141 + v357) = v355;
      v358 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v358 - 8) + 56))(v141 + v357, 0, 1, v358);
      *v141 = v347;
      *(v141 + 1) = v348;
      *(v141 + 2) = 0;
      *(v141 + 3) = 0;
      v359 = v141 + *(v356 + 28);
      *v359 = 0;
      *(v359 + 1) = 0;
      v359[16] = -1;
      v235 = v546;
      sub_1D6CC4CF4(v141 + v357, &v546[*(v356 + 24)]);
      swift_bridgeObjectRetain_n();
      sub_1D6CC4B10(v141, type metadata accessor for FormatInspectionItem);
      *v235 = v347;
      *(v235 + 1) = v348;
      *(v235 + 2) = 0;
      *(v235 + 3) = 0;
      v360 = v235 + *(v356 + 28);
      *v360 = v347;
      *(v360 + 1) = v348;
      v360[16] = 1;
      (*v552)(v235, 0, 1, v356);
      *&v597 = v345;
      v362 = *(v345 + 16);
      v361 = *(v345 + 24);
      if (v362 >= v361 >> 1)
      {
        sub_1D69972A4((v361 > 1), v362 + 1, 1);
        v235 = v546;
        v345 = v597;
      }

      ++v344;
      *(v345 + 16) = v362 + 1;
      sub_1D6CC4E30(v235, v345 + ((*(v557 + 80) + 32) & ~*(v557 + 80)) + *(v557 + 72) * v362, sub_1D5EA74B8);
      v340 = v544;
      v342 = v556;
      if (v344 == v554)
      {

        goto LABEL_109;
      }
    }
  }

  v345 = MEMORY[0x1E69E7CC0];
LABEL_109:
  sub_1D6795150(0x6553206863746157, 0xEF73726F7463656CLL, 0, 0, v345, v629);

  v363 = swift_allocObject();
  *(v363 + 48) = v630;
  v364 = v629[1];
  *(v363 + 16) = v629[0];
  *(v363 + 32) = v364;
  v365 = v541;
  v367 = *(v541 + 2);
  v366 = *(v541 + 3);
  if (v367 >= v366 >> 1)
  {
    v486 = v363;
    v365 = sub_1D699039C((v366 > 1), v367 + 1, 1, v541);
    v363 = v486;
  }

  *(v365 + 2) = v367 + 1;
  v541 = v365;
  v368 = &v365[40 * v367];
  *(v368 + 4) = v363;
  *(v368 + 40) = v610;
  *(v368 + 7) = &type metadata for FormatInspectionGroup;
  *(v368 + 8) = &off_1F518B2C0;
  sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v369 = *(v557 + 72);
  v370 = (*(v557 + 80) + 32) & ~*(v557 + 80);
  v371 = swift_allocObject();
  *(v371 + 16) = xmmword_1D7279970;
  v556 = v371;
  v372 = v371 + v370;
  v373 = v534;
  *&v610 = *v534;
  v374 = sub_1D6E7C394();
  v375 = v558;
  v376 = (v372 + *(v558 + 24));
  *v376 = v374;
  v376[1] = v377;
  v378 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v378 - 8) + 56))(v376, 0, 1, v378);
  *v372 = xmmword_1D7347DA0;
  *(v372 + 16) = 0;
  *(v372 + 24) = 0;
  v379 = v372 + *(v375 + 28);
  *v379 = 0;
  *(v379 + 8) = 0;
  *(v379 + 16) = -1;
  v381 = v531 + 56;
  v380 = *(v531 + 56);
  v380(v372, 0, 1, v375);
  *&v610 = *v373;
  v382 = sub_1D6E7A824();
  v383 = sub_1D6E7A844(v382);
  v385 = v384;

  v386 = sub_1D711F844(1684957515, 0xE400000000000000, v383, v385, (v372 + v369));
  v557 = v369;
  v531 = v381;
  (v380)(v372 + v369, 0, 1, v375, v386);
  v387 = v508;
  sub_1D6CC4EB8(v373 + v507, v508, type metadata accessor for FormatDebuggerCallStackFrameContext);
  v388 = swift_getEnumCaseMultiPayload();
  v389 = *v387;
  if (v388 == 1)
  {
    sub_1D6324784(0);
    v373 = *(v390 + 48);
    v392 = *(v389 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v391 = *(v389 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);

    (*(v523 + 8))(&v387[v373], v524);
  }

  else
  {
    v392 = *(v389 + 32);
    v391 = *(v389 + 40);
  }

  v393 = v522;
  if (v391)
  {
    v394 = v392;
  }

  else
  {
    v394 = 0;
  }

  v395 = (v372 + 2 * v557);
  sub_1D7120550(1953459283, 0xE400000000000000, v394, v391, v395);
  v380(v395, 0, 1, v558);
  sub_1D6795150(1701080910, 0xE400000000000000, 0, 0, v556, v631);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v396 = swift_allocObject();
  *(v396 + 48) = v632;
  v397 = v631[1];
  *(v396 + 16) = v631[0];
  *(v396 + 32) = v397;
  v398 = v541;
  v400 = *(v541 + 2);
  v399 = *(v541 + 3);
  if (v400 >= v399 >> 1)
  {
    v387 = v396;
    v398 = sub_1D699039C((v399 > 1), v400 + 1, 1, v541);
    v396 = v387;
  }

  v401 = v496;
  v402 = v521;
  v403 = v393;
  *(v398 + 2) = v400 + 1;
  v404 = &v398[40 * v400];
  *(v404 + 4) = v396;
  *(v404 + 40) = v610;
  *(v404 + 7) = &type metadata for FormatInspectionGroup;
  *(v404 + 8) = &off_1F518B2C0;
  v405 = v398;

  v406 = sub_1D7073500(v405);
  v541 = v405;

  sub_1D70732C4(v406);
  v408 = v407;

  v409 = 0;
  v410 = *(v408 + 16);
  v411 = MEMORY[0x1E69E7CC0];
LABEL_120:
  v412 = v408 + 40 * v409;
  while (v410 != v409)
  {
    if (v409 >= *(v408 + 16))
    {
      __break(1u);
LABEL_159:
      sub_1D6CC4E20(v410);

      v482 = MEMORY[0x1E69E7CC0];
      goto LABEL_160;
    }

    ++v409;
    v413 = (v412 + 40);
    v387 = *(v412 + 64);
    v412 += 40;
    if (*(v387 + 2))
    {
      v415 = *(v413 - 1);
      v414 = *v413;
      v417 = v413[1];
      v416 = v413[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v614 = v411;
      v558 = v415;
      v557 = v417;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69993A8(0, *(v411 + 16) + 1, 1);
        v411 = v614;
      }

      v373 = *(v411 + 16);
      v419 = *(v411 + 24);
      if (v373 >= v419 >> 1)
      {
        sub_1D69993A8((v419 > 1), v373 + 1, 1);
        v411 = v614;
      }

      *(v411 + 16) = v373 + 1;
      v420 = (v411 + 40 * v373);
      v420[4] = v558;
      v420[5] = v414;
      v420[6] = v557;
      v420[7] = v416;
      v420[8] = v387;
      v402 = v521;
      v403 = v522;
      v401 = v496;
      goto LABEL_120;
    }
  }

  v421 = v411;
  v422 = v528;
  sub_1D6A6F8CC(v421);
  v423 = v534;
  v424 = v525;
  sub_1D6CC4EB8(v534, v525, type metadata accessor for FormatDebuggerCallStackFrame);
  (*(v494 + 56))(v424, 0, 1, v495);
  v425 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  swift_beginAccess();
  sub_1D6CC4BD8(v424, v422 + v425);
  swift_endAccess();
  sub_1D71A94DC(v423);

  sub_1D725B31C();

  v612[8] = v606;
  v612[9] = v607;
  v612[10] = v608;
  v613 = v609;
  v612[4] = v602;
  v612[5] = v603;
  v612[6] = v604;
  v612[7] = v605;
  v612[0] = v599;
  v612[1] = v600;
  v612[2] = v601[0];
  v612[3] = v601[1];
  v610 = v597;
  v611 = v598;
  if (sub_1D5DEA380(&v610) == 1)
  {

    v593 = v606;
    v594 = v607;
    v595 = v608;
    v596 = v609;
    v589 = v602;
    v590 = v603;
    v591 = v604;
    v592 = v605;
    v585 = v599;
    v586 = v600;
    v587 = v601[0];
    v588 = v601[1];
    v583 = v597;
    v584 = v598;
    sub_1D6CC4B10(&v583, sub_1D61957D4);
    v426 = v493;
    (*(v518 + 56))(v493, 1, 1, v519);

LABEL_133:
    v430 = sub_1D6032A5C;
    v431 = v426;
    goto LABEL_134;
  }

  v581[10] = v606;
  v581[11] = v607;
  v581[12] = v608;
  v581[6] = v602;
  v581[7] = v603;
  v581[8] = v604;
  v581[9] = v605;
  v581[2] = v599;
  v581[3] = v600;
  v581[4] = v601[0];
  v581[5] = v601[1];
  v581[0] = v597;
  v581[1] = v598;
  v568 = v607;
  v569 = v608;
  v564[1] = v602;
  v564[2] = v603;
  v565 = v604;
  v566 = v605;
  v567 = v606;
  v561 = v599;
  v562 = v600;
  v563 = v601[0];
  v564[0] = v601[1];
  v559 = v597;
  v560 = v598;
  v579[10] = v606;
  v579[11] = v607;
  v579[12] = v608;
  v579[6] = v602;
  v579[7] = v603;
  v579[8] = v604;
  v579[9] = v605;
  v579[2] = v599;
  v579[3] = v600;
  v579[4] = v601[0];
  v579[5] = v601[1];
  v582 = v609;
  v570 = v609;
  v580 = v609;
  v579[0] = v597;
  v579[1] = v598;
  sub_1D5F2B0D8(v581, &v571);
  sub_1D6CC4B10(v579, sub_1D61957D4);
  v427 = v423[2];
  *&v571 = v423[1];
  *(&v571 + 1) = v427;
  v572 = *(v423 + 3);

  v426 = v493;
  sub_1D6C56BC8(&v571, v493);

  v593 = v567;
  v594 = v568;
  v595 = v569;
  v589 = v564[1];
  v590 = v564[2];
  v596 = v570;
  v591 = v565;
  v592 = v566;
  v585 = v561;
  v586 = v562;
  v587 = v563;
  v588 = v564[0];
  v583 = v559;
  v584 = v560;
  sub_1D5F2B134(&v583);
  v428 = v518 + 48;
  v429 = *(v518 + 48);
  if ((v429)(v426, 1, v519) == 1)
  {

    goto LABEL_133;
  }

  v432 = v402;
  v554 = v429;
  v555 = v428;
  sub_1D6CC4E30(v426, v403, type metadata accessor for DebugFormatCacheFile);
  v433 = v403;
  v434 = sub_1D6CC4D88();
  v435 = v520;
  v436 = sub_1D7262C2C();
  if (!v436)
  {

    v438 = MEMORY[0x1E69E7CC0];
    v450 = v433;
    v451 = v432;
LABEL_144:
    v452 = v503;
    *&v571 = v438;

    sub_1D725B32C();

    v453 = v491;
    v454 = v502;
    if (v491 >= 4)
    {
      v455 = v491;
      v456 = v500;
      sub_1D725B8AC();
      if (v489(v456, 1, v495) != 1)
      {
        v471 = v456;
        v410 = v453;
        v472 = v499;
        sub_1D6CC4E30(v471, v499, type metadata accessor for FormatDebuggerCallStackFrame);
        v473 = v450;
        sub_1D6CC4EB8(v450, v454, type metadata accessor for DebugFormatCacheFile);
        v474 = v519;
        (*(v518 + 56))(v454, 0, 1, v519);
        v411 = v534[2];
        *&v553 = v534[1];
        v409 = v534[3];
        v552 = v534[4];
        v558 = v472[1];
        v475 = v454;
        v408 = v472[2];
        v557 = v472[3];
        v556 = v472[4];
        v476 = v497;
        sub_1D6CC4EB8(v475, v497, sub_1D6032A5C);
        if ((v554)(v476, 1, v474) == 1)
        {
          sub_1D6CC4E20(v410);

          sub_1D6CC4B10(v475, sub_1D6032A5C);

          sub_1D6CC4B10(v476, sub_1D6032A5C);
          sub_1D607F0A4(&v571);
          v477 = v473;
        }

        else
        {
          v478 = v476;
          v479 = v498;
          sub_1D6CC4E30(v478, v498, type metadata accessor for DebugFormatCacheFile);
          v373 = *v479;
          v387 = *(v479 + 8);
          v2 = *(v479 + 16);
          LODWORD(v555) = *(v479 + 24);
          v403 = *(v479 + 40);
          v554 = *(v479 + 32);
          if (!*(v479 + 48))
          {
            goto LABEL_159;
          }

          swift_beginAccess();
          sub_1D6CC4E20(v410);

          sub_1D6C4CF94(v480);
          v482 = v481;
          v401 = v496;

LABEL_160:
          sub_1D6CC4B10(v502, sub_1D6032A5C);
          sub_1D6CC4B10(v498, type metadata accessor for DebugFormatCacheFile);
          *&v559 = v373;
          *(&v559 + 1) = v387;
          *&v560 = v2;
          BYTE8(v560) = v555;
          *&v561 = v554;
          *(&v561 + 1) = v403;
          *&v562 = v553;
          *(&v562 + 1) = v411;
          *&v563 = v409;
          *(&v563 + 1) = v552;
          *&v564[0] = v482;
          *(&v564[0] + 1) = v558;
          *&v564[1] = v408;
          *(&v564[1] + 1) = v557;
          *&v564[2] = v556;
          *(&v564[2] + 1) = v410;
          nullsub_1();
          v575 = v563;
          v576 = v564[0];
          v577 = v564[1];
          v578 = v564[2];
          v571 = v559;
          v572 = v560;
          v573 = v561;
          v574 = v562;
          v477 = v522;
        }

        v563 = v575;
        v564[0] = v576;
        v564[1] = v577;
        v564[2] = v578;
        v559 = v571;
        v560 = v572;
        v561 = v573;
        v562 = v574;

        sub_1D725B32C();

        sub_1D6CC4E10(v410);
        sub_1D6CC4B10(v499, type metadata accessor for FormatDebuggerCallStackFrame);
        sub_1D6CC4B10(v477, type metadata accessor for DebugFormatCacheFile);
        v423 = v534;
LABEL_135:
        sub_1D6CC4B10(v423, type metadata accessor for FormatDebuggerCallStackFrame);
        sub_1D6CC4B10(v401, type metadata accessor for FormatDebuggerContext);
        return;
      }

      sub_1D6CC4E10(v453);
      sub_1D6CC4B10(v456, sub_1D6CC4A44);
    }

    sub_1D6CC4EB8(v450, v452, type metadata accessor for DebugFormatCacheFile);
    v457 = v519;
    (*(v518 + 56))(v452, 0, 1, v519);
    v423 = v534;
    v459 = v534[1];
    v458 = v534[2];
    v460 = v534[3];
    v558 = v534[4];
    sub_1D6CC4EB8(v452, v451, sub_1D6032A5C);
    if ((v554)(v451, 1, v457) == 1)
    {
      sub_1D6CC4B10(v452, sub_1D6032A5C);
      sub_1D6CC4B10(v451, sub_1D6032A5C);
      sub_1D607F0A4(&v571);
    }

    else
    {
      v461 = v501;
      sub_1D6CC4E30(v451, v501, type metadata accessor for DebugFormatCacheFile);
      v463 = *v461;
      v462 = *(v461 + 8);
      v464 = *(v461 + 16);
      v465 = *(v461 + 24);
      v467 = *(v461 + 32);
      v466 = *(v461 + 40);
      if (*(v461 + 48))
      {
        swift_beginAccess();
        v557 = v460;

        sub_1D6C4CF94(v468);
        v470 = v469;
        v460 = v557;
      }

      else
      {

        v470 = MEMORY[0x1E69E7CC0];
      }

      sub_1D6CC4B10(v503, sub_1D6032A5C);
      sub_1D6CC4B10(v501, type metadata accessor for DebugFormatCacheFile);
      *&v559 = v463;
      *(&v559 + 1) = v462;
      *&v560 = v464;
      BYTE8(v560) = v465;
      *&v561 = v467;
      *(&v561 + 1) = v466;
      *&v562 = v459;
      *(&v562 + 1) = v458;
      *&v563 = v460;
      *(&v563 + 1) = v558;
      *&v564[0] = v470;
      *(v564 + 8) = 0u;
      *(&v564[1] + 8) = 0u;
      *(&v564[2] + 1) = 0;
      nullsub_1();
      v575 = v563;
      v576 = v564[0];
      v577 = v564[1];
      v578 = v564[2];
      v571 = v559;
      v572 = v560;
      v573 = v561;
      v574 = v562;
      v450 = v522;
      v423 = v534;
      v401 = v496;
    }

    v563 = v575;
    v564[0] = v576;
    v564[1] = v577;
    v564[2] = v578;
    v559 = v571;
    v560 = v572;
    v561 = v573;
    v562 = v574;

    sub_1D725B32C();

    v430 = type metadata accessor for DebugFormatCacheFile;
    v431 = v450;
LABEL_134:
    sub_1D6CC4B10(v431, v430);
    goto LABEL_135;
  }

  v437 = v436;
  *&v559 = MEMORY[0x1E69E7CC0];
  sub_1D699A0DC(0, v436 & ~(v436 >> 63), 0);
  v438 = v559;
  sub_1D7262BFC();
  if ((v437 & 0x8000000000000000) == 0)
  {
    v556 = v434;
    do
    {
      v439 = sub_1D7262D0C();
      v440 = v527;
      sub_1D6CC4EB8(v441, v527, type metadata accessor for FormatDebuggerCallStackFrame);
      v439(&v571, 0);
      v442 = v440[1];
      v443 = v440[2];
      v444 = v440[4];
      v558 = v440[3];
      v557 = v444;

      sub_1D6CC4B10(v440, type metadata accessor for FormatDebuggerCallStackFrame);
      *&v559 = v438;
      v445 = v435;
      v447 = *(v438 + 16);
      v446 = *(v438 + 24);
      if (v447 >= v446 >> 1)
      {
        sub_1D699A0DC((v446 > 1), v447 + 1, 1);
        v438 = v559;
      }

      *(v438 + 16) = v447 + 1;
      v448 = (v438 + 32 * v447);
      v448[4] = v442;
      v448[5] = v443;
      v449 = v557;
      v448[6] = v558;
      v448[7] = v449;
      sub_1D7262C6C();
      --v437;
      v435 = v445;
    }

    while (v437);

    v451 = v521;
    v450 = v522;
    goto LABEL_144;
  }

  __break(1u);
}