uint64_t sub_2168367B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D1>, double a10@<D3>)
{
  v101 = a8;
  v72 = sub_2170090F4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v76 = a6;
  v87 = type metadata accessor for GridView(0, &v119);
  v82 = *(v87 - 8);
  v86 = *(v82 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = &v69 - v20;
  v21 = sub_2170075B4();
  v90 = v21;
  MEMORY[0x28223BE20](v21);
  v75 = &v69 - v22;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v23 = type metadata accessor for GridView.ItemView(255, &v119);
  v83 = v23;
  *&v89 = COERCE_DOUBLE(swift_getWitnessTable());
  v119 = v21;
  v120 = MEMORY[0x277D84030];
  v121 = v23;
  v122 = *&v89;
  v123 = MEMORY[0x277D84038];
  v85 = sub_21700B174();
  v92 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v69 - v24;
  v88 = sub_2170089F4();
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v80 = &v69 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860, &unk_21701A550);
  v91 = sub_2170089F4();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v69 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8, &qword_21701D180);
  v27 = sub_2170089F4();
  v97 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v78 = &v69 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v98 = v27;
  v100 = sub_2170089F4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v96 = &v69 - v31;
  v102 = a4;
  v32 = a1;
  v77 = a1;
  sub_21700EC34();
  v103 = a2;
  v73 = a3;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v33 = v76;
  v107 = v76;
  v108 = a7;
  v34 = a7;
  KeyPath = swift_getKeyPath();
  v35 = v82;
  v36 = v81;
  v37 = v87;
  (*(v82 + 16))(v81, v32, v87);
  v38 = (*(v35 + 80) + 64) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = a2;
  v39[3] = a3;
  *(v39 + 4) = v102;
  v39[5] = a5;
  *(v39 + 6) = v33;
  *(v39 + 7) = v34;
  (*(v35 + 32))(v39 + v38, v36, v37);
  v40 = swift_allocObject();
  v41 = v73;
  *(v40 + 2) = a2;
  v40[3] = v41;
  *(v40 + 4) = v102;
  v40[5] = a5;
  *(v40 + 6) = v33;
  *(v40 + 7) = v34;
  *(v40 + 8) = sub_216838880;
  *(v40 + 9) = v39;
  WitnessTable = swift_getWitnessTable();
  v42 = v79;
  sub_21700B154();
  sub_217009394();
  v118 = WitnessTable;
  v43 = v85;
  v44 = swift_getWitnessTable();
  v45 = v80;
  sub_21700A544();
  (*(v92 + 8))(v42, v43);
  v119 = 0;
  v120 = a9;
  v121 = 0;
  v122 = a10;
  LOBYTE(v123) = 0;
  v116 = v44;
  v117 = MEMORY[0x277CE0760];
  v46 = v88;
  v47 = swift_getWitnessTable();
  v48 = v84;
  sub_21700A514();
  v49 = v78;
  (*(v93 + 8))(v45, v46);
  v115 = COERCE_DOUBLE(sub_21700ACD4());
  v50 = sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
  v113 = v47;
  v114 = v50;
  v51 = v91;
  v52 = swift_getWitnessTable();
  sub_21700A674();

  (*(v94 + 8))(v48, v51);
  swift_getKeyPath();
  v53 = v77 + *(v37 + 88);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v55 = *v53;
  }

  else
  {

    sub_21700ED94();
    v56 = sub_217009C34();
    sub_217007BC4();

    v57 = v70;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v54, 0);
    (*(v71 + 8))(v57, v72);
    v55 = v115;
  }

  v115 = v55 - (a9 + a10);
  v58 = sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8, &qword_21701D180, MEMORY[0x277CE04A0]);
  v111 = v52;
  v112 = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v95;
  sub_21700A3D4();

  (*(v97 + 8))(v49, v59);
  v62 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
  v109 = v60;
  v110 = v62;
  v63 = v100;
  v64 = swift_getWitnessTable();
  v65 = v96;
  sub_2166C24DC(v61, v63, v64);
  v66 = *(v99 + 8);
  v66(v61, v63);
  sub_2166C24DC(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_21683733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v51 = a9;
  v44 = a10;
  v45 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v40 - v16;
  v41 = &v40 - v16;
  v42 = a4;
  v52 = a4;
  v53 = a5;
  v18 = a4;
  v19 = a5;
  v43 = a5;
  v40 = a6;
  v54 = a6;
  v55 = a7;
  v20 = a8;
  v56 = a8;
  v57 = a10;
  v21 = type metadata accessor for GridView.ItemView(0, &v52);
  v47 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v40 - v26;
  (*(v15 + 16))(v17, v48, AssociatedTypeWitness, v25);
  v52 = v18;
  v53 = v19;
  v29 = v44;
  v28 = v45;
  v54 = a6;
  v55 = v45;
  v56 = v20;
  v57 = v44;
  v30 = v20;
  v31 = type metadata accessor for GridView(0, &v52);
  v32 = v49;
  v33 = (v49 + *(v31 + 76));
  v34 = *v33;
  v35 = v33[1];
  sub_21700DF14();
  *(&v39 + 1) = v30;
  *&v39 = v28;
  sub_216833534(v41, v50, v34, v35, *(v32 + *(v31 + 80)), *(v32 + *(v31 + 80) + 8), v42, v23, v43, v40, v39, v29);
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v23, v21, WitnessTable);
  v37 = *(v47 + 8);

  v37(v23, v21);
  sub_2166C24DC(v27, v21, WitnessTable);
  return (v37)(v27, v21);
}

uint64_t sub_216837618@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v74 = a2;
  v77 = a9;
  v91 = a3;
  v92 = a4;
  v79 = a4;
  v93 = a5;
  v94 = a6;
  v95 = a7;
  v96 = a8;
  v65 = type metadata accessor for GridView(0, &v91);
  v63 = *(v65 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v58 - v19;
  *&v20 = COERCE_DOUBLE(sub_2170075B4());
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v61 = &v58 - v21;
  v91 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v22 = a6;
  v95 = a7;
  v96 = a8;
  v23 = a7;
  v24 = a8;
  v67 = type metadata accessor for GridView.ItemView(255, &v91);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  v25 = sub_2170089F4();
  v69 = v25;
  WitnessTable = swift_getWitnessTable();
  v91 = *&v20;
  v92 = MEMORY[0x277D84030];
  v93 = v25;
  v94 = WitnessTable;
  v95 = MEMORY[0x277D84038];
  v68 = sub_21700B174();
  v75 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v58 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v70 = sub_2170089F4();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v73 = &v58 - v29;
  v78 = a3;
  v30 = a5;
  v59 = a5;
  v31 = a1;
  sub_21700EC34();
  v32 = v79;
  v80 = a3;
  v81 = v79;
  v82 = v30;
  v83 = v22;
  v84 = v23;
  v85 = v24;
  KeyPath = swift_getKeyPath();
  v33 = v63;
  v34 = v62;
  v35 = v65;
  (*(v63 + 16))(v62, v31, v65);
  v36 = (*(v33 + 80) + 64) & ~*(v33 + 80);
  v37 = (v18 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = v78;
  *(v38 + 3) = v32;
  v39 = v59;
  *(v38 + 4) = v59;
  *(v38 + 5) = v22;
  *(v38 + 6) = v23;
  *(v38 + 7) = v24;
  (*(v33 + 32))(&v38[v36], v34, v35);
  v40 = &v38[v37];
  v41 = v74;
  v42 = v74[1];
  *v40 = *v74;
  *(v40 + 1) = v42;
  v40[32] = *(v41 + 32);
  v43 = swift_allocObject();
  v44 = v79;
  v43[2] = v78;
  *(v43 + 3) = v44;
  *(v43 + 4) = v39;
  *(v43 + 5) = v22;
  *(v43 + 6) = v23;
  *(v43 + 7) = v24;
  *(v43 + 8) = sub_216838914;
  *(v43 + 9) = v38;
  v45 = swift_getWitnessTable();
  v46 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v89 = v45;
  v90 = v46;
  v57 = swift_getWitnessTable();
  v47 = v64;
  sub_21700B154();
  swift_getKeyPath();
  v91 = a10;
  v88 = v57;
  v48 = v68;
  v49 = swift_getWitnessTable();
  v50 = v66;
  sub_21700A3D4();

  (*(v75 + 8))(v47, v48);
  v51 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
  v86 = v49;
  v87 = v51;
  v52 = v70;
  v53 = swift_getWitnessTable();
  v54 = v73;
  sub_2166C24DC(v50, v52, v53);
  v55 = *(v76 + 8);
  v55(v50, v52);
  sub_2166C24DC(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_216837CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a4;
  v55 = a3;
  v53 = a2;
  v56 = a1;
  v61 = a9;
  v50 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v47 - v17;
  v74 = a5;
  v75 = a6;
  v48 = a5;
  v49 = a6;
  v76 = a7;
  v77 = a8;
  v78 = a10;
  v79 = a11;
  v51 = type metadata accessor for GridView.ItemView(0, &v74);
  v58 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v62 = &v47 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  v54 = sub_2170089F4();
  v60 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v57 = &v47 - v23;
  (*(v16 + 16))(v18, v53, AssociatedTypeWitness, v22);
  v74 = a5;
  v75 = a6;
  v24 = v50;
  v76 = v50;
  v77 = a8;
  v25 = a8;
  v78 = a10;
  v79 = a11;
  v26 = type metadata accessor for GridView(0, &v74);
  v27 = v55;
  v28 = (v55 + *(v26 + 76));
  v30 = *v28;
  v29 = v28[1];
  sub_21700DF14();
  *(&v46 + 1) = a10;
  *&v46 = v25;
  v31 = v18;
  v32 = v56;
  v33 = v29;
  v34 = v48;
  v35 = v49;
  sub_216833534(v31, v56, v30, v33, *(v27 + *(v26 + 80)), *(v27 + *(v26 + 80) + 8), v48, v62, v49, v24, v46, a11);
  v63 = v34;
  v64 = v35;
  v65 = v24;
  v66 = v25;
  v67 = a10;
  v68 = a11;
  v69 = v27;
  v70 = v32;
  v71 = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9430, &qword_21701D208);
  v36 = v51;
  WitnessTable = swift_getWitnessTable();
  sub_216838A00();
  sub_2166BF464();
  v38 = v52;
  v39 = v62;
  sub_21700AA94();
  (*(v58 + 8))(v39, v36);
  v40 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8, &unk_21701D160, MEMORY[0x277CDFC88]);
  v72 = WitnessTable;
  v73 = v40;
  v41 = v54;
  v42 = swift_getWitnessTable();
  v43 = v57;
  sub_2166C24DC(v38, v41, v42);
  v44 = *(v60 + 8);
  v44(v38, v41);
  sub_2166C24DC(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_2168381E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  v16 = *(a3 + 32);
  v25[0] = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v25[4] = a8;
  v25[5] = a10;
  v17 = (a1 + *(type metadata accessor for GridView(0, v25) + 72));
  v18 = *v17;
  if (v18 == 3)
  {
    result = 0;
    a2 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0uLL;
    v22 = 255;
  }

  else
  {
    v23 = v17[24];
    v24 = *(v17 + 8);
    result = swift_getKeyPath();
    v21 = v24;
    LOBYTE(v25[0]) = 0;
    v22 = 0;
    v20 = v23 & 1;
  }

  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = v22;
  *(a9 + 40) = v18;
  *(a9 + 48) = v21;
  *(a9 + 64) = v20;
  *(a9 + 72) = a2;
  *(a9 + 80) = v12;
  *(a9 + 88) = v13;
  *(a9 + 96) = v14;
  *(a9 + 104) = v15;
  *(a9 + 112) = v16;
  return result;
}

uint64_t sub_2168382F0(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_216838394()
{
  sub_217009714();
  sub_216839810(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  return sub_21700F9B4();
}

uint64_t sub_216838448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2168384AC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2168384AC()
{
  result = qword_280E4A498;
  if (!qword_280E4A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A498);
  }

  return result;
}

uint64_t sub_216838564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93F8, &unk_21701D170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168385D4()
{
  result = qword_27CAB9410;
  if (!qword_27CAB9410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8, &unk_21701D170);
    sub_216838660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9410);
  }

  return result;
}

unint64_t sub_216838660()
{
  result = qword_27CAB9418;
  if (!qword_27CAB9418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9408, &unk_21701D190);
    sub_2168386EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9418);
  }

  return result;
}

unint64_t sub_2168386EC()
{
  result = qword_27CAB9420;
  if (!qword_27CAB9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9400, &qword_21701D188);
    sub_216839810(&qword_27CAB9428, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9420);
  }

  return result;
}

uint64_t sub_216838830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

unint64_t sub_216838A00()
{
  result = qword_280E43760;
  if (!qword_280E43760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9430, &qword_21701D208);
    sub_216838A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43760);
  }

  return result;
}

unint64_t sub_216838A84()
{
  result = qword_280E43768;
  if (!qword_280E43768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43768);
  }

  return result;
}

unint64_t sub_216838AE0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_2166B0B84();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216838BA0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *(((((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216838D58(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v9 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v17 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v15;
        break;
      case 2:
        *(a1 + v11) = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_216838F7C(uint64_t a1)
{
  sub_2166B0B84();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E402C8, &unk_282927B80, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2166D9E00(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168390C8(uint64_t result, unsigned int a2, uint64_t a3)
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
    v17 = (((result & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 16) & ~v7, v6, v4);
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
    v9 = ((((((((((*(*(v4 - 8) + 64) + ((v7 + 96) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
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

void sub_216839254(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((((((((*(*(v6 - 8) + 64) + ((v10 + 96) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
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
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 16) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              v18[1] = 0;
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
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216839478(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_2168394F0(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_2168395F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216839810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216839A30()
{
  result = qword_27CAB9448;
  if (!qword_27CAB9448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB9448);
  }

  return result;
}

uint64_t sub_216839AA0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v58 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v47 = v7;
  v19 = *(v7 + 16);
  v55 = a2;
  v53 = v5;
  v20 = v5;
  v21 = v58;
  v48 = v19;
  v49 = v7 + 16;
  v19(v10, a2, v20);
  v50 = v10;
  sub_21700D734();
  v51 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = *(v21 + 8);
  v52 = v11;
  v58 = v21 + 8;
  v25(v15, v11);
  if (v24)
  {
    v26 = type metadata accessor for SearchLandingBrickLockup(0);
    v56 = v22;
    v57 = v24;
    v27 = v25;
    v28 = v54;
    sub_21700F364();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v48(v50, v55, v53);
    sub_2166D5F54(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    OUTLINED_FUNCTION_3_37(1819568500);
    v29 = sub_21700CDB4();
    v31 = v30;
    v32 = v52;
    v27(v18, v52);
    v33 = (v28 + *(v26 + 28));
    *v33 = v29;
    v33[1] = v31;
    OUTLINED_FUNCTION_3_37(1969710451);
    sub_21700D2E4();
    v27(v18, v32);
    v46 = v27;
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v27(v18, v32);
    v37 = (v28 + *(v26 + 32));
    *v37 = v34;
    v37[1] = v36;
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v38 = v55;
    v39 = v53;
    v48(v50, v55, v53);
    sub_2166D5F54(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    sub_21700D734();
    (*(v47 + 8))(v38, v39);
    return v46(v51, v52);
  }

  else
  {
    v41 = sub_21700E2E4();
    sub_2166D5F54(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v43 = v42;
    v44 = type metadata accessor for SearchLandingBrickLockup(0);
    *v43 = 25705;
    v43[1] = 0xE200000000000000;
    v43[2] = v44;
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v47 + 8))(v55, v53);
    v25(v51, v52);
    return sub_2167B0250(v54);
  }
}

void sub_21683A0DC()
{
  OUTLINED_FUNCTION_49();
  swift_allocObject();
  OUTLINED_FUNCTION_194();
  sub_21683D578();
  OUTLINED_FUNCTION_26();
}

unint64_t sub_21683A160()
{
  OUTLINED_FUNCTION_0_1();

  v0 = sub_2166DDC34();

  if ((~v0 & 0xF000000000000007) != 0)
  {
    result = v0;
    if (!(v0 >> 62))
    {
      return result;
    }

    OUTLINED_FUNCTION_51();
    sub_2166DE78C(v2, v3, v4);
  }

  return sub_21684202C();
}

uint64_t sub_21683A20C()
{
  OUTLINED_FUNCTION_33();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_217007CA4();
  v1[15] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[16] = v6;
  v1[17] = OUTLINED_FUNCTION_255();
  v1[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v1[19] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_80();
  v9 = sub_21700D2A4();
  v1[22] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_255();
  v1[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v1[26] = v11;
  OUTLINED_FUNCTION_2(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v13);
  v1[29] = OUTLINED_FUNCTION_255();
  v1[30] = swift_task_alloc();
  v14 = sub_217005EF4();
  v1[31] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[32] = v15;
  v1[33] = OUTLINED_FUNCTION_80();
  v16 = sub_21700D284();
  v1[34] = v16;
  OUTLINED_FUNCTION_2(v16);
  v1[35] = v17;
  v1[36] = OUTLINED_FUNCTION_80();
  v18 = type metadata accessor for ProcessDeepLinkAction(0);
  v1[37] = v18;
  OUTLINED_FUNCTION_36(v18);
  v1[38] = OUTLINED_FUNCTION_255();
  v1[39] = swift_task_alloc();
  v19 = swift_task_alloc();
  v1[40] = v19;
  *v19 = v1;
  v19[1] = sub_21683A4FC;

  return sub_2166DE4E0();
}

uint64_t sub_21683A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_69_0();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  *v18 = v17;
  *v18 = *v15;
  v17[41] = v19;

  if (v14)
  {
    v33 = v17[21];
    v34 = v17[18];

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_120();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34, v14, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_120();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_21683A6B4()
{
  OUTLINED_FUNCTION_15_11();
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[30];
  v5 = v0[12];
  v4 = v0[13];
  sub_21700D234();
  OUTLINED_FUNCTION_29_9();
  v6(v1, v5, v2);
  sub_216683A80(v4, v3, &qword_27CAB6FD0, &qword_21701D5F0);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  OUTLINED_FUNCTION_103_4();
  v9();
  v10 = type metadata accessor for ReferrerInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v10);
  v13 = v0[29];
  v12 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v10) != 1)
    {
      sub_216697664(v0[30], &qword_27CAB6FD0, &qword_21701D5F0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_116();
    sub_216845158(v17, v18);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  }

  v20 = v0[38];
  v19 = v0[39];
  v21 = v0[37];
  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[19];
  sub_2167C5834(v0[29], v20 + *(v21 + 24), &qword_27CAB6FD0, &qword_21701D5F0);
  *(v20 + *(v21 + 28)) = 1;
  sub_216845158(v20, v19);
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_229();
  sub_21700E094();
  v0[5] = v21;
  v0[6] = sub_2166C2594(&qword_27CAB7D08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168451B0(v19, boxed_opaque_existential_1);
  (*(v23 + 104))(v22, *MEMORY[0x277D21E18], v24);
  OUTLINED_FUNCTION_191();
  v0[42] = sub_21700D5E4();
  v26 = OUTLINED_FUNCTION_116();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v28 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  sub_216844C20(&qword_280E2A120);
  v30 = swift_task_alloc();
  v0[43] = v30;
  *v30 = v0;
  v30[1] = sub_21683AA18;
  OUTLINED_FUNCTION_120();

  return MEMORY[0x282180360](v31);
}

uint64_t sub_21683AA18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21683AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[24];
  OUTLINED_FUNCTION_29_9();
  v19(v18);
  v20 = OUTLINED_FUNCTION_38();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x277D21CA8])
  {
    OUTLINED_FUNCTION_176_1();
    v23 = OUTLINED_FUNCTION_108();
    v24(v23);
    v25 = OUTLINED_FUNCTION_116();
    v26(v25);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v18, v27);
    *v17 = 0;
  }

  else if (v22 == *MEMORY[0x277D21CA0])
  {
    OUTLINED_FUNCTION_176_1();
    v28 = OUTLINED_FUNCTION_108();
    v29(v28);
    v30 = OUTLINED_FUNCTION_116();
    v31(v30);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v18, v32);
    *v17 = 1;
  }

  else
  {
    sub_2166C7454(v16[17]);
    v33 = sub_217007C84();
    v34 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v34))
    {
      v35 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v35);
      OUTLINED_FUNCTION_121(&dword_216679000, v36, v37, "Unknown ActionOutcome case.");
      OUTLINED_FUNCTION_26_4();
    }

    v38 = v16[27];
    v40 = v16[25];
    v39 = v16[26];
    v41 = v16[23];
    v57 = v16[39];
    v59 = v16[24];
    v42 = v16[22];
    v43 = v16[16];
    v44 = v16[17];
    v45 = v16[15];
    a10 = v16[28];
    a11 = v16[11];

    (*(v43 + 8))(v44, v45);
    v46 = *(v41 + 8);
    v46(v40, v42);
    (*(v38 + 8))(a10, v39);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v57, v47);
    *a11 = 1;
    v46(v59, v42);
  }

  v58 = v16[18];
  v60 = v16[17];

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v58, v60, a14, a15, a16);
}

uint64_t sub_21683ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_142();
  a22 = v24;
  v27 = v24[44];
  sub_2166C7454(v24[18]);
  v28 = v27;
  v29 = sub_217007C84();
  v30 = sub_21700ED84();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    *v31 = 136446466;
    *(v31 + 4) = sub_2166A85FC(0xD000000000000018, 0x8000000217082DC0, &a12);
    *(v31 + 12) = 2082;
    swift_getErrorValue();
    v32 = sub_21700F884();
    v34 = sub_2166A85FC(v32, v33, &a12);

    *(v31 + 14) = v34;
    _os_log_impl(&dword_216679000, v29, v30, "Unable to perform '%{public}s' error='%{public}s'", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v35 = OUTLINED_FUNCTION_115();
    v36(v35);
  }

  else
  {
    v37 = v24[18];
    v38 = v24[15];
    v39 = v24[16];

    (*(v39 + 8))(v37, v38);
  }

  v40 = v24[39];
  swift_willThrow();

  v41 = OUTLINED_FUNCTION_108();
  v42(v41);
  OUTLINED_FUNCTION_23_10();
  sub_216845208(v40, v43);
  v53 = v24[18];
  v54 = v24[17];
  v55 = v24[44];

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, a12, a13, a14, a15, a16);
}

uint64_t sub_21683B084()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[17] = v5;
  if (v5)
  {
    swift_willThrow();
  }

  else
  {

    v2[18] = v2[10];
  }

  OUTLINED_FUNCTION_256();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21683B1C4()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21683B228()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21683B284@<X0>(void *a1@<X8>)
{
  sub_2166EF8A4(*(v1 + 32), a1);
}

uint64_t sub_21683B2C0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for BootstrapState(0);
  sub_2166C2594(&qword_280E43828);

  OUTLINED_FUNCTION_82_2();
  result = sub_217008684();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_216844C10;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
  return result;
}

void sub_21683B394()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v418 = v2;
  v421 = v3;
  v4 = *v0;
  v5 = *(*v0 + 88);
  v6 = *(v4 + 104);
  OUTLINED_FUNCTION_230();
  v11 = type metadata accessor for AppDestinationFullScreenCoverPageView(v7, v8, v9, v10);
  v12 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v404 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v403 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40, &qword_21701D800);
  v431 = v12;
  v411 = v16;
  v17 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v414 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v415 = v20;
  v429 = v11;
  v409 = *(v11 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v384 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_1();
  v402 = v24;
  OUTLINED_FUNCTION_28_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v400 = v26;
  v401 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v383 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  v399 = v29;
  v30 = OUTLINED_FUNCTION_4_1();
  v31 = type metadata accessor for MusicAppDestinationContext(v30);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v389 = v33;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_230();
  v38 = type metadata accessor for AppDestinationSheetPageView(v34, v35, v36, v37);
  OUTLINED_FUNCTION_1();
  v408 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v398 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47_1();
  v397 = v43;
  OUTLINED_FUNCTION_28_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v395 = v45;
  v396 = v44;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v382 = v46;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47_1();
  v394 = v48;
  OUTLINED_FUNCTION_230();
  v53 = type metadata accessor for ModalNavigationStack(v49, v50, v51, v52);
  v430 = v38;
  v54 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v393 = v55;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  v392 = v57;
  v405 = *(v5 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  v406 = v59;
  v428 = v53;
  v407 = *(v53 - 8);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_0();
  v391 = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47_1();
  v390 = v63;
  v64 = OUTLINED_FUNCTION_4_1();
  v65 = type metadata accessor for FlowAction(v64);
  v66 = OUTLINED_FUNCTION_36(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_1_0();
  v381 = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_47_1();
  v388 = v69;
  v70 = OUTLINED_FUNCTION_4_1();
  v385 = type metadata accessor for CommerceWebView(v70);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_0();
  v387 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9500, &qword_21701D808);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v74);
  v76 = &v380 - v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D38, &unk_217014DF0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_105();
  v386 = v78;
  OUTLINED_FUNCTION_4_1();
  v410 = v79;
  v427 = v54;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v413 = v80;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  v412 = v82;
  OUTLINED_FUNCTION_4_1();
  v424 = v83;
  v426 = v17;
  v84 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v417 = v85;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_105();
  v416 = v87;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_230();
  v92 = type metadata accessor for PresentationItem.Destination(v88, v89, v90, v91);
  OUTLINED_FUNCTION_1();
  v94 = v93;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v95);
  v97 = &v380 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48, &unk_217014E00);
  v425 = v84;
  v99 = v418;
  v422 = v98;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v419 = v101;
  v420 = v100;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_105();
  v423 = v103;
  (*(v94 + 16))(v97, &v99[*(*v99 + 520)], v92);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_108_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
      type metadata accessor for ObjectGraph(0);

      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_60_0();
      sub_21700E094();

      sub_2168450A8(v523, &v512);
      v517 = 1;
      sub_216785EF8();
      v252 = OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_149_1(v252, v253, v254, v255);
      OUTLINED_FUNCTION_1_5();
      WitnessTable = swift_getWitnessTable();
      v256 = sub_216785E20();
      v510 = WitnessTable;
      v511 = v256;
      OUTLINED_FUNCTION_42_3();
      v257 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_103_4();
      v259 = sub_2166B51C0(v258);
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v260, v261, v262);
      v263 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v264 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v265 = swift_getWitnessTable();
      v508 = v264;
      v509 = v265;
      v266 = OUTLINED_FUNCTION_197_0(WitnessTable);
      v506 = v263;
      v507 = v266;
      v267 = OUTLINED_FUNCTION_135_0();
      v504 = v257;
      v505 = v259;
      v268 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      sub_2166C2CB0();
      v269 = OUTLINED_FUNCTION_237_0();
      v270(v269);
      v502 = v267;
      v503 = v268;
      goto LABEL_9;
    case 2u:
      v168 = v399;
      v167 = v400;
      v169 = v97;
      v170 = v401;
      (*(v400 + 32))(v399, v169, v401);
      (*(v167 + 16))(v383, v168, v170);
      OUTLINED_FUNCTION_235();
      (*(v405 + 16))(v406, v1 + *(v171 + 200), v5);
      v172 = v389;
      sub_2168451B0(&v99[*(*v99 + 528)], v389);
      v173 = v384;
      v174 = OUTLINED_FUNCTION_108();
      sub_216B46820(v174, v175, v172, v5, v6, v176);
      OUTLINED_FUNCTION_1_5();
      v177 = v429;
      v178 = swift_getWitnessTable();
      OUTLINED_FUNCTION_28_6();
      sub_2166C24DC(v179, v180, v181);
      v182 = *(v409 + 8);
      v409 += 8;
      v418 = v182;
      (v182)(v173, v177);
      OUTLINED_FUNCTION_28_6();
      sub_2166C24DC(v183, v184, v185);
      v186 = sub_216785E20();
      sub_2166C2718();
      v480 = v178;
      v481 = v186;
      OUTLINED_FUNCTION_42_3();
      v187 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v189 = sub_2166B51C0(v188);
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v190 = OUTLINED_FUNCTION_104_0();
      v191(v190);
      v192 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v193 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v194 = swift_getWitnessTable();
      v478 = v193;
      v479 = v194;
      v195 = OUTLINED_FUNCTION_197_0(v178);
      v476 = v192;
      v477 = v195;
      v196 = OUTLINED_FUNCTION_135_0();
      v474 = v187;
      v475 = v189;
      v197 = OUTLINED_FUNCTION_134_0();
      v199 = v415;
      v198 = v416;
      sub_2166C2CB0();
      (*(v414 + 8))(v199, v92);
      v472 = v196;
      v473 = v197;
      OUTLINED_FUNCTION_198(v178);
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v200 = OUTLINED_FUNCTION_42_12();
      v201(v200, v199);
      v202 = v418;
      (v418)(v173, v198);
      (v202)(v402, v198);
      (*(v400 + 8))(v399, v401);
      break;
    case 3u:
      v204 = v394;
      v203 = v395;
      v205 = v97;
      v206 = v396;
      (*(v395 + 32))(v394, v205, v396);
      v207 = v382;
      (*(v203 + 16))(v382, v204, v206);
      OUTLINED_FUNCTION_235();
      v208 = OUTLINED_FUNCTION_190();
      v209(v208);
      v210 = v389;
      sub_2168451B0(&v99[*(*v99 + 528)], v389);
      sub_216C43050(v207, v203, v210, v5, v6, v398);
      OUTLINED_FUNCTION_4_8();
      v211 = v430;
      v212 = swift_getWitnessTable();
      v213 = v397;
      v214 = OUTLINED_FUNCTION_119();
      sub_2166C24DC(v214, v215, v212);
      v216 = *(v408 + 8);
      v408 += 8;
      v418 = v216;
      v217 = OUTLINED_FUNCTION_119();
      v218(v217);
      sub_2166C24DC(v213, v211, v212);
      OUTLINED_FUNCTION_0_17();
      v219 = swift_getWitnessTable();
      sub_2166C2CB0();
      v220 = sub_216785CE8();
      v470 = v219;
      v471 = v212;
      OUTLINED_FUNCTION_42_3();
      v221 = v427;
      v222 = swift_getWitnessTable();
      sub_2166C2CB0();
      v223 = OUTLINED_FUNCTION_42_11();
      v224(v223, v221);
      v468 = v220;
      v469 = v222;
      v225 = OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_1_5();
      v226 = swift_getWitnessTable();
      v227 = sub_216785E20();
      v466 = v226;
      v467 = v227;
      v228 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v230 = sub_2166B51C0(v229);
      v464 = v228;
      v465 = v230;
      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v231 = OUTLINED_FUNCTION_114_2();
      v232(v231, v221);
      v462 = v225;
      v463 = v228;
      v233 = v425;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2718();
      v234 = OUTLINED_FUNCTION_42_11();
      v235(v234, v233);
      v236 = v418;
      (v418)(v398, v211);
      (v236)(v397, v211);
      (*(v395 + 8))(v394, v396);
      break;
    case 4u:
      v124 = *v97;
      v125 = *(v97 + 1);
      type metadata accessor for CommerceWebViewModel(0);
      sub_2166C2594(&qword_27CAB9508);
      v418 = v124;

      v126 = v387;
      OUTLINED_FUNCTION_51();
      sub_21700B204();
      *(v126 + *(v385 + 20)) = v125;
      v127 = OUTLINED_FUNCTION_109_2();
      sub_2168451B0(v127, v128);
      swift_storeEnumTagMultiPayload();
      sub_216785D74();
      OUTLINED_FUNCTION_98_3();
      sub_2166C2594(v129);
      v130 = v386;
      sub_217009554();
      v131 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v132 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v133 = swift_getWitnessTable();
      v450 = v132;
      v451 = v133;
      OUTLINED_FUNCTION_95_5();
      v135 = OUTLINED_FUNCTION_197_0(v134);
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      sub_216697664(v130, &qword_27CAB6D38, &unk_217014DF0);
      v448 = v131;
      v449 = v135;
      v136 = v424;
      v137 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v138 = swift_getWitnessTable();
      v139 = sub_216785E20();
      v446 = v138;
      v447 = v139;
      v140 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v142 = sub_2166B51C0(v141);
      v444 = v140;
      v445 = v142;
      v143 = OUTLINED_FUNCTION_174(v132);
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      v144 = OUTLINED_FUNCTION_109_2();
      v145(v144);
      v442 = v137;
      v443 = v143;
      OUTLINED_FUNCTION_198(v132);
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();

      v146 = OUTLINED_FUNCTION_42_12();
      v147(v146, v136);
      v148 = type metadata accessor for CommerceWebView;
      v149 = v387;
      goto LABEL_11;
    case 5u:
      v273 = OUTLINED_FUNCTION_69_5();
      sub_216845158(v273, v388);
      v274 = OUTLINED_FUNCTION_69_5();
      v275 = v381;
      sub_2168451B0(v274, v381);
      OUTLINED_FUNCTION_235();
      v276 = OUTLINED_FUNCTION_190();
      v277(v276);
      OUTLINED_FUNCTION_235();
      v279 = *(v1 + *(v278 + 208));
      v280 = sub_216EE7808();
      v281 = v391;
      sub_216EE7824(v275, v73, v279, v280, v282, v5, v391, v6);
      OUTLINED_FUNCTION_0_17();
      v283 = v428;
      v284 = swift_getWitnessTable();
      v285 = v390;
      v286 = OUTLINED_FUNCTION_104_0();
      sub_2166C24DC(v286, v287, v284);
      v288 = *(v407 + 8);
      v407 += 8;
      v418 = v288;

      v289 = OUTLINED_FUNCTION_104_0();
      (v288)(v289);
      sub_2166C24DC(v285, v283, v284);
      OUTLINED_FUNCTION_4_8();
      v290 = swift_getWitnessTable();
      OUTLINED_FUNCTION_104_0();
      sub_2166C2718();
      v291 = sub_216785CE8();
      v460 = v284;
      v461 = v290;
      OUTLINED_FUNCTION_42_3();
      v293 = OUTLINED_FUNCTION_197_0(v292);
      OUTLINED_FUNCTION_124_1();
      sub_2166C2CB0();
      v294 = OUTLINED_FUNCTION_42_11();
      v295(v294, v281);
      v458 = v291;
      v459 = v293;
      v296 = OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_1_5();
      v297 = swift_getWitnessTable();
      v298 = sub_216785E20();
      v456 = v297;
      v457 = v298;
      v299 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v301 = sub_2166B51C0(v300);
      v454 = v299;
      v455 = v301;
      v302 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v303 = OUTLINED_FUNCTION_109_2();
      v304(v303);
      v452 = v296;
      v453 = v302;
      v305 = v425;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2718();
      v306 = OUTLINED_FUNCTION_42_12();
      v307(v306, v305);
      v308 = v418;
      (v418)(v391, v283);
      (v308)(v390, v283);
      OUTLINED_FUNCTION_5_23();
      v149 = v388;
LABEL_11:
      sub_216845208(v149, v148);
      break;
    case 6u:
      v309 = *v97;
      v310 = *(v97 + 1);
      *v76 = sub_2167D8C58;
      *(v76 + 1) = v309;
      v418 = v309;
      v76[16] = 0;
      *(v76 + 3) = v310;
      v415 = v310;
      swift_storeEnumTagMultiPayload();
      sub_216785D74();
      OUTLINED_FUNCTION_98_3();
      sub_2166C2594(v311);
      swift_retain_n();

      v312 = v386;
      OUTLINED_FUNCTION_217();
      sub_217009554();
      v313 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v314 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v315 = swift_getWitnessTable();
      v440 = v314;
      v441 = v315;
      v316 = MEMORY[0x277CE0340];
      v317 = swift_getWitnessTable();
      OUTLINED_FUNCTION_124_1();
      sub_2166C2718();
      sub_216697664(v312, &qword_27CAB6D38, &unk_217014DF0);
      v438 = v313;
      v439 = v317;
      v162 = v424;
      v318 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v319 = swift_getWitnessTable();
      v320 = sub_216785E20();
      v436 = v319;
      v437 = v320;
      v321 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v323 = sub_2166B51C0(v322);
      v434 = v321;
      v435 = v323;
      v324 = OUTLINED_FUNCTION_174(v316);
      OUTLINED_FUNCTION_30_8();
      sub_2166C2718();
      v325 = OUTLINED_FUNCTION_109_2();
      v326(v325);
      v432 = v318;
      v433 = v324;
      OUTLINED_FUNCTION_198(v316);
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();

      goto LABEL_13;
    case 7u:
      v237 = *v97;
      OUTLINED_FUNCTION_143();
      v238 = swift_allocObject();
      *(v238 + 16) = v237;
      v512 = sub_2168450A0;
      v513 = v238;
      LOWORD(v514) = 256;
      sub_216786064();
      sub_2167860B8();
      v418 = v237;

      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      OUTLINED_FUNCTION_166(v520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50, &unk_21701D810);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v413 = v518;
      v416 = v520;
      v417 = v519;
      v415 = v521;
      LODWORD(v414) = v522;
      v239 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v240 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v241 = swift_getWitnessTable();
      v523[30] = v240;
      v523[31] = v241;
      v242 = MEMORY[0x277CE0340];
      v243 = OUTLINED_FUNCTION_197_0(MEMORY[0x277CE0340]);
      v523[28] = v239;
      v523[29] = v243;
      v244 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v245 = swift_getWitnessTable();
      v246 = sub_216785E20();
      v523[26] = v245;
      v523[27] = v246;
      v247 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v249 = sub_2166B51C0(v248);
      v523[24] = v247;
      v523[25] = v249;
      v250 = swift_getWitnessTable();
      v523[22] = v244;
      v523[23] = v250;
      OUTLINED_FUNCTION_198(v242);
      sub_216785F4C();
      OUTLINED_FUNCTION_185();
      sub_2166C2CB0();

      v251 = v413;
      goto LABEL_16;
    case 8u:
      v346 = *v97;
      v345 = *(v97 + 1);
      type metadata accessor for MusicStackAuthority(0);
      OUTLINED_FUNCTION_93_5();
      sub_2166C2594(v347);

      v348 = sub_217008CF4();
      v512 = v346;
      v513 = v345;
      v514 = v348;
      v515 = v349;
      v516 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50, &unk_21701D810);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v350 = OUTLINED_FUNCTION_99_5();
      OUTLINED_FUNCTION_0_17();
      v351 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v352 = swift_getWitnessTable();
      v523[52] = v351;
      v523[53] = v352;
      v353 = swift_getWitnessTable();
      v523[50] = v350;
      v523[51] = v353;
      v354 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v355 = swift_getWitnessTable();
      v356 = sub_216785E20();
      v523[48] = v355;
      v523[49] = v356;
      v357 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v359 = sub_2166B51C0(v358);
      v523[46] = v357;
      v523[47] = v359;
      v360 = swift_getWitnessTable();
      v523[44] = v354;
      v523[45] = v360;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2CB0();

      v341 = v417;
      v251 = v418;
      v343 = v415;
      v342 = v416;
      v344 = v414;
      goto LABEL_18;
    case 9u:
      v518 = *v97;
      v418 = v518;
      OUTLINED_FUNCTION_1_5();
      v150 = swift_getWitnessTable();
      v151 = sub_216785E20();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      v490 = v150;
      v491 = v151;
      v152 = MEMORY[0x277CE0340];
      v153 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v155 = sub_2166B51C0(v154);
      OUTLINED_FUNCTION_229();
      sub_2166C2718();
      v156 = OUTLINED_FUNCTION_229();
      v157(v156);
      v158 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v159 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v160 = swift_getWitnessTable();
      v488 = v159;
      v489 = v160;
      v161 = swift_getWitnessTable();
      v486 = v158;
      v487 = v161;
      v162 = v424;
      v163 = swift_getWitnessTable();
      v484 = v153;
      v485 = v155;
      OUTLINED_FUNCTION_174(v152);
      OUTLINED_FUNCTION_167();
      sub_2166C2CB0();
      v164 = OUTLINED_FUNCTION_114_2();
      v165(v164, v92);
      v482 = v163;
      v483 = v153;
      OUTLINED_FUNCTION_198(v152);
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v166 = v418;

LABEL_13:
      v327 = OUTLINED_FUNCTION_42_12();
      v328(v327, v162);
      break;
    case 0xAu:
      v512 = v1[3];
      v513 = 0;
      LOWORD(v514) = 0;
      sub_216786064();
      sub_2167860B8();
      swift_retain_n();
      OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_72_5();
      sub_217009554();
      OUTLINED_FUNCTION_166(v520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50, &unk_21701D810);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v329 = OUTLINED_FUNCTION_99_5();
      OUTLINED_FUNCTION_0_17();
      v330 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v331 = swift_getWitnessTable();
      v523[20] = v330;
      v523[21] = v331;
      v332 = MEMORY[0x277CE0340];
      v333 = OUTLINED_FUNCTION_197_0(MEMORY[0x277CE0340]);
      v523[18] = v329;
      v523[19] = v333;
      v334 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v335 = swift_getWitnessTable();
      v336 = sub_216785E20();
      v523[16] = v335;
      v523[17] = v336;
      v337 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v339 = sub_2166B51C0(v338);
      v523[14] = v337;
      v523[15] = v339;
      v340 = OUTLINED_FUNCTION_174(v332);
      v523[12] = v334;
      v523[13] = v340;
      OUTLINED_FUNCTION_198(v332);
      sub_216785F4C();
      OUTLINED_FUNCTION_185();
      sub_2166C2CB0();

      v251 = v418;
LABEL_16:
      v342 = v416;
      v341 = v417;
      v343 = v415;
      v344 = v414;
LABEL_18:
      sub_216845010(v251, v341, v342, v343, v344);
      break;
    default:
      OUTLINED_FUNCTION_108_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
      type metadata accessor for ObjectGraph(0);

      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_60_0();
      sub_21700E094();

      sub_2168450A8(v523, &v512);
      v517 = 0;
      sub_216785EF8();
      v104 = OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_149_1(v104, v105, v106, v107);
      OUTLINED_FUNCTION_1_5();
      WitnessTable = swift_getWitnessTable();
      v109 = sub_216785E20();
      v500 = WitnessTable;
      v501 = v109;
      OUTLINED_FUNCTION_42_3();
      v110 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_103_4();
      v112 = sub_2166B51C0(v111);
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v113, v114, v115);
      v116 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v117 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v118 = swift_getWitnessTable();
      v498 = v117;
      v499 = v118;
      v119 = OUTLINED_FUNCTION_197_0(WitnessTable);
      v496 = v116;
      v497 = v119;
      v120 = OUTLINED_FUNCTION_135_0();
      v494 = v110;
      v495 = v112;
      v121 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      sub_2166C2CB0();
      v122 = OUTLINED_FUNCTION_237_0();
      v123(v122);
      v492 = v120;
      v493 = v121;
LABEL_9:
      OUTLINED_FUNCTION_198(WitnessTable);
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v271 = OUTLINED_FUNCTION_42_12();
      v272(v271, v76);
      sub_216845104(v523);
      break;
  }

  v361 = sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  v362 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  v363 = swift_getWitnessTable();
  v523[42] = v362;
  v523[43] = v363;
  OUTLINED_FUNCTION_42_3();
  v364 = swift_getWitnessTable();
  v523[40] = v361;
  v523[41] = v364;
  v365 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  v366 = swift_getWitnessTable();
  v367 = sub_216785E20();
  v523[38] = v366;
  v523[39] = v367;
  v368 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_19();
  v370 = sub_2166B51C0(v369);
  v523[36] = v368;
  v523[37] = v370;
  v371 = swift_getWitnessTable();
  v523[34] = v365;
  v523[35] = v371;
  v372 = swift_getWitnessTable();
  v373 = sub_216785F4C();
  v523[32] = v372;
  v523[33] = v373;
  v374 = v420;
  swift_getWitnessTable();
  v375 = OUTLINED_FUNCTION_158();
  sub_2166C24DC(v375, v376, v377);
  v378 = OUTLINED_FUNCTION_114_2();
  v379(v378, v374);
  OUTLINED_FUNCTION_26();
}

void sub_21683D578()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v55 = v12;
  v14 = v13;
  v46 = *v0;
  v47 = v15;
  v49 = *(v46 + 88);
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  *(v0 + 36) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 17) = 0u;
  v19 = *(v18 + 208);
  type metadata accessor for BootstrapState(0);
  swift_allocObject();
  *&v0[v19] = sub_216683974();
  *&v0[*(*v0 + 216)] = 0;
  v52 = v11;
  v53 = v14;
  *(v0 + 11) = v14;
  sub_216683A80(v11, (v0 + 96), &qword_27CAB6A50, &qword_217013DB0);
  v51 = v9;
  sub_216683A80(v9, (v0 + 136), &qword_27CAB9450, &qword_21701D5D8);
  v50 = v7;
  sub_216683A80(v7, (v0 + 176), &qword_27CAB6A60, &unk_217013DC0);
  v48 = v5;
  sub_216683A80(v5, (v0 + 216), &qword_27CAB6A58, &qword_217013DB8);
  if (v3)
  {
    v20 = sub_216685F4C(0, &qword_280E29BB8, 0x277D75960);
    v21 = sub_216685F8C(&unk_280E29BC0);
    v22 = v3;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v56[1] = 0;
    v56[2] = 0;
  }

  v56[0] = v22;
  v56[3] = v20;
  v56[4] = v21;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v45 = v3;
  sub_2166861C8(v56, (v1 + 256), &qword_27CAB9458, &qword_21701D5E0);
  swift_endAccess();
  v23 = v55;
  v24 = *(v54 + 16);
  v25 = v49;
  v24(&v1[*(*v1 + 200)], v55, v49);
  v26 = v46;
  v27 = *(v46 + 104);
  v29 = type metadata accessor for ConcreteAppDestinationPageProvider(0, v25, v27, v28);
  v24(v17, v23, v25);
  *(v1 + 5) = sub_2166863B0();
  v30 = *(v26 + 80);
  v31 = *(v26 + 96);
  OUTLINED_FUNCTION_108();
  nullsub_1();
  v32 = OUTLINED_FUNCTION_110();
  *(v1 + 9) = _s11PageContextVMa(v32, v30, v31, v33);
  *(v1 + 10) = &off_282927E48;
  *(v1 + 6) = v29;
  type metadata accessor for PresentationStack(0, v25, v27, v34);
  swift_unknownObjectRetain();
  v35 = sub_216692CE8(0);
  v36 = v47;
  v37 = *(v47 + 88);
  v38 = *(v47 + 72);
  OUTLINED_FUNCTION_181();
  v39 = swift_allocObject();
  v39[2] = v30;
  v39[3] = v31;
  v39[4] = v35;
  type metadata accessor for AcknowledgementPresenter();
  swift_allocObject();

  v40 = v37;
  v41 = v38;

  v42 = OUTLINED_FUNCTION_227();
  *(v1 + 3) = sub_216B945F8(v42, v43, v41, v44, v39);
  *(v1 + 4) = v35;
  *(v1 + 2) = v36;

  sub_216697024(0);
  swift_unknownObjectRelease();

  sub_216697664(v48, &qword_27CAB6A58, &qword_217013DB8);
  sub_216697664(v50, &qword_27CAB6A60, &unk_217013DC0);
  sub_216697664(v51, &qword_27CAB9450, &qword_21701D5D8);
  sub_216697664(v52, &qword_27CAB6A50, &qword_217013DB0);
  (*(v54 + 8))(v55, v25);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21683DA24(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for MusicAppDestinationContext(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PresentationItem.Destination(0, *(v1 + 504), *(v1 + 512), v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  swift_storeEnumTagMultiPayload();
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v11 = *(v3 + 28);
  v12 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v5[v11], 1, 1, v12);
  sub_216AF3510();
  sub_216845208(v5, type metadata accessor for MusicAppDestinationContext);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21683DBC4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21700DFD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v7 = type metadata accessor for ListenNowPageIntent(0);
  a2[3] = v7;
  a2[4] = sub_2166C2594(&unk_280E3DBD0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v9 = *(v7 + 20);
  v10 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v9, 1, 1, v10);
  sub_216B19908(0, 0x2D796E612F31762FLL, 0xEC00000065676170, boxed_opaque_existential_1);
  return (*(v4 + 8))(v6, v3);
}

void sub_21683DD48()
{
  OUTLINED_FUNCTION_49();
  v54 = v2;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  v52 = v11;
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v51 = v14;
  v15 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  v17 = sub_21700C324();
  if (!v18)
  {
    v17 = sub_21700C344();
  }

  v19 = v17;
  v20 = v18;
  OUTLINED_FUNCTION_169();
  v21 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  *v0 = 5;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v19;
  *(v0 + 96) = v20;
  *(v0 + 104) = 0;
  *(v0 + 112) = v1;
  if (sub_21688D828(3, 48))
  {
    OUTLINED_FUNCTION_214();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v25 = OUTLINED_FUNCTION_225();
    v26(v25);
    OUTLINED_FUNCTION_214();
    sub_21700D244();
    v27 = OUTLINED_FUNCTION_113_2();
    v28(v27);
  }

  v29 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010) + 48));
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v7);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_194();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_228();
  v41 = OUTLINED_FUNCTION_104_0();
  v42(v41);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v7, v51 + v43);
  sub_217006214();
  sub_2170061F4();
  v44 = OUTLINED_FUNCTION_114_2();
  v45(v44);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v7, v46);
  (*(v52 + 8))(v19, v53);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_211(v47, v48, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v51, v54);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v51, v49);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v50);
  OUTLINED_FUNCTION_26();
}

void sub_21683E188()
{
  OUTLINED_FUNCTION_49();
  v51 = v3;
  v49 = v4;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  v7 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v50 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_71_1();
  v17 = type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  if (sub_21688D828(44, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v22(v11, v0, v7);
    sub_21700D244();
    v23 = OUTLINED_FUNCTION_38();
    v24(v23);
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v25 + 16))(v1, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v26, v27, v28, v29);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v21 + v17[10];
  v39 = OUTLINED_FUNCTION_172();
  (*(v14 + 16))(v21, v2, v50, v39);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v1, v21 + v40);
  sub_217006214();
  v41 = sub_2170061F4();
  v43 = v42;
  v44 = OUTLINED_FUNCTION_114_2();
  v45(v44);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v1, v46);
  (*(v14 + 8))(v2, v50);
  v47 = (v21 + v17[6]);
  *v47 = v41;
  v47[1] = v43;
  *(v21 + v17[7]) = 0;
  sub_2166861C8(&v52, v38, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v21, v51);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v21, v48);
  OUTLINED_FUNCTION_26();
}

void sub_21683E560()
{
  OUTLINED_FUNCTION_49();
  v54 = v2;
  v53 = v3;
  v51 = v4;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v6 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v52 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = OUTLINED_FUNCTION_71_1();
  v15 = type metadata accessor for ContentDescriptor(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = sub_21700C0B4();
  if (!v21)
  {
    v20 = sub_21700C164();
  }

  v22 = v20;
  v23 = v21;
  OUTLINED_FUNCTION_169();
  v24 = *(v15 + 24);
  v25 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_105_1(4);
  if (sub_21688D828(0, 48))
  {
    OUTLINED_FUNCTION_234();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v29 = OUTLINED_FUNCTION_144();
    v30(v29);
    OUTLINED_FUNCTION_234();
    sub_21700D244();
    (*(v0 + 8))(v0, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v19, v52);
  v31 = v51;
  if (!v53)
  {
    v31 = 0;
  }

  OUTLINED_FUNCTION_246(v31);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v32, v33, v34, v25);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_89_5();
  v44(v43);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v52, v1 + v45);
  sub_21700DF14();
  sub_217006214();
  sub_2170061F4();
  v46 = OUTLINED_FUNCTION_195();
  v47(v46);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v52, v48);
  (*(v0 + 8))(v22, v22);
  OUTLINED_FUNCTION_184();
  sub_2166861C8(&v55, v23, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v1, v54);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v1, v49);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v19, v50);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21683E974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2168451B0(a1, a2);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v2 + *(v4 + 208));
  v6 = type metadata accessor for FlowActionPageView(0);
  *(a2 + *(v6 + 20)) = v5;
  v7 = (a2 + *(v6 + 24));
  type metadata accessor for MusicStackAuthority(0);
  OUTLINED_FUNCTION_93_5();
  sub_2166C2594(v8);

  OUTLINED_FUNCTION_116();
  result = sub_217008CF4();
  *v7 = result;
  v7[1] = v10;
  return result;
}

void sub_21683EA2C()
{
  OUTLINED_FUNCTION_49();
  v54 = v2;
  v53 = v3;
  v51 = v4;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v6 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v52 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = OUTLINED_FUNCTION_71_1();
  v15 = type metadata accessor for ContentDescriptor(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = sub_21700C764();
  if (!v21)
  {
    v20 = sub_21700C7C4();
  }

  v22 = v20;
  v23 = v21;
  OUTLINED_FUNCTION_169();
  v24 = *(v15 + 24);
  v25 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_105_1(14);
  if (sub_21688D828(26, 48))
  {
    OUTLINED_FUNCTION_234();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v29 = OUTLINED_FUNCTION_144();
    v30(v29);
    OUTLINED_FUNCTION_234();
    sub_21700D244();
    (*(v0 + 8))(v0, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v19, v52);
  v31 = v51;
  if (!v53)
  {
    v31 = 0;
  }

  OUTLINED_FUNCTION_246(v31);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v32, v33, v34, v25);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_89_5();
  v44(v43);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v52, v1 + v45);
  sub_21700DF14();
  sub_217006214();
  sub_2170061F4();
  v46 = OUTLINED_FUNCTION_195();
  v47(v46);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v52, v48);
  (*(v0 + 8))(v22, v22);
  OUTLINED_FUNCTION_184();
  sub_2166861C8(&v55, v23, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v1, v54);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v1, v49);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v19, v50);
  OUTLINED_FUNCTION_26();
}

void sub_21683EE44()
{
  OUTLINED_FUNCTION_49();
  v54 = v2;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  v52 = v11;
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v51 = v14;
  v15 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  v17 = sub_217007254();
  if (!v18)
  {
    v17 = sub_217007214();
  }

  v19 = v17;
  v20 = v18;
  OUTLINED_FUNCTION_169();
  v21 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  *v0 = 22;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v19;
  *(v0 + 96) = v20;
  *(v0 + 104) = 0;
  *(v0 + 112) = v1;
  if (sub_21688D828(47, 48))
  {
    OUTLINED_FUNCTION_214();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v25 = OUTLINED_FUNCTION_225();
    v26(v25);
    OUTLINED_FUNCTION_214();
    sub_21700D244();
    v27 = OUTLINED_FUNCTION_113_2();
    v28(v27);
  }

  v29 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010) + 48));
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v7);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_194();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_228();
  v41 = OUTLINED_FUNCTION_104_0();
  v42(v41);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v7, v51 + v43);
  sub_217006214();
  sub_2170061F4();
  v44 = OUTLINED_FUNCTION_114_2();
  v45(v44);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v7, v46);
  (*(v52 + 8))(v19, v53);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_211(v47, v48, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v51, v54);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v51, v49);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v50);
  OUTLINED_FUNCTION_26();
}

void sub_21683F284()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v69 = v7;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v65 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v62 = v13;
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1();
  v67 = v16;
  v68 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v70 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v19 = type metadata accessor for FlowAction(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v21 = OUTLINED_FUNCTION_173();
  v22 = type metadata accessor for SocialProfilePageIntent(v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = type metadata accessor for ContentDescriptor(0);
  v28 = OUTLINED_FUNCTION_36(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v64 = v29;
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  *v0 = 18;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v26);
  sub_21700DF14();
  v33 = sub_216841AA4(v1, v6, v4);
  v34 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  *(v26 + *(v22 + 20)) = v33 & 1;
  if (sub_21688D828(42, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_228();
    v38 = OUTLINED_FUNCTION_229();
    v39(v38);
    sub_21700D244();
    (*(v62 + 8))(v1, v63);
  }

  v65[3] = v22;
  v65[4] = sub_2166C2594(&unk_27CAB94A0);
  __swift_allocate_boxed_opaque_existential_1(v65);
  v40 = OUTLINED_FUNCTION_69_5();
  sub_2168451B0(v40, v41);
  swift_storeEnumTagMultiPayload();
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v64);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v34);
  v52 = v2 + v19[10];
  *(v52 + 32) = 0;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  (*(v67 + 16))(v2, v70, v68);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v65, v2 + v53);
  sub_217006214();
  v54 = sub_2170061F4();
  v66 = v55;
  v56 = OUTLINED_FUNCTION_114_2();
  v57(v56);
  (*(v67 + 8))(v70, v68);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v65, v58);
  v59 = (v2 + v19[6]);
  *v59 = v54;
  v59[1] = v66;
  *(v2 + v19[7]) = 0;
  sub_2166861C8(v71, v52, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v2, v69);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v2, v60);
  sub_216845208(v26, type metadata accessor for SocialProfilePageIntent);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v61);
  OUTLINED_FUNCTION_26();
}

void sub_21683F7F8()
{
  OUTLINED_FUNCTION_49();
  v186 = v0;
  v2 = v1;
  v194 = v3;
  v174 = type metadata accessor for CuratorDetailPageIntent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v190 = v5;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94A8, &unk_21701D6B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v193 = v7;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460, &qword_21701D5E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v187 = v9;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v189 = v11;
  v12 = OUTLINED_FUNCTION_4_1();
  v185 = type metadata accessor for FlowActionPageView(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v188 = v14;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v182 = v16;
  v183 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v180 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v176 = type metadata accessor for FlowAction.Destination(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v181 = v20;
  OUTLINED_FUNCTION_4_1();
  v171 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v170 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v168 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v169 = v25;
  OUTLINED_FUNCTION_4_1();
  v179 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v177 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v172 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  v166 = v30;
  v31 = OUTLINED_FUNCTION_4_1();
  v178 = type metadata accessor for FlowAction(v31);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v173 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47_1();
  v167 = v35;
  v36 = OUTLINED_FUNCTION_4_1();
  v37 = type metadata accessor for AppleCuratorDetailPageIntent(v36);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  v175 = v39;
  v40 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor(v40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v165 - v46;
  v48 = sub_21700C514();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7();
  v54 = v53 - v52;
  v55 = sub_21700C4E4();
  v57 = v56;
  sub_21700C524();
  v58 = (*(v50 + 88))(v54, v48);
  if (v58 == *MEMORY[0x277CD8490])
  {
    OUTLINED_FUNCTION_169();
    v59 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
    *v44 = 2;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 0u;
    *(v44 + 88) = v55;
    *(v44 + 96) = v57;
    *(v44 + 104) = 0;
    *(v44 + 112) = v2;
    OUTLINED_FUNCTION_14_15();
    v175 = v44;
    v63 = v44;
    v64 = v190;
    sub_2168451B0(v63, v190);
    v65 = v174;
    v66 = type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
    if (sub_21688D828(9, 48))
    {
      v70 = v172;
      sub_21700D234();
    }

    else
    {
      v81 = v169;
      sub_21700D6F4();
      OUTLINED_FUNCTION_16_20();
      sub_21700D6D4();
      OUTLINED_FUNCTION_29_9();
      v82(v168, v81, v171);
      v70 = v172;
      sub_21700D244();
      v83 = OUTLINED_FUNCTION_158();
      v84(v83);
    }

    v85 = v181;
    v181[3] = v65;
    v85[4] = sub_2166C2594(&unk_27CAB94B0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    sub_2168451B0(v64, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_31_8();
    v87 = v178;
    v88 = v173;
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_219(v89, v90, v91, v59);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v66);
    v99 = v88 + v87[10];
    OUTLINED_FUNCTION_172();
    v100 = v177;
    v101 = OUTLINED_FUNCTION_73_5();
    v102 = v179;
    v103(v101);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v85, v88 + v104);
    v105 = v180;
    sub_217006214();
    v106 = sub_2170061F4();
    v108 = v107;
    (*(v182 + 8))(v105, v183);
    (*(v100 + 8))(v70, v102);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v85, v109);
    v110 = (v88 + v87[6]);
    *v110 = v106;
    v110[1] = v108;
    *(v88 + v87[7]) = 0;
    sub_2166861C8(v195, v99, &qword_27CABF7B0, &qword_217016E20);
    v111 = v188;
    sub_21683E974(v88, v188);
    OUTLINED_FUNCTION_8_19();
    v112 = v187;
    sub_2168451B0(v111, v187);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_34();
    v114 = sub_2166C2594(v113);
    v115 = v189;
    OUTLINED_FUNCTION_149_1(v112, v185, v116, v114);
    OUTLINED_FUNCTION_239(v115);
    swift_storeEnumTagMultiPayload();
    sub_2166B53E0();
    sub_217009554();
    OUTLINED_FUNCTION_191();
    sub_216697664(v117, v118, v119);
    OUTLINED_FUNCTION_9_28();
    sub_216845208(v111, v120);
    OUTLINED_FUNCTION_5_23();
    sub_216845208(v88, v121);
    sub_216845208(v190, type metadata accessor for CuratorDetailPageIntent);
    OUTLINED_FUNCTION_15_16();
    v123 = v175;
LABEL_12:
    sub_216845208(v123, v122);
    goto LABEL_13;
  }

  if (v58 == *MEMORY[0x277CD8488])
  {
    OUTLINED_FUNCTION_169();
    v71 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
    *v47 = 9;
    *(v47 + 8) = 0u;
    *(v47 + 24) = 0u;
    *(v47 + 40) = 0u;
    *(v47 + 56) = 0u;
    *(v47 + 72) = 0u;
    *(v47 + 11) = v55;
    *(v47 + 12) = v57;
    *(v47 + 13) = 0;
    v47[112] = v2;
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v47, v175);
    v75 = v37;
    v76 = type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
    if (sub_21688D828(9, 48))
    {
      v80 = v166;
      sub_21700D234();
    }

    else
    {
      sub_21700D6F4();
      OUTLINED_FUNCTION_16_20();
      sub_21700D6D4();
      OUTLINED_FUNCTION_29_9();
      v124 = OUTLINED_FUNCTION_104_0();
      v125(v124);
      v126 = v166;
      sub_21700D244();
      v127 = OUTLINED_FUNCTION_158();
      v80 = v126;
      v128(v127);
    }

    v129 = v181;
    v181[3] = v75;
    v129[4] = sub_2166C2594(&unk_27CAB94B8);
    v130 = __swift_allocate_boxed_opaque_existential_1(v129);
    sub_2168451B0(v175, v130);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_31_8();
    v131 = v178;
    v132 = v167;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v71);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v76);
    v143 = v132 + v131[10];
    v144 = OUTLINED_FUNCTION_172();
    (*(v177 + 16))(v132, v80, v179, v144);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v129, v132 + v145);
    v146 = v180;
    sub_217006214();
    v147 = sub_2170061F4();
    v190 = v148;
    (*(v182 + 8))(v146, v183);
    v149 = OUTLINED_FUNCTION_226();
    v150(v149);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v129, v151);
    v152 = (v132 + v131[6]);
    v153 = v190;
    *v152 = v147;
    v152[1] = v153;
    *(v132 + v131[7]) = 0;
    sub_2166861C8(v195, v143, &qword_27CABF7B0, &qword_217016E20);
    v154 = v188;
    sub_21683E974(v132, v188);
    OUTLINED_FUNCTION_8_19();
    v155 = v187;
    sub_2168451B0(v154, v187);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_34();
    v157 = sub_2166C2594(v156);
    v158 = v189;
    OUTLINED_FUNCTION_149_1(v155, v185, v159, v157);
    OUTLINED_FUNCTION_239(v158);
    swift_storeEnumTagMultiPayload();
    sub_2166B53E0();
    sub_217009554();
    OUTLINED_FUNCTION_191();
    sub_216697664(v160, v161, v162);
    OUTLINED_FUNCTION_9_28();
    sub_216845208(v154, v163);
    OUTLINED_FUNCTION_5_23();
    sub_216845208(v132, v164);
    sub_216845208(v175, type metadata accessor for AppleCuratorDetailPageIntent);
    OUTLINED_FUNCTION_15_16();
    v123 = v47;
    goto LABEL_12;
  }

  swift_storeEnumTagMultiPayload();
  sub_2166B53E0();
  sub_217009554();
  (*(v50 + 8))(v54, v48);
LABEL_13:
  OUTLINED_FUNCTION_26();
}

void sub_216840520()
{
  OUTLINED_FUNCTION_49();
  v76 = v1;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v79 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v78 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v77 = v11;
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v75 = v14;
  OUTLINED_FUNCTION_4_1();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v73 = v16;
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_4_1();
  v72 = type metadata accessor for FlowAction(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v21 = OUTLINED_FUNCTION_71_1();
  v22 = type metadata accessor for PlaylistCollaboratorsDetailPageIntent(v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor(v26);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = sub_21700C764();
  if (!v32)
  {
    v31 = sub_21700C7C4();
  }

  v33 = v31;
  v34 = v32;
  v82 = 1;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v36 = v35;
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v35);
  OUTLINED_FUNCTION_139_0(14);
  *(v30 + 88) = v33;
  *(v30 + 96) = v34;
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  v40 = sub_21700C804();
  v42 = v41;
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v30, v25 + v43);
  v44 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  *v25 = v40;
  v25[1] = v42;
  sub_21700D234();
  v75[3] = v22;
  v75[4] = sub_2166C2594(&unk_27CAB94C0);
  __swift_allocate_boxed_opaque_existential_1(v75);
  v48 = OUTLINED_FUNCTION_69_5();
  sub_2168451B0(v48, v49);
  swift_storeEnumTagMultiPayload();
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v36);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v44);
  v60 = v0 + v72[10];
  *(v60 + 32) = 0;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  OUTLINED_FUNCTION_228();
  v61(v0, v18, v74);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v75, v0 + v62);
  sub_217006214();
  v63 = sub_2170061F4();
  v65 = v64;
  v66 = OUTLINED_FUNCTION_42_11();
  v67(v66);
  (*(v73 + 8))(v18, v74);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v75, v68);
  v69 = (v0 + v72[6]);
  *v69 = v63;
  v69[1] = v65;
  *(v0 + v72[7]) = 0;
  sub_2166861C8(v80, v60, &qword_27CABF7B0, &qword_217016E20);
  sub_2167C5834(v77, v0 + v72[8], &qword_27CABA820, &unk_217018CE0);
  sub_2167C5834(v78, v0 + v72[11], &qword_27CAB6BF0, &unk_217015620);
  sub_2167C5834(v79, v0 + v72[9], &qword_27CAB6FD0, &qword_21701D5F0);
  sub_21683E974(v0, v76);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v0, v70);
  sub_216845208(v25, type metadata accessor for PlaylistCollaboratorsDetailPageIntent);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v30, v71);
  OUTLINED_FUNCTION_26();
}

void sub_216840A94()
{
  OUTLINED_FUNCTION_49();
  v50 = v8;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v49 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v18 = OUTLINED_FUNCTION_173();
  v19 = type metadata accessor for ContentDescriptor(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C954();
  v20 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  *v0 = v2;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  if (sub_21688D828(9, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v3 = v49;
    v24 = OUTLINED_FUNCTION_73_5();
    v25(v24);
    sub_21700D244();
    v26 = OUTLINED_FUNCTION_113_2();
    v27(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v4);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_221_0(v28, v29, v30, v20);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_220(v31, v32, v33, v34);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_45_8();
  v39 = OUTLINED_FUNCTION_137();
  v40(v39);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v4, v6 + v41);
  sub_217006214();
  sub_2170061F4();
  v42 = OUTLINED_FUNCTION_114_2();
  v43(v42);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v4, v44);
  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_211(v45, v46, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v6, v50);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v6, v47);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v48);
  OUTLINED_FUNCTION_26();
}

void sub_216840E74()
{
  OUTLINED_FUNCTION_49();
  v50 = v8;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v49 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v18 = OUTLINED_FUNCTION_173();
  v19 = type metadata accessor for ContentDescriptor(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C234();
  v20 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  *v0 = 0;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  if (sub_21688D828(13, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v3 = v49;
    v24 = OUTLINED_FUNCTION_73_5();
    v25(v24);
    sub_21700D244();
    v26 = OUTLINED_FUNCTION_113_2();
    v27(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v4);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_221_0(v28, v29, v30, v20);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_220(v31, v32, v33, v34);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_45_8();
  v39 = OUTLINED_FUNCTION_137();
  v40(v39);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v4, v6 + v41);
  sub_217006214();
  sub_2170061F4();
  v42 = OUTLINED_FUNCTION_114_2();
  v43(v42);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v4, v44);
  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_211(v45, v46, &qword_27CABF7B0, &qword_217016E20);
  sub_21683E974(v6, v50);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v6, v47);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v48);
  OUTLINED_FUNCTION_26();
}

void sub_216841250()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v131 = v2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460, &qword_21701D5E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v130 = v4;
  v5 = OUTLINED_FUNCTION_4_1();
  v129 = type metadata accessor for FlowActionPageView(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v127 = v7;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v125 = v9;
  v126 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v124 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v134 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v133 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v132 = v19;
  v20 = OUTLINED_FUNCTION_4_1();
  v121 = type metadata accessor for FlowAction.Destination(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v118 - v26;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v122 = v29;
  v123 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v120 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47_1();
  v119 = v32;
  v33 = OUTLINED_FUNCTION_4_1();
  v34 = type metadata accessor for FlowAction(v33);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v118 - v40;
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v118 - v47;
  v50 = *v1;
  v49 = v1[1];
  if (v1[4])
  {
    v51 = v1[3];
    v119 = v1[2];
    v135 = 1;
    v52 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
    *v45 = 14;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    *(v45 + 40) = 0u;
    *(v45 + 56) = 0u;
    *(v45 + 72) = 0u;
    *(v45 + 88) = v50;
    *(v45 + 96) = v49;
    *(v45 + 104) = 0;
    *(v45 + 112) = 1;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700D234();
    v56 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010) + 48));
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v45, v24);
    v57 = v119;
    if (!v51)
    {
      v57 = 0;
    }

    *v56 = v57;
    v56[1] = v51;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v52);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    v69 = &v38[v34[10]];
    *(v69 + 32) = 0;
    *v69 = 0u;
    *(v69 + 16) = 0u;
    v70 = v122;
    v71 = v123;
    v72 = OUTLINED_FUNCTION_227();
    v73(v72);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v24, &v38[v74]);
    v75 = v124;
    sub_217006214();
    v76 = sub_2170061F4();
    v78 = v77;
    (*(v125 + 8))(v75, v126);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v24, v79);
    (*(v70 + 8))(v120, v71);
    v80 = &v38[v34[6]];
    *v80 = v76;
    v80[1] = v78;
    v38[v34[7]] = 0;
    sub_2166861C8(&v135, v69, &qword_27CABF7B0, &qword_217016E20);
    sub_2167C5834(v132, &v38[v34[8]], &qword_27CABA820, &unk_217018CE0);
    sub_2167C5834(v133, &v38[v34[11]], &qword_27CAB6BF0, &unk_217015620);
    sub_2167C5834(v134, &v38[v34[9]], &qword_27CAB6FD0, &qword_21701D5F0);
    v41 = v38;
    v48 = v45;
  }

  else
  {
    v135 = 1;
    v81 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
    OUTLINED_FUNCTION_139_0(5);
    *(v48 + 11) = v50;
    *(v48 + 12) = v49;
    *(v48 + 13) = 0;
    v48[112] = 1;
    sub_21700DF14();
    sub_21700D234();
    v85 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010) + 48)];
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v48, v27);
    *v85 = 0;
    *(v85 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
    OUTLINED_FUNCTION_45_8();
    v97 = v122;
    v98 = v123;
    v99 = OUTLINED_FUNCTION_109_0();
    v100(v99);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v27, &v41[v101]);
    v102 = v124;
    sub_217006214();
    v103 = sub_2170061F4();
    v105 = v104;
    (*(v125 + 8))(v102, v126);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v27, v106);
    v107 = (*(v97 + 8))(v119, v98);
    v108 = &v41[v34[6]];
    *v108 = v103;
    v108[1] = v105;
    v41[v34[7]] = 0;
    OUTLINED_FUNCTION_211(v107, v109, &qword_27CABF7B0, &qword_217016E20);
    sub_2167C5834(v132, &v41[v34[8]], &qword_27CABA820, &unk_217018CE0);
    sub_2167C5834(v133, &v41[v34[11]], &qword_27CAB6BF0, &unk_217015620);
    sub_2167C5834(v134, &v41[v34[9]], &qword_27CAB6FD0, &qword_21701D5F0);
  }

  v110 = v127;
  sub_21683E974(v41, v127);
  OUTLINED_FUNCTION_8_19();
  v111 = v130;
  sub_2168451B0(v110, v130);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_34();
  v113 = sub_2166C2594(v112);
  OUTLINED_FUNCTION_149_1(v111, v129, v114, v113);
  OUTLINED_FUNCTION_9_28();
  sub_216845208(v110, v115);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v41, v116);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v48, v117);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216841AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_2166DDC34();
  v7 = v6;
  v9 = v8;

  if ((~v5 & 0xF000000000000007) != 0)
  {
    if (!(v5 >> 62))
    {
      type metadata accessor for UserSocialProfileCoordinator(0);
      type metadata accessor for ObjectGraph(0);
      sub_21700E094();
      v10 = sub_216CAC650();
      if (v11)
      {
        if (v10 == a2 && v11 == a3)
        {

          goto LABEL_25;
        }

        v13 = sub_21700F7D4();

        if (v13)
        {

LABEL_25:
          sub_2166DE78C(v5, v7, v9);
LABEL_26:
          v18 = 1;
          return v18 & 1;
        }
      }

      v16 = *&v19[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID + 8];
      if (v16)
      {
        if (*&v19[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID] == a2 && v16 == a3)
        {
          v18 = 1;
        }

        else
        {
          v18 = sub_21700F7D4();
        }

        sub_21700DF14();

        sub_2166DE78C(v5, v7, v9);
      }

      else
      {

        sub_2166DE78C(v5, v7, v9);
        v18 = 0;
      }

      return v18 & 1;
    }

    sub_2166DE78C(v5, v7, v9);
  }

  if (a2 == 25965 && a3 == 0xE200000000000000)
  {
    goto LABEL_26;
  }

  return sub_21700F7D4();
}

uint64_t sub_216841CC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for SocialProfileButtonView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 20);
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *v6 = sub_2167EA268;
  *(v6 + 1) = v9;
  v6[16] = 0;
  type metadata accessor for ObjectGraph(0);
  sub_2166C2594(&unk_280E37460);

  sub_21700A1E4();
  return sub_216845208(v6, type metadata accessor for SocialProfileButtonView);
}

uint64_t sub_216841E38(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217013DA0;
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD000000000000012, 0x8000000217082DA0);
  sub_217008034();
  sub_21700F544();
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_21700F8D4();
}

uint64_t sub_216841F30@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();

  v2 = sub_2166DDC34();
  v4 = v3;
  v6 = v5;

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (!(v2 >> 62))
    {
      v7 = sub_21700D574();
      type metadata accessor for ObjectGraph(0);
      OUTLINED_FUNCTION_82_2();
      sub_21700E094();
      sub_2166DE78C(v2, v4, v6);
      v8 = a1;
      v9 = 0;
      v10 = 1;
      v11 = v7;
      goto LABEL_6;
    }

    sub_2166DE78C(v2, v4, v6);
  }

  sub_21700D574();
  OUTLINED_FUNCTION_38_2();
LABEL_6:

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_21684202C()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 216);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    type metadata accessor for ObjectGraph(0);
    v3 = sub_216992258(v0);
    *(v0 + v2) = v3;
  }

  return v3;
}

unint64_t *sub_2168420A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if ((~*result & 0xF000000000000007) != 0)
  {
    if (v3 >> 62)
    {
      if (v3 >> 62 == 1)
      {
        v6 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
        swift_beginAccess();
        if (*(a2 + 16))
        {

          sub_217007D34();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
        swift_allocError();
        *v7 = v6;
        v8 = v6;
        return swift_continuation_throwingResumeWithError();
      }
    }

    else
    {
      v9 = result[1];
      v10 = result[2];
      swift_beginAccess();
      if (*(a2 + 16))
      {

        sub_217007D34();
      }

      sub_2166E6B18(v3, v9, v10);
      **(*(a3 + 64) + 40) = v3;
      return swift_continuation_throwingResume();
    }
  }

  return result;
}

uint64_t sub_2168421E8()
{
  OUTLINED_FUNCTION_33();

  sub_216B94248();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_21684224C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 392);
  v2 = *(*(v0 + 64) + 16);
  *(v0 + 256) = v2;
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_84_5(v3);

    return sub_216888918();
  }

  else
  {
    *(v0 + 280) = *(v2 + 96);
    OUTLINED_FUNCTION_206();
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_85_3(v5);

    return v6();
  }
}

uint64_t sub_216842334()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 272) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216842438()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_247();

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_56_1();
  }

  v8 = v0[19];

  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v0[39] = v10;
  v11 = OUTLINED_FUNCTION_115();
  v12(v11);
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122(&qword_280E485B8);
  }

  OUTLINED_FUNCTION_232();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0, &unk_21702BAF0);
  v14 = __swift_project_value_buffer(v13, qword_280E73E20);
  v15 = OUTLINED_FUNCTION_131(v14);
  v17 = v16(v15);
  OUTLINED_FUNCTION_244(v17, "UIBootstrap");
  v18 = *(v9 + 72);
  v0[43] = v18;
  v19 = v18;
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_66_6(v20);

  return sub_216843200(v21, v22, v23, v24);
}

uint64_t sub_2168425AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2168426B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_213();
  v18 = sub_217007C84();
  v19 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v19))
  {
    v20 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v20);
    OUTLINED_FUNCTION_121(&dword_216679000, v21, v22, "Privacy disclaimer acknowledged.");
    OUTLINED_FUNCTION_26_4();
  }

  v23 = v16[39];
  v24 = v16[16];

  v25 = OUTLINED_FUNCTION_116();
  v23(v25);
  sub_2166A8544();
  sub_216697664(v24, &qword_27CAB94C8, &qword_2170506D0);
  sub_2166E660C();
  if (qword_280E2B930 != -1)
  {
    OUTLINED_FUNCTION_116_1(&qword_280E2B930);
  }

  if (byte_280E73A85 == 1)
  {
    OUTLINED_FUNCTION_213();
    v26 = sub_217007C84();
    v27 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_9_3(v27))
    {
      v28 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v28);
      OUTLINED_FUNCTION_121(&dword_216679000, v29, v30, "🧙 Wizard is enabled! ✨");
      OUTLINED_FUNCTION_26_4();
    }

    v31 = v16[39];

    v32 = OUTLINED_FUNCTION_116();
    v31(v32);
  }

  v33 = v16[22];
  OUTLINED_FUNCTION_58();
  sub_2166E6984(v34, v35, v36);

  sub_2166C7454(v33);
  v37 = sub_217007C84();
  v38 = sub_21700EDA4();
  if (os_log_type_enabled(v37, v38))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_245_0(&dword_216679000, v39, v40, "Bootstrap complete.");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_205_0();
  v41 = OUTLINED_FUNCTION_119();
  v17(v41);
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_65_0();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_86_5(v46);

  sub_216697664(v38, &unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 272);
  sub_2166C7454(*(v16 + 168));
  v19 = v18;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_216697664(v22, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_242();
  v30 = OUTLINED_FUNCTION_108();
  v31(v30);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_146(v32);

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 296);
  sub_2166C7454(*(v16 + 168));
  v19 = v18;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_216697664(v22, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_242();
  v30 = OUTLINED_FUNCTION_108();
  v31(v30);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_146(v32);

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[46];
  v19 = v16[20];
  sub_216697664(v16[17], &qword_27CAB94C8, &qword_2170506D0);
  sub_2166C7454(v19);
  v20 = v18;
  v21 = sub_217007C84();
  v22 = sub_21700ED84();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v16[46];
    swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v25 = v23;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_216679000, v21, v22, "UI Bootstrap error. %{public}@", v17, 0xCu);
    sub_216697664(v24, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  v27 = v16[46];
  v28 = v16[39];
  v29 = v16[11];

  v30 = OUTLINED_FUNCTION_119();
  v28(v30);
  OUTLINED_FUNCTION_143();
  v31 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  *(v32 + 16) = *(v29 + 80);
  *(v32 + 24) = *(v29 + 88);
  *(v32 + 40) = *(v29 + 104);
  *(v32 + 48) = v31;
  v33 = v27;

  sub_2166E6984(v27 | 0x4000000000000000, sub_216844C90, v32);

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_217007CA4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_21700EA34();
  v4[12] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2168430F0, v7, v6);
}

uint64_t sub_2168430F0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_241();
  if (swift_weakLoadStrong())
  {
    sub_2166C7454(*(v0 + 88));

    v1 = sub_217007C84();
    v2 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v2))
    {
      v3 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v3);
      OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Bootstrap retrying...");
      OUTLINED_FUNCTION_26_4();
    }

    v6 = OUTLINED_FUNCTION_116();
    v7(v6);
  }

  OUTLINED_FUNCTION_207();
  if (swift_weakLoadStrong())
  {
    sub_216697024(1);
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216843200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[147] = v4;
  v5[146] = a4;
  v5[145] = a2;
  v5[144] = a1;
  v5[148] = *v4;
  return MEMORY[0x2822009F8](sub_216843254, 0, 0);
}

uint64_t sub_216843254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_11();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  sub_216683A80(*(v22 + 1176) + 96, v22 + 56, &qword_27CAB6A50, &qword_217013DB0);
  if (*(v22 + 80))
  {
    sub_2166A0F18((v22 + 56), v22 + 16);
  }

  else
  {
    v25 = type metadata accessor for MusicKitPlayer();
    OUTLINED_FUNCTION_181();
    swift_allocObject();
    v26 = sub_216A1A3E4();
    *(v22 + 40) = v25;
    *(v22 + 48) = &off_282922F18;
    *(v22 + 16) = v26;
    if (*(v22 + 80))
    {
      sub_216697664(v22 + 56, &qword_27CAB6A50, &qword_217013DB0);
    }
  }

  v27 = *(v22 + 1176);
  v28 = *(v22 + 1168);
  v29 = *(v22 + 1160);
  sub_21700D4C4();
  __swift_project_boxed_opaque_existential_1((v22 + 96), *(v22 + 120));
  OUTLINED_FUNCTION_224();
  v30 = type metadata accessor for AcknowledgementPresenter();
  *(v22 + 1096) = v28;
  OUTLINED_FUNCTION_150(v30, v22 + 1096);
  __swift_project_boxed_opaque_existential_1((v22 + 136), *(v22 + 160));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  OUTLINED_FUNCTION_150(v31, v22 + 16);
  __swift_project_boxed_opaque_existential_1((v22 + 176), *(v22 + 200));
  OUTLINED_FUNCTION_224();
  v32 = type metadata accessor for AppDestinationPageProviderBox();
  *(v22 + 1104) = *(v27 + 40);
  OUTLINED_FUNCTION_150(v32, v22 + 1104);
  __swift_project_boxed_opaque_existential_1((v22 + 216), *(v22 + 240));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_65_0();
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;

  swift_unknownObjectRetain();
  sub_21700DBE4();

  __swift_project_boxed_opaque_existential_1((v22 + 256), *(v22 + 280));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8, &unk_21701D740);
  OUTLINED_FUNCTION_103_4();
  nullsub_1();
  v35 = v34;
  OUTLINED_FUNCTION_103_4();
  *(v22 + 360) = _s19PlayActivityContextVMa(v36, v37, v38, v39);
  *(v22 + 368) = &off_282938290;
  *(v22 + 336) = v35;
  v40 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_209(v40, v22 + 336);
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 336));
  __swift_project_boxed_opaque_existential_1((v22 + 296), *(v22 + 320));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
  OUTLINED_FUNCTION_103_4();
  nullsub_1();
  v42 = v41;
  OUTLINED_FUNCTION_103_4();
  *(v22 + 440) = _s11PageContextVMa(v43, v44, v45, v46);
  *(v22 + 448) = &off_282927E48;
  *(v22 + 416) = v42;
  v47 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_209(v47, v22 + 416);
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 416));
  OUTLINED_FUNCTION_65((v22 + 376));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216683A80(v27 + 136, v22 + 496, &qword_27CAB9450, &qword_21701D5D8);
  OUTLINED_FUNCTION_68_1();
  v48 = swift_allocObject();
  v49 = *(v22 + 512);
  *(v48 + 16) = *(v22 + 496);
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v22 + 528);
  *(v22 + 1112) = v48;
  OUTLINED_FUNCTION_118_2(v48, v22 + 1112);

  OUTLINED_FUNCTION_65((v22 + 456));
  type metadata accessor for MusicPinsCoordinatorWrapper();
  sub_216683A80(v27 + 176, v22 + 576, &qword_27CAB6A60, &unk_217013DC0);
  OUTLINED_FUNCTION_68_1();
  v50 = swift_allocObject();
  v51 = *(v22 + 592);
  *(v50 + 16) = *(v22 + 576);
  *(v50 + 32) = v51;
  *(v50 + 48) = *(v22 + 608);
  *(v22 + 1120) = v50;
  OUTLINED_FUNCTION_118_2(v50, v22 + 1120);

  OUTLINED_FUNCTION_65((v22 + 536));
  type metadata accessor for SingConnectedStatusWrapper();
  sub_216683A80(v27 + 216, v22 + 656, &qword_27CAB6A58, &qword_217013DB8);
  OUTLINED_FUNCTION_68_1();
  v52 = swift_allocObject();
  v53 = *(v22 + 672);
  *(v52 + 16) = *(v22 + 656);
  *(v52 + 32) = v53;
  *(v52 + 48) = *(v22 + 688);
  *(v22 + 1128) = v52;
  OUTLINED_FUNCTION_118_2(v52, v22 + 1128);

  __swift_project_boxed_opaque_existential_1((v22 + 616), *(v22 + 640));
  v54 = OUTLINED_FUNCTION_224();
  type metadata accessor for MusicTabChangePublisher(v54);
  a10 = 0;
  a11 = 0;
  swift_allocObject();
  v55 = sub_2166CA970(&a10);
  *(v22 + 1136) = v55;
  OUTLINED_FUNCTION_200(v55, v22 + 1136);

  v56 = OUTLINED_FUNCTION_65((v22 + 696));
  v57 = type metadata accessor for PlaybackPresenter(v56);
  sub_2167B7D58(v22 + 16, v22 + 776);
  OUTLINED_FUNCTION_68_1();
  v58 = swift_allocObject();
  sub_2166A0F18((v22 + 776), v58 + 16);
  OUTLINED_FUNCTION_243(v57, sub_216844D98, v58);

  __swift_project_boxed_opaque_existential_1((v22 + 736), *(v22 + 760));
  OUTLINED_FUNCTION_224();
  type metadata accessor for CloudAccountStatusController();
  OUTLINED_FUNCTION_181();
  swift_allocObject();
  v59 = sub_2166CB670();
  *(v22 + 1144) = v59;
  OUTLINED_FUNCTION_200(v59, v22 + 1144);

  __swift_project_boxed_opaque_existential_1((v22 + 816), *(v22 + 840));
  sub_21700DC14();
  v60 = OUTLINED_FUNCTION_65((v22 + 856));
  type metadata accessor for UnifiedMessages.Coordinator(v60);
  sub_21700DBE4();
  __swift_project_boxed_opaque_existential_1((v22 + 896), *(v22 + 920));
  sub_21700DC14();
  OUTLINED_FUNCTION_65((v22 + 936));
  v61 = _s20AppLifecycleObserverCMa();

  OUTLINED_FUNCTION_243(v61, sub_216844DB4, v27);

  __swift_project_boxed_opaque_existential_1((v22 + 976), *(v22 + 1000));
  OUTLINED_FUNCTION_38();
  sub_21700DC14();
  __swift_project_boxed_opaque_existential_1((v22 + 1016), *(v22 + 1040));
  OUTLINED_FUNCTION_116();
  sub_21700DBC4();
  *(v22 + 1080) = sub_21700D7C4();
  *(v22 + 1088) = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1((v22 + 1056));
  sub_21700D7B4();
  type metadata accessor for ObjectGraph(0);
  *(v22 + 1192) = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 1056));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 1016));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 976));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 936));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 896));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 856));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 816));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 736));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 696));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 616));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 536));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 456));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 376));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 256));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 216));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v22 + 96));
  v62 = swift_task_alloc();
  *(v22 + 1200) = v62;
  *v62 = v22;
  v62[1] = sub_216843A28;
  OUTLINED_FUNCTION_120();

  return v63(v63, v64, v65, v66, v67, v68, v69, v70, sub_2166CC54C, a10, a11, a12, a13, a14);
}

uint64_t sub_216843A28()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 1208) = v0;

  if (!v0)
  {
    *(v5 + 1216) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216843B5C()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[152];

  return v1(v2);
}

uint64_t sub_216843BC0()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_3();

  return v1();
}

void sub_216843C1C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_71_1();
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_21700EA34();

  v16 = sub_21700EA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v7;
  v17[5] = v5;
  v17[6] = v3;
  v17[7] = v1;
  v17[8] = v9;
  sub_21677BBA0();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216843D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_217007CA4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_21700EA34();
  v4[12] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216843E10, v7, v6);
}

uint64_t sub_216843E10()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_241();
  if (swift_weakLoadStrong())
  {
    sub_2166C7454(*(v0 + 88));

    v1 = sub_217007C84();
    v2 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v2))
    {
      v3 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v3);
      OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Bootstrap retrying...");
      OUTLINED_FUNCTION_26_4();
    }

    v6 = OUTLINED_FUNCTION_116();
    v7(v6);
  }

  OUTLINED_FUNCTION_207();
  if (swift_weakLoadStrong())
  {
    sub_216697024(0);
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216843F20@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a3;
  v31 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v30 = a1[5];
  sub_2166CC8A4(v7);
  sub_2166D65F4();
  v20 = *(v5 + 8);
  v20(v7, v4);
  sub_2166D9718();
  v20(v10, v4);
  sub_2166DC4CC();
  v20(v13, v4);
  sub_2166DF938(0, v19);
  v21 = (v20)(v16, v4);
  sub_2166E2810(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  return (v20)(v19, v4);
}

uint64_t sub_216844188@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  v5 = v7[6];
  sub_2167B7D58(a2, v7);
  type metadata accessor for PlaybackPresenter(0);
  swift_allocObject();
  result = sub_2166CECC4(v5, v7);
  *a3 = result;
  return result;
}

void sub_216844234(uint64_t *a1@<X8>)
{
  type metadata accessor for UnifiedMessages.Coordinator(0);
  swift_allocObject();

  sub_2169FDDF0();
  *a1 = v2;
}

uint64_t sub_216844294@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_216683A80(a1 + 256, &v10, &qword_27CAB9458, &qword_21701D5E0);
  if (v11)
  {
    sub_2166A0F18(&v10, v12);
  }

  else
  {
    v4 = sub_21684439C();
    v6 = v5;
    v12[3] = &type metadata for EmptyConnectionOptions;
    v7 = sub_216844DD0();
    v12[0] = v4;
    v12[1] = v6;
    v12[4] = v7;
    v12[2] = 0;
    if (v11)
    {
      sub_216697664(&v10, &qword_27CAB9458, &qword_21701D5E0);
    }
  }

  _s20AppLifecycleObserverCMa();
  swift_allocObject();

  result = sub_2169511BC(v8, v12);
  *a2 = result;
  return result;
}

uint64_t sub_21684439C()
{
  if (sub_2166BF3C8(MEMORY[0x277D84F90]))
  {
    sub_216F0F90C(MEMORY[0x277D84F90]);
    v1 = v0;
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  if (sub_2166BF3C8(MEMORY[0x277D84F90]))
  {
    sub_216F0F79C(MEMORY[0x277D84F90]);
  }

  return v1;
}

uint64_t sub_216844418@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObjectGraph(0);

  v2 = sub_21700D4F4();

  sub_21700D484();

  type metadata accessor for AppLifeCycleIntentDispatcher(0);
  sub_21700E094();
  sub_2166E465C(v2);

  *a1 = v2;
  return result;
}

uint64_t sub_2168444D4()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21684460C, v5, v4);
}

uint64_t sub_21684460C()
{
  OUTLINED_FUNCTION_93();
  if (*(v0 + 152) == 2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    OUTLINED_FUNCTION_3();

    return v1();
  }

  else
  {
    if (sub_216A4FFB4())
    {
      sub_2166C7454(*(v0 + 40));
      v3 = sub_217007C84();
      v4 = sub_21700EDA4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_43();
        *v5 = 0;
        _os_log_impl(&dword_216679000, v3, v4, "Privacy disclaimer acknowledgement changed.", v5, 2u);
        OUTLINED_FUNCTION_56_1();
      }

      v6 = OUTLINED_FUNCTION_115();
      v7(v6);
      sub_216B94248();
    }

    v8 = sub_21700EA24();
    *(v0 + 136) = v8;
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_77_4(v9);
    v10 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 152, v8, v10);
  }
}

char *sub_2168447DC()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  swift_unknownObjectRelease();
  sub_216697664((v0 + 96), &qword_27CAB6A50, &qword_217013DB0);
  sub_216697664((v0 + 136), &qword_27CAB9450, &qword_21701D5D8);
  sub_216697664((v0 + 176), &qword_27CAB6A60, &unk_217013DC0);
  sub_216697664((v0 + 216), &qword_27CAB6A58, &qword_217013DB8);
  sub_216697664((v0 + 256), &qword_27CAB9458, &qword_21701D5E0);
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 200)]);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t sub_216844928()
{
  sub_2168447DC();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216844980()
{
  v1 = [v0 URLContexts];
  OUTLINED_FUNCTION_51();
  sub_216685F4C(v2, v3, v4);
  OUTLINED_FUNCTION_51();
  sub_216685F8C(v5);
  v6 = sub_21700EB84();

  LOBYTE(v1) = sub_216844AF8(v6);

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v7 = [v0 userActivities];
  OUTLINED_FUNCTION_51();
  sub_216685F4C(v8, v9, v10);
  OUTLINED_FUNCTION_51();
  sub_216685F8C(v11);
  v12 = sub_21700EB84();

  LOBYTE(v7) = sub_216844AF8(v12);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v13 = [v0 shortcutItem];
  if (v13)
  {

    return 0;
  }

  return 1;
}

BOOL sub_216844AF8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_21700F2B4();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

unint64_t sub_216844C20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216844CDC()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_189();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);
  OUTLINED_FUNCTION_145_0();

  return sub_216843D1C(v3, v4, v5, v6);
}

unint64_t sub_216844DD0()
{
  result = qword_27CAB94F0;
  if (!qword_27CAB94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB94F0);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216844E64()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_189();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);
  OUTLINED_FUNCTION_145_0();

  return sub_216842FFC(v3, v4, v5, v6);
}

uint64_t sub_216844F04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216844F44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_216844F94(uint64_t a1)
{
  result = sub_216844FBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216844FBC()
{
  result = qword_27CAB94F8;
  if (!qword_27CAB94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB94F8);
  }

  return result;
}

uint64_t sub_216845010(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_216845080(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_216845080(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_216845090(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_216845090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_216845158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2168451B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216845208(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_89_5()
{
  v2 = v0 + *(v1 + 40);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return sub_2166E6984(v0 | 0x4000000000000000, sub_216844C70, v1);
}

unint64_t OUTLINED_FUNCTION_99_5()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1160);
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1176);
  *(v0 + 280) = v5;
  *(v0 + 288) = v4;
  v6 = *(v0 + 1184);
  *(v0 + 272) = v6;
  *(v0 + 1152) = v2;
  *(v0 + 1160) = v3;
  *(v0 + 1168) = v4;
  *(v0 + 1176) = v5;
  *(v0 + 1184) = v6;

  return sub_216785CE8();
}

uint64_t OUTLINED_FUNCTION_101_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_117_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = *(v3 + 16);
  v2[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_146(uint64_t a1)
{
  *(a1 + 16) = *(v3 + 80);
  *(a1 + 24) = *(v3 + 88);
  *(a1 + 40) = *(v3 + 104);
  *(a1 + 48) = v2;

  return v1;
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_217009554();
}

void OUTLINED_FUNCTION_159()
{
  v4 = (v1 + *(v3 + 24));
  v5 = *(v0 + 784);
  *v4 = v2;
  v4[1] = v5;
  *(v1 + *(v3 + 28)) = 0;
}

void OUTLINED_FUNCTION_160()
{
  v4 = (v1 + *(v2 + 24));
  v5 = *(v3 - 200);
  *v4 = v0;
  v4[1] = v5;
  *(v1 + *(v2 + 28)) = 0;
}

uint64_t OUTLINED_FUNCTION_162()
{
  v3 = *(v0 + 680);

  return sub_2168451B0(v1, v3);
}

uint64_t OUTLINED_FUNCTION_163()
{
  v3 = *(v0 + 680);

  return sub_2168451B0(v1, v3);
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_172()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_175()
{
  *(v0 + 1392) = 0;
  *v1 = 0u;
  v1[1] = 0u;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_176_1()
{
}

uint64_t OUTLINED_FUNCTION_177_0()
{
  *(v0 - 128) = 1;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_2166CBFB4(v0 + 1272, v0 + 1184);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_184()
{
  v4 = (v2 + *(v3 + 24));
  *v4 = v0;
  v4[1] = v1;
  *(v2 + *(v3 + 28)) = 0;
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_199(uint64_t a1, uint64_t *a2)
{

  return sub_216697664(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_201()
{
  v5 = *(v0 + 624);

  return sub_216683A80(v3, v5, v1, v2);
}

void OUTLINED_FUNCTION_205_0()
{
}

uint64_t OUTLINED_FUNCTION_207()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_209(uint64_t a1, uint64_t a2)
{

  return sub_21700DC04();
}

uint64_t OUTLINED_FUNCTION_211(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2166861C8(v5 - 128, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_212(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_213()
{

  return sub_2166C7454(v0);
}

uint64_t OUTLINED_FUNCTION_219(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for Page.Header(0);
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for ReferrerInfo(0);
}

uint64_t OUTLINED_FUNCTION_239(uint64_t a1)
{
  v5 = *(v3 - 144);

  return sub_216683A80(a1, v5, v1, v2);
}

uint64_t OUTLINED_FUNCTION_240()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_242()
{
}

uint64_t OUTLINED_FUNCTION_243(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700DBE4();
}

uint64_t OUTLINED_FUNCTION_244(uint64_t a1, const char *a2)
{

  return sub_21669E79C(v3, a2, 11, 2, v2);
}

uint64_t OUTLINED_FUNCTION_248()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_250()
{
  *v0 = 0;
  v0[1] = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_252(uint64_t a1)
{

  return sub_217006214();
}

uint64_t OUTLINED_FUNCTION_253(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for LibraryPlaylistViewModel(uint64_t a1)
{
  result = qword_280E36830;
  if (!qword_280E36830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168459F4(uint64_t a1)
{
  sub_21700C924();
  if (v1 <= 0x3F)
  {
    sub_216845A90(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216845A90(uint64_t a1)
{
  if (!qword_280E2A370)
  {
    sub_21700C8E4();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A370);
    }
  }
}

unint64_t sub_216845AEC()
{
  result = qword_27CAB9510;
  if (!qword_27CAB9510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9518, qword_21701D870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9510);
  }

  return result;
}

uint64_t sub_216845B50()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_21700B804();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216845C0C, 0, 0);
}

uint64_t sub_216845C0C()
{
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for LibraryPlaylistViewModel(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[8] = v0[2];
  v1 = sub_2166EFC70();
  if (sub_2166C0DB4(v1) == 0x6269726373627573 && v2 == 0xEA00000000006465)
  {
  }

  else
  {
    v4 = sub_21700F7D4();

    if ((v4 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_21701D820;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9520, &qword_21701D8E0);
      *(v5 + 32) = sub_21700B724();
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21701D830;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9520, &qword_21701D8E0);
  *(v5 + 32) = sub_21700B724();
  *(v5 + 40) = sub_21700B684();
LABEL_9:
  v0[9] = v5;
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CD7D00], v0[5]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_21700C924();
  v8 = sub_2166B4B40(&qword_27CAB9528, MEMORY[0x277CD8608], MEMORY[0x277CD8628]);
  *v6 = v0;
  v6[1] = sub_216845E88;
  v9 = v0[7];
  v10 = v0[3];
  v11 = MEMORY[0x277CD85F0];
  v12 = MEMORY[0x277CD85D8];

  return MEMORY[0x282124810](v10, v5, v9, v7, v11, v12, v8);
}

uint64_t sub_216845E88()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_216846084;
  }

  else
  {
    v5 = sub_21684601C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21684601C()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216846084()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2168460EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21700C924();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + *(type metadata accessor for LibraryPlaylistViewModel(0) + 24));

  sub_216BCA61C(v13);
  (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_2168463E0(v8, v13, sub_216846668, v10, &qword_27CAB9518, qword_21701D870, sub_216846748, a2);
}

uint64_t sub_216846280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_2168467BC;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2168463E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B4B40(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  *a9 = sub_217008CF4();
  a9[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = v18[9];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  sub_2168466D8(a2, v27);
  v20 = swift_allocObject();
  v21 = v27[1];
  *(v20 + 16) = v27[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v28;
  *(v20 + 56) = a1;
  v22 = a9 + v18[10];
  *v22 = a8;
  *(v22 + 1) = v20;
  v22[16] = 0;
  v23 = (a9 + v18[11]);
  *v23 = a3;
  v23[1] = a4;
  *(a9 + v18[13]) = a1;
  type metadata accessor for AppDestinationPageProviderBox();
  type metadata accessor for ObjectGraph(0);
  swift_retain_n();

  sub_21700E094();
  *(a9 + v18[12]) = *&v27[0];
  v24 = type metadata accessor for UserSocialProfileCoordinator(0);
  OUTLINED_FUNCTION_2_34(v24);
  *(a9 + v18[14]) = *&v27[0];
  v25 = type metadata accessor for SocialGraphController(0);
  OUTLINED_FUNCTION_2_34(v25);

  result = sub_216846754(a2);
  *(a9 + v18[15]) = *&v27[0];
  return result;
}

uint64_t sub_2168465CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167CCCD0;

  return sub_216845B50();
}

uint64_t sub_216846668@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C924() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216846280(v4, a1);
}

uint64_t sub_2168466D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AB8, &unk_217013E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216846754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AB8, &unk_217013E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168467BC()
{
  v1 = *(sub_21700C924() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216CC331C(v2);
}

uint64_t objectdestroy_3Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216846860(uint64_t a1)
{
  result = sub_216846CA8(&qword_280E2A218, MEMORY[0x277D21D20], &protocol conformance descriptor for CompoundAction);
  *(a1 + 8) = result;
  return result;
}

id sub_216846900(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v17 = type metadata accessor for RoutedActionIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB9560, &qword_21701DA18);
    v9 = sub_21700E594();
    v19 = MEMORY[0x277D837D0];
    v17 = v9;
    v18 = v10;
    v11 = a1;
    v12 = sub_2166F1E10(&v17, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2167DE934(v2, v6);
    v13 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_216846CF0(v6);
    }

    else
    {
      v14 = sub_217005DE4();
      v16 = v15;
      (*(*(v13 - 8) + 8))(v6, v13);
      v17 = v14;
      v18 = v16;
      sub_21700DD04();

      sub_21700F0B4();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RoutedActionIntent(uint64_t a1)
{
  result = qword_27CAB9538;
  if (!qword_27CAB9538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216846B70(uint64_t a1)
{
  sub_216688680(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216846C24(uint64_t a1)
{
  *(a1 + 8) = sub_216846CA8(&qword_27CAB9550, type metadata accessor for RoutedActionIntent, &unk_21701D9C4);
  result = sub_216846CA8(&qword_27CAB9558, type metadata accessor for RoutedActionIntent, &unk_21701D954);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216846CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216846CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216846D5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_216781DA8(v0 + 24);

  return v0;
}

uint64_t sub_216846DF4()
{
  sub_216846D5C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216846E28(uint64_t a1)
{
  sub_217005974();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  if (*(v2 + 32) != 1)
  {
    return (*(v2 + 48))(a1, v9);
  }

  sub_2166AF2EC();
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v1);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  sub_216E1B2E4();
}

uint64_t sub_216846FB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);

    v4(a2);
  }

  return result;
}

uint64_t sub_216847128()
{
  v1 = *(sub_217005974() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_216846FB8(v2, v3);
}

id sub_2168471C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2166F1DCC();
  v8[3] = a3;
  v8[0] = a2;
  v6 = a1;
  result = sub_2166F1E10(v8, a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216847230(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_21684736C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
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
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216847588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21684760C()
{
  sub_21700ACC4();
  v1 = sub_21700AD04();

  sub_21700ACF4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);

  sub_216847A1C(sub_216847A14, v2);
  sub_21700AC44();
  OUTLINED_FUNCTION_47();

  qword_280E73AA0 = 0x3FF0000000000000;
  byte_280E73AA8 = 1;
  qword_280E73AB0 = v3;
  return result;
}

uint64_t sub_216847704(uint64_t a1, uint64_t a2)
{
  v4 = sub_217008B44();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216847778(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_217008B44();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217008B34();
  __swift_allocate_value_buffer(v9, a3);
  v10 = __swift_project_value_buffer(v9, a3);
  v11 = *(v6 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_217009294();
  (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
  __asm { FMOV            V0.2D, #5.0 }

  *v8 = _Q0;
  sub_216847704(v8, v10);
  *(v10 + *(v9 + 20)) = a1;
  return sub_2167CA3B0(v8);
}

double sub_216847894()
{
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_47();

  result = 0.0;
  xmmword_280E73AC0 = xmmword_21701DBD0;
  qword_280E73AD0 = 0x4018000000000000;
  qword_280E73AD8 = v0;
  qword_280E73AE0 = 0xC010000000000000;
  return result;
}

double sub_2168478F0()
{
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_47();

  result = 0.0;
  xmmword_280E73AF0 = xmmword_21701DBE0;
  qword_280E73B00 = 0x4034000000000000;
  qword_280E73B08 = v0;
  qword_280E73B10 = 0xC02E000000000000;
  return result;
}

uint64_t sub_21684794C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8, &unk_217027360);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217018C90;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 32) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 40) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 48) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  result = OUTLINED_FUNCTION_0_46();
  *(v1 + 56) = v0;
  qword_27CB22858 = v1;
  return result;
}

void *sub_216847A1C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_216847ABC;
  v5[3] = &block_descriptor_1;
  [v2 initWithDynamicProvider_];
  v3 = OUTLINED_FUNCTION_47();
  _Block_release(v3);

  return v2;
}

id sub_216847ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_216847B50()
{
  result = qword_27CAB95F0;
  if (!qword_27CAB95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB95F0);
  }

  return result;
}

unint64_t sub_216847C38()
{
  result = qword_27CAB9608;
  if (!qword_27CAB9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9608);
  }

  return result;
}

unint64_t sub_216847E88()
{
  result = qword_27CAB9640;
  if (!qword_27CAB9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9640);
  }

  return result;
}

unint64_t sub_216848000()
{
  result = qword_27CAB9668;
  if (!qword_27CAB9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9668);
  }

  return result;
}

uint64_t sub_216848204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216848250()
{
  result = qword_27CAB9698;
  if (!qword_27CAB9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9698);
  }

  return result;
}

id sub_2168482A4(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2168482F4(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  sub_21700CE04();
  v11 = sub_21700CD44();
  v12 = *(v5 + 8);
  v12(v10, v4);
  sub_21700CE04();
  v13 = sub_21700CD44();
  v14 = sub_21700CF34();
  (*(*(v14 - 8) + 8))(a2, v14);
  v12(a1, v4);
  v12(v7, v4);
  return v11 & 1 | ((v13 & 1) << 8);
}

uint64_t sub_2168484BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2168482F4(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
    a3[1] = result > 0xFFu;
  }

  return result;
}

unint64_t sub_2168484FC(uint64_t a1)
{
  result = sub_216848524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216848524()
{
  result = qword_27CAB96A0;
  if (!qword_27CAB96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96A0);
  }

  return result;
}

uint64_t _s10EnablementVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10EnablementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216848700()
{
  result = qword_27CAB96A8;
  if (!qword_27CAB96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96A8);
  }

  return result;
}

unint64_t sub_216848754(uint64_t a1)
{
  *(a1 + 8) = sub_216848784();
  result = sub_2168487D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216848784()
{
  result = qword_280E41860[0];
  if (!qword_280E41860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E41860);
  }

  return result;
}

unint64_t sub_2168487D8()
{
  result = qword_27CAB96B0;
  if (!qword_27CAB96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96B0);
  }

  return result;
}

uint64_t dispatch thunk of MusicPinsCoordinator.promptPinsDownloadAlert()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216848948;

  return v7(a1, a2);
}

uint64_t sub_216848948(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_216848A44()
{
  sub_216848A7C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216848A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A60, &unk_217013DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216848AE4()
{
  type metadata accessor for RegistrationProvider(0);
  v0 = swift_allocObject();
  result = sub_216849DE8();
  qword_27CB22860 = v0;
  return result;
}

uint64_t sub_216848B24()
{
  v1 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_bubbleLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B90, &qword_21701E5A0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_searchLandingBrickLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B98, &qword_21701E5A8);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_emptyState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BA0, &qword_21701E5B0);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_flowcaseLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BA8, &qword_21701E5B8);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_groupTextListLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BB0, &qword_21701E5C0);
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_header;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BB8, &qword_21701E5C8);
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v11);
  v13 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_horizontalLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BC0, &qword_21701E5D0);
  OUTLINED_FUNCTION_9_0();
  (*(v14 + 8))(v0 + v13);
  v15 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_horizontalPosterLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BC8, &qword_21701E5D8);
  OUTLINED_FUNCTION_9_0();
  (*(v16 + 8))(v0 + v15);
  v17 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_inlineUpsell;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BD0, &qword_21701E5E0);
  OUTLINED_FUNCTION_9_0();
  (*(v18 + 8))(v0 + v17);
  v19 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_links;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BD8, &qword_21701E5E8);
  OUTLINED_FUNCTION_9_0();
  (*(v20 + 8))(v0 + v19);
  v21 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_paragraph;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BE0, &qword_21701E5F0);
  OUTLINED_FUNCTION_9_0();
  (*(v22 + 8))(v0 + v21);
  v23 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_popoverSelector;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BE8, &qword_21701E5F8);
  OUTLINED_FUNCTION_9_0();
  (*(v24 + 8))(v0 + v23);
  v25 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_posterLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BF0, &qword_21701E600);
  OUTLINED_FUNCTION_9_0();
  (*(v26 + 8))(v0 + v25);
  v27 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_squareLockup;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BF8, &qword_21701E608);
  OUTLINED_FUNCTION_34();
  v30 = *(v29 + 8);
  v30(v0 + v27, v28);
  v30(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_largeSquareLockup, v28);
  v31 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_suggestionItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C00, &qword_21701E610);
  OUTLINED_FUNCTION_9_0();
  (*(v32 + 8))(v0 + v31);
  v33 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_sharedWithYouLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C08, &qword_21701E618);
  OUTLINED_FUNCTION_9_0();
  (*(v34 + 8))(v0 + v33);
  v35 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_superHeroLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C10, &qword_21701E620);
  OUTLINED_FUNCTION_9_0();
  (*(v36 + 8))(v0 + v35);
  v37 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_textList;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C18, &qword_21701E628);
  OUTLINED_FUNCTION_9_0();
  (*(v38 + 8))(v0 + v37);
  v39 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_trackShelfLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C20, &qword_21701E630);
  OUTLINED_FUNCTION_9_0();
  (*(v40 + 8))(v0 + v39);
  v41 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_smallVerticalVideoLockup;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C28, &unk_21701E638);
  OUTLINED_FUNCTION_34();
  v44 = *(v43 + 8);
  v44(v0 + v41, v42);
  v44(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_verticalVideoLockup, v42);
  v44(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_largeVerticalVideoLockup, v42);
  return v0;
}

uint64_t sub_2168490B8()
{
  sub_216848B24();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for RegistrationProvider(uint64_t a1)
{
  result = qword_27CAB96B8;
  if (!qword_27CAB96B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216849164(uint64_t a1)
{
  sub_2168497F4(319);
  if (v1 <= 0x3F)
  {
    sub_216849C74(319, &qword_27CAB96D8, &qword_27CAB96E0, &unk_2170400A0, type metadata accessor for SearchLandingBrickLockup);
    if (v2 <= 0x3F)
    {
      sub_216849C74(319, &qword_27CAB96E8, &qword_27CAB96F0, &unk_21701E150, type metadata accessor for EmptyStateLockup);
      if (v3 <= 0x3F)
      {
        sub_216849874(319);
        if (v4 <= 0x3F)
        {
          sub_216849C74(319, &qword_27CAB9708, &qword_27CAB9710, &qword_21701E168, type metadata accessor for GroupedTextListLockup);
          if (v5 <= 0x3F)
          {
            sub_2168498F4(319);
            if (v6 <= 0x3F)
            {
              sub_216849974(319);
              if (v7 <= 0x3F)
              {
                sub_2168499F4(319);
                if (v8 <= 0x3F)
                {
                  sub_216849C74(319, &qword_27CAB9750, &qword_27CAB9758, &unk_21701E1A0, type metadata accessor for InlineUpsell);
                  if (v9 <= 0x3F)
                  {
                    sub_216849C74(319, &qword_27CAB9760, &qword_27CAB9768, &unk_217040080, type metadata accessor for LinkComponentModel);
                    if (v10 <= 0x3F)
                    {
                      sub_216849C74(319, &qword_27CAB9770, &qword_27CAB9778, &unk_21701E1B0, type metadata accessor for ParagraphComponentModel);
                      if (v11 <= 0x3F)
                      {
                        sub_216849C74(319, &qword_27CAB9780, &qword_27CAB9788, &unk_217040070, type metadata accessor for PopoverSelector);
                        if (v12 <= 0x3F)
                        {
                          sub_216849A74(319);
                          if (v13 <= 0x3F)
                          {
                            sub_216849AF4(319);
                            if (v14 <= 0x3F)
                            {
                              sub_216849C74(319, &qword_27CAB97B0, &qword_27CAB97B8, &unk_21701E1E0, type metadata accessor for SuggestionItem);
                              if (v15 <= 0x3F)
                              {
                                sub_216849B74(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_216849BF4(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_216849C74(319, &qword_27CAB97E8, &qword_27CAB97F0, &unk_217040050, type metadata accessor for TextListComponentModel);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_216849CE8(319);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_216849D68(319);
                                        if (v20 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2168497F4(uint64_t a1)
{
  if (!qword_27CAB96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB96D0, &qword_21701E138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8C0, &unk_21701E140);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB96C8);
    }
  }
}

void sub_216849874(uint64_t a1)
{
  if (!qword_27CAB96F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9700, &unk_217040090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8D0, &qword_21701E160);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB96F8);
    }
  }
}

void sub_2168498F4(uint64_t a1)
{
  if (!qword_27CAB9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9720, &unk_21701E170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728, &unk_217060FC0);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9718);
    }
  }
}

void sub_216849974(uint64_t a1)
{
  if (!qword_27CAB9730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9738, &unk_21701E180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8E0, &unk_217040040);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9730);
    }
  }
}

void sub_2168499F4(uint64_t a1)
{
  if (!qword_27CAB9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9748, &unk_21701E190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8F0, &unk_217033E40);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9740);
    }
  }
}

void sub_216849A74(uint64_t a1)
{
  if (!qword_27CAB9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9798, &unk_21701E1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF920, &qword_21701F310);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9790);
    }
  }
}

void sub_216849AF4(uint64_t a1)
{
  if (!qword_27CAB97A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97A8, &unk_21701E1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF970, &unk_217033E60);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB97A0);
    }
  }
}

void sub_216849B74(uint64_t a1)
{
  if (!qword_27CAB97C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97C8, &unk_217040060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF940, &qword_21701E1F0);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB97C0);
    }
  }
}

void sub_216849BF4(uint64_t a1)
{
  if (!qword_27CAB97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97D8, &qword_21701E1F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97E0, &unk_21701E200);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB97D0);
    }
  }
}

void sub_216849C74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5(255);
    v7 = sub_21700EDE4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_216849CE8(uint64_t a1)
{
  if (!qword_27CAB97F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9800, &unk_21701E210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF990, &unk_217033E70);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB97F8);
    }
  }
}

void sub_216849D68(uint64_t a1)
{
  if (!qword_27CAB9808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9810, &unk_21701E220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF9A0, &qword_217044270);
    v1 = sub_21700EDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB9808);
    }
  }
}

uint64_t sub_216849DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96D0, &qword_21701E138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8C0, &unk_21701E140);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96E0, &unk_2170400A0);
  v1 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for SearchLandingBrickLockup(v1);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96F0, &unk_21701E150);
  v2 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for EmptyStateLockup(v2);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9700, &unk_217040090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8D0, &qword_21701E160);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9710, &qword_21701E168);
  v3 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for GroupedTextListLockup(v3);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9720, &unk_21701E170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9728, &unk_217060FC0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9738, &unk_21701E180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8E0, &unk_217040040);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9748, &unk_21701E190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8F0, &unk_217033E40);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9758, &unk_21701E1A0);
  v4 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for InlineUpsell(v4);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9768, &unk_217040080);
  v5 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for LinkComponentModel(v5);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9778, &unk_21701E1B0);
  v6 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ParagraphComponentModel(v6);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9788, &unk_217040070);
  v7 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PopoverSelector(v7);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9798, &unk_21701E1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF920, &qword_21701F310);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97A8, &unk_21701E1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF970, &unk_217033E60);
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97B8, &unk_21701E1E0);
  v8 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for SuggestionItem(v8);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97C8, &unk_217040060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF940, &qword_21701E1F0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97D8, &qword_21701E1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97E0, &unk_21701E200);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97F0, &unk_217040050);
  v9 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for TextListComponentModel(v9);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9800, &unk_21701E210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF990, &unk_217033E70);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9810, &unk_21701E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9A0, &qword_217044270);
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  return v0;
}

uint64_t sub_21684A3F4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  sub_216852FAC();
  v8 = swift_endAccess();
  a4(v8);
  return sub_2166997CC(a1, a2, a3);
}

uint64_t sub_21684A4A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9818, &qword_21701E230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9820, &qword_21701E238);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9828, &qword_21701E240);
    v12 = sub_216851E18();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9838, &qword_27CAB9818, &qword_21701E230, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684A708()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9840, &qword_21701E2D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9848, &qword_21701E2E0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9850, &qword_21701E2E8);
    v12 = sub_216851F0C();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9860, &qword_27CAB9840, &qword_21701E2D8, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684A96C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9870, &qword_21701E2F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868, &qword_21701E2F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for TextListComponentModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9868, &qword_21701E2F0);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9878, &unk_21701E300);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9880, &unk_21706F840);
  v16 = sub_216852000();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9890, &qword_27CAB9870, &qword_21701E2F8, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684ACD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9898, &qword_21701E310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98A0, &qword_21701E318);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98A8, &qword_21701E320);
    v12 = sub_2168520F4();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB98B8, &qword_27CAB9898, &qword_21701E310, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684AF38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98C0, &qword_21701E350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98C8, &qword_21701E358);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98D0, &unk_21701E360);
    v12 = sub_2168521E8();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB98E0, &qword_27CAB98C0, &qword_21701E350, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B19C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98E8, &qword_21701E370);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0, &qword_21701C4B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for SuggestionItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB90C0, &qword_21701C4B8);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F0, &qword_21701E378);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98F8, &qword_21701E380);
  v16 = sub_216852300();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9908, &qword_27CAB98E8, &qword_21701E370, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684B504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9910, &qword_21701E388);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9918, &qword_21701E390);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9920, &qword_21701E398);
    v12 = sub_2168523F4();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9930, &qword_27CAB9910, &qword_21701E388, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B768()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9938, &qword_21701E3A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9940, &qword_21701E3A8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9948, &unk_21701E3B0);
    v12 = sub_2168524E8();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9958, &qword_27CAB9938, &qword_21701E3A0, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B9CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9968, &qword_21701E3C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960, &unk_217040020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for PopoverSelector(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9960, &unk_217040020);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9970, &qword_21701E3C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9978, &qword_21701E3D0);
  v16 = sub_2168525DC();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9988, &qword_27CAB9968, &qword_21701E3C0, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684BD34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9998, &qword_21701E3E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990, &qword_21701E3D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for ParagraphComponentModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9990, &qword_21701E3D8);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A0, &qword_21701E3E8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99A8, &unk_21701E3F0);
  v16 = sub_2168526D0();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB99B8, &qword_27CAB9998, &qword_21701E3E0, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C09C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99C0, &qword_21701E400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for LinkComponentModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB7A30, &qword_217017F30);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99C8, &qword_21701E408);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99D0, &qword_21701E410);
  v16 = sub_2168527C4();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB99E0, &qword_27CAB99C0, &qword_21701E400, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C404()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99F0, &qword_21701E448);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8, &qword_21701E440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for InlineUpsell(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB99E8, &qword_21701E440);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99F8, &unk_21701E450);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A00, &unk_21706F850);
  v16 = sub_2168528B8();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9A10, &qword_27CAB99F0, &qword_21701E448, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C76C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A18, &qword_21701E460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A20, &qword_21701E468);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A28, &qword_21701E470);
    v12 = sub_2168529AC();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A38, &qword_27CAB9A18, &qword_21701E460, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684C9D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A40, &qword_21701E478);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A48, &qword_21701E480);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A50, &qword_21701E488);
    v12 = sub_216852AA0();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A60, &qword_27CAB9A40, &qword_21701E478, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684CC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A68, &qword_21701E490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A70, &qword_21701E498);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A78, &unk_21701E4A0);
    v12 = sub_216852B94();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A98, &qword_27CAB9A68, &qword_21701E490, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684CE98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB8, &qword_21701E4C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0, &unk_217040030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for GroupedTextListLockup(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9AB0, &unk_217040030);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC0, &qword_21701E4C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AC8, &qword_21701E4D0);
  v16 = sub_216852C84();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9AD8, &qword_27CAB9AB8, &qword_21701E4C0, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684D200()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AE0, &qword_21701E508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AE8, &qword_21701E510);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AF0, &qword_21701E518);
    v12 = sub_216852D78();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9B00, &qword_27CAB9AE0, &qword_21701E508, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684D464()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B10, &qword_21701E528);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08, &qword_21701E520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for EmptyStateLockup(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9B08, &qword_21701E520);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B18, &unk_21701E530);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B20, &unk_21706F870);
  v16 = sub_216852E6C();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9B30, &qword_27CAB9B10, &qword_21701E528, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684D7CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B40, &qword_21701E570);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38, &qword_217031140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for SearchLandingBrickLockup(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9B38, &qword_217031140);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B48, &qword_21701E578);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B50, &qword_21701E580);
  v16 = sub_216853068();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9B60, &qword_27CAB9B40, &qword_21701E570, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684DB34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B68, &qword_21701E588);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B70, &qword_21701E590);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B78, &qword_21701E598);
    v12 = sub_216853164();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9B88, &qword_27CAB9B68, &qword_21701E588, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684DD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VerticalVideoLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9828, &qword_21701E240);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for VerticalVideoLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE8FE8();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_216851E18();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB9828, &qword_21701E240);
}

uint64_t sub_21684E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v28[1] = a2;
  v5 = sub_21700DAF4();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28[0] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9850, &qword_21701E2E8);
  MEMORY[0x28223BE20](v14);
  v16 = (v28 - v15);
  v17 = type metadata accessor for TrackShelfLockupView(0);
  v18 = (v16 + v17[6]);
  type metadata accessor for PlaybackPresenter(0);
  sub_21685324C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);

  *v18 = sub_217008CF4();
  v18[1] = v19;
  v20 = v17[7];
  *(v16 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v17[8];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  *v16 = a1;
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v23 = (v16 + *(v14 + 36));
  *v23 = KeyPath;
  v23[1] = a3;

  sub_216DE90F8();
  sub_2166A6EA4();
  sub_216853294();
  v24 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D58, &unk_217014E30);
    v25 = 1;
  }

  else
  {
    (*(*(v24 - 8) + 32))(v13, v10, v24);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v25, 1, v24);
  v26 = v28[0];
  sub_21700DAE4();
  sub_216851F0C();
  sub_21700A1C4();
  (*(v29 + 8))(v26, v30);
  sub_2166997CC(v13, &qword_27CAB6D58, &unk_217014E30);
  sub_2166997CC(v16, &qword_27CAB9850, &qword_21701E2E8);
}

uint64_t sub_21684E578(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868, &qword_21701E2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9880, &unk_21706F840);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a2;
  sub_216852F54();
  v12 = type metadata accessor for TextListComponentModel(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  sub_216EF1668();
  sub_2166997CC(v5, &qword_27CAB9868, &qword_21701E2F0);
  return sub_2166997CC(v9, &qword_27CAB9880, &unk_21706F840);
}

uint64_t sub_21684E71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v28 = a2;
  v29 = sub_21700DAF4();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SuperHeroLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98A8, &qword_21701E320);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  *(&v28 - v16) = a1;
  v18 = type metadata accessor for SuperHeroLockupView(0);
  v19 = v18[5];
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[v18[6]];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  v21 = &v17[v18[7]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v17[v18[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v15 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = a3;

  sub_216DE9208();
  sub_2166A6EA4();
  sub_216853294();
  v25 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v26 = 1;
  }

  else
  {
    (*(*(v25 - 8) + 32))(v14, v11, v25);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v26, 1, v25);
  sub_21700DAE4();
  sub_2168520F4();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v29);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB98A8, &qword_21701E320);
}

void sub_21684EAFC()
{
  _s18HighlightsProviderCMa(0);
  sub_21685324C(&qword_280E43A00, _s18HighlightsProviderCMa, &unk_217051480);
  v0 = sub_217008CF4();
  swift_getKeyPath();

  sub_216EF1894();
}

uint64_t sub_21684EBF0(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0, &qword_21701C4B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F8, &qword_21701E380);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a2;
  sub_216852F54();
  v12 = type metadata accessor for SuggestionItem(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  sub_216EF1B4C();
  sub_2166997CC(v5, &qword_27CAB90C0, &qword_21701C4B8);
  return sub_2166997CC(v9, &qword_27CAB98F8, &qword_21701E380);
}

uint64_t sub_21684ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26[1] = a2;
  v5 = sub_21700DAF4();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9920, &qword_21701E398);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  *(v26 - v16) = a1;
  v18 = type metadata accessor for SquareLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9428();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_2168523F4();
  sub_21700A1C4();
  (*(v27 + 8))(v7, v28);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB9920, &qword_21701E398);
}

uint64_t sub_21684F140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PosterLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9948, &unk_21701E3B0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for PosterLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9538();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_2168524E8();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB9948, &unk_21701E3B0);
}

uint64_t sub_21684F4E8(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960, &unk_217040020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9978, &qword_21701E3D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a2;
  sub_216852F54();
  v12 = type metadata accessor for PopoverSelector(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  sub_216EF1D54();
  sub_2166997CC(v5, &qword_27CAB9960, &unk_217040020);
  return sub_2166997CC(v9, &qword_27CAB9978, &qword_21701E3D0);
}

uint64_t sub_21684F68C(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990, &qword_21701E3D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A8, &unk_21701E3F0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a2;
  sub_216852F54();
  v12 = type metadata accessor for ParagraphComponentModel(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  sub_216EF1F6C();
  sub_2166997CC(v5, &qword_27CAB9990, &qword_21701E3D8);
  return sub_2166997CC(v9, &qword_27CAB99A8, &unk_21701E3F0);
}

uint64_t sub_21684F830@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  v21[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_217009EB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99D0, &qword_21701E410);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  sub_216852F54();
  v15 = type metadata accessor for LinkView(0);
  v21[1] = 0x402E000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A90], v7);
  sub_2167CD8D8();
  sub_2170082A4();
  v16 = &v14[*(v15 + 24)];
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v16[32] = 0;
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v12 + 44)];
  *v18 = KeyPath;
  *(v18 + 1) = a3;
  sub_216852F54();
  v19 = type metadata accessor for LinkComponentModel(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
  sub_216EF2184();
  sub_2166997CC(v6, &qword_27CAB7A30, &qword_217017F30);
  return sub_2166997CC(v14, &qword_27CAB99D0, &qword_21701E410);
}

uint64_t sub_21684FACC(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8, &qword_21701E440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A00, &unk_21706F850);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a2;
  sub_216852F54();
  v12 = type metadata accessor for InlineUpsell(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  sub_216EF239C();
  sub_2166997CC(v5, &qword_27CAB99E8, &qword_21701E440);
  return sub_2166997CC(v9, &qword_27CAB9A00, &unk_21706F850);
}

uint64_t sub_21684FC70@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22 = a1;
  v23 = sub_21700DAF4();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A28, &qword_21701E470);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - v14);

  sub_216B81FFC(v16, v15);
  KeyPath = swift_getKeyPath();
  v18 = (v15 + *(v13 + 36));
  *v18 = KeyPath;
  v18[1] = a2;

  sub_216DE9648();
  sub_2166A6EA4();
  sub_216853294();
  v19 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    sub_2166997CC(v9, &qword_27CAB6D58, &unk_217014E30);
    v20 = 1;
  }

  else
  {
    (*(*(v19 - 8) + 32))(v12, v9, v19);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v20, 1, v19);
  sub_21700DAE4();
  sub_2168529AC();
  sub_21700A1C4();
  (*(v3 + 8))(v5, v23);
  sub_2166997CC(v12, &qword_27CAB6D58, &unk_217014E30);
  sub_2166997CC(v15, &qword_27CAB9A28, &qword_21701E470);
}

uint64_t sub_21684FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34 = a2;
  v5 = sub_21700DAF4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HorizontalLockup(0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v11;
  v12 = sub_217009EB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A50, &qword_21701E488);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  *(&v30 - v17) = a1;
  v19 = type metadata accessor for HorizontalLockupView(0);
  v20 = *(v19 + 20);
  *&v18[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v21 = &v18[*(v19 + 24)];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v37 = 0x403C000000000000;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A98], v12);
  sub_2167CD8D8();

  v22 = v31;
  sub_2170082A4();
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v16 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = a3;

  sub_216DE9758();
  sub_2166A6EA4();
  sub_216853294();
  v25 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {
    sub_2166997CC(v22, &qword_27CAB6D58, &unk_217014E30);
    v26 = 1;
    v27 = v32;
  }

  else
  {
    v27 = v32;
    (*(*(v25 - 8) + 32))(v32, v22, v25);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v26, 1, v25);
  v28 = v33;
  sub_21700DAE4();
  sub_216852AA0();
  sub_21700A1C4();
  (*(v35 + 8))(v28, v36);
  sub_2166997CC(v27, &qword_27CAB6D58, &unk_217014E30);
  sub_2166997CC(v18, &qword_27CAB9A50, &qword_21701E488);
}

uint64_t sub_216850478(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0, &unk_21701E4B0, &unk_2170390B0);
  v6 = sub_217008CF4();
  v7 = v4;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();

  sub_216EF25C8();
  v11[0] = a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = KeyPath;
  v12 = 0;
  v13 = v9;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v10;
  v19 = a2;
  return sub_2166997CC(v11, &qword_27CAB9A78, &unk_21701E4A0);
}

uint64_t sub_2168505E0(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0, &unk_217040030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC8, &qword_21701E4D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_216852F54();
  v10 = &v9[*(type metadata accessor for GroupedTextListLockupView(0) + 20)];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  KeyPath = swift_getKeyPath();
  v12 = &v9[*(v7 + 44)];
  *v12 = KeyPath;
  *(v12 + 1) = a2;
  sub_216852F54();
  v13 = type metadata accessor for GroupedTextListLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
  sub_216EF2878();
  sub_2166997CC(v5, &qword_27CAB9AB0, &unk_217040030);
  return sub_2166997CC(v9, &qword_27CAB9AC8, &qword_21701E4D0);
}

uint64_t sub_2168507A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v25 = a2;
  v26 = sub_21700DAF4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowcaseLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AF0, &qword_21701E518);
  MEMORY[0x28223BE20](v15);
  v17 = (&v25 - v16);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for FlowcaseLockupView(0);
  v19 = v17 + *(v18 + 20);
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  *(v17 + *(v18 + 24)) = a1;
  KeyPath = swift_getKeyPath();
  v21 = (v17 + *(v15 + 36));
  *v21 = KeyPath;
  v21[1] = a3;

  sub_216DE9978();
  sub_2166A6EA4();
  sub_216853294();
  v22 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v23 = 1;
  }

  else
  {
    (*(*(v22 - 8) + 32))(v14, v11, v22);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v22);
  sub_21700DAE4();
  sub_216852D78();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v26);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB9AF0, &qword_21701E518);
}

uint64_t sub_216850B50(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08, &qword_21701E520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B20, &unk_21706F870);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_216852F54();
  v10 = *(type metadata accessor for EmptyStateLockupView(0) + 20);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v12 = &v9[*(v7 + 44)];
  *v12 = KeyPath;
  *(v12 + 1) = a2;
  sub_216852F54();
  v13 = type metadata accessor for EmptyStateLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
  sub_216EF2A90();
  sub_2166997CC(v5, &qword_27CAB9B08, &qword_21701E520);
  return sub_2166997CC(v9, &qword_27CAB9B20, &unk_21706F870);
}

uint64_t sub_216850D34(uint64_t a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38, &qword_217031140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B50, &qword_21701E580);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_216852F54();
  v10 = type metadata accessor for SearchLandingBrickLockupView(0);
  v11 = &v9[*(v10 + 20)];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &v9[*(v10 + 24)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  KeyPath = swift_getKeyPath();
  v14 = &v9[*(v7 + 44)];
  *v14 = KeyPath;
  *(v14 + 1) = a2;
  sub_216852F54();
  v15 = type metadata accessor for SearchLandingBrickLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v15);
  sub_216EF2CBC();
  sub_2166997CC(v5, &qword_27CAB9B38, &qword_217031140);
  return sub_2166997CC(v9, &qword_27CAB9B50, &qword_21701E580);
}

uint64_t sub_216850F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BubbleLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B78, &qword_21701E598);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for BubbleLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9A88();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58, &unk_217014E30);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_216853164();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58, &unk_217014E30);
  return sub_2166997CC(v17, &qword_27CAB9B78, &qword_21701E598);
}

uint64_t sub_2168512C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  swift_beginAccess();
  *(a1 + v7) = a3;

  return a4(v8);
}

uint64_t sub_216851360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868, &qword_21701E2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for TextListComponentModel(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9868, &qword_21701E2F0, sub_21684A96C);
}

uint64_t sub_21685144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0, &qword_21701C4B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for SuggestionItem(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB90C0, &qword_21701C4B8, sub_21684B19C);
}

uint64_t sub_216851538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960, &unk_217040020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for PopoverSelector(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9960, &unk_217040020, sub_21684B9CC);
}

uint64_t sub_216851624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990, &qword_21701E3D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for ParagraphComponentModel(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9990, &qword_21701E3D8, sub_21684BD34);
}

uint64_t sub_216851710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for LinkComponentModel(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB7A30, &qword_217017F30, sub_21684C09C);
}

uint64_t sub_2168517FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8, &qword_21701E440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for InlineUpsell(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB99E8, &qword_21701E440, sub_21684C404);
}

uint64_t sub_2168518E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0, &unk_217040030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for GroupedTextListLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9AB0, &unk_217040030, sub_21684CE98);
}

uint64_t sub_2168519D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08, &qword_21701E520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for EmptyStateLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9B08, &qword_21701E520, sub_21684D464);
}

uint64_t sub_216851AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38, &qword_217031140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_216852F54();
  v6 = type metadata accessor for SearchLandingBrickLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_21684A3F4(v5, &qword_27CAB9B38, &qword_217031140, sub_21684D7CC);
}

unint64_t sub_216851E18()
{
  result = qword_27CAB9830;
  if (!qword_27CAB9830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9828, &qword_21701E240);
    sub_21685324C(qword_280E37270, type metadata accessor for VerticalVideoLockupView, &unk_217044220);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9830);
  }

  return result;
}

unint64_t sub_216851F0C()
{
  result = qword_27CAB9858;
  if (!qword_27CAB9858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9850, &qword_21701E2E8);
    sub_21685324C(qword_280E3AE78, type metadata accessor for TrackShelfLockupView, &unk_21704F680);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9858);
  }

  return result;
}

unint64_t sub_216852000()
{
  result = qword_27CAB9888;
  if (!qword_27CAB9888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9880, &unk_21706F840);
    sub_21685324C(qword_280E444E0, type metadata accessor for TextListView, &unk_21702E590);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9888);
  }

  return result;
}

unint64_t sub_2168520F4()
{
  result = qword_27CAB98B0;
  if (!qword_27CAB98B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98A8, &qword_21701E320);
    sub_21685324C(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView, &unk_21703CAA0);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB98B0);
  }

  return result;
}

unint64_t sub_2168521E8()
{
  result = qword_27CAB98D8;
  if (!qword_27CAB98D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98D0, &unk_21701E360);
    sub_2168522A0();
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB98D8);
  }

  return result;
}

unint64_t sub_2168522A0()
{
  result = qword_280E43A70;
  if (!qword_280E43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43A70);
  }

  return result;
}

unint64_t sub_216852300()
{
  result = qword_27CAB9900;
  if (!qword_27CAB9900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98F8, &qword_21701E380);
    sub_21685324C(qword_280E3E620, type metadata accessor for SuggestionItemView, &unk_21704CBD4);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9900);
  }

  return result;
}

unint64_t sub_2168523F4()
{
  result = qword_27CAB9928;
  if (!qword_27CAB9928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9920, &qword_21701E398);
    sub_21685324C(qword_280E40720, type metadata accessor for SquareLockupView, &unk_21704E3A0);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9928);
  }

  return result;
}

unint64_t sub_2168524E8()
{
  result = qword_27CAB9950;
  if (!qword_27CAB9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9948, &unk_21701E3B0);
    sub_21685324C(qword_280E40B68, type metadata accessor for PosterLockupView, &unk_21701F2C0);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9950);
  }

  return result;
}

unint64_t sub_2168525DC()
{
  result = qword_27CAB9980;
  if (!qword_27CAB9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9978, &qword_21701E3D0);
    sub_21685324C(qword_280E3D4E0, type metadata accessor for PopoverSelectorView, &unk_21701E804);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9980);
  }

  return result;
}

unint64_t sub_2168526D0()
{
  result = qword_27CAB99B0;
  if (!qword_27CAB99B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99A8, &unk_21701E3F0);
    sub_21685324C(qword_280E38600, type metadata accessor for ExpandableParagraphView, &unk_217034CC8);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB99B0);
  }

  return result;
}

unint64_t sub_2168527C4()
{
  result = qword_27CAB99D8;
  if (!qword_27CAB99D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99D0, &qword_21701E410);
    sub_21685324C(&qword_280E2BAE0, type metadata accessor for LinkView, &unk_21707107C);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB99D8);
  }

  return result;
}