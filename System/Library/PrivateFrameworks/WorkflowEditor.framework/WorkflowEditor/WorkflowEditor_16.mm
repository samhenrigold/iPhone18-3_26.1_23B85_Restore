void *sub_2745783D4(uint64_t a1)
{
  v18 = sub_27463868C();
  v2 = *(a1 + 16);
  v3 = sub_27463B92C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x277C57F10](&v19, v3, WitnessTable);

  v18 = v19;
  v5 = *(a1 + 24);
  v15 = v2;
  v16 = v5;
  v13[2] = v2;
  v13[3] = v5;
  v13[4] = sub_27457FF9C;
  v13[5] = &v14;
  v6 = sub_27463C5BC();
  v8 = type metadata accessor for TableTemplateRow(0, v2, v5, v7);
  v17 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v11 = sub_27457591C(sub_27457FFA4, v13, v6, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);

  return v11;
}

uint64_t sub_27457854C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_27463849C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2745785DC@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a3;
  v114 = a2;
  v132 = a1;
  v131 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v126 = a5;
  v124 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for RowTemplateEditorView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = sub_27463965C();
  v13 = sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  v14 = sub_27463B19C();
  v118 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v107 = &v95 - v15;
  v122 = *(v13 - 8);
  MEMORY[0x28223BE20](v16);
  v121 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = &v95 - v19;
  v21 = type metadata accessor for TableTemplateRow(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v106 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v123 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  v29 = sub_27463AF4C();
  MEMORY[0x28223BE20](v29 - 8);
  v125 = &v95 - v30;
  v119 = v11;
  v110 = *(v11 - 8);
  MEMORY[0x28223BE20](v31);
  v108 = &v95 - v32;
  v112 = *(v12 - 8);
  MEMORY[0x28223BE20](v33);
  v116 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v109 = &v95 - v36;
  MEMORY[0x28223BE20](v37);
  v113 = &v95 - v38;
  v133 = v14;
  v130 = sub_27463C0AC();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v129 = &v95 - v41;
  v42 = v21;
  v43 = v132;
  v117 = AssociatedTypeWitness;
  v115 = AssociatedConformanceWitness;
  if (sub_2746384AC())
  {
    v44 = v127;
    v45 = v127;
    v46 = 1;
    v47 = v133;
  }

  else
  {
    v102 = v12;
    v48 = v22;
    v104 = *(v22 + 16);
    v105 = v22 + 16;
    v104(v28, v43, v42);
    v97 = v23;
    sub_27463B9CC();
    v49 = sub_27463B9BC();
    v50 = *(v22 + 80);
    v51 = swift_allocObject();
    v103 = v13;
    v52 = MEMORY[0x277D85700];
    *(v51 + 2) = v49;
    *(v51 + 3) = v52;
    v53 = v124;
    v54 = v126;
    *(v51 + 4) = v124;
    *(v51 + 5) = v54;
    v98 = *(v48 + 32);
    v96 = v42;
    v98(&v51[(v50 + 48) & ~v50], v28, v42);
    v104(v123, v132, v42);
    v55 = v53;
    v56 = v53;
    v57 = v54;
    v100 = type metadata accessor for TableTemplateParameterView(0, v55, v54, v58);
    v59 = *(v100 - 8);
    v99 = *(v59 + 16);
    v101 = v59 + 16;
    v60 = v114;
    v99(&v142, v114, v100);
    v61 = sub_27463B9BC();
    v62 = swift_allocObject();
    *(v62 + 2) = v61;
    *(v62 + 3) = MEMORY[0x277D85700];
    *(v62 + 4) = v56;
    *(v62 + 5) = v57;
    memcpy(v62 + 48, v60, 0x88uLL);
    v63 = v96;
    v64 = v98;
    v98(&v62[(v50 + 184) & ~v50], v123, v96);
    v65 = v117;
    sub_27463AF0C();
    v66 = v106;
    v67 = v132;
    v104(v106, v132, v63);
    v68 = (v50 + 168) & ~v50;
    v69 = swift_allocObject();
    v70 = v126;
    *(v69 + 2) = v124;
    *(v69 + 3) = v70;
    memcpy(v69 + 32, v60, 0x88uLL);
    v64(&v69[v68], v66, v63);
    v71 = *v67;
    v72 = v60;
    v99(&v142, v60, v100);
    v73 = v115;
    sub_27463869C();
    v141 = sub_27463868C();
    sub_27463B92C();
    swift_getWitnessTable();
    sub_27463BABC();

    v139 = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498, &qword_274649190);
    sub_27457FC54();
    sub_27463B57C();
    LOBYTE(v67) = v136;
    LOBYTE(v60) = v71 == v135;
    v139 = v72[7];
    v140 = *(v72 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950BE0, &qword_27465B4F0);
    sub_27463AD0C();
    v74 = v108;
    sub_274579C44(v125, sub_27457FC3C, v69, CGSizeMake, 0, v60 & ~v67, v71, v142, v108, *(&v142 + 1), v143, v144, v65, v73);
    v93 = v119;
    WitnessTable = swift_getWitnessTable();
    sub_27463B0CC();
    v75 = v109;
    sub_27463A90C();
    (*(v110 + 8))(v74, v93);
    v137 = WitnessTable;
    v138 = MEMORY[0x277CDFC60];
    v76 = v102;
    v77 = swift_getWitnessTable();
    v78 = v113;
    sub_2744E9688();
    v79 = v112;
    v132 = *(v112 + 8);
    (v132)(v75, v76);
    v80 = v120;
    sub_27463AF5C();
    v81 = v116;
    (*(v79 + 16))(v116, v78, v76);
    *&v142 = v81;
    v82 = v122;
    v83 = v121;
    v84 = v103;
    (*(v122 + 16))(v121, v80, v103);
    *(&v142 + 1) = v83;
    *&v139 = v76;
    *(&v139 + 1) = v84;
    v135 = v77;
    v136 = sub_27457F684(&unk_280951F00, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    v85 = v107;
    sub_274575750(&v142, 2, &v139);
    v86 = *(v82 + 8);
    v86(v80, v84);
    v87 = v132;
    (v132)(v78, v76);
    v86(v83, v84);
    (v87)(v81, v76);
    v44 = v127;
    v47 = v133;
    (*(v118 + 32))(v127, v85, v133);
    v45 = v44;
    v46 = 0;
  }

  __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
  swift_getWitnessTable();
  v88 = v129;
  sub_2745758B8(v44, v129);
  v89 = *(v128 + 8);
  v90 = v44;
  v91 = v130;
  v89(v90, v130);
  v134 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2744E9688();
  return (v89)(v88, v91);
}

uint64_t sub_274579374@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for TableTemplateRow(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(*(AssociatedTypeWitness - 8) + 16);
  v11 = a1 + *(v9 + 36);

  return v10(a4, v11, AssociatedTypeWitness);
}

uint64_t sub_274579448(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_27463869C();
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-v14];
  v16 = *a5;
  memcpy(__dst, a4, sizeof(__dst));
  v18 = type metadata accessor for TableTemplateParameterView(0, a6, a7, v17);
  sub_274576A90(v15);
  v19 = sub_27463867C();
  v21 = v20;
  sub_27463B92C();
  sub_27463B86C();
  sub_27457FF48(v16, *v21, AssociatedTypeWitness);
  v22 = *v21;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v24 = v22;
  }

  (*(*(AssociatedTypeWitness - 8) + 24))(v24 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * v16, a1, AssociatedTypeWitness);
  v19(v28, 0);
  memcpy(v27, a4, sizeof(v27));
  v25 = *(v18 - 8);
  (*(v25 + 16))(v28, a4, v18);
  sub_274576FB8(v15, v18);
  memcpy(v28, v27, sizeof(v28));
  return (*(v25 + 8))(v28, v18);
}

uint64_t sub_2745796B0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableTemplateRow(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v20[0] = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E88, &qword_27465B4F8);
  sub_27463ACEC();
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 80) + 168) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  memcpy(v16 + 32, a1, 0x88uLL);
  (*(v12 + 32))(&v16[v15], v14, v11);
  v18 = type metadata accessor for TableTemplateParameterView(0, a3, a4, v17);
  (*(*(v18 - 8) + 16))(v20, a1, v18);
  sub_274576234(sub_27457FE70, v16);
}

uint64_t sub_2745798D4(const void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v20 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_27463869C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  memcpy(__dst, a1, 0x88uLL);
  v15 = type metadata accessor for TableTemplateParameterView(0, a3, a4, v14);
  sub_274576A90(v13);
  v16 = sub_27463868C();
  (*(v11 + 8))(v13, v10);
  v25 = v16;
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BABC();

  v22[0] = v23[0];
  v24 = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498, &qword_274649190);
  result = sub_27463BB7C();
  if (result)
  {
    memcpy(v23, a1, 0x88uLL);
    sub_274576A90(v13);
    v18 = sub_27463867C();
    sub_27463B8EC();
    (*(v20 + 8))(v9, AssociatedTypeWitness);
    v18(__dst, 0);
    memcpy(v22, a1, 0x88uLL);
    v19 = *(v15 - 8);
    (*(v19 + 16))(__dst, a1, v15);
    sub_274576FB8(v13, v15);
    memcpy(__dst, v22, 0x88uLL);
    return (*(v19 + 8))(__dst, v15);
  }

  return result;
}

uint64_t sub_274579C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_27463AF4C();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v23 = type metadata accessor for RowTemplateEditorView(0, a13, a14, v22);
  v24 = (a9 + v23[9]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + v23[10]);
  *v25 = a4;
  v25[1] = a5;
  *(a9 + v23[11]) = a6;
  v26 = a9 + v23[12];
  v27 = swift_allocObject();
  *(v27 + 16) = a13;
  *(v27 + 24) = a14;
  result = sub_27457A740(sub_27457FD34, v27, a13, a14);
  *v26 = result;
  *(v26 + 8) = v29;
  *(v26 + 16) = v30 & 1;
  *(a9 + v23[13]) = a7;
  v31 = a9 + v23[14];
  *v31 = a8;
  *(v31 + 8) = a10;
  *(v31 + 16) = a11;
  *(v31 + 24) = a12 & 1;
  return result;
}

uint64_t sub_274579DB0(const void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = sub_27463869C();
  MEMORY[0x28223BE20](v28);
  v31 = &v27 - v7;
  v8 = sub_27463C0AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v29 = &v27 - v16;
  v32 = a1;
  memcpy(__dst, a1, 0x88uLL);
  v18 = type metadata accessor for TableTemplateParameterView(0, a2, a3, v17);
  v19 = sub_2745767E4();
  sub_2746386BC();

  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v22 = v29;
  v21 = v30;
  (*(v30 + 32))(v29, v11, AssociatedTypeWitness);
  (*(v21 + 16))(v14, v22, AssociatedTypeWitness);
  v23 = v32;
  memcpy(v34, v32, sizeof(v34));
  v24 = v31;
  sub_274576A90(v31);
  v25 = sub_27463867C();
  sub_27463B92C();
  sub_27463B8CC();
  v25(__dst, 0);
  memcpy(v33, v23, sizeof(v33));
  v26 = *(v18 - 8);
  (*(v26 + 16))(__dst, v23, v18);
  sub_274576FB8(v24, v18);
  memcpy(__dst, v33, 0x88uLL);
  (*(v26 + 8))(__dst, v18);
  return (*(v21 + 8))(v22, AssociatedTypeWitness);
}

void *sub_27457A17C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_274639B2C();
  sub_27457A2C8(a1, a2, a3, __src);
  v22 = __src[0];
  v9 = *&__src[1];
  v10 = BYTE8(__src[1]);
  v11 = *&__src[2];
  type metadata accessor for TableTemplateParameterView(0, a2, a3, v12);
  sub_27463B0DC();
  sub_27463973C();
  LOBYTE(a3) = sub_27463A31C();
  sub_2746390AC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v22;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  result = memcpy((a4 + 64), __src, 0x70uLL);
  *(a4 + 176) = a3;
  *(a4 + 184) = v14;
  *(a4 + 192) = v16;
  *(a4 + 200) = v18;
  *(a4 + 208) = v20;
  *(a4 + 216) = 0;
  return result;
}

uint64_t sub_27457A2C8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_27463AC2C();
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for TableTemplateParameterView(0, a2, a3, v9);
  v10 = sub_2745767E4();
  sub_2746386CC();

  sub_274412BBC();
  v11 = sub_27463A53C();
  v13 = v12;
  *a4 = v8;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  v15 = v14 & 1;
  *(a4 + 24) = v14 & 1;
  *(a4 + 32) = v16;

  sub_27440B094(v11, v13, v15);

  sub_274412C10(v11, v13, v15);
}

uint64_t sub_27457A3F0(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E88, &qword_27465B4F8);
  sub_27463ACEC();
  *(v3 + 16) = v1;
}

uint64_t sub_27457A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27457A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = a1;
  v8 = type metadata accessor for TableTemplateRow(0, a3, a5, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_27457A5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  return sub_27457A55C(a1, v10, a2, a3, a4);
}

void sub_27457A6C0()
{
  sub_27463AF4C();

  JUMPOUT(0x277C575F0);
}

void *sub_27457A700()
{
  sub_27463AF4C();

  return sub_27463AEEC();
}

uint64_t sub_27457A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RowTemplateEditorViewModel(0, a3, a4, a4);
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_27457A7B4(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_27457A8A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = *(v2 + 2);
  LOBYTE(v2) = *(v2 + 24);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952108, &unk_27465B720);
  MEMORY[0x277C575F0](&v7, v5);
  return v7;
}

uint64_t sub_27457A980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_27463B0EC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520A8, &qword_27465B6C8);
  sub_27457AA28(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
  sub_27454E488(&qword_2809520B8, &unk_2809520B0, &unk_27465B6D0, MEMORY[0x277CE11A8]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520C0, &qword_27465B6D8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_27457AA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520C8, &qword_27465B6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520D0, &qword_27465B6E8);
  MEMORY[0x28223BE20](v59);
  v61 = &v55 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520D8, &qword_27465B6F0);
  MEMORY[0x28223BE20](v60);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v55 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - v15;
  v66 = a2;
  v67 = a3;
  v17 = type metadata accessor for RowTemplateEditorView(0, a2, a3, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AAA0, &qword_2746498B8);
  v56 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA68, &unk_2746498A0);
  MEMORY[0x28223BE20](v24 - 8);
  v57 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v65 = a1;
  v29 = sub_27457B13C(v17);
  v30 = 1;
  if (v29)
  {
    __src[0] = sub_27463AB7C();
    LOBYTE(__src[1]) = 0;
    (*(v18 + 16))(v20, v65, v17);
    v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v32 = swift_allocObject();
    v33 = v67;
    *(v32 + 16) = v66;
    *(v32 + 24) = v33;
    (*(v18 + 32))(v32 + v31, v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA78, &unk_27465B710);
    sub_274434D4C();
    sub_27463A72C();

    (*(v56 + 32))(v28, v23, v21);
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v28, v30, 1, v21);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520E0, &qword_27465B6F8);
  sub_27454E488(&qword_2809520E8, &qword_2809520E0, &qword_27465B6F8, MEMORY[0x277CE14C0]);
  *v9 = sub_27456E924(v34);
  *(v9 + 1) = 0;
  v9[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520F0, &qword_27465B700);
  sub_27457B15C(v65, v66, v67, &v9[*(v35 + 44)]);
  sub_27454E488(&qword_2809520F8, &qword_2809520C8, &qword_27465B6E0, MEMORY[0x277CE1138]);
  sub_27463B0CC();
  sub_27463973C();
  v36 = v61;
  sub_27441277C(v9, v61, &qword_2809520C8, &qword_27465B6E0);
  memcpy((v36 + *(v59 + 36)), __src, 0x70uLL);
  v37 = sub_27463A35C();
  sub_2746390AC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v36;
  v47 = v58;
  sub_27441277C(v46, v58, &qword_2809520D0, &qword_27465B6E8);
  v48 = v47 + *(v60 + 36);
  *v48 = v37;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  v49 = v62;
  sub_27441277C(v47, v62, &qword_2809520D8, &qword_27465B6F0);
  v50 = v57;
  sub_274412C20(v28, v57, &qword_28094AA68, &unk_2746498A0);
  v51 = v63;
  sub_274412C20(v49, v63, &qword_2809520D8, &qword_27465B6F0);
  v52 = v64;
  sub_274412C20(v50, v64, &qword_28094AA68, &unk_2746498A0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952100, &qword_27465B708);
  sub_274412C20(v51, v52 + *(v53 + 48), &qword_2809520D8, &qword_27465B6F0);
  sub_27454D6A8(v49, &qword_2809520D8);
  sub_27454D6A8(v28, &qword_28094AA68);
  sub_27454D6A8(v51, &qword_2809520D8);
  return sub_27454D6A8(v50, &qword_28094AA68);
}

uint64_t sub_27457B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2746394DC();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v53 - v11;
  v12 = sub_2746396BC();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  v58 = a3;
  v15 = type metadata accessor for RowTemplateEditorView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A910, &qword_274649778);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908, &qword_274649770);
  MEMORY[0x28223BE20](v68);
  v60 = &v53 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8F0, &qword_274649768);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952118, &qword_27465B730);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v53 - v30;
  sub_27457B888(v15, &v53 - v30);
  v32 = sub_27457BAE0(v15);
  v33 = 1;
  if (v32)
  {
    (*(v16 + 16))(v18, a1, v15);
    v34 = *(v16 + 80);
    v54 = v8;
    v35 = a4;
    v36 = (v34 + 32) & ~v34;
    v37 = swift_allocObject();
    v38 = v58;
    *(v37 + 16) = v57;
    *(v37 + 24) = v38;
    v39 = v37 + v36;
    a4 = v35;
    (*(v16 + 32))(v39, v18, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A950, &unk_27465B740);
    sub_274433BDC();
    v40 = v55;
    sub_27463AD5C();
    v41 = v61;
    sub_2746396AC();
    sub_27454E488(&qword_28094A918, &qword_28094A910, &qword_274649778, MEMORY[0x277CDF028]);
    sub_27457F684(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v43 = v59;
    v42 = v60;
    v44 = v63;
    sub_27463A69C();
    (*(v62 + 8))(v41, v44);
    (*(v56 + 8))(v40, v43);
    v45 = v65;
    sub_2746394CC();
    v46 = v66;
    v47 = v54;
    (*(v66 + 16))(v64, v45, v54);
    sub_27457F684(&qword_28094A980, MEMORY[0x277CDF858], MEMORY[0x277CDF850]);
    v48 = sub_27463934C();
    (*(v46 + 8))(v45, v47);
    *(v42 + *(v68 + 36)) = v48;
    sub_27441277C(v42, v25, &qword_28094A908, &qword_274649770);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v33, 1, v68);
  sub_274412C20(v31, v28, &qword_280952118, &qword_27465B730);
  v49 = v67;
  sub_274412C20(v25, v67, &qword_28094A8F0, &qword_274649768);
  sub_274412C20(v28, a4, &qword_280952118, &qword_27465B730);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952120, &qword_27465B738);
  v51 = a4 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_274412C20(v49, a4 + *(v50 + 64), &qword_28094A8F0, &qword_274649768);
  sub_27454D6A8(v25, &qword_28094A8F0);
  sub_27454D6A8(v31, &qword_280952118);
  sub_27454D6A8(v49, &qword_28094A8F0);
  return sub_27454D6A8(v28, &qword_280952118);
}

uint64_t sub_27457B888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_27463AF4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  type metadata accessor for RowTemplateEditorViewModel(0, v6, *(a1 + 24), v11);
  swift_getWitnessTable();
  sub_27463920C();
  sub_27457A700();
  sub_27457E454(v10);
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952160, &qword_27465B760);
  sub_27457BBC8(v13, v3, a2 + *(v14 + 44));
  LOBYTE(v3) = sub_27463A38C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952168, &qword_27465B768) + 36);
  *v23 = v3;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(v3) = sub_27463A35C();
  sub_2746390AC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952118, &qword_27465B730);
  v33 = a2 + *(result + 36);
  *v33 = v3;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_27457BB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463B14C();
  sub_27463946C();

  v7 = type metadata accessor for RowTemplateEditorView(0, a2, a3, v6);
  return (*(a1 + *(v7 + 36)))();
}

uint64_t sub_27457BBC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v97 = a3;
  v4 = *a1;
  v5 = sub_27463A01C();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  v93 = type metadata accessor for RowTemplateEditorView(0, v7, v8, v9);
  v98 = *(v93 - 8);
  v77 = *(v98 + 64);
  MEMORY[0x28223BE20](v93);
  v95 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952170, &qword_27465B770);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v72 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952178, &qword_27465B778);
  MEMORY[0x28223BE20](v81);
  v82 = &v72 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952180, &qword_27465B780);
  MEMORY[0x28223BE20](v83);
  v85 = &v72 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952188, &qword_27465B788);
  MEMORY[0x28223BE20](v84);
  v87 = &v72 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952190, &qword_27465B790);
  MEMORY[0x28223BE20](v99);
  v86 = &v72 - v16;
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952198, &qword_27465B798);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = a1[3];
  v92 = a1[2];
  swift_beginAccess();

  sub_2745E1D84();
  v91 = v27;
  swift_beginAccess();
  v100 = v7;
  v101 = v8;
  v102 = sub_274580A9C;
  v103 = 0;
  type metadata accessor for RowTemplateEditorViewModel.StateStore(0, v7, v8, v28);
  type metadata accessor for ParameterStateStore();

  v29 = v7;
  sub_27463B4FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0, &unk_27465ACC0);
  swift_allocObject();
  v30 = sub_2746387EC();
  KeyPath = swift_getKeyPath();
  v117 = 0;
  v118 = swift_getKeyPath();
  v119 = 0;
  v120 = swift_getKeyPath();
  v121 = 0;
  v122 = swift_getKeyPath();
  v123 = 0;
  v105 = 0;
  memset(&v104[16], 0, 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040, &qword_2746594F0);
  sub_27463ACDC();
  v124 = v104[0];
  v125 = v104[1];
  v126 = v104[2];
  v128 = 0;
  v129 = 0;
  v106[0] = v92;
  v106[1] = v26;
  v32 = v93;
  v31 = v94;
  v106[2] = v91;
  v106[3] = v30;
  v106[4] = 0;
  v107 = 0;
  v127 = sub_274550400;
  v115 = 0;
  v110 = 0;
  v108 = MEMORY[0x277D84F90];
  v109 = 0;
  v111 = 0;
  v113 = 0;
  v112 = 0;
  v114 = 0;
  v130 = !sub_27457B13C(v93);
  sub_27457A6C0();
  LOBYTE(v30) = sub_27463842C();
  (*(v17 + 8))(v20, v29);
  v33 = v99;
  v34 = 1;
  if (v30)
  {
    v91 = v25;
    v35 = v98;
    v36 = v95;
    v74 = *(v98 + 16);
    v75 = v98 + 16;
    v74(v95, v31, v32);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v92 = v37 + v77;
    v38 = swift_allocObject();
    *(v38 + 16) = v29;
    *(v38 + 24) = v8;
    v76 = v37;
    v77 = v8;
    v39 = v38 + v37;
    v40 = *(v35 + 32);
    v98 = v35 + 32;
    v40(v39, v36, v32);
    v41 = v31;
    v42 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809521C0, &qword_27465B848);
    v73 = v29;
    sub_274580B88(&qword_2809521C8, &qword_2809521C0, &qword_27465B848, sub_274575164);
    v43 = v78;
    sub_27463AD5C();
    sub_27463B70C("Delete", 6);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v44 = qword_28094BB00;
    v45 = sub_27463B66C();
    v46 = sub_27463B66C();

    v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

    v48 = sub_27463B6AC();
    v50 = v49;

    *&v104[0] = v48;
    *(&v104[0] + 1) = v50;
    sub_27454E488(&qword_2809521E0, &qword_280952170, &qword_27465B770, MEMORY[0x277CDF028]);
    sub_274412BBC();
    v51 = v82;
    v52 = v80;
    sub_27463A7CC();

    (*(v79 + 8))(v43, v52);
    v53 = v95;
    v74(v95, v41, v42);
    v54 = swift_allocObject();
    v55 = v76;
    v56 = v77;
    *(v54 + 16) = v73;
    *(v54 + 24) = v56;
    v40(v54 + v55, v53, v42);
    v57 = v88;
    sub_27463A00C();
    v58 = v85;
    sub_27463962C();

    (*(v89 + 8))(v57, v90);
    sub_27454D6A8(v51, &qword_280952178);
    v59 = sub_27457BAE0(v42);
    v60 = v58 + *(v83 + 36);
    *v60 = 0;
    *(v60 + 8) = v59 & 1;
    if (sub_27457BAE0(v42))
    {
      v61 = 0.0;
    }

    else
    {
      v61 = 1.0;
    }

    v62 = v87;
    sub_27441277C(v58, v87, &qword_280952180, &qword_27465B780);
    *(v62 + *(v84 + 36)) = v61;
    v63 = 0;
    if ((sub_27457BAE0(v42) & 1) == 0)
    {
      sub_27463B14C();
      v63 = sub_27463B0FC();
    }

    v64 = sub_27457BAE0(v42);
    v65 = v62;
    v66 = v86;
    sub_27441277C(v65, v86, &qword_280952188, &qword_27465B788);
    v33 = v99;
    v67 = v66 + *(v99 + 36);
    *v67 = v63;
    *(v67 + 8) = v64 & 1;
    v25 = v91;
    sub_27441277C(v66, v91, &qword_280952190, &qword_27465B790);
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v34, 1, v33);
  sub_274412C20(v106, v104, &qword_2809521B0, &qword_27465B838);
  v68 = v96;
  sub_274412C20(v25, v96, &qword_280952198, &qword_27465B798);
  v69 = v97;
  sub_274412C20(v104, v97, &qword_2809521B0, &qword_27465B838);
  *(v69 + 248) = 0;
  *(v69 + 256) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809521B8, &qword_27465B840);
  sub_274412C20(v68, v69 + *(v70 + 64), &qword_280952198, &qword_27465B798);
  sub_27454D6A8(v25, &qword_280952198);
  sub_27454D6A8(v106, &qword_2809521B0);
  sub_27454D6A8(v68, &qword_280952198);
  return sub_27454D6A8(v104, &qword_2809521B0);
}

uint64_t sub_27457C79C(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for ParameterStateStore();
  v4 = type metadata accessor for RowTemplateEditorViewModel.StateStore(0, *(v2 + 80), *(v2 + 88), v3);

  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  return ParameterStateStore.__allocating_init<A>(_:)(a1, v4, WitnessTable, v6);
}

uint64_t sub_27457C864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_27463B14C();
  sub_27463946C();
}

void sub_27457C920(uint64_t a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = sub_27463AB1C();
  KeyPath = swift_getKeyPath();
  v5 = sub_27463A32C();
  sub_2746390AC();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = 0;
}

uint64_t sub_27457C9FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_27463C6BC();
  }

  return 1;
}

uint64_t sub_27457CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x277C58EA0](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x277C58EA0](v3, a2);
  }

  MEMORY[0x277C58EA0](2);

  return sub_27463B71C();
}

uint64_t sub_27457CAC8(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_27457CA48(v5, a1, a2);
  return sub_27463C7AC();
}

uint64_t sub_27457CB54(uint64_t a1)
{
  sub_27463C74C();
  sub_27457CA48(v3, *v1, v1[1]);
  return sub_27463C7AC();
}

char *sub_27457CC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  v6 = *(v5 + 104);
  v7 = sub_27463AF4C();
  (*(*(v7 - 8) + 32))(&v3[v6], a3, v7);
  return v3;
}

id sub_27457CCA4()
{
  v1 = v0;
  v44 = *v0;
  v2 = v44[11];
  v3 = v44[10];
  swift_getAssociatedTypeWitness();
  v46 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v36 - v4;
  v5 = swift_checkMetadataState();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v6;
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_27463AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = &v36 - v23;
  v26 = *(v1 + 3);
  if (v26)
  {
    if (v26 == 1)
    {
      (*(v16 + 16))(v21, &v1[v44[13]], v15, v24);
      MEMORY[0x277C575F0](v15);
      (*(v16 + 8))(v21, v15);
      v27 = v38;
      sub_27463844C();
      (*(v45 + 8))(v11, v3);
      v28 = v40;
      sub_27463862C();
      (*(v39 + 8))(v27, v28);
      sub_274412734(0, &unk_28094C200, 0x277CCABB0);
      v29 = swift_dynamicCast();
      v30 = v47;
      v31 = objc_allocWithZone(MEMORY[0x277D7C6B0]);
      if (v29)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      v33 = [v31 initWithNumber_];
    }

    else
    {
      (*(v16 + 16))(v18, &v1[v44[13]], v15, v24);
      v34 = v37;
      MEMORY[0x277C575F0](v15);
      (*(v16 + 8))(v18, v15);
      v33 = sub_27463841C();
      (*(v45 + 8))(v34, v3);
    }
  }

  else
  {
    (*(v16 + 16))(&v36 - v23, &v1[v44[13]], v15, v24);
    MEMORY[0x277C575F0](v15);
    (*(v16 + 8))(v25, v15);
    v33 = sub_27463847C();
    (*(v45 + 8))(v14, v3);
  }

  return v33;
}

void sub_27457D208(void *a1)
{
  v2 = v1;
  v58 = a1;
  v56 = *v1;
  v3 = *(v56 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_27463C0AC();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v43 - v6;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v43 - v10;
  v57 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_27463C0AC();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v55 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v43 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = sub_27463AF4C();
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v28 = &v43 - v25;
  v29 = *(v2 + 3);
  if (v29)
  {
    if (v29 == 1)
    {
      if (v58)
      {
        v56 = v26;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v59 = [v30 number];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951F18, &qword_27465B5B0);
          v31 = v55;
          if (swift_dynamicCast())
          {
            __swift_storeEnumTagSinglePayload(v14, 0, 1, v31);
            v32 = v54;
            v33 = v51;
            (*(v54 + 32))(v51, v14, v55);
            v34 = v32;
            v35 = v33;
            v36 = v55;
            (*(v34 + 16))(v17, v35, v55);
            v37 = v52;
            sub_27463863C();
            if (__swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness) == 1)
            {
              (*(v54 + 8))(v35, v36);
              swift_unknownObjectRelease();
              (*(v45 + 8))(v37, v46);
            }

            else
            {
              v40 = v47;
              v41 = v53;
              (*(v47 + 32))(v53, v37, AssociatedTypeWitness);
              v42 = v56;
              (*(v56 + 16))(v23, &v2[*(*v2 + 104)], v21);
              (*(v40 + 16))(v44, v41, AssociatedTypeWitness);
              MEMORY[0x277C575F0](v21);
              sub_27463845C();
              sub_27463AEBC();
              swift_unknownObjectRelease();
              (*(v42 + 8))(v23, v21);
              (*(v40 + 8))(v53, AssociatedTypeWitness);
              (*(v54 + 8))(v35, v55);
            }
          }

          else
          {
            swift_unknownObjectRelease();
            __swift_storeEnumTagSinglePayload(v14, 1, 1, v31);
            (*(v48 + 8))(v14, v49);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v39 = v26;
      (*(v26 + 16))(v23, &v2[*(v56 + 104)], v21, v27);
      MEMORY[0x277C575F0](v21);
      sub_27463840C();
      sub_27463AEBC();
      swift_unknownObjectRelease();
      (*(v39 + 8))(v23, v21);
    }
  }

  else
  {
    v38 = v26;
    (*(v26 + 16))(&v43 - v25, &v2[*(v56 + 104)], v21, v27);
    if (v58)
    {
      v59 = v58;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    MEMORY[0x277C575F0](v21);
    sub_27463848C();
    sub_27463AEBC();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v28, v21);
  }
}

uint64_t sub_27457DA7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  sub_27457FFC8(v7[0], v4);
  type metadata accessor for RowTemplateEditorViewModel.StateStore.Mode(0, *(v2 + 80), *(v2 + 88), v5);
  swift_getWitnessTable();
  sub_27463C31C();
  sub_27457FFC8(*(a2 + 16), *(a2 + 24));
  sub_27463C31C();
  LOBYTE(a2) = MEMORY[0x277C58A40](v8, v7);
  sub_274430664(v7);
  sub_274430664(v8);
  return a2 & 1;
}

char *sub_27457DB44()
{
  sub_27457FFDC(*(v0 + 16), *(v0 + 24));
  v1 = *(*v0 + 104);
  v2 = sub_27463AF4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_27457DBD8()
{
  v0 = sub_27457DB44();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_27457DC2C()
{
  sub_27463C74C();
  sub_27457DA48(v1);
  return sub_27463C7AC();
}

void (*sub_27457DC74(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_27457CCA4();
  return sub_27457DCBC;
}

void sub_27457DCBC(void **a1, char a2)
{
  if (a2)
  {
    v2 = swift_unknownObjectRetain();
    sub_27457D208(v2);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_27457D208(*a1);
  }
}

uint64_t sub_27457DD74(uint64_t a1)
{
  sub_27463C74C();
  sub_27457DA48(v2);
  return sub_27463C7AC();
}

double sub_27457DDC0(uint64_t a1, uint64_t a2)
{
  if (v2[2] != a1 || v2[3] != a2)
  {
    v4 = *v2;
    if ((sub_27463C6BC() & 1) == 0)
    {
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951F10, &qword_27465B5A8);
      sub_27463B4EC();
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RowTemplateEditorViewModel.StateStore(0, *(v4 + 80), *(v4 + 88), v6);
      sub_27463B51C();
      sub_27463B50C();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_27457DED0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_27457DDC0(v3, v4);
}

double sub_27457DF14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v9 = sub_27463AF4C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v25 - v12;
  v14 = [a4 key];
  sub_27463B6AC();

  swift_beginAccess();
  v15 = a4;
  swift_isUniquelyReferenced_nonNull_native();
  v29 = v5[5];
  sub_2745FCA4C();
  v5[5] = v29;

  swift_endAccess();
  v16 = [v15 key];
  v17 = sub_27463B6AC();
  v19 = v18;

  type metadata accessor for RowTemplateEditorViewModel.StateStore(0, v8, *(v7 + 88), v20);
  (*(v10 + 16))(v13, v26, v9);
  v22 = v27;
  v21 = v28;
  v23 = sub_27457CBB8(v27, v28, v13);
  v30 = v19;
  v31 = v23;
  v29 = v17;
  swift_beginAccess();
  sub_27457FFC8(v22, v21);
  sub_27463B51C();
  sub_27463B54C();
  swift_endAccess();
  return result;
}

uint64_t sub_27457E160()
{

  return v0;
}

uint64_t sub_27457E190()
{
  v0 = sub_27457E160();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t *sub_27457E1F4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v5[2] = 0;
  v5[3] = 0xE000000000000000;
  type metadata accessor for RowTemplateEditorViewModel.StateStore(255, *(v6 + 80), *(v6 + 88), a5);
  swift_getTupleTypeMetadata2();
  sub_27463B87C();
  v5[4] = sub_27463B4DC();
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  v5[5] = sub_27463B4DC();
  return v5;
}

uint64_t sub_27457E2D8(uint64_t a1)
{
  result = sub_274453594();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_20;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C58B20](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeDelegate_];
    }
  }

  v8 = *(v1 + 24);
  result = sub_274453594();
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  for (j = 0; j != v9; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](j, v8);
    }

    else
    {
      v11 = *(v8 + 8 * j + 32);
    }

    v12 = v11;
    [v11 addDelegate_];
  }
}

uint64_t sub_27457E414(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  sub_27457E2D8(v2);
}

void sub_27457E454(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v71 = sub_27463865C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2746385FC();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27463854C();
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 80);
  v79 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v16 = sub_27463AF4C();
  v77 = a1;
  MEMORY[0x277C575F0](v16);
  v17 = v4;
  v18 = v15;
  v81 = v2;
  v19 = *(v17 + 88);
  v20 = v12;
  sub_2746384CC();
  sub_2746384BC();
  v72 = v11;
  v21 = sub_27463853C();
  v23 = v22;
  v24 = sub_27463842C();
  v25 = MEMORY[0x277D7BF30];
  v74 = v9;
  if ((v24 & 1) == 0)
  {
    v26 = sub_27463843C();
    if (v27)
    {
      v87[0] = v21;
      v87[1] = v23;
      *&v84 = 31524;
      *(&v84 + 1) = 0xE200000000000000;
      v80 = v27;
      v28 = *(v6 + 104);
      v29 = v26;
      v30 = v8;
      v31 = v8;
      v32 = v19;
      v33 = v6;
      v34 = v78;
      v28(v30, *v25, v78);
      v35 = sub_2746385EC();
      v37 = v36;
      v38 = *(v33 + 8);
      v39 = v34;
      v6 = v33;
      v19 = v32;
      v8 = v31;
      v38(v31, v39);
      MEMORY[0x277C57EA0](v35, v37);

      MEMORY[0x277C57EA0](125, 0xE100000000000000);
      v82 = v29;
      v83 = v80;
      sub_274412BBC();
      v21 = sub_27463C0FC();
      v41 = v40;

      v25 = MEMORY[0x277D7BF30];

      v23 = v41;
    }
  }

  sub_27457DED0(v21, v23);

  v80 = v18;
  v42 = sub_27463847C();
  if (v42)
  {
    v43 = [v42 containedVariables];
    swift_unknownObjectRelease();
    sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
    v44 = sub_27463B81C();
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  sub_27457E414(v44);
  v45 = *v25;
  v76 = *(v6 + 104);
  v46 = v78;
  v76(v8, v45, v78);

  sub_2746385EC();
  v75 = *(v6 + 8);
  v75(v8, v46);
  v47 = sub_27463846C();

  v48 = v77;
  sub_27457DF14(0, 0, v77, v47);

  v76(v8, *MEMORY[0x277D7BF28], v46);
  v49 = v80;

  sub_2746385EC();
  v75(v8, v46);
  v50 = sub_2746384DC();

  sub_27457DF14(0, 1, v48, v50);

  sub_274412C20(v88, &v84, &qword_280951F20, &qword_27465B5B8);
  if (v85)
  {
    sub_2743F45D0(&v84, v87);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v85 = v20;
    v86 = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
    v52 = *(v79 + 16);
    v78 = v20;
    v52(boxed_opaque_existential_1, v49, v20);
    v53 = v69;
    sub_27463864C();
    v54 = sub_2746383AC();
    (*(v70 + 8))(v53, v71);
    v55 = 0;
    v56 = 1 << *(v54 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v54 + 64);
    v59 = (v56 + 63) >> 6;
    while (v58)
    {
      v60 = v55;
LABEL_16:
      v61 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v62 = v61 | (v60 << 6);
      v63 = (*(v54 + 48) + 16 * v62);
      v64 = *v63;
      v65 = v63[1];
      v66 = *(*(v54 + 56) + 8 * v62);

      v67 = v66;

      sub_27457DF14(v64, v65, v48, v67);
    }

    while (1)
    {
      v60 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v60 >= v59)
      {

        sub_27454D6A8(v88, &qword_280951F20);
        (*(v73 + 8))(v72, v74);
        (*(v79 + 8))(v80, v78);
        __swift_destroy_boxed_opaque_existential_1(v87);
        goto LABEL_20;
      }

      v58 = *(v54 + 64 + 8 * v60);
      ++v55;
      if (v58)
      {
        v55 = v60;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    sub_27454D6A8(v88, &qword_280951F20);
    (*(v73 + 8))(v72, v74);
    (*(v79 + 8))(v49, v20);
    sub_27454D6A8(&v84, &qword_280951F20);
LABEL_20:
  }
}

uint64_t sub_27457ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RowTemplateEditorViewModel(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  sub_274638EFC();
  sub_274638F3C();
}

uint64_t sub_27457EDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_27457ED1C(v3, v4, v5, v6);
}

uint64_t sub_27457EE04()
{

  return v0;
}

uint64_t sub_27457EE2C()
{
  v0 = sub_27457EE04();

  return MEMORY[0x2821FE8D8](v0);
}

void *sub_27457EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RowTemplateEditorViewModel.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5 = sub_27457E1C0();
  v6 = MEMORY[0x277D84F90];
  v4[2] = v5;
  v4[3] = v6;
  return v4;
}

uint64_t sub_27457EEE0@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  a3(0, *(a1 + 80), *(a1 + 88));
  result = sub_274638EFC();
  *a4 = result;
  return result;
}

uint64_t sub_27457EF60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_35();
  return sub_27463858C();
}

uint64_t sub_27457F048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_35();
  return sub_27463859C();
}

uint64_t sub_27457F1F4(uint64_t a1)
{
  result = sub_27463AF4C();
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

uint64_t sub_27457F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor011RowTemplateB9ViewModel33_41D4CC52C36A29D0234B4A297BA99C01LLC10StateStoreC4ModeOyx__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27457F36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27457F3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_27457F41C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_27457F454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27457F498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_27457F4D8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27457F630()
{
  result = qword_280951E70;
  if (!qword_280951E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951E70);
  }

  return result;
}

uint64_t sub_27457F684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27457F6F8@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X8>)
{
  v8 = v5[2];
  v9 = v5[3];
  v10 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_27_10(v10, v11, v12, v13, MEMORY[0x277D7BF88]);
  OUTLINED_FUNCTION_43();
  v14 = sub_27463869C();
  OUTLINED_FUNCTION_53_0(v14);
  v16 = v5 + ((*(v15 + 80) + 168) & ~*(v15 + 80));

  return sub_2745785DC(a1, v5 + 4, v16, v8, v9, a5);
}

unint64_t sub_27457F7BC()
{
  result = qword_280951EA0;
  if (!qword_280951EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48, &qword_27465B4D0);
    sub_27457F840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EA0);
  }

  return result;
}

unint64_t sub_27457F840()
{
  result = qword_280951EA8;
  if (!qword_280951EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E98, &qword_27465B508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E90, &qword_27465B500);
    sub_27454E488(&unk_280951EB0, &qword_280951E90, &qword_27465B500, MEMORY[0x277CDF028]);
    sub_274482428();
    swift_getOpaqueTypeConformance2();
    sub_27454E488(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EA8);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{

  OUTLINED_FUNCTION_20_14();

  return swift_deallocObject();
}

unint64_t sub_27457FA00()
{
  result = qword_280951ED0;
  if (!qword_280951ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951ED8, &qword_27465B560);
    sub_27454E488(&qword_280951EE0, &unk_280951EE8, &unk_27465B568, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951ED0);
  }

  return result;
}

uint64_t sub_27457FAB8@<X0>(uint64_t a5@<X8>)
{
  v7 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_43();
  v11 = type metadata accessor for TableTemplateRow(v8, v7, v9, v10);
  OUTLINED_FUNCTION_53_0(v11);
  v13 = v5 + ((*(v12 + 80) + 48) & ~*(v12 + 80));

  return sub_274579374(v13, a5);
}

uint64_t sub_27457FB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_43();
  v12 = type metadata accessor for TableTemplateRow(v9, v8, v10, v11);
  OUTLINED_FUNCTION_53_0(v12);
  v14 = v4[2];
  v15 = v4[3];
  v16 = (v4 + ((*(v13 + 80) + 184) & ~*(v13 + 80)));

  return sub_274579448(a1, v14, v15, v4 + 6, v16, v6, v7);
}

unint64_t sub_27457FC54()
{
  result = qword_280951EF0;
  if (!qword_280951EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A498, &qword_274649190);
    sub_27457FCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EF0);
  }

  return result;
}

unint64_t sub_27457FCE0()
{
  result = qword_280951EF8;
  if (!qword_280951EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EF8);
  }

  return result;
}

uint64_t objectdestroy_36Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow(v6, v5, v7, v8);
  OUTLINED_FUNCTION_22_9();
  v10 = *(v9 + 80);

  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_17_13();
  (*(v11 + 8))(v12 + ((v10 + 168) & ~v10), v5);
  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_27457FE88(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15(v7, v8, v9, v10, MEMORY[0x277D7BF88]);
  v11 = OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for TableTemplateRow(v11, v7, v12, v13);
  OUTLINED_FUNCTION_53_0(v14);
  v16 = v4 + ((*(v15 + 80) + 168) & ~*(v15 + 80));

  return a1(v4 + 32, v16, v5, v6);
}

uint64_t sub_27457FF48(unint64_t a1, uint64_t a2, uint64_t a3)
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

double sub_27457FFC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_27457FFDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_27457FFF0()
{
  result = qword_280951F28;
  if (!qword_280951F28)
  {
    sub_274412734(255, &qword_280950FD0, off_279ED92B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951F28);
  }

  return result;
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_274580078(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_27463AF4C();
  if (v3 <= 0x3F)
  {
    sub_274431930();
    if (v5 <= 0x3F)
    {
      type metadata accessor for RowTemplateEditorViewModel(255, v2, *(a1 + 24), v4);
      swift_getWitnessTable();
      sub_27463922C();
      if (v6 <= 0x3F)
      {
        sub_274580508(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_274580184(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2745802FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274580508(uint64_t a1)
{
  if (!qword_280952020[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40, qword_274653AB0);
    v1 = sub_27463AF4C();
    if (!v2)
    {
      atomic_store(v1, qword_280952020);
    }
  }
}

uint64_t sub_27458056C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2745805EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v9 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
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

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_274580748(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2745809E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for RowTemplateEditorView(0, v5, v6, a4);
  OUTLINED_FUNCTION_53_0(v7);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v5, v6);
}

uint64_t sub_274580AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_274580B04(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_18_7();
  v8 = type metadata accessor for RowTemplateEditorView(v4, v5, v6, v7);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_18_7();
  return sub_27457C864(v9, v10, v11, a1, a2);
}

uint64_t sub_274580B88(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_10_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_67Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 16);
  type metadata accessor for RowTemplateEditorView(0, v6, *(v5 + 24), a4);
  OUTLINED_FUNCTION_5_16();
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_27463AF4C();
  OUTLINED_FUNCTION_17_13();
  (*(v9 + 8))(v8 + v10, v6);

  sub_2743F459C(*(v8 + *(v4 + 56)), *(v8 + *(v4 + 56) + 8));

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

unint64_t sub_274580D68()
{
  result = qword_2809521E8;
  if (!qword_2809521E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809520C0, &qword_27465B6D8);
    sub_27454E488(&qword_2809520B8, &unk_2809520B0, &unk_27465B6D0, MEMORY[0x277CE11A8]);
    sub_27454E488(&qword_2809521F0, &unk_2809521F8, &unk_27465B858, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809521E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_34(unint64_t *a1)
{

  return sub_27454E488(a1, v1, v2, &unk_27465B480);
}

uint64_t OUTLINED_FUNCTION_3_35()
{
  v4 = MEMORY[0x277D7BF60];

  return sub_27454E488(v0, v2, v1, v4);
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1, uint64_t a2, ...)
{

  return sub_27463AE9C();
}

void OUTLINED_FUNCTION_20_14()
{
  sub_274482198(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_28_13()
{

  return swift_getAssociatedTypeWitness();
}

void static WFVariableFieldUtilities.copy(_:to:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_27463822C();
  [ObjCClassFromMetadata copyVariableString:v4 toPasteboard:a2];
}

uint64_t ParameterStateStore.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  ParameterStateStore.init<A>(_:)(a1, a2, a3, a4);
  return v8;
}

void *ParameterStateStore.__allocating_init(action:parameter:undoManager:)()
{
  OUTLINED_FUNCTION_14_15();
  v3 = objc_allocWithZone(type metadata accessor for ActionParameterStateDataSource());
  v4 = v0;
  v5 = v2;
  v6 = v1;
  v7 = sub_274583414(v5, v6, v0);
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_68_0();
  swift_allocObject();
  v8 = sub_274582368(v7);

  return v8;
}

double StoredParameterState.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  *a3 = sub_274581834(v6);
  a3[1] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = sub_274583510;
  v9[4] = v8;
  a3[2] = sub_274583518;
  a3[3] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_274583548;
  v11[4] = v10;
  a3[4] = sub_274583550;
  a3[5] = v11;

  return result;
}

uint64_t StoredParameterState<A>.variable.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_25_0();
  v3 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_10_26(v4, v5, v6, v7, v8, v9, v10, v11, v47);
  v3(v12);
  v13 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v16 = *(a1 + 16);
  v14[4] = v16;
  OUTLINED_FUNCTION_4_30(v14, v17, v18, v19, v20, v21, v22, v23, v24, v48, v52, v54, v56, v58, v60, v62, v64, v25);
  v34 = OUTLINED_FUNCTION_10_26(v26, v27, v28, v29, v30, v31, v32, v33, v49);
  v3(v34);
  v35 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = v15;
  v36[4] = v16;
  OUTLINED_FUNCTION_4_30(v36, v37, v38, v39, v40, v41, v42, v43, v44, v50, v53, v55, v57, v59, v61, v63, v65, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BDC0, &qword_27464C390);
  sub_27463AF0C();
  return v51;
}

uint64_t StoredParameterState.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  (*(v2 + 32))();
  sub_27463C0AC();
  OUTLINED_FUNCTION_25_0();
  v6 = *(v5 + 8);

  return v6(a1, v4);
}

void *StoredParameterState.binding.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_25_0();
  v4 = *(v3 + 16);
  v13 = OUTLINED_FUNCTION_10_26(v5, v6, v7, v8, v9, v10, v11, v12, v48);
  v4(v13);
  v14 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v17 = *(a1 + 16);
  v15[4] = v17;
  OUTLINED_FUNCTION_4_30(v15, v18, v19, v20, v21, v22, v23, v24, v25, v49, v52, v54, v56, v58, v60, v62, v64, v26);
  v35 = OUTLINED_FUNCTION_10_26(v27, v28, v29, v30, v31, v32, v33, v34, v50);
  v4(v35);
  v36 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v16;
  v37[4] = v17;
  OUTLINED_FUNCTION_4_30(v37, v38, v39, v40, v41, v42, v43, v44, v45, v51, v53, v55, v57, v59, v61, v63, v65, v46);
  sub_27463C0AC();
  return sub_27463AF0C();
}

uint64_t sub_274581604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_27463B9BC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_274585918();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_27463C38C();
    MEMORY[0x277C57EA0](0xD00000000000003FLL, 0x800000027468D880);
    v12 = sub_27463C7EC();
    MEMORY[0x277C57EA0](v12);

    MEMORY[0x277C57EA0](46, 0xE100000000000000);
    result = sub_27463C56C();
    __break(1u);
  }

  return result;
}

double StoredParameterState.init<A>(_:)()
{
  OUTLINED_FUNCTION_14_15();
  v4 = v3;

  *v4 = sub_274581834(v5);
  v4[1] = v6;
  OUTLINED_FUNCTION_68_0();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v0;
  v7[4] = v2;
  v4[2] = sub_274583644;
  v4[3] = v7;
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v0;
  v8[4] = v2;
  v4[4] = sub_274583650;
  v4[5] = v8;

  return result;
}

uint64_t sub_274581834(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_2_30();
  sub_274585990(v1, v2, v3, &protocol conformance descriptor for ParameterStateStore);

  return sub_27463950C();
}

uint64_t sub_27458189C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_274581920(uint64_t a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_2746385BC();
}

uint64_t sub_274581A78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_27463C0AC();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  (*(v11 + 16))(&v17 - v9, a1, v8);
  v12 = a2[5];
  v19 = *a2;
  v17 = *(a2 + 1);
  v20 = v17;
  v18 = *(a2 + 3);
  v21 = v18;
  v22 = v12;
  v15 = type metadata accessor for StoredParameterState(0, v6, v13, v14);

  StoredParameterState.wrappedValue.setter(v10, v15);
}

void (*StoredParameterState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v5;
  *v5 = a2;
  v6 = sub_27463C0AC();
  v5[1] = v6;
  OUTLINED_FUNCTION_19_0(v6);
  v5[2] = v7;
  v9 = *(v8 + 64);
  v5[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = *v2;
  v12 = v2[1];
  v5[4] = v10;
  v5[5] = v11;
  v13 = v2[2];
  v5[6] = v12;
  v5[7] = v13;
  *(v5 + 4) = *(v2 + 3);
  v5[10] = v2[5];
  v13();
  return sub_274581CCC;
}

void sub_274581CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v7 = *v2;
    v8 = v2[1];
    (*(v5 + 16))(v3, v4);
    OUTLINED_FUNCTION_25_14();

    StoredParameterState.wrappedValue.setter(v3, v7);

    (*(v5 + 8))(v4, v8);
  }

  else
  {
    v6 = *v2;
    OUTLINED_FUNCTION_25_14();

    StoredParameterState.wrappedValue.setter(v4, v6);
  }

  free(v4);
  free(v3);

  free(v2);
}

double StoredParameterState.projectedValue.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;

  return result;
}

uint64_t StoredParameterState.hash(into:)(uint64_t a1)
{

  sub_2745831AC(a1);
}

uint64_t static StoredParameterState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{

  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_2_30();
  sub_274585990(v2, v3, v4, &protocol conformance descriptor for ParameterStateStore);
  sub_27463C31C();

  sub_27463C31C();
  v5 = MEMORY[0x277C58A40](v8, v7);
  sub_274430664(v7);
  sub_274430664(v8);
  return v5 & 1;
}

uint64_t sub_274581F88(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_27463C0AC();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = a4[1];
  v18 = *a4;
  v19 = v11;
  v20 = a4[2];
  (*(v12 + 16))(&v17[-v9], a1);
  v15 = type metadata accessor for StoredParameterState(0, a5, v13, v14);
  (*(*(v15 - 8) + 16))(v17, a4, v15);
  StoredParameterState.wrappedValue.setter(v10, v15);
}

uint64_t StoredParameterState.hashValue.getter()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_27463C74C();
  StoredParameterState.hash(into:)(v3);
  return sub_27463C7AC();
}

uint64_t sub_274582148(uint64_t a1)
{
  sub_27463C74C();
  StoredParameterState.hash(into:)(v2);
  return sub_27463C7AC();
}

void *sub_274582188@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 16))(&v5);
  if (v5)
  {
    v4 = [v5 variable];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_274582200(void **a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a4[1];
  if (*a1)
  {
    v18 = *a4;
    v19 = v8;
    v20 = a4[2];
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = type metadata accessor for StoredParameterState(0, a5, v10, v11);
    (*(*(v12 - 8) + 16))(v16, a4, v12);
    v13 = v7;
    v16[0] = [v9 initWithVariable_];
    StoredParameterState.wrappedValue.setter(v16, v12);
  }

  else
  {
    v18 = *a4;
    v19 = v8;
    v20 = a4[2];
    v17 = 0;
    v14 = type metadata accessor for StoredParameterState(0, a5, a3, a4);
    (*(*(v14 - 8) + 16))(v16, a4, v14);
    StoredParameterState.wrappedValue.setter(&v17, v14);
  }
}

void *sub_274582368(void *a1)
{
  v2 = v1;
  v2[4] = 0;
  v4 = sub_274585990(&unk_280952440, 255, type metadata accessor for ActionParameterStateDataSource, &unk_27465BC24);
  v2[2] = a1;
  v2[3] = v4;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource, &unk_27465BBEC);
  v5 = a1;
  sub_274638EDC();
  swift_allocObject();
  swift_weakInit();
  sub_274638F4C();

  v6 = sub_274638FFC();

  v2[4] = v6;

  return v2;
}

void sub_2745824D4(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_280952418);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_280952428);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582598(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_280952400);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_280952410);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_27458265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v20 = sub_274585990(&unk_280952430, 255, type metadata accessor for BindingParameterStateDataSource, &unk_27465BB9C);
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  type metadata accessor for BindingParameterStateDataSource();
  sub_274585990(&qword_280952378, 255, type metadata accessor for BindingParameterStateDataSource, &unk_27465BB64);

  sub_274638EDC();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_weakInit();
  sub_274638F4C();

  sub_274638FFC();

  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_2745827B0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&qword_2809523E8);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_2809523F8);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582874(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_2809523D0);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_2809523E0);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582938(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_2809523B8);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_2809523C8);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_2745829FC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_2809523A0);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_2809523B0);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582AC0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_280952360);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&qword_280952370);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582B84(uint64_t a1)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v1 = OUTLINED_FUNCTION_1_35(&unk_280952340);
  OUTLINED_FUNCTION_19_13(v1);
  OUTLINED_FUNCTION_18_11();
  v2 = OUTLINED_FUNCTION_0_43(&unk_280952350);
  OUTLINED_FUNCTION_7_27(v2);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_6_21(v3);
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32(v4, v5, v6, MEMORY[0x277CBCE60]);
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void *ParameterStateStore.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v17 - v12;
  v5[3] = a4;
  v5[4] = 0;
  v5[2] = a1;
  swift_unknownObjectRetain();
  sub_274638EDC();
  OUTLINED_FUNCTION_5();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v18;
  v15[5] = v14;
  swift_getAssociatedConformanceWitness();

  sub_274638FFC();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v13, AssociatedTypeWitness);

  OUTLINED_FUNCTION_13_16();
  return v5;
}

uint64_t sub_274582E4C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ParameterStateStore();
    OUTLINED_FUNCTION_2_30();
    sub_274585990(v2, v3, v4, &protocol conformance descriptor for ParameterStateStore);
    sub_274638EFC();

    sub_274638F3C();
  }

  return result;
}

uint64_t sub_274582EEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ParameterStateStore();
    sub_274585990(&qword_28094B550, v3, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
    sub_274638EFC();

    sub_274638F3C();
  }

  return result;
}

void sub_274582F9C(void *a1)
{
  type metadata accessor for ActionParameterStateDataSource();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
    *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager) = a1;
    v3 = a1;
  }
}

uint64_t (*sub_2745830CC(uint64_t *a1))()
{
  v3 = *(v1 + 24);
  a1[1] = *(v1 + 16);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = sub_2746385AC();
  return sub_274583134;
}

uint64_t sub_274583134(void *a1, char a2, __n128 a3)
{
  if ((a2 & 1) == 0)
  {
    return sub_2746385BC();
  }

  swift_unknownObjectRetain();
  sub_2746385BC();

  return swift_unknownObjectRelease();
}

uint64_t static ParameterStateStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  swift_getObjectType();
  v5[0] = v2;
  swift_unknownObjectRetain();
  sub_27463C31C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_27463C31C();
  v3 = MEMORY[0x277C58A40](v6, v5);
  sub_274430664(v5);
  sub_274430664(v6);
  return v3 & 1;
}

uint64_t ParameterStateStore.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ParameterStateStore.__deallocating_deinit()
{
  ParameterStateStore.deinit();
  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274583314()
{
  sub_27463C74C();
  sub_2745831AC(v1);
  return sub_27463C7AC();
}

uint64_t sub_274583354@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ParameterStateStore();
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

id sub_274583414(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action] = a1;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter] = a2;
  *&v3[v7] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ActionParameterStateDataSource();
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v8 addEventObserver_];

  return v11;
}

uint64_t sub_274583518@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_15();

  return swift_deallocObject();
}

uint64_t sub_2745836E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_274583800()
{
  [*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action] removeEventObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionParameterStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2745838D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v2 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter) key];
  if (!v2)
  {
    sub_27463B6AC();
    v2 = sub_27463B66C();
  }

  v3 = [v1 parameterStateForKey_];

  return v3;
}

uint64_t sub_274583970(uint64_t a1)
{
  swift_getObjectType();
  sub_274584F70();
  sub_27463946C();
  swift_unknownObjectRelease();
}

void sub_2745839F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) = 1;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource, &unk_27465BBEC);
  sub_274638EFC();
  sub_274638F3C();

  v5 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v6 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  v7 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  v8 = v7;
  sub_274583B08(v5, v6, a2, v7);

  *(a1 + v4) = 0;
}

uint64_t sub_274583B08(void *a1, id a2, uint64_t a3, void *a4)
{
  v9 = [a2 key];
  if (!v9)
  {
    sub_27463B6AC();
    v9 = sub_27463B66C();
  }

  v10 = [a1 parameterStateForKey_];

  v11 = [a2 key];
  if (!v11)
  {
    sub_27463B6AC();
    v11 = sub_27463B66C();
  }

  [a1 setParameterState:a3 forKey:v11];

  if (!a4)
  {
    goto LABEL_9;
  }

  v12 = a4;
  if (v10 && [v10 isEqual_])
  {

LABEL_9:

    return swift_unknownObjectRelease();
  }

  v34 = v12;
  v35 = v4;
  sub_27463B70C("Update %1$@ in %2$@", 19);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v14 = qword_28094BB00;
  v15 = sub_27463B66C();
  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2746486A0;
  v19 = [a2 localizedLabel];
  v20 = sub_27463B6AC();
  v22 = v21;

  v23 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v24 = sub_27440F250();
  *(v18 + 64) = v24;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v25 = [a1 localizedName];
  v26 = sub_27463B6AC();
  v28 = v27;

  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  *(v18 + 72) = v26;
  *(v18 + 80) = v28;
  sub_27463B67C();

  v29 = v34;
  v30 = sub_27463B66C();

  [v29 setActionName_];

  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = v10;
  v31[4] = v29;
  v31[5] = v35;
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v32 = v29;
  v33 = a2;
  swift_unknownObjectRetain();
  sub_27463BBDC();
  swift_unknownObjectRelease();
}

uint64_t sub_274583EE0(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter) key];
  sub_27463B6AC();

  sub_27463C04C();
}

uint64_t sub_274583F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_274584F70();
  sub_27463946C();
}

void sub_274584028(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) = 1;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource, &unk_27465BBEC);
  sub_274638EFC();
  sub_274638F3C();

  v9 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v10 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  v11 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  v12 = v11;
  sub_274584148(v9, v10, a2, v11, a4, a5);

  *(a1 + v8) = 0;
}

uint64_t sub_274584148(void *a1, void *a2, char *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v80 = a3;
  v81 = a4;
  v83 = a1;
  v73 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463C0AC();
  v84 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v69 - v11;
  v82 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v69 - v16;
  v74 = v17;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v69 - v20;
  v22 = [a2 key];
  sub_27463B6AC();

  sub_27463C04C();

  v23 = v80;
  v78 = a2;
  v24 = [a2 key];
  sub_27463B6AC();

  v77 = a6;
  v25 = v81;
  v26 = v82;
  sub_27463C05C();
  v27 = v21;

  if (!v25)
  {
    return (*(v26 + 8))(v27, v84);
  }

  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v26 + 16);
  v30 = v84;
  v29(v12, v21, v84);
  v29(&v12[v28], v23, v30);
  v31 = v12;
  if (__swift_getEnumTagSinglePayload(v12, 1, a5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v28], 1, a5) == 1)
    {
      (*(v26 + 8))(v12, v84);
      return (*(v26 + 8))(v27, v84);
    }

    v69 = v29;
    v36 = v25;
  }

  else
  {
    v32 = v71;
    v29(v71, v12, v84);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v12[v28], 1, a5);
    v69 = v29;
    if (EnumTagSinglePayload != 1)
    {
      v64 = v73;
      v65 = &v12[v28];
      v66 = v70;
      (*(v73 + 32))(v70, v65, a5);
      v80 = *(*(v77 + 8) + 8);
      v67 = v25;
      LODWORD(v80) = sub_27463B5BC();
      v68 = *(v64 + 8);
      v68(v66, a5);
      v68(v32, a5);
      (*(v26 + 8))(v31, v84);
      if (v80)
      {

        return (*(v26 + 8))(v27, v84);
      }

      goto LABEL_9;
    }

    v34 = *(v73 + 8);
    v35 = v25;
    v34(v32, a5);
  }

  (*(v72 + 8))(v12, TupleTypeMetadata2);
LABEL_9:
  TupleTypeMetadata2 = v26 + 16;
  v80 = v21;
  sub_27463B70C("Update %1$@ in %2$@", 19, v69);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v37 = qword_28094BB00;
  v38 = sub_27463B66C();
  v39 = sub_27463B66C();

  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2746486A0;
  v42 = [v78 localizedLabel];
  v43 = sub_27463B6AC();
  v45 = v44;

  v46 = MEMORY[0x277D837D0];
  *(v41 + 56) = MEMORY[0x277D837D0];
  v47 = sub_27440F250();
  *(v41 + 64) = v47;
  *(v41 + 32) = v43;
  *(v41 + 40) = v45;
  v48 = [v83 localizedName];
  v49 = sub_27463B6AC();
  v51 = v50;

  *(v41 + 96) = v46;
  *(v41 + 104) = v47;
  *(v41 + 72) = v49;
  *(v41 + 80) = v51;
  sub_27463B67C();

  v52 = v81;
  v53 = sub_27463B66C();

  [v52 setActionName_];

  v54 = v75;
  v27 = v80;
  v55 = v84;
  v69(v75, v80, v84);
  v26 = v82;
  v56 = (*(v82 + 80) + 40) & ~*(v82 + 80);
  v57 = (v74 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v77;
  *(v58 + 2) = a5;
  *(v58 + 3) = v59;
  v60 = v78;
  *(v58 + 4) = v78;
  (*(v26 + 32))(&v58[v56], v54, v55);
  *&v58[v57] = v52;
  *&v58[(v57 + 15) & 0xFFFFFFFFFFFFFFF8] = v76;
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v61 = v52;
  v62 = v60;
  sub_27463BBDC();

  return (*(v26 + 8))(v27, v84);
}

uint64_t sub_2745848E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27463B9CC();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  return sub_274581604(sub_27458596C, v11, "WorkflowEditor/ParameterStateStore.swift", 40, 2u, 205);
}

uint64_t sub_274584978(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41 = a3;
  v40 = sub_274638DAC();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v13 = a1;
  v14 = a2;
  v15 = sub_274638D9C();
  v16 = sub_27463BC1C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v13;
    v18 = v17;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v18 = 136315394;
    v19 = [v39 key];
    v37 = a5;
    v20 = v19;
    v21 = sub_27463B6AC();
    v36 = a4;
    v22 = v21;
    v38 = v5;
    v24 = v23;

    v25 = sub_2745E7980(v22, v24, &v42);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = [v14 identifier];
    v27 = sub_27463B6AC();
    v29 = v28;

    v30 = sub_2745E7980(v27, v29, &v42);
    a4 = v36;

    *(v18 + 14) = v30;
    _os_log_impl(&dword_2743F0000, v15, v16, "Undoing parameter state for parameter:%s, action:%s", v18, 0x16u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x277C5A270](v31, -1, -1);
    v32 = v18;
    v13 = v39;
    MEMORY[0x277C5A270](v32, -1, -1);
  }

  (*(v10 + 8))(v12, v40);
  return sub_274583B08(v14, v13, v41, a4);
}

uint64_t sub_274584C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_27463B9CC();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a2;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  return sub_274581604(sub_2745858F0, v15, "WorkflowEditor/ParameterStateStore.swift", 40, 2u, 227);
}

uint64_t sub_274584CCC(void *a1, void *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v39 = sub_274638DAC();
  v12 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v15 = a1;
  v16 = a2;
  v17 = sub_274638D9C();
  v18 = sub_27463BC1C();

  v43 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v7;
    v20 = v19;
    v35 = swift_slowAlloc();
    v44 = v35;
    *v20 = 136315394;
    v21 = [v43 key];
    v22 = sub_27463B6AC();
    v36 = a6;
    v37 = a7;
    v23 = v22;
    v25 = v24;

    v26 = sub_2745E7980(v23, v25, &v44);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v16 identifier];
    v28 = sub_27463B6AC();
    v30 = v29;

    v31 = sub_2745E7980(v28, v30, &v44);
    a6 = v36;

    *(v20 + 14) = v31;
    a7 = v37;
    _os_log_impl(&dword_2743F0000, v17, v18, "Undoing parameter state for parameter:%s, action:%s", v20, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    MEMORY[0x277C5A270](v32, -1, -1);
    MEMORY[0x277C5A270](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v39);
  return sub_274584148(v16, v43, v40, v41, a6, a7);
}

uint64_t sub_274584F70()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  ObjectType = swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for ViewableParameter);
  if (result)
  {
    v5 = v4;
    v6 = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = v1;
    v9 = v7(v6, v5);

    return v9;
  }

  return result;
}

uint64_t sub_274585008(__n128 a1)
{
  v2 = v1;
  v3 = sub_27463B27C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v6 = sub_27463BCEC();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = sub_27463B29C();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if ((*(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) & 1) == 0)
    {
      type metadata accessor for ActionParameterStateDataSource();
      sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource, &unk_27465BBEC);
      sub_274638EFC();
      sub_274638F3C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27458524C()
{
  sub_27463C7BC();
  sub_27463BF8C();
  sub_27463BF8C();
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  if (v1)
  {
    v2 = v1;
    sub_27463C76C();
    v3 = v2;
    sub_27463BF8C();
  }

  else
  {
    sub_27463C76C();
  }

  return sub_27463C79C();
}

uint64_t (*sub_274585354(id *a1))()
{
  a1[1] = v1;
  *a1 = sub_2745838D8();
  return sub_27458539C;
}

uint64_t sub_2745853BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionParameterStateDataSource();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2745853FC()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952380, &qword_27465BC78);
  MEMORY[0x277C575F0](&v4, v2);
  return v4;
}

uint64_t sub_274585454(uint64_t a1)
{
  type metadata accessor for BindingParameterStateDataSource();
  sub_274585990(&qword_280952378, 255, type metadata accessor for BindingParameterStateDataSource, &unk_27465BB64);
  sub_274638EFC();
  sub_274638F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952380, &qword_27465BC78);
  return sub_27463AEBC();
}

uint64_t sub_274585524()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t (*sub_274585598(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_2745853FC();
  return sub_2745855E0;
}

uint64_t sub_2745855F8(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  v4 = swift_unknownObjectRetain();
  (a3)(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_274585668@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BindingParameterStateDataSource();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2745856E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_27463C74C();
  a4(v6);
  return sub_27463C7AC();
}

uint64_t sub_274585834(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_27463C0AC();
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[4];
  v13 = *(v1 + v11);
  v14 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_274584C20(a1, v12, v1 + v10, v13, v14, v3, v4);
}

uint64_t sub_274585990(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_43(unint64_t *a1)
{

  return sub_27440CA78(a1, v1, v2, &unk_274647480);
}

uint64_t OUTLINED_FUNCTION_1_35(unint64_t *a1)
{

  return sub_27440CA78(a1, v1, v2, &unk_274647430);
}

__n128 OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a18)
{
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  result = a18;
  *(a1 + 72) = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_274638FFC();
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1)
{

  return sub_274638EFC();
}

uint64_t OUTLINED_FUNCTION_13_16()
{
  *(v0 + 32) = v1;
}

double OUTLINED_FUNCTION_16_17()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_17_14()
{
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

double OUTLINED_FUNCTION_19_13(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;

  return result;
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_27463B9CC();
}

double OUTLINED_FUNCTION_25_14()
{

  return result;
}

uint64_t sub_274585C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_274412BBC();

  v4 = sub_27463A53C();
  v6 = v5;
  v8 = v7;
  sub_27463A45C();
  v9 = sub_27463A50C();
  v11 = v10;
  v13 = v12;

  sub_274412C10(v4, v6, v8 & 1);

  sub_27463ABCC();
  v14 = sub_27463A4DC();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_274412C10(v9, v11, v13 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000, &qword_27465BD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v22 = sub_27463A33C();
  *(inited + 32) = v22;
  v23 = sub_27463A34C();
  *(inited + 33) = v23;
  v24 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v22)
  {
    v24 = sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v23)
  {
    v24 = sub_27463A36C();
  }

  sub_2746390AC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v18 & 1;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_2746486A0;
  v35 = sub_27463A35C();
  *(v34 + 32) = v35;
  v36 = sub_27463A37C();
  *(v34 + 33) = v36;
  v37 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v35)
  {
    v37 = sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v36)
  {
    v37 = sub_27463A36C();
  }

  sub_2746390AC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952450, &qword_27465BD48) + 36));
  v47 = *(sub_27463970C() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_274639BFC();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #8.0 }

  *v46 = _Q0;
  v55 = [objc_opt_self() wf_tertiarySystemBackgroundColor];
  v56 = sub_27463AB0C();
  KeyPath = swift_getKeyPath();
  v58 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8, &qword_27464E020) + 36)];
  *v58 = KeyPath;
  v58[1] = v56;
  sub_27463AB6C();
  v59 = sub_27463ABAC();

  v60 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952458, &qword_27465BD88) + 36)];
  *v60 = v59;
  v60[1] = 0x4034000000000000;
  v60[2] = 0;
  v60[3] = 0;
  v61 = sub_27463B0CC();
  v63 = v62;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952460, &qword_27465BD90);
  v65 = &v46[*(result + 36)];
  *v65 = v61;
  v65[1] = v63;
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v33;
  *(a3 + 24) = v20;
  *(a3 + 32) = v24;
  *(a3 + 40) = v26;
  *(a3 + 48) = v28;
  *(a3 + 56) = v30;
  *(a3 + 64) = v32;
  *(a3 + 72) = 0;
  *(a3 + 80) = v37;
  *(a3 + 88) = v39;
  *(a3 + 96) = v41;
  *(a3 + 104) = v43;
  *(a3 + 112) = v45;
  *(a3 + 120) = 0;
  return result;
}

unint64_t sub_274586060()
{
  result = qword_280952468;
  if (!qword_280952468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952450, &qword_27465BD48);
    sub_2745860EC();
    sub_274586178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952468);
  }

  return result;
}

unint64_t sub_2745860EC()
{
  result = qword_280952470;
  if (!qword_280952470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952478, &qword_27465BD98);
    sub_2744E9360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952470);
  }

  return result;
}

unint64_t sub_274586178()
{
  result = qword_280952480;
  if (!qword_280952480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952460, &qword_27465BD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952480);
  }

  return result;
}

BOOL sub_2745861DC()
{
  if (sub_27443B4C4())
  {
    return 1;
  }

  sub_274530580();
  v0 = v1 != 0;

  return v0;
}

uint64_t sub_274586238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90, &unk_274657610);
  v2 = *(v1 - 8);
  v84 = v1;
  v85 = v2;
  MEMORY[0x28223BE20](v1);
  v83 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952690, &qword_27464A2D8);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  MEMORY[0x28223BE20](v4);
  v80 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF58, &qword_27465C0D0);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  MEMORY[0x28223BE20](v7);
  v74 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526A0, &unk_27465C0D8);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v59 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF70, &qword_27464A690);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v59 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526B0, &unk_27465C0E8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v59 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF30, &unk_27464A5D0);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526C0, &unk_27465C0F8);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620, &qword_27464B198);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40, &qword_27464A5E0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526D0, &qword_27465C108);
  v61 = *(v60 - 8);
  *&v24 = MEMORY[0x28223BE20](v60).n128_u64[0];
  v26 = &v59 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow);
  v86 = v0;
  [v27 addEditingObserver_];
  v91 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0, &unk_27465C110);
  sub_274638F7C();
  swift_endAccess();
  v28 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v29 = sub_27463BCEC();
  v93 = v29;
  v90 = sub_27463BCDC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v90);
  v88 = MEMORY[0x277CBCEC8];
  sub_274458A14(&qword_2809526E0, &qword_28094AF40, &qword_27464A5E0);
  v89 = sub_274594E5C(&qword_280952640, &qword_28094AF90, 0x277D85C78);
  sub_274638FDC();
  v30 = v19;
  sub_274415174(v19, &qword_280952620, &qword_27464B198);

  (*(v21 + 8))(v23, v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = MEMORY[0x277CBCD60];
  sub_274458A14(&qword_2809526E8, &unk_2809526D0, &qword_27465C108);
  v31 = v60;
  sub_274638FFC();

  (*(v61 + 8))(v26, v31);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809526F0, &qword_27464A5C8);
  v32 = v62;
  sub_274638F7C();
  swift_endAccess();
  v87 = v28;
  v33 = sub_27463BCEC();
  v93 = v33;
  v34 = v30;
  v59 = v30;
  v35 = v90;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v90);
  sub_274458A14(&qword_2809526F8, &unk_28094AF30, &unk_27464A5D0);
  v36 = v63;
  v37 = v64;
  sub_274638FDC();
  sub_274415174(v34, &qword_280952620, &qword_27464B198);

  (*(v65 + 8))(v32, v37);
  swift_allocObject();
  v38 = v86;
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952700, &unk_2809526C0, &unk_27465C0F8);
  v39 = v66;
  sub_274638FFC();

  (*(v67 + 8))(v36, v39);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960, &qword_27465C120);
  v40 = v68;
  sub_274638F7C();
  swift_endAccess();
  v41 = sub_27463BCEC();
  v93 = v41;
  v42 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v35);
  sub_274458A14(&qword_280952710, &qword_28094AF70, &qword_27464A690);
  v43 = v69;
  v44 = v70;
  sub_274638FDC();
  sub_274415174(v42, &qword_280952620, &qword_27464B198);

  (*(v71 + 8))(v40, v44);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952718, &unk_2809526B0, &unk_27465C0E8);
  v45 = v72;
  sub_274638FFC();

  (*(v73 + 8))(v43, v45);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v93 = *(v91 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onScrollToAction);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2745955B0;
  *(v47 + 24) = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  v73 = MEMORY[0x277CBCE20];
  sub_274458A14(&qword_280951E60, &unk_28094AF80, &unk_27464A6E0);
  sub_274638FFC();

  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50, &unk_27464A630);
  v48 = v74;
  sub_274638F7C();
  swift_endAccess();
  v49 = sub_27463BCEC();
  v93 = v49;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v90);
  sub_274458A14(&qword_280952728, &qword_28094AF58, &qword_27465C0D0);
  v50 = v75;
  v51 = v76;
  sub_274638FDC();
  sub_274415174(v42, &qword_280952620, &qword_27464B198);

  (*(v77 + 8))(v48, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952730, &unk_2809526A0, &unk_27465C0D8);
  v52 = v78;
  sub_274638FFC();

  (*(v79 + 8))(v50, v52);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AE70, &qword_27464A2D0);
  v53 = v80;
  sub_274638F7C();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952740, &unk_280952690, &qword_27464A2D8);
  v54 = v81;
  sub_274638FFC();

  (*(v82 + 8))(v53, v54);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v55 = *(v38 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0, &qword_2746565C0);
  v56 = v83;
  sub_274638F7C();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952590, &unk_28094FE90, &unk_274657610);
  v57 = v84;
  sub_274638FFC();

  (*(v85 + 8))(v56, v57);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v93 = *(v55 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0, &qword_2746565C8);
  sub_274458A14(&unk_280952580, &qword_28094FEC0, &qword_2746565C8);
  sub_274638FFC();

  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();
}

void sub_274587448(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_27458E448();
  }
}

void sub_2745874A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions;
    v4 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters;
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 8);
      v11 = *v4;
      v12 = v7 & 1;
      v13 = *(v4 + 16);
      v14 = v6 & 1;
      v8 = v5;
      sub_27458E300(&v11);

      v9 = *&v2[v3];
      v10 = &v9[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
      v2 = *&v9[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
      v10[32] = 0;
      *v10 = 0u;
      *(v10 + 1) = 0u;
    }
  }
}

void sub_274587584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_27458F85C(a1, a2);
  }
}

void sub_2745875F4(uint64_t a1, char *a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = OUTLINED_FUNCTION_29_11();
    a3(v5);
  }
}

void sub_27458765C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      v8 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
      v9 = a2;
      v10 = v8;
      sub_27463B1BC();
      sub_27443DA88(v9, 1, v11, v12, 0);
    }
  }
}

void sub_2745876FC(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_274638C1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_14:

        return;
      }

      v13 = sub_274637D5C();
      v14 = [v13 userInfo];

      v15 = sub_27463B4CC();
      v16 = sub_27463B6AC();
      sub_27452F288(v16, v17, v15, &v62);

      if (!v64)
      {
        sub_274415174(&v62, &unk_28094A230, &qword_27464D1B0);
        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = v61;
      v19 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow;
      v20 = [*&v12[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] actions];
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      sub_27463B81C();

      v21 = sub_274453594();

      if (v18 >= v21)
      {
        goto LABEL_13;
      }

      v22 = [*&v12[v19] actions];
      v23 = sub_27463B81C();

      sub_2744535A4();
      if ((v23 & 0xC000000000000001) == 0)
      {
        v24 = *(v23 + 8 * v18 + 32);
LABEL_9:
        v25 = v24;

        v26 = *&v12[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
        sub_27463B1BC();
        sub_27443DA88(v25, 1, v27, v28, 0);

        v29 = *&v12[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults];
        swift_getErrorValue();
        v30 = v29;
        v31 = v25;
        v32 = sub_27463C72C();
        *&v62 = v31;
        *(&v62 + 1) = v32;
        v63 = v33;
        sub_274439E10(&v62);

LABEL_13:
        sub_274587D94(a1);
        v38 = v37;
        [WFUserInterfaceFromViewController() presentAlert_];

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_46:
      v24 = MEMORY[0x277C58B20](v18, v23);
      goto LABEL_9;
    }

    if (a1)
    {
      v34 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults);

      v35 = v34;
      v36 = a1;
      sub_27443A104(a1);
    }

    else
    {
    }

    (*(v8 + 104))(v10, *MEMORY[0x277D79BE8], v7);
    v18 = sub_274638C0C();
    (*(v8 + 8))(v10, v7);
    if ((v18 & 1) == 0)
    {

      return;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v39 = sub_27463C51C();
      a1 = 0;
      v40 = 0;
      v41 = 0;
      a2 = v39 | 0x8000000000000000;
    }

    else
    {
      v42 = -1 << *(a2 + 32);
      a1 = (a2 + 64);
      v40 = ~v42;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v41 = v44 & *(a2 + 64);
    }

    v23 = 0;
    v59 = v40;
    v45 = (v40 + 64) >> 6;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    v46 = v23;
    v47 = v41;
    v48 = v23;
    if (!v41)
    {
      while (1)
      {
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v48 >= v45)
        {
          goto LABEL_42;
        }

        v47 = *(a1 + v48);
        ++v46;
        if (v47)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_31:
    v60 = (v47 - 1) & v47;
    v49 = (v48 << 9) | (8 * __clz(__rbit64(v47)));
    v50 = *(*(a2 + 56) + v49);
    v18 = *(*(a2 + 48) + v49);
    for (i = v50; v18; v60 = v41)
    {
      v55 = [v18 integerValue];
      v23 = [*&v12[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] actions];
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v56 = sub_27463B81C();

      if ((v56 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x277C58B20](v55, v56);
      }

      else
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v55 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v57 = *(v56 + 8 * v55 + 32);
      }

      v58 = v57;

      [v58 setOutput_];

      v23 = v48;
      v41 = v60;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v52 = sub_27463C55C();
      if (!v52)
      {
        break;
      }

      v54 = v53;
      v61 = v52;
      sub_274412734(0, &unk_28094C200, 0x277CCABB0);
      swift_dynamicCast();
      v18 = v62;
      v61 = v54;
      sub_274412734(0, &unk_280950440, 0x277CFC2E0);
      swift_dynamicCast();
      i = v62;
      v48 = v23;
    }

LABEL_42:

    sub_274406A24(a2);
  }
}

void sub_274587D94(void *a1)
{
  v1 = sub_274587F68();
  v19 = *(v1 + 16);
  v20 = v1;
  if (!v19)
  {
LABEL_16:

    sub_274412734(0, &qword_280952750, 0x277CFC218);
    v17 = a1;
    sub_27458824C(a1, v18);
    return;
  }

  v2 = 0;
  v3 = v1 + 64;
  while (v2 < *(v20 + 16))
  {
    v5 = *(v3 - 32);
    v4 = *(v3 - 24);
    v6 = *(v3 - 16);
    v21 = *(v3 - 8);

    v7 = sub_274637D5C();
    v8 = [v7 domain];
    v9 = sub_27463B6AC();
    v11 = v10;

    if (v9 == v5 && v11 == v4)
    {
    }

    else
    {
      v13 = sub_27463C6BC();

      if ((v13 & 1) == 0)
      {

LABEL_14:

        goto LABEL_15;
      }
    }

    v14 = [v7 code];

    if (v14 != v6)
    {
      goto LABEL_14;
    }

    v15 = sub_274637D5C();
    v16 = v21();

    if (v16)
    {

      return;
    }

LABEL_15:
    ++v2;
    v3 += 40;
    if (v19 == v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_274587F68()
{
  v0 = sub_274637BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952758, &qword_27465C128);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2746486A0;
  v5 = sub_274637BAC();
  v7 = v6;
  v8 = *MEMORY[0x277CFC140];
  v9 = sub_274637C3C();
  (*(*(v9 - 8) + 104))(v3, v8, v9);
  v10 = *MEMORY[0x277CFBF38];
  v31 = *(v1 + 104);
  v31(v3, v10, v0);
  v11 = sub_274637BDC();
  v28 = *(v1 + 8);
  v28(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v11;
  *(v4 + 56) = sub_274488774;
  *(v4 + 64) = 0;
  v12 = sub_274637BAC();
  v29 = v13;
  v30 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952760, &qword_27465C130);
  v15 = v14[12];
  v16 = v14[16];
  v17 = v14[20];
  *v3 = 0;
  v18 = *MEMORY[0x277CFC0A0];
  v19 = sub_274637C0C();
  (*(*(v19 - 8) + 104))(v3, v18, v19);
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v9);
  *(v3 + v16) = 0;
  v20 = sub_274637BFC();
  __swift_storeEnumTagSinglePayload(v3 + v17, 1, 1, v20);
  v31(v3, *MEMORY[0x277CFBF78], v0);
  v21 = sub_274637BDC();
  v28(v3, v0);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v32;
  v24 = v29;
  *(v4 + 72) = v30;
  *(v4 + 80) = v24;
  *(v4 + 88) = v21;
  *(v4 + 96) = sub_2745955D8;
  *(v4 + 104) = v22;
  v25 = v23;
  return v4;
}

id sub_27458824C(void *a1, __n128 a2)
{
  sub_274637D5C();
  OUTLINED_FUNCTION_29_11();
  v4 = [swift_getObjCClassFromMetadata() alertWithError_];

  return v4;
}

uint64_t sub_2745882AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      v2 += 8;
      sub_27452179C();
      --v1;
    }

    while (v1);
  }
}

void sub_274588310(uint64_t a1)
{
  v2 = sub_274453594();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = OUTLINED_FUNCTION_13_3();
      v4 = MEMORY[0x277C58B20](v5);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_274522144(&v6, v4);
  }
}

void sub_2745883CC(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    sub_274412734(0, &qword_280950FD0, off_279ED92B8);
    sub_274594E5C(&qword_280951F28, &qword_280950FD0, off_279ED92B8);
    sub_27463BA7C();
    v2 = v16[1];
    v3 = v16[2];
    v4 = v16[3];
    v5 = v16[4];
    v6 = v16[5];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      v15 = OUTLINED_FUNCTION_27_11();
      sub_274406A24(v15);
      return;
    }

    while (1)
    {
      sub_274522168(v16, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_27463C2BC())
      {
        sub_274412734(0, &qword_280950FD0, off_279ED92B8);
        swift_dynamicCast();
        v14 = v16[0];
        v12 = v5;
        v13 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2745885D0(void *a1, char a2)
{
  v4 = [a1 layer];
  [v4 setShadowRadius_];

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v7 = a1;
  v8 = sub_2745FB6C4(sub_274594C9C, v5, 0.6, 1.0);
  [v8 startAnimation];
}

id sub_2745886B8(void *a1, void *a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEF8, &unk_27464F110);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v46 - v4);
  v6 = sub_274637C3C();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = v46 - v11;
  v13 = [a1 userInfo];
  v14 = sub_27463B4CC();

  v15 = sub_274637BBC();
  sub_27452F288(v15, v16, v14, &v56);

  if (!v57)
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_274637C2C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v17 = &qword_28094CEF8;
    v18 = &unk_27464F110;
    v19 = v5;
LABEL_10:
    sub_274415174(v19, v17, v18);
    return 0;
  }

  v20 = v53;
  v50 = *(v53 + 32);
  v51 = v53 + 32;
  v50(v12, v5, v6);
  v21 = [a1 userInfo];
  v22 = sub_27463B4CC();

  v23 = sub_274637BCC();
  sub_27452F288(v23, v24, v22, &v56);

  if (!v57)
  {
    (*(v20 + 8))(v12, v6);
LABEL_9:
    v17 = &unk_28094A230;
    v18 = &qword_27464D1B0;
    v19 = &v56;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v53 + 8))(v12, v6);
    return 0;
  }

  v25 = v54;
  v26 = v55;
  sub_274637CDC();
  swift_allocObject();
  sub_274637CCC();
  sub_274637C1C();
  sub_274594370(&unk_280952770, 255, MEMORY[0x277CFC0B8]);
  sub_274637CBC();
  v27 = v53;
  v48 = v26;
  v49 = v25;

  v47 = v56;
  sub_274412734(0, &qword_280952750, 0x277CFC218);
  v29 = a1;
  v31 = sub_27458824C(a1, v30);
  v46[1] = sub_274412734(0, &unk_28094FE60, 0x277CFC220);
  sub_27463B70C("Feedback…", 11);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v32 = qword_28094BB00;
  v33 = sub_27463B66C();
  v34 = sub_27463B66C();

  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

  v36 = sub_27463B6AC();
  v46[0] = v37;

  (*(v27 + 16))(v8, v12, v6);
  v38 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v39 = (v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v52;
  *(v40 + 16) = v52;
  v50((v40 + v38), v8, v6);
  v42 = v47;
  *(v40 + v39) = v47;
  v43 = v41;
  v44 = v42;
  v45 = sub_274588E0C(v36, v46[0], 0, sub_2745955E0, v40);
  [v31 addButton_];
  sub_2744F52B4(v49, v48);

  (*(v27 + 8))(v12, v6);
  return v31;
}

void sub_274588C90(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_274637C3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B2BC();
  v11 = sub_274594370(&unk_280952780, v10, type metadata accessor for UIKitEditorViewController);
  v12 = swift_unknownObjectRetain();
  v13 = MEMORY[0x277C579F0](v12, v11);
  (*(v7 + 16))(v9, a2, v6);
  objc_allocWithZone(sub_27463889C());
  v14 = a1;
  v15 = v13;
  v16 = a3;
  v17 = sub_27463888C();
  sub_27463887C();
}

id sub_274588E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_27463B66C();

  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v13[2] = v9;
    v13[3] = &block_descriptor_391;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v10];
  _Block_release(v10);

  return v11;
}

id sub_274588EFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  v1 = sub_27463B7FC();

  v2 = [v0 initWithActions_];

  return v2;
}

id sub_274588FB0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for EditorEmptyStateView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_274589024()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for WFEditorView(0));
    v5 = sub_274594F20(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_27458909C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction);
  }

  else
  {
    v3 = v0;
    type metadata accessor for WFEditorSystemInputProviderItem();
    swift_allocObject();
    v2 = WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(0, 0, 1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_274589124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  if (sub_274453594())
  {
    sub_274573FD0();
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables) = v10;
  v11 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678, &unk_27465C0C0);
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v12, 255, v13);
  OUTLINED_FUNCTION_31_10();
  *(v4 + v11) = sub_27463B4DC();
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions) = v9;
  v14 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  type metadata accessor for WFEditorActionOutputItem();
  OUTLINED_FUNCTION_31_10();
  *(v4 + v14) = sub_27463B4DC();
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers) = v9;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items) = v9;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner) = a4;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) = a1;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults) = a3;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) = a2;
  v17 = type metadata accessor for UIKitEditorViewController();
  OUTLINED_FUNCTION_16_12();
  objc_msgSendSuper2(v15, v16, v4, v17);
  OUTLINED_FUNCTION_21_10();
}

double sub_274589340()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  result = 138.0;
  if (v2 != 1)
  {
    return 0.0;
  }

  return result;
}

void sub_2745893A0()
{
  v1 = sub_274589024();
  [v0 setView_];
}

void sub_274589434(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = sub_274588FB0();
    [v3 addSubview_];

    v5 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
    [*&v1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView] setAutoresizingMask_];
    *(*&v1[v5] + OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8) = &off_28836F828;
    swift_unknownObjectWeakAssign();
    v6 = sub_274589024();
    [v6 setClipsToBounds_];

    v7 = objc_opt_self();
    v8 = [v7 defaultCenter];
    [v8 addObserver:v1 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v9 = [v7 defaultCenter];
    [v9 addObserver:v1 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_274589604(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewIsAppearing_, v2 & 1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables;
  swift_beginAccess();
  *&v1[v3] = MEMORY[0x277D84FA0];

  sub_274586238();
  sub_27458AFD8();
}

id sub_2745896D4(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, v2 & 1);
  return [*&v1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] removeEditingObserver_];
}

void sub_274589788(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, v2 & 1);
  v3 = sub_274589024();
  OUTLINED_FUNCTION_35_6();
  sub_274595CB8(v4, v5, v6, v7);
}

void sub_274589840(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v3, sel_viewWillLayoutSubviews);
  if ((*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) & 1) == 0)
  {
    v2 = sub_274589024();
    sub_274589340();
    [v2 contentInset];
    [v2 setContentInset_];
  }
}

void sub_274589914(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_38_6();
  v37 = v3;
  v38 = v4;
  v5 = v2;
  v7 = v6;
  v9 = v8;
  if (v8 != 1)
  {
    goto LABEL_10;
  }

  v10 = [v5 undoManager];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  if (![v10 canUndo])
  {

LABEL_10:
    v36.receiver = v5;
    v36.super_class = type metadata accessor for UIKitEditorViewController();
    objc_msgSendSuper2(&v36, sel_motionEnded_withEvent_, v9, v7);
    OUTLINED_FUNCTION_28_14();
    return;
  }

  sub_274412734(0, &qword_280952680, 0x277D75110);
  v12 = [v11 undoActionName];
  sub_27463B6AC();

  OUTLINED_FUNCTION_16_12();
  v35 = sub_274589C3C(v13, v14, v15, v16, 0);
  sub_274412734(0, &qword_280952688, 0x277D750F8);
  sub_27463B70C("Cancel", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v17 = qword_28094BB00;
  v18 = sub_27463B66C();
  v19 = sub_27463B66C();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  sub_27463B6AC();
  v21 = OUTLINED_FUNCTION_31_10();
  v23 = sub_274589CF4(v21, v22, 1, 0, 0);
  [v35 addAction_];

  sub_27463B70C("Undo", 4);
  v24 = sub_27463B66C();
  v25 = sub_27463B66C();

  v26 = [v17 localizedStringForKey:v24 value:v25 table:0];

  v27 = sub_27463B6AC();
  v29 = v28;

  OUTLINED_FUNCTION_5();
  v30 = swift_allocObject();
  *(v30 + 16) = v11;
  v31 = v11;
  v32 = sub_274589CF4(v27, v29, 0, sub_274595588, v30);
  [v35 addAction_];

  [v5 presentViewController:v35 animated:1 completion:0];
  OUTLINED_FUNCTION_28_14();
}

id sub_274589C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_27463B66C();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_274589CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_274589DFC;
  v12[3] = &block_descriptor_368;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_274589DFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_274589F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_6();
  v56 = v4;
  v57 = v9;
  v10 = v3;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v52 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v51 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  v30 = sub_274637CFC();
  if (!v30)
  {
    v54 = 0u;
    v55 = 0u;
    goto LABEL_7;
  }

  v31 = v30;
  v53[6] = sub_27463B6AC();
  v53[7] = v32;
  sub_27463C31C();
  sub_27452F2E4(v31, &v54);

  sub_274430664(v53);
  if (!*(&v55 + 1))
  {
LABEL_7:
    sub_274415174(&v54, &unk_28094A230, &qword_27464D1B0);
    goto LABEL_8;
  }

  sub_274412734(0, &qword_280952668, 0x277CCAE60);
  if (swift_dynamicCast())
  {
    v33 = v53[0];
    [v53[0] CGRectValue];
    OUTLINED_FUNCTION_6_6();

    if ((v10[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] & 1) == 0)
    {
      v10[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] = 1;
      sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      v49 = sub_27463BCEC();
      sub_27463B22C();
      sub_27463B28C();
      v50 = *(v23 + 8);
      v50(v26, v21);
      v34 = swift_allocObject();
      v34[2] = v10;
      v34[3] = v5;
      v34[4] = v6;
      v34[5] = v7;
      v34[6] = v8;
      v53[4] = sub_274594F10;
      v53[5] = v34;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v53[2] = v35;
      v53[3] = &block_descriptor_362;
      v48 = _Block_copy(v53);
      v36 = v10;

      sub_27463B20C();
      v53[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_4_31();
      v47 = sub_274594370(v37, 255, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      OUTLINED_FUNCTION_19_5();
      sub_274458A14(v39, v40, &unk_27464D1A0);
      sub_27463C1EC();
      v41 = v48;
      v42 = v49;
      MEMORY[0x277C58400](v29, v20, v15, v48);
      _Block_release(v41);

      v43 = OUTLINED_FUNCTION_13_3();
      v44(v43);
      v45 = OUTLINED_FUNCTION_32_9();
      v46(v45);
      v50(v29, v21);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_28_14();
}

void sub_27458A3CC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0, &qword_27465C078);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_274589024();
  [v14 convertRect:0 fromView:{a2, a3, a4, a5}];

  v15 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView;
  [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) safeAreaInsets];
  [*(a1 + v15) bounds];
  CGRectGetMaxY(v33);
  v16 = *(a1 + v15);
  sub_274589340();
  [v16 contentInset];
  [v16 setContentInset_];

  v17 = *(a1 + v15);
  [v17 verticalScrollIndicatorInsets];
  [v17 setVerticalScrollIndicatorInsets_];

  v18 = [*(a1 + v15) firstResponder];
  if (v18)
  {
    v31 = v18;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + v15);
      v22 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
      swift_beginAccess();
      (*(v11 + 16))(v13, v21 + v22, v10);
      v23 = sub_27463831C();
      (*(v11 + 8))(v13, v10);
      v24 = sub_274453594();
      for (i = 0; ; ++i)
      {
        if (v24 == i)
        {

          return;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x277C58B20](i, v23);
        }

        else
        {
          if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v26 = *(v23 + 8 * i + 32);
        }

        v27 = v26;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v20 isDescendantOfView_])
        {

          v29 = *(a1 + v15);

          sub_2745995F0(v30);

          return;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
      v28 = v31;
    }
  }
}

void sub_27458A858()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v3 = v0;
  v4 = sub_2745FB6C4(sub_274594F08, v1, 0.4, 1.0);
  [v4 startAnimation];

  v3[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] = 0;
}

void sub_27458A8F8(uint64_t a1)
{
  v2 = sub_274589024();
  sub_274589340();
  [v2 contentInset];
  [v2 setContentInset_];

  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView);
  [v3 verticalScrollIndicatorInsets];
  [v3 setVerticalScrollIndicatorInsets_];
}

id sub_27458AA8C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIKitEditorViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_27458ACC8()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 undoManager];

  return v3;
}

void sub_27458AD2C()
{
  sub_274591854();
  sub_27458AFD8();
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction))
  {

    sub_274638F0C();
  }
}

void sub_27458ADFC()
{
  sub_274591854();
  sub_27458D458();

  sub_27458AFD8();
}

void sub_27458AE88()
{
  sub_274591854();

  sub_27458AFD8();
}

void sub_27458AF14(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v4 indexOfAction_];
  if (v6 == sub_274637CAC())
  {
  }

  else
  {
    v7 = [v4 indentationLevelOfActionAtIndex_];

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

void sub_27458AFD8()
{
  v2 = v0;
  v239 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow];
  v3 = [v239 actions];
  v4 = sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v5 = sub_27463B81C();

  v6 = sub_274453594();
  v7 = MEMORY[0x277D84F90];
  v245 = v5;
  v248 = v0;
  v249 = v6;
  if (v6)
  {
    v254 = MEMORY[0x277D84F90];
    sub_2744512AC(0, v6 & ~(v6 >> 63), 0);
    v8 = v249;
    if (v249 < 0)
    {
      goto LABEL_208;
    }

    v9 = 0;
    v7 = v254;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;

      v1 = v254[2];
      v12 = v254[3];
      if (v1 >= v12 >> 1)
      {
        v13 = OUTLINED_FUNCTION_11_16(v12);
        sub_2744512AC(v13, v14, v15);
        v8 = v249;
      }

      ++v9;
      v254[2] = v1 + 1;
      v254[v1 + 4] = v11;
    }

    while (v8 != v9);
    v2 = v248;
  }

  v16 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers;
  if ((sub_2744F57D0(v7, *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction];
  if (v17)
  {
    v18 = *(*(v17 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v19 = v18;
  }

  else
  {
    v18 = 0;
  }

  v20 = [v239 inputAction];
  v21 = v20;
  if (!v18)
  {
    if (!v20)
    {

      v2 = v248;
      goto LABEL_61;
    }

    goto LABEL_22;
  }

  if (!v20)
  {
    v21 = v18;
LABEL_22:

    v2 = v248;
    goto LABEL_23;
  }

  v22 = sub_27463BF7C();

  v2 = v248;
  if (v22)
  {

    goto LABEL_61;
  }

LABEL_23:
  if (sub_27443AF38())
  {
    v1 = v2;
    v23 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction;
    if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction))
    {
      goto LABEL_30;
    }

    type metadata accessor for ActionCellViewModel();
    v24 = objc_allocWithZone(sub_2746383DC());
    OUTLINED_FUNCTION_21_2();
    v25 = sub_2746383CC();
    v26 = sub_27444A2FC(v25);

    v27 = type metadata accessor for WFEditorActionItem();
    OUTLINED_FUNCTION_40_6(v27);
    v28 = v1;
    *(v1 + v23) = sub_274591F38(v26, v1);
  }

  else
  {
    v29 = [v239 inputAction];
    if (v29)
    {
      v30 = v29;
      v31 = sub_27458CF88(v29, v2);

      *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction] = v31;
    }

    else
    {
      *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction] = 0;
    }
  }

  v1 = v248;
LABEL_30:
  *(v1 + v16) = v7;

  v242 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;
  v32 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v33 = sub_274453594();
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v35 = v33;
    v255 = MEMORY[0x277D84F90];
    v36 = v33 & ~(v33 >> 63);

    sub_2744512EC(0, v36, 0);
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_212;
    }

    v37 = 0;
    v38 = v255;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x277C58B20](v37, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v37 + 32);
      }

      v40 = sub_274599D28();
      v1 = *(v255 + 16);
      v41 = *(v255 + 24);
      if (v1 >= v41 >> 1)
      {
        v43 = OUTLINED_FUNCTION_11_16(v41);
        sub_2744512EC(v43, v44, v45);
      }

      ++v37;
      *(v255 + 16) = v1 + 1;
      v42 = v255 + 16 * v1;
      *(v42 + 32) = v40;
      *(v42 + 40) = v39;
    }

    while (v35 != v37);

    v5 = v245;
    v2 = v248;
    v46 = v249;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = v1;
    v38 = MEMORY[0x277D84F90];
    v46 = v249;
  }

  v7 = sub_27458D040(v38);
  if (v46)
  {
    v253 = v34;
    sub_27463C44C();
    if ((v249 & 0x8000000000000000) == 0)
    {
      v47 = 0;
      v48 = v5 & 0xC000000000000001;
      while (1)
      {
        v49 = v48 ? MEMORY[0x277C58B20](v47, v5) : *(v5 + 8 * v47 + 32);
        v50 = v49;
        sub_27463C74C();
        MEMORY[0x277C58EA0](v50);
        v51 = sub_27463C7AC();
        if (!*(v7 + 16))
        {
          break;
        }

        sub_274534DD8(v51);
        if ((v52 & 1) == 0)
        {
          break;
        }

LABEL_57:

        ++v47;
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
        if (v249 == v47)
        {

          v64 = v253;
          v2 = v248;
          goto LABEL_60;
        }
      }

      v53 = sub_274589024();
      sub_274599AE0();
      v55 = v54;

      if (v55)
      {
        type metadata accessor for WFEditorActionItem();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v57 = v56;
          sub_27463C74C();
          MEMORY[0x277C58EA0](v50);
          v58 = sub_27463C7AC();
          if (v58 == sub_274599D28())
          {
            sub_27458C778(v57, v248);
LABEL_56:
            v5 = v245;
            goto LABEL_57;
          }
        }
      }

      type metadata accessor for ActionCellViewModel();
      v59 = sub_27444A2FC(v50);
      v1 = v248;
      sub_27444974C([v248 undoManager]);
      v60 = type metadata accessor for WFEditorActionItem();
      OUTLINED_FUNCTION_40_6(v60);
      v61 = v248;
      v62 = v59;
      v63 = sub_274591F38(v62, v248);
      sub_27458C778(v63, v61);

      v50 = v62;
      goto LABEL_56;
    }

LABEL_212:
    __break(1u);
    return;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_60:
  *&v2[v242] = v64;
LABEL_61:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952600, &qword_27465C088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v66 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction;
  *(inited + 32) = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction];
  v228 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;

  sub_2745DBF74(v67);
  OUTLINED_FUNCTION_29_11();

  sub_27445C070(v7);
  v68 = 0;
  v69 = MEMORY[0x277D84F90];
  v254 = MEMORY[0x277D84F90];
  v4 = *(inited + 16);
  while (v4 != v68)
  {
    if (v68 >= *(inited + 16))
    {
      goto LABEL_199;
    }

    v1 = *(inited + 8 * v68++ + 32);
    if (v1)
    {

      MEMORY[0x277C57F30](v70);
      OUTLINED_FUNCTION_10_27();
      if (v72)
      {
        OUTLINED_FUNCTION_6_22(v71);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v69 = v254;
    }
  }

  v73 = sub_274453594();
  v74 = v73;
  v229 = v66;
  if (v73)
  {
    if (v73 < 1)
    {
      goto LABEL_209;
    }

    v75 = 0;
    v250 = v69 & 0xC000000000000001;
    do
    {
      if (v250)
      {
        v76 = MEMORY[0x277C58B20](v75, v69);
      }

      else
      {
        v76 = *(v69 + 8 * v75 + 32);
      }

      ++v75;
      sub_27458C778(v76, v2);
    }

    while (v74 != v75);
  }

  else
  {
    v250 = v69 & 0xC000000000000001;
  }

  sub_27458DC90(0);
  v77 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  v238 = v77;
  v78 = *&v2[v77];
  v79 = v78 + 64;
  v80 = 1 << *(v78 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v78 + 64);
  v4 = ((v80 + 63) >> 6);
  v1 = v69 & 0xFFFFFFFFFFFFFF8;
  v246 = v78;

  v83 = 0;
  v240 = v4;
  v243 = v79;
  if (v82)
  {
    while (2)
    {
      v84 = v83;
LABEL_84:
      v85 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v4 = *(*(v246 + 48) + ((v84 << 9) | (8 * v85)));

      v86 = 0;
      while (v74 != v86)
      {
        if (v250)
        {
          MEMORY[0x277C58B20](v86, v69);
        }

        else
        {
          if (v86 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_198;
          }
        }

        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:

          v117 = sub_27463C57C();
          goto LABEL_108;
        }

        v87 = sub_274599D28();
        v88 = sub_274599D28();

        ++v86;
        if (v87 == v88)
        {

          v83 = v84;
          v2 = v248;
          goto LABEL_94;
        }
      }

      v2 = v248;
      swift_beginAccess();
      sub_2745A7D40(v4);
      swift_endAccess();

      v83 = v84;
LABEL_94:
      v4 = v240;
      v79 = v243;
      if (!v82)
      {
        goto LABEL_81;
      }

      continue;
    }
  }

  while (1)
  {
LABEL_81:
    v84 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_200;
    }

    if (v84 >= v4)
    {
      break;
    }

    v82 = *(v79 + 8 * v84);
    ++v83;
    if (v82)
    {
      goto LABEL_84;
    }
  }

  OUTLINED_FUNCTION_5();
  v218 = swift_allocObject();
  *(v218 + 16) = MEMORY[0x277D84F90];
  v89 = *&v2[v229];
  if (v89)
  {

    v90 = sub_27458909C();
    sub_274595A48(v90);
    sub_274595A48(v89);
  }

  v238 = (v218 + 16);
  v4 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  swift_beginAccess();
  v91 = *(v4 + v2);
  type metadata accessor for WFEditorItem();
  v92 = type metadata accessor for WFEditorActionOutputItem();
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v93, 255, v94);
  v235 = v91;

  v226 = MEMORY[0x277D84F90];
  v233 = v92;
  *(v4 + v2) = sub_27463B4DC();

  v95 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
  swift_getKeyPath();
  swift_getKeyPath();
  v237 = v95;
  OUTLINED_FUNCTION_13_3();
  sub_274638FAC();

  v231 = v4;
  if (v262)
  {
    sub_27443C9D4(v254, v257, v258, v259, v260, v261, v262);
LABEL_104:
    v1 = v248;
    goto LABEL_105;
  }

  if ((v257 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_104;
  }

  if (*&v248[v229])
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v97 = OUTLINED_FUNCTION_44(v96);
    *(v97 + 16) = xmmword_274648560;

    v98 = [v239 actionTree];
    v99 = [v98 shortcutInputActionOutput];

    *(v97 + 32) = v99;
    v100 = OUTLINED_FUNCTION_23_13();
    sub_27458D0F4(v100, v101, v102, v103, v104, v105, v106, v218);
  }

  else
  {
    sub_27458909C();
    sub_274547EA0();
    sub_2745C373C(0, 0);
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v182 = OUTLINED_FUNCTION_44(v181);
    *(v182 + 16) = xmmword_274648560;
    v183 = [v239 actionTree];
    v184 = [v183 shortcutInputActionOutput];

    *(v182 + 32) = v184;

    v185 = OUTLINED_FUNCTION_23_13();
    sub_27458D0F4(v185, v186, v187, v188, v189, v190, v191, v218);
  }

  swift_unknownObjectRelease();

  v1 = v248;
  v4 = v231;
LABEL_105:
  v107 = (v218 + 16);
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = sub_274453594();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_18_12(KeyPath, v109, v110, v111, v112, v113, v114, v115, v215, v218, v220, v222, v223, v224, v226, v227, v228, v229, v231, v233, v235, v237);

  if (v262)
  {
    sub_27443C9D4(v254, v257, v258, v259, v260, v261, v262);
    v116 = *(v1 + v228);
    if (v116 >> 62)
    {
      goto LABEL_210;
    }

    swift_bridgeObjectRetain_n();
    sub_27463C6CC();
    v117 = v116;
LABEL_108:

    v107 = v238;
    swift_beginAccess();
    sub_27445BD4C(v117);
    swift_endAccess();
    goto LABEL_156;
  }

  v220 = v258;
  v222 = v259;
  v118 = *(v1 + v228);
  v244 = sub_274453594();
  if (v244)
  {
    v241 = v118 & 0xC000000000000001;
    v223 = v118 + 32;
    v224 = v118 & 0xFFFFFFFFFFFFFF8;
    v227 = v234 & 0xC000000000000001;
    v119 = v234 & 0xFFFFFFFFFFFFFF8;
    if (v234 < 0)
    {
      v119 = v234;
    }

    v215 = v119;

    v120 = 0;
    v228 = v118;
    v229 = v254;
    while (1)
    {
      if (v241)
      {
        v121 = MEMORY[0x277C58B20](v120, v118);
      }

      else
      {
        if (v120 >= *(v224 + 16))
        {
          goto LABEL_204;
        }

        v121 = *(v223 + 8 * v120);
      }

      if (__OFADD__(v120++, 1))
      {
        goto LABEL_201;
      }

      OUTLINED_FUNCTION_24_10();

      MEMORY[0x277C57F30](v123);
      OUTLINED_FUNCTION_10_27();
      if (v72)
      {
        OUTLINED_FUNCTION_6_22(v124);
        sub_27463B85C();
      }

      sub_27463B8AC();
      swift_endAccess();
      objc_opt_self();
      v125 = swift_dynamicCastObjCClass();
      if (v125)
      {
        break;
      }

LABEL_152:
      if (v120 == v244)
      {
        swift_unknownObjectRelease();

        goto LABEL_156;
      }
    }

    v126 = v125;
    v247 = v120;
    swift_unknownObjectRetain();
    v127 = [v239 actionTree];
    v251 = v121;
    v128 = [v127 outputsForAction:*(*(v121 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) inScopeOfAction:v126];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952610, &qword_274652550);
    OUTLINED_FUNCTION_21_2();
    v129 = sub_27463B81C();

    if (v129 >> 62)
    {
      v130 = sub_27463C27C();
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v130 < 1)
    {

      swift_unknownObjectRelease();

LABEL_151:
      v120 = v247;
      goto LABEL_152;
    }

    v256 = MEMORY[0x277D84F90];
    sub_27445128C(0, v130, 0);
    v131 = 0;
    do
    {
      if ((v129 & 0xC000000000000001) != 0)
      {
        v132 = MEMORY[0x277C58B20](v131, v129);
      }

      else
      {
        v132 = *(v129 + 8 * v131 + 32);
        swift_unknownObjectRetain();
      }

      v133 = [v132 identifier];
      v134 = sub_27463B6AC();
      v136 = v135;
      swift_unknownObjectRelease();

      v138 = *(v256 + 16);
      v137 = *(v256 + 24);
      if (v138 >= v137 >> 1)
      {
        v140 = OUTLINED_FUNCTION_11_16(v137);
        sub_27445128C(v140, v141, v142);
      }

      ++v131;
      *(v256 + 16) = v138 + 1;
      v139 = v256 + 16 * v138;
      *(v139 + 32) = v134;
      *(v139 + 40) = v136;
    }

    while (v130 != v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
    sub_274458A14(&unk_28094D1D0, &qword_28094D110, &qword_27464FCD0);
    v143 = sub_27463B58C();
    v145 = v144;

    sub_274599D28();
    v146 = sub_27463C66C();
    v148 = v147;
    v254 = v143;
    v257 = v145;

    MEMORY[0x277C57EA0](v146, v148);

    v1 = v248;
    if (v227)
    {

      v149 = sub_27463C53C();

      v107 = v238;
      v4 = v230;
      if (!v149 || (swift_dynamicCast(), !v254))
      {
LABEL_141:
        swift_allocObject();
        sub_27459299C(v129, v229, v258, v259, v254, v145, v236);
        swift_unknownObjectRetain();
        v153 = v236;

        goto LABEL_142;
      }
    }

    else
    {
      v107 = v238;
      v4 = v230;
      if (!*(v234 + 16))
      {
        goto LABEL_141;
      }

      v150 = sub_274534D60(v251);
      if ((v151 & 1) == 0)
      {
        goto LABEL_141;
      }

      v152 = *(*(v234 + 56) + 8 * v150);

      if (!v152)
      {
        goto LABEL_141;
      }
    }

LABEL_142:
    swift_beginAccess();
    v154 = *(v4 + v248);
    v118 = v228;
    if ((v154 & 0xC000000000000001) != 0)
    {
      if (v154 >= 0)
      {
        v154 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v155 = sub_27463C27C();
      if (__OFADD__(v155, 1))
      {
        goto LABEL_205;
      }

      sub_2745FBB54(v154, v155 + 1, v156, v157, v158);
      *(v4 + v248) = v159;
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    v252 = *(v4 + v248);
    sub_2745FC2C4();
    *(v4 + v248) = v252;
    swift_endAccess();
    v160 = OUTLINED_FUNCTION_24_10();
    MEMORY[0x277C57F30](v160);
    OUTLINED_FUNCTION_10_27();
    if (v72)
    {
      OUTLINED_FUNCTION_6_22(v161);
      sub_27463B85C();
    }

    sub_27463B8AC();
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_151;
  }

  swift_unknownObjectRelease();

LABEL_156:
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
  {
    OUTLINED_FUNCTION_24_10();
    v162 = swift_retain_n();
    sub_274595A48(v162);
    swift_endAccess();
  }

  v163 = *(v4 + v1);

  v164 = sub_274593C98(v234, v163);

  v4 = &unk_280952000;
  if ((v164 & 1) == 0)
  {
    swift_getKeyPath();
    v165 = swift_getKeyPath();
    OUTLINED_FUNCTION_18_12(v165, v166, v167, v168, v169, v170, v171, v172, v215, v217, v220, v222, v223, v224, v225, v227, v228, v229, v230, v232, v234, v236);

    if (v262)
    {
      sub_27443C9D4(v254, v257, v258, v259, v260, v261, v262);
    }

    else
    {

      objc_opt_self();
      OUTLINED_FUNCTION_0_10();
      if (swift_dynamicCastObjCClass())
      {
        v1 = *v238;
        v254 = MEMORY[0x277D84F90];
        v173 = sub_274453594();
        swift_unknownObjectRetain();
        v174 = 0;
        while (v173 != v174)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x277C58B20](v174, v1);
          }

          else
          {
            if (v174 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_203;
            }
          }

          if (__OFADD__(v174, 1))
          {
            goto LABEL_202;
          }

          type metadata accessor for WFEditorActionItem();
          v175 = swift_dynamicCastClass();
          if (v175)
          {
            v4 = v175;
            MEMORY[0x277C57F30]();
            OUTLINED_FUNCTION_10_27();
            if (v72)
            {
              OUTLINED_FUNCTION_6_22(v176);
              sub_27463B85C();
            }

            sub_27463B8AC();
            v225 = v254;
            ++v174;
          }

          else
          {

            ++v174;
          }
        }

        v1 = sub_274453594();
        v177 = 0;
        v4 = (v225 & 0xC000000000000001);
        while (1)
        {
          if (v1 == v177)
          {
            swift_unknownObjectRelease_n();

            v1 = v248;
            v107 = v238;
            v4 = &unk_280952000;
            goto LABEL_189;
          }

          if (v4)
          {
            v178 = MEMORY[0x277C58B20](v177, v225);
          }

          else
          {
            if (v177 >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v178 = *(v225 + 8 * v177 + 32);
          }

          if (__OFADD__(v177, 1))
          {
            goto LABEL_206;
          }

          sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
          v179 = *(*(v178 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
          v180 = sub_27463BF7C();

          if (v180)
          {
            break;
          }

          ++v177;
        }

        swift_unknownObjectRelease_n();
        v4 = &unk_280952000;
        v1 = v248;
        *&v248[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction] = v178;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v107 = v238;
    }
  }

LABEL_189:
  v192 = *v107;
  v193 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items;
  v194 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);

  sub_2744F5CC8(v192, v194, v195, v196, v197, v198, v199, v200, v215, v217, v220);
  v202 = v201;

  if ((v202 & 1) == 0)
  {
    *(v1 + v193) = v192;

    v203 = sub_274589024();
    v204 = *(v1 + v4[159]);

    sub_274595CB8(1, MEMORY[0x277D84F90], 1, v204);

    v205 = sub_274453594() < 1;
    sub_27458E110(v205);
  }

  v206 = v4[159];
  if (*(v1 + v206))
  {
    swift_getKeyPath();
    v207 = swift_getKeyPath();
    OUTLINED_FUNCTION_18_12(v207, v208, v209, v210, v211, v212, v213, v214, v216, v219, v221, v222, v223, v224, v225, v227, v228, v229, v230, v232, v234, v236);

    if (v262)
    {
      sub_27443C9D4(v254, v257, v258, v259, v260, v261, v262);
      *(v1 + v206) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_27458C778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952618, &unk_27465C090);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620, &qword_27464B198);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952628, &unk_27465C0A0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  swift_beginAccess();
  if (!*(*(a2 + v14) + 16) || (, sub_274534D60(a1), v16 = v15, result = , (v16 & 1) == 0))
  {
    v18 = sub_274453594();
    v53 = v5;
    v54 = v4;
    v51 = v7;
    v52 = v14;
    if (v18)
    {
      sub_274573FD0();
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    v62 = v19;
    v49 = *(a1 + 32);
    v57 = a1;
    v58 = *(v49 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_onChange);
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);

    v20 = sub_27463BCEC();
    v61 = v20;
    v48 = sub_27463BCDC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952630, &unk_27465F290);
    v47 = MEMORY[0x277CBCE20];
    sub_274458A14(&qword_280952638, &qword_280952630, &unk_27465F290);
    v46 = sub_274594E5C(&qword_280952640, &qword_28094AF90, 0x277D85C78);
    sub_274638FDC();
    sub_274415174(v10, &qword_280952620, &qword_27464B198);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v57;
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    sub_274458A14(&qword_280952648, &qword_280952628, &unk_27465C0A0);

    v24 = v56;
    v25 = sub_274638FFC();

    (*(v55 + 8))(v13, v24);
    v50 = v25;

    sub_2745219BC(&v58, v25, v26, v27, v28, v29, v30, v31, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);

    v58 = *(v49 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_onParameterStateChange);

    v32 = sub_27463BCEC();
    v61 = v32;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
    sub_274458A14(&qword_280951E60, &unk_28094AF80, &unk_27464A6E0);
    v33 = v51;
    sub_274638FDC();
    sub_274415174(v10, &qword_280952620, &qword_27464B198);

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_274594F00;
    *(v35 + 24) = v34;
    sub_274458A14(&unk_280952650, &qword_280952618, &unk_27465C090);
    v36 = v54;
    v37 = sub_274638FFC();

    (*(v53 + 8))(v33, v36);

    sub_2745219BC(&v58, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);

    v44 = v52;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v61 = *(a2 + v44);
    sub_2745FBE8C();
    *(a2 + v44) = v61;
    swift_endAccess();
  }

  return result;
}

void sub_27458CDD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_274589024();
    v8 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
    swift_beginAccess();
    v9 = sub_27452F0D0(a3, *&v7[v8]);
    swift_endAccess();

    if (v9)
    {
      type metadata accessor for WFEditorActionCell();
      if (swift_dynamicCastClass())
      {
        sub_274592234();
        v10 = *&v6[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_274648560;
        *(inited + 32) = a3;
        v12 = v10;

        sub_274595CB8(v4, inited, 1, 0);

        swift_setDeallocating();
        sub_2744EBB98();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_27458CF34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_274591854();
  }
}

uint64_t sub_27458CF88(void *a1, void *a2)
{
  type metadata accessor for ActionCellViewModel();
  v4 = sub_27444A2FC(a1);
  sub_27444974C([a2 undoManager]);
  type metadata accessor for WFEditorActionItem();
  swift_allocObject();
  v5 = v4;
  v6 = a2;
  v7 = sub_274591F38(v5, a2);
  sub_27458C778(v7, v6);

  return v7;
}

uint64_t sub_27458D040(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A508, &qword_274649280);
    v1 = sub_27463C61C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_274594028(v2, 1, &v4);

  return v4;
}

void sub_27458D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_274453594();
  v32 = a4;
  v33 = a2;
  if (v11)
  {
    v12 = v11;
    v38 = MEMORY[0x277D84F90];
    sub_27445128C(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x277C58B20](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v15 = [v14 identifier];
      v16 = sub_27463B6AC();
      v18 = v17;
      swift_unknownObjectRelease();

      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_27445128C(v19 > 1, v20 + 1, 1);
      }

      ++v13;
      *(v38 + 16) = v20 + 1;
      v21 = v38 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v12 != v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  sub_274458A14(&unk_28094D1D0, &qword_28094D110, &qword_27464FCD0);
  v22 = sub_27463B58C();
  v24 = v23;

  sub_274599D28();
  v25 = sub_27463C66C();
  v27 = v26;
  v39 = v24;

  MEMORY[0x277C57EA0](v25, v27);

  v28 = v22;
  if (sub_27452F16C(a3, a6))
  {
  }

  else
  {
    v29 = *(a7 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
    type metadata accessor for WFEditorActionOutputItem();
    swift_allocObject();
    sub_27459299C(a1, v33, v32, a5, v28, v39, v29);

    v30 = v29;
    swift_unknownObjectRetain();
  }

  swift_beginAccess();

  sub_2745FB8A0();
  swift_endAccess();
  v31 = swift_beginAccess();
  MEMORY[0x277C57F30](v31);
  sub_2745C4440();
  sub_27463B8AC();
  swift_endAccess();
}

uint64_t sub_27458D458()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
  {
    return sub_27443A580();
  }

  return result;
}

void sub_27458D494(id a1)
{
  v2 = v1;
  sub_274591854();
  v4 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem;
  v5 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 32);
    sub_274412734(0, &unk_280950440, 0x277CFC2E0);
    v7 = v6;
    a1 = a1;
    v8 = sub_27463BF7C();

    if (v8)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = a1;
  if ([v9 numberOfItems] >= 1)
  {
    v10 = type metadata accessor for WFEditorWorkflowOutputItem();
    *(OUTLINED_FUNCTION_44(v10) + 32) = v9;
    v11 = WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(1, 1, 0);
    goto LABEL_10;
  }

LABEL_9:
  v11 = 0;
LABEL_10:
  *(v2 + v4) = v11;

  sub_27458AFD8();
  v12 = *(v2 + v4);
  if (v12)
  {

    v13 = sub_274589024();
    sub_2745995F0(v12);
  }
}

void sub_27458D604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2746381FC();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_0();
  v9 = (v8 - v7);
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain();
    v12 = [v2 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 2)
    {
      sub_27463851C();
      sub_27463850C();
      v14 = *(*(v11 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      sub_2746384FC();

      OUTLINED_FUNCTION_5();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = OUTLINED_FUNCTION_44(&unk_28836FC08);
      v16[2] = v15;
      v16[3] = a1;
      v16[4] = a2;
      v17 = objc_allocWithZone(type metadata accessor for WFActionDetailsViewController(0));
      swift_unknownObjectRetain();
      WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(v9, 0, sub_274594E50, v16);
      v19 = v18;
      [v18 setModalPresentationStyle_];
      v20 = [v19 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        v22 = sub_274589024();
        v23 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
        swift_beginAccess();
        v24 = *&v22[v23];
        swift_unknownObjectRetain();
        v25 = sub_27452F0D0(v11, v24);
        swift_endAccess();

        swift_unknownObjectRelease();
        if (v25)
        {
          type metadata accessor for WFEditorActionCell();
          OUTLINED_FUNCTION_21_2();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            v28 = v25;
            [v21 setSourceView_];
            [v27 bounds];
            OUTLINED_FUNCTION_6_6();

            v29 = OUTLINED_FUNCTION_7_16();
            [v30 v31];
          }

          v21 = v25;
        }
      }

      [v3 presentViewController:v19 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = *(*(v11 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      sub_27443E144(v36);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_27463C38C();
    MEMORY[0x277C57EA0](0xD000000000000012, 0x800000027468E1B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809525F8, &qword_27465C080);
    sub_27463C4BC();
    MEMORY[0x277C57EA0](0xD00000000000001DLL, 0x800000027468E1D0);
    OUTLINED_FUNCTION_25_15("Fatal error", v32, v33, 0, 0xE000000000000000, "WorkflowEditor/UIKitEditorViewController.swift", v34, v35, 545, 0);
    __break(1u);
  }
}

void sub_27458D9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow);

    v6 = [v5 actions];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    sub_27463B81C();

    v7 = sub_274453594();

    v8 = *(*(a2 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v9 = [v8 copyForDuplicating];
    }

    else
    {
      v21 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
      v22 = sub_27463B4DC();
      v9 = sub_2745942EC(v22, v21);
    }

    v10 = v9;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);

      v14 = &v13[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = *(v14 + 1);

      if (v15)
      {
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_274648560;
        *(v18 + 32) = v10;
        v19 = *(v16 + 32);
        v20 = v10;
        v19(v18, v7, ObjectType, v16);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_27458DC90(char a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84FA0];
  v51 = MEMORY[0x277D84FA0];
  v41 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;
  v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v5 = sub_274453594();
  v43 = v1;
  if (v5)
  {
    v6 = v5;
    v7 = v4 & 0xC000000000000001;
    v47 = v4 & 0xFFFFFFFFFFFFFF8;
    v48 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow;
    v46 = v4 + 32;

    v8 = 0;
    v44 = v4 & 0xC000000000000001;
    v45 = v6;
    v42 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x277C58B20](v8, v4);
      }

      else
      {
        if (v8 >= *(v47 + 16))
        {
          goto LABEL_52;
        }

        v9 = *(v46 + 8 * v8);
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        __break(1u);
        goto LABEL_51;
      }

      v11 = *(v9 + 32);
      v12 = sub_274449E74();

      if (v12)
      {
        v13 = [*(v2 + v48) actionTree];
        v14 = [v13 actionsInControlFlowBranch_];

        if (v14)
        {
          break;
        }
      }

LABEL_28:
      if (v8 == v6)
      {

        v3 = v51;
        goto LABEL_30;
      }
    }

    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_0_10();
    v15 = sub_27463B81C();

    if (v15 >> 62)
    {
      v16 = sub_27463C27C();
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_12:
        v50 = MEMORY[0x277D84F90];
        sub_2744512AC(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_54;
        }

        v17 = 0;
        v18 = v50;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x277C58B20](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;

          v22 = *(v50 + 16);
          v21 = *(v50 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2744512AC((v21 > 1), v22 + 1, 1);
          }

          ++v17;
          *(v50 + 16) = v22 + 1;
          *(v50 + 8 * v22 + 32) = v20;
        }

        while (v16 != v17);

        v4 = v42;
        v2 = v43;
        goto LABEL_24;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_24:
    v23 = *(v18 + 16);
    v7 = v44;
    if (v23)
    {
      v24 = 32;
      do
      {
        sub_27452179C();
        v24 += 8;
        --v23;
      }

      while (v23);
    }

    v6 = v45;
    goto LABEL_28;
  }

LABEL_30:
  v25 = *(v2 + v41);
  v26 = sub_274453594();
  if (v26)
  {
    v27 = v26;

    v28 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x277C58B20](v28, v25);
      }

      else
      {
        if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v29 = *(v25 + 32 + 8 * v28);
      }

      v10 = __OFADD__(v28++, 1);
      if (v10)
      {
        break;
      }

      if (*(v3 + 16))
      {
        v30 = *(*(v29 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        sub_27463C74C();
        MEMORY[0x277C58EA0](v30);
        v31 = sub_27463C7AC();
        v32 = ~(-1 << *(v3 + 32));
        do
        {
          v33 = v31 & v32;
          v34 = (1 << (v31 & v32)) & *(v3 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8));
          v35 = v34 != 0;
          if (!v34)
          {
            break;
          }

          v31 = v33 + 1;
        }

        while (*(*(v3 + 48) + 8 * v33) != v30);
      }

      else
      {
        v35 = 0;
      }

      *(v29 + 25) = v35;

      if (v28 == v27)
      {

        goto LABEL_45;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
LABEL_45:

    if (a1)
    {
      v49 = sub_274589024();
      OUTLINED_FUNCTION_35_6();
      sub_274595CB8(v36, v37, v38, v39);
    }
  }
}

void sub_27458E110(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  objc_allocWithZone(MEMORY[0x277D75D40]);
  v4 = v1;
  v5 = sub_2745FB6C4(sub_274594E44, v3, 0.8, 1.0);
  v7 = v5;
  v6 = 0.2;
  if ((a1 & 1) == 0)
  {
    v6 = 0.0;
  }

  [v5 startAnimationAfterDelay_];
}

void sub_27458E1D8(uint64_t a1, char a2)
{
  v4 = sub_274588FB0();
  [v4 setHidden_];

  v5 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
  v6 = 1.0;
  if (a2)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 50.0;
  }

  [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) setAlpha_];
  v11 = [*(a1 + v5) layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_274648570;
  v9 = sub_274412734(0, &qword_2809525F0, 0x277CD9EA0);
  v10 = sub_274412F10(v7);
  *(v8 + 56) = v9;
  *(v8 + 32) = v10;
  sub_2745A85D0(v8, v11);
}

void sub_27458E300(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v4 = sub_274453594();

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (*(*(v6 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == *a1)
    {

      sub_274589024();
      sub_2745995F0(v6);

      OUTLINED_FUNCTION_21_10();

      return;
    }
  }

  OUTLINED_FUNCTION_21_10();
}

void sub_27458E448()
{
  OUTLINED_FUNCTION_30_10();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v83 = v3;
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v82 = v5 - v4;
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v86 = v6;
  v87 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v85 = v9 - v8;
  v80 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v77 = v10;
  MEMORY[0x28223BE20](v11);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0, &qword_27465C078);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  v76 = *v1;
  LODWORD(v78) = *(v1 + 48);
  v81 = v0;
  v21 = sub_274589024();
  v22 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  (*(v17 + 16))(v20, &v21[v22], v15);

  v23 = sub_27463831C();
  (*(v17 + 8))(v20, v15);
  v24 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  v25 = sub_274453594();
  v26 = 0;
  v27 = v24;
  v28 = v24;
  while (v25 != v26)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x277C58B20](v26, v23);
    }

    else
    {
      if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v29 = *(v23 + 8 * v26 + 32);
    }

    v30 = v29;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    type metadata accessor for WFEditorActionCell();
    OUTLINED_FUNCTION_0_10();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x277C57F30]();
      OUTLINED_FUNCTION_10_27();
      if (v32)
      {
        OUTLINED_FUNCTION_6_22(v31);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v27 = aBlock;
      ++v26;
      v24 = v28;
    }

    else
    {

      ++v26;
      v24 = v28;
    }
  }

  v33 = sub_274453594();
  v34 = v87;
  v35 = v85;
  if (v33)
  {
    v36 = v33;
    if (v33 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C58B20](i, v27);
      }

      else
      {
        v38 = *(v27 + 8 * i + 32);
      }

      v39 = v38;
      sub_274592234();
    }
  }

  v40 = "VariableProviderKey";
  if (v78 == 1)
  {
    v41 = v76;
    v92 = v76;
    v93 = 1;
    v94 = 0;
    v95 = 0;
    v96 = 1;
    v42 = v81;
    sub_27458E300(&v92);
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v74 = sub_27463BCEC();
    v43 = v75;
    sub_27463B22C();
    sub_27463B28C();
    v78 = *(v77 + 8);
    v78(v43, v80);
    OUTLINED_FUNCTION_39();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v41;
    OUTLINED_FUNCTION_12_18(v44);
    v89 = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v90 = v45;
    v91 = &block_descriptor_335;
    v46 = _Block_copy(&aBlock);
    v47 = v42;
    v48 = v41;

    sub_27463B20C();
    aBlock = v24;
    OUTLINED_FUNCTION_4_31();
    sub_274594370(v49, 255, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    OUTLINED_FUNCTION_19_5();
    v51 = v42;
    sub_274458A14(v52, v53, &unk_27464D1A0);
    v54 = v82;
    v24 = v28;
    v55 = v35;
    v56 = v84;
    v40 = "VariableProviderKey";
    sub_27463C1EC();
    v57 = v79;
    v58 = v74;
    MEMORY[0x277C58400](v79, v55, v54, v46);
    _Block_release(v46);

    v59 = v83;
    (*(v83 + 8))(v54, v56);
    v60 = v87;
    (*(v87 + 8))(v55, v86);
    v78(v57, v80);
    v61 = v60;
  }

  else
  {
    v51 = v81;
    v54 = v82;
    *(v81 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
    v55 = v35;
    v59 = v83;
    v56 = v84;
    v61 = v34;
  }

  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v85 = sub_27463BCEC();
  OUTLINED_FUNCTION_5();
  v62 = swift_allocObject();
  *(v62 + 16) = v51;
  OUTLINED_FUNCTION_12_18(v62);
  v89 = *(v40 + 69);
  OUTLINED_FUNCTION_7_19();
  v90 = v63;
  v91 = &block_descriptor_329;
  v64 = _Block_copy(&aBlock);
  v65 = v51;
  v66 = v64;
  v67 = v65;

  sub_27463B20C();
  aBlock = v24;
  OUTLINED_FUNCTION_4_31();
  sub_274594370(v68, 255, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  OUTLINED_FUNCTION_19_5();
  sub_274458A14(v70, v71, &unk_27464D1A0);
  sub_27463C1EC();
  v72 = v85;
  MEMORY[0x277C58440](0, v55, v54, v66);
  _Block_release(v66);

  (*(v59 + 8))(v54, v56);
  (*(v61 + 8))(v55, v86);
}

void sub_27458EC14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v5 = sub_274453594();

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

LABEL_14:
      memset(v13, 0, sizeof(v13));
      v14 = 2;
      sub_27443CA58(v13);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C58B20](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(*(v7 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == a2)
    {

      v8 = sub_274589024();
      v9 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v10 = *&v8[v9];

      v12 = sub_27452F0D0(v11, v10);

      if (v12)
      {
        swift_endAccess();

        [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) bringSubviewToFront_];
        sub_2745885D0(v12, 1);

        *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 1;
        return;
      }

      swift_endAccess();

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_27458EDF0(void *a1)
{
  v5 = v1;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 anchor];
    v8 = [v7 variableProvider];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v82 = v6;
      v83 = v5;
      v9 = sub_274589024();
      v5 = sub_274599B58();

      v10 = MEMORY[0x277D84F90];
      aBlock = MEMORY[0x277D84F90];
      v11 = sub_274453594();
      v12 = 0;
      while (v11 != v12)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x277C58B20](v12, v5);
        }

        else
        {
          if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v4 = *(v5 + 8 * v12 + 32);
        }

        v3 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v42 = v2;
          v25 = &selRef_dropTargetUpdated;
LABEL_47:

LABEL_53:
          [v4 dismissViewControllerAnimated:0 completion:{0, v81}];
          v27 = &selRef_removeObserver_name_object_;
          v24 = 0x1FB6F1000;
          goto LABEL_54;
        }

        type metadata accessor for WFEditorActionItem();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v2 = v13;
          MEMORY[0x277C57F30]();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_27463B85C();
          }

          sub_27463B8AC();
          v10 = aBlock;
          ++v12;
        }

        else
        {

          ++v12;
        }
      }

      v81 = v8;

      v11 = sub_274453594();
      v4 = 0;
      v8 = (v10 & 0xC000000000000001);
      v5 = v10 & 0xFFFFFFFFFFFFFF8;
      v3 = &OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
      while (1)
      {
        if (v11 == v4)
        {

          swift_unknownObjectRelease();

          v5 = v83;
          goto LABEL_33;
        }

        if (v8)
        {
          v14 = MEMORY[0x277C58B20](v4, v10);
        }

        else
        {
          if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v14 = *(v10 + 8 * v4 + 32);
        }

        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
        v15 = *(*(v14 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        v12 = sub_27463BF7C();

        if (v12)
        {
          break;
        }

        ++v4;
      }

      v5 = v83;
      v16 = *&v83[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
      v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v18 = *&v16[v17];

      v19 = v16;
      v3 = sub_27452F0D0(v14, v18);

      if (!v3)
      {
        swift_endAccess();

        swift_unknownObjectRelease();

        goto LABEL_33;
      }

      swift_endAccess();

      v20 = [v83 view];
      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = v20;
      [v20 endEditing_];

      v22 = *&v83[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
      v8 = v82;
      v10 = v22;
      v23 = [v83 presentedViewController];
      v24 = &selRef_tagPickerDidCancel_;
      v25 = &selRef_dropTargetUpdated;
      v26 = &selRef_dropTargetUpdated;
      v27 = &selRef_removeObserver_name_object_;
      if (!v23)
      {
        goto LABEL_55;
      }

      v11 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8, &qword_27465C010);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v4 = v28;
        v29 = [v83 traitCollection];
        v30 = [v29 horizontalSizeClass];

        if (v30 == 1)
        {
LABEL_31:

          aBlock = v10;
          v85 = v8;
          v31 = v8;
          v32 = v10;
          sub_274639CEC();

          swift_unknownObjectRelease();
          return;
        }

        v40 = [v4 popoverPresentationController];
        v2 = [v40 sourceView];

        v41 = [v8 anchor];
        v42 = [v41 sourceView];

        if (v2)
        {
          if (!v42)
          {
            goto LABEL_46;
          }

          sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
          OUTLINED_FUNCTION_13_5();
          v43 = sub_27463BF7C();

          v25 = &selRef_dropTargetUpdated;
          if ((v43 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v25 = &selRef_dropTargetUpdated;
          if (v42)
          {
            goto LABEL_47;
          }
        }

        v44 = [v4 popoverPresentationController];
        v12 = v44;
        if (v44)
        {
          [v44 sourceRect];
          OUTLINED_FUNCTION_6_6();

          v45 = &selRef_maximumDate;
LABEL_51:
          v46 = [v8 v45[239]];
          [v46 sourceRect];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;

          v25 = &selRef_dropTargetUpdated;
          if (v12)
          {
            v90.origin.x = OUTLINED_FUNCTION_7_16();
            v91.origin.x = v48;
            v91.origin.y = v50;
            v91.size.width = v52;
            v91.size.height = v54;
            if (CGRectEqualToRect(v90, v91))
            {
              goto LABEL_31;
            }
          }

          goto LABEL_53;
        }

LABEL_50:
        v45 = &selRef_maximumDate;
        goto LABEL_51;
      }

LABEL_54:

      v26 = &selRef_dropTargetUpdated;
LABEL_55:
      aBlock = v10;
      v85 = v8;
      v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8, &qword_27465C010));
      v56 = v8;
      v57 = v10;
      v58 = sub_274639CDC();
      v59 = v24;
      v60 = v58;
      v61 = [v5 (v59 + 1016)];
      v62 = [v61 v25[83]];

      v63 = v60;
      v64 = v63;
      if (v62 == 2)
      {
        [v63 setModalPresentationStyle_];
        v65 = [v64 v26[428]];

        if (v65)
        {
          v66 = [v56 anchor];
          v67 = [v66 sourceView];

          if (!v67)
          {
            v67 = v3;
          }

          [v65 setSourceView_];

          v68 = [v56 anchor];
          [v68 v27[420]];
          OUTLINED_FUNCTION_6_6();

          v69 = OUTLINED_FUNCTION_7_16();
          [v70 v71];
          goto LABEL_62;
        }
      }

      else
      {
        [v63 setModalPresentationStyle_];
        v65 = [v64 sheetPresentationController];

        if (v65)
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
          v73 = OUTLINED_FUNCTION_40_6(v72);
          *(v73 + 16) = xmmword_27464AEE0;
          v74 = objc_opt_self();
          *(v73 + 32) = [v74 mediumDetent];
          *(v73 + 40) = [v74 largeDetent];
          sub_274412734(0, &unk_2809525D0, 0x277D75A28);
          OUTLINED_FUNCTION_0_10();
          v75 = sub_27463B7FC();

          [v65 setDetents_];

          [v65 setPrefersGrabberVisible_];
          [v65 setLargestUndimmedDetentIdentifier_];
LABEL_62:
        }
      }

      OUTLINED_FUNCTION_5();
      v76 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_39();
      v77 = swift_allocObject();
      *(v77 + 16) = v64;
      *(v77 + 24) = v76;
      v88 = sub_274594E10;
      v89 = v77;
      aBlock = MEMORY[0x277D85DD0];
      v85 = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v86 = v78;
      v87 = &block_descriptor_323;
      v79 = _Block_copy(&aBlock);
      v80 = v64;
      OUTLINED_FUNCTION_13_5();

      [v5 presentViewController:v64 animated:1 completion:v79];
      _Block_release(v79);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

LABEL_33:
  v33 = [v5 presentedViewController];
  if (v33)
  {
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8, &qword_27465C010);
    OUTLINED_FUNCTION_21_2();
    v35 = swift_dynamicCastClass();

    if (v35)
    {
      v36 = [v5 presentedViewController];
      if (v36)
      {
        v37 = v36;
        OUTLINED_FUNCTION_35_6();
        [v38 v39];
      }
    }
  }
}

void sub_27458F7DC(void *a1, uint64_t a2)
{
  v2 = [a1 presentationController];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v3 setDelegate_];
  }
}

void sub_27458F85C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_38_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (sub_27463B72C() >= 1)
  {
    v8 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView;
    v9 = *&v3[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView];
    v43 = v7;
    v44 = v5;
    if (v9)
    {

      v10 = v9;
      sub_2746395AC();
    }

    else
    {
      v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525C0, &unk_27465C068));
      OUTLINED_FUNCTION_29_11();

      v16 = sub_27463959C();
      v17 = *&v3[v8];
      *&v3[v8] = v16;
    }

    v18 = *&v3[v8];
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = v18;
    v20 = [v19 superview];
    if (v20)
    {

      [v19 invalidateIntrinsicContentSize];
LABEL_15:
      OUTLINED_FUNCTION_28_14();
      return;
    }

    [v19 setAlpha_];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v21 = [v3 view];
    if (v21)
    {
      v22 = v21;
      [v21 addSubview_];

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v24 = OUTLINED_FUNCTION_40_6(v23);
      *(v24 + 16) = xmmword_27464AEE0;
      v25 = [v19 centerXAnchor];
      v26 = [v3 view];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 centerXAnchor];

        v29 = [v25 constraintEqualToAnchor_];
        *(v24 + 32) = v29;
        v30 = [v19 bottomAnchor];

        v31 = [v3 view];
        if (v31)
        {
          v32 = v31;
          v33 = objc_opt_self();
          v34 = [v32 safeAreaLayoutGuide];

          v35 = [v34 bottomAnchor];
          v36 = sub_274589024();
          [v36 contentInset];
          v38 = v37;

          v39 = [v30 constraintEqualToAnchor:v35 constant:-(v38 + 20.0)];
          *(v24 + 40) = v39;
          sub_274412734(0, &qword_28094E990, 0x277CCAAD0);
          OUTLINED_FUNCTION_19_4();
          v40 = sub_27463B7FC();

          [v33 activateConstraints_];

          OUTLINED_FUNCTION_5();
          v41 = swift_allocObject();
          *(v41 + 16) = v19;
          v42 = v19;
          sub_27458FCAC(sub_2744D07E8, v41, CGSizeMake, 0, 0.1);

          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v13 = v3;
  sub_27458FCAC(sub_274594E00, v11, sub_274594E08, v12, 0.0);

  OUTLINED_FUNCTION_28_14();
}

void sub_27458FCAC(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = objc_opt_self();
  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27443E0E8;
  v17 = &block_descriptor_308;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_2744830C4;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2745AA044;
  v17 = &block_descriptor_314;
  v13 = _Block_copy(&v14);

  [v10 animateWithDuration:0 delay:v11 options:v13 animations:0.2 completion:a5];
  _Block_release(v13);
  _Block_release(v11);
}

id sub_27458FE34(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_27458FE58(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView);
  if (v3)
  {
    [v3 removeFromSuperview];
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

void *sub_27458FEAC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();
  sub_274638FAC();

  if (!v17)
  {
    goto LABEL_5;
  }

  sub_27443C9D4(v11, v12, v13, v14, v15, v16, v17);
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount);
  result = (a1 - v3);
  if (__OFSUB__(a1, v3))
  {
    __break(1u);
LABEL_5:
    swift_unknownObjectRelease();

    result = OUTLINED_FUNCTION_26_11("Fatal error", v5, v6, v7, v8, "WorkflowEditor/UIKitEditorViewController.swift", v9, v10, 739, 0);
    __break(1u);
  }

  return result;
}

void *sub_27458FFA0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();
  sub_274638FAC();

  if (!v17)
  {
    goto LABEL_5;
  }

  sub_27443C9D4(v11, v12, v13, v14, v15, v16, v17);
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount);
  result = (a1 + v3);
  if (__OFADD__(a1, v3))
  {
    __break(1u);
LABEL_5:
    swift_unknownObjectRelease();

    result = OUTLINED_FUNCTION_26_11("Fatal error", v5, v6, v7, v8, "WorkflowEditor/UIKitEditorViewController.swift", v9, v10, 751, 0);
    __break(1u);
  }

  return result;
}

char *sub_274590094(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for WFEditorWorkflowOutputItem();
    OUTLINED_FUNCTION_0_10();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;

      if (!sub_274599BF8(0xD000000000000012, 0x800000027468E120))
      {
LABEL_9:
        v10 = objc_allocWithZone(type metadata accessor for WFEditorWorkflowOutputCell());
        v11 = OUTLINED_FUNCTION_13_5();
        return sub_2745926C8(v11);
      }

      OUTLINED_FUNCTION_30_10();
      type metadata accessor for WFEditorWorkflowOutputCell();
      OUTLINED_FUNCTION_19_4();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {

        goto LABEL_9;
      }

LABEL_20:
      v3 = v9;

      v19 = 0xD000000000000011;
      sub_27459A464(v8);

      return v3;
    }

    type metadata accessor for WFEditorActionOutputItem();
    OUTLINED_FUNCTION_0_10();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      type metadata accessor for WFEditorSystemInputProviderItem();
      OUTLINED_FUNCTION_0_10();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        OUTLINED_FUNCTION_37_6();
        MEMORY[0x277C57EA0](0xD00000000000001FLL, 0x800000027468E0E0);
        type metadata accessor for WFEditorItem();
        sub_27463C4BC();
        result = OUTLINED_FUNCTION_25_15("Fatal error", v21, v22, v25, v26, "WorkflowEditor/UIKitEditorViewController.swift", v23, v24, 807, 0);
        __break(1u);
        return result;
      }

      v8 = v18;

      if (sub_274599BF8(0xD000000000000017, 0x800000027468DFA0))
      {
        OUTLINED_FUNCTION_30_10();
        type metadata accessor for WFEditorSystemInputProviderCell();
        OUTLINED_FUNCTION_19_4();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          goto LABEL_20;
        }
      }

      type metadata accessor for WFEditorSystemInputProviderCell();
      v20 = OUTLINED_FUNCTION_13_5();
      return sub_274590364(v20);
    }

    v8 = v15;

    if (sub_274599BF8(0xD000000000000011, 0x800000027468E100))
    {
      OUTLINED_FUNCTION_30_10();
      type metadata accessor for WFEditorActionOutputsCell();
      OUTLINED_FUNCTION_19_4();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        goto LABEL_20;
      }
    }

    v16 = objc_allocWithZone(type metadata accessor for WFEditorActionOutputsCell());
    v17 = OUTLINED_FUNCTION_13_5();
    return sub_274592AB8(v17);
  }

  swift_unknownObjectWeakAssign();

  v3 = a1;
  v4 = sub_274599BF8(0x65436E6F69746341, 0xEA00000000006C6CLL);
  if (!v4)
  {
LABEL_11:
    v13 = objc_allocWithZone(type metadata accessor for WFEditorActionCell());
    v14 = OUTLINED_FUNCTION_13_5();
    return sub_274592180(v14, 0x65436E6F69746341, 0xEA00000000006C6CLL);
  }

  v5 = v4;
  type metadata accessor for WFEditorActionCell();
  OUTLINED_FUNCTION_0_10();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v6 = OUTLINED_FUNCTION_13_5();
  sub_27459211C(v6);
  return v3;
}

uint64_t sub_2745903B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFEditorSystemInputProviderItem();
  OUTLINED_FUNCTION_0_10();
  result = swift_dynamicCastClass();
  if (!result)
  {
    type metadata accessor for WFEditorActionItem();
    OUTLINED_FUNCTION_0_10();
    result = swift_dynamicCastClass();
    if (!result)
    {
      type metadata accessor for WFEditorWorkflowOutputItem();
      OUTLINED_FUNCTION_0_10();
      result = swift_dynamicCastClass();
      if (!result)
      {
        type metadata accessor for WFEditorActionOutputItem();
        OUTLINED_FUNCTION_0_10();
        result = swift_dynamicCastClass();
        if (!result)
        {
          OUTLINED_FUNCTION_37_6();
          MEMORY[0x277C57EA0](0xD00000000000001FLL, 0x800000027468E0E0);
          type metadata accessor for WFEditorItem();
          sub_27463C4BC();
          result = OUTLINED_FUNCTION_25_15("Fatal error", v3, v4, v7, v8, "WorkflowEditor/UIKitEditorViewController.swift", v5, v6, 830, 0);
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2745904B0()
{
  v3 = v0;
  v4 = MEMORY[0x277D84F90];
  if (sub_274453594())
  {
    sub_2745741B0(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v58 = v5;
  v6 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v57 = v4;
  v7 = sub_274453594();
  v8 = (v6 & 0xC000000000000001);
  v9 = (v6 & 0xFFFFFFFFFFFFFF8);

  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v6 = v57;
      v7 = sub_274453594();
      v9 = &unk_280952000;
      v8 = &unk_280952000;
      v2 = &OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
      if (!v7)
      {
        v1 = 0;
        goto LABEL_23;
      }

      v1 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
      if (v1)
      {
        v4 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
      }

      else
      {
        v4 = [*(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
      }

      sub_2744535A4();
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_83;
      }

      v12 = *(v6 + 32);
      v13 = v1;

      goto LABEL_22;
    }

    if (v8)
    {
      v11 = OUTLINED_FUNCTION_32_9();
      v1 = MEMORY[0x277C58B20](v11);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v1 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v1 + 25))
    {
    }

    else
    {
      sub_27463C41C();
      v2 = v57[2];
      sub_27463C46C();
      sub_27463C47C();
      v4 = &v57;
      sub_27463C42C();
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
  do
  {
    __break(1u);
LABEL_83:
    v52 = v1;
    v12 = MEMORY[0x277C58B20](0, v6);
LABEL_22:
    v14 = *(v12 + 32);

    v15 = *&v14[*v2];

    v1 = [v4 actionIsConnectedToPreviousAction_];
LABEL_23:
    v16 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction);
    v2 = &unk_280952000;
    if (v16)
    {
      v17 = v8;
      v18 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
      OUTLINED_FUNCTION_16_12();
      swift_beginAccess();
      v19 = *(v3 + v18);
      swift_retain_n();

      v20 = sub_27452F16C(v16, v19);

      if (v20)
      {
        if (v1 != *(v20 + 24))
        {
          *(v20 + 24) = v1;
          sub_274521BE4();
        }
      }

      v21 = *(v3 + v18);

      v4 = sub_27452F16C(v16, v21);

      if (v4)
      {

        v8 = v17;
        v2 = &unk_280952000;
      }

      else
      {
        v8 = v17;
        v2 = &unk_280952000;
        if ((v1 & 1) == 0)
        {
          v9 = &unk_280952000;
          if (*(v16 + 24) != 1)
          {
LABEL_32:

            continue;
          }

          v22 = 0;
          goto LABEL_34;
        }
      }

      v9 = &unk_280952000;
      if (*(v16 + 24))
      {
        goto LABEL_32;
      }

      v22 = 1;
LABEL_34:
      *(v16 + 24) = v22;
      v4 = &v58;
      sub_274521BE4();
    }
  }

  while (v7 < 0);
  result = sub_274590BB4(1, 0, v7);
  if (result == v24)
  {
LABEL_65:
    if (*(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
    {

      sub_27455C0BC(v42);
      v44 = v43;

      if (v44)
      {
        *(v44 + 24) = 1;
        sub_274521BE4();
      }
    }

    result = sub_274453594();
    if (result)
    {
      v45 = result;
      if (result < 1)
      {
        __break(1u);
        goto LABEL_85;
      }

      for (j = 0; j != v45; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v47 = OUTLINED_FUNCTION_32_9();
          v48 = MEMORY[0x277C58B20](v47);
        }

        else
        {
          v48 = *(v6 + 8 * j + 32);
        }

        v49 = *(*(v48 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        sub_27458AF14(v49);
        v51 = v50;

        if (*(v48 + 16) != v51)
        {
          *(v48 + 16) = v51;
          sub_274521BE4();
        }
      }
    }

    return v58;
  }

  v25 = result;
  v26 = v24;
  if (v24 < result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (result < v24)
  {
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_39_7();
    v53 = v8[147];
    v54 = v9[161];
    v55 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
    OUTLINED_FUNCTION_16_12();
    swift_beginAccess();
    v27 = (v6 + 8 * v25 + 40);
    while (1)
    {
      v28 = v25 + 1;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x277C58B20](v25, v6);
        v30 = OUTLINED_FUNCTION_32_9();
        v31 = MEMORY[0x277C58B20](v30);
      }

      else
      {
        v29 = *(v27 - 1);
        v31 = *v27;
      }

      v32 = *(v3 + v55);
      if ((v32 & 0xC000000000000001) != 0)
      {

        if (sub_27463C53C())
        {
          type metadata accessor for WFEditorActionOutputItem();
          swift_dynamicCast();
          v33 = v56;
LABEL_49:

          goto LABEL_51;
        }
      }

      else
      {
        v33 = *(v32 + 16);

        if (!v33)
        {
          goto LABEL_51;
        }

        v34 = sub_274534D60(v29);
        if (v35)
        {
          v33 = *(*(v32 + 56) + 8 * v34);

          goto LABEL_49;
        }
      }

      v33 = 0;
LABEL_51:
      v36 = *(v3 + v54);
      if (v36)
      {
        v37 = *(v3 + v54);
      }

      else
      {
        v37 = [*(v3 + v53) actionTree];
        v36 = 0;
      }

      v38 = *(*(v31 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      v39 = v36;
      v40 = [v37 actionIsConnectedToPreviousAction_];

      if (v33)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      if (v41 == *(v29 + 24))
      {

        if (v33)
        {
LABEL_61:
          if (v40 != *(v33 + 24))
          {
            *(v33 + 24) = v40;
          }
        }
      }

      else
      {
        *(v29 + 24) = v41;
        sub_274521BE4();

        if (v33)
        {
          goto LABEL_61;
        }
      }

      ++v27;
      v25 = v28;
      if (v26 == v28)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_86:
  __break(1u);
  return result;
}