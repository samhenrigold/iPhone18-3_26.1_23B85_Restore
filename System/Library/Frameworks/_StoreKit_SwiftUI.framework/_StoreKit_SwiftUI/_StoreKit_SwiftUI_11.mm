uint64_t sub_23BA7DDBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a2;
  v104 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v79 - v13;
  v84 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v84);
  v85 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE18, &qword_23BBF3C48);
  MEMORY[0x28223BE20](v82);
  v83 = &v79 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE20, &qword_23BBF3C50);
  MEMORY[0x28223BE20](v103);
  v81 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v79 - v20;
  MEMORY[0x28223BE20](v21);
  v87 = &v79 - v22;
  v86 = sub_23BBD96B8();
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60, &qword_23BBF3AB0);
  MEMORY[0x28223BE20](v24 - 8);
  v95 = &v79 - v25;
  v94 = *(a4 - 8);
  MEMORY[0x28223BE20](v26);
  v92 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ProductViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DDF0, &qword_23BBF3B68);
  MEMORY[0x28223BE20](v100);
  v102 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v101 = &v79 - v31;
  v32 = sub_23BBDBFC8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v79 - v38;
  (*(a6 + 8))(a4, a6, v37);
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v108 = a6;
  v109 = v99;
  sub_23BBDBFA8();
  WitnessTable = swift_getWitnessTable();
  v99 = v39;
  v97 = WitnessTable;
  sub_23B9D2D88();
  v98 = v33;
  v41 = *(v33 + 8);
  v96 = v32;
  v41(v35, v32);
  v42 = v95;
  (*(v94 + 16))(v92, a1, a4);
  v43 = v93;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
    v47 = &qword_27E198E60;
    v48 = &qword_23BBF3AB0;
    v49 = v42;
    goto LABEL_5;
  }

  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  v44 = v91;
  sub_23BA81828();
  v45 = v87;
  sub_23B979510();
  v46 = v86;
  if (__swift_getEnumTagSinglePayload(v45, 1, v86) == 1)
  {
    sub_23BA827C0(v44, type metadata accessor for ProductViewButtonConfiguration);
    v47 = &qword_27E1987C8;
    v48 = &unk_23BBF3BC0;
    v49 = v45;
LABEL_5:
    sub_23B979910(v49, v47, v48);
    v50 = v101;
    v51 = v101;
    v52 = 1;
    goto LABEL_16;
  }

  v53 = v89;
  v54 = *(v89 + 32);
  v55 = v88;
  v54(v88, v45, v46);
  v56 = *(v53 + 16);
  v57 = v90;
  v56(v90, v55, v46);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v46);
  v58 = v79;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v58, 1, v46) == 1)
  {
    v59 = type metadata accessor for ProductViewText.Storage(0);
    v60 = v80;
    v61 = 1;
  }

  else
  {
    v62 = v80;
    v54(v80, v58, v46);
    v63 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v60 = v62;
    v61 = 0;
    v59 = v63;
  }

  __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  v64 = v85;
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for LayoutMetrics(0);
  __swift_project_value_buffer(v65, &unk_27E1BF7F8);
  sub_23BA82768();
  type metadata accessor for PlaceholderLayouts(0);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v65, &unk_27E1BF810);
  sub_23BA82768();
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v65, &unk_27E1BF828);
  sub_23BA82768();
  sub_23B979910(v90, &qword_27E1987C8, &unk_23BBF3BC0);
  (*(v89 + 8))(v88, v46);
  sub_23BA827C0(v91, type metadata accessor for ProductViewButtonConfiguration);
  v66 = v84;
  v67 = (v64 + *(v84 + 40));
  v68 = *(v84 + 52);
  *(v64 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v69 = v66[14];
  *(v64 + v69) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  *(v64 + v66[6]) = 3;
  *(v64 + v66[7]) = 0;
  *(v64 + v66[8]) = 0;
  *v67 = 0;
  v67[1] = 0;
  v117 = 1;
  v116 = 0;
  v115 = 0;
  v114 = 1;
  v112 = 0;
  v110 = 0;
  v70 = v64 + v66[9];
  *v70 = 0;
  *(v70 + 8) = 1;
  *(v70 + 12) = *(v121 + 3);
  *(v70 + 9) = v121[0];
  *(v70 + 16) = 0x4059000000000000;
  *(v70 + 24) = 0;
  *(v70 + 28) = *(v120 + 3);
  *(v70 + 25) = v120[0];
  *(v70 + 32) = 0x4059000000000000;
  *(v70 + 40) = 0;
  v71 = v118;
  *(v70 + 44) = *(&v118 + 3);
  *(v70 + 41) = v71;
  *(v70 + 48) = 0;
  *(v70 + 56) = v114;
  v72 = *v113;
  *(v70 + 60) = *&v113[3];
  *(v70 + 57) = v72;
  *(v70 + 64) = 0x402C000000000000;
  *(v70 + 72) = v112;
  v73 = *v111;
  *(v70 + 76) = *&v111[3];
  *(v70 + 73) = v73;
  *(v70 + 80) = 0x402C000000000000;
  *(v70 + 88) = v110;
  *(v64 + v66[11]) = swift_getKeyPath();
  *(v64 + v66[12]) = swift_getKeyPath();
  v74 = v83;
  sub_23BA82768();
  *&v74[*(v82 + 36)] = 257;
  sub_23BA827C0(v64, type metadata accessor for ProductViewText);
  sub_23B979688();
  v50 = v101;
  sub_23B979688();
  v51 = v50;
  v52 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v103);
  v75 = v99;
  v76 = v96;
  (*(v98 + 16))(v35, v99, v96);
  v121[0] = v35;
  v77 = v102;
  sub_23B979510();
  v121[1] = v77;
  v120[0] = v76;
  v120[1] = v100;
  v118 = v97;
  v119 = sub_23BA820E4();
  sub_23BB6739C(v121, 2, v120);
  sub_23B979910(v50, &qword_27E19DDF0, &qword_23BBF3B68);
  v41(v75, v76);
  sub_23B979910(v77, &qword_27E19DDF0, &qword_23BBF3B68);
  return (v41)(v35, v76);
}

uint64_t sub_23BA7EB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BA7EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v50 = a1;
  v53 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v48 - v10;
  v11 = sub_23BBDD648();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60, &qword_23BBF3AB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v51 = &v48 - v22;
  v23 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[0] = a2;
  v64[1] = a3;
  v64[2] = a4;
  v64[3] = v49;
  v26 = type metadata accessor for ProductViewButton(0, v64);
  (*(v12 + 16))(v14, v50 + *(v26 + 52), v11);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v27 = type metadata accessor for ProductViewButtonConfiguration(0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
LABEL_4:
    sub_23B979910(v17, &qword_27E198E60, &qword_23BBF3AB0);
    v30 = sub_23BBD96B8();
    v31 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v30);
    goto LABEL_6;
  }

  v28 = type metadata accessor for ProductViewButtonConfiguration(0);
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v17, v29 ^ 1u, 1, v28);
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v31 = v51;
  sub_23B979510();
  sub_23BA827C0(v17, type metadata accessor for ProductViewButtonConfiguration);
LABEL_6:
  v32 = v52;
  sub_23B979510();
  v33 = sub_23BBD96B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
  {
    v34 = type metadata accessor for ProductViewText.Storage(0);
    v35 = v32;
    v36 = 1;
  }

  else
  {
    (*(*(v33 - 8) + 32))(v32, v20, v33);
    v37 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v35 = v32;
    v36 = 0;
    v34 = v37;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for LayoutMetrics(0);
  __swift_project_value_buffer(v38, &unk_27E1BF7F8);
  sub_23BA82768();
  type metadata accessor for PlaceholderLayouts(0);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, &unk_27E1BF810);
  sub_23BA82768();
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, &unk_27E1BF828);
  sub_23BA82768();
  sub_23B979910(v31, &qword_27E1987C8, &unk_23BBF3BC0);
  v39 = &v25[v23[10]];
  v40 = v23[13];
  *&v25[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v41 = v23[14];
  *&v25[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  v25[v23[6]] = 3;
  v25[v23[7]] = 0;
  v25[v23[8]] = 0;
  *v39 = 0;
  *(v39 + 1) = 0;
  v63 = 1;
  v62 = 0;
  v60 = 0;
  v58 = 1;
  v56 = 0;
  v54 = 0;
  v42 = &v25[v23[9]];
  *v42 = 0;
  v42[8] = 1;
  *(v42 + 3) = *(v64 + 3);
  *(v42 + 9) = v64[0];
  *(v42 + 2) = 0x4059000000000000;
  v42[24] = 0;
  *(v42 + 7) = *&v61[3];
  *(v42 + 25) = *v61;
  *(v42 + 4) = 0x4059000000000000;
  v42[40] = 0;
  v43 = *v59;
  *(v42 + 11) = *&v59[3];
  *(v42 + 41) = v43;
  *(v42 + 6) = 0;
  v42[56] = v58;
  v44 = *v57;
  *(v42 + 15) = *&v57[3];
  *(v42 + 57) = v44;
  *(v42 + 8) = 0x402C000000000000;
  v42[72] = v56;
  v45 = *v55;
  *(v42 + 19) = *&v55[3];
  *(v42 + 73) = v45;
  *(v42 + 10) = 0x402C000000000000;
  v42[88] = v54;
  *&v25[v23[11]] = swift_getKeyPath();
  *&v25[v23[12]] = swift_getKeyPath();
  v46 = v53;
  sub_23BA82768();
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE08, &qword_23BBF3B78) + 36)) = xmmword_23BBF3A30;
  return sub_23BA827C0(v25, type metadata accessor for ProductViewText);
}

uint64_t sub_23BA7F398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a6;
  v85 = a5;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8, &qword_23BC07EF0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v66 = sub_23BBDC078();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23BBDBFC8();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v62 - v12;
  v13 = sub_23BBDA438();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v62 - v16;
  v17 = sub_23BBDD648();
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v75 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v74 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23BBDD648();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v9;
  v80 = sub_23BBDD648();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v83 = &v62 - v32;
  v87[0] = a2;
  v87[1] = a3;
  v33 = a3;
  v69 = a4;
  v87[2] = a4;
  v87[3] = v85;
  v34 = type metadata accessor for ProductViewButton(0, v87);
  v35 = v78;
  (*(v23 + 16))(v25, v78 + *(v34 + 56), v22);
  if (__swift_getEnumTagSinglePayload(v25, 1, a2) == 1)
  {
    (*(v23 + 8))(v25, v22);
LABEL_5:
    v40 = v83;
    v41 = v80;
    goto LABEL_6;
  }

  (*(v26 + 32))(v29, v25, a2);
  v36 = *(v34 + 52);
  v38 = v76;
  v37 = v77;
  (*(v76 + 16))(v19, v35 + v36, v77);
  v39 = v33;
  if (__swift_getEnumTagSinglePayload(v19, 1, v33) == 1)
  {
    (*(v38 + 8))(v19, v37);
    (*(v26 + 8))(v29, a2);
    goto LABEL_5;
  }

  v76 = v26;
  v77 = v29;
  v46 = a2;
  v48 = v74;
  v47 = v75;
  (*(v75 + 32))(v74, v19, v39);
  v49 = v70;
  sub_23B9B75DC();
  v50 = v71;
  sub_23BBDA428();
  sub_23BA82720(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  v51 = v73;
  v52 = sub_23BBDD6A8();
  v53 = *(v72 + 8);
  v53(v50, v51);
  v53(v49, v51);
  v41 = v80;
  if ((v52 & 1) == 0)
  {
    v54 = v85;
    v55 = (*(v85 + 8))(v39, v85);
    MEMORY[0x28223BE20](v55);
    v63 = v46;
    *(&v62 - 6) = v46;
    *(&v62 - 5) = v39;
    *(&v62 - 4) = v69;
    *(&v62 - 3) = v54;
    *(&v62 - 2) = v77;
    *(&v62 - 1) = v48;
    v56 = v67;
    sub_23BBDBFA8();
    v57 = v81;
    swift_getWitnessTable();
    v58 = v65;
    sub_23B9D2D88();
    v59 = v68;
    v60 = *(v68 + 8);
    v60(v56, v57);
    sub_23B9D2D88();
    v60(v58, v57);
    v61 = v79;
    (*(v59 + 32))(v79, v56, v57);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v57);
    v40 = v83;
    sub_23BB2F9F4(v61, v57);
    v44 = *(v82 + 8);
    v44(v61, v41);
    (*(v75 + 8))(v74, v39);
    (*(v76 + 8))(v77, v63);
    goto LABEL_7;
  }

  (*(v47 + 8))(v48, v39);
  (*(v76 + 8))(v77, v46);
  v40 = v83;
LABEL_6:
  v42 = v79;
  v43 = v81;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v81);
  swift_getWitnessTable();
  sub_23BB2F9F4(v42, v43);
  v44 = *(v82 + 8);
  v44(v42, v41);
LABEL_7:
  v86 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v44)(v40, v41);
}

uint64_t sub_23BA7FD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8, &qword_23BC07EF0);
  swift_getTupleTypeMetadata2();
  v11 = sub_23BBDC3D8();
  swift_getWitnessTable();
  v12 = sub_23BBDC078();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = v23;
  v29 = a1;
  v30 = v22;
  sub_23B9BE15C(v11);
  sub_23BBDC068();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v19 = *(v13 + 8);
  v19(v15, v12);
  sub_23B9D2D88();
  return (v19)(v18, v12);
}

uint64_t sub_23BA7FF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v55 = a5;
  v52 = a2;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v47 - v9;
  v51 = sub_23BBD96B8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60, &qword_23BBF3AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProductViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  v53 = a3;
  sub_23B9D2D88();
  (*(v16 + 16))(v19, v52, a4);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v20);
    sub_23BA81828();
    v30 = v50;
    sub_23B979510();
    v31 = v51;
    if (__swift_getEnumTagSinglePayload(v30, 1, v51) != 1)
    {
      v39 = v48;
      v40 = v49;
      (*(v49 + 32))(v48, v30, v31);
      (*(v40 + 16))(v47, v39, v31);
      v35 = sub_23BBDB668();
      v36 = v41;
      LODWORD(v52) = v42;
      v38 = v43;
      (*(v40 + 8))(v39, v31);
      sub_23BA827C0(v22, type metadata accessor for ProductViewButtonConfiguration);
      v37 = v52 & 1;
      sub_23BA51B84(v35, v36, v52 & 1);

      goto LABEL_7;
    }

    sub_23BA827C0(v22, type metadata accessor for ProductViewButtonConfiguration);
    v32 = &qword_27E1987C8;
    v33 = &unk_23BBF3BC0;
    v34 = v30;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
    v32 = &qword_27E198E60;
    v33 = &qword_23BBF3AB0;
    v34 = v15;
  }

  sub_23B979910(v34, v32, v33);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_7:
  v44 = v53;
  (*(v23 + 16))(v26, v29, v53);
  v59 = v35;
  v60 = v36;
  v61 = v37;
  v62 = v38;
  v63[0] = v26;
  v63[1] = &v59;
  v58[0] = v44;
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAE8, &qword_23BC07EF0);
  v56 = v55;
  v57 = sub_23B9FAE20();
  sub_23BB6739C(v63, 2, v58);
  sub_23BA82038(v35, v36, v37, v38);
  v45 = *(v23 + 8);
  v45(v29, v44);
  sub_23BA82038(v59, v60, v61, v62);
  return (v45)(v26, v44);
}

uint64_t sub_23BA804B8@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABE8, &qword_23BBEB1E8);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - v2;
  v21 = sub_23BBDC148();
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDA508();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v19 = v1;
  sub_23B9B7604();
  sub_23BBDA4F8();
  sub_23BA82720(&qword_27E19ABF0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBC0]);
  v13 = sub_23BBDCF38();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if (v13)
  {
    v14(v12, v6);
LABEL_4:
    v16 = *MEMORY[0x277CE0118];
    v17 = sub_23BBDAA88();
    (*(*(v17 - 8) + 104))(v5, v16, v17);
    sub_23BA82768();
    swift_storeEnumTagMultiPayload();
    sub_23BA82720(&qword_27E19ABA8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
    sub_23BA82720(&qword_27E19ABB0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA8]);
    sub_23BBDACD8();
    return sub_23BA827C0(v5, MEMORY[0x277CE1260]);
  }

  sub_23BBDA4E8();
  v15 = sub_23BBDCF38();
  v14(v9, v6);
  v14(v12, v6);
  if (v15)
  {
    goto LABEL_4;
  }

  sub_23B9B7604();
  (*(v7 + 16))(v3, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_23BA82720(&qword_27E19ABA8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
  sub_23BA82720(&qword_27E19ABB0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA8]);
  sub_23BBDACD8();
  return (v14)(v9, v6);
}

uint64_t sub_23BA80914(uint64_t a1)
{
  type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  swift_dynamicCastMetatype();

  return swift_getKeyPath();
}

uint64_t sub_23BA80970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_23BBDB148();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v74 = *(a1 + 24);
  v75 = v5;
  v50 = a1;
  v7 = type metadata accessor for ProductViewButtonFrameModifier(0, v5, v74, v6);
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v68 = (&v49 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABA0, &qword_23BBEB1C0);
  MEMORY[0x28223BE20](v70);
  v10 = (&v49 - v9);
  v57 = v7;
  v11 = sub_23BBDA358();
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v60 = v11;
  v14 = sub_23BBDA358();
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v49 - v15;
  v58 = v14;
  v16 = sub_23BBDA358();
  v71 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v66 = &v49 - v17;
  v18 = sub_23B9FB714();
  v55 = v18;
  WitnessTable = swift_getWitnessTable();
  v91 = v18;
  v92 = WitnessTable;
  v69 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable();
  v53 = v20;
  v21 = sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0, &qword_23BBE7740, MEMORY[0x277CE0740]);
  v89 = v20;
  v90 = v21;
  v54 = swift_getWitnessTable();
  v87 = v54;
  v88 = MEMORY[0x277CDFC48];
  v59 = swift_getWitnessTable();
  v85 = v16;
  v86 = v59;
  v62 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v49 - v22;
  sub_23BBDB2B8();
  v24 = sub_23BBDA358();
  v64 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v51 = &v49 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20, &qword_23BBE6C90);
  v26 = sub_23BBDA358();
  v65 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v52 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v61 = &v49 - v29;
  sub_23BA804B8(v10);
  v30 = v68;
  sub_23BA81318(&qword_27E198EB0, &qword_23BBE6D50, v68);
  v31 = v57;
  MEMORY[0x23EEB43C0](v30, v70, v57, v55);
  (*(v76 + 8))(v30, v31);
  sub_23B979910(v10, &qword_27E19ABA0, &qword_23BBEB1C0);
  sub_23B9AD794();
  v32 = v67;
  v33 = v60;
  sub_23BBDB8A8();
  (*(v73 + 8))(v13, v33);
  v34 = v66;
  v35 = v58;
  sub_23BA7C664(v58, v54);
  (*(v72 + 8))(v32, v35);
  v36 = v77;
  sub_23BBDB118();
  v37 = v59;
  sub_23BBDB968();
  (*(v78 + 8))(v36, v79);
  (*(v71 + 8))(v34, v16);
  v38 = sub_23BA80914(v50);
  v85 = v16;
  v86 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v51;
  v41 = OpaqueTypeMetadata2;
  sub_23B9968C4(v38, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  (*(v63 + 8))(v23, v41);
  v42 = sub_23BA82720(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v83 = OpaqueTypeConformance2;
  v84 = v42;
  v43 = swift_getWitnessTable();
  v44 = v52;
  sub_23BBDB858();
  (*(v64 + 8))(v40, v24);
  v45 = sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
  v81 = v43;
  v82 = v45;
  swift_getWitnessTable();
  v46 = v61;
  sub_23B9D2D88();
  v47 = *(v65 + 8);
  v47(v44, v26);
  sub_23B9D2D88();
  return (v47)(v46, v26);
}

uint64_t sub_23BA81318@<X0>(uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BA81380()
{
  v0 = sub_23BBDA308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_23BBDC2A8();
  sub_23B9B70F0();
  if (v7)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CDFA10], v0);
    v8 = sub_23BBDA2F8();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      sub_23B9B70F0();
      v10 = sub_23BBDA2E8();
      v9(v6, v0);
    }
  }

  else
  {
    v10 = sub_23BBDA2E8();
    (*(v1 + 8))(v6, v0);
  }

  return v10 & 1;
}

void *sub_23BA81528@<X0>(void *a2@<X8>)
{
  type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (swift_dynamicCastMetatype())
  {
    v3 = sub_23BA19634;
  }

  else
  {
    v3 = sub_23BA19B4C;
  }

  sub_23BA815BC(v3, v5);
  return memcpy(a2, v5, 0x59uLL);
}

void *sub_23BA815BC@<X0>(void (*a1)(void *__return_ptr, void)@<X1>, void *a2@<X8>)
{
  v4 = sub_23BA81380();
  a1(v6, v4 & 1);
  return memcpy(a2, v6, 0x59uLL);
}

uint64_t sub_23BA81614(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v2 = sub_23BBDAE98();
  v3 = sub_23BBDA358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  sub_23BA81528(__src);
  __src[95] = 0;
  __src[89] = 0;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23B9DCCD0(v11);
  sub_23BA19724(__src, v12, v13, v2, WitnessTable);
  v14 = sub_23B9A6A40();
  v17[0] = WitnessTable;
  v17[1] = v14;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v15 = *(v4 + 8);
  v15(v6, v3);
  sub_23B9D2D88();
  return (v15)(v9, v3);
}

uint64_t sub_23BA81828()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

void sub_23BA81880(uint64_t a1)
{
  sub_23BA8296C(319, &qword_27E198D28, MEMORY[0x277CDFB98]);
  if (v1 <= 0x3F)
  {
    sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      sub_23BBDD648();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA81948(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23BBDA438() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  if (v10)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  if (v13)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v7 + v17 + 1;
  if (v16 < a2)
  {
    v24 = ((v22 + v21 + ((v19 + v20 + (v23 & ~v17)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v16 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          break;
        }

        goto LABEL_38;
      case 2:
        v28 = *(a1 + v24);
        if (*(a1 + v24))
        {
          goto LABEL_38;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA81BB4);
      case 4:
        v28 = *(a1 + v24);
        if (!v28)
        {
          break;
        }

LABEL_38:
        v29 = v28 - 1;
        if ((v24 & 0xFFFFFFF8) != 0)
        {
          v29 = 0;
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        return v16 + (v30 | v29) + 1;
      default:
        break;
    }
  }

  if (v15 <= 0xFE)
  {
    v31 = *(a1 + v7);
    if (v31 >= 2)
    {
      return (v31 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v33 = (a1 + v23) & ~v17;
  if (v12 != v16)
  {
    if (v13 >= 2)
    {
      v33 = (v33 + v19 + v20) & ~v20;
      v10 = v13;
      v8 = *(a3 + 16);
      goto LABEL_51;
    }

    return 0;
  }

  if (v10 < 2)
  {
    return 0;
  }

LABEL_51:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v10, v8);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA81BC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_23BBDA438() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v15 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v12 + 64);
  if (!v14)
  {
    ++v22;
  }

  v23 = v10 + 1;
  v24 = *(v13 + 80);
  v25 = v10 + 1 + v24;
  v26 = *(v17 + 80);
  v27 = *(v17 + 64);
  if (!v18)
  {
    ++v27;
  }

  v28 = ((v27 + ((v22 + v26 + (v25 & ~v24)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a3)
  {
    if (((v27 + ((v22 + v26 + (v25 & ~v24)) & ~v26) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v21 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v8 = v30;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v21;
    }

    if (v28)
    {
      v32 = ~v21 + a2;
      bzero(a1, v28);
      *a1 = v32;
    }

    switch(v8)
    {
      case 1:
        a1[v28] = v31;
        return;
      case 2:
        *&a1[v28] = v31;
        return;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v28] = v31;
        return;
      default:
        return;
    }
  }

  switch(v8)
  {
    case 1:
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 2:
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 3:
LABEL_72:
      __break(1u);
      JUMPOUT(0x23BA81F14);
    case 4:
      *&a1[v28] = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return;
      }

LABEL_46:
      if (v20 > 0xFE)
      {
        v33 = &a1[v25] & ~v24;
        if (v15 == v21)
        {
          if (v14 < 2)
          {
            return;
          }

          v34 = a2 + 1;
        }

        else
        {
          if (v18 < 2)
          {
            return;
          }

          v33 = (v33 + v22 + v26) & ~v26;
          v34 = a2 + 1;
          v14 = v18;
          v11 = v16;
        }

        __swift_storeEnumTagSinglePayload(v33, v34, v14, v11);
      }

      else if (a2 > 0xFE)
      {
        if (v23 <= 3)
        {
          v35 = ~(-1 << (8 * v23));
        }

        else
        {
          v35 = -1;
        }

        if (v10 != -1)
        {
          v36 = v35 & (a2 - 255);
          if (v23 <= 3)
          {
            v37 = v10 + 1;
          }

          else
          {
            v37 = 4;
          }

          bzero(a1, v23);
          switch(v37)
          {
            case 2:
              *a1 = v36;
              break;
            case 3:
              *a1 = v36;
              a1[2] = BYTE2(v36);
              break;
            case 4:
              *a1 = v36;
              break;
            default:
              *a1 = v36;
              break;
          }
        }
      }

      else
      {
        a1[v10] = -a2;
      }

      return;
  }
}

uint64_t sub_23BA82038(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23BA51C9C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23BA820E4()
{
  result = qword_27E19DE28;
  if (!qword_27E19DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0, &qword_23BBF3B68);
    sub_23BA82168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DE28);
  }

  return result;
}

unint64_t sub_23BA82168()
{
  result = qword_27E19DE30;
  if (!qword_27E19DE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DE20, &qword_23BBF3C50);
    sub_23BA82214(qword_27E19DE38, &qword_27E19DE18, &qword_23BBF3C48);
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DE30);
  }

  return result;
}

uint64_t sub_23BA82214(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23BA82720(&qword_27E19A1D0, type metadata accessor for ProductViewText, &unk_23BBF1100);
    OUTLINED_FUNCTION_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA822E4()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA82348()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_23BA82390(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v4 = sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0, &qword_23BBF3B68);
  v5 = OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_6_5(v5, v4, v6);
  OUTLINED_FUNCTION_12_14(v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  type metadata accessor for ProductViewButtonPlaceholder(255, v1, v3, v8);
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF8, &qword_23BBF3B70);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8, &qword_23BC07EF0);
  v9 = OUTLINED_FUNCTION_4();
  v11 = OUTLINED_FUNCTION_6_5(v9, v2, v10);
  OUTLINED_FUNCTION_12_14(v11);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFC8();
  sub_23BBDD648();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v12, &qword_27E19DDF8, &qword_23BBF3B70, v13);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAB0, &qword_23BBEAF10);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v14, &qword_27E19AAB0, &qword_23BBEAF10, v15);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_31();
  sub_23BA82720(v16, v17, MEMORY[0x277CDE458]);
  return swift_getWitnessTable();
}

uint64_t sub_23BA82720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA82768()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA827C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23BA82838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23BA8296C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BA828C0()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA82924()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23BA8296C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BA829C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ABA0, &qword_23BBEB1C0);
  type metadata accessor for ProductViewButtonFrameModifier(255, v1, v2, v3);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23B9FB714();
  OUTLINED_FUNCTION_14_16();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0, &qword_23BBE7740, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20, &qword_23BBE6C90);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_31();
  sub_23BA82720(v4, v5, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
  return swift_getWitnessTable();
}

uint64_t sub_23BA82C5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProductViewButtonFrameModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_4();
  sub_23BBDAE98();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B9A6A40();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return swift_getWitnessTable();
}

void *sub_23BA82D64()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_24();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_8_22();
}

void *sub_23BA82E14()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_24();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_8_22();
}

uint64_t sub_23BA82EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DF40, &qword_23BBF3DF0);
  sub_23BA84634(a6, a8 + v11[10], type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
  *(a8 + v11[12]) = a7;
  v12 = a8 + v11[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a8 + v11[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a8 + v11[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a8 + v11[16];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  v16 = v11[17];
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710, &unk_23BBE81D0);
  swift_storeEnumTagMultiPayload();
  v17 = v11[18];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  swift_storeEnumTagMultiPayload();
  v18 = a8 + v11[19];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a8 + v11[20];
  v40 = 0;
  *v19 = swift_getKeyPath();
  *(v19 + 73) = 0;
  v20 = a8 + v11[21];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a8 + v11[22];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a8 + v11[23];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v23 = a8 + v11[24];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = a8 + v11[25];
  KeyPath = swift_getKeyPath();
  LOBYTE(v35[0]) = 0;
  v26 = swift_getKeyPath();
  LOBYTE(v34[0]) = 0;
  v27 = swift_getKeyPath();
  v39 = 0;
  v28 = swift_getKeyPath();
  v38 = 0;
  v29 = swift_getKeyPath();
  v37 = 0;
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  *(v24 + 16) = v26;
  *(v24 + 24) = 0;
  *(v24 + 32) = v27;
  *(v24 + 40) = 0;
  *(v24 + 48) = v28;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 72) = v29;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  v30 = v11[26];
  v34[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0, &qword_23BC02CB0);
  sub_23BBDBF58();
  *(a8 + v30) = v35[0];
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_23B99FCE0(v35, v34, &qword_27E19A9E8, &unk_23BBEC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8, &unk_23BBEC6B0);
  sub_23BBDBF58();
  sub_23B979910(v35, &qword_27E19A9E8, &unk_23BBEC6B0);
  v31 = a8 + v11[28];
  LOBYTE(v34[0]) = 0;
  result = sub_23BBDBF58();
  v33 = *(&v35[0] + 1);
  *v31 = v35[0];
  *(v31 + 8) = v33;
  return result;
}

uint64_t sub_23BA83250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DFE8, &qword_23BBF4118);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for SubscriptionStoreContentView(0, a2, a3, v8);
  v10 = a4 + *(v9 + 36);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v9 + 40);

  return v11(v12, a1, a2);
}

uint64_t sub_23BA83334@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DFE8, &qword_23BBF4118);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23B99FCE0(v2, &v13 - v9, &qword_27E19DFE8, &qword_23BBF4118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23BA84890(v10, a1);
  }

  sub_23BBDD5A8();
  v12 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t SubscriptionStoreContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v51 = a2;
  v5 = *(a1 + 24);
  v45 = *(a1 + 16);
  v46 = v5;
  v6 = type metadata accessor for StoreContentAdapter(255, v45, v5, a3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40, &qword_23BBF3DF0);
  v8 = OUTLINED_FUNCTION_4_20();
  v57 = v6;
  v58 = v7;
  v41 = sub_23BA839C8();
  v42 = v7;
  v59 = v8;
  v60 = v41;
  v50 = sub_23BBDAEC8();
  v9 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v47 = v10;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_24();
  v15 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  OUTLINED_FUNCTION_7();
  v40 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v48 = v25;
  v49 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v40 - v27;
  v43 = v3;
  sub_23BA83334(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
  {
    sub_23B979910(v4, qword_27E19DF50, &qword_23BBF3DF8);
    OUTLINED_FUNCTION_4_3();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    sub_23B9CEBD4();
    sub_23BA82E14();
  }

  else
  {
    sub_23BA84634(v4, v23, type metadata accessor for SubscriptionStaticViewConfiguration);
    sub_23BA845D4(v23, v20, type metadata accessor for SubscriptionStaticViewConfiguration);
    v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v30 = swift_allocObject();
    sub_23BA84634(v20, v30 + v29, type metadata accessor for SubscriptionStaticViewConfiguration);
    sub_23BA230E8(sub_23BA83C5C, v30, v45, v42, v46, v41);

    OUTLINED_FUNCTION_4_3();
    v52 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    v31 = v44;
    OUTLINED_FUNCTION_10_14();
    sub_23B9D2D88();
    v32 = *(v47 + 8);
    v33 = OUTLINED_FUNCTION_10_14();
    v32(v33);
    sub_23B9D2D88();
    sub_23B9CEBD4();
    OUTLINED_FUNCTION_10_14();
    sub_23BA82D64();
    v34 = OUTLINED_FUNCTION_10_14();
    v32(v34);
    v35 = (v32)(v31, v9);
    sub_23BA83CDC(v23, v35);
  }

  OUTLINED_FUNCTION_4_3();
  v55 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v36 = swift_getWitnessTable();
  v37 = sub_23B9CEBD4();
  v53 = v36;
  v54 = v37;
  OUTLINED_FUNCTION_2_7();
  v38 = v49;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v48 + 8))(v28, v38);
}

unint64_t sub_23BA839C8()
{
  result = qword_27E19DF48;
  if (!qword_27E19DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40, &qword_23BBF3DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DF48);
  }

  return result;
}

uint64_t sub_23BA83A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  sub_23BA845D4(a2 + *(v14 + 24), v8, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);

  return sub_23BA82EC4(v9, v10, v11, v12, v13, v8, a1, a3);
}

uint64_t sub_23BA83B2C(double a1)
{
  v2 = (type metadata accessor for SubscriptionStaticViewConfiguration(0) - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);

  v4 = v1 + v3 + v2[8];
  v5 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v6 + 8))(v4);
  }

  type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  return swift_deallocObject();
}

uint64_t sub_23BA83C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(type metadata accessor for SubscriptionStaticViewConfiguration(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_23BA83A2C(a1, v7, a2);
}

uint64_t sub_23BA83CDC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23BA83D80(uint64_t a1)
{
  sub_23BA84444(319);
  if (v1 <= 0x3F)
  {
    sub_23BA844A8();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA83E20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = (~(*(v6 + 80) & 0xF8u) & ((*(v6 + 80) & 0xF8) + 40)) + ((((((*(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_25;
  }

  v14 = ((v12 + v11 + 17) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      if (v9 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((v12 + ((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12, v9, v7);
      }

      else
      {
        v20 = *(a1 + v11);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v10 + (v14 | v19) + 1;
}

void sub_23BA8408C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = ~(*(v8 + 80) & 0xF8u) & ((*(v8 + 80) & 0xF8) + 40);
  v10 = (*(v8 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v9 + ((((v10 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = *(v12 + 80);
  v17 = ((v16 + v15 + 17) & ~v16) + *(v12 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        return;
      case 2:
        *&a1[v17] = v21;
        return;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v17] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_56:
      __break(1u);
      JUMPOUT(0x23BA843F4);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v13 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload((v16 + (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16, a2, v13, v11);
        }

        else if (a2 > 0xFE)
        {
          v25 = v15 | 1;
          v26 = v15 > 3;
          if (v15 <= 3)
          {
            v27 = ~(-1 << (8 * (v15 | 1)));
          }

          else
          {
            v27 = -1;
          }

          v28 = v27 & (a2 - 255);
          if (v26)
          {
            v29 = 4;
          }

          else
          {
            v29 = v25;
          }

          bzero(a1, v25);
          switch(v29)
          {
            case 2:
              *a1 = v28;
              break;
            case 3:
              *a1 = v28;
              a1[2] = BYTE2(v28);
              break;
            case 4:
              *a1 = v28;
              break;
            default:
              *a1 = v28;
              break;
          }
        }

        else
        {
          a1[v15] = -a2;
        }
      }

      return;
  }
}

void sub_23BA84444(uint64_t a1)
{
  if (!qword_27E19DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19DF50, &qword_23BBF3DF8);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19DFD8);
    }
  }
}

void sub_23BA844A8()
{
  if (!qword_27E19DFE0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19DFE0);
    }
  }
}

uint64_t sub_23BA844F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoreContentAdapter(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40, &qword_23BBF3DF0);
  OUTLINED_FUNCTION_4_20();
  sub_23BA839C8();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9CEBD4();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t sub_23BA845D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA84634(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BA846B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_23B99FCE0(a1, &v6 - v3, qword_27E19DF50, &qword_23BBF3DF8);
  return sub_23BA9BBCC(v4);
}

uint64_t sub_23BA8475C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1702C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA847B0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA90BF8();
  *v0 = result;
  return result;
}

uint64_t sub_23BA847D8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA90BF8();
  *v0 = result;
  return result;
}

uint64_t sub_23BA84824()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1702C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA84890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50, &qword_23BBF3DF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_23BBDACC8();
}

void *OUTLINED_FUNCTION_8_22()
{

  return sub_23BBDACD8();
}

uint64_t sub_23BA84A10(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_23(a1);
  (*(*(v4 - 8) + 16))(v1, v2, v4);

  return sub_23BA84A84(v2, v3);
}

uint64_t sub_23BA84A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDD648();
  (*(*(v4 - 8) + 8))(a1, v4);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a2);
}

uint64_t sub_23BA84B00@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23BBDD648();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t sub_23BA84B70(uint64_t a1)
{
  OUTLINED_FUNCTION_8_23(a1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v9 - v4, v1, v3);
  v6 = OUTLINED_FUNCTION_46();
  return sub_23BA84B00(v6, v7);
}

uint64_t sub_23BA84C1C(uint64_t a1)
{
  sub_23BA84B70(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_23BA84C7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23BA84CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

BOOL sub_23BA84D28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  (*(v5 + 16))(&v14 - v8, v1, v3, v7);
  v10 = __swift_getEnumTagSinglePayload(v9, 1, v2) != 1;
  v11 = OUTLINED_FUNCTION_46();
  v12(v11);
  return v10;
}

void (*sub_23BA84E18(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[1] = *(a3 + 16);
  sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  a1[2] = v8;
  if (!a2)
  {
    v9 = v8;
    (*(v6 + 16))();
    OUTLINED_FUNCTION_3_21(v9);
    if (!v10)
    {
      return sub_23BA84F90;
    }

    __break(1u);
  }

  sub_23BBDD768();

  OUTLINED_FUNCTION_5_21();
  v20 = v12;
  v21 = v13;
  *a1 = a2;
  v14 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v14);

  v15 = OUTLINED_FUNCTION_2_24();
  MEMORY[0x23EEB5890](v15);
  result = OUTLINED_FUNCTION_7_25("Fatal error", v16, v17, v20, v21, "_StoreKit_SwiftUI/CollectionOfZeroOrOne.swift", v18, v19, 47, 0);
  __break(1u);
  return result;
}

void sub_23BA84F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  (*(*(*(a1 + 8) - 8) + 8))(v1);

  free(v1);
}

uint64_t sub_23BA84FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_0();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v13 = *(v12 + 56);
  v14 = *(v7 - 8);
  (*(v14 + 16))(v26 + v13 - v10, v3, v7, v9);
  if (__swift_getEnumTagSinglePayload(&v11[v13], 1, v6) != 1 && a2 == 0)
  {
    v16 = *(v14 + 8);
    v16(v3, v7);
    (*(*(v6 - 8) + 32))(v3, a1, v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    return (v16)(&v11[v13], v7);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_23BBDD768();

    OUTLINED_FUNCTION_5_21();
    v27 = v17;
    v28 = v18;
    v26[1] = a2;
    v19 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v19);

    v20 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x23EEB5890](v20);
    result = OUTLINED_FUNCTION_7_25("Fatal error", v21, v22, v27, v28, "_StoreKit_SwiftUI/CollectionOfZeroOrOne.swift", v23, v24, 53, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA85200(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void (*sub_23BA85218(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v5 = v3;
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[1] = v3;
  v8[2] = a3;
  v9 = *(a3 + 16);
  v8[3] = v9;
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v8[4] = v12;
  v13 = *(v9 - 8);
  v14 = v13;
  v8[5] = v13;
  v15 = *(v13 + 64);
  v8[6] = __swift_coroFrameAllocStub(v15);
  v16 = __swift_coroFrameAllocStub(v15);
  v8[7] = v16;
  v17 = *a2;
  if (!*a2)
  {
    v18 = v16;
    (*(v11 + 16))(v12, v5, v10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v9) != 1)
    {
      (*(v14 + 32))(v18, v12, v9);
      return sub_23BA85484;
    }

    __break(1u);
  }

  *v8 = v17;
  v20 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v20);

  MEMORY[0x23EEB5890](0x20666F2074756F20, 0xEE0073646E756F62);
  sub_23BBDD068();
  result = sub_23BBDD908();
  __break(1u);
  return result;
}

void sub_23BA85484(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    (*(v6 + 16))((*a1)[6], v4, v7);
    sub_23BA84FF0(v3, 0, v8);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v5 = v2[4];
    sub_23BA84FF0((*a1)[7], 0, v2[2]);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_23BA85588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23BBDDB88();
  swift_getWitnessTable();
  sub_23BBDDA28();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_23BBDD568();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = *(*(v6 - 8) + 8);

  return v8(a1, v6);
}

void (*sub_23BA856E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_23BA85760(v8, a2, a3, a4);
  return sub_23B97E318;
}

void (*sub_23BA85760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v10 = sub_23BBDDB88();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v9[6] = v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = sub_23BBDD568();
  v9[7] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v9[8] = v15;
  v9[9] = __swift_coroFrameAllocStub(*(v15 + 64));
  (*(v16 + 16))();
  sub_23BA85CFC(a2, a3, a4, v13);
  return sub_23BA8593C;
}

void sub_23BA8593C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_23BBDDA28();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_23BBDDA28();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

BOOL sub_23BA85BB0@<W0>(uint64_t a1@<X0>, _BOOL8 *a2@<X8>)
{
  result = sub_23BA84E14(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_23BA85BD8(void *a1, uint64_t *a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23BA84E18(v6, *a2, a3);
  return sub_23BA85C4C;
}

void sub_23BA85C4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23BA85C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_23BA85CFC(a1, a2, WitnessTable, a3);
}

uint64_t sub_23BA85CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_23BBDD568();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v36 - v18;
  sub_23BBDD438();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_23BBDD4A8();
  result = sub_23BBDCED8();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_23BBDD448();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_23BBDDB88();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA8618C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23BA86218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA85200(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BA86244(uint64_t *a1)
{
  result = sub_23BA85200(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_23BA86270(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA8629C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA86270(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BA862C8(uint64_t *a1)
{
  result = sub_23BA86270(*a1);
  *a1 = result;
  return result;
}

BOOL sub_23BA862F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a2;
  v5 = *(a3 - 8);
  v32 = a4;
  v33 = v5;
  MEMORY[0x28223BE20](a1);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  OUTLINED_FUNCTION_7_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v21 = *(v20 + 48);
  v22 = *(v9 + 16);
  v22(&v30 - v18, v34, v7, v17);
  (v22)(&v19[v21], v35, v7);
  OUTLINED_FUNCTION_3_21(v19);
  if (!v23)
  {
    (v22)(v12, v19, v7);
    OUTLINED_FUNCTION_3_21(&v19[v21]);
    if (!v23)
    {
      v25 = v33;
      v26 = &v19[v21];
      v27 = v31;
      (*(v33 + 32))(v31, v26, a3);
      v28 = sub_23BBDCF38();
      v29 = *(v25 + 8);
      v29(v27, a3);
      v29(v12, a3);
      (*(v9 + 8))(v19, v7);
      return (v28 & 1) != 0;
    }

    (*(v33 + 8))(v12, a3);
LABEL_9:
    (*(v15 + 8))(v19, TupleTypeMetadata2);
    return 0;
  }

  OUTLINED_FUNCTION_3_21(&v19[v21]);
  if (!v23)
  {
    goto LABEL_9;
  }

  (*(v9 + 8))(v19, v7);
  return 1;
}

uint64_t sub_23BA865E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDD648();

  return MEMORY[0x2821FCA60](a1, v5, a3);
}

uint64_t sub_23BA8663C(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BA865E8(v5, a1, a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA86694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FC708](v4, v5, a3, v6, v7);
}

uint64_t sub_23BA86704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();

  return sub_23BBDD3F8();
}

uint64_t sub_23BA86778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FC718](v4, v5, a3, v6, v7);
}

uint64_t sub_23BA867F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_23BBDDBB8();
  sub_23BA865E8(v6, a2, v4);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA86898()
{
  result = qword_27E19E000;
  if (!qword_27E19E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E000);
  }

  return result;
}

uint64_t sub_23BA86A60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DFF8, &qword_23BBF41F0);
    sub_23BA86898();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA86B98(uint64_t a1)
{
  result = sub_23BBDD648();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA86C08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA86D90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BA86FB0);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_7_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_23BBDD908();
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t a1)
{

  return sub_23BBDD648();
}

uint64_t sub_23BA870C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA870E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_23BA87154(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v64 = a2;
  v65 = a4;
  v66 = a1;
  v67 = a3;
  v60 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_5();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  v63 = v56 - v13;
  v14 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for TotalLineLimitLayout.TextSubview(v14);
  OUTLINED_FUNCTION_7();
  v61 = v16;
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v68 = v18 - v17;
  OUTLINED_FUNCTION_5_3();
  v19 = sub_23BBDA098();
  v20 = OUTLINED_FUNCTION_2_25(&qword_27E199DF0);
  v21 = sub_23BBDD458();
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = v21;
    v71 = MEMORY[0x277D84F90];
    sub_23BA92CC8();
    v22 = v71;
    result = sub_23BBDD438();
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v56[0] = v6;
    v58 = (v9 + 16);
    v57 = (v9 + 8);
    v56[2] = v20;
    v56[1] = a5;
    v25 = v60;
    do
    {
      v26 = sub_23BBDD558();
      v27 = *v58;
      v28 = v63;
      (*v58)(v63);
      v26(v70, 0);
      v29 = v59;
      (v27)(v59, v28, v25);
      v30 = v68;
      (v27)(v68, v29, v25);
      sub_23BBDA418();
      v70[0] = v31 & 1;
      v69 = v32 & 1;
      sub_23BBD9F18();
      v33 = v19;
      v34 = v30;
      v35 = v62;
      v36 = (v30 + *(v62 + 20));
      *v36 = v37;
      v36[1] = v38;
      v70[0] = v64 & 1;
      v69 = v65 & 1;
      sub_23BBD9F18();
      v40 = v39;
      v42 = v41;
      v43 = *v57;
      (*v57)(v29, v25);
      v43(v28, v25);
      v44 = (v34 + *(v35 + 24));
      *v44 = v40;
      v44[1] = v42;
      v71 = v22;
      v45 = *(v22 + 16);
      if (v45 >= *(v22 + 24) >> 1)
      {
        sub_23BA92CC8();
        v22 = v71;
      }

      *(v22 + 16) = v45 + 1;
      sub_23BA894F8(v68, v22 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45);
      sub_23BBDD4B8();
      --v23;
      v19 = v33;
    }

    while (v23);
  }

  v70[0] = v64 & 1;
  LOBYTE(v71) = v65 & 1;
  sub_23BA8758C(v22, v66, v64 & 1, v67, v65 & 1);
  v47 = v46;

  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = (v47 + 56);
    v50 = 0.0;
    v51 = 0.0;
    do
    {
      v52 = *(v49 - 2);
      v53 = *(v49 - 1);
      v54 = *v49;
      v49 += 4;
      v55 = v54;
      if (v51 <= v52)
      {
        v51 = v52;
      }

      v50 = v50 + v53 + v55;
      --v48;
    }

    while (v48);
  }
}

void sub_23BA8758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v125 = a3;
  v124 = a2;
  v127 = type metadata accessor for TotalLineLimitLayout.TextSubview(0);
  v121 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v113 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E148, &qword_23BBF4640);
  MEMORY[0x28223BE20](v15);
  v120 = (&v113 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E150, &qword_23BBF4648);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = (&v113 - v21);
  MEMORY[0x28223BE20](v22);
  v116 = &v113 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = (&v113 - v25);
  v27 = swift_allocObject();
  v28 = 0.0;
  v129 = *(a1 + 16);
  v29 = sub_23BA88BE8(0, v129, 0.0, 0.0, 0.0);
  v119 = v27;
  *(v27 + 16) = v29;
  v123 = v27 + 16;
  v30 = swift_allocObject();
  v31 = 0x7FF0000000000000;
  if ((a5 & 1) == 0)
  {
    v31 = a4;
  }

  v118 = v30;
  *(v30 + 16) = v31;
  v32 = (v30 + 16);
  v33 = swift_allocObject();
  v34 = *v6;
  v117 = v33;
  *(v33 + 16) = v34;
  v35 = (v33 + 16);

  v128 = v35;
  swift_beginAccess();
  v130 = v32;
  swift_beginAccess();
  v36 = 0;
  v37 = v14;
  v115 = v14 + 8;
  v126 = v6;
  for (i = a1; ; a1 = i)
  {
    if (v36 == v129)
    {
      v38 = 1;
      v36 = v129;
      v39 = v116;
    }

    else
    {
      if (v36 >= v129)
      {
        goto LABEL_91;
      }

      if (__OFADD__(v36, 1))
      {
        goto LABEL_92;
      }

      v40 = a1 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v36;
      v41 = *(v15 + 48);
      v42 = v6;
      v43 = v19;
      v44 = v11;
      v45 = a1;
      v46 = v120;
      *v120 = v36;
      sub_23BA89650(v40, v46 + v41);
      v47 = v46;
      a1 = v45;
      v11 = v44;
      v19 = v43;
      v6 = v42;
      v39 = v116;
      sub_23B97A69C(v47, v116, &qword_27E19E148, &qword_23BBF4640);
      v38 = 0;
      ++v36;
    }

    __swift_storeEnumTagSinglePayload(v39, v38, 1, v15);
    sub_23B97A69C(v39, v26, &qword_27E19E150, &qword_23BBF4648);
    if (__swift_getEnumTagSinglePayload(v26, 1, v15) == 1)
    {
      break;
    }

    v48 = *v26;
    sub_23BA894F8(v26 + *(v15 + 48), v37);
    if (*v128 < 1 || (v49 = *v130, *v130 <= 0.0))
    {
LABEL_16:
      sub_23BA896C8(v37);
      break;
    }

    sub_23BA88C6C(v48, a1, v6);
    v51 = v50;
    v52 = v50 + *&v115[*(v127 + 20)];
    if (v49 < v52)
    {
      v53 = v52 - v49;
      if (v53 >= *(v6 + 16) - v28)
      {
        goto LABEL_16;
      }

      v28 = v28 + v53;
      v52 = v49 + v53;
      *v130 = v52;
    }

    v54 = v119;
    sub_23BA88F24(v48, 1, v119, v117, v52);
    v133[0] = v125 & 1;
    v132 = 0;
    sub_23BBD9F18();
    v55 = v118;
    sub_23BA89038(v48, v54, v118, v56, v57);
    sub_23BA89148(v48, v54, v55, v51);
    sub_23BA896C8(v37);
    v6 = v126;
  }

  swift_beginAccess();
  v58 = 0;
  v116 = v11 + 8;
LABEL_18:
  v59 = v122;
  while (1)
  {
    if (v58 == v129)
    {
      v60 = 1;
      v58 = v129;
    }

    else
    {
      if (v58 >= v129)
      {
        goto LABEL_89;
      }

      if (__OFADD__(v58, 1))
      {
        goto LABEL_90;
      }

      v61 = a1 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v58;
      v62 = *(v15 + 48);
      v63 = v120;
      *v120 = v58;
      sub_23BA89650(v61, v63 + v62);
      sub_23B97A69C(v63, v19, &qword_27E19E148, &qword_23BBF4640);
      v60 = 0;
      ++v58;
    }

    __swift_storeEnumTagSinglePayload(v19, v60, 1, v15);
    sub_23B97A69C(v19, v59, &qword_27E19E150, &qword_23BBF4648);
    if (__swift_getEnumTagSinglePayload(v59, 1, v15) == 1)
    {
      goto LABEL_57;
    }

    v64 = *v59;
    sub_23BA894F8(v59 + *(v15 + 48), v11);
    v65 = *v128;
    if (*v128 < 1)
    {
      break;
    }

    v66 = *v130;
    if (*v130 <= 0.0)
    {
      break;
    }

    v67 = &v11[*(v127 + 24)];
    v68 = *&v116[*(v127 + 20)];
    v69 = v67[1];
    v70 = round(v69 / v68);
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
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
      goto LABEL_87;
    }

    if (v70 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v70 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

    v71 = *v123;
    if (v64 >= *(*v123 + 16))
    {
      goto LABEL_85;
    }

    v72 = v70;
    v73 = v71 + 32 * v64;
    v75 = *(v73 + 32);
    v74 = v73 + 32;
    v76 = v70 - v75;
    if (__OFSUB__(v70, v75))
    {
      goto LABEL_86;
    }

    if (v76 < 1)
    {
LABEL_55:
      sub_23BA896C8(v11);
      goto LABEL_18;
    }

    v77 = v66 + *(v74 + 16);
    if (v69 <= v77)
    {
      if (v65 >= v76)
      {
        v94 = v119;
        sub_23BA88F24(v64, v72, v119, v117, v77);
        v90 = *v67;
        v92 = v64;
        v91 = v69;
        v93 = v94;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23BA896B4();
          v71 = v95;
        }

        if (v64 >= *(v71 + 16))
        {
          goto LABEL_98;
        }

        v85 = v71 + 32 * v64;
        v87 = *(v85 + 32);
        v86 = (v85 + 32);
        v88 = v87 + v65;
        if (__OFADD__(v87, v65))
        {
          goto LABEL_99;
        }

        *v86 = v88;
        v89 = v119;
        *(v119 + 16) = v71;
        *v128 = 0;
        v132 = v125 & 1;
        v131 = 0;
        sub_23BBD9F18();
        v92 = v64;
        v93 = v89;
      }

      sub_23BA89038(v92, v93, v118, v90, v91);
      v59 = v122;
    }

    else
    {
      if (*(v126 + 16) - v28 > 0.0)
      {
        v78 = *(v126 + 16) - v28;
      }

      else
      {
        v78 = 0.0;
      }

      v132 = v125 & 1;
      v131 = 0;
      sub_23BBD9F18();
      if (v64 >= *(v71 + 16))
      {
        goto LABEL_88;
      }

      v81 = v80;
      v82 = v66 + *(v74 + 16);
      if (v81 > v78 + v82 + 0.5)
      {
        goto LABEL_55;
      }

      if (v82 < v81)
      {
        v83 = v81 - v82;
        v28 = v28 + v83;
        *v130 = v66 + v83;
      }

      sub_23BA89038(v64, v119, v118, v79, v81);
      v84 = round(v81 / v68);
      if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_95;
      }

      v59 = v122;
      if (v84 <= -9.22337204e18)
      {
        goto LABEL_96;
      }

      if (v84 >= 9.22337204e18)
      {
        goto LABEL_97;
      }

      sub_23BA88F24(v64, v84, v119, v117, v84);
    }

    sub_23BA896C8(v11);
  }

  sub_23BA896C8(v11);
LABEL_57:
  v96 = *v130;
  v97 = *v123;
  if (*v130 <= 0.0 || v28 != 0.0 || (v98 = *(v97 + 16)) == 0)
  {
LABEL_80:

    return;
  }

  v99 = 0;
  v100 = 32;
  v101 = *(v97 + 16);
  while (1)
  {
    v102 = *(v97 + v100);
    if (v102 >= 1)
    {
      v102 = 1;
    }

    v103 = __OFADD__(v99, v102);
    v99 += v102;
    if (v103)
    {
      break;
    }

    v100 += 32;
    if (!--v101)
    {
      v104 = v99 <= 1;
      v105 = v99 - 1;
      if (!v104 && (*(v126 + 32) & 1) == 0 && (*(v126 + 48) & 1) == 0)
      {
        v106 = *(v126 + 24);
        v107 = *(v126 + 40);
        if (v106 < v107)
        {
          v108 = 0;
          v109 = v107 - v106;
          if (v109 >= v96 / v105)
          {
            v110 = v96 / v105;
          }

          else
          {
            v110 = v109;
          }

          for (j = 1; v98 != j; ++j)
          {
            if (j >= *(v97 + 16))
            {
              goto LABEL_93;
            }

            if (!*(v97 + v108 + 64))
            {
              break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23BA896B4();
              v97 = v112;
            }

            if (j >= *(v97 + 16))
            {
              goto LABEL_94;
            }

            *(v97 + v108 + 88) = v110 + *(v97 + v108 + 88);
            *v123 = v97;
            v96 = v96 - v110;
            *v130 = v96;
            v108 += 32;
          }
        }
      }

      goto LABEL_80;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_23BA880B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v115 = a1;
  v114 = sub_23BBDA228();
  OUTLINED_FUNCTION_7();
  v109 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  v112 = &v103 - v17;
  OUTLINED_FUNCTION_5_3();
  v130 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v107 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  v125 = (&v103 - v25);
  v26 = OUTLINED_FUNCTION_5_3();
  v123 = type metadata accessor for TotalLineLimitLayout.TextSubview(v26);
  OUTLINED_FUNCTION_7();
  v122 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E120, &qword_23BBF4620);
  MEMORY[0x28223BE20](v32 - 8);
  v110 = &v103 - v33;
  OUTLINED_FUNCTION_5_3();
  v34 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v105 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v106 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E128, &qword_23BBF4628);
  MEMORY[0x28223BE20](v39 - 8);
  v104 = &v103 - v40;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E130, &unk_23BBF4630);
  MEMORY[0x28223BE20](v108);
  v42 = &v103 - v41;
  v43 = OUTLINED_FUNCTION_2_25(&qword_27E199DF0);
  v44 = sub_23BBDD458();
  v117 = a4;
  v116 = a3;
  v119 = v9;
  v118 = v42;
  v128 = a9;
  v129 = v34;
  if (v44)
  {
    v45 = v44;
    v133 = MEMORY[0x277D84F90];
    sub_23BA92CC8();
    v46 = v133;
    result = sub_23BBDD438();
    if (v45 < 0)
    {
      goto LABEL_17;
    }

    v103 = v22;
    v126 = a4;
    v127 = a3;
    v48 = (v107 + 16);
    v121 = (v107 + 8);
    v120 = v43;
    do
    {
      v49 = sub_23BBDD558();
      v50 = *v48;
      v51 = v31;
      v52 = v125;
      v53 = v130;
      (*v48)(v125);
      v49(v132, 0);
      v54 = v124;
      (v50)(v124, v52, v53);
      (v50)(v51, v54, v53);
      sub_23BBDA418();
      LOBYTE(v132[0]) = v55 & 1;
      v131 = v56 & 1;
      sub_23BBD9F18();
      v57 = v123;
      v58 = (v51 + *(v123 + 20));
      *v58 = v59;
      v58[1] = v60;
      LOBYTE(v132[0]) = 0;
      v131 = 0;
      sub_23BBD9F18();
      v62 = v61;
      v64 = v63;
      v65 = *v121;
      (*v121)(v54, v53);
      v66 = v52;
      v31 = v51;
      v65(v66, v53);
      v67 = (v51 + *(v57 + 24));
      *v67 = v62;
      v67[1] = v64;
      v133 = v46;
      v68 = *(v46 + 16);
      if (v68 >= *(v46 + 24) >> 1)
      {
        sub_23BA92CC8();
        v46 = v133;
      }

      *(v46 + 16) = v68 + 1;
      sub_23BA894F8(v51, v46 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v68);
      v34 = v129;
      v43 = v120;
      sub_23BBDD4B8();
      --v45;
    }

    while (v45);
    v22 = v103;
    v42 = v118;
    v69 = v109;
    v71 = *&v126;
    v70 = *&v127;
  }

  else
  {
    v70 = *&a3;
    v71 = *&a4;
    v46 = MEMORY[0x277D84F90];
    v69 = v109;
  }

  LOBYTE(v132[0]) = 0;
  LOBYTE(v133) = 0;
  sub_23BA8758C(v46, v70, 0, v71, 0);
  v73 = v72;
  v75 = v74;

  v76 = a2 - v75;
  v77 = v105;
  v78 = v104;
  (*(v105 + 16))(v104, v128, v34);
  (*(v77 + 32))(v106, v78, v34);
  sub_23BA8955C(&qword_27E19E138, MEMORY[0x277CDF810]);
  sub_23BBDD188();
  v79 = &v42[*(v108 + 52)];
  *v79 = v73;
  *(v79 + 1) = 0;
  v124 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140, &qword_23BBF9C00);
  *&v126 = v107 + 16;
  v81 = *(v80 + 36);
  v122 = v107 + 32;
  v121 = (v69 + 2);
  v109 = v69 + 1;
  v125 = (v107 + 8);
  v127 = v73;
  v82 = (*&v73 + 56);
  v83 = 1;
  v123 = v81;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v42[v81] == v132[0])
    {
      goto LABEL_15;
    }

    v84 = sub_23BBDD558();
    (**&v126)(v22);
    v84(v132, 0);
    result = sub_23BBDD4B8();
    v85 = *(*&v127 + 16);
    if (v83 - 1 == v85)
    {
      (*v125)(v22, v130);
LABEL_15:
      v42[*(v108 + 56)] = 1;
      return sub_23BA895A0(v42);
    }

    if (v83 - 1 >= v85)
    {
      break;
    }

    v86 = *v82;
    *(v124 + 1) = v83;
    v128 = v82;
    v87 = v22;
    v88 = *v122;
    v89 = v110;
    v90 = v130;
    (*v122)(v110, v22, v130);
    v91 = v111;
    v88(v111, v89, v90);
    v134.origin.x = v115;
    v134.origin.y = a2;
    v134.size.width = v116;
    v134.size.height = v117;
    CGRectGetWidth(v134);
    LOBYTE(v132[0]) = 0;
    LOBYTE(v133) = 0;
    v92 = v43;
    v93 = v112;
    sub_23BBD9F08();
    MEMORY[0x23EEB2A20](*(v119 + 8));
    sub_23BBDA208();
    v135.origin.x = OUTLINED_FUNCTION_6_16();
    CGRectGetMinX(v135);
    v136.origin.x = OUTLINED_FUNCTION_6_16();
    CGRectGetWidth(v136);
    v94 = v113;
    v95 = v114;
    (*v121)(v113, v93, v114);
    sub_23BBDA208();
    sub_23BBDA218();
    v96 = *v109;
    (*v109)(v94, v95);
    LOBYTE(v132[0]) = 0;
    LOBYTE(v133) = 0;
    sub_23BBD9F28();
    sub_23BBDA218();
    v98 = v97;
    v99 = v93;
    v43 = v92;
    v100 = v95;
    v22 = v87;
    v42 = v118;
    v96(v99, v100);
    v101 = v128;
    v102 = v91;
    v81 = v123;
    (*v125)(v102, v90);
    v76 = v76 + v86 + v98;
    ++v83;
    v82 = v101 + 4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23BA88B48()
{
  v0 = sub_23BBDA3E8();
  __swift_allocate_value_buffer(v0, qword_27E1BFD38);
  __swift_project_value_buffer(v0, qword_27E1BFD38);
  sub_23BBDA3D8();
  return sub_23BBDA3C8();
}

BOOL sub_23BA88BA0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 == a6;
  if (a4 != a7)
  {
    v8 = 0;
  }

  if (a1 != a2)
  {
    v8 = 0;
  }

  return a5 == a8 && v8;
}

uint64_t sub_23BA88BE8(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (a2)
    {
      v9 = result;
      result = sub_23BBDD288();
      *(result + 16) = v5;
      v10 = (result + 56);
      do
      {
        *(v10 - 3) = v9;
        *(v10 - 2) = a3;
        *(v10 - 1) = a4;
        *v10 = a5;
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_23BA88C6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBD9CE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TotalLineLimitLayout.TextSubview(0) - 8;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  if (a1 && (*(a3 + 32) & 1) != 0)
  {
    v20 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = *(a2 + 16);
      if (v20 < v21)
      {
        v28 = v7;
        v29 = v21;
        v22 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v26 = *(v17 + 72);
        v27 = v22;
        sub_23BA89650(v22 + v26 * v20, &v26 - v18);
        sub_23BBD9F38();
        v23 = sub_23BBD9F58();
        v24 = *(*(v23 - 8) + 8);
        v24(v19, v23);
        if (v29 > a1)
        {
          sub_23BA89650(v27 + v26 * a1, v15);
          sub_23BBD9F38();
          v24(v15, v23);
          sub_23BBD9CD8();
          v25 = *(v28 + 8);
          v25(v9, v6);
          v25(v12, v6);
          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_23BA88F24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = *(a3 + 16);
  if (*(v10 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(v10 + 32 * a1 + 32);
  v5 = a2 - v11;
  if (!__OFSUB__(a2, v11))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  sub_23BA896B4();
  v10 = v15;
LABEL_5:
  if (*(v10 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 32 * a1 + 32) = a2;
    *(a3 + 16) = v10;
    swift_beginAccess();
    v13 = *(a4 + 16);
    v14 = v13 - v5;
    if (!__OFSUB__(v13, v5))
    {
      swift_beginAccess();
      *(a4 + 16) = v14;
      return;
    }
  }

  __break(1u);
}

void sub_23BA89038(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a2 + 16);
    if (*(v11 + 16) > a1)
    {
      v5 = *(v11 + 32 * a1 + 48);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  sub_23BA896B4();
  v11 = v15;
LABEL_4:
  if (*(v11 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v11 + 32 * a1;
    *(v13 + 40) = a4;
    *(v13 + 48) = a5;
    *(a2 + 16) = v11;
    swift_beginAccess();
    v14 = *(a3 + 16) - (a5 - v5);
    swift_beginAccess();
    *(a3 + 16) = v14;
  }
}

void sub_23BA89148(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    if (*(v9 + 16) > a1)
    {
      v4 = *(v9 + 32 * a1 + 56);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  sub_23BA896B4();
  v9 = v12;
LABEL_4:
  if (*(v9 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 32 * a1 + 56) = a4;
    *(a2 + 16) = v9;
    swift_beginAccess();
    v11 = *(a3 + 16) - (a4 - v4);
    swift_beginAccess();
    *(a3 + 16) = v11;
  }
}

uint64_t sub_23BA8924C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197788 != -1)
  {
    swift_once();
  }

  v2 = sub_23BBDA3E8();
  v3 = __swift_project_value_buffer(v2, qword_27E1BFD38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*sub_23BA893E0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23BA89458()
{
  result = qword_27E19E118;
  if (!qword_27E19E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E118);
  }

  return result;
}

uint64_t type metadata accessor for TotalLineLimitLayout.TextSubview(uint64_t a1)
{
  result = qword_27E19E158;
  if (!qword_27E19E158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA894F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TotalLineLimitLayout.TextSubview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA8955C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BBDA098();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA895A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E130, &unk_23BBF4630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA89608()
{

  return swift_deallocObject();
}

uint64_t sub_23BA89650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TotalLineLimitLayout.TextSubview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA896C8(uint64_t a1)
{
  v2 = type metadata accessor for TotalLineLimitLayout.TextSubview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA89724(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA89768(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_23BBD9F58();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_23BA897C4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_23BBD9F58();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v5);
}

void sub_23BA89810(uint64_t a1, double a2)
{
  sub_23BBD9F58();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_25(unint64_t *a1)
{
  v2 = MEMORY[0x277CDF820];

  return sub_23BA8955C(a1, v2);
}

uint64_t getEnumTagSinglePayload for AuditTokenDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuditTokenDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23BA8991C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA89938(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

void static SubscriptionStoreControlPlacementKey.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

double static SubscriptionStoreControlPlacementKey.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static SubscriptionStoreControlPlacementKey.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

uint64_t sub_23BA899B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C9234(v2, &v13);
  if (v14 >= 6)
  {
    sub_23B97B104(v2);
    sub_23B98473C(&v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = a1();
    (*(v8 + 16))(v9 & 1, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v5 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v5;
    *(a2 + 32) = *(v2 + 32);
    return sub_23B9C9290(&v13);
  }
}

void static SubscriptionStoreControlPlacementKey.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static SubscriptionStoreControlPlacementKey.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

void static SubscriptionStoreControlPlacementKey.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23B9C9234(a1, v16);
  sub_23B9C9234(a2, &v18);
  switch(v17)
  {
    case 0:
      if (v19)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 1:
      if (v19 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 2:
      if (v19 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 3:
      if (v19 != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 4:
      if (v19 != 4)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 5:
      if (v19 != 5)
      {
        goto LABEL_16;
      }

LABEL_13:
      sub_23B9C9290(v16);
      v3 = 1;
      break;
    default:
      sub_23B9C9234(v16, v15);
      if (v19 >= 6)
      {
        sub_23B98473C(v15, v12);
        sub_23B98473C(&v18, v10);
        v5 = v13;
        v6 = v14;
        v7 = __swift_project_boxed_opaque_existential_1(v12, v13);
        v8 = v11;
        v9 = __swift_project_boxed_opaque_existential_1(v10, v11);
        v3 = sub_23BA89E10(v7, v9, v5, v8, v6);
        __swift_destroy_boxed_opaque_existential_1(v10);
        __swift_destroy_boxed_opaque_existential_1(v12);
        sub_23B9C9290(v16);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_16:
        sub_23BA8A388(v16);
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

uint64_t SubscriptionStoreControlPlacementKey.hashValue.getter()
{
  sub_23BBDDBB8();
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA89D04(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23B9C9234(v1, &v5);
  v2 = v6;
  if (v6 >= 6)
  {
    sub_23B98473C(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  MEMORY[0x23EEB63A0](v2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA89D98()
{
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1;
}

uint64_t sub_23BA89E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a5;
  v8 = sub_23BBDD648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v21 = sub_23BBDCF38();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_23BA8A098()
{
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return MEMORY[0x23EEB63A0](v1);
}

uint64_t sub_23BA8A124()
{
  sub_23BBDDBB8();
  v0 = sub_23BA89D98();
  MEMORY[0x23EEB63A0](v0);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA8A188()
{
  result = qword_27E19E168;
  if (!qword_27E19E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E168);
  }

  return result;
}

uint64_t sub_23BA8A200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA8A258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

double sub_23BA8A2B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23BA8A2EC(uint64_t a1)
{
  sub_23BBDDBB8();
  v1 = sub_23BA89D98();
  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA8A334()
{
  result = qword_27E19E170;
  if (!qword_27E19E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E170);
  }

  return result;
}

uint64_t sub_23BA8A388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19E178, qword_23BBF4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BA8A3F4(uint64_t a1)
{
  sub_23BA8A87C(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23B975E04();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23BA8A87C(319, &qword_27E19E200, &type metadata for Product.CollectionTaskState, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA8A4FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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

  if (v8 < a2)
  {
    v9 = ((((v7 + 24) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA8A648);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BA8A65C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFD8)
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

  if (a2 > v9)
  {
    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA8A83CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

void sub_23BA8A87C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23BA8A94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v73 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v5);
  v66 = *(a1 - 1);
  v68 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3(&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v77 = v8;
  v78 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v10);
  v11 = a1[3];
  v12 = a1[5];
  type metadata accessor for StorePlaceholderView(255, v11, v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208, &qword_23BBF49F8);
  sub_23BBDACE8();
  v14 = a1[2];
  v15 = a1[4];
  type metadata accessor for StoreStaticView(255, v14, v15, v16);
  v61 = sub_23BBDACE8();
  sub_23BBDACE8();
  v17 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v70 = v18;
  MEMORY[0x28223BE20](v19);
  v76 = &v59 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70, &qword_23BBF4A00);
  v67 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v71 = v21;
  MEMORY[0x28223BE20](v22);
  v63 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_3(&v59 - v25);
  *&v26 = v14;
  *(&v26 + 1) = v11;
  v60 = v26;
  *&v27 = v15;
  *(&v27 + 1) = v12;
  v59 = v27;
  v79 = v26;
  v80 = v27;
  v28 = v62;
  v81 = v62;
  v29 = sub_23BA8BE58();
  OUTLINED_FUNCTION_5_22();
  WitnessTable = swift_getWitnessTable();
  v31 = sub_23BA8BEAC();
  v85[5] = WitnessTable;
  v85[6] = v31;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_32();
  v33 = swift_getWitnessTable();
  v85[3] = v32;
  v85[4] = v33;
  v34 = swift_getWitnessTable();
  v85[1] = v29;
  v85[2] = v34;
  v35 = swift_getWitnessTable();
  sub_23BBDBE18();
  v85[0] = *v28;
  v36 = v64;
  (*(v78 + 104))(v64, *MEMORY[0x277CDD098], v77);
  v37 = v66;
  v38 = v65;
  (*(v66 + 16))(v65, v28, a1);
  v39 = v37;
  v40 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v41 = swift_allocObject();
  v42 = v59;
  *(v41 + 16) = v60;
  *(v41 + 32) = v42;
  (*(v39 + 32))(v41 + v40, v38, a1);

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730, &qword_23BBF4A30);
  v84 = v35;
  OUTLINED_FUNCTION_3_4();
  v44 = swift_getWitnessTable();
  v45 = sub_23B97B518(&qword_27E19E230, qword_27E19B730, &qword_23BBF4A30, MEMORY[0x277D83988]);
  v46 = sub_23BA8C250();
  v47 = v72;
  sub_23BBDD348();
  v57 = v45;
  v58 = v46;
  v48 = v63;
  v49 = v76;
  sub_23BA261A0(v85, v36, v47, &unk_23BBF4A28, v41, v17, v43, v44, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66, v67, v68);

  (*(v73 + 8))(v47, v74);
  (*(v78 + 8))(v36, v77);

  (*(v70 + 8))(v49, v17);
  OUTLINED_FUNCTION_3_22();
  v52 = sub_23B97B518(v50, &qword_27E19BE70, &qword_23BBF4A00, v51);
  v82 = v44;
  v83 = v52;
  OUTLINED_FUNCTION_0();
  v53 = v67;
  swift_getWitnessTable();
  v54 = v69;
  sub_23B9D2D88();
  v55 = *(v71 + 8);
  v55(v48, v53);
  sub_23B9D2D88();
  return (v55)(v54, v53);
}

uint64_t sub_23BA8B02C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a6;
  v109 = a4;
  v10 = type metadata accessor for StoreStaticView(0, a2, a4, a4);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v87 - v13;
  v106 = a5;
  v15 = type metadata accessor for StorePlaceholderView(255, a3, a5, v14);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208, &qword_23BBF49F8);
  v16 = sub_23BBDACE8();
  v104 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v103 = &v87 - v17;
  v105 = a3;
  v88 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v89 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v15 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = &v87 - v23;
  v24 = sub_23BBDACE8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v107 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v108 = &v87 - v28;
  v29 = sub_23BBDACE8();
  v110 = *(v29 - 8);
  v111 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v87 - v30;
  v32 = a1;
  v33 = *a1;
  if (*(v33 + 16))
  {
    v94 = v24;
    v95 = v25;
    v96 = &v87 - v30;
    v97 = v15;
    v98 = v16;
    v99 = v10;
    v87 = a2;
    v34 = v105;
    v35 = v106;
    *&v135 = a2;
    *(&v135 + 1) = v105;
    v136 = v109;
    v137 = v106;
    v36 = type metadata accessor for StoreDynamicView(0, &v135);
    v37 = &v32[v36[16]];
    v38 = v37[16];
    v39 = *(v37 + 3);
    v135 = *v37;
    LOBYTE(v136) = v38;
    v137 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E248, &qword_23BBF4A38);
    sub_23BBDBF68();
    v40 = v138;
    if (v140)
    {
      v41 = v32;
      if (v140 == 1)
      {

        v42 = v92;
        sub_23BB0CDF8(v40, *(v32 + 1), *(v32 + 2), v32[v36[15]], v87, v109, v92);
        v43 = v99;
        swift_getWitnessTable();
        sub_23B9D2D88();
        v44 = *(v93 + 8);

        v44(v42, v43);
        sub_23B9D2D88();
        WitnessTable = swift_getWitnessTable();
        v46 = sub_23BA8BEAC();
        v133 = WitnessTable;
        v134 = v46;
        swift_getWitnessTable();
        v47 = v108;
        sub_23BA82E14();
        v44(v42, v43);
        v44(v101, v43);
      }

      else
      {
        v60 = v34;
        v61 = v89;
        (*(v88 + 16))(v89, &v41[v36[14]], v60);
        v62 = v37[16];
        v63 = *(v37 + 3);
        v135 = *v37;
        LOBYTE(v136) = v62;
        v137 = v63;

        sub_23BBDBF68();
        v135 = v119;
        LOBYTE(v136) = v120;
        v64 = v41[v36[15]];
        v65 = v90;
        sub_23BB98980(v61, v33, &v135, v64, v60, v35, v90);
        v66 = v97;
        v67 = swift_getWitnessTable();
        sub_23B9D2D88();
        v109 = *(v91 + 8);
        v109(v65, v66);
        sub_23B9D2D88();
        v68 = sub_23BA8BEAC();
        v69 = v103;
        sub_23BA82D64();
        v117 = v67;
        v118 = v68;
        v70 = v98;
        swift_getWitnessTable();
        swift_getWitnessTable();
        v47 = v108;
        sub_23BA82D64();
        (*(v104 + 8))(v69, v70);
        v71 = v109;
        v109(v65, v66);
        v71(v100, v66);
      }
    }

    else
    {
      *&v135 = v138;
      BYTE8(v135) = 0;
      v52 = v139;
      v53 = v138;
      v54 = swift_getWitnessTable();
      v55 = sub_23BA8BEAC();
      v56 = v103;
      sub_23BA82E14();
      v121 = v54;
      v122 = v55;
      v57 = v98;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v58 = v108;
      sub_23BA82D64();
      sub_23B99A808(v40, v52, 0);
      v59 = v52;
      v47 = v58;
      sub_23B99A808(v40, v59, 0);
      (*(v104 + 8))(v56, v57);
    }

    v72 = swift_getWitnessTable();
    v73 = sub_23BA8BEAC();
    v131 = v72;
    v132 = v73;
    v74 = swift_getWitnessTable();
    v75 = swift_getWitnessTable();
    v129 = v74;
    v130 = v75;
    v76 = v94;
    swift_getWitnessTable();
    v77 = v107;
    sub_23B9D2D88();
    sub_23BA8BE58();
    v31 = v96;
    sub_23BA82E14();
    v78 = *(v95 + 8);
    v78(v77, v76);
    v78(v47, v76);
  }

  else
  {
    *&v135 = swift_getKeyPath();
    BYTE8(v135) = 0;
    sub_23BA8BE58();
    v48 = swift_getWitnessTable();
    v49 = sub_23BA8BEAC();
    v115 = v48;
    v116 = v49;
    v50 = swift_getWitnessTable();
    v51 = swift_getWitnessTable();
    v113 = v50;
    v114 = v51;
    swift_getWitnessTable();
    sub_23BA82D64();
  }

  v79 = sub_23BA8BE58();
  v80 = swift_getWitnessTable();
  v81 = sub_23BA8BEAC();
  v127 = v80;
  v128 = v81;
  v82 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v125 = v82;
  v126 = v83;
  v84 = swift_getWitnessTable();
  v123 = v79;
  v124 = v84;
  v85 = v111;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v110 + 8))(v31, v85);
}

uint64_t sub_23BA8BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 72) = a2;
  *(v6 + 112) = *a1;
  *(v6 + 65) = *(a1 + 16);
  sub_23BBDD308();
  *(v6 + 128) = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA8BC18, v8, v7);
}

uint64_t sub_23BA8BC18()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v4 = *(v0 + 65);

  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v5 = v3 + *(type metadata accessor for StoreDynamicView(0, v0 + 16) + 64);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  v9 = *(v5 + 16);
  *(v0 + 16) = *v5;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v4;
  sub_23BA1D218(v2, v1, v4);
  sub_23BA1D218(v6, v7, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E248, &qword_23BBF4A38);
  sub_23BBDBF78();
  sub_23B99A808(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v10 = *(v0 + 8);

  return v10();
}

double sub_23BA8BD64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *&v21 = a6;
  *(&v21 + 1) = a7;
  v22 = a8;
  v23 = a10;
  v14 = type metadata accessor for StoreDynamicView(0, &v21);
  (*(*(a7 - 8) + 32))(&a9[v14[14]], a4, a7);
  a9[v14[15]] = a5;
  v15 = &a9[v14[16]];
  v19 = 0uLL;
  v20 = 2;
  sub_23BA8A910(&v19);
  v16 = v22;
  v17 = v23;
  result = *&v21;
  *v15 = v21;
  v15[16] = v16;
  *(v15 + 3) = v17;
  return result;
}

unint64_t sub_23BA8BE58()
{
  result = qword_27E19E210;
  if (!qword_27E19E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E210);
  }

  return result;
}

unint64_t sub_23BA8BEAC()
{
  result = qword_27E19E218;
  if (!qword_27E19E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208, &qword_23BBF49F8);
    sub_23BA8BF64();
    sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E218);
  }

  return result;
}

unint64_t sub_23BA8BF64()
{
  result = qword_27E19E220;
  if (!qword_27E19E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E228, &qword_23BBF4A08);
    sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
    sub_23B9A243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E220);
  }

  return result;
}

uint64_t sub_23BA8C01C()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v5 = v7;
  v8 = v1;
  v2 = (type metadata accessor for StoreDynamicView(0, &v6) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  (*(*(v5 - 8) + 8))(v3 + v2[16]);
  sub_23B99A808(*(v3 + v2[18]), *(v3 + v2[18] + 8), *(v3 + v2[18] + 16));

  return swift_deallocObject();
}

uint64_t sub_23BA8C140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for StoreDynamicView(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_23B9AD524;

  return sub_23BA8BB68(a1, v1 + v9, v4, v5, v6, v7);
}

unint64_t sub_23BA8C250()
{
  result = qword_27E19E238;
  if (!qword_27E19E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730, &qword_23BBF4A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E238);
  }

  return result;
}

uint64_t sub_23BA8C2D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  type metadata accessor for StorePlaceholderView(255, a1[1], a1[3], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208, &qword_23BBF49F8);
  sub_23BBDACE8();
  type metadata accessor for StoreStaticView(255, v4, v5, v6);
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70, &qword_23BBF4A00);
  sub_23BBDA358();
  sub_23BA8BE58();
  OUTLINED_FUNCTION_5_22();
  swift_getWitnessTable();
  sub_23BA8BEAC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_22();
  sub_23B97B518(v7, &qword_27E19BE70, &qword_23BBF4A00, v8);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

void _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV10allOptionsSay0aB07ProductVGvg_0()
{
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDCDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 8))
  {
    v53 = v9;
    v54 = v7;
    v10 = 0;
    v11 = *(v0 + 16);
    v12 = *(v11 + 16);
    while (1)
    {
      if (v12 == v10)
      {
        return;
      }

      v13 = *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = *(*(v11 + v15 + v14 * v10 + 40) + 16);
      if (v16)
      {
        break;
      }

      ++v10;
    }

    v17 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      if (v17 >= v12)
      {
LABEL_13:
        v52 = v6;
        v57 = MEMORY[0x277D84F90];
        sub_23BA92B88(0, v16 & ~(v16 >> 63), 0);
        v21 = 0;
        v55 = v57;
        v22 = *(v11 + 16);
        v23 = v11 + v15 + 40;
        for (i = v15 + 40; ; i += v14)
        {
          v25 = v22 == v21;
          if (v22 == v21)
          {
            break;
          }

          if (*(*(v11 + i) + 16))
          {
            v22 = v21;
            break;
          }

          ++v21;
        }

        if (v16 < 0)
        {
          goto LABEL_46;
        }

        v26 = 0;
        v27 = 0;
        v50 = v52 + 32;
        v51 = (v52 + 16);
        v46 = v4;
        v47 = v2;
        v48 = v14;
        v49 = v23;
        while ((v22 & 0x8000000000000000) == 0)
        {
          if (v22 >= *(v11 + 16))
          {
            goto LABEL_41;
          }

          if (v25)
          {
            goto LABEL_48;
          }

          v28 = v22 * v14;
          v29 = *(v23 + v22 * v14);
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_42;
          }

          v30 = v22;
          v31 = v11;
          sub_23BA93D30(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v4, type metadata accessor for SubscriptionStoreControlOption);
          v33 = v53;
          v32 = v54;
          (*v51)(v53, v4, v54);
          sub_23BA93D8C();
          v34 = v55;
          v57 = v55;
          v36 = *(v55 + 16);
          v35 = *(v55 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_23BA92B88(v35 > 1, v36 + 1, 1);
            v32 = v54;
            v34 = v57;
          }

          *(v34 + 16) = v36 + 1;
          v37 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v55 = v34;
          (*(v52 + 32))(v34 + v37 + *(v52 + 72) * v36, v33, v32);
          v38 = *(v31 + 16);
          if (v30 >= v38)
          {
            goto LABEL_43;
          }

          v11 = v31;
          v22 = v30;
          ++v27;
          v23 = v49;
          if (v27 == *(*(v49 + v28) + 16))
          {
            v39 = v30 + 1;
            v14 = v48;
            while (1)
            {
              v25 = v39 == v38;
              if (v39 == v38)
              {
                v27 = 0;
                v22 = v38;
                goto LABEL_30;
              }

              v40 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8, &qword_23BBE4040);
              sub_23B979874();
              v41 = sub_23BA93AF8();
              v43 = *v42;

              (v41)(v56, 0);
              v44 = *(v43 + 16);

              if (v44)
              {
                break;
              }

              v39 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_47;
              }
            }

            v27 = 0;
            v22 = v40;
          }

          else
          {
            v25 = 0;
            v14 = v48;
          }

LABEL_30:
          ++v26;
          v4 = v46;
          v2 = v47;
          if (v26 == v16)
          {
            return;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      else
      {
        v18 = v11 + v15 + v14 * (v10 + 1) + 40;
        while (1)
        {
          v19 = *(*v18 + 16);
          v20 = __OFADD__(v16, v19);
          v16 += v19;
          if (v20)
          {
            break;
          }

          ++v17;
          v18 += v14;
          if (v17 >= v12)
          {
            if (!v16)
            {
              return;
            }

            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }
}

void sub_23BA8C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_82_0();
  v4 = v3;
  v6 = v5;
  v23 = v7;
  v8 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
  v9 = OUTLINED_FUNCTION_25_0(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = *(v6 + 16);
  if (v15)
  {
    v24 = MEMORY[0x277D84F90];
    sub_23BA92CE8();
    v16 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v16);
    v18 = v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v19 + 72);
    while (1)
    {
      v23(v18);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = *(v24 + 16);
      if (v20 >= *(v24 + 24) >> 1)
      {
        sub_23BA92CE8();
      }

      *(v24 + 16) = v20 + 1;
      OUTLINED_FUNCTION_23_2();
      sub_23BA93DE0(v14, v24 + v21 + *(v11 + 72) * v20, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section);
      v18 += v22;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_23BA8CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_82_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v42 = v12;
  v13 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_6();
  v41 = v15;
  v16 = OUTLINED_FUNCTION_5_3();
  v17 = type metadata accessor for SubscriptionStoreCopyWriter(v16);
  v18 = OUTLINED_FUNCTION_25_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_6();
  v45 = v19;
  v20 = OUTLINED_FUNCTION_17_0();
  v22 = sub_23BA92E50(v20, v21);
  sub_23BA92FB8(v22, v24, v23 & 1, *(v11 + 16), 0, 1, v11, v9);
  v26 = v25;
  if (v25)
  {
    v47 = MEMORY[0x277D84F90];
    sub_23BA92D48();
    v46 = v47;
    v27 = OUTLINED_FUNCTION_17_0();
    v29 = sub_23BA92E50(v27, v28);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v32 = 0;
      while (!__OFADD__(v32, 1))
      {
        v43 = v32 + 1;
        v44 = v31;
        v33 = v29;
        v34 = v30;
        v35 = v11;
        sub_23BA93904();
        v42(v41);
        if (v5)
        {
          goto LABEL_12;
        }

        sub_23BA93D8C();
        v36 = v46;
        v37 = *(v46 + 16);
        if (v37 >= *(v46 + 24) >> 1)
        {
          sub_23BA92D48();
          v36 = v46;
        }

        *(v36 + 16) = v37 + 1;
        OUTLINED_FUNCTION_12_0();
        v46 = v38;
        sub_23BA93DE0(v45, v38 + v39 + *(v40 + 72) * v37, type metadata accessor for SubscriptionStoreCopyWriter);
        sub_23BA9341C(v33, v34, v44 & 1, v35, v9, v7);
        ++v32;
        v5 = 0;
        v11 = v35;
        if (v43 == v26)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    sub_23BA93D8C();

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_23BA8CE68()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v5 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v103 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v92 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_6();
  v94 = v12;
  v13 = OUTLINED_FUNCTION_5_3();
  v96 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v13);
  OUTLINED_FUNCTION_7();
  v93 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_6();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  v18 = OUTLINED_FUNCTION_13_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v97 = v19 - v20;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_3();
  v99 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  v24 = OUTLINED_FUNCTION_13_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v95 = &v89 - v29;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_53_2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  v32 = OUTLINED_FUNCTION_13_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  sub_23B9A721C(v0 + *(v36 + 60), v35, qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_11_0(v35, 1, v5);
  if (!v74)
  {
    OUTLINED_FUNCTION_20_8();
    sub_23BA93DE0(v35, v4, v79);
    v80 = v4;
    v81 = 0;
    goto LABEL_28;
  }

  sub_23B979910(v35, qword_27E197A68, qword_23BBE3D90);
  v37 = v0[9];
  if (!v37)
  {
    v80 = v4;
    v81 = 1;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v80, v81, 1, v5);
LABEL_34:
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v90 = v4;
  v98 = v0[8];
  v38 = v0[2];
  v101 = v5;
  v102 = v38;
  swift_bridgeObjectRetain_n();

  v39 = 0;
  v104 = 0;
  v40 = v99;
  v100 = v37;
  while (2)
  {
    v41 = 0;
    while (1)
    {
      v42 = v103;
      if (!v39)
      {
        break;
      }

      v43 = *(v39 + 16);
      if (v41 == v43)
      {
        v44 = v95;
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v42);
        sub_23B979910(v44, &qword_27E197BA0, &qword_23BBE4010);
        break;
      }

      if (v41 >= v43)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_3_23();
      v61 = v95;
      sub_23BA93D30(v62, v95, v63);
      ++v41;
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v42);
      sub_23B9A71D0(v61, v2, &qword_27E197BA0, &qword_23BBE4010);
      v50 = v101;
      v60 = v42;
LABEL_18:
      sub_23B9A71D0(v2, v27, &qword_27E197BA0, &qword_23BBE4010);
      v67 = 1;
      OUTLINED_FUNCTION_11_0(v27, 1, v60);
      if (!v74)
      {
        OUTLINED_FUNCTION_1_33();
        v68 = v94;
        sub_23BA93DE0(v27, v94, v69);
        OUTLINED_FUNCTION_7_26();
        sub_23BA93D30(v68, v1, v70);
        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v67 = 0;
      }

      __swift_storeEnumTagSinglePayload(v1, v67, 1, v50);
      OUTLINED_FUNCTION_11_0(v1, 1, v50);
      v71 = v100;
      if (v74)
      {

        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v50);

LABEL_33:

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_20_8();
      sub_23BA93DE0(v1, v9, v72);
      v74 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() == v98 && v71 == v73;
      if (v74)
      {

LABEL_32:

        OUTLINED_FUNCTION_20_8();
        sub_23BA93DE0(v9, v90, v85);
        OUTLINED_FUNCTION_20_2();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v50);

        goto LABEL_33;
      }

      v75 = sub_23BBDDA88();

      if (v75)
      {
        v50 = v101;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_22_10();
    }

    v48 = *(v102 + 16);
    if (v104 == v48)
    {
      v49 = 1;
      v50 = v101;
LABEL_13:
      v54 = v96;
      __swift_storeEnumTagSinglePayload(v40, v49, 1, v96);
      v55 = v40;
      v56 = v97;
      sub_23B9A71D0(v55, v97, &qword_27E197B70, &qword_23BBFC930);
      OUTLINED_FUNCTION_11_0(v56, 1, v54);
      if (!v74)
      {
        OUTLINED_FUNCTION_18_12();
        v76 = v91;
        sub_23BA93DE0(v97, v91, v77);
        v78 = *(v76 + 40);

        OUTLINED_FUNCTION_17_11();
        sub_23BA93D8C();

        v39 = v78;
        v40 = v99;
        continue;
      }

      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v42);
      v60 = v42;
      v40 = v99;
      goto LABEL_18;
    }

    break;
  }

  v50 = v101;
  if (v104 < v48)
  {
    OUTLINED_FUNCTION_12_0();
    v51 = v104;
    OUTLINED_FUNCTION_21_10();
    sub_23BA93D30(v52, v40, v53);
    v49 = 0;
    v104 = v51 + 1;
    goto LABEL_13;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_23BA8D4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_82_0();
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v35 = v11;
  OUTLINED_FUNCTION_3_2();
  v33 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v18 = *(v17 + 16);
  OUTLINED_FUNCTION_3_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23, v27);
  if (__swift_getEnumTagSinglePayload(v25, 1, v18) == 1)
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_51_3();
    v32(v31, v25, v18);
    v35(v5, v16);
    (*(v20 + 8))(v5, v18);
    if (v4)
    {
      (*(v33 + 32))(v34, v16, v10);
    }
  }

  OUTLINED_FUNCTION_80_1();
}

uint64_t sub_23BA8D6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC7470(*(v1 + 16), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_23BA93DE0(v14, v17, type metadata accessor for SubscriptionStoreControlOption);
    sub_23BA93D30(v17, v11, type metadata accessor for Subscription);
    sub_23BA93D8C();
    v21 = sub_23BBDCDB8();
    (*(*(v21 - 8) + 32))(a1, v11, v21);
LABEL_7:
    v22 = a1;
    v23 = 0;
    v24 = v21;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  }

  sub_23B979910(v14, &qword_27E197BA0, &qword_23BBE4010);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  sub_23B9A721C(v1 + *(v18 + 60), v5, qword_27E197A68, qword_23BBE3D90);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    sub_23BA93DE0(v5, v8, type metadata accessor for Subscription);
    v21 = sub_23BBDCDB8();
    (*(*(v21 - 8) + 32))(a1, v8, v21);
    goto LABEL_7;
  }

  sub_23B979910(v5, qword_27E197A68, qword_23BBE3D90);
  v19 = *(v1 + 8);
  if (v19)
  {
    return sub_23BAC74B0(v19, a1);
  }

  v24 = sub_23BBDCDB8();
  v22 = a1;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.icon.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (*v2)
  {
    type metadata accessor for Subscription(0);
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 8) == 2)
    {
      _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    }

    v6 = OUTLINED_FUNCTION_38_1();
    v5 = v3(v6);
    v7 = OUTLINED_FUNCTION_38_1();
    sub_23B979A38(v7, v8, v9);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

void *sub_23BA8DB20()
{
  sub_23BA24034();

  return sub_23BBDA958();
}

uint64_t sub_23BA8DBC4(uint64_t a1)
{
  sub_23B9ECFF4(a1, &v3);
  sub_23BA24034();
  sub_23BBDA968();
  return sub_23B9ED0A4(a1);
}

void SubscriptionStoreControlStyleConfiguration.options.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for SubscriptionStoreControlOption(0);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v104 = v7 - v8;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v10);
  v108 = (&v96 - v11);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v96 - v13;
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_7();
  v105 = v16;
  v106 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v101 = v17 - v18;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54_2();
  v20 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_53_2();
  v23 = *(v1 + 16);
  v24 = *(v23 + 16);
  if (v24 != 1)
  {
    OUTLINED_FUNCTION_19_11();
    v100 = v50;
    sub_23BA93D30(v1, v50, v51);
    v52 = 0;
    v53 = MEMORY[0x277D84F90];
    while (v24 != v52)
    {
      v54 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
      OUTLINED_FUNCTION_25_0(v54);
      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = *(v57 + 72);
      v59 = *(*(v23 + v56 + v58 * v52 + 40) + 16);
      if (v59)
      {
        v60 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_63;
        }

        if (v60 < v24)
        {
          v61 = v23 + v56 + v58 * (v52 + 1) + 40;
          while (1)
          {
            v62 = *(*v61 + 16);
            v63 = __OFADD__(v59, v62);
            v59 += v62;
            if (v63)
            {
              goto LABEL_62;
            }

            ++v60;
            v61 += v58;
            if (v60 >= v24)
            {
              if (!v59)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }

        v110 = v53;
        sub_23BA92BC8();
        v64 = 0;
        v65 = v110;
        v66 = *(v23 + 16);
        v67 = v23 + v56 + 40;
        for (i = v56 + 40; ; i += v58)
        {
          v69 = v66 == v64;
          if (v66 == v64)
          {
            break;
          }

          if (*(*(v23 + i) + 16))
          {
            v66 = v64;
            break;
          }

          ++v64;
        }

        if ((v59 & 0x8000000000000000) == 0)
        {
          v70 = 0;
          v71 = 0;
          v97 = v23;
          v98 = v2;
          v96 = v58;
          v99 = v23 + v56 + 40;
          while (v70 < v59)
          {
            v63 = __OFADD__(v70++, 1);
            if (v63)
            {
              goto LABEL_57;
            }

            if ((v66 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            if (v66 >= *(v23 + 16))
            {
              goto LABEL_59;
            }

            v72 = v66 * v58;
            if (v69)
            {
              goto LABEL_66;
            }

            if (v71 >= *(*(v67 + v72) + 16))
            {
              goto LABEL_60;
            }

            v102 = v71;
            v103 = v66;
            v108 = v65;
            OUTLINED_FUNCTION_12_0();
            sub_23BA93D30(v73 + v74 + *(v75 + 72) * v76, v2, type metadata accessor for SubscriptionStoreControlOption);
            sub_23BA93D30(v2, v104, type metadata accessor for SubscriptionStoreControlOption);
            v77 = v100;
            v78 = v100[6];
            v79 = v100[7];
            if (v78)
            {
              OUTLINED_FUNCTION_155();
              v80 = swift_allocObject();
              *(v80 + 16) = v78;
              *(v80 + 24) = v79;
              v81 = sub_23BA93E70;
            }

            else
            {
              v81 = 0;
              v80 = 0;
            }

            v83 = v77[3];
            v82 = v77[4];
            OUTLINED_FUNCTION_1_33();
            v84 = v101;
            sub_23BA93DE0(v104, v101, v85);
            v86 = v106;
            v87 = (v84 + *(v106 + 20));
            *v87 = v81;
            v87[1] = v80;
            v88 = (v84 + *(v86 + 24));
            *v88 = v83;
            v88[1] = v82;
            sub_23B9794F0(v78, v79);

            OUTLINED_FUNCTION_0_32();
            v2 = v98;
            sub_23BA93D8C();
            v65 = v108;
            v110 = v108;
            v90 = *(v108 + 2);
            v89 = *(v108 + 3);
            if (v90 >= v89 >> 1)
            {
              OUTLINED_FUNCTION_67_0(v89);
              sub_23BA92BC8();
              v65 = v110;
            }

            *(v65 + 2) = v90 + 1;
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_16_10();
            sub_23BA93DE0(v84, v91, v92);
            v23 = v97;
            v93 = *(v97 + 16);
            v66 = v103;
            if (v103 >= v93)
            {
              goto LABEL_61;
            }

            v71 = v102 + 1;
            v67 = v99;
            if (v102 + 1 == *(*(v99 + v72) + 16))
            {
              v66 = v103 + 1;
              v58 = v96;
              while (1)
              {
                v69 = v66 == v93;
                if (v66 == v93)
                {
                  v71 = 0;
                  v66 = v93;
                  goto LABEL_44;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8, &qword_23BBE4040);
                sub_23B979874();
                OUTLINED_FUNCTION_29_3();
                v108 = sub_23BA93AF8();
                v95 = *v94;

                (v108)(&v109, 0);
                v108 = *(v95 + 16);

                if (v108)
                {
                  break;
                }

                v63 = __OFADD__(v66++, 1);
                v67 = v99;
                if (v63)
                {
                  goto LABEL_65;
                }
              }

              v71 = 0;
              v67 = v99;
            }

            else
            {
              v69 = 0;
              v58 = v96;
            }

LABEL_44:
            if (v70 == v59)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      ++v52;
    }

    goto LABEL_16;
  }

  v25 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_13_0(v25);
  OUTLINED_FUNCTION_23_2();
  v27 = *(v23 + v26 + 40);
  OUTLINED_FUNCTION_19_11();
  sub_23BA93D30(v1, v3, v28);
  v29 = *(v27 + 16);
  if (!v29)
  {
LABEL_16:
    OUTLINED_FUNCTION_34_3();
    sub_23BA93D8C();
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v109 = MEMORY[0x277D84F90];

  sub_23BA92BC8();
  v30 = 0;
  OUTLINED_FUNCTION_23_2();
  v103 = v27;
  v104 = v27 + v31;
  v32 = v109;
  v33 = v3;
  v34 = *(v3 + 48);
  v35 = v33[7];
  v36 = v33[3];
  v100 = v33;
  v101 = v33[4];
  v102 = v36;
  while (v30 < *(v27 + 16))
  {
    sub_23BA93D30(v104 + *(v107 + 72) * v30, v14, type metadata accessor for SubscriptionStoreControlOption);
    v37 = v14;
    sub_23BA93D30(v14, v108, type metadata accessor for SubscriptionStoreControlOption);
    if (v34)
    {
      OUTLINED_FUNCTION_155();
      v38 = swift_allocObject();
      *(v38 + 16) = v34;
      *(v38 + 24) = v35;
      v39 = v35;
      v40 = sub_23BA95F10;
    }

    else
    {
      v40 = 0;
      v38 = 0;
      v39 = v35;
    }

    OUTLINED_FUNCTION_1_33();
    sub_23BA93DE0(v108, v0, v41);
    v42 = v106;
    v43 = (v0 + *(v106 + 20));
    *v43 = v40;
    v43[1] = v38;
    v44 = (v0 + *(v42 + 24));
    v45 = v101;
    *v44 = v102;
    v44[1] = v45;
    sub_23B9794F0(v34, v39);

    OUTLINED_FUNCTION_0_32();
    v14 = v37;
    sub_23BA93D8C();
    v109 = v32;
    v47 = *(v32 + 16);
    v46 = *(v32 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_67_0(v46);
      sub_23BA92BC8();
      v32 = v109;
    }

    ++v30;
    *(v32 + 16) = v47 + 1;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_16_10();
    sub_23BA93DE0(v0, v48, v49);
    v27 = v103;
    if (v29 == v30)
    {

      goto LABEL_16;
    }
  }

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
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  OUTLINED_FUNCTION_34_3();
  sub_23BA93D8C();
  __break(1u);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.activeOffer.read()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlOption(v0);
  return OUTLINED_FUNCTION_68_1();
}

void SubscriptionStoreControlStyleConfiguration.Option.icon.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (*v2)
  {
    type metadata accessor for Subscription(0);
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 8) == 2)
    {
      _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    }

    v6 = OUTLINED_FUNCTION_38_1();
    v5 = v3(v6);
    v7 = OUTLINED_FUNCTION_38_1();
    sub_23B979A38(v7, v8, v9);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

void View.subscriptionStoreControlStyle<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v28 = v0;
  v2 = v1;
  v4 = v3;
  v27 = v5;
  v7 = v6;
  swift_getAssociatedTypeWitness();
  v8 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v19 = type metadata accessor for SubscriptionStoreControlPropertiesModifier(0, v4, v2, v18);
  OUTLINED_FUNCTION_7();
  v21 = v20;
  OUTLINED_FUNCTION_7_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v26 - v24;
  (*(v13 + 16))(v17, v7, v4, v23);
  sub_23BA90D30(v11);
  sub_23BA90D8C(v17, v11, v4, v2, v25);
  MEMORY[0x23EEB43C0](v25, v27, v19, v28);
  (*(v21 + 8))(v25, v19);
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.ID.hashValue.getter()
{
  sub_23BBDDBB8();
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV7SectionV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_23BBDDBF8();
}

uint64_t sub_23BA8E728(uint64_t a1)
{
  sub_23BBDDBB8();
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV7SectionV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_23BBDDBF8();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.header.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23BA93F1C(v0, v1 + *(v3 + 20), &qword_27E19E280, &qword_23BBF4A70);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.header.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

double SubscriptionStoreControlStyleConfiguration.Section.options.getter()
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);

  return result;
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.options.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.options.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23B9A721C(v1 + *(v3 + 28), v0, &qword_27E19E288, &qword_23BC04490);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23BA93F1C(v0, v1 + *(v3 + 28), &qword_27E19E288, &qword_23BC04490);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.subscription.getter()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_17_0();

  return v1(v0);
}

Swift::Void __swiftcall SubscriptionStoreControlStyleConfiguration.Option.subscribe()()
{
  v1 = *(v0 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 24));
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1(v0, v2);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.subscript.getter()
{
  v3 = type metadata accessor for Subscription(0);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_7_26();
  sub_23BA93D30(v2, v7, v8);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_1_4();
  return (*(v9 + 8))(v7);
}

void SubscriptionStoreControlStyleConfiguration.Option.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = *(*v3 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53_2();
  sub_23BBDC8F8();
  sub_23B9A721C(v2, v1, &qword_27E197B90, &qword_23BBE3F90);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_23B979910(v1, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v2, &qword_27E197B90, &qword_23BBE3F90);
    (*(v6 + 32))(v0, v1, v4);
    swift_getAtKeyPath();
    (*(v6 + 8))(v0, v4);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_9_1();
  }
}

{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_70_1(v1);
  OUTLINED_FUNCTION_3_2();
  v25[1] = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_0();
  v5 = *v4;
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  sub_23BBDC8F8();
  sub_23B9A721C(v16, v13, &qword_27E197B90, &qword_23BBE3F90);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_23B979910(v13, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v16, &qword_27E197B90, &qword_23BBE3F90);
    v17 = OUTLINED_FUNCTION_0_14();
    v18(v17);
    swift_getAtKeyPath();
    v19 = (*(v7 + 8))(v0, v5);
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_65_1(v20, v21, v22, MEMORY[0x277D84A98]);
    v23 = OUTLINED_FUNCTION_78_1();
    v24(v23);
    OUTLINED_FUNCTION_9_1();
  }
}

uint64_t (*SubscriptionStoreControlStyleConfiguration.PickerOption.subscription.read(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[4] = v5;
  v6 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v6, v5, v7);
  v2[5] = SubscriptionStoreControlStyleConfiguration.Option.subscription.read();
  return sub_23BA95F58;
}

uint64_t SubscriptionStoreControlStyleConfiguration.PickerOption.subscription.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v7, v6, v8);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 16))(v0, v6);
  OUTLINED_FUNCTION_5_23();
  return sub_23BA93D8C();
}

uint64_t (*SubscriptionStoreControlStyleConfiguration.PickerOption.activeOffer.read(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[4] = v5;
  v6 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v6, v5, v7);
  v2[5] = SubscriptionStoreControlStyleConfiguration.Option.activeOffer.read();
  return sub_23BA8F2B4;
}

void sub_23BA8F2B8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  OUTLINED_FUNCTION_5_23();
  sub_23BA93D8C();
  free(v2);

  free(v1);
}

uint64_t SubscriptionStoreControlStyleConfiguration.PickerOption.activeOffer.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v7, v6, v8);
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v6 + *(v9 + 20), v0, &unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_5_23();
  return sub_23BA93D8C();
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_70_1(v1);
  v3 = v2;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  OUTLINED_FUNCTION_13_0(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_1();
  v19 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v19, v16, v20);
  (*(v7 + 16))(v11, v16, v5);
  OUTLINED_FUNCTION_5_23();
  sub_23BA93D8C();
  sub_23BBDC8F8();
  (*(v7 + 8))(v11, v5);
  v21 = *(v3 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_11_0(v0, 1, v21);
  if (v22)
  {
    sub_23B979910(v0, &qword_27E197B90, &qword_23BBE3F90);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    v27 = swift_getAtKeyPath();
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_65_1(v28, v29, v30, MEMORY[0x277D84A98]);
    v31 = OUTLINED_FUNCTION_78_1();
    v32(v31);
    OUTLINED_FUNCTION_1_4();
    (*(v33 + 8))(v0, v21);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA8F698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 16))(a2);
  OUTLINED_FUNCTION_20_2();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, a1);
}

uint64_t SubscriptionStoreControlStyleConfiguration.groupDisplayName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  sub_23BA8D6F4(v0);
  v7 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_35_3(v0);
  if (v13)
  {
    v8 = &qword_27E1987F0;
    v9 = &unk_23BBE5E10;
    v10 = v0;
LABEL_7:
    sub_23B979910(v10, v8, v9);
    return 0;
  }

  sub_23BBDC8F8();
  OUTLINED_FUNCTION_1_4();
  (*(v11 + 8))(v0, v7);
  v12 = sub_23BBDCB58();
  OUTLINED_FUNCTION_35_3(v6);
  if (v13)
  {
    v8 = &qword_27E197B90;
    v9 = &qword_23BBE3F90;
    v10 = v6;
    goto LABEL_7;
  }

  v14 = sub_23BBDCA68();
  OUTLINED_FUNCTION_1_4();
  (*(v15 + 8))(v6, v12);
  return v14;
}

uint64_t SubscriptionStoreControlStyleConfiguration.autoRenewPreference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_3();
  sub_23BA8CE68();
  v5 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_11_0(v1, 1, v5);
  if (v6)
  {
    sub_23B979910(v1, qword_27E197A68, qword_23BBE3D90);
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v7 = sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 16))(a1, v1, v7);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_20_2();
    v12 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_23BA8FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_82_0();
  v7 = v6;
  v9 = v8;
  v88 = v10;
  v11 = type metadata accessor for SubscriptionStoreControlOption(0);
  v12 = OUTLINED_FUNCTION_25_0(v11);
  v98 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_3();
  v99 = v18;
  v19 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v19);
  OUTLINED_FUNCTION_7();
  v95 = v21;
  v96 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_6();
  v97 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288, &qword_23BC04490);
  OUTLINED_FUNCTION_13_0(v23);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v87 = v82 - v25;
  v26 = OUTLINED_FUNCTION_5_3();
  v27 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(v26);
  v28 = OUTLINED_FUNCTION_13_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_6();
  v89 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BB90, &qword_23BBEDBC8);
  v31 = OUTLINED_FUNCTION_13_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_1();
  v85 = v32 - v33;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_54_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280, &qword_23BBF4A70);
  OUTLINED_FUNCTION_13_0(v35);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  v38 = v82 - v37;
  sub_23B97933C(v9, v101);
  v84 = v9 + *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) + 24);
  sub_23B9A721C(v84, v4, &qword_27E19BB90, &qword_23BBEDBC8);
  v39 = 1;
  v83 = type metadata accessor for SubscriptionOptionSectionAccessorySubview(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v83) != 1)
  {
    OUTLINED_FUNCTION_33_2();
    sub_23BA93DE0(v4, v38, v40);
    v39 = 0;
  }

  v41 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header(0);
  v86 = v38;
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v41);
  v42 = *(v9 + 40);
  OUTLINED_FUNCTION_19_11();
  v43 = v89;
  sub_23BA93D30(v7, v89, v44);
  v45 = *(v42 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v82[1] = v5;
    v103 = MEMORY[0x277D84F90];
    sub_23BA92BC8();
    v47 = 0;
    OUTLINED_FUNCTION_23_2();
    v93 = v45;
    v94 = v42 + v48;
    v100 = v103;
    v49 = v43;
    v51 = *(v43 + 48);
    v50 = *(v43 + 56);
    v52 = *(v49 + 24);
    v90 = *(v49 + 32);
    v91 = v52;
    v92 = v42;
    while (v47 < *(v42 + 16))
    {
      v53 = v99;
      sub_23BA93D30(v94 + *(v98 + 72) * v47, v99, type metadata accessor for SubscriptionStoreControlOption);
      sub_23BA93D30(v53, v16, type metadata accessor for SubscriptionStoreControlOption);
      if (v51)
      {
        OUTLINED_FUNCTION_155();
        v54 = swift_allocObject();
        *(v54 + 16) = v51;
        *(v54 + 24) = v50;
        v55 = v50;
        v56 = sub_23BA95F10;
      }

      else
      {
        v56 = 0;
        v54 = 0;
        v55 = v50;
      }

      OUTLINED_FUNCTION_1_33();
      v57 = v16;
      v58 = v16;
      v59 = v97;
      sub_23BA93DE0(v58, v97, v60);
      v61 = v96;
      v62 = (v59 + *(v96 + 20));
      *v62 = v56;
      v62[1] = v54;
      v63 = v59;
      v64 = (v59 + *(v61 + 24));
      v65 = v90;
      *v64 = v91;
      v64[1] = v65;
      sub_23B9794F0(v51, v55);

      OUTLINED_FUNCTION_0_32();
      sub_23BA93D8C();
      v66 = v100;
      v104 = v100;
      v68 = *(v100 + 16);
      v67 = *(v100 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_67_0(v67);
        sub_23BA92BC8();
        v63 = v97;
        v66 = v104;
      }

      ++v47;
      *(v66 + 16) = v68 + 1;
      OUTLINED_FUNCTION_12_0();
      v100 = v69;
      OUTLINED_FUNCTION_16_10();
      sub_23BA93DE0(v63, v70, v71);
      v16 = v57;
      v42 = v92;
      if (v93 == v47)
      {
        v46 = v100;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_23BA93D8C();
    v72 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
    v73 = v85;
    sub_23B9A721C(v84 + *(v72 + 20), v85, &qword_27E19BB90, &qword_23BBEDBC8);
    v74 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v83);
    v76 = v87;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_33_2();
      sub_23BA93DE0(v73, v76, v77);
      v74 = 0;
    }

    v78 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer(0);
    __swift_storeEnumTagSinglePayload(v76, v74, 1, v78);
    v79 = v101[1];
    v80 = v88;
    *v88 = v101[0];
    v80[1] = v79;
    *(v80 + 4) = v102;
    v81 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
    sub_23B9A71D0(v86, v80 + v81[5], &qword_27E19E280, &qword_23BBF4A70);
    *(v80 + v81[6]) = v46;
    sub_23B9A71D0(v76, v80 + v81[7], &qword_27E19E288, &qword_23BC04490);
    OUTLINED_FUNCTION_80_1();
  }
}

void SubscriptionStoreControlStyleConfiguration.Option.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_8();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_1();
  sub_23BBA87A0(v0);
  v13 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_59_1(v13);
  OUTLINED_FUNCTION_35_3(v3);
  if (v14)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_64_1();
    v16(v15);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v17, v18, MEMORY[0x277CDD2C0]);
    OUTLINED_FUNCTION_63_0();
    sub_23BBDCE68();
    (*(v6 + 8))(v10, v4);
  }

  MEMORY[0x23EEB63A0](*(v1 + *(v2 + 24)));
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.Option.hashValue.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v8 = OUTLINED_FUNCTION_0_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  sub_23BBDDBB8();
  sub_23BBA87A0(&v19);
  v12 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_58_1(v12);
  OUTLINED_FUNCTION_11_0(v3, 1, v4);
  if (v13)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_51_3();
    v15(v14, v3, v4);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    v18 = sub_23BA94120(v16, v17, MEMORY[0x277CDD2C0]);
    OUTLINED_FUNCTION_81(v18);
    (*(v6 + 8))(v1, v4);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v2 + 24)));
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA9033C(uint64_t a1)
{
  v2 = sub_23BBDCC88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-1] - v7;
  sub_23BBDDBB8();
  sub_23BBA87A0(v12);
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v1 + *(v9 + 20), v8, &unk_27E19FEF0, &unk_23BBE3E40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_23BBDDBD8();
    sub_23BA94120(&qword_27E197B78, MEMORY[0x277CDD2B8], MEMORY[0x277CDD2C0]);
    sub_23BBDCE68();
    (*(v3 + 8))(v5, v2);
  }

  MEMORY[0x23EEB63A0](*(v1 + *(v9 + 24)));
  return sub_23BBDDBF8();
}

uint64_t sub_23BA90558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SubscriptionStoreControlStyleConfiguration.PickerOption.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static SubscriptionStoreControlStyleConfiguration.PickerOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV6OptionV2eeoiySbAE_AEtFZ_0(a1);
  if (v4)
  {
    OUTLINED_FUNCTION_83_0();
    v6 = *(a1 + v5) ^ *(a2 + v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_8();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_1();
  sub_23BBA87A0(v0);
  v13 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_59_1(v13);
  OUTLINED_FUNCTION_35_3(v3);
  if (v14)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_64_1();
    v16(v15);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v17, v18, MEMORY[0x277CDD2C0]);
    OUTLINED_FUNCTION_63_0();
    sub_23BBDCE68();
    (*(v6 + 8))(v10, v4);
  }

  MEMORY[0x23EEB63A0](*(v1 + *(v2 + 24)));
  OUTLINED_FUNCTION_83_0();
  sub_23BBDDBD8();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.hashValue.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v8 = OUTLINED_FUNCTION_0_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  sub_23BBDDBB8();
  sub_23BBA87A0(&v19);
  v12 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_58_1(v12);
  OUTLINED_FUNCTION_11_0(v3, 1, v4);
  if (v13)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_51_3();
    v15(v14, v3, v4);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    v18 = sub_23BA94120(v16, v17, MEMORY[0x277CDD2C0]);
    OUTLINED_FUNCTION_81(v18);
    (*(v6 + 8))(v1, v4);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v2 + 24)));
  OUTLINED_FUNCTION_83_0();
  sub_23BBDDBD8();
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA90908(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBDCC88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-1] - v8;
  sub_23BBDDBB8();
  sub_23BBA87A0(v13);
  v10 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v2 + *(v10 + 20), v9, &unk_27E19FEF0, &unk_23BBE3E40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_23BBDDBD8();
    sub_23BA94120(&qword_27E197B78, MEMORY[0x277CDD2B8], MEMORY[0x277CDD2C0]);
    sub_23BBDCE68();
    (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x23EEB63A0](*(v2 + *(v10 + 24)));
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

unint64_t sub_23BA90B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC78, &qword_23BBEDEB0);
  qword_27E19E250 = swift_initStaticObject();
  result = sub_23B9C9318();
  qword_27E19E270 = &unk_284E5A000;
  unk_27E19E278 = result;
  return result;
}

uint64_t sub_23BA90B8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197790 != -1)
  {
    swift_once();
  }

  return sub_23B9ECFF4(&qword_27E19E250, a1);
}

uint64_t sub_23BA90BF8()
{
  sub_23BA24034();
  sub_23BBDA958();
  v0 = v2[0];

  sub_23B9ED0A4(v2);
  return v0;
}

uint64_t sub_23BA90C50@<X0>(uint64_t a1@<X8>)
{
  sub_23BA24034();
  sub_23BBDA958();
  sub_23B9AF0F0(&v4, a1);
  return sub_23B9ED0A4(&v3);
}

uint64_t sub_23BA90CB4(uint64_t a1)
{
  sub_23BA24034();
  v2 = sub_23BBDA948();
  sub_23BA95AAC(a1, v3 + 8);
  v2(&v5, 0);
  return sub_23B97B104(a1);
}

uint64_t sub_23BA90D30@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_23BA90D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for SubscriptionStoreControlPropertiesModifier(0, a3, a4, v9) + 36);
  swift_getAssociatedTypeWitness();
  v11 = sub_23BBDD648();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

double sub_23BA90E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_155();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_23BBDB9B8();

  return result;
}

double sub_23BA90F38(__int128 *a1, uint64_t (*a2)(void))
{
  v4 = a1[1];
  v18 = *a1;
  v19 = v4;
  v20 = *(a1 + 4);
  sub_23B9C9234(&v18, &v13);
  if (v14 >= 6)
  {
    sub_23B97B104(&v18);
    sub_23B98473C(&v13, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = a2();
    (*(v6 + 16))(&v15, v7 & 1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v15 = v18;
    v16 = v19;
    v17 = v20;
    sub_23B9C9290(&v13);
  }

  result = *&v15;
  v9 = v16;
  *a1 = v15;
  a1[1] = v9;
  *(a1 + 4) = v17;
  return result;
}

uint64_t sub_23BA9102C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  v32 = *(a2 + 24);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v31 - v8;
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3B8, &qword_23BBF4FB0);
  v35 = v17;
  v18 = sub_23BBDA358();
  v38 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v34 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v36 = &v31 - v21;
  KeyPath = swift_getKeyPath();
  (*(v13 + 16))(v16, v4, v6);
  v22 = sub_23BBC4ECC(v16, v6, v32);
  (*(v10 + 16))(v12, v4 + *(a2 + 36), v9);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    memset(v46, 0, 24);
    *&v46[24] = xmmword_23BBE8BF0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = v31;
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_23BBDD218();
    (*(v37 + 8))(v24, AssociatedTypeWitness);
    if (*&v46[24] != 6)
    {
      sub_23B979910(v46, &qword_27E19E3C0, &unk_23BBF4FE0);
    }
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    sub_23BBDD218();
    (*(v37 + 8))(v12, AssociatedTypeWitness);
    v43 = *v46;
    v44 = *&v46[16];
    v45 = *&v46[32];
  }

  *v46 = v22;
  *&v46[8] = v43;
  *&v46[24] = v44;
  v47 = v45;
  WitnessTable = swift_getWitnessTable();
  v26 = v34;
  sub_23BBDB748();

  sub_23B9ED0A4(v46);
  v27 = sub_23B97B518(&qword_27E19E3C8, &qword_27E19E3B8, &qword_23BBF4FB0, MEMORY[0x277CE0868]);
  v41 = WitnessTable;
  v42 = v27;
  swift_getWitnessTable();
  v28 = v36;
  sub_23B9D2D88();
  v29 = *(v38 + 8);
  v29(v26, v18);
  sub_23B9D2D88();
  return (v29)(v28, v18);
}

uint64_t sub_23BA915C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_23BA95D90(v2, v11);
  v6 = swift_allocObject();
  v7 = v11[1];
  v6[1] = v11[0];
  v6[2] = v7;
  v6[3] = v11[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3F0, &qword_23BBF51E8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3F8, &qword_23BBF51F0);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_23BA95E18;
  v10[2] = v6;
  return result;
}

uint64_t sub_23BA916BC(_OWORD *a1, uint64_t a2)
{
  sub_23B9A721C(a2, v5, &qword_27E19E400, &qword_23BBF51F8);
  if (!*&v5[0])
  {
    return sub_23B979910(v5, &qword_27E19E400, &qword_23BBF51F8);
  }

  result = sub_23B9ED0A4(a1);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  a1[2] = v5[2];
  return result;
}

void View.subscriptionStoreControlStyle<A>(_:placement:)()
{
  OUTLINED_FUNCTION_10_0();
  v37[4] = v2;
  v38 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_74(v5, v6, v7);
  v13 = OUTLINED_FUNCTION_79_0(v8, v9, v10, &protocol requirements base descriptor for SubscriptionStoreControlStyle, v11, v12);
  v14 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v19 = OUTLINED_FUNCTION_73_1();
  v22 = type metadata accessor for SubscriptionStoreControlPropertiesModifier(v19, v20, v4, v21);
  OUTLINED_FUNCTION_7();
  v24 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_28_3();
  v26 = OUTLINED_FUNCTION_71_0();
  v27(v26);
  OUTLINED_FUNCTION_1_4();
  (*(v28 + 16))(v17, v37[1], v13);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v13);
  v32 = OUTLINED_FUNCTION_75_1();
  sub_23BA90D8C(v32, v33, v34, v4, v35);
  v36 = OUTLINED_FUNCTION_69_1();
  MEMORY[0x23EEB43C0](v36);
  (*(v24 + 8))(v1, v22);
  OUTLINED_FUNCTION_9_1();
}

void StoreContent.subscriptionStoreControlStyle<A>(_:placement:)()
{
  OUTLINED_FUNCTION_10_0();
  v42[4] = v2;
  v43 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_74(v5, v6, v7);
  v13 = OUTLINED_FUNCTION_79_0(v8, v9, v10, &protocol requirements base descriptor for SubscriptionStoreControlStyle, v11, v12);
  v14 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = v42 - v16;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v19 = OUTLINED_FUNCTION_73_1();
  v22 = type metadata accessor for SubscriptionStoreControlPropertiesModifier(v19, v20, v4, v21);
  OUTLINED_FUNCTION_7();
  v24 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_28_3();
  v26 = OUTLINED_FUNCTION_71_0();
  v27(v26);
  OUTLINED_FUNCTION_1_4();
  (*(v28 + 16))(v17, v42[1], v13);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v13);
  v32 = OUTLINED_FUNCTION_75_1();
  sub_23BA90D8C(v32, v33, v34, v4, v35);
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  v36 = OUTLINED_FUNCTION_69_1();
  sub_23BB6B068(v36, v37, v38, v39, v40, v41);
  (*(v24 + 8))(v1, v22);
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.visibleSubscriptionPlansInternal.getter()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_6();
  v51 = v3;
  OUTLINED_FUNCTION_5_3();
  v4 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = 0;
  v52 = *(v0 + 16);
  v10 = *(v52 + 16);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v9)
    {
LABEL_37:
      OUTLINED_FUNCTION_9_1();
      return;
    }

    v12 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v12);
    v15 = *(v14 + 72);
    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(*(v52 + v16 + v15 * v9 + 40) + 16);
    if (v17)
    {
      break;
    }

    ++v9;
  }

  v18 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    if (v18 >= v10)
    {
LABEL_11:
      v49 = v8;
      v50 = v4;
      v54 = v11;
      sub_23BA92B88(0, v17 & ~(v17 >> 63), 0);
      v22 = 0;
      v23 = *(v52 + 16);
      v24 = v52 + v16 + 40;
      for (i = v16 + 40; ; i += v15)
      {
        v26 = v23 == v22;
        if (v23 == v22)
        {
          break;
        }

        if (*(*(v52 + i) + 16))
        {
          v23 = v22;
          break;
        }

        ++v22;
      }

      if (v17 < 0)
      {
        goto LABEL_44;
      }

      v27 = 0;
      v28 = 0;
      v47 = v15;
      v48 = v52 + v16 + 40;
      while ((v23 & 0x8000000000000000) == 0)
      {
        if (v23 >= *(v52 + 16))
        {
          goto LABEL_39;
        }

        if (v26)
        {
          goto LABEL_46;
        }

        v29 = v23 * v15;
        if (v28 >= *(*(v24 + v23 * v15) + 16))
        {
          goto LABEL_40;
        }

        v30 = v23;
        OUTLINED_FUNCTION_3_23();
        sub_23BA93D30(v31, v51, v32);
        v33 = OUTLINED_FUNCTION_0_14();
        v34(v33);
        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v54 = v11;
        v36 = *(v11 + 16);
        v35 = *(v11 + 24);
        if (v36 >= v35 >> 1)
        {
          v40 = OUTLINED_FUNCTION_67_0(v35);
          sub_23BA92B88(v40, v36 + 1, 1);
          v11 = v54;
        }

        *(v11 + 16) = v36 + 1;
        OUTLINED_FUNCTION_12_0();
        (*(v38 + 32))(v11 + v37 + *(v38 + 72) * v36, v49, v50);
        v39 = *(v52 + 16);
        if (v30 >= v39)
        {
          goto LABEL_41;
        }

        v23 = v30;
        ++v28;
        v24 = v48;
        if (v28 == *(*(v48 + v29) + 16))
        {
          v41 = v30 + 1;
          v15 = v47;
          while (1)
          {
            v26 = v41 == v39;
            if (v41 == v39)
            {
              v28 = 0;
              v23 = v39;
              goto LABEL_27;
            }

            v42 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8, &qword_23BBE4040);
            sub_23B979874();
            OUTLINED_FUNCTION_29_3();
            v43 = sub_23BA93AF8();
            v45 = *v44;

            (v43)(&v53, 0);
            v46 = *(v45 + 16);

            if (v46)
            {
              break;
            }

            v41 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_45;
            }
          }

          v28 = 0;
          v23 = v42;
        }

        else
        {
          v26 = 0;
          v15 = v47;
        }

LABEL_27:
        if (++v27 == v17)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
      v19 = v52 + v16 + v15 * (v9 + 1) + 40;
      while (1)
      {
        v20 = *(*v19 + 16);
        v21 = __OFADD__(v17, v20);
        v17 += v20;
        if (v21)
        {
          break;
        }

        ++v18;
        v19 += v15;
        if (v18 >= v10)
        {
          if (!v17)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t SubscriptionStoreControlStyleConfiguration.hiddenCurrentPlanInternal.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  sub_23B9A721C(v1 + *(v6 + 60), v2, qword_27E197A68, qword_23BBE3D90);
  v7 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_11_0(v2, 1, v7);
  if (v8)
  {
    sub_23B979910(v2, qword_27E197A68, qword_23BBE3D90);
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v9 = sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v10 + 16))(a1, v2, v9);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_20_2();
    v14 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

Swift::Void __swiftcall SubscriptionStoreControlStyleConfiguration.actionInternal(productID:)(Swift::String productID)
{
  OUTLINED_FUNCTION_10_0();
  v78 = v5;
  v79 = v6;
  v7 = type metadata accessor for Subscription(0);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  v77 = v9;
  v10 = OUTLINED_FUNCTION_5_3();
  v11 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v10);
  OUTLINED_FUNCTION_7();
  v70 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_6();
  v74 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  v16 = OUTLINED_FUNCTION_13_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_54_2();
  type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v80 = v27;
  v81 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v28);
  v71 = &v68 - v29;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_3();
  v72 = v31;
  v73 = v2;
  v76 = *(v2 + 16);

  v75 = 0;
  v69 = v11;
  while (1)
  {
LABEL_13:
    v53 = *(v76 + 16);
    if (v75 == v53)
    {
      v54 = 1;
    }

    else
    {
      if (v75 >= v53)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_12_0();
      v55 = v75;
      OUTLINED_FUNCTION_21_10();
      sub_23BA93D30(v56, v19, v57);
      v54 = 0;
      v75 = v55 + 1;
    }

    __swift_storeEnumTagSinglePayload(v19, v54, 1, v11);
    sub_23B9A71D0(v19, v3, &qword_27E197B70, &qword_23BBFC930);
    OUTLINED_FUNCTION_35_3(v3);
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_18_12();
    v58 = v74;
    sub_23BA93DE0(v3, v74, v59);
    v60 = *(v58 + 40);

    OUTLINED_FUNCTION_17_11();
    sub_23BA93D8C();

    v61 = v60;
    if (v60)
    {
      for (i = 0; ; ++i)
      {
        v33 = *(v61 + 16);
        if (i == v33)
        {
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v50, v51, v52, v81);
          sub_23B979910(v24, &qword_27E197BA0, &qword_23BBE4010);
          v11 = v69;
          goto LABEL_13;
        }

        if (i >= v33)
        {
          break;
        }

        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_3_23();
        sub_23BA93D30(v34, v24, v35);
        OUTLINED_FUNCTION_20_2();
        v36 = v81;
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v81);
        sub_23B9A71D0(v24, v1, &qword_27E197BA0, &qword_23BBE4010);
        OUTLINED_FUNCTION_11_0(v1, 1, v36);
        if (v48)
        {

          goto LABEL_21;
        }

        v40 = v3;
        OUTLINED_FUNCTION_1_33();
        sub_23BA93DE0(v1, v4, v41);
        OUTLINED_FUNCTION_7_26();
        v42 = v77;
        sub_23BA93D30(v4, v77, v43);
        v44 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v46 = v45;
        sub_23BBDCDB8();
        OUTLINED_FUNCTION_4_1();
        (*(v47 + 8))(v42);
        v48 = v44 == v78 && v46 == v79;
        if (v48)
        {

LABEL_23:

          v62 = v71;
          sub_23BA93DE0(v4, v71, type metadata accessor for SubscriptionStoreControlOption);
          v63 = v72;
          sub_23BA93DE0(v62, v72, type metadata accessor for SubscriptionStoreControlOption);
          v64 = *(v73 + 24);
          memset(v82, 0, 49);
          v64(v63, v82);
          OUTLINED_FUNCTION_0_32();
          sub_23BA93D8C();
          goto LABEL_24;
        }

        v49 = sub_23BBDDA88();

        if (v49)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v3 = v40;
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v81);
LABEL_21:

LABEL_24:
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.iconInternal(productID:)()
{
  OUTLINED_FUNCTION_10_0();
  v91 = v2;
  v92 = v3;
  v87 = v4;
  v85 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v90 = v6;
  v7 = OUTLINED_FUNCTION_5_3();
  v8 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v7);
  OUTLINED_FUNCTION_7();
  v83 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  v15 = OUTLINED_FUNCTION_13_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  v23 = OUTLINED_FUNCTION_13_0(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v93 = v28;
  v94 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_3();
  v84 = v33;
  v86 = v0;
  v34 = *(v0 + 16);
  v35 = v18;
  v89 = v34;

  v88 = 0;
  v81 = v13;
  v82 = v8;
  do
  {
LABEL_13:
    v57 = *(v89 + 16);
    if (v88 == v57)
    {
      v58 = 1;
    }

    else
    {
      if (v88 >= v57)
      {
LABEL_32:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
      v59 = v88;
      OUTLINED_FUNCTION_21_10();
      sub_23BA93D30(v60, v21, v61);
      v58 = 0;
      v88 = v59 + 1;
    }

    __swift_storeEnumTagSinglePayload(v21, v58, 1, v8);
    sub_23B9A71D0(v21, v35, &qword_27E197B70, &qword_23BBFC930);
    OUTLINED_FUNCTION_11_0(v35, 1, v8);
    if (v52)
    {

      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v94);
LABEL_21:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_18_12();
    sub_23BA93DE0(v35, v13, v62);
    v63 = *(v13 + 40);

    OUTLINED_FUNCTION_17_11();
    sub_23BA93D8C();

    v64 = v63;
  }

  while (!v63);
  for (i = 0; ; ++i)
  {
    v37 = *(v64 + 16);
    if (i == v37)
    {
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v94);
      sub_23B979910(v1, &qword_27E197BA0, &qword_23BBE4010);
      v13 = v81;
      v8 = v82;
      goto LABEL_13;
    }

    if (i >= v37)
    {
      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_3_23();
    sub_23BA93D30(v38, v1, v39);
    OUTLINED_FUNCTION_20_2();
    v40 = v94;
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v94);
    sub_23B9A71D0(v1, v26, &qword_27E197BA0, &qword_23BBE4010);
    OUTLINED_FUNCTION_11_0(v26, 1, v40);
    if (v52)
    {

      goto LABEL_21;
    }

    v44 = v35;
    OUTLINED_FUNCTION_1_33();
    sub_23BA93DE0(v26, v31, v45);
    OUTLINED_FUNCTION_7_26();
    v46 = v90;
    sub_23BA93D30(v31, v90, v47);
    v48 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v50 = v49;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v51 + 8))(v46);
    v52 = v48 == v91 && v50 == v92;
    if (v52)
    {
      break;
    }

    v53 = sub_23BBDDA88();

    if (v53)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_32();
    sub_23BA93D8C();
    v35 = v44;
  }

LABEL_23:

  OUTLINED_FUNCTION_1_33();
  v65 = v84;
  sub_23BA93DE0(v31, v84, v66);
  if (*(v65 + *(v85 + 20) + 8) == 2)
  {
    _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  v67 = v86;
  OUTLINED_FUNCTION_0_32();
  sub_23BA93D8C();
  if (*(v67 + 48))
  {
    v68 = OUTLINED_FUNCTION_56_3();
    v69(v68);
    v70 = v95;
    v71 = OUTLINED_FUNCTION_56_3();
    sub_23BA0D94C(v71, v72, v73);
    goto LABEL_29;
  }

  v74 = OUTLINED_FUNCTION_56_3();
  sub_23BA0D94C(v74, v75, v76);
LABEL_28:
  v70 = 0;
LABEL_29:
  *v87 = v70;
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.marketingContentInternal.getter@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23BBDC0D8();
  *a2 = result;
  return result;
}

uint64_t sub_23BA92D68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, unint64_t))
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = v5;
  while (v5 != v4)
  {
    v7 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v7);
    a2(&v12, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v4);
    v10 = *(v12 + 16);

    if (v10)
    {
      return v4;
    }

    ++v4;
  }

  return v6;
}

uint64_t sub_23BA92E50(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t *, __n128))
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return v4;
    }

    v8 = *(v5 + 8 * v3);

    (a2)(v9, &v8);

    v11 = v9[0];
    v12 = v9[1];
    v13 = v10;
    v6 = sub_23BA95884();
    v14 = v11;
    if (v6 != *(v11 + 16))
    {
      break;
    }

    sub_23B979910(&v14, &qword_27E199770, &qword_23BBF4FF0);

    ++v3;
  }

  sub_23BA95884();
  sub_23B979910(&v14, &qword_27E199770, &qword_23BBF4FF0);

  return v3;
}

void sub_23BA92FB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(__int128 *__return_ptr, __int128 *, __n128))
{
  v11 = a4;
  if (a4 == a1)
  {
    if ((a6 & 1) == 0)
    {
      if (a3)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if ((a4 & 0x8000000000000000) == 0)
      {
        if (*(a7 + 16) > a4)
        {
          *&v37[0] = *(a7 + 8 * a4 + 32);

          (a8)(&v32, v37);

          sub_23BA956BC(a2, a5);
          *&v37[0] = v32;
          sub_23B979910(v37, &qword_27E199770, &qword_23BBF4FF0);

          return;
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (a3)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a4 >= a1)
  {
    if (a1 < 0)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (*(a7 + 16) <= a1)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *&v32 = *(a7 + 8 * a1 + 32);

    (a8)(&v40, &v32);

    if (a3)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v41 = v40;
    v15 = sub_23BA956BC(a2, *(v40 + 16));
    v29 = 1;
    v26 = a5;
    v28 = a6;
    v16 = v11;
    v11 = a1;
  }

  else
  {
    if (a4 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (*(a7 + 16) <= a4)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v28 = a3;
    v26 = a2;
    *&v32 = *(a7 + 8 * a4 + 32);

    (a8)(&v39, &v32);

    v41 = v39;
    if (a6)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v15 = sub_23BA956BC(*(v39 + 16), a5);
    v29 = -1;
    v16 = a1;
  }

  sub_23B979910(&v41, &qword_27E199770, &qword_23BBF4FF0);

  v17 = v11 + 1;
  v27 = a7;
  if (v11 + 1 < v16)
  {
    v18 = *(a7 + 16);
    v19 = (a7 + 8 * v11 + 40);
    while (v17 < v18)
    {
      *&v35[0] = *v19;

      (a8)(&v32, v35);

      v37[0] = v32;
      v37[1] = v33;
      v38 = v34;
      v20 = sub_23BA95884();
      v42 = *&v37[0];
      v21 = sub_23BA956BC(v20, *(*&v37[0] + 16));
      sub_23B979910(&v42, &qword_27E199770, &qword_23BBF4FF0);

      v22 = __OFADD__(v15, v21 * v29);
      v15 += v21 * v29;
      if (v22)
      {
        goto LABEL_30;
      }

      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }

      ++v17;
      ++v19;
      if (v23 >= v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_24:
  if ((v28 & 1) == 0)
  {
    if (v16 < 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v16 >= *(v27 + 16))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    *&v35[0] = *(v27 + 8 * v16 + 32);

    (a8)(&v32, v35);

    v31 = v32;
    v35[0] = v32;
    v35[1] = v33;
    v36 = v34;
    v24 = sub_23BA95884();
    v25 = sub_23BA956BC(v24, v26);
    v43 = v31;
    sub_23B979910(&v43, &qword_27E199770, &qword_23BBF4FF0);

    if (__OFADD__(v15, v25 * v29))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }
}

void sub_23BA9341C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(__int128 *__return_ptr, uint64_t (***)()), uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = *(a4 + 16);
  if (v32 <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37[0] = *(a4 + 8 * a1 + 32);

  a5(&v38, v37);

  if (a3)
  {
    __break(1u);
    goto LABEL_28;
  }

  v35 = v38;
  v16 = *(v38 + 16);
  if (v16 == a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v22 = __OFADD__(a1, 1);
    v23 = a1 + 1;
    if (!v22)
    {
      while (v23 != v32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3D0, &qword_23BBF4FF8);
        sub_23BA959C0();
        v24 = sub_23BA93BB4(v37, v23, v29, v30);
        v26 = *(v25 + 4);
        v27 = v25[1];
        v38 = *v25;
        v39 = v27;
        v40 = v26;
        v28 = v38;
        v42[0] = v38;
        sub_23B9A721C(v42, v36, &qword_27E199770, &qword_23BBF4FF0);

        (v24)(v37, 0);
        if (sub_23BA95884() != *(v28 + 16))
        {
          sub_23BA95884();
          sub_23B979910(v42, &qword_27E199770, &qword_23BBF4FF0);

          return;
        }

        sub_23B979910(v42, &qword_27E199770, &qword_23BBF4FF0);

        v22 = __OFADD__(v23++, 1);
        if (v22)
        {
          __break(1u);
          return;
        }
      }

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  v29 = a4;
  v30 = a5;
  v31 = a6;
  v34 = a1;
  v17 = *(&v38 + 1);
  v18 = *(&v39 + 1);
  a1 = v40;
  v33 = v41;
  while (1)
  {
    v19 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v19 == v16)
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_15;
    }

    v17(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19);
    v20 = v18(v15);
    sub_23B979910(v15, &qword_27E199760, &unk_23BBE9220);
    ++a2;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v19 = v16;
LABEL_12:
  v21 = *(v35 + 16);

  a1 = v34;
  if (v19 == v21)
  {
    goto LABEL_19;
  }
}

unint64_t sub_23BA9379C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *(*a5)(uint64_t *__return_ptr, unint64_t)@<X4>, uint64_t a6@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  if (*(a4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_25_0(v12);
  result = a5(&v18, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v14 + 72) * v7);
  if (a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (*(v18 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_25_0(v15);
  OUTLINED_FUNCTION_3_23();
  sub_23BA93D30(v16, a6, v17);
}

void sub_23BA93904()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v13 = OUTLINED_FUNCTION_25_0(v12);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 16) <= v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = *(v3 + 8 * v9 + 32);

  v1(v28, &v27);

  if ((v5 & 1) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v22 = v28[0];
      if (*(v28[0] + 16) > v7)
      {
        v26[0] = v11;
        v23 = v28[1];
        v24 = v28[5];
        v26[1] = v28[4];
        OUTLINED_FUNCTION_23_2();
        sub_23B9A721C(v22 + v25 + *(v15 + 72) * v7, v18, &qword_27E199760, &unk_23BBE9220);
        v23(v18);
        sub_23B979910(v18, &qword_27E199760, &unk_23BBE9220);
        v24(v21);
        sub_23B979910(v21, &qword_27E199760, &unk_23BBE9220);

        OUTLINED_FUNCTION_9_1();
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
}

void (*sub_23BA93AF8())(void *)
{
  v1 = OUTLINED_FUNCTION_48_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_50_2(v2);
  sub_23BA93C38(v3, v4, v5, v6);
  *(v0 + 32) = v7;
  return sub_23BA93B54;
}

void (*sub_23BA93B58())(void *)
{
  v1 = OUTLINED_FUNCTION_48_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_50_2(v2);
  *(v0 + 32) = sub_23BA95500(v3, v4, v5, v6);
  return sub_23BA95F5C;
}

void (*sub_23BA93BB4(uint64_t (***a1)(), unint64_t a2, uint64_t a3, void (*a4)(uint64_t *)))(void *)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_23BA95598(v8, a2, a3, a4);
  return sub_23BA95F5C;
}

void sub_23BA93C38(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v7 = OUTLINED_FUNCTION_15_8();
    v8 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v7);
    OUTLINED_FUNCTION_25_0(v8);
    a4(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * a2);
    return;
  }

  __break(1u);
}

uint64_t sub_23BA93D30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA93D8C()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BA93DE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA93E3C()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BA93F1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return v4;
}

unint64_t sub_23BA93FE8()
{
  result = qword_27E19E290;
  if (!qword_27E19E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E290);
  }

  return result;
}

unint64_t sub_23BA94078()
{
  result = qword_27E19E298;
  if (!qword_27E19E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E298);
  }

  return result;
}

uint64_t sub_23BA94120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA941F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA9425C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23BA942C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27E19E2C0)
  {
    v4 = type metadata accessor for SubscriptionStoreControlConfiguration(0, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27E19E2C0);
    }
  }
}

uint64_t sub_23BA9433C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280, &qword_23BBF4A70);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288, &qword_23BC04490);
    v10 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23BA94424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280, &qword_23BBF4A70);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288, &qword_23BC04490);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BA94500(uint64_t a1)
{
  sub_23BA9465C(319, &qword_27E19E2D8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BA9465C(319, &qword_27E19E2E0, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23BA9465C(319, &qword_27E19E2E8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BA9465C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23BA946E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_23BA94720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA9478C()
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3 = type metadata accessor for SubscriptionOptionSectionAccessorySubview(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_23BA947E0()
{
  v0 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionOptionSectionAccessorySubview(v0);
  v1 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23BA94858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA948DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlOption(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(v3 + *(a3 + 24)));
  }

  v8 = OUTLINED_FUNCTION_63_0();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}